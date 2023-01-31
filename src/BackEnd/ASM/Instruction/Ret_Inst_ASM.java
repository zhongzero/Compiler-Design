package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;

public class Ret_Inst_ASM extends Base_Inst_ASM{
//	ret
	public Ret_Inst_ASM( ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		update_use_def();
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tret\n");
		return ans.toString();
	}
}
