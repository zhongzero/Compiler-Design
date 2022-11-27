package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import Utils.Position;

import java.util.ArrayList;

public class ArrayTypeNode extends BaseTypeNode{
	public ArrayTypeNode(String _typename,int _dim,Position _pos){
		super(_typename,_dim,_pos);
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitArrayType(this);
	}
}