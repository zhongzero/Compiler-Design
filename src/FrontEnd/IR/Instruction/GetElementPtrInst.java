package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class GetElementPtrInst extends BaseInst{
	public GetElementPtrInst(Value _pointer, ArrayList<Value> _offset,BaseType _returntype, IRBasicBlock _belongBlock) {
		super("getElementPtr", _returntype, _belongBlock);
		addOperand(_pointer);//0 pointer
		for(int i=0;i<_offset.size();i++){ //1,2,3... offset
			addOperand(_offset.get(i));
		}
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitGetElementPtrInst(this);
	}
}
