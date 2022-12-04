# LLVM简介

主流C/C++代码编译器有gcc/g++和clang/clang++

一般而言clang编译更快，占用内存更少，报错提醒更详细(but有极小概率编译出错)

LLVM是一个大项目，它包括很多模块

LLVM的前端：包括clang(clang目前可以支持编译C,C++,Objective C/C++等语言)和一些其他模块

LLVM IR：一种中间语言(中间表示)(intermediate interpretation)

LLVM优化器：对LLVM IR的代码进行优化

...

(狭义的LLVM只包括LLVM后端(代码优化、目标文件生成等))

前端生成LLVM IR，再对LLVM IR进行优化后，生成目标代码



# LLVM IR

LLVM IR有三种格式

* .ll格式，可读，类似于汇编代码
* .bc格式，不可读，二进制存储
* 内存表示，只保存在内存中

编译命令

```
clang++ a.cpp -S -emit-llvm //生成a.ll文件
clang++ a.cpp -c -emit-llvm //生成a.bc文件
llvm-dis a.bc // a.bc转a.ll
clang++ a.ll -o a //由a.ll生成可执行文件
nm a //查看可执行文件的符号表
llc a.ll //由a.ll生成汇编代码a.s
```





## LLVM IR 格式

* **Module** ：LLVM程序由模块组成，每个输入程序都对应一个模块，模块包括函数、全局变量和符号表。多个模块可以被LLVM 链接器（linker）组合在一起。可以将LLVM中的Module类比为C程序中的源文件。一个C源文件中包含函数和全局变量定义、外部函数和外部函数声明，一个Module中包含的内容也基本上如此，只不过C源文件中是源码来表示，Module中是用IR来表示。
* **Function** ：被Module所包含，LLVM的Function包含函数名、函数的返回值和参数类型，Function内部则包含BasicBlock。
* **BasicBlock** ：与编译技术中常见的基本块(basic block)的概念是一致的，BasicBlock必须有一个进入标签和一条结束指令。结束指令一般是br跳转指令或者ret返回执行。
* **Instruction** ：就是上面提到过的“指令”，LLVM IR的最基本的单位，Instruction被包含在BasicBlock中，一个BasicBlock可以有多条Instruction。



* **标识符** ：全局标识符（以 **@** 开头）和局部标识符（以 **%** 开头）

* * **全局标识符**，包括全局变量、全局常量和函数

  * **局部标识符**，即局部变量，label等

    * 按照是否命名分类：
    - 命名局部标识符：顾名思义，比如`%tmp` (命名值以字母序列开头)
    * 未命名局部标识符：以带前缀的无符号数字值表示，比如`%1`、`%2`，必须按顺序编号

    注意：局部标识符不能重名是对于某一个Function而言，不同Function的局部标识符是独立的

    **局部变量** 

    * 按照分配方式分类：

      寄存器分配的局部变量：此类局部变量多采用```%1 = some value```形式进行分配，一般是接受指令返回结果的局部变量 ，
      栈分配的局部变量：使用alloca指令在栈帧上分配的局部变量，比如```%2 = alloca i32```，```%2```也是个指针，访问或存储时必须使用```load```和```store```指令

* 内存模型

  一共有LLVM IR把数据分成三种

  - 寄存器中的数据
  - 栈上的数据(load/store)
  - 数据区里的数据(全局变量)

## LLVM IR 基本语法

**注释** ：以';'开头的一行

```
;xxx
```



**简单的LLVM代码** 

```c++
//C++
int main() {
    return 0;
}
```

```
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128";确定数据分布
target triple = "x86_64-pc-linux-gnu";确定平台(指令集架构-机器类型-操作系统)

define i32 @main() {
    ret i32 0
}
```



### 数据表示

**数据区内的数据(全局变量)** 

```
@a =global i32 0;定义一个全局变量，初值为0，用指针@a指向它的地址(@a为i32*类型)
external/private/internal为链接类型(不加默认为external)
@a =external global i32;定义一个全局变量，用指针a指向它的地址，它会在符号表中出现，且表示可以被外部引用(注意，加了external后不能直接给它赋初值了)
@a =private global i32 0;定义一个全局变量，初值为0，用指针a指向它的地址，它不会出现在符号表中
@a =internal global i32 0;定义一个全局变量，初值为0，用指针a指向它的地址，它在符号表中以局部符号的身份出现(类似C++中的static)

@a =constant i32 0;定义一个只读全局变量,它的值为0，用指针a指向它的地址(类似C++中的const)
```



