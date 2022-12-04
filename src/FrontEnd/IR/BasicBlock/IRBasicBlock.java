package FrontEnd.IR.BasicBlock;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.Instruction.BaseInst;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.LabelType;

import java.util.ArrayList;

public class IRBasicBlock extends Value {
	public IRFunction belongFunc;
	public ArrayList<BaseInst> instList;
	public IRBasicBlock(String _blockname, IRFunction _belongFunc){
		super(_blockname,new LabelType());
		instList=new ArrayList<>();
		belongFunc=_belongFunc;
		if(belongFunc!=null)belongFunc.addBasicBlock(this);
	}
	public void addInstruction(BaseInst _inst){
		instList.add(_inst);
	}

	@Override
	public String getName(){
		return "%"+name;
	}

	@Override
	public String toString() {
		StringBuilder ans=new StringBuilder();
		ans.append(name+":\n");
		for(int i=0;i<instList.size();i++){
			ans.append("\t"+instList.get(i).toString()+"\n");
		}
		return ans.toString();
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIRBasicBlock(this);
	}
}
