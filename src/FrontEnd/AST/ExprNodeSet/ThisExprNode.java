package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class ThisExprNode extends BaseExprNode{
	public ThisExprNode(Position _pos){
		super(_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitThisExpr(this);
	}
}
