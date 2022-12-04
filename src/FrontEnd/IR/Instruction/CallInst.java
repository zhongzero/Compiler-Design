package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

import java.util.ArrayList;

public class CallInst extends BaseInst{
	public CallInst(IRFunction _callFunc, ArrayList<Value> _paradata, IRBasicBlock _belongBlock) {
		super("call", ((FunctionType)(_callFunc.type)).returntype, _belongBlock);
		addOperand(_callFunc);//0 function
		for(int i=0;i<_paradata.size();i++){ // 1,2,3... paradata
			addOperand(_paradata.get(i));
		}
	}

	public String Functype_name_and_paradata(){
		StringBuilder str= new StringBuilder(type.toString()+" "+operandlist.get(0).getName()+"(");
		for(int i=1;i<operandlist.size();i++){
			if(i!=1) str.append(",");
			str.append(operandlist.get(i).getType_Name());
		}
		str.append(")");
		return str.toString();
	}

	@Override
	public String toString() {
		if(type instanceof VoidType)return "call "+Functype_name_and_paradata();
		else return this.getName()+"=call "+Functype_name_and_paradata();
//		call void @FFF()
//		%call1=call i8* @FFF(i8* %a,i8* %b)
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitCallInst(this);
	}
}
