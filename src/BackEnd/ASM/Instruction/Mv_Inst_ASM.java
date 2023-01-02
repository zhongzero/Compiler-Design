package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Register_ASM;

public class Mv_Inst_ASM extends Base_Inst_ASM{
//	mv	t0,t1
	public Mv_Inst_ASM(Register_ASM _rd, Register_ASM _rs1, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		rd=_rd;
		rs1=_rs1;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tmv\t\t."+rd.toString()+",\t"+rs1.toString()+"\n");
		return ans.toString();
	}
}
