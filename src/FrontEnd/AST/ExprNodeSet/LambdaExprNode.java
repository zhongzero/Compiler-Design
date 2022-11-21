package FrontEnd.AST.ExprNodeSet;

import FrontEnd.AST.StatNodeSet.BlockStatNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import Utils.Position;

public class LambdaExprNode extends BaseExprNode{
	public boolean haveAnd;
	public ParaListNode paralist;
	public BlockStatNode block;
	public ParaDataListNode paradatalist;
	public LambdaExprNode(boolean _haveAnd, ParaListNode _paralist,
						  BlockStatNode _block, ParaDataListNode _paradatalist,
						  Position _pos){
		super(_pos);
		haveAnd=_haveAnd;
		paralist=_paralist;
		block=_block;
		paradatalist=_paradatalist;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitLambdaExpr(this);
	}
}
