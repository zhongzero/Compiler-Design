package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BreakStatNode extends BaseStatNode{
	public BreakStatNode(Position _pos){
		super(_pos);
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitBreakStat(this);
	}
}
