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
	ASMModule asmmodule;
	public UpdateInst(ASMModule _asmmodule) {
		asmmodule=_asmmodule;
	}
	public void process(){
		//填入function开头和结尾sp(和s0)用到的stacksize(已在ASMBuilder中占位)
		for(int i=0;i<asmmodule.funcList.size();i++){
			ASMFunction tmpfunc=asmmodule.funcList.get(i);
//			System.out.println(tmpfunc.name);
//			System.out.println(tmpfunc.blockList.size());
			ASMBasicBlock beginBlock=tmpfunc.beginBlock;
			int stacksize=tmpfunc.stackAllocSize+tmpfunc.stackParaSize;
			beginBlock.instList.get(0).imm=new Imm_ASM(-(stacksize));//addi sp sp -stacksize
			beginBlock.instList.get(2).imm=new Imm_ASM(stacksize);//addi s0 sp stacksize

			ASMBasicBlock endBlock=tmpfunc.endBlock;
			endBlock.instList.get(endBlock.instList.size()-2).imm=new Imm_ASM(stacksize);//addi	sp,sp,stacksize
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}
