package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import FrontEnd.AST.StatNodeSet.BlockStatNode;
import Utils.Position;

import java.util.ArrayList;

public class StringTypeNode extends BaseTypeNode{
//	ArrayList<FuncDefNode> buildinfunc;
	public StringTypeNode(Position _pos){
		super("string",0,_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitStringType(this);
	}
}