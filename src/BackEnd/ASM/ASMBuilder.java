package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.ConstString.ASMConstString;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.GlobalVarDef.ASMGlobalVarDef;
import BackEnd.ASM.Instruction.*;
import BackEnd.ASM.Module.ASMModule;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.PhysicalRegister_ASM;
import BackEnd.ASM.Operand.VirtualRegister_ASM;
import FrontEnd.AST.DefNodeSet.ClassDefNode;
import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Const.*;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.IRBuilder;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.Instruction.*;
import FrontEnd.IR.Module.IRModule;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.LabelType;
import FrontEnd.IR.TypeSystem.OperandType.*;

import java.util.HashMap;

public class ASMBuilder extends IRVisitor<Void> {
	//zero,ra,sp,s0,t0不用做分配(t0在最后updateInst的时候需要用到当中间变量)
	//t1~t6,s1~s11,a0~a7,gp,tp全部用于寄存器分配
	//(a0~a7可能在寄存器分配之前就在传参中被直接使用，即要考虑预着色，所以传参时)

	/*
	栈的分布规则
	s0
	s0	(-4)	function call 参数过多时的存储位置1
	s0	(-8)	function call 参数过多时的存储位置2
	s0	(-12)	function call 参数过多时的存储位置3
	...

	...
	sp	(12)	用于寄存器分配溢出
	sp	(8)		用于寄存器分配溢出
	sp	(4)		原函数的s0
	sp	(0)		原函数的ra
	 */

	private static final int parasize = 8;//用于传参的register数量(a0,a1,a2...a_{parasize-1})
	public ASMModule asmModule=new ASMModule();
	public ASMFunction currentFunction=null;
	public ASMBasicBlock currentBlock=null;


	PhysicalRegister_ASM sp=new PhysicalRegister_ASM("sp");
	PhysicalRegister_ASM s0=new PhysicalRegister_ASM("s0");
	PhysicalRegister_ASM ra=new PhysicalRegister_ASM("ra");
	PhysicalRegister_ASM a0=new PhysicalRegister_ASM("a0");


	public Void visitIRModule(IRModule node){
		for(int i=0;i<node.globalVarList.size();i++){
			GlobalVarDef tmp=node.globalVarList.get(i);
			asmModule.globalDefList.add(new ASMGlobalVarDef(tmp.name));
		}
		for(int i=0;i<node.stringList.size();i++){
			ConstString tmp=node.stringList.get(i);
			asmModule.constStringList.add(new ASMConstString(tmp.name,tmp.value));
		}
		for (HashMap.Entry<String, IRFunction> entry: node.funcHashMap.entrySet()) {
			IRFunction tmp=entry.getValue();
			if(tmp.blockList.size()==0)continue;//function declare不需要写入asm
			if(tmp.name.equals("f_main_1"))tmp.name="main";
			currentFunction=new ASMFunction(tmp.name);
			asmModule.funcList.add(currentFunction);
			visit(tmp);
		}
		return null;
	}

