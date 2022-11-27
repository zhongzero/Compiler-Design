package FrontEnd.IR.BasicBlock;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.Instruction.BaseInst;
import FrontEnd.IR.TypeSystem.LabelType;

import java.util.ArrayList;

public class IRBasicBlock extends Value {
	public IRFunction belongFunc;
	public ArrayList<BaseInst> instList;
	public IRBasicBlock(String _blockname, IRFunction _belongFunc){
		super(_blockname,new LabelType());
		instList=new ArrayList<>();
		belongFunc=_belongFunc;
		belongFunc.addBasicBlock(this);
	}
	public void addInstruction(BaseInst _inst){
		instList.add(_inst);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIRBasicBlock(this);
	}
}
