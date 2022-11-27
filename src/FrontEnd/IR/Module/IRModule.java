package FrontEnd.IR.Module;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.Const.ConstString;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.TypeSystem.OperandType.StructType;

import java.util.ArrayList;
import java.util.HashMap;

public class IRModule extends Value {
	public HashMap<String, IRFunction> funcHashMap;
	public HashMap<String, StructType> structHashMap;
	public ArrayList<GlobalVarDef> globalVarList;
	public ArrayList<ConstString> stringHashList;
	public IRModule(){
		super("module",null);
		funcHashMap=new HashMap<>();
		structHashMap=new HashMap<>();
		globalVarList=new ArrayList<>();
		stringHashList=new ArrayList<>();
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIRModule(this);
	}
}
