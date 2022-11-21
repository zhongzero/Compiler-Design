package FrontEnd.IR.TypeSystem;

import java.util.ArrayList;

public class FunctionType extends BaseType{
	public BaseType returntype;
	public ArrayList<BaseType> paratypelist;
	public FunctionType(BaseType _returntype,ArrayList<BaseType> _paratypelist){
		returntype=_returntype;
		paratypelist=_paratypelist;
	}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public boolean isEqual(BaseType other){
		return false;//meaningless
	}
}
