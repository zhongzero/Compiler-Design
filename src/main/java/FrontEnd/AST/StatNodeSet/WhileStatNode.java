package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;


public class WhileStatNode extends BaseStatNode{
	public BaseExprNode conditionexpr;
	public BaseStatNode whilestat;
	public WhileStatNode(BaseExprNode _conditionexpr, BaseStatNode _whilestat, Position _pos){
		super(_pos);
		conditionexpr=_conditionexpr;
		whilestat=_whilestat;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitWhileStat(this);
	}
}
