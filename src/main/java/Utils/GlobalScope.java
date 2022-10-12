package Utils;

import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.ClassDefNode;

import java.util.HashMap;

public class GlobalScope {
	public HashMap<String, FuncDefNode> function_table;
	public HashMap<String,ClassDefNode> class_table;
	public HashMap<String,FuncDefNode> classFunc_table;

	public GlobalScope parent;//当成C++中的指针用法(java中没有指针)

	public GlobalScope(GlobalScope _parent) {
		parent=_parent;
		function_table=new HashMap<String, FuncDefNode>();
	}
	public boolean IsContainFunction(String str){
		return function_table.containsKey(str);
	}
	public boolean IsContainClass(String str){
		return class_table.containsKey(str);
	}

	public boolean IsContainClassFunction(String Class,String Func){
		return classFunc_table.containsKey(Class+"-"+Func);
	}

	public void DefFunction(String str,FuncDefNode val){
		function_table.put(str,val);
	}
	public void DefClass(String str,ClassDefNode val){
		class_table.put(str,val);
	}
	public void DefClassFunction(String Class,String Func,FuncDefNode val){
		classFunc_table.put(Class+"-"+Func,val);
	}
}
