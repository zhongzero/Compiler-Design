package FrontEnd.AST;

import FrontEnd.AST.DefNodeSet.*;
import FrontEnd.AST.ExprNodeSet.*;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.*;
import FrontEnd.AST.OtherNodeSet.*;
import FrontEnd.AST.StatNodeSet.*;
import FrontEnd.AST.TypeNodeSet.*;


public abstract class ASTVisitor {
	abstract void visitIntType(IntTypeNode node);
	abstract void visitBoolType(BoolTypeNode node);
	abstract void visitStringType(StringTypeNode node);
	abstract void visitNullType(NullTypeNode node);
	abstract void visitClassType(ClassTypeNode node);
	abstract void visitArrayType(ArrayTypeNode node);
	abstract void visitVoidType(VoidTypeNode node);

	abstract void visitConstIntExpr(ConstIntExprNode node);
	abstract void visitConstBoolExpr(ConstBoolExprNode node);
	abstract void visitConstStringExpr(ConstStringExprNode node);
	abstract void visitNullExpr(NullExprNode node);
	abstract void visitIdExpr(IdExprNode node);
	abstract void visitArrayExpr(ArrayExprNode node);
	abstract void visitMemberExpr(MemberExprNode node);
	abstract void visitThisExpr(ThisExprNode node);
	abstract void visitNewformatExpr(NewformatExprNode node);
	abstract void visitFuncExpr(FuncExprNode node);
	abstract void visitSingleExpr(SingleExprNode node);
	abstract void visitBinaryExpr(BinaryExprNode node);
	abstract void visitAssignExpr(AssignExprNode node);
	abstract void visitLambdaExpr(LambdaExprNode node);

	abstract void visitExprStat(ExprStatNode node);
	abstract void visitVarDefStat(VarDefStatNode node);
	abstract void visitBreakStat(BreakStatNode node);
	abstract void visitContinueStat(ContinueStatNode node);
	abstract void visitReturnStat(ReturnStatNode node);
	abstract void visitIfStat(IfStatNode node);
	abstract void visitWhileStat(WhileStatNode node);
	abstract void visitForStat(ForStatNode node);

	abstract void visitBlock(BlockNode node);
	abstract void visitParaList(ParaListNode node);
	abstract void visitParaDataList(ParaDataListNode node);
	abstract void visitClassConstructor(ClassConstructorNode node);

	abstract void visitVarDef(VarDefNode node);
	abstract void visitFuncDef(FuncDefNode node);
	abstract void visitClassDef(ClassDefNode node);

	abstract void visitRoot(RootNode node);


	void visit(IntTypeNode node){
		node.accept(this);
	}
	void visit(BoolTypeNode node){
		node.accept(this);
	}
	void visit(StringTypeNode node){
		node.accept(this);
	}
	void visit(NullTypeNode node){
		node.accept(this);
	}
	void visit(ClassTypeNode node){
		node.accept(this);
	}
	void visit(ArrayTypeNode node){
		node.accept(this);
	}
	void visit(VoidTypeNode node){
		node.accept(this);
	}

	void visit(ConstIntExprNode node){
		node.accept(this);
	}
	void visit(ConstBoolExprNode node){
		node.accept(this);
	}
	void visit(ConstStringExprNode node){
		node.accept(this);
	}
	void visit(NullExprNode node){
		node.accept(this);
	}
	void visit(IdExprNode node){
		node.accept(this);
	}
	void visit(ArrayExprNode node){
		node.accept(this);
	}
	void visit(MemberExprNode node){
		node.accept(this);
	}
	void visit(ThisExprNode node){
		node.accept(this);
	}
	void visit(NewformatExprNode node){
		node.accept(this);
	}
	void visit(FuncExprNode node){
		node.accept(this);
	}
	void visit(SingleExprNode node){
		node.accept(this);
	}
	void visit(BinaryExprNode node){
		node.accept(this);
	}
	void visit(AssignExprNode node){
		node.accept(this);
	}
	void visit(LambdaExprNode node){
		node.accept(this);
	}

	void visit(ExprStatNode node){
		node.accept(this);
	}
	void visit(VarDefStatNode node){
		node.accept(this);
	}
	void visit(BreakStatNode node){
		node.accept(this);
	}
	void visit(ContinueStatNode node){
		node.accept(this);
	}
	void visit(ReturnStatNode node){
		node.accept(this);
	}
	void visit(IfStatNode node){
		node.accept(this);
	}
	void visit(WhileStatNode node){
		node.accept(this);
	}
	void visit(ForStatNode node){
		node.accept(this);
	}

	void visit(BlockNode node){
		node.accept(this);
	}
	void visit(ParaListNode node){
		node.accept(this);
	}
	void visit(ParaDataListNode node){
		node.accept(this);
	}
	void visit(ClassConstructorNode node){
		node.accept(this);
	}

	void visit(VarDefNode node){
		node.accept(this);
	}
	void visit(FuncDefNode node){
		node.accept(this);
	}
	void visit(ClassDefNode node){
		node.accept(this);
	}

	void visit(RootNode node){
		node.accept(this);
	}
}
