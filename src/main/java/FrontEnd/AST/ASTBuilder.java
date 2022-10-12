package FrontEnd.AST;

import FrontEnd.AST.DefNodeSet.BaseDefNode;
import FrontEnd.AST.DefNodeSet.ClassDefNode;
import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.ExprNodeSet.*;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstBoolExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstIntExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstStringExprNode;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.NullExprNode;
import FrontEnd.AST.OtherNodeSet.BlockNode;
import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import FrontEnd.AST.OtherNodeSet.ParaListNode;
import FrontEnd.AST.StatNodeSet.*;
import FrontEnd.AST.TypeNodeSet.*;
import FrontEnd.Parser.MxBaseVisitor;
import FrontEnd.Parser.MxParser;
import Utils.Position;
import Utils.SemanticError;

import java.util.ArrayList;

public class ASTBuilder extends MxBaseVisitor<ASTBaseNode> {
	@Override public ASTBaseNode visitProgram(MxParser.ProgramContext ctx) {
		ArrayList<BaseDefNode> deflist=new ArrayList<>();
		for(int i=0;i<ctx.defAllType().size();i++){
			deflist.add((BaseDefNode) visit(ctx.defAllType().get(i)));
		}
		return new RootNode(deflist,new Position(ctx));
	}
	@Override public ASTBaseNode visitDefAllType(MxParser.DefAllTypeContext ctx) {
		return null;
	}
	@Override public ASTBaseNode visitFunctionDefinitionStatement(MxParser.FunctionDefinitionStatementContext ctx) {
		return new FuncDefNode(ctx.VOID()==null?null:new VoidTypeNode(new Position(ctx)), ctx.IDENTIFIER().getText(),
				(ParaListNode) visit(ctx.parameterList()), (BlockNode) visit(ctx.block()), new Position(ctx));
	}
	@Override public ASTBaseNode visitClassDefinitionStatement(MxParser.ClassDefinitionStatementContext ctx) {
		ArrayList<VarDefNode> varlist=new ArrayList<>();
		ArrayList<FuncDefNode> funclist=new ArrayList<>();
		ArrayList<ClassConstructorNode> classconstructorlist=new ArrayList<>();
		for(int i=0;i<ctx.variableDefinitionStatement().size();i++){
			varlist.add((VarDefNode) visit(ctx.variableDefinitionStatement().get(i)));
		}
		for(int i=0;i<ctx.functionDefinitionStatement().size();i++){
			funclist.add((FuncDefNode) visit(ctx.functionDefinitionStatement().get(i)));
		}
		for(int i=0;i<ctx.classConstructorStatement().size();i++){
			classconstructorlist.add((ClassConstructorNode) visit(ctx.classConstructorStatement().get(i)));
		}
		return new ClassDefNode(ctx.IDENTIFIER().getText(),varlist,funclist,classconstructorlist,new Position(ctx));
	}
	@Override public ASTBaseNode visitClassConstructorStatement(MxParser.ClassConstructorStatementContext ctx) {
		return new ClassConstructorNode(ctx.IDENTIFIER().getText(),(ParaListNode) visit(ctx.parameterList()),
				(BlockNode) visit(ctx.block()),new Position(ctx));
	}
	@Override public ASTBaseNode visitVariableDefinitionStatement(MxParser.VariableDefinitionStatementContext ctx) {
		return null;
	}
	@Override public ASTBaseNode visitVariableDefinitionList(MxParser.VariableDefinitionListContext ctx) {
		return null;
	}
	@Override public ASTBaseNode visitVariableDefinitionSingle(MxParser.VariableDefinitionSingleContext ctx) {//返回的VarDefNode不带type
		return new VarDefNode(null,ctx.IDENTIFIER().getText(),
				ctx.expression()==null?null: (BaseExprNode) visit(ctx.expression()),new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_for(MxParser.Stat_forContext ctx) {
		ArrayList<VarDefNode> initdeflist;
		ArrayList<BaseExprNode> initexprlist;
		BlockNode forblock;

		if(ctx.init1==null)initdeflist=null;
		else {
			initdeflist=new ArrayList<>();
			BaseTypeNode type=(BaseTypeNode) visit(ctx.init1.type());
			for(int i=0;i<ctx.init1.variableDefinitionSingle().size();i++){
				VarDefNode tmp=(VarDefNode)visit(ctx.init1.variableDefinitionSingle().get(i));
				tmp.vartype=type;
				initdeflist.add(tmp);
			}
		}

		if(ctx.init2==null)initexprlist=null;
		else {
			initexprlist=new ArrayList<>();
			for(int i=0;i<ctx.init2.expression().size();i++){
				initexprlist.add((BaseExprNode) visit(ctx.init2.expression().get(i)));
			}
		}

		if(ctx.for1!=null)forblock=(BlockNode) visit(ctx.for1);
		else forblock=(BlockNode) visit(ctx.for2);

		return new ForStatNode(initdeflist,initexprlist, (BaseExprNode) visit(ctx.condition),
				ctx.update==null?null:(BaseExprNode) visit(ctx.update),
				forblock,new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_while(MxParser.Stat_whileContext ctx) {
		BlockNode whileblock;
		if(ctx.while1!=null)whileblock=(BlockNode) visit(ctx.while1);
		else whileblock=(BlockNode) visit(ctx.while2);
		return new WhileStatNode((BaseExprNode) visit(ctx.condition), whileblock, new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_if(MxParser.Stat_ifContext ctx) {
		BlockNode ifblock,elseblock;
		if(ctx.if1!=null)ifblock=(BlockNode) visit(ctx.if1);
		else ifblock=(BlockNode) visit(ctx.if2);
		if(ctx.else1!=null)elseblock=(BlockNode) visit(ctx.else1);
		else if(ctx.else2!=null)elseblock=(BlockNode) visit(ctx.else2);
		else elseblock=null;
		return new IfStatNode((BaseExprNode) visit(ctx.condition), ifblock, elseblock, new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_return(MxParser.Stat_returnContext ctx) {
		return new ReturnStatNode(ctx.expression()==null?null:(BaseExprNode) visit(ctx.expression()), new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_continue(MxParser.Stat_continueContext ctx) {
		return new ContinueStatNode(new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_break(MxParser.Stat_breakContext ctx) {
		return new BreakStatNode(new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_vardef(MxParser.Stat_vardefContext ctx) {
		ArrayList<VarDefNode> vardeflist = new ArrayList<>();
		BaseTypeNode type=(BaseTypeNode) visit(ctx.variableDefinitionStatement().variableDefinitionList().type());
		for(int i=0;i<ctx.variableDefinitionStatement().variableDefinitionList().variableDefinitionSingle().size();i++){
			VarDefNode tmp=(VarDefNode)visit(ctx.variableDefinitionStatement().variableDefinitionList().variableDefinitionSingle().get(i));
			tmp.vartype=type;
			vardeflist.add(tmp);
		}
		return new VarDefStatNode(vardeflist,new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_expression(MxParser.Stat_expressionContext ctx) {
		return new ExprStatNode((BaseExprNode) visit(ctx.expression()),new Position(ctx));
	}
	@Override public ASTBaseNode visitStat_empty(MxParser.Stat_emptyContext ctx) { return null; }
	@Override public ASTBaseNode visitBlock(MxParser.BlockContext ctx) {
		ArrayList<BaseStatNode> statlist=new ArrayList<>();
		for(int i=0;i<ctx.statement().size();i++){
			statlist.add((BaseStatNode) visit(ctx.statement().get(i)));
		}
		return new BlockNode(statlist,new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_lambda(MxParser.Expr_lambdaContext ctx) {
		return new LambdaExprNode(ctx.children.get(2).getText().equals("&"), (ParaListNode) visit(ctx.parameterList()),
				(BlockNode) visit(ctx.block()), (ParaDataListNode) visit(ctx.parameterdataList()), new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_assign(MxParser.Expr_assignContext ctx) {
		return new AssignExprNode((BaseExprNode) visit(ctx.operand1),(BaseExprNode) visit(ctx.operand2),new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_binary(MxParser.Expr_binaryContext ctx) {
		BinaryExprNode.BinaryOp op;
		if(ctx.op.getText().equals("+"))op= BinaryExprNode.BinaryOp.ADD;
		else if(ctx.op.getText().equals("-"))op= BinaryExprNode.BinaryOp.SUB;
		else if(ctx.op.getText().equals("*"))op= BinaryExprNode.BinaryOp.MUL;
		else if(ctx.op.getText().equals("/"))op= BinaryExprNode.BinaryOp.DIV;
		else if(ctx.op.getText().equals("%"))op= BinaryExprNode.BinaryOp.MOD;
		else if(ctx.op.getText().equals("<<"))op= BinaryExprNode.BinaryOp.LEFT_SHIFT;
		else if(ctx.op.getText().equals(">>"))op= BinaryExprNode.BinaryOp.RIGHT_SHIFT;
		else if(ctx.op.getText().equals("&"))op= BinaryExprNode.BinaryOp.AND;
		else if(ctx.op.getText().equals("|"))op= BinaryExprNode.BinaryOp.OR;
		else if(ctx.op.getText().equals("^"))op= BinaryExprNode.BinaryOp.XOR;
		else if(ctx.op.getText().equals("&&"))op= BinaryExprNode.BinaryOp.LOGIC_AND;
		else if(ctx.op.getText().equals("||"))op= BinaryExprNode.BinaryOp.LOGIC_OR;
		else if(ctx.op.getText().equals("<"))op= BinaryExprNode.BinaryOp.LESS;
		else if(ctx.op.getText().equals("<="))op= BinaryExprNode.BinaryOp.LEQ;
		else if(ctx.op.getText().equals(">"))op= BinaryExprNode.BinaryOp.GREATER;
		else if(ctx.op.getText().equals(">="))op= BinaryExprNode.BinaryOp.GEQ;
		else if(ctx.op.getText().equals("=="))op= BinaryExprNode.BinaryOp.EQ;
		else op= BinaryExprNode.BinaryOp.NEQ;
		return new BinaryExprNode((BaseExprNode) visit(ctx.operand1),(BaseExprNode) visit(ctx.operand2), op,new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_singleafter(MxParser.Expr_singleafterContext ctx) {
		SingleExprNode.SingleOp op;
		if(ctx.op.getText().equals("++"))op=SingleExprNode.SingleOp.LASADD2;
		else op=SingleExprNode.SingleOp.LASSUB2;
		return new SingleExprNode((BaseExprNode) visit(ctx.expression()), op,new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_singlebefore(MxParser.Expr_singlebeforeContext ctx) {
		SingleExprNode.SingleOp op;
		if(ctx.op.getText().equals("+"))op=SingleExprNode.SingleOp.ADD;
		else if(ctx.op.getText().equals("-"))op=SingleExprNode.SingleOp.SUB;
		else if(ctx.op.getText().equals("!"))op=SingleExprNode.SingleOp.LOGICNOT;
		else if(ctx.op.getText().equals("~"))op=SingleExprNode.SingleOp.BITNOT;
		else if(ctx.op.getText().equals("++"))op=SingleExprNode.SingleOp.PREADD2;
		else op=SingleExprNode.SingleOp.PRESUB2;
		return new SingleExprNode((BaseExprNode) visit(ctx.expression()), op,new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_function(MxParser.Expr_functionContext ctx) {
		return new FuncExprNode((BaseExprNode) visit(ctx.expression()),(ParaDataListNode) visit(ctx.parameterdataList()),new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_member(MxParser.Expr_memberContext ctx) {
		return new MemberExprNode((BaseExprNode) visit(ctx.expression()),ctx.IDENTIFIER().getText(),new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_bracket(MxParser.Expr_bracketContext ctx) {
		return visit(ctx.expression());
	}
	@Override public ASTBaseNode visitExpr_array(MxParser.Expr_arrayContext ctx) {
		return new ArrayExprNode((BaseExprNode) visit(ctx.array), (BaseExprNode) visit(ctx.index),new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_new(MxParser.Expr_newContext ctx) {
		return visit(ctx.newformat());
	}
	@Override public ASTBaseNode visitExpr_THIS(MxParser.Expr_THISContext ctx) {
		return new ThisExprNode(new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_ID(MxParser.Expr_IDContext ctx) {
		return new IdExprNode(ctx.IDENTIFIER().getText(),new Position(ctx));
	}
	@Override public ASTBaseNode visitExpr_const(MxParser.Expr_constContext ctx) {
		return visit(ctx.constant());
	}
	@Override public ASTBaseNode visitExpressionList(MxParser.ExpressionListContext ctx) {
		return null;
	}
	@Override public ASTBaseNode visitParameterdataList(MxParser.ParameterdataListContext ctx) {
		ArrayList<BaseExprNode> paradatalist=new ArrayList<>();
		for(int i=0;i<ctx.expression().size();i++){
			paradatalist.add((BaseExprNode) visit(ctx.expression().get(i)));
		}
		return new ParaDataListNode(paradatalist,new Position(ctx));
	}
	@Override public ASTBaseNode visitParameterList(MxParser.ParameterListContext ctx) {
		ArrayList<VarDefNode> vardeflist=new ArrayList<>();
		for(int i=0;i<ctx.type().size();i++){
			BaseTypeNode type=(BaseTypeNode)visit(ctx.type().get(i));
			String name=ctx.IDENTIFIER().get(i).getText();
			vardeflist.add(new VarDefNode(type,name,null, new Position(ctx)));
		}
		return new ParaListNode(vardeflist, new Position(ctx));
	}
	@Override public ASTBaseNode visitConstant(MxParser.ConstantContext ctx) {
		if(ctx.INT_CONSTANT()!=null)return new ConstIntExprNode(Integer.parseInt(ctx.INT_CONSTANT().getText()),new Position(ctx));
		if(ctx.BOOL_CONSTANT()!=null)return new ConstBoolExprNode(Boolean.parseBoolean(ctx.BOOL_CONSTANT().getText()),new Position(ctx));
		if(ctx.STRING_CONSTANT()!=null)return new ConstStringExprNode(ctx.STRING_CONSTANT().getText(),new Position(ctx));
		return new NullExprNode(new Position(ctx));
	}
	@Override public ASTBaseNode visitNewformat_error(MxParser.Newformat_errorContext ctx){
		throw new SemanticError("Error in new an array",new Position(ctx));
	}
	@Override public ASTBaseNode visitNewformat_multiArray(MxParser.Newformat_multiArrayContext ctx) {
		ArrayList<BaseExprNode> sizelist=new ArrayList<>();
		for(int i=0;i<ctx.expression().size();i++){
			BaseExprNode tmp= (BaseExprNode) visit(ctx.expression().get(i));
			if((tmp instanceof ThisExprNode)||(tmp instanceof NewformatExprNode))throw new SemanticError("Error in new an array",new Position(ctx));
			if(!(tmp.returntype instanceof IntTypeNode))throw new SemanticError("Error in new an array",new Position(ctx));
			sizelist.add(tmp);
		}
		int dim=(ctx.getChildCount()-ctx.expression().size()-1)/2;
		return new NewformatExprNode( (BaseTypeNode) visit(ctx.nonarraytype()),dim,sizelist,new Position(ctx));
	}
	@Override public ASTBaseNode visitNewformat_class(MxParser.Newformat_classContext ctx) {
		BaseTypeNode type=(BaseTypeNode) visit(ctx.nonarraytype());
		if(!(type instanceof ClassTypeNode))throw new SemanticError("Error in new an array",new Position(ctx));
		return new NewformatExprNode(type, 0,new ArrayList<>(),new Position(ctx));
	}
	@Override public ASTBaseNode visitNewformat_normal(MxParser.Newformat_normalContext ctx) {
		return new NewformatExprNode( (BaseTypeNode) visit(ctx.nonarraytype()), 0,new ArrayList<>(),new Position(ctx));
	}
	@Override public ASTBaseNode visitNonarraytype(MxParser.NonarraytypeContext ctx) {
		if(ctx.INT()!=null)return new IntTypeNode(new Position(ctx));
		if(ctx.BOOL()!=null)return new BoolTypeNode(new Position(ctx));
		if(ctx.STRING()!=null)return new StringTypeNode(new Position(ctx));
		return new ClassTypeNode(ctx.IDENTIFIER().getText(),new Position(ctx));
	}
	@Override public ASTBaseNode visitType_array(MxParser.Type_arrayContext ctx) {
		BaseTypeNode ans= (BaseTypeNode) visit(ctx.type());
		ans.dim++;
		return ans;
	}
	@Override public ASTBaseNode visitType_basic(MxParser.Type_basicContext ctx) {
		return visit(ctx.nonarraytype());
	}
}
