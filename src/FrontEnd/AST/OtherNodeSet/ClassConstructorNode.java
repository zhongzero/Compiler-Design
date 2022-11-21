package FrontEnd.AST.OtherNodeSet;

import FrontEnd.AST.ASTBaseNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.StatNodeSet.BlockStatNode;
import Utils.Position;

public class ClassConstructorNode extends ASTBaseNode {
	public String classname;
	public ParaListNode paralist;
	public BlockStatNode block;
	public ClassConstructorNode(String _classname, ParaListNode _paralist, BlockStatNode _block, Position _pos){
		super(_pos);
		classname=_classname;
		paralist=_paralist;
		block=_block;
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitClassConstructor(this);
	}

}
