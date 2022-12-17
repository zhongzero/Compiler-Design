## 指令集架构

	x86,x64和arm架构

x86,x64和arm架构表示处理器基于什么指令集（CPU是中央处理器，除此之外还有显卡处理器等）

x86,x64是inter公司研发的(x86用于32位机，x64用于64位机)，arm是arm公司研发的

其中，x86，x64是CISC(complex instruction set computer)指令集，arm是RISC(reduced instruction set computer)指令集

不同处理器采用不同的指令集架构，需要不同的汇编代码

riscv-32指令集同样需要自己的汇编代码

riscv-32指令集为小端格式(little-endian,高地址高位，低地址地位)，一共有40条基础指令(和一些扩展指令)(基础指令个数可能会随时间发生变动)



# riscv-32 指令集

## register

![67117500948](E:\Compiler-Design\doc\picture\1671174513561.png)

riscv-32具体有这几类

* zero                 (hard-wired zero) (x0的一个常见用途是帮助将其他register初始化为0，另一个是branch时帮助进行条件判断)


* ra                     (return address)
* sp                    (stack pointer)
* gp                    (global pointer)
* tp                     (thread pointer)
* t0~t6               (temporary)
* s0~s11            (saved register) (其中s0当作frame pointer指向所在函数栈帧顶，回溯时需要用)
* a0~a7             (function argument) (其中当函数有返回值时，a0,a1可以当作return value)

## pc

除了32个寄存器外，还有一个pc指针

## instruction

![67117651035](E:\Compiler-Design\doc\picture\1671176510355.png)



![67117654997](E:\Compiler-Design\doc\picture\1671176549971.png)



CPU-Design中需要实现的37个指令

```c++
	LUI,AUIPC,  //U类型 用于操作长立即数的指令 0~1
	ADD,SUB,SLL,SLT,SLTU,XOR,SRL,SRA,OR,AND,  //R类型 寄存器间操作指令 2~11
    JALR,LB,LH,LW,LBU,LHU,ADDI,SLTI,SLTIU,XORI,ORI,ANDI,SLLI,SRLI,SRAI,  //I类型 短立即数和访存Load操作指令 12~26
    SB,SH,SW,  //S类型 访存Store操作指令 27~29
    JAL,  //J类型 用于无条件跳转的指令 30
    BEQ,BNE,BLT,BGE,BLTU,BGEU,  //B类型 用于有条件跳转的指令 31~36
```



## ELF和汇编代码

ELF(Executable and Linking Format)文件格式是一个开放标准，各种UNIX系统的可执行文件都采用ELF格式，ELF是一种对象文件的格式，用于定义不同类型的对象文件(Object files)的内容是什么、以及都以怎样的格式去存放这些内容。

汇编代码中以.开头的名称并不是指令的助记符，不会被翻译成机器指令，而是给汇编器一些特殊指示，称为汇编指示（Assembler Directive）或伪操作（Pseudo-operation）。.section指示把代码划分成若干个段（Section），程序被操作系统加载执行时，每个段被加载到不同的地址，操作系统对不同的页面设置不同的读、写、执行权限。

我们在汇编程序中用.section声明的Section会成为目标文件中的Section，此外汇编器还会自动添加一些Section（比如符号表）。Segment是指在程序运行时加载到内存的具有相同属性的区域，由一个或多个Section组成，比如有两个Section都要求加载到内存后可读可写，就属于同一个Segment。有些Section只对汇编器和链接器有意义，在运行时用不到，也不需要加载到内存，那么就不属于任何Segment。



```
.section .bss
```

`.bss`(BlockStarted by Symbol)通常是指用来存放程序中未初始化的全局变量的一块内存区域，属于静态内存分配。

```
.section .data
```

`.data`通常是指用来存放程序中已初始化的全局变量的一块内存区域，属于静态内存分配。

```
.section .rodata
```

`rodata` (read only data) 只读数据段，通常储存字符串常量等

```
 .section .text
```

`.text`段保存代码，是只读(一般情况下)和可执行的

```
 .globl _start
```

`_start`是一个符号（Symbol），符号在汇编程序中代表一个地址，可以用在指令中，汇编程序经过汇编器的处理之后，所有的符号都被替换成它所代表的地址值。在C语言中我们通过变量名访问一个变量，其实就是读写某个地址的内存单元，我们通过函数名调用一个函数，其实就是跳转到该函数第一条指令所在的地址，所以变量名和函数名都是符号，本质上是代表内存地址的。

.globl指示告诉汇编器, `_start`这个符号要被链接器用到，所以要在目标文件的符号表中标记它是一个全局符号。`_start`就像C程序的main函数一样特殊，是整个程序的入口，链接器在链接时会查找目标文件中的`_start`符号代表的地址，把它设置为整个程序的入口地址，所以每个汇编程序都要提供一个`_start`符号并且用.globl声明。如果一个符号没有用.globl声明，就表示这个符号不会被链接器用到。



## riscv32 ASM

https://github.com/riscv-non-isa/riscv-asm-manual/blob/master/riscv-asm.md

**prefixed options(前缀选项)** 

![67119017248](E:\Compiler-Design\doc\picture\1671190172486.png)

![67119020131](E:\Compiler-Design\doc\picture\1671190201313.png)

![67119021970](E:\Compiler-Design\doc\picture\1671190219701.png)

![67119023313](E:\Compiler-Design\doc\picture\1671190233136.png)

**label** 

字母开头作为label，label会加入symbol table，要保证全局label名称全都不同

```
loop:
        j loop
```

数字作为label，为local references，必须在后面加上f(forward) or b(backward) 表示前向引用或后向引用

```
1:
        j 1b
```

