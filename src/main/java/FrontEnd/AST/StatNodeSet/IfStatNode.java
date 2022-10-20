package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class IfStatNode extends BaseStatNode{
	public BaseExprNode conditionexpr;
	public BlockStatNode ifstat;
	public BlockStatNode elsestat;
	public IfStatNode(BaseExprNode _conditionexpr,
					  BlockStatNode _ifstat,BlockStatNode _elsestat,
					  Position _pos){
		super(_pos);
		conditionexpr=_conditionexpr;
		ifstat=_ifstat;
		elsestat=_elsestat;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitIfStat(this);
	}
}
