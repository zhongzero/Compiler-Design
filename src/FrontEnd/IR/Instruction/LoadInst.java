package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;

public class LoadInst extends BaseInst{
	public LoadInst(Value _addr, IRBasicBlock _belongBlock){
		super("load",_addr.type.dePointer(),_belongBlock);
		addOperand(_addr);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitLoadInst(this);
	}
}
