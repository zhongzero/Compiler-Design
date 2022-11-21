package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.Operand.Register;
import FrontEnd.IR.TypeSystem.InstType;

public class IcmpInst extends BaseInst{
	public enum CompareOp{
		eq,ne,sgt,sge,slt,sle // ==, !=, signed >, signed >=, signed <, signed <=
	}
	public Register resRegister;
	public CompareOp op;
	public IcmpInst(Register _resRegister, BaseOperand _operand1, BaseOperand _operand2, CompareOp _op, IRBasicBlock _belongBlock){
		super("icmp",new InstType(),_belongBlock);
		resRegister=_resRegister;
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}

}
