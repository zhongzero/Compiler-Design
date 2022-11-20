package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class GetElementPtrInst extends BaseInst{
	public GetElementPtrInst(BaseType _type, BaseOperand _pointer, ArrayList<BaseOperand> _offset, BasicBlock _belongBlock) {
		super("getElementPtr", _type, _belongBlock);
		assert(!_type.isEqual(_pointer.type));
		addOperand(_pointer);//0 pointer
		for(int i=0;i<_offset.size();i++){ //1,2,3... offset
			addOperand(_offset.get(i));
		}
	}
}
