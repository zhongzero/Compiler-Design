package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

public class IntegerType extends BaseType {
	public int width;
	public IntegerType(int _width){
		width=_width;
	}
	@Override
	public int bytesize(){
		return (width+7)/8;
	}
	@Override
	public boolean isEqual(BaseType other){
		if((other instanceof IntegerType) && width==((IntegerType) other).width)return true;
		else return false;
	}

	@Override
	public String toString(){
		return "i"+width;
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIntegerType(this);
	}
}
