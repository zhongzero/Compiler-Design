package BackEnd.ASM.GlobalVarDef;

public class ASMGlobalVarDef {
	String name;
	public ASMGlobalVarDef(String _name){
		name=_name;
	}
	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\t.globl\t" + name + "\n");
		ans.append("\t.type\t" + name + ",@object\n");
		ans.append(name + ":\n");
		ans.append("\t.word\t0\n");
		ans.append("\t.size\t" + name + ",\t4\n\n");//bool类型在数据区中也令其为4字节
		return ans.toString();
	}
}
