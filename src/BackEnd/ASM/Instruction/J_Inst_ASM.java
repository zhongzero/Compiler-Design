package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;

public class J_Inst_ASM extends Base_Inst_ASM{
//	j	.xxx_block
	public String jumpblockname;
	public J_Inst_ASM(String _jumpblockname, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		jumpblockname=_jumpblockname;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\tj\t\t."+jumpblockname+"\n");
		return ans.toString();
	}
}
