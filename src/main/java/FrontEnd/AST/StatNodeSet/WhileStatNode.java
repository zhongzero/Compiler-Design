package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.OtherNodeSet.BlockNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;


public class WhileStatNode extends BaseStatNode{
	public BaseExprNode conditionexpr;
	public BlockNode block;
	public WhileStatNode(BaseExprNode _conditionexpr, BlockNode _block, Position _pos){
		super(_pos);
		conditionexpr=_conditionexpr;
		block=_block;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitWhileStat(this);
	}
}
