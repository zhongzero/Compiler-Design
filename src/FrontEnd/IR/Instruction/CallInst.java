package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.Operand.Register;
import FrontEnd.IR.TypeSystem.InstType;

import java.util.ArrayList;

public class CallInst extends BaseInst{
	public Register resRegister;
	public CallInst(Register _resRegister,IRFunction _callFunc, ArrayList<BaseOperand> _paradata, IRBasicBlock _belongBlock) {
		super("call",new InstType(), _belongBlock);
		resRegister=_resRegister;
		addOperand(_callFunc);//0 function
		for(int i=0;i<_paradata.size();i++){ // 1,2,3... paradata
			addOperand(_paradata.get(i));
		}
	}
}
