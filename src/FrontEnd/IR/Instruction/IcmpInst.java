package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;

public class IcmpInst extends BaseInst{
	public enum CompareOp{
		eq,ne,sgt,sge,slt,sle // ==, !=, signed >, signed >=, signed <, signed <=
	}
	public CompareOp op;
	public IcmpInst(BaseOperand _operand1, BaseOperand _operand2, CompareOp _op, BasicBlock _belongBlock){
		super("icmp",_operand1.type,_belongBlock);
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}

}
