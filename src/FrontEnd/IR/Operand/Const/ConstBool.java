package FrontEnd.IR.Operand.Const;

import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;

public class ConstBool extends BaseOperand {
	public boolean value;
	public ConstBool(boolean _value){
		super("const_bool",new IntegerType(1));
		value=_value;
	}
}
