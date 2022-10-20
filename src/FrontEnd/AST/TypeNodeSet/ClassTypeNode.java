package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import Utils.Position;

import java.util.ArrayList;

public class ClassTypeNode extends BaseTypeNode{
	public ClassTypeNode(String classname,Position _pos){
		super(classname,0,_pos);
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitClassType(this);
	}
}