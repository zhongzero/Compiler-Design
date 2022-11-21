package FrontEnd.IR.Operand.Const;

import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;
import FrontEnd.IR.TypeSystem.InstType;

public class ConstNull extends BaseOperand {
	public ConstNull(){
		super("null",new PointerType(new InstType()));
	}
	public ConstNull(PointerType _type){
		super("_null",_type);
	}
}