	public Void visitIRFunction(IRFunction node){
		for(int i=0;i<node.blockList.size();i++){
			IRBasicBlock tmp=node.blockList.get(i);
			currentBlock=new ASMBasicBlock(tmp.name,currentFunction);
			if(node.funcBeginBlock==tmp){//beginBlock
				/*
				addi	sp,sp,-stacksize
				sw		s0,0(sp)
				addi	s0,sp,stacksize
				sw		ra,4(sp)
				 */
				currentFunction.beginBlock=currentBlock;
				new Binary_Inst_ASM("addi",sp,sp,null,new Imm_ASM(0),currentBlock);//先占位，-stacksize最后设
				new Store_Inst_ASM(4,s0,sp,new Imm_ASM(0),currentBlock);
				new Binary_Inst_ASM("addi",s0,sp,null,new Imm_ASM(0),currentBlock);//先占位，stacksize最后设
				new Store_Inst_ASM(4,ra,sp,new Imm_ASM(4),currentBlock);
				currentFunction.stackAllocSize+=8;

				VirtualRegister_ASM pres0=new VirtualRegister_ASM("pres0");
				for(int j=0;j<node.operandlist.size();j++){
					Value para=node.operandlist.get(j);
					VirtualRegister_ASM vReg0=Creat_and_Get_vReg(para);
					if(j<parasize){
						new Mv_Inst_ASM(vReg0,new PhysicalRegister_ASM("a"+j),currentBlock);
					}
					else {
						if(j==parasize)new Load_Inst_ASM(4,pres0,sp,new Imm_ASM(0),currentBlock);//把原函数的s0(stack头)取出放入pres0中
						new Load_Inst_ASM(4,vReg0,pres0,new Imm_ASM(-(j+1-parasize)*4),currentBlock);//通过原函数的s0(stack头)找到原函数传入的其余参数的存储位置
					}
				}
			}
			visit(tmp);
			if(node.funcEndBlock==tmp){//endBlock (最后一步一定是ret，且在visitRetInst中先不加入ret指令)
				/*
				lw		a0,	0(sp)		//visitRetInst中完成了(如果有返回值的话)
				lw		s0,0(sp)
				lw		ra,4(sp)
				addi	sp,sp,stacksize
				ret
				 */
				currentFunction.endBlock=currentBlock;
				new Load_Inst_ASM(4,s0,sp,new Imm_ASM(0),currentBlock);
				new Load_Inst_ASM(4,ra,sp,new Imm_ASM(4),currentBlock);
				new Binary_Inst_ASM("addi",sp,sp,null,new Imm_ASM(0),currentBlock);//先占位，stacksize最后设
				new Ret_Inst_ASM(currentBlock);
			}
		}
		return null;
	}

	public Void visitIRBasicBlock(IRBasicBlock node){
		currentBlock.name=node.name;
		for(int i=0;i<node.instList.size();i++){
			visit(node.instList.get(i));
		}
		return null;
	}

	public Void visitGlobalVarDef(GlobalVarDef node){return null;}

