package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Reg_ASM;

public class Store_Inst_ASM extends Base_Inst_ASM{
	//	sw		a0,	8(sp)
	public int storebyte;
	public Store_Inst_ASM(int _storebyte, Reg_ASM _rd, Reg_ASM _rs1, Imm_ASM _offset, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		storebyte=_storebyte;
		rd=_rd;
		rs1=_rs1;
		imm=_offset;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\t");
		if(storebyte==1)ans.append("sb");
		if(storebyte==2)ans.append("sh");
		if(storebyte==4)ans.append("sw");
		ans.append("\t\t" +rd.toString()+ ",\t"+imm.toString()+"("+rs1.toString()+")\n");
		return ans.toString();
	}
}
