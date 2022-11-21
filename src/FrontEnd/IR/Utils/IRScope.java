package FrontEnd.IR.Utils;

import FrontEnd.IR.Operand.BaseOperand;

import java.util.HashMap;

public class IRScope {
	public HashMap<String, BaseOperand> id_Map;
	public IRScope parent;
	public IRScope(IRScope _parent){
		parent=_parent;
		HashMap
	}
}
