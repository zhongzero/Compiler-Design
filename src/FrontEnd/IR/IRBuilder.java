//package FrontEnd.IR;
//
//import FrontEnd.AST.ASTVisitor;
//import FrontEnd.AST.DefNodeSet.ClassDefNode;
//import FrontEnd.AST.DefNodeSet.FuncDefNode;
//import FrontEnd.AST.DefNodeSet.VarDefNode;
//import FrontEnd.AST.ExprNodeSet.*;
//import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstBoolExprNode;
//import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstIntExprNode;
//import FrontEnd.AST.ExprNodeSet.ConstExprNode.ConstStringExprNode;
//import FrontEnd.AST.ExprNodeSet.ConstExprNode.NullExprNode;
//import FrontEnd.AST.OtherNodeSet.ClassConstructorNode;
//import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
//import FrontEnd.AST.OtherNodeSet.ParaListNode;
//import FrontEnd.AST.RootNode;
//import FrontEnd.AST.StatNodeSet.*;
//import FrontEnd.AST.TypeNodeSet.*;
//import FrontEnd.IR.BasicBlock.IRBasicBlock;
//import FrontEnd.IR.Function.IRFunction;
//import FrontEnd.IR.Module.IRModule;
//import FrontEnd.IR.Utils.IRScope;
//import FrontEnd.SemanticCheck.Utils.GlobalScope;
//
//import java.util.Stack;
//
//public class IRBuilder extends ASTVisitor {
//	public IRModule irModule;
//	IRFunction currentFunction;
//	IRBasicBlock currentBlock;
//
//	IRScope IRCurrentScope=new IRScope(null);
//
//	GlobalScope semanticGlobalScope;
//	ClassDefNode astCurrentClass=null;
//
//	Stack<IRBasicBlock> ;
//
//	boolean have_MainInit=false;
//
//
//
//	public IRBuilder(GlobalScope _semanticGlobalScope){
//		semanticGlobalScope=_semanticGlobalScope;
//	}
//	@Override
//	public void visitRoot(RootNode node){
//
//	}
//
//	@Override
//	public void visitVarDef(VarDefNode node){
//
//	}
//	@Override
//	public void visitFuncDef(FuncDefNode node){
//
//	}
//	@Override
//	public void visitClassDef(ClassDefNode node){
//
//	}
//
//
//	@Override
//	public void visitParaList(ParaListNode node){
//
//	}
//	@Override
//	public void visitParaDataList(ParaDataListNode node){
//
//	}
//	@Override
//	public void visitClassConstructor(ClassConstructorNode node){
//
//	}
//
//	@Override
//	public void visitBlockStat(BlockStatNode node){
//
//	}
//	@Override
//	public void visitExprStat(ExprStatNode node){
//
//	}
//	@Override
//	public void visitVarDefStat(VarDefStatNode node){
//
//	}
//	@Override
//	public void visitBreakStat(BreakStatNode node){
//
//	}
//	@Override
//	public void visitContinueStat(ContinueStatNode node){
//
//	}
//	@Override
//	public void visitReturnStat(ReturnStatNode node){
//
//	}
//	@Override
//	public void visitIfStat(IfStatNode node){
//
//	}
//	@Override
//	public void visitWhileStat(WhileStatNode node){
//
//	}
//	@Override
//	public void visitForStat(ForStatNode node){
//
//	}
//
//
//	@Override
//	public void visitConstIntExpr(ConstIntExprNode node){
//
//	}
//	@Override
//	public void visitConstBoolExpr(ConstBoolExprNode node){
//
//	}
//	@Override
//	public void visitConstStringExpr(ConstStringExprNode node){
//
//	}
//	@Override
//	public void visitNullExpr(NullExprNode node){
//
//	}
//	@Override
//	public void visitIdExpr(IdExprNode node){
//
//	}
//	@Override
//	public void visitArrayExpr(ArrayExprNode node){
//
//	}
//	@Override
//	public void visitMemberExpr(MemberExprNode node){
//
//	}
//	@Override
//	public void visitThisExpr(ThisExprNode node){
//
//	}
//	@Override
//	public void visitNewformatExpr(NewformatExprNode node){
//
//	}
//	@Override
//	public void visitFuncExpr(FuncExprNode node){
//
//	}
//	@Override
//	public void visitSingleExpr(SingleExprNode node){
//
//	}
//	@Override
//	public void visitBinaryExpr(BinaryExprNode node){
//
//	}
//	@Override
//	public void visitAssignExpr(AssignExprNode node){
//
//	}
//	@Override
//	public void visitLambdaExpr(LambdaExprNode node){
//
//	}
//
//	@Override
//	public void visitIntType(IntTypeNode node){
//
//	}
//	@Override
//	public void visitBoolType(BoolTypeNode node){
//
//	}
//	@Override
//	public void visitStringType(StringTypeNode node){
//
//	}
//	@Override
//	public void visitNullType(NullTypeNode node){
//
//	}
//	@Override
//	public void visitClassType(ClassTypeNode node){
//
//	}
//	@Override
//	public void visitArrayType(ArrayTypeNode node){
//
//	}
//	@Override
//	public void visitVoidType(VoidTypeNode node){
//
//	}
//}
