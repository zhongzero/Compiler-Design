package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.InstType;

public class LoadInst extends BaseInst{
	public LoadInst(BaseOperand _addr, IRBasicBlock _belongBlock){
		super("load",new InstType(),_belongBlock);
		addOperand(_addr);
	}
}
