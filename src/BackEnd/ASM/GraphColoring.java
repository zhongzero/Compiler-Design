package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.*;
import BackEnd.ASM.Module.ASMModule;
import BackEnd.ASM.Operand.*;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;

public class GraphColoring {
	//zero,ra,sp,s0,t0不用做分配(t0在最后updateInst的时候需要用到当中间变量)
	//t1~t6,s1~s11,a0~a7,gp,tp全部用于寄存器分配
	//(a0~a7可能在寄存器分配之前就在传参中被直接使用，即要考虑预着色)

	ASMModule asmmodule;
	ASMFunction currentfunction;

	PhysicalRegister_ASM sp;
	PhysicalRegister_ASM t0;

	LiveAnalysis liveanalysis;

	int K=27;//参与分配的物理寄存器总数

	HashSet<Register_ASM> precolored;//physical register集合，每个寄存器都预先指派了一种颜色
	HashSet<Register_ASM> initial;//virtual register集合，其中的元素既没有预着色，也没有被处理
	HashSet<Register_ASM> simplifyWorklist;//低度数的传送无关的节点表
	HashSet<Register_ASM> freezeWorklist;//低度数的传送有关的节点表
	HashSet<Register_ASM> spillWorklist;//高度数的节点表
	HashSet<Register_ASM> spilledNodes;//在本轮中要被溢出的节点集合，初始为空
	HashSet<Register_ASM> coalescedNodes;//已合并的寄存器集合(当合并u<-v时，将v加入这个集合中，u则放回到某个工作表中)
	HashSet<Register_ASM> coloredNodes;//已成功染色的节点集合
	Stack<Register_ASM> selectStack;//一个包含从图中删除的临时变量的栈

	public HashSet<Mv_Inst_ASM> coalescedMoves;//已经合并的传送指令集合
	public HashSet<Mv_Inst_ASM> constrainedMoves;//源操作数和目标操作数冲突的传送指令集合
	public HashSet<Mv_Inst_ASM> frozenMoves;//不再考虑合并的传送指令集合
	public HashSet<Mv_Inst_ASM> worklistMoves;//有可能合并的传送指令集合
	public HashSet<Mv_Inst_ASM> activeMoves;//还未做好合并准备的传送指令集合

	public HashSet<Pair<Register_ASM, Register_ASM>> adjSet;//图中冲突边(u,v)的集合
	public HashMap<Register_ASM, HashSet<Register_ASM>> adjList;//图的邻接表表示
	public HashMap<Register_ASM, Integer> degree;//记录每个点的度数
	public HashMap<Register_ASM, HashSet<Mv_Inst_ASM>> moveList;//从一个节点到与该节点相关的传送指令表的映射
	public HashMap<Register_ASM, Register_ASM> alias;//当一条传送指令(u,v)已被合并，且v被放入coalescedNodes时，有alias(v)=u
	public HashMap<Register_ASM, PhysicalRegister_ASM> color;//算法为节点选择的颜色(对于预着色节点，其初始值为给定的颜色)



