package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ArrayTypeNode extends BaseTypeNode{
	public ArrayTypeNode(String _typename,int _dim,Position _pos){
		super(_typename,_dim,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitArrayType(this);
	}
}