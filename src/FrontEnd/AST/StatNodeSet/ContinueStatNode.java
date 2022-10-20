package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ContinueStatNode extends BaseStatNode{
	public ContinueStatNode(Position _pos){
		super(_pos);
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitContinueStat(this);
	}
}
