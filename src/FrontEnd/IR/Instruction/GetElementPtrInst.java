package FrontEnd.IR.Instruction;

import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.Operand.Register;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.InstType;

import java.util.ArrayList;

public class GetElementPtrInst extends BaseInst{
	public Register resRegister;
	public GetElementPtrInst(Register _resRegister,BaseType _type, BaseOperand _pointer, ArrayList<BaseOperand> _offset, IRBasicBlock _belongBlock) {
		super("getElementPtr", new InstType(), _belongBlock);
		assert(!_type.isEqual(_pointer.type));
		resRegister=_resRegister;
		addOperand(_pointer);//0 pointer
		for(int i=0;i<_offset.size();i++){ //1,2,3... offset
			addOperand(_offset.get(i));
		}
	}
}
