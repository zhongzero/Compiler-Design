package BackEnd.ASM.Instruction;

import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Register_ASM;

import java.util.HashSet;

public class Base_Inst_ASM {
	public Register_ASM rd=null,rs1=null,rs2=null;
	public Imm_ASM imm=null;
	public HashSet<Register_ASM> use=new HashSet<>(),def=new HashSet<>();
	public void update_use_def(){
		if(rd!=null)def.add(rd);
		if(rs1!=null)use.add(rs1);
		if(rs2!=null)use.add(rs2);
	}
}
