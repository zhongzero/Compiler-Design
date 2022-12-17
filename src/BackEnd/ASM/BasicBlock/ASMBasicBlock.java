package BackEnd.ASM.BasicBlock;

import BackEnd.ASM.Instruction.Base_Inst_ASM;

import java.util.ArrayList;

public class ASMBasicBlock {
	String name;
	public ArrayList<Base_Inst_ASM> instList;
	public ASMBasicBlock(String _name){
		name=_name;
		instList=new ArrayList<>();
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
