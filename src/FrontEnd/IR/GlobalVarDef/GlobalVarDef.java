package FrontEnd.IR.GlobalVarDef;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public class GlobalVarDef extends User {
	public GlobalVarDef(String _name, BaseType _vartype){
		super(_name,new PointerType(_vartype));
		//initOperand: zeroinitializer
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitGlobalVarDef(this);
	}
}
