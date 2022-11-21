package FrontEnd.IR.Operand.Const;

import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;

public class ConstInt extends BaseOperand {
	public int value;
	public ConstInt(int _value){
		super("const_int",new IntegerType(32));
		value=_value;
	}
}