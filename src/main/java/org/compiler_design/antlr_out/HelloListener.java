// Generated from E:/Compiler-Design/src/main/java/org/compiler_design/antlr_out\Hello.g4 by ANTLR 4.10.1
package org.compiler_design.antlr_out;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link HelloParser}.
 */
public interface HelloListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link HelloParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(HelloParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link HelloParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(HelloParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterPrintExpr(HelloParser.PrintExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitPrintExpr(HelloParser.PrintExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assign}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssign(HelloParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssign(HelloParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code blank}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterBlank(HelloParser.BlankContext ctx);
	/**
	 * Exit a parse tree produced by the {@code blank}
	 * labeled alternative in {@link HelloParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitBlank(HelloParser.BlankContext ctx);
	/**
	 * Enter a parse tree produced by the {@code parens}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParens(HelloParser.ParensContext ctx);
	/**
	 * Exit a parse tree produced by the {@code parens}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParens(HelloParser.ParensContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMulDiv(HelloParser.MulDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMulDiv(HelloParser.MulDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSub(HelloParser.AddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSub(HelloParser.AddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code id}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterId(HelloParser.IdContext ctx);
	/**
	 * Exit a parse tree produced by the {@code id}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitId(HelloParser.IdContext ctx);
	/**
	 * Enter a parse tree produced by the {@code int}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInt(HelloParser.IntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code int}
	 * labeled alternative in {@link HelloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInt(HelloParser.IntContext ctx);
}