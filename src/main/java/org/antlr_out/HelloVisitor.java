// Generated from E:/Compiler-Design/src/main/java/org/compiler_design\Hello.g4 by ANTLR 4.10.1
package org.antlr_out;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link HelloParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface HelloVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link HelloParser#rr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRr(HelloParser.RrContext ctx);
}