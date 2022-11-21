package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import Utils.Position;

import java.util.ArrayList;

public class VarDefStatNode extends BaseStatNode{
	public ArrayList<VarDefNode> vardeflist;
	public VarDefStatNode(ArrayList<VarDefNode> _vardeflist, Position _pos){
		super(_pos);
		vardeflist=_vardeflist;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitVarDefStat(this);
	}
}
