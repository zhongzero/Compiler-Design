package FrontEnd.IR.TypeSystem;

import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public abstract class BaseType {
	public abstract int bytesize();
	public abstract boolean isEqual(BaseType other);

	public BaseType dePoint(){
		if(!(this instanceof PointerType))throw new RuntimeException("can't resolve address");
		if( ((PointerType)this).dim==1 )return ((PointerType)this).basetype;
		else return new PointerType(((PointerType)this).basetype,((PointerType)this).dim-1);
	}

	public abstract String toString();

	public abstract <T> T accept(IRVisitor<T> visitor);
}
