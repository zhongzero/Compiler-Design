package org.compiler_design;
import org.Expr.EvalVisitor;
import org.compiler_design.parser.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class test {
    public static void main(String[] args) throws Exception {
        CharStream input = CharStreams.fromFileName("./src/main/java/org/compiler_design/source_code.in");//新建一个CharStream读取数据
        System.out.println(input);
        System.out.println("-----------");
        HelloLexer lexer=new HelloLexer(input);//创建一个lexer 处理输入数据
        CommonTokenStream tokens=new CommonTokenStream(lexer);//创建一个token缓冲区 储存lexer生成的词法符号
        HelloParser parser=new HelloParser(tokens);//创建一个parser 处理token缓冲区中的内容为解析做准备工作
        ParseTree tree=parser.prog();//用Hello.g4中的prog规则对得到的token流进行语法分析
//        System.out.println(tree.toStringTree(parser));//用Lisp风格打印生成的树
        EvalVisitor visitor=new EvalVisitor();//新建一个自定义的EvalVisitor类
        visitor.visit(tree);//开始用自定义的方法visit该语法分析树
    }
}