package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.TypeSystem.VoidType;

public class BrInst extends BaseInst{
	public BrInst(BasicBlock _destBlock,BasicBlock _belongBlock){
		super("br",new VoidType(),_belongBlock);
		addOperand(_destBlock);
	}
}
