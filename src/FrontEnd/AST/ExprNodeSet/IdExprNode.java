package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class IdExprNode extends BaseExprNode{
	public String identifier;
	public IdExprNode(String _identifier,Position _pos){
		super(_pos);
		identifier=_identifier;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitIdExpr(this);
	}
}
