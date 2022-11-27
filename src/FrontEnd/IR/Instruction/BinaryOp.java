package FrontEnd.IR.Instruction;

public enum BinaryOp{
	add,sub,mul,sdiv,srem,//+,-,*,/,%
	shl, //<<
	ashr,//arithmetic >>
	and,or,xor, //&,|,^
	eq,ne,sgt,sge,slt,sle // ==, !=, signed >, signed >=, signed <, signed <=
}