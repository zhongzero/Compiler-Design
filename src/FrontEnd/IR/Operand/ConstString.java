package FrontEnd.IR.Operand;

import FrontEnd.IR.TypeSystem.ArrayType;
import FrontEnd.IR.TypeSystem.IntegerType;
import FrontEnd.IR.TypeSystem.PointerType;

public class ConstString extends BaseOperand {
	String value;
	public ConstString(String _value){
		super("_const_string",new PointerType(new ArrayType(new IntegerType(8),_value.length())));
		value=_value;
	}

	@Override
	public String toString() {
		return "@"+name+"=private unnamed_addr constant ["+(value.length()+1)+" x i8] c\""+
				value.replace("\\", "\\5C").replace("\n", "\\0A").
						replace("\t", "\\09").replace("\"", "\\22").
						replace("\0", "\\00")+
				"\",align 1";
	}
}
