package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.VoidType;

public class BrInst extends BaseInst{
	public Value condition;
	public IRBasicBlock ifBlock;
	public IRBasicBlock elseBlock;
	public BrInst(Value _condition, IRBasicBlock _ifBlock, IRBasicBlock _elseBlock, IRBasicBlock _belongBlock){
		super("br",new VoidType(),_belongBlock);
		condition=_condition;
		ifBlock=_ifBlock;
		elseBlock=_elseBlock;
		//condition==null :br ifBlock
	}

	@Override
	public String toString() {
		if(condition==null)return "br label "+ifBlock.getName();
		else return "br "+condition.getType_Name()+",label "+ifBlock.getName()+",label "+elseBlock.getName();
//		br label %block1
//		br i1 %a,label %block1,label %block2
	}


	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitBrInst(this);
	}
}
