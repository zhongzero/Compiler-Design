package FrontEnd.AST.ExprNodeSet.ConstExprNode;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ConstBoolExprNode extends BaseExprNode {
	public boolean value;
	public ConstBoolExprNode(boolean _value,Position _pos){
		super(_pos);
		value=_value;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitConstBoolExpr(this);
	}
}
