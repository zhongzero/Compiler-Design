package Utils;

import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import Utils.Error.SemanticError;

import java.util.HashMap;

public class Scope {
	public HashMap<String,BaseTypeNode> variable_table;
	public Scope parent;//当成C++中的指针用法(java中没有指针)

	public BaseTypeNode returntype;
	public BaseTypeNode classtype;


	public Scope(Scope _parent) {
		parent=_parent;
		returntype=(_parent==null?null:_parent.returntype);
		classtype=(_parent==null?null:_parent.classtype);
		variable_table=new HashMap<String, BaseTypeNode>();
	}
	public boolean variable_ContainKey_FromAll(String key){
		Scope tmp=this;
		while(tmp!=null){
			if(tmp.variable_table.containsKey(key))return true;
			tmp=tmp.parent;
		}
		return false;
	}
	public BaseTypeNode variable_Get_FromAll(String key){
		Scope tmp=this;
		while(tmp!=null){
			if(tmp.variable_table.containsKey(key))return tmp.variable_table.get(key);
			tmp=tmp.parent;
		}
		throw new SemanticError("??? scope get variable failed ???",null);
	}
}
