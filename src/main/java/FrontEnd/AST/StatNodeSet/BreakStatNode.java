package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class BreakStatNode extends BaseStatNode{
	public BreakStatNode(Position _pos){
		super(_pos);
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitBreakStat(this);
	}
}
