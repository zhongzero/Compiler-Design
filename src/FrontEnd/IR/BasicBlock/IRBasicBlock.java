package FrontEnd.IR.BasicBlock;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.Instruction.BaseInst;
import FrontEnd.IR.TypeSystem.BlockType;

import java.util.ArrayList;

public class IRBasicBlock extends Value {
	public IRFunction belongFunc;
	public ArrayList<BaseInst> instList;
	public BaseInst terminalInst;
	public IRBasicBlock(String _blockname, IRFunction _belongFunc){
		super(_blockname,new BlockType());
		instList=new ArrayList<>();
		belongFunc=_belongFunc;
		terminalInst=null;
	}
	public void addInstruction(BaseInst _inst){
		instList.add(_inst);
	}
	public void setTerminalInst(BaseInst _inst){
		terminalInst=_inst;
	}
}
