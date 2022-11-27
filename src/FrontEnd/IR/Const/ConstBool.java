package FrontEnd.IR.Const;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;

public class ConstBool extends BaseConst {
	public boolean value;
	public ConstBool(boolean _value){
		super("const_bool",new IntegerType(1));
		value=_value;
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitConstBool(this);
	}
}
