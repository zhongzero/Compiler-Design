package FrontEnd.IR.Basic;


import BackEnd.ASM.Operand.VirtualRegister_ASM;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;
import java.util.HashMap;

public class Value {
	public String name;
	public BaseType type;
	public ArrayList<User> userlist;
	public static HashMap<String,Integer> Map=new HashMap<>();
	public VirtualRegister_ASM vReg;
	public Value(String _name,BaseType _type){
		name=GetUniqueName(_name);
		type=_type;
		userlist=new ArrayList<>();
	}
	public static String GetUniqueName(String _name){
		if(Map.containsKey(_name)){
			int num=Map.get(_name)+1;
			Map.put(_name,num);
			return _name+"_"+num;
		}
		else {
			Map.put(_name,1);
			return _name+"_1";
		}
	}
	public void addUser(User user){
		userlist.add(user);
	}


	public String getName(){
		//para不属于inst/GlobalVarDef任何一类,直接定义为Value，要输出%xxx
		return "%"+name;
	}
	public String getType(){
		return type.toString();
	}
	public String getType_Name(){
		return getType()+" "+getName();
	}

	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitValue(this);
	}
}
