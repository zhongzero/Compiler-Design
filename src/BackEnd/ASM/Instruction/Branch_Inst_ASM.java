package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Register_ASM;

public class Branch_Inst_ASM extends Base_Inst_ASM{
	public String op;
	//	j		.xxx_block
	//	beqz	rs1,.xxx_block   (if rs1!=0 br block)
	public String jumpblockname;
	public Branch_Inst_ASM(String _op,Register_ASM _rs1, String _jumpblockname, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		op=_op;
		rs1=_rs1;
		jumpblockname=_jumpblockname;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		if(rs1==null)ans.append("\t"+op+"\t\t."+jumpblockname+"\n"); //j
		else ans.append("\t"+op+"\t"+rs1.toString()+",\t."+jumpblockname+"\n"); //beqz
		return ans.toString();
	}
}
