grammar Mx;
//程序
program	:defAllType*;

//子程序
defAllType	:functionDefinitionStatement
			|classDefinitionStatement
			|variableDefinitionStatement//declare
			|';'
			;

//函数定义语句
functionDefinitionStatement	:(VOID |type) IDENTIFIER '(' parameterList? ')' block;


//类定义语句
classDefinitionStatement	:CLASS IDENTIFIER '{' (functionDefinitionStatement|variableDefinitionStatement|classConstructorStatement)* '}' ';';

//类构造函数
classConstructorStatement	:IDENTIFIER '(' parameterList ')' block;


//变量定义语句
variableDefinitionStatement	: variableDefinitionList ';';

//变量定义List
variableDefinitionList	:type variableDefinitionSingle (',' variableDefinitionSingle)*;

//变量定义(单个)
variableDefinitionSingle	:IDENTIFIER ('=' expression)?;


//语句
statement	:expression ';'																															#stat_expression
			|';'																																	#stat_empty
			|variableDefinitionStatement																											#stat_vardef
			|IF '(' condition=expression ')' (if1=statement|if2=block) (ELSE (else1=statement|else2=block) )?										#stat_if
			|FOR '(' (init1=variableDefinitionList|init2=expressionList)? ';' condition=expression ';' (update=expression)? ')' (for1=statement|for2=block)	#stat_for
			|WHILE '(' condition=expression ')' (while1=statement|while2=block)																		#stat_while
			|BREAK ';'																																#stat_break
			|CONTINUE ';'																															#stat_continue
			|RETURN (expression)? ';'																												#stat_return
			;


//语句块
block	:'{' statement* '}';


//表达式
expression	:IDENTIFIER																			#expr_ID
			|constant																			#expr_const
			|THIS																				#expr_THIS
			|expression '.' IDENTIFIER															#expr_member
			|array=expression '[' index=expression ']'											#expr_array
			|NEW newformat																		#expr_new
			|'(' expression ')'																	#expr_bracket
			|expression '(' parameterdataList? ')'													#expr_function
			|expression op=('++'|'--')															#expr_singleafter
			|<assoc=right> op=('!'|'~'|'++'|'--'|'+'|'-') expression							#expr_singlebefore
			|operand1=expression op=('*'|'/'|'%') operand2=expression							#expr_binary
			|operand1=expression op=('+'|'-') operand2=expression								#expr_binary
			|operand1=expression op=('>>'|'<<') operand2=expression								#expr_binary
			|operand1=expression op=('>'|'<'|'>='|'<=') operand2=expression						#expr_binary
			|operand1=expression op=('=='|'!=') operand2=expression								#expr_binary
			|operand1=expression op=('&'|'|'|'^') operand2=expression							#expr_binary
			|operand1=expression op=('&&'|'||') operand2=expression								#expr_binary
			|<assoc=right> operand1=expression '=' operand2=expression									#expr_assign
			|('[' '&' ']'|'[' ']') ( '(' parameterList ')' )? '->' block '(' parameterdataList ')'	#expr_lambda	//仅在Semantic Check阶段考察
			;

//参数List
expressionList		:expression (',' expression)*;

//传入参数数据List
parameterdataList	:expression (',' expression)*;

//参数List
parameterList	:type IDENTIFIER (',' type IDENTIFIER)*;

//常数
constant	:BOOL_CONSTANT
			|INT_CONSTANT
			|STRING_CONSTANT
			|NULL
			;

//new 格式
newformat	:nonarraytype ('[' expression ']')+ ('[' ']')+ ('[' expression ']')+	#newformat_error  // int[] s=(new int[4][])[1] 合法，但 int[] s=new int[4][][1] 不合法
			|nonarraytype ('[' expression ']')+ ('[' ']')*							#newformat_multiArray
			|nonarraytype '(' ')'													#newformat_class
			|nonarraytype															#newformat_normal
			;


//基本数据类型
nonarraytype	:
				|INT
				|BOOL
				|STRING
				|IDENTIFIER
				;

//数据类型(包括数组)
type	:nonarraytype		#type_basic
		|type '[' ']'		#type_array
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


//整数常量
INT_CONSTANT:'0'|[1-9][0-9]*;

//字符串常量
STRING_CONSTANT:'"' .*? '"';
//STRING_CONSTANT:'"' (ESC|.)*? '"';
//fragment ESC:'\\n'|'\\\\'|'\\"';//转义字符Escape character

BOOL_CONSTANT:TRUE|FALSE;


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