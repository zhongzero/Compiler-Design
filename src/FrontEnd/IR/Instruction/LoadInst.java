package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;

public class LoadInst extends BaseInst{
	public LoadInst(Value _addr, IRBasicBlock _belongBlock){
		super("load",_addr.type.dePoint(),_belongBlock);
		addOperand(_addr);
	}

	@Override
	public String toString() {
		return this.getName()+"=load "+this.getType()+","+operandlist.get(0).getType_Name()+",align "+type.bytesize();
//		%a_load=load i32,i32* %addr,align 4
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitLoadInst(this);
	}
}
