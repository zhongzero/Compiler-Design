package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class ArrayExprNode extends BaseExprNode{
	public BaseExprNode arrayname;
	public BaseExprNode index;
	public ArrayExprNode(BaseExprNode _arrayname,BaseExprNode _index,Position _pos){
		super(_pos);
		arrayname=_arrayname;
		index=_index;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitArrayExpr(this);
	}
}