**寄存器上的数据** 

```
%a = add i32 1, 2;给寄存器a赋值(%a为i32类型)
```

*  LLVM IR的寄存器是虚拟寄存器，即它的大小是无穷大的，若是使用的寄存器超过上限，会将寄存器压入栈中



**栈上的数据** 

```
%a = alloca i32;声明一个栈上的变量，用指针%a指向它的地址(%a为i32*类型)
```



注：C++中new出来的数据应该放在堆上，所以应该declare一个_malloc(i32 size)的函数，并在汇编的时候实现并链接它



**load/store 调用和修改 全局变量和栈上变量** 

**注意** ：全局变量和栈上变量皆指针

```
store i32 1, i32* @a;把i32类型的1 store到i32*的@a所指的内存区域内(数据区内)
store i32 1, i32* %a;把i32类型的1 store到i32*的%a所指的内存区域内(栈上)
%a=load i32,i32* %a_addr;把i32类型的数据从i32*的%a_addr所指的内存区域内读出(%a为i32类型)
```



实际上，可以先将LLVM IR和C++类比，寄存器就是一个只能赋值一次的变量；全局变量就是定义全局变量，但是是用指针指向它；栈上变量就是动态开内存，并用一个指针指向它(全局变量和栈上变量在调用时基本相同)



**SSA(Static Single Assignment)策略** 

LLVM IR遵守SSA策略，即每个寄存器上的变量只能赋值一次

即

```
%1 = add i32 1, 2(%1为i32类型)
%1 = add i32 3, 4
```

是不允许的

全局变量和栈上变量可以修改



### 数据类型

**基本数据类型** 

- 空类型（`void`）

- 整型（`iN`）

  N为任意正整数，一般为8的倍数

  特别的 ```i1``` 可以使用 ```true``` / ```false``` 

  整型默认为有符号整型

- 浮点型（`float`、`double`等）

- 指针

- 数组(包括字符串)

  ```
  %a = alloca [4 x i32];等价于C++中的*a=new int[4](一般不能直接初始化) (%a为[4 x i32]*类型)
  @global_array = global [4 x i32] [i32 0, i32 1, i32 2, i32 3];//全局变量定义数组(全局变量中要附初始值，除非链接类型为external)
  @global_string = global [12 x i8] c"Hello world\00";/全局变量定义字符串("\00"等价于C++中的"\0")
  @.str = private unnamed_addr constant [6 x i8] c"2333\0A\00", align 1;全局定义常量字符串，align 1表示数据存储按1字节对齐
  ;注意括号里是 'x’ 不是 '*’

  ;数组的调用和下面结构体类似
  %s=alloca [4 x i32]
  %1=getelementptr [4 x i32], [4 x i32]* %s,i32 0,i32 1
  %ans=load i32 ,i32* %1 
  ;访问数组下标为1的元素所在的地址
  ```


