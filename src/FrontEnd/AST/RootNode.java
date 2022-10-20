package FrontEnd.AST;

import FrontEnd.AST.DefNodeSet.BaseDefNode;
import Utils.Position;

import java.util.ArrayList;

public class RootNode extends ASTBaseNode {
	public ArrayList<BaseDefNode> deflist;
	public RootNode(ArrayList<BaseDefNode>  _deflist,Position _pos){
		super(_pos);
		deflist=_deflist;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitRoot(this);
	}
}
