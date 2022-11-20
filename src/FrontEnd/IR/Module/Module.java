package FrontEnd.IR.Module;

import FrontEnd.IR.Function.Function;
import FrontEnd.IR.Operand.ConstString;
import FrontEnd.IR.TypeSystem.StructType;

import java.util.ArrayList;
import java.util.HashMap;

public class Module {
	public HashMap<String,Function> functionHashMap;
	public HashMap<String,ConstString> stringHashMap;
	public ArrayList<Function> functionList;
	public ArrayList<GlobalVariable>;
	public HashMap<String, StructType> structHashMap;

}
