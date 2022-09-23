```
1.基本规范
每个java文件只能有一个public class,且类名要与文件名相同
文件调用的是public static void main(String[] args)函数
类名(文件名)首字母大写,函数名单个单词小写(public class Solve),多个单词第一个单词小写 其余大写(void findAll()) (约定俗成)
package语句在最前面,声明所在的包的名称;接着是import语句,可以用来载入其他包(通过*号)/其他包的类

2.基本语法
数据类型:byte,short,int,long,float,double,boolean,char,String

System.out.printf();//和C++一样
System.out.print("2333"+a);//格式不一样
System.out.println("2333");//print并换行

Scanner input=new Scanner(System.in);//创建一个Scanner类型用于读取数据
String S=input.next();//读取下一个字符串
int a=input.nextInt();//读取下一个int
double b=input.nextDouble();//读取下一个double

final int x;//常量

运算,if,else,for,while 基本和C++一样

数学相关函数与定值 包含在Math中,如Math.sin(1),Math.min(1,2),Math.PI

数组定义:int[] A=new int[2];//动态开空间，但不需要自己delete(会自动把空间回收)
```