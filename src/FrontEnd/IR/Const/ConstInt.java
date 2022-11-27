package FrontEnd.IR.Const;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;

public class ConstInt extends BaseConst {
	public int value;
	public ConstInt(int _value){
		super("const_int",new IntegerType(32));
		value=_value;
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitConstInt(this);
	}
}