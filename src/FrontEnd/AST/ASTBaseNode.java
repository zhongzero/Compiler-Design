package FrontEnd.AST;

import Utils.Position;

public abstract class ASTBaseNode {
	public Position pos;
	public ASTBaseNode(Position _pos){
		pos=_pos;
	}
	public abstract <T> T accept(ASTVisitor<T> visitor);
}
