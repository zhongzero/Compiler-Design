package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Register_ASM;

public class Cmp_Inst_ASM extends Base_Inst_ASM{
//	slt		t1,	t2,	t3
//	seqz	t1,	t2
	public String op;
	//seqz,snez,sgt,slt // ==0, !=0, signed >, signed <
	public Cmp_Inst_ASM(String _op, Register_ASM _rd, Register_ASM _rs1, Register_ASM _rs2, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		op=_op;
		rd=_rd;
		rs1=_rs1;
		rs2=_rs2;
		update_use_def();
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		if(rs2!=null)ans.append("\t"+op+"\t\t" +rd.toString()+ ",\t"+rs1.toString()+",\t"+rs2.toString()+"\n");//slt,sgt
		else ans.append("\t"+op+"\t" +rd.toString()+ ",\t"+rs1.toString()+",\n");//seqz,snez
		return ans.toString();
	}
}
