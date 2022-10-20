package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class VoidTypeNode extends BaseTypeNode{
	public VoidTypeNode(Position _pos){
		super("void",0,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitVoidType(this);
	}
}