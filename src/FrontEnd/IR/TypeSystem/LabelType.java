package FrontEnd.IR.TypeSystem;

public class LabelType extends BaseType{
	@Override
	public int bytesize() {
		return -1;
	}

	@Override
	public String toString() {
		return "label";
	}

	@Override
	public boolean isEqual(BaseType other) {
		if (other instanceof LabelType)return true;
		else return false;
	}
}
