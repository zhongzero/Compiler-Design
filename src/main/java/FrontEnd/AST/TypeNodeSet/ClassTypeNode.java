package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ClassTypeNode extends BaseTypeNode{
	public ClassTypeNode(String classname,Position _pos){
		super(classname,0,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitClassType(this);
	}
}