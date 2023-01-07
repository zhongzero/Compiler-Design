package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

public class PointerType extends BaseType {
	public BaseType basetype;
	public int dim;
	public PointerType(BaseType _basetype){
		if(_basetype instanceof PointerType){
			basetype=((PointerType) _basetype).basetype;
			dim=((PointerType) _basetype).dim+1;
		}
		else {
			basetype=_basetype;
			dim=1;
		}
	}
	public PointerType(BaseType _basetype,int _dim){
		if(_basetype instanceof PointerType){
			basetype=((PointerType) _basetype).basetype;
			dim=((PointerType) _basetype).dim+_dim;
		}
		else {
			basetype=_basetype;
			dim=_dim;
		}
	}
	@Override
	public int bytesize(){
		return 8;//llvm ir在64位机子上占8字节
	}
	@Override
	public boolean isEqual(BaseType other){
		if((other instanceof PointerType) && basetype.isEqual(((PointerType) other).basetype)
				&& dim==((PointerType) other).dim)return true;
		else return false;
	}

	@Override
	public String toString(){
		return basetype.toString()+"*".repeat(dim);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitPointerType(this);
	}
}
