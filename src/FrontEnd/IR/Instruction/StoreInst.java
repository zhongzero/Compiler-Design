package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

public class StoreInst extends BaseInst{
	public StoreInst(Value _addr, Value _operand, IRBasicBlock _belongBlock){
		super("store",new VoidType(),_belongBlock);
		addOperand(_addr);//0 address
		addOperand(_operand);//1 operand
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitStoreInst(this);
	}
}
