package FrontEnd.IR.Function;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.FunctionType;

import java.util.ArrayList;

public class IRFunction extends User {
	public ArrayList<IRBasicBlock> blockList;
	public BaseType returnType;
	public IRFunction(BaseType _returnType, ArrayList<BaseOperand> _paradata){
		super("function",new FunctionType(_returnType,null));
		returnType=_returnType;
		for(int i=0;i<_paradata.size();i++){
			addOperand(_paradata.get(i));
		}
		blockList=new ArrayList<>();
		setFuncType(_paradata);
	}
	void setFuncType(ArrayList<BaseOperand> _paradata){
		((FunctionType)type).paratypelist=new ArrayList<>();
		for(int i=0;i<_paradata.size();i++){
			((FunctionType)type).paratypelist.add(_paradata.get(i).type);
		}
	}
	public void addBasicBlock(IRBasicBlock _basicBlock){
		blockList.add(_basicBlock);
	}
}
