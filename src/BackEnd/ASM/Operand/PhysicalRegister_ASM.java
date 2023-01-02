package BackEnd.ASM.Operand;

public class PhysicalRegister_ASM extends Register_ASM {
	public String name;
	public PhysicalRegister_ASM(String _name){
		name=_name;
	}
	public boolean equals(PhysicalRegister_ASM other){
		return name.equals(other.name);
	}
}
