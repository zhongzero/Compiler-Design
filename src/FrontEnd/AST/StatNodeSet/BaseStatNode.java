package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BaseStatNode extends ASTBaseNode {
	public BaseStatNode(Position _pos){
		super(_pos);
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return null;
	}
}
