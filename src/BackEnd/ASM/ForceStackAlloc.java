package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.*;
import BackEnd.ASM.Module.ASMModule;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.PhysicalRegister_ASM;
import BackEnd.ASM.Operand.Register_ASM;
import BackEnd.ASM.Operand.VirtualRegister_ASM;

import java.util.ListIterator;

public class ForceStackAlloc {
	//先做暴力压栈，把所有都压入栈中，用于分配的寄存器只用t0,t1,t2,t3

	ASMModule asmmodule;
	ASMFunction currentfunction;
	ASMBasicBlock currentblock;
	ListIterator<Base_Inst_ASM> iterator;

	PhysicalRegister_ASM sp=new PhysicalRegister_ASM("sp");
	PhysicalRegister_ASM t0=new PhysicalRegister_ASM("t0");
	PhysicalRegister_ASM t1=new PhysicalRegister_ASM("t1");
	PhysicalRegister_ASM t2=new PhysicalRegister_ASM("t2");
	PhysicalRegister_ASM t3=new PhysicalRegister_ASM("t3");
	public ForceStackAlloc(ASMModule _asmmodule) {
		asmmodule=_asmmodule;
	}
	public void process(){
		for(int i=0;i<asmmodule.funcList.size();i++){
			currentfunction=asmmodule.funcList.get(i);
//			System.out.println(currentfunction.name);
			for(int j=0;j<currentfunction.blockList.size();j++){
				currentblock=currentfunction.blockList.get(j);
//				System.out.println(currentblock.name);
				iterator=currentblock.instList.listIterator(0);
				while(iterator.hasNext()){
					Base_Inst_ASM inst=iterator.next();
					if(inst.rs1!=null&&inst.rs1 instanceof VirtualRegister_ASM){
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs1,t1);
						inst.rs1=new PhysicalRegister_ASM("t1");
					}
					if(inst.rs2!=null&&inst.rs2 instanceof VirtualRegister_ASM){
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs2,t2);
						inst.rs2=new PhysicalRegister_ASM("t2");
					}
					if(inst.rd!=null&&inst.rd instanceof VirtualRegister_ASM){
						StackAllocLoadStore("store", (VirtualRegister_ASM) inst.rd,t0);
						inst.rd=new PhysicalRegister_ASM("t0");
					}
				}
			}
		}
	}
	public void StackAllocLoadStore(String tp, VirtualRegister_ASM vReg,PhysicalRegister_ASM rd){
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
				iterator.add(new Li_Inst_ASM(t3,offset,null));
				iterator.add(new Binary_Inst_ASM("add",t3,sp,t3,null,null));
				iterator.add(new Load_Inst_ASM(4,rd,t3,new Imm_ASM(0),null));
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
				iterator.add(new Li_Inst_ASM(t3,offset,null));
				iterator.add(new Binary_Inst_ASM("add",t3,sp,t3,null,null));
				iterator.add(new Store_Inst_ASM(4,rd,t3,new Imm_ASM(0),null));
			}
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}
