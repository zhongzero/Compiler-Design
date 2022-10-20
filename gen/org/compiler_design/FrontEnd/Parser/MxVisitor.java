// Generated from E:/Compiler-Design/src/main/java/org/compiler_design/FrontEnd/Parser\Mx.g4 by ANTLR 4.10.1
package org.compiler_design.FrontEnd.Parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#subprogram}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSubprogram(MxParser.SubprogramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functionDefinitionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDefinitionStatement(MxParser.FunctionDefinitionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classDefinitionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDefinitionStatement(MxParser.ClassDefinitionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classInitStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassInitStatement(MxParser.ClassInitStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#variableDefinitionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinitionStatement(MxParser.VariableDefinitionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#variableDefinitionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinitionList(MxParser.VariableDefinitionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#variableDefinitionSingle}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinitionSingle(MxParser.VariableDefinitionSingleContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_expression}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_expression(MxParser.State_expressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_block(MxParser.State_blockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_empty}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_empty(MxParser.State_emptyContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_vardef}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_vardef(MxParser.State_vardefContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_if}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_if(MxParser.State_ifContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_for}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_for(MxParser.State_forContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_while}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_while(MxParser.State_whileContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_break}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_break(MxParser.State_breakContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_continue}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_continue(MxParser.State_continueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code state_return}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState_return(MxParser.State_returnContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_const}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_const(MxParser.Expr_constContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_new}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_new(MxParser.Expr_newContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_lambda}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_lambda(MxParser.Expr_lambdaContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_member}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_member(MxParser.Expr_memberContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_single}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_single(MxParser.Expr_singleContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_assign}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_assign(MxParser.Expr_assignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_THIS}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_THIS(MxParser.Expr_THISContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_bracket}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_bracket(MxParser.Expr_bracketContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_function}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_function(MxParser.Expr_functionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_ID}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_ID(MxParser.Expr_IDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_binary}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_binary(MxParser.Expr_binaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code expr_array}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_array(MxParser.Expr_arrayContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameterList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterList(MxParser.ParameterListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstant(MxParser.ConstantContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newformat_error}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewformat_error(MxParser.Newformat_errorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newformat_multiArray}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewformat_multiArray(MxParser.Newformat_multiArrayContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newformat_class}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewformat_class(MxParser.Newformat_classContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newformat_normal}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewformat_normal(MxParser.Newformat_normalContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#nonarraytype}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNonarraytype(MxParser.NonarraytypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code type_array}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType_array(MxParser.Type_arrayContext ctx);
	/**
	 * Visit a parse tree produced by the {@code type_basic}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType_basic(MxParser.Type_basicContext ctx);
}