package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Register_ASM;

public class Binary_Inst_ASM extends Base_Inst_ASM{
//	add		a0,a1,a2
//	addi	sp,sp,-20
	public String op;
	//add,sub,mul,div,rem //+,-,*,/,%
	//sll,sra, //<<,arithmetic >>
	//and,or,xor //&,|,^
	//addi //+
	public Binary_Inst_ASM(String _op, Register_ASM _rd, Register_ASM _rs1, Register_ASM _rs2, Imm_ASM _imm, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		op=_op;
		rd=_rd;
		rs1=_rs1;
		rs2=_rs2;
		imm=_imm;
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		if(rs2!=null)ans.append("\t"+op+"\t\t" +rd.toString()+ ",\t"+rs1.toString()+",\t"+rs2.toString()+"\n");
		else ans.append("\t"+op+"\t" +rd.toString()+ ",\t"+rs1.toString()+",\t"+imm.toString()+"\n");//addi
		return ans.toString();
	}
}