	public GraphColoring(ASMModule _asmmodule){
		asmmodule=_asmmodule;
		sp=asmmodule.sp;
		t0=asmmodule.t0;
	}
	public void process(){
		for(int i=0;i<asmmodule.funcList.size();i++){
			currentfunction=asmmodule.funcList.get(i);
			processEachFunction();//每个函数分开做(逻辑上可行，且这样做才能保证使用预着色正确)
		}
	}
	void processEachFunction(){
		while(true){
			liveanalysis.process(currentfunction);
			Init();
			Build();
			MakeWorklist();
			while (true){
				if(!simplifyWorklist.isEmpty())Simplify();//简化
				else if(!worklistMoves.isEmpty())Coalesce();//合并
				else if(!freezeWorklist.isEmpty())Freeze();//释放(传送有关->传送无关)
				else if(!spillWorklist.isEmpty())SelectSpill();//溢出
				else break;
			}
			AssignColor();
			if(!spilledNodes.isEmpty())RewriteProgram();//为溢出的临时变量分配存储单元
			else break;
		}

		//实际进行染色
		for(int i=0;i<currentfunction.blockList.size();i++) {
			ASMBasicBlock currentblock = currentfunction.blockList.get(i);
			LinkedList<Base_Inst_ASM> tmpList=new LinkedList<>();
			for (Base_Inst_ASM inst : currentblock.instList) {
				if(inst.rs1!=null)inst.rs1=color.get(inst.rs1);
				if(inst.rs2!=null)inst.rs2=color.get(inst.rs2);
				if(inst.rd!=null)inst.rd=color.get(inst.rd);
				if(inst instanceof Mv_Inst_ASM && inst.rs1==inst.rd)continue;
				tmpList.add(inst);
			}
			currentblock.instList=tmpList;
		}
	}
	void Init() {
		precolored=new HashSet<>();
		initial=new HashSet<>();
		simplifyWorklist=new HashSet<>();
		freezeWorklist=new HashSet<>();
		spillWorklist=new HashSet<>();
		spilledNodes=new HashSet<>();
		coalescedNodes=new HashSet<>();
		coloredNodes=new HashSet<>();
		selectStack=new Stack<>();
		coalescedMoves = new HashSet<>();
		constrainedMoves = new HashSet<>();
		frozenMoves = new HashSet<>();
		worklistMoves = new HashSet<>();
		activeMoves = new HashSet<>();
		adjSet = new HashSet<>();
		adjList = new HashMap<>();
		degree = new HashMap<>();
		moveList = new HashMap<>();
		alias = new HashMap<>();
		color = new HashMap<>();
		for(int i=0;i<currentfunction.blockList.size();i++){
			ASMBasicBlock currentblock=currentfunction.blockList.get(i);
			for(Base_Inst_ASM inst:currentblock.instList){
				for(Register_ASM reg:inst.def){
					if(reg instanceof PhysicalRegister_ASM)continue;
					initial.add(reg);
					degree.put(reg,0);
					adjList.put(reg,new HashSet<>());
					moveList.put(reg,new HashSet<>());
					alias.put(reg,null);
					color.put(reg,null);
				}
				for(Register_ASM reg:inst.use){
					if(reg instanceof PhysicalRegister_ASM)continue;
					initial.add(reg);
					degree.put(reg,0);
					adjList.put(reg,new HashSet<>());
					moveList.put(reg,new HashSet<>());
					alias.put(reg,null);
					color.put(reg,null);
				}
			}
		}
		for(int i=0;i<asmmodule.regForColor.size();i++){
			Register_ASM reg=asmmodule.regForColor.get(i);
			precolored.add(reg);
			degree.put(reg,0);
			adjList.put(reg,new HashSet<>());
			moveList.put(reg,new HashSet<>());
			alias.put(reg,null);
			color.put(reg, (PhysicalRegister_ASM) reg);
		}
		//sp,ra等physical reg不参与分配，也不会进入precolored
		//a0~a7要考虑预着色(参与分配，进入precolored)
	}
	void Build(){//生成冲突图和mv指令集合
		for(int i=0;i<currentfunction.blockList.size();i++){
			ASMBasicBlock currentblock=currentfunction.blockList.get(i);
			for(Base_Inst_ASM inst:currentblock.instList){//直接把每一个instruction当成一个基本块
				HashSet<Register_ASM> live=liveanalysis.liveOut.get(inst);
				if(inst instanceof Mv_Inst_ASM){//注，保证sp等不参与分配的physical reg不会出现在mv指令中
					live.removeAll(inst.use);
					for(Register_ASM reg:inst.def){
						moveList.get(reg).add((Mv_Inst_ASM) inst);
					}
					for(Register_ASM reg:inst.use){
						moveList.get(reg).add((Mv_Inst_ASM) inst);
					}
					worklistMoves.add((Mv_Inst_ASM) inst);
				}
				live.addAll(inst.def);//若是一个基本块只有一个inst，这条可删
				for(Register_ASM reg1:inst.def){
					for(Register_ASM reg2:live){
						AddEdge(reg1,reg2);
					}
				}
				live.removeAll(inst.def);//若是一个基本块只有一个inst，这条可删
				live.addAll(inst.use);//若是一个基本块只有一个inst，这条可删
			}
		}
	}
	void AddEdge(Register_ASM reg1,Register_ASM reg2){
		if(!asmmodule.regForColor.contains(reg1) || !asmmodule.regForColor.contains(reg2)) return;
		//与sp等不参与分配的寄存器同时活跃，不需要AddEdge
		if(!adjSet.contains(new Pair<>(reg1, reg2)) && reg1!=reg2){
			adjSet.add(new Pair<>(reg1, reg2));
			adjSet.add(new Pair<>(reg2, reg1));
			if(!precolored.contains(reg1)){
				adjList.get(reg1).add(reg2);
				degree.replace(reg1,degree.get(reg1)+1);
			}
			if(!precolored.contains(reg2)){
				adjList.get(reg2).add(reg1);
				degree.replace(reg2,degree.get(reg2)+1);
			}
		}
	}
	void MakeWorklist(){
		for(Register_ASM reg:initial){
			if(degree.get(reg)>=K)spillWorklist.add(reg);//高度数节点
			else if(MoveRelated(reg))freezeWorklist.add(reg);//低度数传送有关节点
			else simplifyWorklist.add(reg);//低度数传送无关节点
		}
		initial.clear();
	}
	HashSet<Register_ASM> Adjacent(Register_ASM reg){//除去stack中和合并的点仍相邻的点的集合
		HashSet<Register_ASM> tmp=new HashSet<>(coalescedNodes);
		tmp.addAll(selectStack);
		HashSet<Register_ASM> ans=new HashSet<>(adjList.get(reg));
		ans.removeAll(tmp);
		return ans;
	}
	HashSet<Mv_Inst_ASM> NodeMoves(Register_ASM reg){//返回该reg相关的所有仍有效(可能合并)的mv指令的集合
		HashSet<Mv_Inst_ASM> ans=new HashSet<>(activeMoves);
		ans.addAll(worklistMoves);
		ans.retainAll(moveList.get(reg));
		return ans;
	}
	boolean MoveRelated(Register_ASM reg){//判断该reg是否在某一个仍有效(可能合并)的mv指令中调用
		return !NodeMoves(reg).isEmpty();
	}
	void Simplify(){
		Register_ASM reg=simplifyWorklist.iterator().next();
		simplifyWorklist.remove(reg);
		selectStack.push(reg);
		for(Register_ASM reg2:Adjacent(reg)){
			DecrementDegree(reg2);
		}
	}
	void DecrementDegree(Register_ASM reg){//degree--
		int d=degree.get(reg);
		degree.replace(reg,d-1);
		if(d==K){
			HashSet<Register_ASM> tmp=new HashSet<>(Adjacent(reg));
			tmp.add(reg);
			EnableMoves(tmp);
			if(MoveRelated(reg))freezeWorklist.add(reg);
			else simplifyWorklist.add(reg);
		}
	}
	void EnableMoves(HashSet<Register_ASM> nodes){//把与传入的所有节点相关的所有active的mv指令全部转成work状态
		for(Register_ASM reg:nodes){
			for(Mv_Inst_ASM mvinst:NodeMoves(reg)){
				if(activeMoves.contains(mvinst)){
					activeMoves.remove(mvinst);
					worklistMoves.add(mvinst);
				}
			}
		}
	}
	void Coalesce(){
		Mv_Inst_ASM mvinst=worklistMoves.iterator().next();
		Register_ASM x=GetAlias(mvinst.rs1);
		Register_ASM y=GetAlias(mvinst.rd);
		Register_ASM u,v;
		if(precolored.contains(y)){
			u=y;
			v=x;
		}
		else {
			u=x;
			v=y;
		}
		worklistMoves.remove(mvinst);
		if(u==v){//两个点重合，合并直接成功
			coalescedMoves.add(mvinst);
			AddWorkList(u);
		}
		else if(precolored.contains(v) || adjSet.contains(new Pair<>(u,v)) ){//两个都是physical reg或者有冲突边，永远不能合并
			constrainedMoves.add(mvinst);
			AddWorkList(u);
			AddWorkList(v);
		}
		else {
			boolean flag=true;
			for(Register_ASM t:Adjacent(v)){
				if(!OK(t,u)){
					flag=false;
					break;
				}
			}
			HashSet<Register_ASM> tmp=new HashSet<>(Adjacent(u));
			tmp.addAll(Adjacent(v));
			if( (precolored.contains(u) && flag) || (!precolored.contains(u) && Conservative(tmp) ) ){//可以合并(分是否有phyical reg两种情况)
				coalescedMoves.add(mvinst);
				Combine(u,v);
				AddWorkList(u);
			}
			else {
				activeMoves.add(mvinst);
			}
		}
	}
	void AddWorkList(Register_ASM u){//把可能 传送有关低度数节点->传送无关低度数节点 的点变过去
		if(!precolored.contains(u) && !MoveRelated(u) && degree.get(u)<K ){
			freezeWorklist.remove(u);
			simplifyWorklist.add(u);
		}
	}
	boolean OK(Register_ASM t,Register_ASM r){//r若是一个physical reg，判断此时合并r和t的一个相邻点是否可行(保守合并，即合并不会导致多余的溢出)
		//注:t不可能是和r相同的physical reg
		return degree.get(t)<K || precolored.contains(t) || adjSet.contains(new Pair<>(t,r));
	}
	boolean Conservative(HashSet<Register_ASM> nodes){//保守合并，判断是否可行(传入想合并的两个点的所有邻接点)
		//Briggs保守合并方法
		int k=0;
		for(Register_ASM reg:nodes){
			if(degree.get(reg)>=K)k=k+1;
		}
		return k<K;
	}
	Register_ASM GetAlias(Register_ASM reg){
		if(coalescedNodes.contains(reg)) {
			Register_ASM ans=GetAlias(alias.get(reg));
			alias.replace(reg,ans);
			return ans;
		}
		else return reg;
	}
	void Combine(Register_ASM u,Register_ASM v){//合并两个点(共享相邻点，修改moveList等)
		if(freezeWorklist.contains(v))freezeWorklist.remove(v);//低度数传送有关节点
		else spillWorklist.remove(v);//高度数节点
		coalescedNodes.add(v);
		alias.replace(v,u);//alias[v]=u
		moveList.get(u).addAll(moveList.get(v));//合并move
		HashSet<Register_ASM> tmp=new HashSet<>();
		tmp.add(v);
		EnableMoves(tmp);
		for(Register_ASM t:Adjacent(v)){
			AddEdge(t,u);
			DecrementDegree(t);
		}
		if(degree.get(u)>=K && freezeWorklist.contains(u)){//低度数传送无关节点->高度数节点
			freezeWorklist.remove(u);
			spillWorklist.add(u);
		}
	}
	void Freeze(){//释放(传送有关低度数节点->传送无关低度数节点)
		Register_ASM u=freezeWorklist.iterator().next();
		freezeWorklist.remove(u);
		simplifyWorklist.add(u);
		FreezeMoves(u);
	}
	void FreezeMoves(Register_ASM u){//释放时同时修改mv指令状态
		for(Mv_Inst_ASM mvinst:NodeMoves(u)){
			Register_ASM x=mvinst.rs1;
			Register_ASM y=mvinst.rd;
			Register_ASM v;
			if(GetAlias(y)==GetAlias(u))v=GetAlias(x);
			else v=GetAlias(y);
			activeMoves.remove(mvinst);//原来一定是在activeMoves，不可能是worklistMoves(freeze时worklistMoves一定为空)
			frozenMoves.add(mvinst);
			if(NodeMoves(v).isEmpty() && degree.get(v)<K ){//把可能的 传送有关低度数节点->传送无关低度数节点 变过去
				freezeWorklist.remove(v);
				simplifyWorklist.add(v);
			}
		}
	}
	void SelectSpill(){
		Register_ASM reg=null;
		int maxnum=-1;
		for(Register_ASM tmp:spillWorklist){
			int num=Adjacent(tmp).size();
			if(num>maxnum){//这里认为相邻的点越多优先级越低，要优先spill
				reg=tmp;
				maxnum=num;
			}
		}
		//选择优先级最低的点，把它spill掉(下面具体实现是直接把它丢入simplifyWorklist,在下周期Simplify中把它spill掉)
		spillWorklist.remove(reg);
		simplifyWorklist.add(reg);
		FreezeMoves(reg);
	}
	void AssignColor(){
		while(!selectStack.isEmpty()){
			Register_ASM reg=selectStack.pop();
			HashSet<Register_ASM> okColors = new HashSet<>(asmmodule.regForColor);
			for(Register_ASM w:adjList.get(reg)){
				HashSet<Register_ASM> tmp=coloredNodes;
				tmp.addAll(precolored);
				if(tmp.contains(GetAlias(w))){//如果reg的相邻点w已经染色(包括预染色)，则把该颜色去掉
					okColors.remove(GetAlias(w));
				}
			}
			if(okColors.isEmpty())spilledNodes.add(reg);
			else {
				coloredNodes.add(reg);
				PhysicalRegister_ASM c= (PhysicalRegister_ASM) okColors.iterator().next();
				color.replace(reg,c);//color[reg]=c
			}
		}
		for(Register_ASM reg:coalescedNodes){
			color.replace(reg,color.get(GetAlias(reg)));
		}
	}

