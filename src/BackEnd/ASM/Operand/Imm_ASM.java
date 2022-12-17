package BackEnd.ASM.Operand;

public class Imm_ASM {
	public int imm;
	public Imm_ASM(int _imm){
		imm=_imm;
	}

	@Override
	public String toString() {
		return String.valueOf(imm);
	}
}
