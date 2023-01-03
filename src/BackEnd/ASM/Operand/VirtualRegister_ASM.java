package BackEnd.ASM.Operand;

public class VirtualRegister_ASM extends Register_ASM {
	public String name;//方便调试
	public VirtualRegister_ASM(String _name){
		name=_name;
	}
	@Override
	public String toString() {
		throw new RuntimeException("why use vReg in printer?");
	}
}
