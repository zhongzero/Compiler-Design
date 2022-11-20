package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;

public class LoadInst extends BaseInst{
	public LoadInst(BaseOperand _addr, BasicBlock _belongBlock){
		super("load",_addr.type.dePointer(),_belongBlock);
		addOperand(_addr);
	}
}
