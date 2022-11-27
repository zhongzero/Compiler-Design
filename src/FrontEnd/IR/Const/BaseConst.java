package FrontEnd.IR.Const;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

public class BaseConst extends User {
	public BaseConst(String _name, BaseType _type){
		super(_name,_type);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitBaseConst(this);
	}
}