- 结构体

  ```
  ;定义结构体
  %MyStruct = type {
      i32,
      i8
  }

  ;声明并初始化结构体
  @global_structure = global %MyStruct { i32 1, i8 0 }
  ;or
  %my_struct = alloca %MyStruct

  ;结构体调用(getelementptr)
  %1 = getelementptr %MyStruct, %MyStruct* %my_struct, i64 0, i32 1 
  ;格式为getelementptr 结构体类型 指向某一结构体数组的指针 'i64 0' 需要访问的数据在该结构体的第几个字段(0-base)
  ;第三个参数'i64 0'不能省略（上述my_struct为结构体，但指针会先把它看作一个结构体数组，需要对它解第一次引用）

  ;换一个结构体和数组相互嵌套的情况
  %MyStruct = type {
      i32,
      [5 x i32]
  };struct中有数组
  %my_structs = alloca [4 x %MyStruct];声明struct
  %1 = getelementptr [4 x %MyStruct], [4 x %MyStruct]* %my_structs,i32 0, i32 2, i32 1, i32 3
  ;调用中第一个参数'[4 x %MyStruct]'表示一开始指针指向的类型
  ;调用中第二个参数'[4 x %MyStruct]* %my_structs'表示一开始的指针
  ;调用中第三个参数'i32 0'是对struct数组指针偏移0位(此时指针的类型是 [4 x %MyStruct]*)
  ;第四个参数'i32 2'是先解引用，得到一个struct数组(即一个指向struct数组开头的struct指针)，再对得到的struct数组(即一个struct指针)偏移2位(此时指针的类型是 %MyStruct*)
  ;第五个参数'i32 1'是先解引用,得到一个struct(即一个指向struct头部内容的指针)，再在该struct内部从struct头部偏移1位(偏移几位表示偏移几个元素)(此时指针的类型是 [5 x i32]*)
  ;第六个参数'i32 3'是先解引用，得到一个[5 x i32]数组(即一个指向i32的指针)，再从指针处偏移3位(此时指针的类型是i32*)
  最后得到的是一个指向i32的i32*指针
  ;整个过程就是 第三个参数为 指针地址偏移，接着的参数为一层层的 解引用+指针地址偏移(解引用本质上为修改类型)(一般来说第一个指针偏移量都为0,除非想要获取的元素不在第两个参数内) (也可认为是每次 指针地址偏移+解引用，最后生成一个指针指向得到的数据)(即最后得到的一定是一个指针类型)
  ;若是在最后多加了几个i32 0，地址不变，但是解析的结果不同(类型不同)
  ;注意，对于struct那层做偏移时，索引(偏移量)必须要是i32的常量

  getelementptr inbounds [4 x %MyStruct], [4 x %MyStruct]* %my_structs,i32 0, i32 2, i32 1, i32 3
  ;加入inbounds参数表示加入越界检查

  注：getelementptr：解析聚合类型(即数组和struct),并返回一个指针 & 指针偏移
     load/store：解析指针

  ```
  ​






**数据类型转换** 

长整型 转 短整型 ：```%xxx = trunc ... to...```  ( ```%a = trunc i32 257 to i8``` )

短整型 转 长整型 ：

- 零扩展 ```%xxx = zext i8 -1 to i32``` 
- 符号位扩展 ```%xxx = sext i8 -1 to i32``` 

浮点数 转 无符号整型：`%xxx = fptoui ... to` 

浮点数 转 有符号整型：`%xxx = fptosi ... to` 

无符号整型 转 浮点数：`%xxx = uitofp ... to` 

有符号整型 转 浮点数：`%xxx = sitofp ... to` 

指针类型转换：`%xxx = bitcast ... to ...*` ( `%a = bitcast i32* %x to i8*` ) (bitcast表示在不改变%x每一位的前提下改变它的类型，要求类型占用的byte相同)(即更改对同一个数据的解释方法)



### 常量

* iN xxx (`i32 2333`)
* 常量字符串 (`@.str = private unnamed_addr constant [5 x i8] c"2233\00", align 1`)
* null(专门给指针的)
* iN zeroinitializer (`@a = global i8 zeroinitializer, align 4 ;可用于给global variable赋无意义的初值`)





### 控制语句

为了实现if...else...,for,while的功能，只需要

* 标签(label) (标签也算局部标识符，局部标识符不能重名，数字名字要按顺序依次标号)
* 比较大小的指令
* 无条件跳转
* 有条件跳转



**label** 

```
start:
    %i_value = load i32, i32* %i
A:
    ; do something A
    %1 = add i32 %i_value, 1 ; ... = i + 1
    store i32 %1, i32* %i ; i = ...
B:
    ; do something B

;start,A,B就是三个label
```



**比较指令** 

```
%flag = icmp uge i32 %a, %b (%flag为i1类型)
;等价于 bool flag = ((unsigned int)a >= (unsigned int)b);

比较类型
eq 等于
ne 不等于
ngt/sgt 无/有符号大于
nge/sge 无/有符号大于等于
ult/slt 无/有符号小于
ule/sle 无/有符号小于等于
```



