package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.InstType;

public class RetInst extends BaseInst{
	public RetInst(BaseOperand returnOperand, IRBasicBlock _belongBlock){
		super("ret",new InstType(),_belongBlock);
		addOperand(returnOperand);
	}
}
