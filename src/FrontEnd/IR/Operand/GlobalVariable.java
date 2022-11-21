package FrontEnd.IR.Operand;

import FrontEnd.IR.Operand.Const.BaseConst;
import FrontEnd.IR.TypeSystem.BaseType;

public class GlobalVariable extends BaseConst {
	public BaseOperand initOperand;
	public GlobalVariable(String _name, BaseType _type,BaseOperand _initOperand){
		super(_name,_type);
		initOperand=_initOperand;
	}
}
