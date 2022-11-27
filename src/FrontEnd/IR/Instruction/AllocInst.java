package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public class AllocInst extends BaseInst{
	public AllocInst(String varname,BaseType _alloctype, IRBasicBlock _belongBlock) {
		super(varname+"_addr", new PointerType(_alloctype), _belongBlock);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitAllocInst(this);
	}
}
