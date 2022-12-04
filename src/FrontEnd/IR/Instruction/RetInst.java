package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

public class RetInst extends BaseInst{
	public RetInst(Value returnOperand, IRBasicBlock _belongBlock){
		super("ret",new VoidType(),_belongBlock);
		addOperand(returnOperand);
	}

	@Override
	public String toString() {
		if(operandlist.get(0).type instanceof VoidType)return "ret void";
		else return "ret "+operandlist.get(0).getType_Name();
//		ret i32 %a
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitRetInst(this);
	}
}
