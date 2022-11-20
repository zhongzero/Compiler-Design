package FrontEnd.IR.TypeSystem;

public class VoidType extends BaseType{
	public VoidType(){}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public String toString(){
		return "void";
	}
	@Override
	public boolean isEqual(BaseType other){
		if(other instanceof VoidType)return true;
		else return false;
	}
}
