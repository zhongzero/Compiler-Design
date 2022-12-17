package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;

public class Call_Inst_ASM extends Base_Inst_ASM{
	public String callfuncname;
	public Call_Inst_ASM(String _callfuncname, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		callfuncname=_callfuncname;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tcall\t"+callfuncname+"\n");
		return ans.toString();
	}
}
