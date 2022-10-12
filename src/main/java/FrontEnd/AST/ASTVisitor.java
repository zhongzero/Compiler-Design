package FrontEnd.AST;

import FrontEnd.AST.DefNodeSet.*;
import FrontEnd.AST.ExprNodeSet.*;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.*;
import FrontEnd.AST.OtherNodeSet.*;
import FrontEnd.AST.StatNodeSet.*;
import FrontEnd.AST.TypeNodeSet.*;


public abstract class ASTVisitor {
	public abstract void visitIntType(IntTypeNode node);
	public abstract void visitBoolType(BoolTypeNode node);
	public abstract void visitStringType(StringTypeNode node);
	public abstract void visitNullType(NullTypeNode node);
	public abstract void visitClassType(ClassTypeNode node);
	public abstract void visitArrayType(ArrayTypeNode node);
	public abstract void visitVoidType(VoidTypeNode node);

	public abstract void visitConstIntExpr(ConstIntExprNode node);
	public abstract void visitConstBoolExpr(ConstBoolExprNode node);
	public abstract void visitConstStringExpr(ConstStringExprNode node);
	public abstract void visitNullExpr(NullExprNode node);
	public abstract void visitIdExpr(IdExprNode node);
	public abstract void visitArrayExpr(ArrayExprNode node);
	public abstract void visitMemberExpr(MemberExprNode node);
	public abstract void visitThisExpr(ThisExprNode node);
	public abstract void visitNewformatExpr(NewformatExprNode node);
	public abstract void visitFuncExpr(FuncExprNode node);
	public abstract void visitSingleExpr(SingleExprNode node);
	public abstract void visitBinaryExpr(BinaryExprNode node);
	public abstract void visitAssignExpr(AssignExprNode node);
	public abstract void visitLambdaExpr(LambdaExprNode node);

	public abstract void visitExprStat(ExprStatNode node);
	public abstract void visitVarDefStat(VarDefStatNode node);
	public abstract void visitBreakStat(BreakStatNode node);
	public abstract void visitContinueStat(ContinueStatNode node);
	public abstract void visitReturnStat(ReturnStatNode node);
	public abstract void visitIfStat(IfStatNode node);
	public abstract void visitWhileStat(WhileStatNode node);
	public abstract void visitForStat(ForStatNode node);

	public abstract void visitBlock(BlockStatNode node);
	public abstract void visitParaList(ParaListNode node);
	public abstract void visitParaDataList(ParaDataListNode node);
	public abstract void visitClassConstructor(ClassConstructorNode node);

	public abstract void visitVarDef(VarDefNode node);
	public abstract void visitFuncDef(FuncDefNode node);
	public abstract void visitClassDef(ClassDefNode node);

	public abstract void visitRoot(RootNode node);


	public void visit(IntTypeNode node){
		node.accept(this);
	}
	public void visit(BoolTypeNode node){
		node.accept(this);
	}
	public void visit(StringTypeNode node){
		node.accept(this);
	}
	public void visit(NullTypeNode node){
		node.accept(this);
	}
	public void visit(ClassTypeNode node){
		node.accept(this);
	}
	public void visit(ArrayTypeNode node){
		node.accept(this);
	}
	public void visit(VoidTypeNode node){
		node.accept(this);
	}

	public void visit(ConstIntExprNode node){
		node.accept(this);
	}
	public void visit(ConstBoolExprNode node){
		node.accept(this);
	}
	public void visit(ConstStringExprNode node){
		node.accept(this);
	}
	public void visit(NullExprNode node){
		node.accept(this);
	}
	public void visit(IdExprNode node){
		node.accept(this);
	}
	public void visit(ArrayExprNode node){
		node.accept(this);
	}
	public void visit(MemberExprNode node){
		node.accept(this);
	}
	public void visit(ThisExprNode node){
		node.accept(this);
	}
	public void visit(NewformatExprNode node){
		node.accept(this);
	}
	public void visit(FuncExprNode node){
		node.accept(this);
	}
	public void visit(SingleExprNode node){
		node.accept(this);
	}
	public void visit(BinaryExprNode node){
		node.accept(this);
	}
	public void visit(AssignExprNode node){
		node.accept(this);
	}
	public void visit(LambdaExprNode node){
		node.accept(this);
	}

	public void visit(ExprStatNode node){
		node.accept(this);
	}
	public void visit(VarDefStatNode node){
		node.accept(this);
	}
	public void visit(BreakStatNode node){
		node.accept(this);
	}
	public void visit(ContinueStatNode node){
		node.accept(this);
	}
	public void visit(ReturnStatNode node){
		node.accept(this);
	}
	public void visit(IfStatNode node){
		node.accept(this);
	}
	public void visit(WhileStatNode node){
		node.accept(this);
	}
	public void visit(ForStatNode node){
		node.accept(this);
	}

	public void visit(BlockStatNode node){
		node.accept(this);
	}
	public void visit(ParaListNode node){
		node.accept(this);
	}
	public void visit(ParaDataListNode node){
		node.accept(this);
	}
	public void visit(ClassConstructorNode node){
		node.accept(this);
	}

	public void visit(VarDefNode node){
		node.accept(this);
	}
	public void visit(FuncDefNode node){
		node.accept(this);
	}
	public void visit(ClassDefNode node){
		node.accept(this);
	}

	public void visit(RootNode node){
		node.accept(this);
	}
}
