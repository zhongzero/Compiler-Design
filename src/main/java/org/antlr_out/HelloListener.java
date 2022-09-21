// Generated from E:/Compiler-Design/src/main/java/org/compiler_design\Hello.g4 by ANTLR 4.10.1
package org.antlr_out;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link HelloParser}.
 */
public interface HelloListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link HelloParser#rr}.
	 * @param ctx the parse tree
	 */
	void enterRr(HelloParser.RrContext ctx);
	/**
	 * Exit a parse tree produced by {@link HelloParser#rr}.
	 * @param ctx the parse tree
	 */
	void exitRr(HelloParser.RrContext ctx);
}