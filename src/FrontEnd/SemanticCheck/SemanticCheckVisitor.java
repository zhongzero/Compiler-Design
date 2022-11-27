package FrontEnd.SemanticCheck;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.ClassDefNode;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.ExprNodeSet.*;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstBoolExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstIntExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstStringExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.NullExprNode;
import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import FrontEnd.AST.RootNode;
import FrontEnd.AST.StatNodeSet.*;
import FrontEnd.AST.TypeNodeSet.*;
import FrontEnd.SemanticCheck.Utils.GlobalScope;
import FrontEnd.SemanticCheck.Utils.Scope;
import Utils.Error.SemanticError;

import java.util.*;

public class SemanticCheckVisitor extends ASTVisitor<Void> {
	public GlobalScope globalScope=new GlobalScope();
	Scope currentScope=new Scope(null);
	int loopNum=0;
	boolean inclass=false,infunc=false,inclassconstructor=false;
	public Void visitRoot(RootNode node){
		//在globalScope中添加内建函数
		//void print(string str);
		//void println(string str);
		//void printInt(int n);
		//void printlnInt(int n);
		//string getString();
		//int getInt();
		//string toString(int i);
		globalScope.function_table=new HashMap<>();
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			paralist.add(new VarDefNode(new StringTypeNode(null),"str",null,null));
			globalScope.function_table.put("print",new FuncDefNode(new VoidTypeNode(null),"print",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			paralist.add(new VarDefNode(new StringTypeNode(null),"str",null,null));
			globalScope.function_table.put("println",new FuncDefNode(new VoidTypeNode(null),"println",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			paralist.add(new VarDefNode(new IntTypeNode(null),"n",null,null));
			globalScope.function_table.put("printInt",new FuncDefNode(new VoidTypeNode(null),"printInt",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			paralist.add(new VarDefNode(new IntTypeNode(null),"n",null,null));
			globalScope.function_table.put("printlnInt",new FuncDefNode(new VoidTypeNode(null),"printlnInt",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			globalScope.function_table.put("getString",new FuncDefNode(new StringTypeNode(null),"getString",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			globalScope.function_table.put("getInt",new FuncDefNode(new IntTypeNode(null),"getInt",new ParaListNode(paralist,null),null,null));
		}
		{
			ArrayList<VarDefNode> paralist = new ArrayList<>();
			paralist.add(new VarDefNode(new IntTypeNode(null),"i",null,null));
			globalScope.function_table.put("toString",new FuncDefNode(new StringTypeNode(null),"toString",new ParaListNode(paralist,null),null,null));
		}

		//在globalScope中添加定义的函数
		for(int i=0;i<node.deflist.size();i++){
			if(node.deflist.get(i) instanceof FuncDefNode){
				FuncDefNode tmp=(FuncDefNode)node.deflist.get(i);
				if(globalScope.function_table.containsKey(tmp.funcname))throw new SemanticError("Semantic Error:define functions with same name",tmp.pos);
				globalScope.function_table.put(tmp.funcname,tmp);
			}
		}

		//在globalScope中添加定义的class（classfunc和classvar的重名情况 和 classConstructor名是否满足和类名相同判断,构造函数是否有歧义判断 在AST中提前完成）
		//并且class的var/func 的type已经确定(ASTBuilder中实现)
		for(int i=0;i<node.deflist.size();i++){
			if(node.deflist.get(i) instanceof ClassDefNode){
				ClassDefNode tmp=(ClassDefNode)node.deflist.get(i);
				if(globalScope.class_table.containsKey(tmp.classname))throw new SemanticError("Semantic Error:define classes with same name",tmp.pos);
				if(globalScope.function_table.containsKey(tmp.classname))throw new SemanticError("Semantic Error:define function and class with same name",tmp.pos);
				globalScope.class_table.put(tmp.classname,tmp);
			}
		}

		if( !globalScope.function_table.containsKey("main") )throw new SemanticError("Semantic Error:lack of main function",node.pos);
		FuncDefNode tmp=globalScope.function_table.get("main");
		if( !tmp.returntype.typename.equals("int") || tmp.returntype.dim!=0)throw new SemanticError("Semantic Error:wrong returntype of main function",tmp.pos);
		if( tmp.paralist.paralist.size()!=0 )throw new SemanticError("Semantic Error:non-empty parameterlist of main function",tmp.pos);

		//现在不做varDeclare(变量不支持前向引用forward reference)

		//DFS遍历整棵树
		for(int i=0;i<node.deflist.size();i++){
			visit(node.deflist.get(i));
		}
		return null;
	}

	public Void visitVarDef(VarDefNode node){
		if((node.vartype instanceof ClassTypeNode)&&
				!globalScope.class_table.containsKey(node.vartype.typename) ){
			throw new SemanticError("un-defined class name",node.pos);
		}
		if(node.initvalue!=null){
			visit(node.initvalue);
			if( !( ((node.initvalue.returntype instanceof NullTypeNode) && ((node.vartype instanceof ArrayTypeNode)||(node.vartype instanceof ClassTypeNode))) ||
					node.initvalue.returntype.IsEqual(node.vartype) ) )
				throw new SemanticError("declare a variable with a initvalue of wrong type",node.pos);
		}

		if(currentScope.variable_table.containsKey(node.varname))throw new SemanticError("declare variables with same name",node.pos);
		if(currentScope.parent==null){
			if(globalScope.class_table.containsKey(node.varname))throw new SemanticError("declare/define variable and class with same name",node.pos);
			//我觉得这个要求没什么意义
		}
		currentScope.variable_table.put(node.varname,node.vartype);
		return null;
	}
	public Void visitFuncDef(FuncDefNode node){
		currentScope=new Scope(currentScope);
		currentScope.returntype=node.returntype;
		infunc=true;
		if( (node.returntype instanceof ClassTypeNode)
				&& !globalScope.class_table.containsKey(node.returntype.typename) )
			throw new SemanticError("Semantic Error:return type of this function is not defined",node.pos);
		if(inclass&&currentScope.classtype.typename.equals(node.funcname))
			throw new SemanticError("Semantic Error:class function can't have the same name of the class",node.pos);
		visit(node.paralist);
		visit(node.block);
		infunc=false;
		currentScope=currentScope.parent;
		return null;
	}

	public Void visitClassDef(ClassDefNode node){
		currentScope=new Scope(currentScope);
		inclass=true;
		currentScope.classtype=new ClassTypeNode(node.classname,null);
		//遍历VarDefNode
		{
			Iterator<Map.Entry<String, VarDefNode>> iterator = node.varHashmap.entrySet().iterator();
			while (iterator.hasNext()) {
				Map.Entry<String, VarDefNode> entry = iterator.next();
				visit(entry.getValue());
			}
		}

		//遍历FuncDefNode
		{
			Iterator<Map.Entry<String, FuncDefNode>> iterator = node.funcHashmap.entrySet().iterator();
			while (iterator.hasNext()) {
				Map.Entry<String, FuncDefNode> entry = iterator.next();
				visit(entry.getValue());
			}
		}

		//遍历ClassConstructorNode
		{
			for(int i=0;i<node.classconstructorList.size();i++){
				visit(node.classconstructorList.get(i));
			}
		}
		inclass=false;
		currentScope=currentScope.parent;
		return null;
	}

	public Void visitClassConstructor(ClassConstructorNode node){
		currentScope=new Scope(currentScope);
		inclassconstructor=true;
		if(node.paralist!=null)visit(node.paralist);
		visit(node.block);
		inclassconstructor=false;
		currentScope=currentScope.parent;
		return null;
	}
	public Void visitParaList(ParaListNode node){
		for(int i=0;i<node.paralist.size();i++){
			visit(node.paralist.get(i));
		}
		return null;
	}
	public Void visitParaDataList(ParaDataListNode node){
		for(int i=0;i<node.paradatalist.size();i++){
			visit(node.paradatalist.get(i));
		}
		return null;
	}

	public Void visitBlockStat(BlockStatNode node){
		currentScope=new Scope(currentScope);
		for(int i=0;i<node.statlist.size();i++){
			visit(node.statlist.get(i));
		}
		currentScope=currentScope.parent;
		return null;
	}


	public Void visitIfStat(IfStatNode node){
		visit(node.conditionexpr);
		if( !(node.conditionexpr.returntype instanceof BoolTypeNode) ) throw new SemanticError("Semantic Error:condition of 'if' expr should be a boolean type",node.pos);
		visit(node.ifstat);
		visit(node.elsestat);
		return null;
	}
	public Void visitWhileStat(WhileStatNode node){
		visit(node.conditionexpr);
		if( !(node.conditionexpr.returntype instanceof BoolTypeNode) ) throw new SemanticError("Semantic Error:condition of 'while' expr should be a boolean type",node.pos);
		loopNum++;
		visit(node.whilestat);
		loopNum--;
		return null;
	}
	public Void visitForStat(ForStatNode node){
		currentScope=new Scope(currentScope);
		if(node.initdeflist!=null){
			for(int i=0;i<node.initdeflist.size();i++){
				visit(node.initdeflist.get(i));
			}
		}
		if(node.initexprlist!=null) {
			for (int i=0;i<node.initexprlist.size();i++) {
				visit(node.initexprlist.get(i));
			}
		}
		if(node.conditionexpr!=null) {
			visit(node.conditionexpr);
			if( !(node.conditionexpr.returntype instanceof BoolTypeNode) ) throw new SemanticError("Semantic Error:condition of 'for' expr should be a boolean type",node.pos);
		}
		if(node.updateexpr!=null)visit(node.updateexpr);
		loopNum++;
		visit(node.forstat);
		loopNum--;
		currentScope=currentScope.parent;
		return null;
	}
	public Void visitBreakStat(BreakStatNode node){
		if(loopNum==0)throw new SemanticError("Semantic Error:use 'break' outside the loop",node.pos);
		return null;
	}
	public Void visitContinueStat(ContinueStatNode node){
		if(loopNum==0)throw new SemanticError("Semantic Error:use 'continue' outside the loop",node.pos);
		return null;
	}
	public Void visitReturnStat(ReturnStatNode node){
		if( !infunc && !inclassconstructor )throw new SemanticError("Semantic Error:use 'return' outside the function",node.pos);
		if(inclassconstructor){
			if( !(node.returnexpr==null||(node.returnexpr.returntype instanceof VoidTypeNode) ) )
				throw new SemanticError("Semantic Error:can't return with anything in a class constructor",node.pos);
		}
		else {
			if(node.returnexpr==null) {
				if( !currentScope.returntype.IsEqual(new VoidTypeNode(null)))throw new SemanticError("Semantic Error:return type doesn't match",node.pos);
			}
			else {
				visit(node.returnexpr);
				if( !( currentScope.returntype.IsEqual(node.returnexpr.returntype)||
						(node.returnexpr.returntype instanceof NullTypeNode&&((currentScope.returntype instanceof ArrayTypeNode)||(currentScope.returntype instanceof ClassTypeNode)))
				) )throw new SemanticError("Semantic Error:return type doesn't match",node.pos);
			}
		}
		return null;
	}
	public Void visitVarDefStat(VarDefStatNode node){
		for(int i=0;i<node.vardeflist.size();i++){
			visit(node.vardeflist.get(i));
		}
		return null;
	}
	public Void visitExprStat(ExprStatNode node){
		visit(node.expr);
		return null;
	}


	public Void visitConstIntExpr(ConstIntExprNode node){
		node.returntype=new IntTypeNode(null);
		node.isleft=false;
		return null;
	}
	public Void visitConstBoolExpr(ConstBoolExprNode node){
		node.returntype=new BoolTypeNode(null);
		node.isleft=false;
		return null;
	}
	public Void visitConstStringExpr(ConstStringExprNode node){
		node.returntype=new StringTypeNode(null);
		node.isleft=false;
		return null;
	}
	public Void visitNullExpr(NullExprNode node){
		node.returntype=new NullTypeNode(null);
		node.isleft=false;
		return null;
	}
	public Void visitIdExpr(IdExprNode node){
		//变量和函数可能重名(让函数的情况直接在visitFuncExpr中解决，不会进入这里)
		if(!currentScope.variable_ContainKey_FromAll(node.identifier))throw new SemanticError("Semantic Error:can't find the declaration of this variable",node.pos);
		node.returntype=currentScope.variable_Get_FromAll(node.identifier);//类的赋值是指针指向同一个地址
		node.isleft=true;
		return null;
	}
	public Void visitThisExpr(ThisExprNode node){
		if(!inclass && (!infunc || !inclassconstructor) )throw new SemanticError("Semantic Error:‘this' can't be use in this scope",node.pos);
		node.returntype=currentScope.classtype;
		node.isleft=false;
		return null;
	}
	public Void visitFuncExpr(FuncExprNode node){
		visit(node.paradatalist);
		if(node.expr instanceof MemberExprNode){
			MemberExprNode membernode=(MemberExprNode)node.expr;
			visit(membernode.expr);
			BaseTypeNode classtype=membernode.expr.returntype;
			if(classtype instanceof ArrayTypeNode){
				if(membernode.member.equals("size")){
					boolean flag=true;
					if(node.paradatalist.paradatalist.size()!=0)flag=false;
					if(!flag)throw new SemanticError("Semantic Error:wrong match of the paralist of (array type).size()",node.pos);
					node.returntype=new IntTypeNode(null);
					node.isleft=false;
				}
				else throw new SemanticError("Semantic Error: variable of array type doesn't have this function member",node.pos);
			}
			else if(classtype instanceof IntTypeNode)throw new SemanticError("Semantic Error:variable of type 'int' doesn't have func member",node.pos);
			else if(classtype instanceof BoolTypeNode)throw new SemanticError("Semantic Error:variable of type 'bool' doesn't have func member",node.pos);
			else if(classtype instanceof NullTypeNode)throw new SemanticError("Semantic Error:variable of type 'null' doesn't have func member",node.pos);
			else if(classtype instanceof StringTypeNode){
				if(membernode.member.equals("length")){
					boolean flag=true;
					if(node.paradatalist.paradatalist.size()!=0)flag=false;
					if(!flag)throw new SemanticError("Semantic Error:wrong match of the paralist of (string type).length()",node.pos);
					node.returntype=new IntTypeNode(null);
					node.isleft=false;
				}
				else if(membernode.member.equals("substring")){
					boolean flag=true;
					if(node.paradatalist.paradatalist.size()!=2)flag=false;
					visit(node.paradatalist.paradatalist.get(0));
					visit(node.paradatalist.paradatalist.get(1));
					if( !(node.paradatalist.paradatalist.get(0).returntype instanceof IntTypeNode) )flag=false;
					if( !(node.paradatalist.paradatalist.get(1).returntype instanceof IntTypeNode) )flag=false;
					if(!flag)throw new SemanticError("Semantic Error:wrong match of the paralist of (string type).substring(int,int)",node.pos);
					node.returntype=new StringTypeNode(null);
					node.isleft=false;
				}
				else if(membernode.member.equals("parseInt")){
					boolean flag=true;
					if(node.paradatalist.paradatalist.size()!=0)flag=false;
					if(!flag)throw new SemanticError("Semantic Error:wrong match of the paralist of (string type).parseInt()",node.pos);
					node.returntype=new IntTypeNode(null);
					node.isleft=false;
				}
				else if(membernode.member.equals("ord")){
					boolean flag=true;
					if(node.paradatalist.paradatalist.size()!=1)flag=false;
					visit(node.paradatalist.paradatalist.get(0));
					if( !(node.paradatalist.paradatalist.get(0).returntype instanceof IntTypeNode) )flag=false;
					if(!flag)throw new SemanticError("Semantic Error:wrong match of the paralist of (string type).ord(int)",node.pos);
					node.returntype=new IntTypeNode(null);
					node.isleft=false;
				}
				else throw new SemanticError("Semantic Error: variable of type 'string' doesn't have this function member",node.pos);
			}
			else {
				//membernode.expr.returntype instanceof ClassTypeNode
				String classtypename=membernode.expr.returntype.typename;
				ClassDefNode classdefnode=globalScope.class_table.get(classtypename);
				if( !classdefnode.funcHashmap.containsKey(membernode.member) )throw new SemanticError("Semantic Error:this function declaration doesn't exist in the class",membernode.pos);
				FuncDefNode funcdefnode=classdefnode.funcHashmap.get(membernode.member);
				int size=funcdefnode.paralist.paralist.size();
				if(node.paradatalist.paradatalist.size()!=size)throw new SemanticError("Semantic Error:wrong match of the paralist of class function",node.pos);
				for(int i=0;i<size;i++){
					BaseTypeNode tmp1=funcdefnode.paralist.paralist.get(i).vartype;
					BaseTypeNode tmp2=node.paradatalist.paradatalist.get(i).returntype;
					if( !( tmp1.IsEqual(tmp2) || ( ((tmp1 instanceof ClassTypeNode)||(tmp1 instanceof ArrayTypeNode)) && (tmp2 instanceof NullTypeNode)) ) )
						throw new SemanticError("Semantic Error:wrong match of the paralist of class function",node.pos);
				}
				node.returntype=funcdefnode.returntype;
				node.isleft=false;
			}
		}
		else if(node.expr instanceof IdExprNode){
			String expr=((IdExprNode)node.expr).identifier;
			FuncDefNode funcdefnode;
			if(inclass){
				ClassDefNode classdefnode=globalScope.class_table.get(currentScope.classtype.typename);
				if(classdefnode.funcHashmap.containsKey(expr))funcdefnode=classdefnode.funcHashmap.get(expr);
				else if(globalScope.function_table.containsKey(expr))funcdefnode=globalScope.function_table.get(expr);
				else throw new SemanticError("Semantic Error:this function doesn't exist",node.pos);
			}
			else {
				if(globalScope.function_table.containsKey(expr))funcdefnode=globalScope.function_table.get(expr);
				else throw new SemanticError("Semantic Error:this function doesn't exist",node.pos);
			}
			int size=funcdefnode.paralist.paralist.size();
			if(node.paradatalist.paradatalist.size()!=size)throw new SemanticError("Semantic Error:wrong match of the paralist of function",node.pos);
			for(int i=0;i<size;i++){
				BaseTypeNode tmp1=funcdefnode.paralist.paralist.get(i).vartype;
				BaseTypeNode tmp2=node.paradatalist.paradatalist.get(i).returntype;
				if( !( tmp1.IsEqual(tmp2) || ( ((tmp1 instanceof ClassTypeNode)||(tmp1 instanceof ArrayTypeNode)) && (tmp2 instanceof NullTypeNode)) ) )
					throw new SemanticError("Semantic Error:wrong match of the paralist of function",node.pos);
			}
			node.returntype=funcdefnode.returntype;
			node.isleft=false;
		}
		else throw new SemanticError("Semantic Error:expr can't call function",node.pos);
		return null;
	}
	public Void visitMemberExpr(MemberExprNode node){
		//这里只做var类型的member，func类型的member在FuncExprNode中完成
		visit(node.expr);
		BaseTypeNode classtype=node.expr.returntype;
		if(classtype instanceof ArrayTypeNode)throw new SemanticError("Semantic Error:variable of array type doesn't have variable member",node.pos);
		else if(classtype instanceof IntTypeNode)throw new SemanticError("Semantic Error:variable of type 'int' doesn't have variable member",node.pos);
		else if(classtype instanceof BoolTypeNode)throw new SemanticError("Semantic Error:variable of type 'bool' doesn't have variable member",node.pos);
		else if(classtype instanceof NullTypeNode)throw new SemanticError("Semantic Error:variable of type 'null' doesn't have variable member",node.pos);
		else if(classtype instanceof StringTypeNode)throw new SemanticError("Semantic Error:variable of type 'string' doesn't have variable member",node.pos);
		else {
			//node.expr.returntype instanceof ClassTypeNode
			String classtypename=node.expr.returntype.typename;
			ClassDefNode classdefnode=globalScope.class_table.get(classtypename);
			if( !classdefnode.varHashmap.containsKey(node.member) )throw new SemanticError("Semantic Error:this variable declaration doesn't exist in the class",node.pos);
			node.returntype=classdefnode.varHashmap.get(node.member).vartype;
			node.isleft=true;
		}
		return null;
	}
	public Void visitArrayExpr(ArrayExprNode node){
		visit(node.arrayname);
		visit(node.index);
		if( !(node.arrayname.returntype instanceof ArrayTypeNode) )throw new SemanticError("Semantic Error:Wrong array usage",node.pos);
		if( !(node.index.returntype instanceof IntTypeNode) )throw new SemanticError("Semantic Error:array index should be a 'int' type",node.pos);
		if(node.arrayname.returntype.dim==1){
			if(node.arrayname.returntype.typename.equals("int"))node.returntype=new IntTypeNode(null);
			else if(node.arrayname.returntype.typename.equals("bool"))node.returntype=new BoolTypeNode(null);
			else if(node.arrayname.returntype.typename.equals("string"))node.returntype=new StringTypeNode(null);
			else node.returntype=new ClassTypeNode(node.arrayname.returntype.typename,null);
		}
		else {
			node.returntype=new ArrayTypeNode(node.arrayname.returntype.typename,node.arrayname.returntype.dim-1,null);
		}
		node.isleft=true;
		return null;
	}
	public Void visitNewformatExpr(NewformatExprNode node){
		for(int i=0;i<node.sizelist.size();i++){
			visit(node.sizelist.get(i));
			if( !(node.sizelist.get(i).returntype instanceof IntTypeNode) )throw new SemanticError("Semantic Error:array index should be a 'int' type",node.pos);
		}
		if(node.type instanceof ClassTypeNode){
			if(!globalScope.class_table.containsKey(node.type.typename))throw new SemanticError("Semantic Error:this class is not defined",node.pos);
		}
		if(node.dim==0)node.returntype=node.type;
		else node.returntype=new ArrayTypeNode(node.type.typename,node.dim,null);
		node.isleft=false;
		return null;
	}
	public Void visitSingleExpr(SingleExprNode node){
		visit(node.operand);
		if(node.op==SingleExprNode.SingleOp.ADD){ // +
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '+' should be used as + 'int' ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op==SingleExprNode.SingleOp.SUB){ // -
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '-' should be used as - 'int' ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op==SingleExprNode.SingleOp.PREADD2){ // ++x
			if(!node.operand.isleft)throw new SemanticError("Semantic Error: single operator pre '++' can't be used by a non-leftvalue variable",node.pos);
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '++' should be used as ++ 'int' ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=true;
		}
		if(node.op==SingleExprNode.SingleOp.PRESUB2){ // --x
			if(!node.operand.isleft)throw new SemanticError("Semantic Error: single operator pre '--' can't be used by a non-leftvalue variable",node.pos);
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '--' should be used as -- 'int' ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=true;
		}
		if(node.op==SingleExprNode.SingleOp.LASADD2){ // x++
			if(!node.operand.isleft)throw new SemanticError("Semantic Error: single operator after '++' can't be used by a non-leftvalue variable",node.pos);
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator after '++' should be used as 'int' ++ ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op==SingleExprNode.SingleOp.LASSUB2){ // x--
			if(!node.operand.isleft)throw new SemanticError("Semantic Error: single operator after '--' can't be used by a non-leftvalue variable",node.pos);
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator after '--' should be used as 'int' -- ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op==SingleExprNode.SingleOp.LOGICNOT){ // !
			if( !(node.operand.returntype instanceof BoolTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '!' should be used as ! 'bool' ",node.pos);
			node.returntype=new BoolTypeNode(null);
			node.isleft=false;
		}
		if(node.op==SingleExprNode.SingleOp.BITNOT){ // ~
			if( !(node.operand.returntype instanceof IntTypeNode) )
				throw new SemanticError("Semantic Error: single operator pre '~' should be used as ~ 'int' ",node.pos);
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		return null;
	}
	public Void visitBinaryExpr(BinaryExprNode node){
		visit(node.operand1);
		visit(node.operand2);
		if(node.op== BinaryExprNode.BinaryOp.ADD){ // +
			if( !( ((node.operand1.returntype instanceof IntTypeNode) && (node.operand2.returntype instanceof IntTypeNode))
					|| ((node.operand1.returntype instanceof StringTypeNode) && (node.operand2.returntype instanceof StringTypeNode)) ) ){
				throw new SemanticError("Semantic Error: binary operator '+' should be used as 'int' + 'int' or 'string' + 'string' ",node.pos);
			}
			node.returntype=node.operand1.returntype;
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.SUB
				||node.op== BinaryExprNode.BinaryOp.MUL||node.op== BinaryExprNode.BinaryOp.DIV
				||node.op== BinaryExprNode.BinaryOp.MOD){ // -,*,/,%
			if( ! ( (node.operand1.returntype instanceof IntTypeNode) && (node.operand2.returntype instanceof IntTypeNode) ) ){
				if(node.op== BinaryExprNode.BinaryOp.SUB)throw new SemanticError("Semantic Error: binary operator '-' should be used as 'int' - 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.MUL)throw new SemanticError("Semantic Error: binary operator '*' should be used as 'int' * 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.DIV)throw new SemanticError("Semantic Error: binary operator '/' should be used as 'int' / 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.MOD)throw new SemanticError("Semantic Error: binary operator '%' should be used as 'int' % 'int' ",node.pos);
			}
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.LEFT_SHIFT||node.op== BinaryExprNode.BinaryOp.RIGHT_SHIFT){ // <<,>>
			if( ! ( (node.operand1.returntype instanceof IntTypeNode) && (node.operand2.returntype instanceof IntTypeNode) ) ){
				if(node.op== BinaryExprNode.BinaryOp.LEFT_SHIFT)throw new SemanticError("Semantic Error: binary operator '<<' should be used as 'int' << 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.RIGHT_SHIFT)throw new SemanticError("Semantic Error: binary operator '>>' should be used as 'int' >> 'int' ",node.pos);
			}
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.AND||node.op== BinaryExprNode.BinaryOp.OR
				||node.op== BinaryExprNode.BinaryOp.XOR){ // &,|,^
			if( ! ( (node.operand1.returntype instanceof IntTypeNode) && (node.operand2.returntype instanceof IntTypeNode) ) ){
				if(node.op== BinaryExprNode.BinaryOp.AND)throw new SemanticError("Semantic Error: binary operator '&' should be used as 'int' & 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.OR)throw new SemanticError("Semantic Error: binary operator '|' should be used as 'int' | 'int' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.XOR)throw new SemanticError("Semantic Error: binary operator '^' should be used as 'int' ^ 'int' ",node.pos);
			}
			node.returntype=new IntTypeNode(null);
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.LOGIC_AND||node.op== BinaryExprNode.BinaryOp.LOGIC_OR){ // &&,||
			if( ! ( (node.operand1.returntype instanceof BoolTypeNode) && (node.operand2.returntype instanceof BoolTypeNode) ) ){
				if(node.op== BinaryExprNode.BinaryOp.LOGIC_AND)throw new SemanticError("Semantic Error: binary operator '&&' should be used as 'bool' && 'bool' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.LOGIC_OR)throw new SemanticError("Semantic Error: binary operator '||' should be used as 'bool' || 'bool' ",node.pos);
			}
			node.returntype=new BoolTypeNode(null);
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.LESS||node.op== BinaryExprNode.BinaryOp.LEQ
				||node.op== BinaryExprNode.BinaryOp.GREATER||node.op== BinaryExprNode.BinaryOp.GEQ){ // <,<=,>,>=
			if( !( ((node.operand1.returntype instanceof IntTypeNode) && (node.operand2.returntype instanceof IntTypeNode))
					|| ((node.operand1.returntype instanceof StringTypeNode) && (node.operand2.returntype instanceof StringTypeNode)) ) ){
				if(node.op== BinaryExprNode.BinaryOp.LESS)throw new SemanticError("Semantic Error: binary operator '<' should be used as 'int' < 'int' or 'string' < 'string' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.LEQ)throw new SemanticError("Semantic Error: binary operator '<=' should be used as 'int' <= 'int' or 'string' <= 'string' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.GREATER)throw new SemanticError("Semantic Error: binary operator '>' should be used as 'int' > 'int' or 'string' > 'string' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.GEQ)throw new SemanticError("Semantic Error: binary operator '>=' should be used as 'int' >= 'int' or 'string' >= 'string' ",node.pos);
			}
			node.returntype=new BoolTypeNode(null);
			node.isleft=false;
		}
		if(node.op== BinaryExprNode.BinaryOp.EQ||node.op== BinaryExprNode.BinaryOp.NEQ){ // ==,!=
			if( (node.operand1.returntype instanceof VoidTypeNode) || (node.operand2.returntype instanceof VoidTypeNode) )
				throw new SemanticError("Semantic Error: can't execute binary operator with void type",node.pos);
			if(node.operand1.returntype instanceof NullTypeNode){
				if( !(node.operand2.returntype instanceof ClassTypeNode)
						&& !(node.operand2.returntype instanceof ArrayTypeNode)
						&& !(node.operand2.returntype instanceof NullTypeNode)){
					if(node.op== BinaryExprNode.BinaryOp.EQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '==' ",node.pos);
					if(node.op== BinaryExprNode.BinaryOp.NEQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '!=' ",node.pos);
				}
			}
			else if(node.operand2.returntype instanceof NullTypeNode){
				if( !(node.operand1.returntype instanceof ClassTypeNode)
						&& !(node.operand1.returntype instanceof ArrayTypeNode)){
					if(node.op== BinaryExprNode.BinaryOp.EQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '==' ",node.pos);
					if(node.op== BinaryExprNode.BinaryOp.NEQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '!=' ",node.pos);
				}
			}
			else if( ! ( node.operand1.returntype.IsEqual(node.operand2.returntype) && !(node.operand1.returntype instanceof ArrayTypeNode) ) ){
				if(node.op== BinaryExprNode.BinaryOp.EQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '==' ",node.pos);
				if(node.op== BinaryExprNode.BinaryOp.NEQ)throw new SemanticError("Semantic Error: wrong usage of binary operator '!=' ",node.pos);
			}
			node.returntype=new BoolTypeNode(null);
			node.isleft=false;
		}
		return null;
	}
	public Void visitAssignExpr(AssignExprNode node){
		visit(node.operand1);
		visit(node.operand2);
		if( (node.operand1.returntype instanceof VoidTypeNode) || (node.operand2.returntype instanceof VoidTypeNode) )
			throw new SemanticError("Semantic Error: can't assign with void type",node.pos);
		if(!node.operand1.isleft)throw new SemanticError("Semantic Error: can't assign to a non-leftvalue type",node.pos);
		if( ! ( ((node.operand2.returntype instanceof NullTypeNode) && ((node.operand1.returntype instanceof ArrayTypeNode)||(node.operand1.returntype instanceof ClassTypeNode)) )
				|| node.operand1.returntype.IsEqual(node.operand2.returntype) ) ){
			throw new SemanticError("Semantic Error: wrong usage of assignment '=' ",node.pos);
		}
		node.returntype=node.operand1.returntype;
		node.isleft=true;
		return null;
	}
	public Void visitLambdaExpr(LambdaExprNode node){
		node.isleft=false;

		Scope tmpScope = null;
		if(node.haveAnd){
			currentScope=new Scope(currentScope);
		}
		else {
			tmpScope=currentScope;
			currentScope=new Scope(null);
		}

		visit(node.paralist);
		visit(node.paradatalist);

		int size=node.paralist.paralist.size();
		if(node.paradatalist.paradatalist.size()!=size)throw new SemanticError("Semantic Error:wrong match of the paralist of Lambda expression",node.pos);
		for(int i=0;i<size;i++){
			BaseTypeNode tmp1=node.paralist.paralist.get(i).vartype;
			BaseTypeNode tmp2=node.paradatalist.paradatalist.get(i).returntype;
			if( !( tmp1.IsEqual(tmp2) || ( ((tmp1 instanceof ClassTypeNode)||(tmp1 instanceof ArrayTypeNode)) && (tmp2 instanceof NullTypeNode)) ) )
				throw new SemanticError("Semantic Error:wrong match of the paralist of class function",node.pos);
		}

		for(int i=0;i<node.block.statlist.size();i++){
			BaseStatNode stat=node.block.statlist.get(i);
			if(stat instanceof ReturnStatNode){
				visit( ((ReturnStatNode)stat).returnexpr );
//				node.returntype=((ReturnStatNode)stat).returnexpr.returntype;
				if(node.returntype==null)node.returntype=((ReturnStatNode)stat).returnexpr.returntype;
				else {
					if(!node.returntype.IsEqual(((ReturnStatNode)stat).returnexpr.returntype))throw new SemanticError("Semantic Error:different return type of Lambda expression",node.pos);
				}
			}
			else {
				visit(stat);
			}
		}
		if(node.returntype==null)node.returntype=new VoidTypeNode(null);
		node.isleft=false;
		if(node.haveAnd){
			currentScope=currentScope.parent;
		}
		else {
			currentScope=tmpScope;
		}
		return null;
	}

	public Void visitIntType(IntTypeNode node){return null;}
	public Void visitBoolType(BoolTypeNode node){return null;}
	public Void visitStringType(StringTypeNode node){return null;}
	public Void visitNullType(NullTypeNode node){return null;}
	public Void visitClassType(ClassTypeNode node){return null;}
	public Void visitArrayType(ArrayTypeNode node){return null;}
	public Void visitVoidType(VoidTypeNode node){return null;}
}
