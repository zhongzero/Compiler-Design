package FrontEnd.IR.TypeSystem.OperandType;

import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class StructType extends BaseType {
	public String structname;
	public ArrayList<BaseType> membertype;
	public StructType(String _structname,ArrayList<BaseType> _membertype){
		structname=_structname;
		membertype=_membertype;
	}
	@Override
	public int bytesize(){
		int sum=0;
		for(int i=0;i<membertype.size();i++){
			sum+=membertype.get(i).bytesize();
		}
		return sum;
	}
	@Override
	public boolean isEqual(BaseType other){
		if((other instanceof StructType) && structname.equals(((StructType) other).structname) ) return true;
		else return false;
	}
}
