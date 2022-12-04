import FrontEnd.IR.IRBuilder;
import FrontEnd.IR.Module.IRModule;
import FrontEnd.SemanticCheck.SemanticCheckVisitor;
import FrontEnd.SemanticCheck.Utils.GlobalScope;
import Utils.Error.MyBaseError;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import FrontEnd.Parser.*;
import FrontEnd.AST.*;

import java.io.PrintStream;

public class Compiler {
	public static void main(String[] args) throws Exception {
		try {
//			CharStream input = CharStreams.fromFileName("E:\\Compiler-Design\\src\\test.mx");//新建一个CharStream读取数据
			CharStream input = CharStreams.fromStream(System.in); // 从stdin读取数据
//			PrintStream ps=new PrintStream("E:\\Compiler-Design\\debug\\test.ll");
			PrintStream ps=System.out;
//			System.out.println(input);
//			System.out.println("-----------");

			MxLexer lexer = new MxLexer(input);//创建一个lexer 处理输入数据
			lexer.removeErrorListeners();//删除原来的lexer的ErrorListener
			lexer.addErrorListener(new MyErrorListener());//添加自定义的lexer的ErrorListener(re就抛出被catch)
			CommonTokenStream tokens = new CommonTokenStream(lexer);//创建一个token缓冲区 储存lexer生成的词法符号
			MxParser parser = new MxParser(tokens);//创建一个parser 处理token缓冲区中的内容为解析做准备工作
			parser.removeErrorListeners();//删除原来的parser的ErrorListener
			parser.addErrorListener(new MyErrorListener());//添加自定义的parser的ErrorListener(re就抛出被catch)
			ParseTree cstroot = parser.program();//用Expr.g4中的prog规则对得到的token流进行语法分析构建对应的语法分析树,并返回树的根结点
//			System.out.println(cstroot.toStringTree(parser));//用Lisp风格打印生成的语法分析树
			ASTBuilder astbuilder = new ASTBuilder();//新建一个ASTBuilder类(从MxBaseVisitor派生)
			RootNode astroot = (RootNode) astbuilder.visit(cstroot);//从根结点开始visit该cst的语法分析树，生成AST的语法分析树
			SemanticCheckVisitor semanticcheckvisitor=new SemanticCheckVisitor();////新建一个SemanticCheckVisitor类(从ASTVisitor派生)
			semanticcheckvisitor.visit(astroot);//从根结点开始visit该ast的语法分析树，进行语法检查
			GlobalScope semanticglobalscope=semanticcheckvisitor.globalScope;

			IRBuilder irbuilder=new IRBuilder(semanticglobalscope);
			irbuilder.visit(astroot);
			IRModule irmodule=irbuilder.irModule;
			ps.println(irmodule.toString());
		}
		catch (MyBaseError error){
			error.Output();
			throw new RuntimeException();
		}
	}
}
