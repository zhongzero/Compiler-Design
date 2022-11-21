package FrontEnd.IR.Module;

import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.Operand.Const.ConstString;
import FrontEnd.IR.Operand.GlobalVariable;
import FrontEnd.IR.TypeSystem.OperandType.StructType;

import java.util.HashMap;

public class IRModule {
	public HashMap<String, IRFunction> funcHashMap;
	public HashMap<String,ConstString> stringHashMap;
	public HashMap<String, GlobalVariable> globalVarHashMap;
	public HashMap<String, StructType> structHashMap;
	public IRModule(){}
}
