package FrontEnd.IR.Instruction;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.TypeSystem.BaseType;

public class BaseInst extends User {
	public BasicBlock belongBlock;
	public BaseInst(String _name, BaseType _type, BasicBlock _belongBlock){
		super(_name,_type);
		belongBlock=_belongBlock;
	}
}
