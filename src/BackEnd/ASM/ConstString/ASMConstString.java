package BackEnd.ASM.ConstString;

public class ASMConstString {
	String name;
	String str;
	public ASMConstString(String _name,String _str){
		name=_name;
		str=_str;
	}
	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("\t.type\t" + name + ",@object\n");
		ans.append(name + ":\n");
		ans.append("\t.string\t\""+str+"\"\n");
		ans.append("\t.size\t" + name + ",\t"+ (str.length() + 1) +"\n\n");
		return ans.toString();
	}
}
