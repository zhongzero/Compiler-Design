package FrontEnd.AST.ExprNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import Utils.Position;

public class BaseExprNode extends ASTBaseNode {
	public BaseTypeNode returntype=null;
	public boolean isleft;
	public BaseExprNode(Position _pos){
		super(_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return null;
	}
}
