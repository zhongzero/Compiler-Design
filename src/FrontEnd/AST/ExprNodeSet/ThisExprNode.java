package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class ThisExprNode extends BaseExprNode{
	public ThisExprNode(Position _pos){
		super(_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitThisExpr(this);
	}
}
