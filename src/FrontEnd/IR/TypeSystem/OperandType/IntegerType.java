package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

public class IntegerType extends BaseType {
	public int width;
	public IntegerType(int _width){
		width=_width;
	}
	@Override
	public int bytesize(){//用于malloc计算需要多少空间
		if(width==1)return 4;//让bool类型也占4字节，方面后面转ASM(ASM中设计让bool无论在栈上/堆上/数据区中都占4字节)
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
