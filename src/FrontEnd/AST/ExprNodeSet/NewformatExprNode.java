package FrontEnd.AST.ExprNodeSet;

import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;

public class NewformatExprNode extends BaseExprNode{
	public BaseTypeNode type;
	public int dim;
	public ArrayList<BaseExprNode> sizelist;
	public NewformatExprNode(BaseTypeNode _type,int _dim,ArrayList<BaseExprNode> _sizelist,Position _pos){
		super(_pos);
		type=_type;
		dim=_dim;
		sizelist=_sizelist;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitNewformatExpr(this);
	}
}
