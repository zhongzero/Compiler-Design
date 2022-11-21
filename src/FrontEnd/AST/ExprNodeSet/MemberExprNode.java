package FrontEnd.AST.ExprNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class MemberExprNode extends BaseExprNode{
	public BaseExprNode expr;
	public String member;

	public MemberExprNode(BaseExprNode _expr,String _member,Position _pos){
		super(_pos);
		expr=_expr;
		member=_member;

	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitMemberExpr(this);
	}
}
