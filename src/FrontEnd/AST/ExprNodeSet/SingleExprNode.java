package FrontEnd.AST.ExprNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;


public class SingleExprNode extends BaseExprNode{
	public enum SingleOp{
		ADD,SUB, //+,-
		PREADD2,PRESUB2, //++x,--x
		LASADD2,LASSUB2, //x++,x--
		LOGICNOT,BITNOT //!,~
	}
	public BaseExprNode operand;
	public SingleOp op;
	public SingleExprNode(BaseExprNode _operand, SingleOp _op, Position _pos){
		super(_pos);
		operand = _operand;
		op = _op;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitSingleExpr(this);
	}
}
