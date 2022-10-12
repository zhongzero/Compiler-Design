package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;

public class BlockStatNode extends BaseStatNode {
	ArrayList<BaseStatNode> statlist;
	public BlockStatNode(ArrayList<BaseStatNode> _statlist, Position _pos){
		super(_pos);
		statlist=_statlist;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitBlock(this);
	}
}
