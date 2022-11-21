package FrontEnd.IR.Operand.Const;

import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.BaseType;

public class BaseConst extends BaseOperand {
	public BaseConst(String _name, BaseType _type){
		super(_name,_type);
	}
}
