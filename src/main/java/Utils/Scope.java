package Utils;

import FrontEnd.AST.TypeNodeSet.BaseTypeNode;

import java.util.HashMap;

public class Scope {
	public HashMap<String,BaseTypeNode> variable_table;
	public Scope parent;//当成C++中的指针用法(java中没有指针)

	public Scope(Scope _parent) {
		parent=_parent;
		variable_table=new HashMap<String, BaseTypeNode>();
	}
	public boolean IsContainVariable(String str) {
		return variable_table.containsKey(str);
	}
	public void DefVariable(String str,BaseTypeNode val){
		variable_table.put(str,val);
	}

}
