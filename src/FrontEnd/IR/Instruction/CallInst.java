package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Function.Function;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.VoidType;

import java.util.ArrayList;

public class CallInst extends BaseInst{
	public CallInst(Function _callFunc, ArrayList<BaseOperand> _paradata, BasicBlock _belongBlock) {
		super("alloc",new VoidType(), _belongBlock);
		addOperand(_callFunc);//0 function
		for(int i=0;i<_paradata.size();i++){ // 1,2,3... paradata
			addOperand(_paradata.get(i));
		}
	}
}
