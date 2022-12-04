package FrontEnd.IR;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.DefNodeSet.BaseDefNode;
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
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Const.*;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.Instruction.*;
import FrontEnd.IR.Module.IRModule;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.OperandType.*;
import FrontEnd.IR.Utils.IRScope;
import FrontEnd.SemanticCheck.Utils.GlobalScope;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class IRBuilder extends ASTVisitor<Void> {
	public IRModule irModule=new IRModule();

	IRFunction currentFunction=null;
	IRBasicBlock currentBlock=null;

	IRScope irCurrentScope=new IRScope(null);

	GlobalScope semanticGlobalScope;

	ArrayList<VarDefNode> globalVarInitList=new ArrayList<>();

	boolean isInClass=false;
	String currentclassname;

	String currentfunctionname;

	Stack<IRBasicBlock> continueStack=new Stack<>();
	Stack<IRBasicBlock> breakStack=new Stack<>();

	Stack<Boolean> needAddr=new Stack<>();
	//needAddr.peek()==true : addr
	//needAddr.peek()==false : value



	public IRBuilder(GlobalScope _semanticGlobalScope){
		semanticGlobalScope=_semanticGlobalScope;
		needAddr.push(false);
	}
	@Override
	public Void visitRoot(RootNode node){
		//class def
		for (HashMap.Entry<String,ClassDefNode> entry: semanticGlobalScope.class_table.entrySet()) {
			ClassDefNode tmpclass = entry.getValue();
			irModule.structHashMap.put(tmpclass.classname, new StructType(tmpclass.classname));
		}
		for (HashMap.Entry<String,ClassDefNode> entry: semanticGlobalScope.class_table.entrySet()) {
			ClassDefNode tmpclass=entry.getValue();
			StructType structType=irModule.structHashMap.get(tmpclass.classname);
			for (HashMap.Entry<String,VarDefNode> entry2: tmpclass.varHashmap.entrySet()) {
				VarDefNode tmp2=entry2.getValue();
				BaseType type=transType(tmp2.vartype);
				structType.addMember(type);
			}

		}

		//some builtin function is contained in semanticGlobalScope.function_table
		//void print(string str);		//string->i8*
		//void println(string str);		//string->i8*
		//void printInt(int n);			//int->i32
		//void printlnInt(int n);		//int->i32
		//string getString();			//string->i8*
		//int getInt();					//int->i32
		//string toString(int i);		//int->i32
		IRFunction tmpfunc;
		ArrayList<Value> tmppara;
		ArrayList<BaseType> tmpparatype;
		for (HashMap.Entry<String,FuncDefNode> entry: semanticGlobalScope.function_table.entrySet()) {
			FuncDefNode tmp=entry.getValue();
			tmppara=new ArrayList<>();
			tmpparatype=new ArrayList<>();
			for(int i=0;i<tmp.paralist.paralist.size();i++){
				VarDefNode tmp2=tmp.paralist.paralist.get(i);
				tmppara.add(new Value(tmp2.varname,transType(tmp2.vartype)));
			}
			for(int i=0;i<tmppara.size();i++){
				tmpparatype.add(tmppara.get(i).type);
			}
			tmpfunc=new IRFunction("f_"+tmp.funcname,new FunctionType(transType(tmp.returntype),tmpparatype),tmppara,tmp.block==null);
			irModule.funcHashMap.put("f_"+tmp.funcname,tmpfunc);
		}

		//function declare for string compare
		//bool _stringcmp_eq(string str1,string str2)			//string->i8*,bool->i1
		//bool _stringcmp_neq(string str1,string str2)			//string->i8*,bool->i1
		//bool _stringcmp_less(string str1,string str2)			//string->i8*,bool->i1
		//bool _stringcmp_greater(string str1,string str2)		//string->i8*,bool->i1
		//bool _stringcmp_leq(string str1,string str2)			//string->i8*,bool->i1
		//bool _stringcmp_geq(string str1,string str2)			//string->i8*,bool->i1
		//string _string_merge(string str1,string str2)			//string->i8*
		generate_stringcmp("_stringcmp_eq");
		generate_stringcmp("_stringcmp_neq");
		generate_stringcmp("_stringcmp_less");
		generate_stringcmp("_stringcmp_greater");
		generate_stringcmp("_stringcmp_leq");
		generate_stringcmp("_stringcmp_geq");
		generate_stringmerge("_string_merge");

//		declare i8* @_heap_malloc(i32 %n)         ;return an addr pointed to the beginning memory,and addr-1 stored the bytesize of the memory(namely n)
		generate_heap_malloc("_heap_malloc");

		//some builtin function for and string
		//int _string_length(string* str)							//string->i8*,int->i32
		//string _string_substring(string* str,int* l,int* r)		//string->i8*,int->i32
		//int _string_parseInt(string* str)				//string->i8*,int->i32
		//int _string_ord(string* str,int* ord)						//string->i8*,int->i32

		generate_string_length("_string_length");
		generate_string_substring("_string_substring");
		generate_string_parseInt("_string_parseInt");
		generate_string_ord("_string_ord");


		//creat void _main_initial()
		tmpfunc=new IRFunction("_main_initial",new FunctionType(new VoidType(),new ArrayList<>()),new ArrayList<>(),false);
		irModule.funcHashMap.put("_main_initial",tmpfunc);


		//class function def
		for (HashMap.Entry<String,ClassDefNode> entry: semanticGlobalScope.class_table.entrySet()) {
			ClassDefNode tmpclass = entry.getValue();
			BaseType structtype=irModule.structHashMap.get(tmpclass.classname);
			for (Map.Entry<String, FuncDefNode> entry2: tmpclass.funcHashmap.entrySet()) {
				FuncDefNode tmp=entry2.getValue();
				tmppara=new ArrayList<>();
				tmpparatype=new ArrayList<>();
				tmppara.add(new Value("this",new PointerType(new PointerType(structtype))));
				for(int i=0;i<tmp.paralist.paralist.size();i++){
					VarDefNode tmp2=tmp.paralist.paralist.get(i);
					tmppara.add(new Value(tmp2.varname,transType(tmp2.vartype)));
				}
				for(int i=0;i<tmppara.size();i++){
					tmpparatype.add(tmppara.get(i).type);
				}
				tmpfunc=new IRFunction("class_f_"+tmpclass.classname+"."+tmp.funcname,new FunctionType(transType(tmp.returntype),tmpparatype),tmppara,tmp.block==null);
				irModule.funcHashMap.put("class_f_"+tmpclass.classname+"."+tmp.funcname,tmpfunc);
			}
		}

		//class constructor def
		//class constructor with parameter is not supported in this compiler
		for (HashMap.Entry<String,ClassDefNode> entry: semanticGlobalScope.class_table.entrySet()) {
			ClassDefNode tmpclass = entry.getValue();
			tmppara=new ArrayList<>();
			tmpparatype=new ArrayList<>();
			BaseType structtype=irModule.structHashMap.get(tmpclass.classname);
			tmppara.add(new Value("this",new PointerType(new PointerType(structtype))));
			for(int i=0;i<tmppara.size();i++){
				tmpparatype.add(tmppara.get(i).type);
			}
			tmpfunc=new IRFunction("class_constructor_"+tmpclass.classname+"."+ tmpclass.classname,new FunctionType(new VoidType(),tmpparatype),tmppara,false);
			irModule.funcHashMap.put("class_constructor_"+tmpclass.classname+"."+ tmpclass.classname,tmpfunc);
		}


		//遍历整棵树
		for(int i=0;i<node.deflist.size();i++){
			BaseDefNode tmp=node.deflist.get(i);
			if(tmp instanceof FuncDefNode) currentfunctionname="f_"+((FuncDefNode) tmp).funcname;
			visit(node.deflist.get(i));
			if(tmp instanceof FuncDefNode) currentfunctionname=null;
		}

		//function void _main_initial() for assigning initial value to global variable
		generate_main_initial();

		assert !needAddr.empty();

		return null;
	}

	@Override
	public Void visitVarDef(VarDefNode node){
		//global Variable
		if(irCurrentScope.parent==null){
			GlobalVarDef tmp=new GlobalVarDef(node.varname,transType(node.vartype));
			irModule.globalVarList.add(tmp);
			irCurrentScope.varHashMap.put(node.varname,tmp);
			if(node.initvalue!=null || (node.vartype instanceof ClassTypeNode)
					|| (node.vartype instanceof ArrayTypeNode)) globalVarInitList.add(node);
			//class和array默认初始值为null
		}
		//local Variable
		else {
			AllocInst allocaddr=new AllocInst(node.varname,transType(node.vartype),currentFunction.funcBeginBlock);
			irCurrentScope.varHashMap.put(node.varname,allocaddr);
			if(node.initvalue!=null){
				visit(node.initvalue);
				if(node.initvalue.irOperand instanceof ConstString){
					Value addr2=creat_and_getConstString((ConstString) node.initvalue.irOperand);//addr2 i8*
					new StoreInst(allocaddr,addr2,currentBlock);//allocaddr i8**
				}
				else if(node.initvalue.irOperand instanceof ConstNull){
					node.initvalue.irOperand.type=allocaddr.type.dePoint();
					new StoreInst(allocaddr,node.initvalue.irOperand,currentBlock);
				}
				else {
					new StoreInst(allocaddr,node.initvalue.irOperand,currentBlock);
				}
			}
			else{
				if((node.vartype instanceof ClassTypeNode) || (node.vartype instanceof ArrayTypeNode)){
					new StoreInst(allocaddr,new ConstNull(allocaddr.type.dePoint()),currentBlock);
				}
			}
		}
		return null;
	}
	@Override
	public Void visitFuncDef(FuncDefNode node){
		irCurrentScope=new IRScope(irCurrentScope);
		currentFunction=irModule.funcHashMap.get(currentfunctionname);
		IRBasicBlock beginblock=new IRBasicBlock("func_begin_block",currentFunction);
		IRBasicBlock endblock=new IRBasicBlock("func_end_block",currentFunction);
		IRBasicBlock normalblock=new IRBasicBlock("normal_block",currentFunction);
		currentFunction.funcBeginBlock=beginblock;
		currentFunction.funcEndBlock =endblock;
		if(((FunctionType)currentFunction.type).returntype instanceof VoidType){
			currentBlock=endblock;
			new RetInst(new Value("meaningless",new VoidType()),currentBlock);
		}
		else {
			currentBlock=beginblock;
			currentFunction.funcReturnAddr=new AllocInst("funcReturn",((FunctionType)currentFunction.type).returntype,currentFunction.funcBeginBlock);

			currentBlock=endblock;
			LoadInst load=new LoadInst(currentFunction.funcReturnAddr,currentBlock);
			new RetInst(load,currentBlock);
		}

		currentBlock=normalblock;
		if(isInClass)addThisPtr();
		visit(node.paralist);
		if(currentfunctionname.equals("f_main")){
			IRFunction initfunc=irModule.funcHashMap.get("_main_initial");
			new CallInst(initfunc,new ArrayList<>(),currentBlock);
		}
		visit(node.block);
		new BrInst(null,currentFunction.funcEndBlock,null,currentBlock);
		new BrInst(null,normalblock,null,currentFunction.funcBeginBlock);
		currentFunction=null;
		currentBlock=null;
		irCurrentScope=irCurrentScope.parent;
		return null;
	}
	@Override
	public Void visitClassDef(ClassDefNode node){
		irCurrentScope=new IRScope(irCurrentScope,true);
		isInClass=true;
		currentclassname=node.classname;
		for (HashMap.Entry<String,VarDefNode> entry: node.varHashmap.entrySet()) {
			VarDefNode tmp=entry.getValue();
			irCurrentScope.varHashMap.put(tmp.varname,new Value("meaningless",null));
		}

		for (HashMap.Entry<String,FuncDefNode> entry: node.funcHashmap.entrySet()) {
			FuncDefNode tmp=entry.getValue();
			currentfunctionname="class_f_"+node.classname+"."+tmp.funcname;
			visit(tmp);
			currentfunctionname=null;
		}

		currentfunctionname="class_constructor_"+node.classname+"."+ node.classname;
		boolean HaveExplicitConstructor=false;
		for(int i=0;i<node.classconstructorList.size();i++){
			ClassConstructorNode tmp=node.classconstructorList.get(i);
			if(tmp.paralist.paralist.size()!=0)continue;// not support class constructor with parameter
			HaveExplicitConstructor=true;
			visit(tmp);
		}
		if(!HaveExplicitConstructor){
			currentFunction=irModule.funcHashMap.get(currentfunctionname);
			currentBlock=new IRBasicBlock("normal_block",currentFunction);
			new RetInst(new Value("meaningless",new VoidType()),currentBlock);
			currentBlock=null;
			currentFunction=null;
		}
		currentfunctionname=null;

		isInClass=false;
		currentclassname="";
		irCurrentScope=irCurrentScope.parent;
		return null;
	}
	@Override
	public Void visitClassConstructor(ClassConstructorNode node){
		irCurrentScope=new IRScope(irCurrentScope);
		currentFunction=irModule.funcHashMap.get(currentfunctionname);
		IRBasicBlock beginblock=new IRBasicBlock("func_begin_block",currentFunction);
		IRBasicBlock endblock=new IRBasicBlock("func_end_block",currentFunction);
		IRBasicBlock normalblock=new IRBasicBlock("normal_block",currentFunction);
		currentFunction.funcBeginBlock=beginblock;
		currentFunction.funcEndBlock =endblock;

		currentBlock=endblock;
		new RetInst(new Value("meaningless",new VoidType()),currentBlock);

		currentBlock=normalblock;
		addThisPtr();
		visit(node.paralist);
		visit(node.block);
		new BrInst(null,currentFunction.funcEndBlock,null,currentBlock);
		new BrInst(null,normalblock,null,currentFunction.funcBeginBlock);
		currentFunction=null;
		currentBlock=null;
		irCurrentScope=irCurrentScope.parent;
		return null;
	}
	@Override
	public Void visitParaList(ParaListNode node){
		for(int i=0;i<node.paralist.size();i++){
			VarDefNode tmp=node.paralist.get(i);
			AllocInst allocaddr=new AllocInst(tmp.varname,transType(tmp.vartype),currentFunction.funcBeginBlock);
			new StoreInst(allocaddr,currentFunction.operandlist.get(isInClass?i+1:i),currentBlock);
			irCurrentScope.varHashMap.put(tmp.varname,allocaddr);
			//给每个parameter开一个指针指向它(irCurrentScope.varHashMap记录的都是指向数据的指针)
		}
		return null;
	}
	@Override
	public Void visitParaDataList(ParaDataListNode node){
		return null;
	}

	@Override
	public Void visitBlockStat(BlockStatNode node){
		irCurrentScope=new IRScope(irCurrentScope);
		for(int i=0;i<node.statlist.size();i++){
			visit(node.statlist.get(i));
		}
		irCurrentScope=irCurrentScope.parent;
		return null;
	}
	@Override
	public Void visitExprStat(ExprStatNode node){
		visit(node.expr);
		return null;
	}
	@Override
	public Void visitVarDefStat(VarDefStatNode node){
		for(int i=0;i<node.vardeflist.size();i++){
			visit(node.vardeflist.get(i));
		}
		return null;
	}
	@Override
	public Void visitBreakStat(BreakStatNode node){
		new BrInst(null,breakStack.peek(),null,currentBlock);
		currentBlock=new IRBasicBlock("normal_block",currentFunction);
		return null;
	}
	@Override
	public Void visitContinueStat(ContinueStatNode node){
		new BrInst(null,continueStack.peek(),null,currentBlock);
		currentBlock=new IRBasicBlock("normal_block",currentFunction);
		return null;
	}
	@Override
	public Void visitReturnStat(ReturnStatNode node){
		IRBasicBlock endreturnblock=new IRBasicBlock("normal_block",currentFunction);
		if(node.returnexpr!=null){
			visit(node.returnexpr);
			if(node.returnexpr.irOperand instanceof ConstString){
				Value addr2=creat_and_getConstString((ConstString) node.returnexpr.irOperand);
				new StoreInst(currentFunction.funcReturnAddr,addr2,currentBlock);
			}
			else if(node.returnexpr.irOperand instanceof ConstNull){
				node.returnexpr.irOperand.type=currentFunction.funcReturnAddr.type.dePoint();
			}
			else {
				new StoreInst(currentFunction.funcReturnAddr,node.returnexpr.irOperand,currentBlock);
			}
		}
		new BrInst(null,currentFunction.funcEndBlock,null,currentBlock);
		currentBlock=endreturnblock;
		return null;
	}
	@Override
	public Void visitIfStat(IfStatNode node){
		boolean haveelse=(node.elsestat.statlist.size() != 0);
		IRBasicBlock ifbodyblock=new IRBasicBlock("if_body_block",currentFunction);
		IRBasicBlock elsebodyblock=new IRBasicBlock("else_body_block",haveelse?currentFunction:null);
		IRBasicBlock endifblock=new IRBasicBlock("normal_block",currentFunction);

		visit(node.conditionexpr);
		Value condition=node.conditionexpr.irOperand;
		new BrInst(condition,ifbodyblock,haveelse?elsebodyblock:endifblock,currentBlock);

		irCurrentScope=new IRScope(irCurrentScope);
		currentBlock=ifbodyblock;
		visit(node.ifstat);
		new BrInst(null,endifblock,null,currentBlock);
		irCurrentScope=irCurrentScope.parent;

		if(haveelse){
			irCurrentScope=new IRScope(irCurrentScope);
			currentBlock=elsebodyblock;
			visit(node.elsestat);
			new BrInst(null,endifblock,null,currentBlock);
			irCurrentScope=irCurrentScope.parent;
		}

		currentBlock=endifblock;

		return null;
	}
	@Override
	public Void visitWhileStat(WhileStatNode node){
		IRBasicBlock conditionblock=new IRBasicBlock("while_condition_block",currentFunction);
		IRBasicBlock whilebodyblock=new IRBasicBlock("while_body_block",currentFunction);
		IRBasicBlock endwhileblock=new IRBasicBlock("normal_block",currentFunction);

		new BrInst(null,conditionblock,null,currentBlock);

		irCurrentScope=new IRScope(irCurrentScope);

		currentBlock=conditionblock;
		visit(node.conditionexpr);
		Value condition=node.conditionexpr.irOperand;
		new BrInst(condition,whilebodyblock,endwhileblock,currentBlock);

		continueStack.push(conditionblock);
		breakStack.push(endwhileblock);

		currentBlock=whilebodyblock;
		visit(node.whilestat);
		new BrInst(null,conditionblock,null,currentBlock);

		continueStack.pop();
		breakStack.pop();

		irCurrentScope=irCurrentScope.parent;

		currentBlock=endwhileblock;

		return null;
	}
	@Override
	public Void visitForStat(ForStatNode node){
		IRBasicBlock conditionblock=new IRBasicBlock("for_condition_block",currentFunction);
		IRBasicBlock forbodyblock=new IRBasicBlock("for_body_block",currentFunction);
		IRBasicBlock forupdateblock=new IRBasicBlock("for_update_block",currentFunction);
		IRBasicBlock endforblock=new IRBasicBlock("normal_block",currentFunction);

		irCurrentScope=new IRScope(irCurrentScope);
		if(node.initexprlist!=null){
			for(int i=0;i<node.initexprlist.size();i++){
				visit(node.initexprlist.get(i));
			}
		}
		if(node.initdeflist!=null){
			for(int i=0;i<node.initdeflist.size();i++){
				visit(node.initdeflist.get(i));
			}
		}
		new BrInst(null,conditionblock,null,currentBlock);

		irCurrentScope=new IRScope(irCurrentScope);
		currentBlock=conditionblock;
		Value condition;
		if(node.conditionexpr!=null){
			visit(node.conditionexpr);
			condition=node.conditionexpr.irOperand;
		}
		else condition=new ConstBool(true);
		new BrInst(condition,forbodyblock,endforblock,currentBlock);

		continueStack.push(forupdateblock);
		breakStack.push(endforblock);

		currentBlock=forbodyblock;
		visit(node.forstat);
		new BrInst(null,forupdateblock,null,currentBlock);

		currentBlock=forupdateblock;
		if(node.updateexpr!=null)visit(node.updateexpr);
		new BrInst(null,conditionblock,null,currentBlock);

		continueStack.pop();
		breakStack.pop();

		irCurrentScope=irCurrentScope.parent;


		irCurrentScope=irCurrentScope.parent;

		currentBlock=endforblock;

		return null;
	}


	@Override
	public Void visitConstIntExpr(ConstIntExprNode node){
		node.irOperand=new ConstInt(node.value);
		return null;
	}
	@Override
	public Void visitConstBoolExpr(ConstBoolExprNode node){
		node.irOperand=new ConstBool(node.value);
		return null;
	}
	@Override
	public Void visitConstStringExpr(ConstStringExprNode node){
		node.irOperand=new ConstString(node.value);
		return null;
	}
	@Override
	public Void visitNullExpr(NullExprNode node){
		node.irOperand=new ConstNull();
		return null;
	}
	@Override
	public Void visitIdExpr(IdExprNode node){
		Value tmp;
		if(isInClass && irCurrentScope.variable_Contain_FromClass(node.identifier) ){
//			this.a;
			Value thisptr=irCurrentScope.variable_Get_FromAll("this");// struct**
			Value thisload=new LoadInst(thisptr,currentBlock); //struct*
			tmp=class_member_gep(thisload,currentclassname,node.identifier);// membertype*
		}
		else {
			tmp=irCurrentScope.variable_Get_FromAll(node.identifier);// tmp : i32* / i8** /struct** ...
		}
		if(needAddr.peek())node.irOperand=tmp;
		else node.irOperand=new LoadInst(tmp,currentBlock);


		/*
		(不算数组)
		if(needAddr.peek()==true) : return i32* / i8** / struct** ...
		else : return i32 / i8* / struct* ...
		*/
		return null;
	}
	@Override
	public Void visitMemberExpr(MemberExprNode node){
		needAddr.push(false);
		visit(node.expr);// node.expr.irOperand : struct*
		needAddr.pop();
		GetElementPtrInst gep=class_member_gep(node.expr.irOperand,node.expr.returntype.typename,node.member);
		// gep : membertype*(i32* / i8**/ struct** ...)
		if(needAddr.peek())node.irOperand=gep;
		else node.irOperand=new LoadInst(gep,currentBlock);
		/*
		if(needAddr.peek()==true) : return i32* / i8** / struct** ...
		else : return i32 / i8* / struct* ...
		*/
		return null;
	}
	@Override
	public Void visitFuncExpr(FuncExprNode node){
		boolean is_classfunc=false;
		IRFunction tmpfunc=null;
		ArrayList<Value> paradata=new ArrayList<>();
		if(node.expr instanceof MemberExprNode){
			MemberExprNode membernode=(MemberExprNode)node.expr;
			BaseTypeNode classtype= membernode.expr.returntype;
			if(classtype instanceof ArrayTypeNode){
				needAddr.push(false);
				visit(membernode.expr);// membernode.expr.irOperand : struct*
				if(membernode.member.equals("size")){
					//假设为一维数组  membernode.expr.irOperand : i32* 指向数组第一个数据地址
					//bytesize放在ptr-1的位置
					node.irOperand=getArraySize(membernode.expr.irOperand);
					return null;
				}
				else throw new RuntimeException("??? error in visitFuncExpr ???");
			}
			else if(classtype instanceof StringTypeNode){
				needAddr.push(false);
				visit(membernode.expr);// membernode.expr.irOperand : i8*
				if(membernode.member.equals("length"))tmpfunc=irModule.funcHashMap.get("_string_length");
				else if(membernode.member.equals("substring"))tmpfunc=irModule.funcHashMap.get("_string_substring");
				else if(membernode.member.equals("parseInt"))tmpfunc=irModule.funcHashMap.get("_string_parseInt");
				else if(membernode.member.equals("ord"))tmpfunc=irModule.funcHashMap.get("_string_ord");
				else throw new RuntimeException("??? error in visitFuncExpr ???");
				paradata.add(membernode.expr.irOperand); // membernode.expr.irOperand : i8*
			}
			else if(classtype instanceof ClassTypeNode){
				is_classfunc=true;
				needAddr.push(true);
				visit(membernode.expr);// membernode.expr.irOperand : struct**
				tmpfunc=irModule.funcHashMap.get("class_f_"+classtype.typename+"."+membernode.member);
				paradata.add(membernode.expr.irOperand); // membernode.expr.irOperand : struct**
			}
			else throw new RuntimeException("??? error in visitFuncExpr ???");
			needAddr.pop();
		}
		else if(node.expr instanceof IdExprNode){
			if(isInClass && irModule.funcHashMap.containsKey("class_f_"+currentclassname+"."+((IdExprNode) node.expr).identifier)){
				is_classfunc=true;
				tmpfunc=irModule.funcHashMap.get("class_f_"+currentclassname+"."+((IdExprNode) node.expr).identifier);
				paradata.add(irCurrentScope.variable_Get_FromAll("this"));
			}
			else tmpfunc=irModule.funcHashMap.get("f_"+((IdExprNode) node.expr).identifier);
		}
		else throw new RuntimeException("??? error in visitFuncExpr ???");

		for(int i=0;i<node.paradatalist.paradatalist.size();i++){
			BaseExprNode tmp=node.paradatalist.paradatalist.get(i);
			needAddr.push(false);
			visit(tmp);
			needAddr.pop();
			if(tmp.irOperand instanceof ConstString){
				Value addr=creat_and_getConstString((ConstString) tmp.irOperand);
				paradata.add(addr);
			}
			else if(tmp.irOperand instanceof ConstNull){
				tmp.irOperand.type=tmpfunc.operandlist.get(is_classfunc?i+1:i).type.dePoint();
				paradata.add(tmp.irOperand);
			}
			else {
				paradata.add(tmp.irOperand);
			}
		}
		CallInst call=new CallInst(tmpfunc,paradata,currentBlock);
		if(needAddr.peek()){
			AllocInst addr=new AllocInst("tmp",call.type,currentFunction.funcBeginBlock);
			new StoreInst(addr,call,currentBlock);
			node.irOperand=addr;
		}
		else node.irOperand=call;
		return null;
	}
	@Override
	public Void visitArrayExpr(ArrayExprNode node){

		needAddr.push(false);
		visit(node.arrayname);
		visit(node.index);
		needAddr.pop();

		// int S[][]     []     []
		//     arrayname index
		// node.arrayname.irOperand : i32** ,point to S[][][0]

		// needAddr.peek()==true   node.irOperand : i32**
		// needAddr.peek()==false   node.irOperand : i32*

		ArrayList<Value> offset=new ArrayList<>();
		offset.add(node.index.irOperand);
		GetElementPtrInst gep=new GetElementPtrInst(node.arrayname.irOperand,offset,node.arrayname.irOperand.type,currentBlock);
		//gep : i32** ,point to S[][][index]

		if(needAddr.peek())node.irOperand=gep;
		else node.irOperand=new LoadInst(gep,currentBlock);
		return null;
	}
	@Override
	public Void visitThisExpr(ThisExprNode node){
		// node.irOperand : struct*
		//this.a
		Value tmp=irCurrentScope.variable_Get_FromAll("this");// struct**
		if(needAddr.peek())node.irOperand=tmp;
		else node.irOperand=new LoadInst(tmp,currentBlock);

		// needAddr.peek()==true  : struct**
		// needAddr.peek()==false : struct*
		return null;
	}
	@Override
	public Void visitNewformatExpr(NewformatExprNode node){
		// needAddr.peek() : false
		BaseType basetype=transType(node.type);
		int basebytesize=basetype.bytesize();
		IRFunction mallocfunc=irModule.funcHashMap.get("_heap_malloc");
		if(node.dim!=0) {//array
			node.irOperand=generate_all_new_array(node,0,mallocfunc,basetype,basebytesize);
		}
		else {//class
//			node b=new node/new node();
			basebytesize=basetype.dePoint().bytesize();
			ArrayList<Value> paradata = new ArrayList<>();
			Value bytesize=new ConstInt(basebytesize);
			paradata.add(bytesize);
			CallInst call = new CallInst(mallocfunc, paradata, currentBlock);

			BaseType targettype = basetype;
			BitCastInst bitcast = new BitCastInst(call, targettype, currentBlock);
			//bitcast : struct*
			AllocInst classptr=new AllocInst("classptr",bitcast.type,currentFunction.funcBeginBlock);
			new StoreInst(classptr,bitcast,currentBlock);
			class_constructor_execute(classptr,node.type.typename);
			node.irOperand=bitcast;
		}
		return null;
	}
	@Override
	public Void visitSingleExpr(SingleExprNode node){
//		ADD,SUB, //+,-
//		PREADD2,PRESUB2, //++x,--x
//		LASADD2,LASSUB2, //x++,x--
//		LOGICNOT,BITNOT //!,~
		Value addr,basevalue;
		if(node.operand.isleft){
			needAddr.push(true);
			visit(node.operand);
			needAddr.pop();
			addr=node.operand.irOperand;
			basevalue=new LoadInst(addr,currentBlock);
		}
		else {
			needAddr.push(false);
			visit(node.operand);
			needAddr.pop();
			addr=null;
			basevalue=node.operand.irOperand;
		}
		if(node.op==SingleExprNode.SingleOp.ADD){ // +
			assert needAddr.peek();
			// needAddr.peek() : false
			if(basevalue instanceof BaseConst){
				assert !(basevalue instanceof ConstInt);
				node.irOperand=basevalue;
			}
			else node.irOperand=basevalue;
		}
		if(node.op==SingleExprNode.SingleOp.SUB){ // -
			assert needAddr.peek();
			// needAddr.peek() : false
			if(basevalue instanceof BaseConst){
				assert !(basevalue instanceof ConstInt);
				node.irOperand=new ConstInt(-((ConstInt)basevalue).value);
			}
			else node.irOperand=new BinaryInst(new ConstInt(0),basevalue,BinaryOp.sub,currentBlock);
		}
		if(node.op==SingleExprNode.SingleOp.PREADD2){ // ++x
			Value tmp=new BinaryInst(basevalue,new ConstInt(1),BinaryOp.add,currentBlock);
			new StoreInst(addr,tmp,currentBlock);
			if(needAddr.peek())node.irOperand=addr;
			else node.irOperand=tmp;
		}
		if(node.op==SingleExprNode.SingleOp.PRESUB2){ // --x
			Value tmp=new BinaryInst(basevalue,new ConstInt(-1),BinaryOp.add,currentBlock);
			new StoreInst(addr,tmp,currentBlock);
			if(needAddr.peek())node.irOperand=addr;
			else node.irOperand=tmp;
		}
		if(node.op==SingleExprNode.SingleOp.LASADD2){ // x++
			assert needAddr.peek();
			// needAddr.peek() : false
			Value tmp=new BinaryInst(basevalue,new ConstInt(1),BinaryOp.add,currentBlock);
			new StoreInst(addr,tmp,currentBlock);
			node.irOperand=basevalue;
		}
		if(node.op==SingleExprNode.SingleOp.LASSUB2){ // x--
			assert needAddr.peek();
			// needAddr.peek() : false
			Value tmp=new BinaryInst(basevalue,new ConstInt(-1),BinaryOp.add,currentBlock);
			new StoreInst(addr,tmp,currentBlock);
			node.irOperand=basevalue;
		}
		if(node.op==SingleExprNode.SingleOp.LOGICNOT){ // !
			assert needAddr.peek();
			// needAddr.peek() : false
			if(basevalue instanceof BaseConst){
				assert !(basevalue instanceof ConstBool);
				node.irOperand=new ConstBool(!((ConstBool)basevalue).value);
			}
			else node.irOperand=new BinaryInst(basevalue,new ConstBool(true),BinaryOp.xor,currentBlock);
		}
		if(node.op==SingleExprNode.SingleOp.BITNOT){ // ~
			assert needAddr.peek();
			// needAddr.peek() : false
			if(basevalue instanceof BaseConst){
				assert !(basevalue instanceof ConstInt);
				node.irOperand=new ConstInt(~((ConstInt)basevalue).value);
			}
			else node.irOperand=new BinaryInst(basevalue,new ConstInt(-1),BinaryOp.xor,currentBlock);
		}
		return null;
	}
	@Override
	public Void visitBinaryExpr(BinaryExprNode node){
		if(node.op== BinaryExprNode.BinaryOp.LOGIC_AND || node.op== BinaryExprNode.BinaryOp.LOGIC_OR){
			if(node.op== BinaryExprNode.BinaryOp.LOGIC_AND){
//				a&&b
//				if(a)ans=b;
//				else ans=0;
				visit(node.operand1);
				IRBasicBlock ifbodyblock=new IRBasicBlock("short_circuit_if_body_block",currentFunction);
				IRBasicBlock elsebodyblock=new IRBasicBlock("short_circuit_else_body_block",currentFunction);
				IRBasicBlock endblock=new IRBasicBlock("short_circuit_end_block",currentFunction);
				AllocInst alloc=new AllocInst("shortCircuit",new IntegerType(1),currentFunction.funcBeginBlock);
				new BrInst(node.operand1.irOperand,ifbodyblock,elsebodyblock,currentBlock);

				currentBlock=ifbodyblock;
				visit(node.operand2);
				new StoreInst(alloc,node.operand2.irOperand,currentBlock);
				new BrInst(null,endblock,null,currentBlock);

				currentBlock=elsebodyblock;
				new StoreInst(alloc,new ConstBool(false),currentBlock);
				new BrInst(null,endblock,null,currentBlock);

				currentBlock=endblock;
				node.irOperand=new LoadInst(alloc,currentBlock);
			}
			else if(node.op== BinaryExprNode.BinaryOp.LOGIC_OR){
//				a||b
//				if(a)ans=1;
//				else ans=b;
				visit(node.operand1);
				IRBasicBlock ifbodyblock=new IRBasicBlock("short_circuit_if_body_block",currentFunction);
				IRBasicBlock elsebodyblock=new IRBasicBlock("short_circuit_else_body_block",currentFunction);
				IRBasicBlock endblock=new IRBasicBlock("short_circuit_end_block",currentFunction);
				AllocInst alloc=new AllocInst("shortCircuit",new IntegerType(1),currentFunction.funcBeginBlock);
				new BrInst(node.operand1.irOperand,ifbodyblock,elsebodyblock,currentBlock);

				currentBlock=ifbodyblock;
				new StoreInst(alloc,new ConstBool(true),currentBlock);
				new BrInst(null,endblock,null,currentBlock);

				currentBlock=elsebodyblock;
				visit(node.operand2);
				new StoreInst(alloc,node.operand2.irOperand,currentBlock);
				new BrInst(null,endblock,null,currentBlock);

				currentBlock=endblock;
				node.irOperand=new LoadInst(alloc,currentBlock);
			}
			return null;
		}
		visit(node.operand1);
		visit(node.operand2);
		Value value1=node.operand1.irOperand;
		Value value2=node.operand2.irOperand;
		BinaryOp op=transOp(node.op);
		if( node.op== BinaryExprNode.BinaryOp.ADD && (node.operand1.returntype instanceof StringTypeNode) ){
			merge_string_execute(node);
		}
		else if(isCompareOp(node.op) && (node.operand1.returntype instanceof StringTypeNode)){
			icmp_string_execute(node);
		}
		else if((node.op== BinaryExprNode.BinaryOp.EQ || node.op== BinaryExprNode.BinaryOp.NEQ)){
			if((node.operand1.returntype instanceof NullTypeNode) ||(node.operand2.returntype instanceof NullTypeNode)){
				if(node.operand1.returntype instanceof NullTypeNode){
					value1.type=value2.type;
				}
				else {//node.operand2.returntype instanceof NullTypeNode
					value2.type=value1.type;
				}
				//class,array,null ==/!= null
				node.irOperand=new IcmpInst(value1,value2,op,currentBlock);
			}
			else {//int ==/!= int,bool ==/!= bool,class ==/!= class (class为地址比较)
				node.irOperand=new IcmpInst(value1,value2,op,currentBlock);
			}
		}
		else {//int
			if(isCompareOp(node.op))node.irOperand=new IcmpInst(value1,value2,op,currentBlock);
			else node.irOperand=new BinaryInst(value1,value2,op,currentBlock);
		}
		return null;
	}


	@Override
	public Void visitAssignExpr(AssignExprNode node){
		needAddr.push(true);
		visit(node.operand1);
		needAddr.push(false);
		visit(node.operand2);
		Value addr=node.operand1.irOperand;
		Value operand=node.operand2.irOperand;
		if(node.operand2.irOperand instanceof ConstString) {
			operand = creat_and_getConstString((ConstString) node.operand2.irOperand);
			node.irOperand = new StoreInst(addr, operand, currentBlock);//addr i8**,operand i8*
		}
		else if(node.operand2.irOperand instanceof ConstNull){// class/array = null
			node.operand2.irOperand.type=node.operand1.irOperand.type.dePoint();
			node.irOperand=new StoreInst(addr,operand,currentBlock);
		}
		else {
			node.irOperand=new StoreInst(addr,operand,currentBlock);
		}
		return null;
	}
	@Override
	public Void visitLambdaExpr(LambdaExprNode node){
		return null;
	}

	@Override
	public Void visitIntType(IntTypeNode node){
		return null;
	}
	@Override
	public Void visitBoolType(BoolTypeNode node){
		return null;
	}
	@Override
	public Void visitStringType(StringTypeNode node){
		return null;
	}
	@Override
	public Void visitNullType(NullTypeNode node){
		return null;
	}
	@Override
	public Void visitClassType(ClassTypeNode node){
		return null;
	}
	@Override
	public Void visitArrayType(ArrayTypeNode node){
		return null;
	}
	@Override
	public Void visitVoidType(VoidTypeNode node){
		return null;
	}

	BaseType transType(BaseTypeNode type){//astType->irType
		if(type instanceof IntTypeNode)return new IntegerType(32);
		else if(type instanceof BoolTypeNode)return new IntegerType(1);
		else if(type instanceof StringTypeNode)return new PointerType(new IntegerType(8));
		else if(type instanceof ClassTypeNode)return new PointerType(irModule.structHashMap.get(type.typename));
		else if(type instanceof ArrayTypeNode){
			if(type.typename.equals("int"))return new PointerType(transType(new IntTypeNode(null)),type.dim);
			else if(type.typename.equals("bool"))return new PointerType(transType(new BoolTypeNode(null)),type.dim);
			else if(type.typename.equals("string"))return new PointerType(transType(new StringTypeNode(null)),type.dim);
			else return new PointerType(transType(new ClassTypeNode(type.typename,null)),type.dim);
		}
		else if(type instanceof VoidTypeNode){
			return new VoidType();
		}
		else { //NullTypeNode
			return null;
		}
	}
	BinaryOp transOp(BinaryExprNode.BinaryOp type){
		if(type== BinaryExprNode.BinaryOp.ADD)return BinaryOp.add;
		else if(type== BinaryExprNode.BinaryOp.SUB)return BinaryOp.sub;
		else if(type== BinaryExprNode.BinaryOp.MUL)return BinaryOp.mul;
		else if(type== BinaryExprNode.BinaryOp.DIV)return BinaryOp.sdiv;
		else if(type== BinaryExprNode.BinaryOp.MOD)return BinaryOp.srem;

		else if(type== BinaryExprNode.BinaryOp.LEFT_SHIFT)return BinaryOp.shl;
		else if(type== BinaryExprNode.BinaryOp.RIGHT_SHIFT)return BinaryOp.ashr;
		else if(type== BinaryExprNode.BinaryOp.AND)return BinaryOp.and;
		else if(type== BinaryExprNode.BinaryOp.OR)return BinaryOp.or;
		else if(type== BinaryExprNode.BinaryOp.XOR)return BinaryOp.xor;
		else if(type== BinaryExprNode.BinaryOp.LESS)return BinaryOp.slt;
		else if(type== BinaryExprNode.BinaryOp.LEQ)return BinaryOp.sle;
		else if(type== BinaryExprNode.BinaryOp.GREATER)return BinaryOp.sgt;
		else if(type== BinaryExprNode.BinaryOp.GEQ)return BinaryOp.sge;
		else if(type== BinaryExprNode.BinaryOp.EQ)return BinaryOp.eq;
		else if(type== BinaryExprNode.BinaryOp.NEQ)return BinaryOp.ne;
		return null;
		//no LOGIC_AND,LOGIC_OR
	}
	void generate_stringcmp(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara;
		ArrayList<BaseType> tmpparatype;
		tmppara=new ArrayList<>();
		tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str1",new PointerType(new IntegerType(8))));
		tmppara.add(new Value("str2",new PointerType(new IntegerType(8))));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new IntegerType(1),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_stringmerge(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str1",new PointerType(new IntegerType(8))));
		tmppara.add(new Value("str2",new PointerType(new IntegerType(8))));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new PointerType(new IntegerType(8)),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_heap_malloc(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("n",new IntegerType(32)));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new PointerType(new IntegerType(8)),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_string_length(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str",new PointerType(new IntegerType(8))));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new IntegerType(32),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_string_substring(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str",new PointerType(new IntegerType(8))));
		tmppara.add(new Value("l",new IntegerType(32)));
		tmppara.add(new Value("r",new IntegerType(32)));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new PointerType(new IntegerType(8)),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_string_parseInt(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str",new PointerType(new IntegerType(8))));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new IntegerType(32),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}
	void generate_string_ord(String funcname){
		IRFunction tmpfunc;
		ArrayList<Value> tmppara=new ArrayList<>();
		ArrayList<BaseType> tmpparatype=new ArrayList<>();
		tmppara.add(new Value("str",new PointerType(new IntegerType(8))));
		tmppara.add(new Value("ord",new IntegerType(32)));
		for(int i=0;i<tmppara.size();i++){
			tmpparatype.add(tmppara.get(i).type);
		}
		tmpfunc=new IRFunction(funcname,new FunctionType(new IntegerType(32),tmpparatype),tmppara,true);
		irModule.funcHashMap.put(funcname,tmpfunc);
	}

	void generate_main_initial(){
		IRFunction tmpfunc=irModule.funcHashMap.get("_main_initial");
		irCurrentScope=new IRScope(irCurrentScope);
		currentFunction=tmpfunc;
		IRBasicBlock beginblock=new IRBasicBlock("func_begin_block",currentFunction);
		IRBasicBlock endblock=new IRBasicBlock("func_end_block",currentFunction);
		IRBasicBlock normalblock=new IRBasicBlock("normal_block",currentFunction);
		currentFunction.funcBeginBlock=beginblock;
		currentFunction.funcEndBlock =endblock;

		currentBlock=endblock;
		new RetInst(new Value("meaningless",new VoidType()),currentBlock);

		currentBlock=normalblock;

		for(int i=0;i<globalVarInitList.size();i++){
			VarDefNode tmp=globalVarInitList.get(i);
			if(tmp.initvalue!=null)visit(tmp.initvalue);
			Value addr=irCurrentScope.variable_Get_FromAll(tmp.varname);
			if(tmp.initvalue==null ||(tmp.initvalue instanceof NullExprNode)){// class/array默认赋值为null
				new StoreInst(addr,new ConstNull(addr.type.dePoint()),currentBlock);
				continue;
			}
			Value initoperand=tmp.initvalue.irOperand;
			if(initoperand instanceof BaseConst){
//				if(node.initvalue.irOperand instanceof ConstBool);
//				if(node.initvalue.irOperand instanceof ConstInt);
//				if(node.initvalue.irOperand instanceof ConstString);
//				if(node.initvalue.irOperand instanceof ConstNull);

				if(initoperand instanceof ConstString){
					Value addr2=creat_and_getConstString((ConstString) initoperand);//addr2 i8*
					new StoreInst(addr,addr2,currentBlock);//addr i8**
				}
				else if(initoperand instanceof ConstNull){
					initoperand.type=addr.type.dePoint();
					new StoreInst(addr,initoperand,currentBlock);
				}
				else {
					new StoreInst(addr,initoperand,currentBlock);
				}
			}
			else if(initoperand instanceof BaseInst){
				visit(tmp.initvalue);
				new StoreInst(addr,initoperand,currentBlock);
				//addr i32*/i1*/structtype**/i8**   ,   tmp.initvalue.irOperand  i32/i1/structtype*/i8*
			}
			else throw new RuntimeException("?? error in generate_main_initial ??");
		}
		new BrInst(null,currentFunction.funcEndBlock,null,currentBlock);
		new BrInst(null,normalblock,null,currentFunction.funcBeginBlock);

		currentFunction=null;
		currentBlock=null;
	}
	GetElementPtrInst creat_and_getConstString(ConstString node){//node [size x i8]* ,  return i8*
		irModule.stringList.add(node);
		ArrayList<Value> offset=new ArrayList<>();
		offset.add(new ConstInt(0));
		offset.add(new ConstInt(0));
		return new GetElementPtrInst(node,offset,new PointerType(new IntegerType(8)),currentBlock);
	}
	boolean isCompareOp(BinaryExprNode.BinaryOp op) {
		return op== BinaryExprNode.BinaryOp.LESS
				||op== BinaryExprNode.BinaryOp.LEQ
				||op== BinaryExprNode.BinaryOp.GREATER
				||op== BinaryExprNode.BinaryOp.GEQ
				||op== BinaryExprNode.BinaryOp.EQ
				||op== BinaryExprNode.BinaryOp.NEQ;
	}
	void merge_string_execute(BinaryExprNode node){
		Value value1=node.operand1.irOperand;
		Value value2=node.operand2.irOperand;
		if((value1 instanceof ConstString) && (value2 instanceof ConstString)){
			String str1=((ConstString) value1).value,str2=((ConstString) value2).value;
			node.irOperand=new ConstString(str1.substring(0,str1.length()-1)+str2);
		}
		else {
			Value addr1,addr2;
			if(value1 instanceof ConstString)addr1=creat_and_getConstString((ConstString) value1);
			else addr1=value1;
			if(value2 instanceof ConstString)addr2=creat_and_getConstString((ConstString) value2);
			else addr2=value2;
			IRFunction callfunc=irModule.funcHashMap.get("_string_merge");
			ArrayList<Value> paradata=new ArrayList<>();
			paradata.add(addr1);
			paradata.add(addr2);
			node.irOperand=new CallInst(callfunc,paradata,currentBlock);
		}
	}
	void icmp_string_execute(BinaryExprNode node){
		Value value1=node.operand1.irOperand;
		Value value2=node.operand2.irOperand;
		IRFunction callfunc=null;
		ArrayList<Value> paradata=new ArrayList<>();
		paradata.add(value1);
		paradata.add(value2);
		if(node.op == BinaryExprNode.BinaryOp.LESS)callfunc=irModule.funcHashMap.get("_stringcmp_less");
		if(node.op == BinaryExprNode.BinaryOp.LEQ)callfunc=irModule.funcHashMap.get("_stringcmp_leq");
		if(node.op == BinaryExprNode.BinaryOp.GREATER)callfunc=irModule.funcHashMap.get("_stringcmp_greater");
		if(node.op == BinaryExprNode.BinaryOp.GEQ)callfunc=irModule.funcHashMap.get("_stringcmp_geq");
		if(node.op == BinaryExprNode.BinaryOp.EQ)callfunc=irModule.funcHashMap.get("_stringcmp_eq");
		if(node.op == BinaryExprNode.BinaryOp.NEQ)callfunc=irModule.funcHashMap.get("_stringcmp_neq");
		assert callfunc != null;
		node.irOperand=new CallInst(callfunc,paradata,currentBlock);
	}
	int getStructMemberIndex(String classname,String member) {
		ClassDefNode tmpclass=semanticGlobalScope.class_table.get(classname);
		int cnt=0;
		for (HashMap.Entry<String,VarDefNode> entry: tmpclass.varHashmap.entrySet()) {
			VarDefNode tmp = entry.getValue();
			if (tmp.varname.equals(member))return cnt;
			cnt++;
		}
		return -1;
	}
	BaseType getStructMemberType(String classname, String member) {
		ClassDefNode tmpclass=semanticGlobalScope.class_table.get(classname);
		VarDefNode vardef=tmpclass.varHashmap.get(member);
		return transType(vardef.vartype);
	}
	GetElementPtrInst class_member_gep(Value ptr,String classname,String member){
		//ptr : struct* , return : membertype*
		ArrayList<Value> offset=new ArrayList<>();
		offset.add(new ConstInt(0));
		offset.add(new ConstInt(getStructMemberIndex(classname,member)));
		return new GetElementPtrInst(ptr,offset,new PointerType(getStructMemberType(classname,member)),currentBlock);
	}
	LoadInst getArraySize(Value ptr){
		BitCastInst bitcast=new BitCastInst(ptr,new PointerType(new IntegerType(32)),currentBlock);
		ArrayList<Value> offset=new ArrayList<>();
		offset.add(new ConstInt(-1));
		GetElementPtrInst gep=new GetElementPtrInst(bitcast,offset,bitcast.type,currentBlock);
		return new LoadInst(gep,currentBlock);
	}
	void class_constructor_execute(Value thisptr,String classname){
		//ptr : struct*
		ArrayList<Value> paradata = new ArrayList<>();
		paradata.add(thisptr);
		IRFunction tmpfunc=irModule.funcHashMap.get("class_constructor_"+classname+"."+classname);
		new CallInst(tmpfunc,paradata,currentBlock);
	}
	void addThisPtr(){
		Value ptr=currentFunction.operandlist.get(0);
		irCurrentScope.varHashMap.put("this",ptr);
	}
	Value generate_all_new_array(NewformatExprNode node,int pos,IRFunction mallocfunc,BaseType basetype,int basebytesize){
		visit(node.sizelist.get(pos));
		Value index = node.sizelist.get(pos).irOperand;

		ArrayList<Value> paradata = new ArrayList<>();
		//			int[] a=new node[10]; //node.bytesize()*10
		//			int[][] a=new node[10][]; 8*10
		int basebytesize2;
		if (pos == node.sizelist.size() - 1 && node.dim == node.sizelist.size())basebytesize2 = basebytesize;
		else basebytesize2 = 8;//pointer
		Value bytesize;
		if (index instanceof ConstInt) bytesize = new ConstInt(basebytesize2 * ((ConstInt) index).value+4);
		else {
			BinaryInst mul = new BinaryInst(new ConstInt(basebytesize2), index, BinaryOp.mul, currentBlock);
			bytesize=new BinaryInst(mul,new ConstInt(4), BinaryOp.add, currentBlock);
		}

		paradata.add(bytesize);
		CallInst call = new CallInst(mallocfunc, paradata, currentBlock);

		BaseType targettype = new PointerType(basetype, node.dim - pos);
		BitCastInst bitcast = new BitCastInst(call, new PointerType(new IntegerType(32)), currentBlock);
		new StoreInst(bitcast,index,currentBlock);
		ArrayList<Value> offset=new ArrayList();
		offset.add(new ConstInt(1));
		GetElementPtrInst gep=new GetElementPtrInst(bitcast,offset,bitcast.type,currentBlock);

		BitCastInst bitcast2 = new BitCastInst(gep, targettype, currentBlock);

		if(pos+1<node.sizelist.size()){
			IRBasicBlock conditionblock=new IRBasicBlock("new_array_condition_block",currentFunction);
			IRBasicBlock bodyblock=new IRBasicBlock("new_array_body_block",currentFunction);
			IRBasicBlock endblock=new IRBasicBlock("normal_block",currentFunction);

//			for(int count=0;count<index;count++){
//
//			}
			AllocInst countaddr=new AllocInst("newarraycount",new IntegerType(32),currentFunction.funcBeginBlock);
			new StoreInst(countaddr,new ConstInt(0),currentBlock);
			new BrInst(null,conditionblock,null,currentBlock);

			currentBlock=conditionblock;
			LoadInst countload=new LoadInst(countaddr,currentBlock);
			IcmpInst icmp=new IcmpInst(countload,index,BinaryOp.sle,currentBlock);
			new BrInst(icmp,bodyblock,endblock,currentBlock);

			currentBlock=bodyblock;
			ArrayList<Value> offset2=new ArrayList();
			offset2.add(countload);
			GetElementPtrInst gep2=new GetElementPtrInst(bitcast2,offset2,bitcast2.type,currentBlock);
			Value tmp=generate_all_new_array(node,pos+1,mallocfunc,basetype,basebytesize);
			new StoreInst(gep2,tmp,currentBlock);
			BinaryInst add=new BinaryInst(countload,new ConstInt(1),BinaryOp.add,currentBlock);
			new StoreInst(countaddr,add,currentBlock);
			new BrInst(null,conditionblock,null,currentBlock);

			currentBlock=endblock;


		}
		return bitcast2;
	}
}