**无条件跳转** 

```
br label %A
等价于 goto A;
```



**条件跳转** 

```
br i1 %flag, label %A, label %B
;等价于 if(flag==true)goto A;else goto B;
```



## 计算指令

```
add %a,%b // +
sub %a,%b // -
mul %a,%b // *
udiv %a,%b //unsigned /
sdiv %a,%b //signed /
urem %a,%b //unsigned %
srem %a,%b //signed %
shl %a,%b //<< //左移没有logic和arithmetic的区别，两者是一样的
lshr %a,%b //logic >>
ashr %a,%b //arithmetic >>
and %a,%b // &
or %a,%b // |
xor %a,%b // ^

// 整型iN（%a,%b）默认都是有符号数

fadd %a,%b // float +
fsub %a,%b // float -
fmul %a,%b // float *

%a,%b也可以是i32 233这样的常数
```



**注：每一条指令的临时寄存器的类型 都是由 指令类型和后面的参数 唯一确定的** 



### 函数/基本块

- 一个函数由许多基本块(Basic block)组成，函数名称以 `@` 开头

- 每个基本块包含：

- - 开头的标签（可省略）
  - 一系列指令
  - 结尾是终结指令(指改变执行顺序的指令，如跳转、返回等)

- 一个基本块没有标签时，会自动赋给它一个标签

- 不同function内label和局部变量都可以重名





**函数定义** 

```
define i32 @main() {
    ret i32 0
}
```



```
define i32 @foo(i32 %a, i64 %b) {
    ret i32 0
}
%i = alloca i32 ; int i = ...
    store i32 0, i32* %i ; ... = 0
    br label %start
start:
    %i_value = load i32, i32* %i
    %comparison_result = icmp slt i32 %i_value, 4 ; test if i < 4
    br i1 %comparison_result, label %A, label %B
A:
    ; do something A
    %1 = add i32 %i_value, 1 ; ... = i + 1
    store i32 %1, i32* %i ; i = ...
    br label %start
B:
    ; do something B
FuncEnd:
	ret i32 0
    
;上面有5个basic block，其中写在最前面的块的标签被省略了
```



**函数调用** 

`call i32 @funName(i32 1,i32 2) ` 



```
define i32 @foo(i32 %a) {
    ; ...
}

define void @bar() {
    %1 = call i32 @foo(i32 1)
}
```

 

**函数声明** 

```
declare i8* @_f_malloc(i32 %n)
```

函数声明后可以不在当前.ll文件内实现，而是在其他地方实现，进行一个链接即可

函数声明后即可被当前.ll文件调用



# LLVM IR的内存模型

一种基本模型：

* Module
* Function
* BasicBlock
* Instruction
* Operand(constant + variable)
* TypeStstem
* Value/User



## Value/User

基于SSA(Static Single Assignment)的特性，LLVM IR采用Value和User作为基类，其中User从Value中派生出来

BasicBlock继承自Value(llvm ir 认为Basic blocks are Values because they are referenced by instructions such as branches and switch tables(源码中的话))（BasicBlock不需要调用(use)任何东西，跳转不算调用，所以不作为User）(实际上把它当成User也可以，如果把它内部的Instruction算作调用)

constant，Instruction，Function继承自User

(llvm ir认为constant是User，是因为constant实际上包含简单常量和复杂常量(包括array，struct，常量表达式等)，可能会调用其他operand)

(llvm ir认为Instruction是User，是因为Insrument会use operand)

(llvm ir认为Function是User，实际上Function的继承很复杂，Function继承拓扑图(C++实现，可以同时继承多个类)上存在consant，而constant从User中继承过来)



(也许这么解释?)(但其实自己实现llvm ir node的时候完全可以自己构想，不必一定和官方相同，因为我们要实现的只是简化版，像Value，User的概念甚至不需要实现，而Function,BasicBlock到底是继承自User还是直接继承自Value其实也都可以改)



**LLVM IR中一切皆value** 



### Use

给Value和User之间维护一个双向边，叫做Use

### use-def chain

被某个User使用的Value列表

### def-use chain

使用某个Value的User列表



基于SSA的Value和User设计使得调试和优化LLVM IR时更方便