	public Void visitAllocInst(AllocInst node){
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		VirtualRegister_ASM value=new VirtualRegister_ASM("value__");
		currentFunction.StackAlloc(value);//分配栈上的地址
		int offset=currentFunction.getOffset(value);
		new Binary_Inst_ASM("addi",vReg0,sp,null,new Imm_ASM(offset),currentBlock);//把xx_addr(一个vReg)的值赋成对应的地址
		return null;
	}
	public Void visitBinaryInst(BinaryInst node){
		/*
		在IR中
		add,sub,mul,sdiv,srem,//+,-,*,/,%
		shl, //<<
		ashr,//arithmetic >>
		and,or,xor, //&,|,^
		保证operand1,operand2,targetoperand都是i32类型(imm or virtual reg)
		 */
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		Value operand1=node.operandlist.get(0);
		Value operand2=node.operandlist.get(1);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(operand1);
		VirtualRegister_ASM vReg2=Creat_and_Get_vReg(operand2);

		new Binary_Inst_ASM(TransOp(node.op),vReg0,vReg1,vReg2,null,currentBlock);
		return null;
	}
	public Void visitIcmpInst(IcmpInst node){
		/*
		在IR中
		eq,ne,sgt,sge,slt,sle // ==, !=, signed >, signed >=, signed <, signed <=

		保证operand1,operand2类型相同,可能是i32,i1,i32*,struct*...(imm or virtual reg),但是在我的riscv32 ASM实现都是4字节
		(vReg对应一个physical register或者一个4字节的栈上空间，或者一个4字节的全局变量)
		targetoperand是i1类型，但是在我的riscv32 ASM实现中同样用4字节存储
		考虑要比较指针和null,指针一开始应该是null,
		IR中已经实现创建变量时无初始值默认赋值null(riscv32 asm中记为0),而全局指针变量已经全部赋0,所以无需额外考虑实现
		 */
		Value operand1=node.operandlist.get(0);
		Value operand2=node.operandlist.get(1);
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(operand1);
		VirtualRegister_ASM vReg2=Creat_and_Get_vReg(operand2);

		if(node.op==BinaryOp.eq){
			new Binary_Inst_ASM("xor",vReg0,vReg1,vReg2,null,currentBlock);
			new Cmp_Inst_ASM("seqz",vReg0,vReg0,null,currentBlock);
		}
		if(node.op==BinaryOp.ne){
			new Binary_Inst_ASM("xor",vReg0,vReg1,vReg2,null,currentBlock);
			new Cmp_Inst_ASM("snez",vReg0,vReg0,null,currentBlock);
		}
		if(node.op==BinaryOp.sgt){
			new Cmp_Inst_ASM("sgt",vReg0,vReg1,vReg2,currentBlock);
		}
		if(node.op==BinaryOp.slt){
			new Cmp_Inst_ASM("slt",vReg0,vReg1,vReg2,currentBlock);
		}
		if(node.op==BinaryOp.sge){
			new Cmp_Inst_ASM("slt",vReg0,vReg1,vReg2,currentBlock);
			new Cmp_Inst_ASM("seqz",vReg0,vReg0,null,currentBlock);
		}
		if(node.op==BinaryOp.sle){
			new Cmp_Inst_ASM("sgt",vReg0,vReg1,vReg2,currentBlock);
			new Cmp_Inst_ASM("seqz",vReg0,vReg0,null,currentBlock);
		}
		return null;
	}
	public Void visitLoadInst(LoadInst node){
		//addr一定是vReg(不是imm)
		Value addr=node.operandlist.get(0);
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(addr);
		new Load_Inst_ASM(4,vReg0,vReg1,new Imm_ASM(0),currentBlock);
		return null;
	}
	public Void visitStoreInst(StoreInst node){
		//addr一定是vReg(不是imm)
		Value addr=node.operandlist.get(0);
		Value value=node.operandlist.get(1);
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(value);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(addr);
		new Store_Inst_ASM(4,vReg0,vReg1,new Imm_ASM(0),currentBlock);
		return null;
	}
	public Void visitBrInst(BrInst node){
		if(node.condition==null)new Branch_Inst_ASM("j",null,node.ifBlock.name,currentBlock);
		else {
			VirtualRegister_ASM vReg1=Creat_and_Get_vReg(node.condition);
			new Branch_Inst_ASM("beqz",vReg1,node.elseBlock.name,currentBlock);
			new Branch_Inst_ASM("j",null,node.ifBlock.name,currentBlock);
		}
		return null;
	}
	public Void visitRetInst(RetInst node){
		Value operand=node.operandlist.get(0);
		if(!(operand.type instanceof VoidType)){
			VirtualRegister_ASM vReg1=Creat_and_Get_vReg(operand);
			new Mv_Inst_ASM(a0,vReg1,currentBlock);
		}
		//ret指令先不做，最后做
		return null;
	}
	public Void visitBitCastInst(BitCastInst node){
		//node.operandlist.get(0)一定是vReg(不是imm)
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(node.operandlist.get(0));
		new Mv_Inst_ASM(vReg0,vReg1,currentBlock);
		return null;
	}
	public Void visitCallInst(CallInst node){
		IRFunction targetfunc= (IRFunction) node.operandlist.get(0);
		for(int i=1;i<node.operandlist.size();i++){//paradata
			Value paradata=node.operandlist.get(i);
			VirtualRegister_ASM vReg=Creat_and_Get_vReg(paradata);
			if(i-1<parasize){
				new Mv_Inst_ASM(new PhysicalRegister_ASM("a"+(i-1)),vReg,currentBlock);
			}
			else {
				new Store_Inst_ASM(4,vReg,s0,new Imm_ASM(-((i-1)+1-parasize)*4),currentBlock);//把要传入的其余参数从当前stack顶依次往下存
			}
		}
		new Call_Inst_ASM(targetfunc.name,currentBlock);
		if(!(node.type instanceof VoidType)) {
			VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
			new Mv_Inst_ASM(vReg0, a0, currentBlock);
		}
		return null;
	}
	public Void visitGetElementPtrInst(GetElementPtrInst node){
		//注:IRBuilder中生成的GetElementPtrInst只会有最多有两个offset，且如果offset等于2时第一位一定是0
		//pointer一定是vReg(不是imm)
		Value pointer=node.operandlist.get(0);
		VirtualRegister_ASM vReg1=Creat_and_Get_vReg(pointer);
		VirtualRegister_ASM vReg0=Creat_and_Get_vReg(node);
		if(node.operandlist.size()==2){//1位offset
			Value operand1=node.operandlist.get(1);
			if(operand1 instanceof BaseConst){//opt，压了一个li和一个mul
				assert (operand1 instanceof ConstInt);
				Imm_ASM offset=new Imm_ASM(((ConstInt) operand1).value*4);
				new Binary_Inst_ASM("addi",vReg0,vReg1,null,offset,currentBlock);
			}
			else {
				VirtualRegister_ASM vReg2=Creat_and_Get_vReg(operand1);
				VirtualRegister_ASM tmpReg=new VirtualRegister_ASM("const4__");
				new Li_Inst_ASM(tmpReg,new Imm_ASM(4),currentBlock);
				new Binary_Inst_ASM("mul",tmpReg,tmpReg,vReg2,null,currentBlock);
				new Binary_Inst_ASM("add",vReg0,vReg1,tmpReg,null,currentBlock);
			}
		}
		else if(node.operandlist.size()==3){//2位offset
			Value operand1=node.operandlist.get(1);
			Value operand2=node.operandlist.get(2);
			assert ((operand1 instanceof ConstInt) && ((ConstInt) operand1).value==0);
			//operand1必定是0
			Imm_ASM offset=new Imm_ASM(node.offsetInSecond);
			new Binary_Inst_ASM("addi",vReg0,vReg1,null,offset,currentBlock);
		}
		else throw new RuntimeException("Wrong:Gep offset size>2");
		return null;
	}