调用label其实可以相当于调用一个地址



**pseudoinstruction(伪指令)** 

伪指令，即由一个或多个指令复合而成的专门用于assembly的指令

assembly可识别可直接用于CPU的riscv-32的指令，也可识别伪指令



![67119738878](E:\Compiler-Design\doc\picture\1671197388789.png)

![67119741059](E:\Compiler-Design\doc\picture\1671197410596.png)

![67119742743](E:\Compiler-Design\doc\picture\1671197427430.png)

![67119747221](E:\Compiler-Design\doc\picture\1671197472211.png)

![67119748798](E:\Compiler-Design\doc\picture\1671197487981.png)





**注释** 

`#` 开头到换行



**具体代码** 

函数def

```
	.section .text											#声明此处为text(代码块) section (.section 可省略)
															#注：在下次修改section之前都为text section
	.globl	_global_var_init								#把_global_var_init放入symbol table
	.p2align	2											#设置为2^2=4位对齐
	.type	_global_var_init,@function						#定义_global_var_init为一个function
_global_var_init:											#从此处开始描述该function
.a_bb:														#label a_bb
	addi	sp, sp, -4
	sw		s0, -4(sp)
	addi	s0, sp, 4
	mv		s0,	ra
	li		t5,	4
	li		t6,	4
	mul		t6, t5, t6
	addi	a0, t6, 4
	call	_f__malloc
	li		t6,4
	sw		t6, 0(a0)
	addi	t6, a0, 4
	la		t5,a_glo
	sw	t6, 0(t5)
	j		.a_bb1											#末尾一般必须为ret或跳转(一般为j)
.a_bb1:														#label a_bb1
	mv		ra,s0
	addi	sp, sp,	4
	lw		s0, -4(sp)
	ret														#末尾一般必须为ret或跳转(一般为j)

	.size	_global_var_init, .-_global_var_init			#确定_global_var_init的size，"."为当前地址，size=当前地址减去函数开头地址(单
    														#位为字节)
```



静态未初始化全局变量def

```
	.section	.bss										#声明此处为bss(未初始化全局变量) section (.section 可省略)
															#注：在下次修改section之前都为bss section
	.globl	a_glo											#把a_glo放入symbol table
	.type	a_glo,@object									#定义_global_var_init为一个object
a_glo:														#从此处开始描述该object
	.word	0												#占位用，占4字节的位，初值为0
	.size	a_glo,	4										#确定a_glo的size=4(int，4字节)
```



只读数据段def(字符串常量)

```
	.section	.rodata										#声明此处为rodata(只读数据段) section (.section 可省略)
															#注：在下次修改section之前都为bss section
	.type	_str,@object									#定义_global_var_init为一个object
															#(注：不需要把字符串常量放入symbol table中)
_str:														#从此处开始描述该object
	.string	"2333"											#设置接下来5字节为"2333\0"
	.size	_str,	5										#设置占用字节大小为5(注，最后还有'\0')
```





完整版

```
	.file	"main.c"	#可不加
	
	.section .text
	# 函数def
	
	.section .bss
	# 静态未初始化全局变量def
	
	.section .rodata
	# 只读数据段def(字符串常量)
	
	.section .data
	# 静态已初始化全局变量def #上面未给出具体格式
```



具体函数实现(简易版)(先全部压到栈上)

```
//C++
int F(int a,int b){
	int c=a+b;
    return c;
}
```

```
# riscv-32 asm
	.section .text											#声明此处为text(代码块) section (.section 可省略)
															#注：在下次修改section之前都为text section
	.globl	_F												#把_F放入symbol table
	.p2align	2											#设置为2^2=4位对齐
	.type	_F,@function									#定义_F为一个function
_F:															#从此处开始描述该function
.a_bb:														#label a_bb
	addi	sp, sp, -20										#给当前函数开相应的栈空间(sp在程序一开始为最高(unsigned下为0)，不断向下降来开栈)
															#(4字节存调用这个函数的原函数的栈顶位置s0)
															#(2x4字节给传入的参数)
															#(4字节给函数中定义的int c)
	sw		s0,	16(sp)										#存调用这个函数的原函数的栈顶位置s0
	addi	s0, sp, 20										#设置当前函数的栈顶位置到s0
	sw		ra,	12(sp)										#把return address ra存入栈中
															#(call实际做了jalr的操作，把下一条指令的位置存到了ra中)
	sw		a0,	8(sp)										#把传入的参数a直接压栈
	sw		a1,	4(sp)										#把传入的参数b直接压栈
															#注：若是传入参数过多，可以考虑在call这个函数之前把它压到上一层的栈上，
															#   再通过知道上一层的s0把它读取出来(也可考虑先直接压到上一层的栈中，不用axx传参)
	lw		t1,	8(sp)										#准备执行c=a+b,把a读出到临时寄存器t1中
	lw		t2,	4(sp)										#准备执行c=a+b,把b读出到临时寄存器t2中
	add		t0,	t1,	t2										#开始执行c=a+b，将a+b算出的值放到临时寄存器t0中
	sw		t0,	0(sp)										#把算出的a+b存到c相应栈上的位置
	lw		a0,	0(sp)										#开始执行return c，把c读出到寄存器a0(return value)中
	lw		s0,	16(sp)										#把s0复原(改回调用这个函数的原函数的栈顶位置)
	lw		ra,	12(sp)										#把ra复原(改回需要返回的地址)
	addi	sp, sp, 16										#把栈空间释放
	ret														#ret返回#(ret实际上跳转到ra的位置)

	.size	_F, .-_F										#确定_F的size，"."为当前地址，size=当前地址减去函数开头地址(单位为字节)


```

