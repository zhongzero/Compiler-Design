package FrontEnd.IR.Const;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.ArrayType;
import FrontEnd.IR.TypeSystem.OperandType.IntegerType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public class ConstString extends BaseConst {
	public String value;
	public ConstString(String _value){
		super("const_string",new PointerType(new ArrayType(new IntegerType(8),_value.length())));
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

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitConstString(this);
	}
}
