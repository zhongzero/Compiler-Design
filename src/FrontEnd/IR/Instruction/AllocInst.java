package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.PointerType;

public class AllocInst extends BaseInst{
	public AllocInst(BaseOperand _addr, BaseType _type, BasicBlock _belongBlock) {
		super("alloc", new PointerType(_type), _belongBlock);
	}
}
