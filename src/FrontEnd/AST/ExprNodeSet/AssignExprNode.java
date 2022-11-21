package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class AssignExprNode extends BaseExprNode{

	public BaseExprNode operand1,operand2;
	public AssignExprNode(BaseExprNode _operand1, BaseExprNode _operand2, Position _pos){
		super(_pos);
		operand1=_operand1;
		operand2=_operand2;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitAssignExpr(this);
	}
}
