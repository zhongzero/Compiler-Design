package FrontEnd.IR.Operand;

import FrontEnd.IR.TypeSystem.PointerType;
import FrontEnd.IR.TypeSystem.VoidType;

public class ConstNull extends BaseOperand {
	public ConstNull(){
		super("_null",new PointerType(new VoidType()));
	}
	public ConstNull(PointerType _type){
		super("_null",_type);
	}
}
