package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BoolTypeNode extends BaseTypeNode{
	public BoolTypeNode(Position _pos){
		super("bool",0,_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitBoolType(this);
	}
}