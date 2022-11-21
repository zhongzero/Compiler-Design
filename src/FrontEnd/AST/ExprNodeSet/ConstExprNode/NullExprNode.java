package FrontEnd.AST.ExprNodeSet.ConstExprNode;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class NullExprNode extends BaseExprNode {
	public NullExprNode(Position _pos){
		super(_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitNullExpr(this);
	}
}
