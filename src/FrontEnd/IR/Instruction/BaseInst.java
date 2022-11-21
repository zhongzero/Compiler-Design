package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.TypeSystem.BaseType;

public class BaseInst extends User {
	public IRBasicBlock belongBlock;
	public BaseInst(String _name, BaseType _type, IRBasicBlock _belongBlock){
		super(_name,_type);
		belongBlock=_belongBlock;
	}
}
