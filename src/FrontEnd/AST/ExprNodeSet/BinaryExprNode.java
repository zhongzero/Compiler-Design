package FrontEnd.AST.ExprNodeSet;

import Utils.Position;
import FrontEnd.AST.ASTVisitor;

public class BinaryExprNode extends BaseExprNode{
	public enum BinaryOp{
		ADD,SUB,MUL,DIV,MOD, //+,-,*,/,%
		LEFT_SHIFT,RIGHT_SHIFT, //<<,>>
		AND,OR,XOR, //&,|,^
		LOGIC_AND,LOGIC_OR, //&&,||
		LESS,LEQ,GREATER,GEQ,EQ,NEQ //<,<=,>,>=,==,!=
	}
	public BaseExprNode operand1,operand2;
	public BinaryOp op;
	public BinaryExprNode(BaseExprNode _operand1,BaseExprNode _operand2,BinaryOp _op,Position _pos){
		super(_pos);
		operand1=_operand1;
		operand2=_operand2;
		op=_op;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitBinaryExpr(this);
	}
}
