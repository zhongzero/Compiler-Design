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
	public String toString() {
		return this.getName()+"=bitcast "+operandlist.get(0).getType_Name()+" to "+type.toString();
//		%bitCast1=bitcast i8* %a to %class_node*
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitBitCastInst(this);
	}
}
