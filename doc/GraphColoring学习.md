# 图染色(GraphColoring)

参照虎书(现代编译原理)第10章，第11章



## LiveAnalysis

先进行活跃分析，数据流分析

LiveIn,LiveOut可以迭代得到(定义及方法参考虎书第10章)(注：第17章有更优秀的数据流分析方法)



## 图染色

先做最简单的不带Mv指令和预染色节点的情况

假设颜色数为K

step1.Build，通过LiveAnalysis可以Build出冲突图

step2.Simplify，对于度数(相邻节点个数)<K的点，可以把它及相邻边删去，压入栈内(一定可以染，在其相邻点都染好后再染)

step3.Spill，若此时没有可以Simplify的点(度数<K)，则找一个较差的点Spill掉(也压入栈中)

step4.AssignColor(Select)，上述Simplify和Spill反复做做完后，一个个弹栈染色，染不了色的在Stack上开空间做

要是step4中存在染不了色的点，则存入Stack改写代码后重新做图染色(也可以不用，只需要拿一个Physical Register用于染不了色的点load/store Stack就可以只做一次)



### 加入Mv指令

mv指令之间连虚边(不算在degree里)，若是两个点可以合并(染相同颜色)，则该Mv指令可以去除

可以用一些保守合并判断来判断是否能合并(保守合并：合并之后不会导致原来可以染色的情况现在染不了色)

还有把节点分成传送(Mv)有关和传送(Mv)无关，传送有关的节点不能Simplify，必须经过freeze(冻结)变成传送无关的节点才可以Simpilfy

即在上述操作中加入两步操作Coalesce(合并)，freeze(冻结)



### 加入预着色节点(precolored)

即Physical Register也会存在在冲突图中

预着色节点不能被压入栈中(不能被染色)，等节点被压栈压完到只剩下预着色节点时即可AssignColor了



### CalleeSavedReg 和CallerSavedReg

CalleeSavedReg(被调用者保存的Register)：s0~s11 , sp

CallerSavedReg(调用者保存的Register)：t0~t6 , a0~a7 , ra

注：剩下还有 zero , gp , tp

CalleeSavedReg必须在函数开始时存到特定位置，再在函数结束时调回

CallerSavedReg在call函数时(在LiveAnalysis中可以等价于call函数use了所有的CallerSavedReg，这样可以在图染色Build的时候产生相应的冲突边)



注：具体参照虎书第11章





一些优化：可以把一些局部int/bool当成vReg使其一同参与图染色(寄存器分配)，在代码较短的Func里可以有效提高效率