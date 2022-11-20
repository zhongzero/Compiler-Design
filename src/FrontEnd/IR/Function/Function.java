package FrontEnd.IR.Function;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.BasicBlock;
import FrontEnd.IR.Operand.BaseOperand;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class Function extends User {
	public ArrayList<BasicBlock> blockList;
	public BaseOperand returnAddr;
	public Function(BaseType _type,ArrayList<BasicBlock> _blockList,ArrayList<BaseOperand> _paradata){
		super("function",_type);
		blockList=_blockList;
		returnAddr=null;
		for(int i=0;i<_paradata.size();i++){
			addOperand(_paradata.get(i));
		}
	}
}
