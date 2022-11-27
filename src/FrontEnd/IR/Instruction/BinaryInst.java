package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;

public class BinaryInst extends BaseInst{
	public BinaryOp op;
	public BinaryInst(Value _operand1, Value _operand2, BinaryOp _op, IRBasicBlock _belongBlock){
		super(_op.name(),_operand1.type,_belongBlock);
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitBinaryInst(this);
	}
}
