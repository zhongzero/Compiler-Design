package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class NullTypeNode extends BaseTypeNode{
	public NullTypeNode(Position _pos){
		super("null",0,_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitNullType(this);
	}
}
