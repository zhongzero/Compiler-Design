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
		String str2=str.replace("\\", "\\\\")
				.replace("\n", "\\n")
				.replace("\0", "")
				.replace("\t", "\\t")
				.replace("\"", "\\\"");
		ans.append("\t.string\t\""+str2+"\"\n");
		ans.append("\t.size\t" + name + ",\t"+ (str.length() + 1) +"\n\n");
		return ans.toString();
	}
}
