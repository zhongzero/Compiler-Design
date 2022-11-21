package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.TypeSystem.BaseType;

public class ArrayType extends BaseType {
	public BaseType basetype;
	public int size;
	public ArrayType(BaseType _basetype,int _size){
		basetype=_basetype;
		size=_size;
	}
	@Override
	public int bytesize(){
		return -1;//meaningless
	}
	@Override
	public boolean isEqual(BaseType other){
		if((other instanceof ArrayType) && basetype==((ArrayType) other).basetype && size==((ArrayType) other).size )
			return true;
		else return false;
	}
}
