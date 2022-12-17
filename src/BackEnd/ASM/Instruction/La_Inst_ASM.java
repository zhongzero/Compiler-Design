package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Reg_ASM;

public class La_Inst_ASM extends Base_Inst_ASM{
//	la		t0,	AAA
	String symbolname;
	public La_Inst_ASM(Reg_ASM _rd,String _symbolname,ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		symbolname=_symbolname;
		rd=_rd;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tla\t\t."+rd.toString()+",\t"+symbolname+"\n");
		return ans.toString();
	}
}
