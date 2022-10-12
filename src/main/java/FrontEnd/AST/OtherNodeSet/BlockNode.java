package FrontEnd.AST.OtherNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.StatNodeSet.BaseStatNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;

public class BlockNode extends ASTBaseNode {
	ArrayList<BaseStatNode> statlist;
	public BlockNode(ArrayList<BaseStatNode> _statlist,Position _pos){
		super(_pos);
		statlist=_statlist;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitBlock(this);
	}
}
