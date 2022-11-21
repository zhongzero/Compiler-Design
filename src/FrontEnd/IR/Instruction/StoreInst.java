package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.InstType;

public class StoreInst extends BaseInst{
	public StoreInst(BaseOperand _addr, BaseOperand _operand, IRBasicBlock _belongBlock){
		super("store",new InstType(),_belongBlock);
		addOperand(_addr);//0 address
		addOperand(_operand);//1 operand
	}
}
