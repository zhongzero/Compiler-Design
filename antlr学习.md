# 安装及测试
https://blog.csdn.net/weixin_52224421/article/details/124900287



# 编译

## 命令行

如上教程创建antlr4.bat和grun.bat，并添加到系统path中

假设我们创建了名为Hello.g4的文件，依次输入以下命令

```
antlr4 Hello.g4
javac Hello*.java
grun Hello rr -tree(rr为Hello.g4中想要匹配的规则的名称)(接下来输入要匹配的文本，以ctrl z结束)
grun Hello rr -gui(接下来输入和上述一样的文本，以ctrl z结束)
```

成功的话将会显示语法分析树的图形化界面

-tree：生成语法分析树

-gui：在对话框中以可视化方式显示语法分析树

## idea中

1.测试

在idea中装.g4文件的插件，在.g4文件中需要测试的规则处右键，再点击 Test Rule xxx 即可直接测试

2.生成相应文件

在idea中，右击.g4文件，Configure ANTLR出配置输出路径

再右击.g4文件，Generate ANTLR Recognizer

https://blog.csdn.net/Sisyphus_98/article/details/105518652

3.使用Maven管理项目

https://blog.csdn.net/m0_67392409/article/details/124108014