package FrontEnd.IR.TypeSystem;

import java.util.ArrayList;

public class FunctionType extends BaseType{
	public BaseType returntype;
	public ArrayList<BaseType> paralisttype;
	public FunctionType(BaseType _returntype,ArrayList<BaseType> _paralisttype){
		returntype=_returntype;
		paralisttype=_paralisttype;
	}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public String toString(){
		return null;//meaningless
	}
	@Override
	public boolean isEqual(BaseType other){
		return false;//meaningless
	}
}
