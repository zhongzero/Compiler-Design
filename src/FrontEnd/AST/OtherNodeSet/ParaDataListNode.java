package FrontEnd.AST.OtherNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import Utils.Position;

import java.util.ArrayList;

public class ParaDataListNode extends ASTBaseNode {
	public ArrayList<BaseExprNode> paradatalist;//其中的 VarDefNode的initvalue 为 null
	public ParaDataListNode(ArrayList<BaseExprNode> _paradatalist, Position _pos){
		super(_pos);
		paradatalist=_paradatalist;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitParaDataList(this);
	}
}
