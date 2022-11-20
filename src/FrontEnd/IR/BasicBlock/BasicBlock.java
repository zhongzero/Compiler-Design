package FrontEnd.IR.BasicBlock;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.Function;
import FrontEnd.IR.Instruction.BaseInst;
import FrontEnd.IR.TypeSystem.LabelType;
import FrontEnd.IR.TypeSystem.VoidType;

import java.awt.*;
import java.util.ArrayList;

public class BasicBlock extends Value {
	public Function belongFunc;
	public ArrayList<BaseInst> instList;
	public BaseInst terminalInst;
	public BasicBlock(ArrayList<BaseInst> _instList,BaseInst _terminalInst,Function _belongFunc){
		super("basicBlock",new LabelType());
		instList=_instList;
		terminalInst=_terminalInst;
		belongFunc=_belongFunc;
	}
}
