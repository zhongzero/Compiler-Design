package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.VoidType;

public class RetInst extends BaseInst{
	public RetInst(BaseOperand returnOperand, BasicBlock _belongBlock){
		super("ret",new VoidType(),_belongBlock);
		addOperand(returnOperand);
	}
}
