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
//		//内建函数
//		//int length();
//		//string substring(int left,int right);
//		//int parseInt();
//		//int ord(int pos);
//		buildinfunc=new ArrayList<>();
//		{
//			ArrayList<VarDefNode> paralist = new ArrayList<>();
//			buildinfunc.add(new FuncDefNode(new IntTypeNode(_pos), "length", new ParaListNode(paralist,null), null, null));
//		}
//		{
//			ArrayList<VarDefNode> paralist = new ArrayList<>();
//			paralist.add(new VarDefNode(new IntTypeNode(null),"left",null,null));
//			paralist.add(new VarDefNode(new IntTypeNode(null),"right",null,null));
//			buildinfunc.add(new FuncDefNode(new StringTypeNode(null), "substring", new ParaListNode(paralist,null), null, null));
//		}
//		{
//			ArrayList<VarDefNode> paralist = new ArrayList<>();
//			buildinfunc.add(new FuncDefNode(new IntTypeNode(null), "parseInt", new ParaListNode(paralist,null), null, null));
//		}
//		{
//			ArrayList<VarDefNode> paralist = new ArrayList<>();
//			paralist.add(new VarDefNode(new IntTypeNode(null),"pos",null,null));
//			buildinfunc.add(new FuncDefNode(new IntTypeNode(null), "ord", new ParaListNode(paralist,null), null, null));
//		}
	}
	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitStringType(this);
	}
}