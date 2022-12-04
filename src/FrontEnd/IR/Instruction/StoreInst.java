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
	public String toString() {
		return "store "+operandlist.get(1).getType_Name()+","+operandlist.get(0).getType_Name()+",align "+operandlist.get(1).type.bytesize();
//		store i32 0,i32* %addr,align 4
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitStoreInst(this);
	}
}
