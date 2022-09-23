package org.compiler_design;
import org.compiler_design.antlr_out.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.util.HashMap;
import java.util.Map;

public class EvalVisitor extends HelloBaseVisitor<Integer> {
	HashMap<String,Integer> memory=new HashMap<String,Integer>();
//	prog: stat+;
	@Override public Integer visitProg(HelloParser.ProgContext ctx) {
		return visitChildren(ctx);
	}
//	stat: expr NEWLINE				#printExpr
	@Override public Integer visitPrintExpr(HelloParser.PrintExprContext ctx) {
		Integer value=visit(ctx.expr());
		System.out.println(value);
		return 0;
	}
//	stat: ID '=' expr NEWLINE		#assign
	@Override public Integer visitAssign(HelloParser.AssignContext ctx) {
		String id=ctx.ID().getText();
		int value=visit(ctx.expr());
		memory.put(id,value);
		return value;
	}
//	stat: NEWLINE					#blank
	@Override public Integer visitBlank(HelloParser.BlankContext ctx) { return 0; }
//	expr: '(' expr ')'				#parens
	@Override public Integer visitParens(HelloParser.ParensContext ctx) {
		return visit(ctx.expr());
	}
//	expr: expr ('*'|'/') expr		#MulDiv
	@Override public Integer visitMulDiv(HelloParser.MulDivContext ctx) {
		int left=visit(ctx.expr(0));
		int right=visit(ctx.expr(1));
		if(ctx.op.getType()==HelloParser.MUL)return left*right;
		else return left/right;
	}
//	expr: expr op=('+'|'-') expr		#AddSub
	@Override public Integer visitAddSub(HelloParser.AddSubContext ctx) {
		int left=visit(ctx.expr(0));
		int right=visit(ctx.expr(1));
		if(ctx.op.getType()==HelloParser.ADD)return left+right;
		else return left-right;
	}
//	expr: ID						#id
	@Override public Integer visitId(HelloParser.IdContext ctx) {
		String id=ctx.ID().getText();
		if(memory.containsKey(id))return memory.get(id);
		return -1;
	}
//	expr: INT						#int
	@Override public Integer visitInt(HelloParser.IntContext ctx) {
		return Integer.valueOf(ctx.INT().getText());
	}
}