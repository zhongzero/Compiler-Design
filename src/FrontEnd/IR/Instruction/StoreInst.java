package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.VoidType;

public class StoreInst extends BaseInst{
	public StoreInst(BaseOperand _addr, BaseOperand _operand, BasicBlock _belongBlock){
		super("store",new VoidType(),_belongBlock);
		addOperand(_addr);//0 address
		addOperand(_operand);//1 operand
	}
}
