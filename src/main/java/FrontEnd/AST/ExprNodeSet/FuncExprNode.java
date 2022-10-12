package FrontEnd.AST.ExprNodeSet;



import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import Utils.Position;

import java.util.ArrayList;
import FrontEnd.AST.ASTVisitor;

public class FuncExprNode extends BaseExprNode{
	BaseExprNode funcname;
	ParaDataListNode paradatalist;
	public FuncExprNode(BaseExprNode _funcname,ParaDataListNode _paradatalist,Position _pos){
		super(_pos);
		funcname=_funcname;
		paradatalist=_paradatalist;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitFuncExpr(this);
	}
}
