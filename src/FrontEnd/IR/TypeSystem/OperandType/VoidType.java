package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.TypeSystem.BaseType;

public class VoidType extends BaseType {
	public VoidType(){}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public boolean isEqual(BaseType other){
		if(other instanceof VoidType)return true;
		else return false;
	}
}
