package FrontEnd.IR.TypeSystem;

import FrontEnd.IR.IRVisitor;

public class LabelType extends BaseType{
	@Override
	public int bytesize() {
		return -1;
	}


	@Override
	public boolean isEqual(BaseType other) {
		if (other instanceof LabelType)return true;
		else return false;
	}

	@Override
	public String toString(){
		return null;
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitLabelType(this);
	}
}
