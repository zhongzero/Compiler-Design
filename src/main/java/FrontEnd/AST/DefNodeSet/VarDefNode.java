package FrontEnd.AST.DefNodeSet;
import FrontEnd.AST.DefNodeSet.BaseDefNode;
import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class VarDefNode extends BaseDefNode {
	public BaseTypeNode vartype;
	public String varname;
	public BaseExprNode initvalue;

	public VarDefNode(BaseTypeNode _vartype, String _varname, BaseExprNode _initvalue, Position _pos){
		super(_pos);
		vartype=_vartype;
		varname=_varname;
		initvalue=_initvalue;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitVarDef(this);
	}
}
