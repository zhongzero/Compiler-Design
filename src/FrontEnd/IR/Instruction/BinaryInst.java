package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.Operand.Register;
import FrontEnd.IR.TypeSystem.InstType;

public class BinaryInst extends BaseInst{
	public enum BinaryOp{
		add,sub,mul,sdiv,srem,//+,-,*,/,%
		shl, //<<
		ashr,//arithmetic >>
		and,or,xor //&,|,^
	}
	public BinaryOp op;
	public Register resRegister;
	public BinaryInst(Register _resRegister, BaseOperand _operand1, BaseOperand _operand2, BinaryOp _op, IRBasicBlock _belongBlock){
		super(_op.name(),new InstType(),_belongBlock);
		resRegister=_resRegister;
		addOperand(_operand1);
		addOperand(_operand2);
		op=_op;
	}
}
