package FrontEnd.SemanticCheck.Utils;

import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.ClassDefNode;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class GlobalScope {
	public LinkedHashMap<String, FuncDefNode> function_table;
	public LinkedHashMap<String, ClassDefNode> class_table;

	//class,func,classfunc,classvar支持前向引用(可以被上面写的代码调用)
	//var不支持前向引用,不在此处定义

	public GlobalScope() {
		function_table= new LinkedHashMap<>();
		class_table=new LinkedHashMap<>();
	}
}
