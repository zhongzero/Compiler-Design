package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;

public class BinaryInst extends BaseInst{
	public enum BinaryOp{
		add,sub,mul,sdiv,srem,//+,-,*,/,%
		shl, //<<
		ashr,//arithmetic >>
		and,or,xor //&,|,^
	}
	public BinaryOp op;
	public BinaryInst(BaseOperand _operand1, BaseOperand _operand2, BinaryOp _op, BasicBlock _belongBlock){
		super("binarycalc",_operand1.type,_belongBlock);
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}
}
