package BackEnd.ASM.BasicBlock;

import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;

import java.util.ArrayList;
import java.util.LinkedList;

public class ASMBasicBlock {
	public String name;
	public LinkedList<Base_Inst_ASM> instList;
	//用linkedlist是为了方面寄存器分配spill时，一个操作变成load,op,store多个,方便修改
	public ASMBasicBlock(String _name, ASMFunction _belongFunc){
		if(_belongFunc!=null)_belongFunc.blockList.add(this);
		name=_name;
		instList=new LinkedList<>();
	}
	@Override
	public String toString() {
		StringBuilder ans = new StringBuilder();
		ans.append("."+name + ":\n");
		for(int i=0;i<instList.size();i++){
			ans.append(instList.get(i).toString());
		}
		return ans.toString();
	}
}
