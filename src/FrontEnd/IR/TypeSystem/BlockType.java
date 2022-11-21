package FrontEnd.IR.TypeSystem;

public class BlockType extends BaseType{
	@Override
	public int bytesize() {
		return -1;
	}


	@Override
	public boolean isEqual(BaseType other) {
		if (other instanceof BlockType)return true;
		else return false;
	}
}
