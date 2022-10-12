package FrontEnd.AST;

import Utils.Position;

abstract public class ASTBaseNode {
	public Position pos;
	public ASTBaseNode(Position _pos){
		pos=_pos;
	}
	abstract public void accept(ASTVisitor visitor);
}
