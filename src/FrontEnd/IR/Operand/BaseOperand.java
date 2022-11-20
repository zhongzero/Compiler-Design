package FrontEnd.IR.Operand;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.TypeSystem.BaseType;

public class BaseOperand extends User {
	public BaseOperand(String _name, BaseType _type){
		super(_name,_type);
	}
}
