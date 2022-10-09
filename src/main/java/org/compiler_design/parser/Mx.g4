grammar Mx;
//程序
program	:subprogram*;

//子程序
subprogram	:functionDefinitionStatement
			|classDefinitionStatement
			|variableDefinitionStatement
			|';'
			;

//函数定义语句
functionDefinitionStatement	:(VOID |type) IDENTIFIER '(' parameterList? ')' block;


//类定义语句
classDefinitionStatement	:CLASS IDENTIFIER '{' (functionDefinitionStatement|variableDefinitionStatement|classInitStatement)* '}' ';';

classInitStatement	:IDENTIFIER '(' parameterList ')' block;


//变量定义语句
variableDefinitionStatement	: variableDefinitionList ';';

//变量定义List
variableDefinitionList	:type variableDefinitionSingle (',' variableDefinitionSingle)*;

//变量定义(单个)
variableDefinitionSingle	:IDENTIFIER ('=' expression)?;


//语句
statement	:expression ';'																												#state_expression
			|block																														#state_block
			|';'																														#state_empty
			|variableDefinitionStatement																								#state_vardef
			|IF '(' condition=expression ')' ifstate=statement (ELSE elsestate=statement)?												#state_if
			|FOR '(' (initvar=expression|variableDefinitionList) ';' condition=expression ';' update=expression ')' forstate=statement	#state_for
			|WHILE '(' condition=expression ')' whilestate=statement																	#state_while
			|BREAK ';'																													#state_break
			|CONTINUE ';'																												#state_continue
			|RETURN (expression)? ';'																									#state_return
			;

//语句块
block	:'{' statement* '}';


//表达式
expression	:IDENTIFIER																			#expr_ID
			|constant																			#expr_const
			|THIS																				#expr_THIS
			|array=expression '[' expression ']'												#expr_array
			|NEW newformat																		#expr_new
			|'(' expression ')'																	#expr_bracket
			|expression '.' IDENTIFIER															#expr_member
			|expression '(' expressionList? ')'													#expr_function
			|expression op=('++'|'--')															#expr_single
			|<assoc=right> op=('!'|'~'|'++'|'--'|'+'|'-') expression							#expr_binary
			|operand1=expression op=('*'|'/'|'%') operand2=expression							#expr_binary
			|operand1=expression op=('+'|'-') operand2=expression								#expr_binary
			|operand1=expression op=('>>'|'<<') operand2=expression								#expr_binary
			|operand1=expression op=('>'|'<'|'>='|'<=') operand2=expression						#expr_binary
			|operand1=expression op=('=='|'!=') operand2=expression								#expr_binary
			|operand1=expression op=('&'|'|'|'^') operand2=expression							#expr_binary
			|operand1=expression op=('&&'|'||') operand2=expression								#expr_binary
			|<assoc=right> expression '=' operand2=expression									#expr_assign
			|(LAMBDA1|'[' ']') ( '(' parameterList ')' )? LAMBDA2 block '(' expressionList ')'	#expr_lambda	//仅在Semantic Check阶段考察
			;

//表达式List
expressionList	:expression (',' expression)*;

//参数List
parameterList	:type IDENTIFIER (',' type IDENTIFIER)*;

//常数
constant	:INT_CONSTANT
			|STRING_CONSTANT;

//new 格式
newformat	:nonarraytype ('[' expression ']')+ ('[' ']')+ ('[' expression ']')+	#newformat_error  // int[] s=(new int[4][])[1] 合法，但 int[] s=new int[4][][1] 不合法
			|nonarraytype ('[' expression ']')+ ('[' ']')*							#newformat_multiArray
			|nonarraytype '(' ')'													#newformat_class
			|nonarraytype															#newformat_normal
			;


//基本数据类型
nonarraytype	:
				|BOOL
				|INT
				|STRING
				|IDENTIFIER
				;

//数据类型(包括数组)
type	:nonarraytype		#type_array
		|type '[' ']'		#type_basic
		;

//关键字
VOID:'void';
BOOL:'bool';
INT:'int';
STRING:'string';
NEW:'new';
CLASS:'class';
NULL:'null';
TRUE:'true';
FALSE:'false';
THIS:'this';
IF:'if';
ELSE:'else';
FOR:'for';
WHILE:'while';
BREAK:'break';
CONTINUE:'continue';
RETURN:'return';

LAMBDA1:'[' '&' ']';
LAMBDA2:'->';

//整数常量
INT_CONSTANT:'0'|[1-9][0-9]*;

//字符串常量
STRING_CONSTANT:'"' (ESC|.)*? '"';
fragment ESC:'\\n'|'\\\\'|'\\"';//转义字符Escape character

//标识符
IDENTIFIER:[a-zA-Z][a-zA-Z0-9_]*;

//标准运算符
// '+' '-' '*' '/' '%'

//关系运算符
// '>' '<' '>=' '<=' '!=' '=='

//逻辑运算符
// '&&' '||' '!'

//位运算符
// '>>' '<<' '&' '|' '^' '~'

//赋值运算符
// '='

//自增运算符
// '++' '--'

//分量运算符
// '.'

//下标运算符
// '[' ']'

//优先级运算符
// '(' ')'

//分隔符
// ';' ',' '{' '}'

//特殊符号
// ' ' '\n' '\t' '//' '"'

//空白符
WS:[ \t\r\n]+ -> skip;

//注释
LINE_COMMENT: '//' .*? '\r'? '\n' -> skip;
BLOCK_COMMENT:'/*' .*? '*/' ->skip;