package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.FunctionType;

import java.util.ArrayList;

public class CallInst extends BaseInst{
	public CallInst(IRFunction _callFunc, ArrayList<Value> _paradata, IRBasicBlock _belongBlock) {
		super("call", ((FunctionType)(_callFunc.type)).returntype, _belongBlock);
		addOperand(_callFunc);//0 function
		for(int i=0;i<_paradata.size();i++){ // 1,2,3... paradata
			addOperand(_paradata.get(i));
		}
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitCallInst(this);
	}
}
