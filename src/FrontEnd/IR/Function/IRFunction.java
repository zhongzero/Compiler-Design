package FrontEnd.IR.Function;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.FunctionType;

import java.util.ArrayList;

public class IRFunction extends User {
	public ArrayList<IRBasicBlock> blockList;
	public boolean isExternal;
	public Value funcReturnAddr;
	public IRBasicBlock funcBeginBlock;
	public IRBasicBlock funcEndBlock;
	public IRFunction(String _name,BaseType _type, ArrayList<Value> _paradata,boolean _isExternal){
		super(_name,_type);
		for(int i=0;i<_paradata.size();i++){
			addOperand(_paradata.get(i));
		}
		isExternal=_isExternal;
		blockList=new ArrayList<>();
	}
	public void addBasicBlock(IRBasicBlock _basicBlock){
		blockList.add(_basicBlock);
	}

	public String Functype_name_and_para(){
		StringBuilder str= new StringBuilder(((FunctionType)type).returntype.toString()+ " @" + (name.equals("f_main_1")?"main":name) + "(");
		for(int i=0;i<operandlist.size();i++){
			if(i!=0) str.append(",");
			str.append(operandlist.get(i).type.toString()+" %"+operandlist.get(i).name);
		}
		str.append(")");
		return str.toString();
	}

	@Override
	public String getName(){
		return "@"+name;
	}

	@Override
	public String toString() {
		StringBuilder ans=new StringBuilder();
		if(isExternal){
			ans.append("declare "+Functype_name_and_para());
		}
		else {
			ans.append("define "+Functype_name_and_para());
			ans.append("{\n");
			for(int i=0;i<blockList.size();i++){
				ans.append(blockList.get(i).toString());
			}
			ans.append("}");
		}
		return ans.toString();
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIRFunction(this);
	}
}
