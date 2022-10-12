# AST(CST)具体实现

## 构建Node(antlr4生成的CST中叫Context)

接下来我们不妨用g4文件的语法进行简单的分析，提供一种实现g4的CST的方法



整个文件有一个基类BaseNode(说是基类，也是从更底层的基类派生来的)

1.对于只有一个选择分支的句法，直接生成BaseNode的一个派生类

2.对于有多个选择分支的句法，句法生成一个BaseNode的一个派生类XXXNode，每个分支再生成YYYNode的一个派生类的



每个非基类中记录往下的儿子结点，并实现一个accept函数

```
@Override
public void accept(ASTvistor visitor) {
	visitor.visitYYY(this);
}
```

accept的作用为：对于有多个选择分支的句法，我们可以调用class派生的性质，通过accept函数，对于一个被强制转回基类的Node，可以找到最底层的派生类的accept函数，进入visitYYY.



可以再在外面套上一层visit

```
visit(XXXNode node){
    XXXNode.accept(this);
}
```

以此实现通过visit(XXX)就可以直接执行visitYYY()的函数 (YYY为XXX的派生类，是visit中传入的XXX定义时实际的类型)(即XXX类型是由YYY类型强制向下转换得到的)



AST的构建Node的方式和CST类似



## visit()包装和visitXXX()

对每个Node(包括基类和派生类)都实现上述visit(XXXNode node)的接口，调用accept，再用accept找到对应派生类的Node，进入visitYYY



对于每个最底层的派生类，实现visitYYY() (放在antlr4生成的CST中即每个 标签 和 分支选项唯一的句法)



visitYYY中写的就是对整棵树的具体操作



## ASTBuilder

从XXXBasevisitor派生出ASTBuilder，让返回类型为ASTBaseNode

AST的各个Node中存着孩子节点的关系和一些其他有用信息

通过对CST visitXXX方法的实现，得到一棵AST自身Node的树(即最后返回的RootNode节点)，这个RootNode节点就是AST的语法分析树





在得到这棵树后，对ASTNode的每个节点同样实现visitYYY()，即对AST整棵树的具体操作，就可以实现Semantic Check或运行编译了