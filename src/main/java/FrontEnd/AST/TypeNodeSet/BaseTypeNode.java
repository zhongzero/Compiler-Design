package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BaseTypeNode extends ASTBaseNode{
	public String typename;
	public int dim;

	public BaseTypeNode(String _typename,int _dim,Position _pos){
		super(_pos);
		typename=_typename;
		dim=_dim;
	}

	public boolean IsEqual(BaseTypeNode other){
		return typename.equals(other.typename)&&dim==other.dim;
	}


	@Override
	public void accept(ASTVisitor visitor) {}
}