	public Void visitConstInt(ConstInt node){
		return null;
	}
	public Void visitConstBool(ConstBool node){
		return null;
	}
	public Void visitConstString(ConstString node){
		return null;
	}
	public Void visitConstNull(ConstNull node){
		return null;
	}

	public Void visitFunctionType(FunctionType node){
		return null;
	}
	public Void visitLabelType(LabelType node){
		return null;
	}
	public Void visitIntegerType(IntegerType node){
		return null;
	}
	public Void visitPointerType(PointerType node){
		return null;
	}
	public Void visitArrayType(ArrayType node){
		return null;
	}
	public Void visitStructType(StructType node){
		return null;
	}
	public Void visitVoidType(VoidType node){
		return null;
	}

	public Void visitBaseInst(BaseInst node){
		return null;
	}
	public Void visitBaseConst(BaseConst node){
		return null;
	}
	public Void visitBaseType(BaseType node){
		return null;
	}
	public Void visitUser(User node){
		return null;
	}
	public Void visitValue(Value node){
		return null;
	}

	public String TransOp(BinaryOp op){
		if(op==BinaryOp.add)return "add";// +
		if(op==BinaryOp.sub)return "sub";// -
		if(op==BinaryOp.mul)return "mul";// *
		if(op==BinaryOp.sdiv)return "div";// /
		if(op==BinaryOp.srem)return "rem";// %
		if(op==BinaryOp.shl)return "sll";// <<
		if(op==BinaryOp.ashr)return "sra";// arithmetic >>
		if(op==BinaryOp.and)return "and";// &
		if(op==BinaryOp.or)return "or";// |
		if(op==BinaryOp.xor)return "xor";// ^
		return null;
	}
	public int TransConstToInt(Value operand){
		if(operand instanceof ConstInt)return ((ConstInt) operand).value;
		else if(operand instanceof ConstBool)return ((ConstBool) operand).value==true?1:0;
		else if(operand instanceof ConstNull)return 0;
		else{
			throw new RuntimeException("Error:transfer an un-const(int or bool) operand");
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
	VirtualRegister_ASM Creat_and_Get_vReg(Value value){//value要么是const要么是vReg(inst or globalVar)
		//注：对于const类型返回的是值
		//注：对于globalVar类型返回的是指针
		//注：对于inst类型返回的是值或指针
		if((value instanceof BaseConst) && !(value instanceof ConstString)){
			VirtualRegister_ASM vReg=new VirtualRegister_ASM("const__");
			new Li_Inst_ASM(vReg,new Imm_ASM(TransConstToInt(value)),currentBlock);
			return vReg;
		}
		else if(value instanceof BaseInst){
			if(value.vReg==null)value.vReg=new VirtualRegister_ASM(value.name);
			return value.vReg;
		}
		else if((value instanceof GlobalVarDef) || (value instanceof ConstString)){
			VirtualRegister_ASM vReg=new VirtualRegister_ASM("const__");
			new La_Inst_ASM(vReg,value.name,currentBlock);
			return vReg;
		}
		else {//function parameter(type: Value)
			if(value.vReg==null)value.vReg=new VirtualRegister_ASM(value.name);
			return value.vReg;
		}
	}
}
