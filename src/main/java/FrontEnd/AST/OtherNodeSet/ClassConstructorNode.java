package FrontEnd.AST.OtherNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

public class ClassConstructorNode extends ASTBaseNode {
	public String classname;
	public ParaListNode paralist;
	public BlockNode block;
	public ClassConstructorNode(String _classname, ParaListNode _paralist, BlockNode _block, Position _pos){
		super(_pos);
		classname=_classname;
		paralist=_paralist;
		block=_block;
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitClassConstructor(this);
	}

}
