package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ExprStatNode extends BaseStatNode{
	public BaseExprNode expr;
	public ExprStatNode(BaseExprNode _expr, Position _pos){
		super(_pos);
		expr=_expr;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitExprStat(this);
	}
}
