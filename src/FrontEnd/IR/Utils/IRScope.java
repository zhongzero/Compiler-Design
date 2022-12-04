package FrontEnd.IR.Utils;

import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import FrontEnd.IR.Basic.Value;
import FrontEnd.SemanticCheck.Utils.Scope;
import Utils.Error.SemanticError;

import java.util.HashMap;

public class IRScope {
	public HashMap<String, Value> varHashMap;
	public IRScope parent;
	public boolean inClass;
	public boolean inClassdef;
	public IRScope(IRScope _parent){
		parent=_parent;
		varHashMap=new HashMap<>();
		inClass=((parent!=null)&&_parent.inClass);
		inClassdef=false;
	}
	public IRScope(IRScope _parent,boolean _enterClass){
		parent=_parent;
		varHashMap=new HashMap<>();
		inClass=(((parent!=null)&&_parent.inClass)||_enterClass);
		inClassdef=_enterClass;
	}
	public Value variable_Get_FromAll(String key){
		IRScope tmp=this;
		while(tmp!=null){
			if(tmp.varHashMap.containsKey(key))return tmp.varHashMap.get(key);
			tmp=tmp.parent;
		}
		throw new RuntimeException("??? IRscope get variable failed ???");
	}
	public boolean variable_Contain_FromClass(String key){
		IRScope tmp=this;
		while(tmp!=null&&tmp.inClass){
			if(tmp.varHashMap.containsKey(key)){
				if(tmp.inClassdef)return true;
				else return false;
			}
			tmp=tmp.parent;
		}
		return false;
	}
}
