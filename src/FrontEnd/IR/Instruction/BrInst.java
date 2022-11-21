package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.InstType;

public class BrInst extends BaseInst{
	public BaseOperand condition;
	public IRBasicBlock ifBlock;
	public IRBasicBlock elseBlock;
	public BrInst(BaseOperand _condition,IRBasicBlock _ifBlock,IRBasicBlock _elseBlock, IRBasicBlock _belongBlock){
		super("br",new InstType(),_belongBlock);
		condition=_condition;
		ifBlock=_ifBlock;
		elseBlock=_elseBlock;
	}
}
