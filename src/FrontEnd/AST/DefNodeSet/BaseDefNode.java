package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BaseDefNode extends ASTBaseNode {
	public BaseDefNode(Position _pos){
		super(_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {return null;}
}
