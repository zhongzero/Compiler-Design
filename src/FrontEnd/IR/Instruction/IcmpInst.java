package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;

public class IcmpInst extends BaseInst{
	public BinaryOp op;
	public IcmpInst(Value _operand1, Value _operand2, BinaryOp _op, IRBasicBlock _belongBlock){
		super("icmp",new IntegerType(1),_belongBlock);
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}

	@Override
	public String toString() {
		return this.getName()+"=icmp "+op.toString()+" "+operandlist.get(0).getType_Name()+","+operandlist.get(1).getName();
//		%eq1=icmp eq i32 1,%a
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIcmpInst(this);
	}

}
