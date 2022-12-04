package FrontEnd.AST.DefNodeSet;

import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

public class ClassDefNode extends BaseDefNode {
	public String classname;
	public LinkedHashMap<String,VarDefNode> varHashmap;
	public LinkedHashMap<String,FuncDefNode> funcHashmap;
	public ArrayList<ClassConstructorNode> classconstructorList;
	public ClassDefNode(String _classname,
						LinkedHashMap<String,VarDefNode> _varHashmap,
						LinkedHashMap<String,FuncDefNode> _funcHashmap,
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
