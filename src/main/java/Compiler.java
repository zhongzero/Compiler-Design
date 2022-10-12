import Utils.SemanticError;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import FrontEnd.Parser.*;
import FrontEnd.AST.*;

public class Compiler {
	public static void main(String[] args) throws Exception {
//		try {
			CharStream input = CharStreams.fromFileName("E:\\Compiler-Design\\Compiler-2021-testcases\\sema\\array-package\\array-1.mx");//新建一个CharStream读取数据
			System.out.println(input);
			System.out.println("-----------");

			MxLexer lexer = new MxLexer(input);//创建一个lexer 处理输入数据
			CommonTokenStream tokens = new CommonTokenStream(lexer);//创建一个token缓冲区 储存lexer生成的词法符号
			MxParser parser = new MxParser(tokens);//创建一个parser 处理token缓冲区中的内容为解析做准备工作
			ParseTree cstroot = parser.program();//用Expr.g4中的prog规则对得到的token流进行语法分析构建对应的语法分析树,并返回树的根结点
			System.out.println(cstroot.toStringTree(parser));//用Lisp风格打印生成的语法分析树
			ASTBuilder astbuilder = new ASTBuilder();//新建一个ASTBuilder类(CST的Visitor，从MxBaseVisitor派生)
			RootNode astroot = (RootNode) astbuilder.visit(cstroot);//从根结点开始visit该cst的语法分析树，生成AST的语法分析树
//		}
//		catch (SemanticError error){
//			error.Output();
//		}
	}
}
