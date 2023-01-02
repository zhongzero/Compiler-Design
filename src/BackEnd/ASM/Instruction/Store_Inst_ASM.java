package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Register_ASM;

public class Store_Inst_ASM extends Base_Inst_ASM{
	//	sw		a0,	8(sp)
	public int storebyte;
	public Store_Inst_ASM(int _storebyte, Register_ASM _rs1, Register_ASM _rs2, Imm_ASM _offset, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		storebyte=_storebyte;
		rs1=_rs1;
		rs2=_rs2;
		imm=_offset;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\t");
		if(storebyte==1)ans.append("sb");
		if(storebyte==2)ans.append("sh");
		if(storebyte==4)ans.append("sw");
		ans.append("\t\t" +rs1.toString()+ ",\t"+imm.toString()+"("+rs2.toString()+")\n");
		return ans.toString();
	}
}
