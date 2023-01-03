package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;
import BackEnd.ASM.Instruction.Binary_Inst_ASM;
import BackEnd.ASM.Instruction.Li_Inst_ASM;
import BackEnd.ASM.Module.ASMModule;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.PhysicalRegister_ASM;

import java.util.ListIterator;

public class UpdateInst {
	//zero,ra,sp,s0,a0,a1,a2,t0不用做分配
	//t1~t6,s1~s11,a3~a7,gp,tp全部用于寄存器分配
	ASMModule asmmodule;
	PhysicalRegister_ASM t0=new PhysicalRegister_ASM("t0");
	public UpdateInst(ASMModule _asmmodule) {
		asmmodule=_asmmodule;
	}
	public void process(){
		//填入function开头和结尾sp(和s0)用到的stacksize(已在ASMBuilder中占位)
		for(int i=0;i<asmmodule.funcList.size();i++){
			ASMFunction tmpfunc=asmmodule.funcList.get(i);
			System.out.println(tmpfunc.name);
			System.out.println(tmpfunc.blockList.size());
			ASMBasicBlock beginBlock=tmpfunc.beginBlock;
			int stacksize=tmpfunc.stackAllocSize+tmpfunc.stackParaSize;
			beginBlock.instList.get(0).imm=new Imm_ASM(-(stacksize));//addi sp sp -stacksize
			beginBlock.instList.get(2).imm=new Imm_ASM(stacksize);//addi s0 sp stacksize

			ASMBasicBlock endBlock=tmpfunc.endBlock;
			endBlock.instList.get(endBlock.instList.size()-2).imm=new Imm_ASM(stacksize);//addi	sp,sp,stacksize
		}

		//检查所有的addi操作,如果!(-2048<=imm&&imm<2048),拆成li和add两个操作(借用t0)
		//(addi imm有范围[-2^11,2^11) )
		for(int i=0;i<asmmodule.funcList.size();i++){
			ASMFunction tmpfunc=asmmodule.funcList.get(i);
			for(int j=0;j<tmpfunc.blockList.size();j++){
				ASMBasicBlock tmpblock=tmpfunc.blockList.get(j);
				ListIterator<Base_Inst_ASM> iterator=tmpblock.instList.listIterator();
				while(iterator.hasNext()) {
					Base_Inst_ASM inst = iterator.next();
					if((inst instanceof Binary_Inst_ASM) && ((Binary_Inst_ASM) inst).op.equals("addi")){
						if(!BetweenImm(inst.imm.imm)){
							iterator.previous();
							iterator.add(new Li_Inst_ASM(t0,inst.imm,tmpblock));
							iterator.add(new Binary_Inst_ASM("add",inst.rd,inst.rs1,t0,null,tmpblock));
							iterator.next();
							iterator.remove();
						}
					}
				}
			}
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}
