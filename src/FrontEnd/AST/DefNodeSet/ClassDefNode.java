package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;
import java.util.HashMap;

public class ClassDefNode extends BaseDefNode {
	public String classname;
	public HashMap<String,VarDefNode> varHashmap;
	public HashMap<String,FuncDefNode> funcHashmap;
	public ArrayList<ClassConstructorNode> classconstructorList;
	public ClassDefNode(String _classname,
						HashMap<String,VarDefNode> _varHashmap,
						HashMap<String,FuncDefNode> _funcHashmap,
						ArrayList<ClassConstructorNode> _classconstructorList,
						Position _pos){
		super(_pos);
		classname=_classname;
		varHashmap=_varHashmap;
		funcHashmap=_funcHashmap;
		classconstructorList=_classconstructorList;
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visitClassDef(this);
	}
}
