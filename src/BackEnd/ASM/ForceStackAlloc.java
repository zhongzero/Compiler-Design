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
	//zero,ra,sp,s0,a0,a1,a2,t0不用做分配
	//t1~t6,s1~s11,a3~a7,gp,tp全部用于寄存器分配
	//先做暴力压栈，把所有都压入栈中，用于分配的寄存器只用t0,t1,t2,t3

	ASMModule asmmodule;

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
			ASMFunction tmpfunc=asmmodule.funcList.get(i);
			for(int j=0;j<tmpfunc.blockList.size();j++){
				ASMBasicBlock tmpblock=tmpfunc.blockList.get(j);
				ListIterator<Base_Inst_ASM> iterator=tmpblock.instList.listIterator();
				while(iterator.hasNext()){
					Base_Inst_ASM inst=iterator.next();
					if(inst.rs1!=null&&inst.rs1 instanceof VirtualRegister_ASM){
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs1,t1,tmpfunc,tmpblock,iterator);
						inst.rs1=new PhysicalRegister_ASM("t1");
					}
					if(inst.rs2!=null&&inst.rs2 instanceof VirtualRegister_ASM){
						StackAllocLoadStore("load", (VirtualRegister_ASM) inst.rs2,t2,tmpfunc,tmpblock,iterator);
						inst.rs2=new PhysicalRegister_ASM("t2");
					}
					if(inst.rd!=null&&inst.rd instanceof VirtualRegister_ASM){
						StackAllocLoadStore("store", (VirtualRegister_ASM) inst.rd,t0,tmpfunc,tmpblock,iterator);
						inst.rd=new PhysicalRegister_ASM("t0");
					}
				}
			}
		}
	}
	public void StackAllocLoadStore(String tp, VirtualRegister_ASM vReg,PhysicalRegister_ASM rd,ASMFunction tmpfunc,ASMBasicBlock tmpblock,ListIterator<Base_Inst_ASM> iterator){
		if(tp.equals("load")){
			if(!tmpfunc.VReg_offset_Map.containsKey(vReg))tmpfunc.StackAlloc(vReg);
			Imm_ASM offset=new Imm_ASM(tmpfunc.getOffset(vReg));
			if(BetweenImm(offset.imm)){
				iterator.previous();
				iterator.add(new Load_Inst_ASM(4,rd,sp,offset,tmpblock));
				iterator.next();
			}
			else {
				iterator.previous();
				iterator.add(new Li_Inst_ASM(t3,offset,tmpblock));
				iterator.add(new Binary_Inst_ASM("add",t3,sp,t3,null,tmpblock));
				iterator.add(new Load_Inst_ASM(4,rd,t3,new Imm_ASM(0),tmpblock));
				iterator.next();
			}
		}
		if(tp.equals("store")){
			if(!tmpfunc.VReg_offset_Map.containsKey(vReg))tmpfunc.StackAlloc(vReg);
			Imm_ASM offset=new Imm_ASM(tmpfunc.getOffset(vReg));
			if(BetweenImm(offset.imm)){
				iterator.add(new Store_Inst_ASM(4,rd,sp,offset,tmpblock));
			}
			else {
				iterator.add(new Li_Inst_ASM(t3,offset,tmpblock));
				iterator.add(new Binary_Inst_ASM("add",t3,sp,t3,null,tmpblock));
				iterator.add(new Store_Inst_ASM(4,rd,t3,new Imm_ASM(0),tmpblock));
			}
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}
