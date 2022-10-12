package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;
import Utils.Scope;

import java.util.ArrayList;

public class ClassDefNode extends BaseDefNode {
	public String classname;
	public ArrayList<VarDefNode> varlist;
	public ArrayList<FuncDefNode> funclist;
	public ArrayList<ClassConstructorNode> classconstructorlist;
	public Scope classscope;
	public ClassDefNode(String _classname,
						ArrayList<VarDefNode> _varlist,
						ArrayList<FuncDefNode> _funclist,
						ArrayList<ClassConstructorNode> _classconstructorlist,
						Position _pos){
		super(_pos);
		classname=_classname;
		varlist=_varlist;
		funclist=_funclist;
		classconstructorlist=_classconstructorlist;
		classscope=new Scope(null);
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitClassDef(this);
	}
}