	ASMBasicBlock currentblock;
	ListIterator<Base_Inst_ASM> iterator;
	void RewriteProgram(){
		for(int i=0;i<asmmodule.funcList.size();i++){
			currentfunction=asmmodule.funcList.get(i);
//			System.out.println(currentfunction.name);
			for(int j=0;j<currentfunction.blockList.size();j++){
				currentblock=currentfunction.blockList.get(j);
//				System.out.println(currentblock.name);
				iterator=currentblock.instList.listIterator(0);
				while(iterator.hasNext()){
					Base_Inst_ASM inst=iterator.next();
					if(inst.rs1!=null&&spilledNodes.contains(inst.rs1)){
						VirtualRegister_ASM tmp=new VirtualRegister_ASM("load1");
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs1,tmp);
						inst.rs1=tmp;
					}
					if(inst.rs2!=null&&spilledNodes.contains(inst.rs2)){
						VirtualRegister_ASM tmp=new VirtualRegister_ASM("load2");
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs2,tmp);
						inst.rs2=tmp;
					}
					if(inst.rd!=null&&spilledNodes.contains(inst.rd)){
						VirtualRegister_ASM tmp=new VirtualRegister_ASM("store1");
						StackAllocLoadStore("store", (VirtualRegister_ASM) inst.rd,tmp);
						inst.rd=tmp;
					}
				}
			}
		}
	}
	public void StackAllocLoadStore(String tp, VirtualRegister_ASM vReg,Register_ASM rd){
		if(tp.equals("load")){
			if(!currentfunction.VReg_offset_Map.containsKey(vReg))currentfunction.StackAlloc(vReg);
			Imm_ASM offset=new Imm_ASM(currentfunction.getOffset(vReg));
			if(BetweenImm(offset.imm)){
				iterator.previous();
				iterator.add(new Load_Inst_ASM(4,rd,sp,offset,null));
				iterator.next();
			}
			else {
				iterator.previous();
				iterator.add(new Li_Inst_ASM(t0,offset,null));
				iterator.add(new Binary_Inst_ASM("add",t0,sp,t0,null,null));
				iterator.add(new Load_Inst_ASM(4,rd,t0,new Imm_ASM(0),null));
				iterator.next();
			}
		}
		if(tp.equals("store")){
			if(!currentfunction.VReg_offset_Map.containsKey(vReg))currentfunction.StackAlloc(vReg);
			Imm_ASM offset=new Imm_ASM(currentfunction.getOffset(vReg));
			if(BetweenImm(offset.imm)){
				iterator.add(new Store_Inst_ASM(4,rd,sp,offset,null));
			}
			else {
				iterator.add(new Li_Inst_ASM(t0,offset,null));
				iterator.add(new Binary_Inst_ASM("add",t0,sp,t0,null,null));
				iterator.add(new Store_Inst_ASM(4,rd,t0,new Imm_ASM(0),null));
			}
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}