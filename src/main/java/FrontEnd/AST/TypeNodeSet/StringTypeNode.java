package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class StringTypeNode extends BaseTypeNode{
	public StringTypeNode(Position _pos){
		super("string",0,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitStringType(this);
	}
}