package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.StatNodeSet.BlockStatNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;
import Utils.Scope;


public class FuncDefNode extends BaseDefNode {
	public BaseTypeNode returntype;
	public String funcname;
	public ParaListNode paralist;
	public BlockStatNode block;
	public boolean isvoid;

	public FuncDefNode(BaseTypeNode _returntype, String _funcname, ParaListNode _paralist, BlockStatNode _block, Position _pos){
		super(_pos);
		returntype=_returntype;
		funcname=_funcname;
		paralist=_paralist;
		block=_block;
		isvoid=returntype.typename.equals("void");
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitFuncDef(this);
	}
}
