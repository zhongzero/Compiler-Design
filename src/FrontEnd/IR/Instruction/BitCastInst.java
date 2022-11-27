package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

public class BitCastInst extends BaseInst{
	public BitCastInst(Value _operand, BaseType _targettype, IRBasicBlock _belongBlock){
		super("bitCast",_targettype,_belongBlock);
		addOperand(_operand);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitBitCastInst(this);
	}
}
