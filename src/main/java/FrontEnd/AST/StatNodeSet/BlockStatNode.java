package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;
import Utils.Scope;

import java.util.ArrayList;

public class BlockStatNode extends BaseStatNode {
	public ArrayList<BaseStatNode> statlist;
	public BlockStatNode(ArrayList<BaseStatNode> _statlist, Position _pos){
		super(_pos);
		statlist=_statlist;
	}
	public BlockStatNode(BaseStatNode stat){
		super(stat==null?null:stat.pos);
		if(stat==null){
			statlist=new ArrayList<>();
		}
		else if(stat instanceof BlockStatNode){
			statlist=((BlockStatNode) stat).statlist;
		}
		else {
			statlist=new ArrayList<>();
			statlist.add(stat);
		}
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitBlockStat(this);
	}
}
