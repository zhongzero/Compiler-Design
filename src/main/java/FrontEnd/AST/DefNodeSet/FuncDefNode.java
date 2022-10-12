package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.OtherNodeSet.BlockNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import FrontEnd.AST.TypeNodeSet.BaseTypeNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;



public class FuncDefNode extends BaseDefNode {
	public BaseTypeNode returntype;
	public String funcname;
	public ParaListNode paralist;
	public BlockNode block;
	public boolean isvoid;
	public FuncDefNode(BaseTypeNode _returntype, String _funcname, ParaListNode _paralist, BlockNode _block, Position _pos){
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
