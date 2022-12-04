package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class GetElementPtrInst extends BaseInst{
	public GetElementPtrInst(Value _pointer, ArrayList<Value> _offset,BaseType _returntype, IRBasicBlock _belongBlock) {
		super("gep", _returntype, _belongBlock);
		addOperand(_pointer);//0 pointer
		for(int i=0;i<_offset.size();i++){ //1,2,3... offset
			addOperand(_offset.get(i));
		}
	}

	@Override
	public String toString() {
		StringBuilder ans=new StringBuilder();
		ans.append(this.getName()+"=getelementptr inbounds "+operandlist.get(0).type.dePoint().toString()+","+operandlist.get(0).getType_Name());
		for(int i=1;i<operandlist.size();i++){
			operandlist.get(i);
			ans.append(","+operandlist.get(i).getType_Name());
		}
//		%gep1=getelementptr inbounds [5 x i8],[5 x i8]* @a,i32 0,i32 0
		return ans.toString();
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitGetElementPtrInst(this);
	}
}
