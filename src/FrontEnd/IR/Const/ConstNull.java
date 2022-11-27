package FrontEnd.IR.Const;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

public class ConstNull extends BaseConst {
	public ConstNull(){
		super("null",new PointerType(new VoidType()));
	}
	public ConstNull(PointerType _type){
		super("_null",_type);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitConstNull(this);
	}
}
