package FrontEnd.IR.Utils;

import FrontEnd.IR.Operand.BaseOperand;

import java.util.HashMap;

public class IRScope {
	public HashMap<String, BaseOperand> varHashMap;
	public IRScope parent;
	public IRScope(IRScope _parent){
		parent=_parent;
		varHashMap=new HashMap<>();
	}
}
