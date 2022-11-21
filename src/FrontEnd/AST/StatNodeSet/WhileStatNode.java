package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;


public class WhileStatNode extends BaseStatNode{
	public BaseExprNode conditionexpr;
	public BlockStatNode whilestat;
	public WhileStatNode(BaseExprNode _conditionexpr, BlockStatNode _whilestat, Position _pos){
		super(_pos);
		conditionexpr=_conditionexpr;
		whilestat=_whilestat;
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitWhileStat(this);
	}
}
