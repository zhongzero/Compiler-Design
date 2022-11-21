package FrontEnd.IR.TypeSystem;

public class InstType extends BaseType{
	public InstType(){}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public boolean isEqual(BaseType other){
		if(other instanceof InstType)return true;
		else return false;
	}
}
