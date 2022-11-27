package FrontEnd.AST;

import FrontEnd.AST.DefNodeSet.*;
import FrontEnd.AST.ExprNodeSet.*;
import FrontEnd.AST.ExprNodeSet.ConstExprNode.*;
import FrontEnd.AST.OtherNodeSet.*;
import FrontEnd.AST.StatNodeSet.*;
import FrontEnd.AST.TypeNodeSet.*;



public abstract class ASTVisitor<T> {
	public abstract T visitRoot(RootNode node);

	public abstract T visitVarDef(VarDefNode node);
	public abstract T visitFuncDef(FuncDefNode node);
	public abstract T visitClassDef(ClassDefNode node);


	public abstract T visitClassConstructor(ClassConstructorNode node);
	public abstract T visitParaList(ParaListNode node);
	public abstract T visitParaDataList(ParaDataListNode node);

	public abstract T visitBlockStat(BlockStatNode node);
	public abstract T visitExprStat(ExprStatNode node);
	public abstract T visitVarDefStat(VarDefStatNode node);
	public abstract T visitBreakStat(BreakStatNode node);
	public abstract T visitContinueStat(ContinueStatNode node);
	public abstract T visitReturnStat(ReturnStatNode node);
	public abstract T visitIfStat(IfStatNode node);
	public abstract T visitWhileStat(WhileStatNode node);
	public abstract T visitForStat(ForStatNode node);


	public abstract T visitConstIntExpr(ConstIntExprNode node);
	public abstract T visitConstBoolExpr(ConstBoolExprNode node);
	public abstract T visitConstStringExpr(ConstStringExprNode node);
	public abstract T visitNullExpr(NullExprNode node);
	public abstract T visitIdExpr(IdExprNode node);
	public abstract T visitArrayExpr(ArrayExprNode node);
	public abstract T visitMemberExpr(MemberExprNode node);
	public abstract T visitThisExpr(ThisExprNode node);
	public abstract T visitNewformatExpr(NewformatExprNode node);
	public abstract T visitFuncExpr(FuncExprNode node);
	public abstract T visitSingleExpr(SingleExprNode node);
	public abstract T visitBinaryExpr(BinaryExprNode node);
	public abstract T visitAssignExpr(AssignExprNode node);
	public abstract T visitLambdaExpr(LambdaExprNode node);

	public abstract T visitIntType(IntTypeNode node);
	public abstract T visitBoolType(BoolTypeNode node);
	public abstract T visitStringType(StringTypeNode node);
	public abstract T visitNullType(NullTypeNode node);
	public abstract T visitClassType(ClassTypeNode node);
	public abstract T visitArrayType(ArrayTypeNode node);
	public abstract T visitVoidType(VoidTypeNode node);






	public T visit(RootNode node){
		return node.accept(this);
	}

	public T visit(VarDefNode node){
		return node.accept(this);
	}
	public T visit(FuncDefNode node){
		return node.accept(this);
	}
	public T visit(ClassDefNode node){
		return node.accept(this);
	}

	public T visit(ParaListNode node){
		return node.accept(this);
	}
	public T visit(ParaDataListNode node){
		return node.accept(this);
	}
	public T visit(ClassConstructorNode node){
		return node.accept(this);
	}

	public T visit(BlockStatNode node){
		return node.accept(this);
	}
	public T visit(ExprStatNode node){
		return node.accept(this);
	}
	public T visit(VarDefStatNode node){
		return node.accept(this);
	}
	public T visit(BreakStatNode node){
		return node.accept(this);
	}
	public T visit(ContinueStatNode node){
		return node.accept(this);
	}
	public T visit(ReturnStatNode node){
		return node.accept(this);
	}
	public T visit(IfStatNode node){
		return node.accept(this);
	}
	public T visit(WhileStatNode node){
		return node.accept(this);
	}
	public T visit(ForStatNode node){
		return node.accept(this);
	}


	public T visit(ConstIntExprNode node){
		return node.accept(this);
	}
	public T visit(ConstBoolExprNode node){
		return node.accept(this);
	}
	public T visit(ConstStringExprNode node){
		return node.accept(this);
	}
	public T visit(NullExprNode node){
		return node.accept(this);
	}
	public T visit(IdExprNode node){
		return node.accept(this);
	}
	public T visit(ArrayExprNode node){
		return node.accept(this);
	}
	public T visit(MemberExprNode node){
		return node.accept(this);
	}
	public T visit(ThisExprNode node){
		return node.accept(this);
	}
	public T visit(NewformatExprNode node){
		return node.accept(this);
	}
	public T visit(FuncExprNode node){
		return node.accept(this);
	}
	public T visit(SingleExprNode node){
		return node.accept(this);
	}
	public T visit(BinaryExprNode node){
		return node.accept(this);
	}
	public T visit(AssignExprNode node){
		return node.accept(this);
	}
	public T visit(LambdaExprNode node){
		return node.accept(this);
	}

	public T visit(IntTypeNode node){return node.accept(this);}
	public T visit(BoolTypeNode node){
		return node.accept(this);
	}
	public T visit(StringTypeNode node){
		return node.accept(this);
	}
	public T visit(NullTypeNode node){
		return node.accept(this);
	}
	public T visit(ClassTypeNode node){
		return node.accept(this);
	}
	public T visit(ArrayTypeNode node){
		return node.accept(this);
	}
	public T visit(VoidTypeNode node){
		return node.accept(this);
	}

	public T visit(ASTBaseNode node){return node.accept(this);}
	public T visit(BaseTypeNode node){return node.accept(this);}
	public T visit(BaseExprNode node){return node.accept(this);}
	public T visit(BaseStatNode node){return node.accept(this);}
	public T visit(BaseDefNode node){return node.accept(this);}
}
