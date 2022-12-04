package FrontEnd.IR.Const;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

public class ConstNull extends BaseConst {
	public ConstNull(){
		super("null",new PointerType(new IntegerType(32)));
		//先随机指定null的类型(这里是i32*)
	}
	public ConstNull(PointerType _type){
		super("_null",_type);
	}

	@Override
	public String getName(){
		return "null";
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitConstNull(this);
	}
}
