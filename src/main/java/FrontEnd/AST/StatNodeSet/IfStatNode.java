package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.OtherNodeSet.BlockNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class IfStatNode extends BaseStatNode{
	public BaseExprNode conditionexpr;
	public BlockNode ifblock;
	public BlockNode elseblock;
	public IfStatNode(BaseExprNode _conditionexpr,
					  BlockNode _ifblock,BlockNode _elseblock,
					  Position _pos){
		super(_pos);
		conditionexpr=_conditionexpr;
		ifblock=_ifblock;
		elseblock=_elseblock;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitIfStat(this);
	}
}
