package FrontEnd.AST.ExprNodeSet;



import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import Utils.Position;

import java.util.ArrayList;
import FrontEnd.AST.ASTVisitor;

public class FuncExprNode extends BaseExprNode{
	public BaseExprNode expr;
	public ParaDataListNode paradatalist;
	public FuncExprNode(BaseExprNode _expr,ParaDataListNode _paradatalist,Position _pos){
		super(_pos);
		expr=_expr;
		paradatalist=_paradatalist;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitFuncExpr(this);
	}
}
