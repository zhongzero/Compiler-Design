package FrontEnd.IR.Operand;

import FrontEnd.IR.TypeSystem.IntegerType;

public class ConstBool extends BaseOperand {
	public boolean value;
	public ConstBool(boolean _value){
		super("_const_bool",new IntegerType(1));
		value=_value;
	}
}
