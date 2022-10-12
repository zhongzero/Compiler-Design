// Generated from E:/Compiler-Design/src/main/java/FrontEnd/Parser\Mx.g4 by ANTLR 4.10.1
package FrontEnd.Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxParser}.
 */
public interface MxListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#defAllType}.
	 * @param ctx the parse tree
	 */
	void enterDefAllType(MxParser.DefAllTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#defAllType}.
	 * @param ctx the parse tree
	 */
	void exitDefAllType(MxParser.DefAllTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#functionDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDefinitionStatement(MxParser.FunctionDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#functionDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDefinitionStatement(MxParser.FunctionDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void enterClassDefinitionStatement(MxParser.ClassDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void exitClassDefinitionStatement(MxParser.ClassDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classConstructorStatement}.
	 * @param ctx the parse tree
	 */
	void enterClassConstructorStatement(MxParser.ClassConstructorStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classConstructorStatement}.
	 * @param ctx the parse tree
	 */
	void exitClassConstructorStatement(MxParser.ClassConstructorStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#variableDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void enterVariableDefinitionStatement(MxParser.VariableDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#variableDefinitionStatement}.
	 * @param ctx the parse tree
	 */
	void exitVariableDefinitionStatement(MxParser.VariableDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#variableDefinitionList}.
	 * @param ctx the parse tree
	 */
	void enterVariableDefinitionList(MxParser.VariableDefinitionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#variableDefinitionList}.
	 * @param ctx the parse tree
	 */
	void exitVariableDefinitionList(MxParser.VariableDefinitionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#variableDefinitionSingle}.
	 * @param ctx the parse tree
	 */
	void enterVariableDefinitionSingle(MxParser.VariableDefinitionSingleContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#variableDefinitionSingle}.
	 * @param ctx the parse tree
	 */
	void exitVariableDefinitionSingle(MxParser.VariableDefinitionSingleContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_expression}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_expression(MxParser.Stat_expressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_expression}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_expression(MxParser.Stat_expressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_empty}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_empty(MxParser.Stat_emptyContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_empty}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_empty(MxParser.Stat_emptyContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_vardef}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_vardef(MxParser.Stat_vardefContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_vardef}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_vardef(MxParser.Stat_vardefContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_if}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_if(MxParser.Stat_ifContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_if}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_if(MxParser.Stat_ifContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_for}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_for(MxParser.Stat_forContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_for}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_for(MxParser.Stat_forContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_while}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_while(MxParser.Stat_whileContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_while}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_while(MxParser.Stat_whileContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_break}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_break(MxParser.Stat_breakContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_break}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_break(MxParser.Stat_breakContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_continue}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_continue(MxParser.Stat_continueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_continue}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_continue(MxParser.Stat_continueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_return}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_return(MxParser.Stat_returnContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_return}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_return(MxParser.Stat_returnContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stat_block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStat_block(MxParser.Stat_blockContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stat_block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStat_block(MxParser.Stat_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MxParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MxParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_const}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_const(MxParser.Expr_constContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_const}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_const(MxParser.Expr_constContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_new}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_new(MxParser.Expr_newContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_new}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_new(MxParser.Expr_newContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_assign}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_assign(MxParser.Expr_assignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_assign}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_assign(MxParser.Expr_assignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_function}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_function(MxParser.Expr_functionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_function}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_function(MxParser.Expr_functionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_binary}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_binary(MxParser.Expr_binaryContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_binary}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_binary(MxParser.Expr_binaryContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_array}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_array(MxParser.Expr_arrayContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_array}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_array(MxParser.Expr_arrayContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_lambda}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_lambda(MxParser.Expr_lambdaContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_lambda}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_lambda(MxParser.Expr_lambdaContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_member}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_member(MxParser.Expr_memberContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_member}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_member(MxParser.Expr_memberContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_singlebefore}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_singlebefore(MxParser.Expr_singlebeforeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_singlebefore}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_singlebefore(MxParser.Expr_singlebeforeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_THIS}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_THIS(MxParser.Expr_THISContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_THIS}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_THIS(MxParser.Expr_THISContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_bracket}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_bracket(MxParser.Expr_bracketContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_bracket}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_bracket(MxParser.Expr_bracketContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_singleafter}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_singleafter(MxParser.Expr_singleafterContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_singleafter}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_singleafter(MxParser.Expr_singleafterContext ctx);
	/**
	 * Enter a parse tree produced by the {@code expr_ID}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpr_ID(MxParser.Expr_IDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code expr_ID}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpr_ID(MxParser.Expr_IDContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#parameterdataList}.
	 * @param ctx the parse tree
	 */
	void enterParameterdataList(MxParser.ParameterdataListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#parameterdataList}.
	 * @param ctx the parse tree
	 */
	void exitParameterdataList(MxParser.ParameterdataListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#parameterList}.
	 * @param ctx the parse tree
	 */
	void enterParameterList(MxParser.ParameterListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#parameterList}.
	 * @param ctx the parse tree
	 */
	void exitParameterList(MxParser.ParameterListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(MxParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(MxParser.ConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newformat_error}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void enterNewformat_error(MxParser.Newformat_errorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newformat_error}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void exitNewformat_error(MxParser.Newformat_errorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newformat_multiArray}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void enterNewformat_multiArray(MxParser.Newformat_multiArrayContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newformat_multiArray}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void exitNewformat_multiArray(MxParser.Newformat_multiArrayContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newformat_class}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void enterNewformat_class(MxParser.Newformat_classContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newformat_class}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void exitNewformat_class(MxParser.Newformat_classContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newformat_normal}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void enterNewformat_normal(MxParser.Newformat_normalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newformat_normal}
	 * labeled alternative in {@link MxParser#newformat}.
	 * @param ctx the parse tree
	 */
	void exitNewformat_normal(MxParser.Newformat_normalContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#nonarraytype}.
	 * @param ctx the parse tree
	 */
	void enterNonarraytype(MxParser.NonarraytypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#nonarraytype}.
	 * @param ctx the parse tree
	 */
	void exitNonarraytype(MxParser.NonarraytypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code type_array}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType_array(MxParser.Type_arrayContext ctx);
	/**
	 * Exit a parse tree produced by the {@code type_array}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType_array(MxParser.Type_arrayContext ctx);
	/**
	 * Enter a parse tree produced by the {@code type_basic}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType_basic(MxParser.Type_basicContext ctx);
	/**
	 * Exit a parse tree produced by the {@code type_basic}
	 * labeled alternative in {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType_basic(MxParser.Type_basicContext ctx);
}