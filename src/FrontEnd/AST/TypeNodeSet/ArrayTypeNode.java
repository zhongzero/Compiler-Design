package FrontEnd.AST.TypeNodeSet;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import Utils.Position;

import java.util.ArrayList;

public class ArrayTypeNode extends BaseTypeNode{
//	ArrayList<FuncDefNode> buildinfunc;
	public ArrayTypeNode(String _typename,int _dim,Position _pos){
		super(_typename,_dim,_pos);

//		//内建函数
//		//int size();
//		buildinfunc=new ArrayList<>();
//		{
//			ArrayList<VarDefNode> paralist = new ArrayList<>();
//			buildinfunc.add(new FuncDefNode(new IntTypeNode(null), "size", new ParaListNode(paralist,pos), null, null));
//		}
	}
	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitArrayType(this);
	}
}