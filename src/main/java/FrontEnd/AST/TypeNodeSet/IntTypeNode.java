package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class IntTypeNode extends BaseTypeNode{
	public IntTypeNode(Position _pos){
		super("int",0,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitIntType(this);
	}
}