package FrontEnd.AST.OtherNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import Utils.Position;

import java.util.ArrayList;

public class ParaListNode extends ASTBaseNode {
	public ArrayList<VarDefNode> paralist;//其中的 VarDefNode的initvalue 为 null
	public ParaListNode(ArrayList<VarDefNode> _paralist,Position _pos){
		super(_pos);
		paralist=_paralist;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitParaList(this);
	}
}
