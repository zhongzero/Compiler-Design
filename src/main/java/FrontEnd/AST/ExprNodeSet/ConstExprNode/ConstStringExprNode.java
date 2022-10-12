package FrontEnd.AST.ExprNodeSet.ConstExprNode;

import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ConstStringExprNode extends BaseExprNode {
	public String value;
	public ConstStringExprNode(String _value, Position _pos){
		super(_pos);
		value= _value.substring(1,_value.length()-1)
				.replace("\\\\","\\")
				.replace("\\n","\n")
				.replace("\\\"","\"")
				+"0";
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitConstStringExpr(this);
	}
}
