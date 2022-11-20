package FrontEnd.IR.Operand;

import FrontEnd.IR.TypeSystem.IntegerType;

public class ConstInt extends BaseOperand {
	public int value;
	public ConstInt(int _value){
		super("_const_int",new IntegerType(32));
		value=_value;
	}
}