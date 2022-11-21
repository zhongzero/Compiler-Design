package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.Operand.Register;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.InstType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public class AllocInst extends BaseInst{
	public Register resRegister;
	public AllocInst(Register _resRegister,BaseOperand _addr, IRBasicBlock _belongBlock) {
		super("alloc", new InstType(), _belongBlock);
		resRegister=_resRegister;
	}
}
