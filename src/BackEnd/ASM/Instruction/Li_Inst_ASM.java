package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Reg_ASM;

public class Li_Inst_ASM extends Base_Inst_ASM{
//	li		t0,	233
	public Li_Inst_ASM(Reg_ASM _rd, Imm_ASM _imm, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		rd=_rd;
		imm=_imm;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tli\t\t."+rd.toString()+",\t"+imm.toString()+"\n");
		return ans.toString();
	}
}
