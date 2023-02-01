package BackEnd.ASM.Operand;

import java.util.HashMap;

public class VirtualRegister_ASM extends Register_ASM {
	static HashMap<String,Integer> multicount=new HashMap<>();
	public String name;//方便调试
	public VirtualRegister_ASM(String _name){
		if(multicount.containsKey(_name)){
			multicount.replace(_name,multicount.get(_name)+1);
			name=_name+"_"+multicount.get(_name)+"_";
		}
		else {
			multicount.put(_name,0);
			name=_name+"_0_";
		}
	}
	@Override
	public String toString() {
		return name;
//		throw new RuntimeException("why use vReg in printer?");
	}
}
