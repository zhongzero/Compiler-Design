package BackEnd.ASM.Instruction;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.Imm_ASM;
import BackEnd.ASM.Operand.Register_ASM;

public class Load_Inst_ASM extends Base_Inst_ASM{
	public int loadbyte;
//	lw		t1,	8(sp)
	public Load_Inst_ASM(int _loadbyte, Register_ASM _rd, Register_ASM _rs1, Imm_ASM _offset, ASMBasicBlock _belongBlock){
		if(_belongBlock!=null)_belongBlock.instList.add(this);
		loadbyte=_loadbyte;
		rd=_rd;
		rs1=_rs1;
		imm=_offset;
		update_use_def();
	}

	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\t");
		if(loadbyte==1)ans.append("lb");
		if(loadbyte==2)ans.append("lh");
		if(loadbyte==4)ans.append("lw");
		ans.append("\t\t" +rd.toString()+ ",\t"+imm.toString()+"("+rs1.toString()+")\n");
		return ans.toString();
	}
}
