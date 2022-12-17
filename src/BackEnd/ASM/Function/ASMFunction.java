package BackEnd.ASM.Function;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;

import java.util.ArrayList;

public class ASMFunction {
	public String name;
	public ArrayList<ASMBasicBlock> blockList;
	public ASMFunction(String _name){
		name=_name;
		blockList=new ArrayList<>();
	}
	@Override
		public String toString(){
		StringBuilder ans=new StringBuilder();
		ans.append("\t.globl\t"+name+"\n");
		ans.append("\t.p2align\t2\n");
		ans.append("\t.type\t"+name+",@function\n");
		ans.append(name+":\n");
		for(int i=0;i<blockList.size();i++){
			ans.append(blockList.get(i).toString());
		}
		ans.append("\t.size\t"+name+",\t.-"+name+"\n\n");
		return ans.toString();
	}
}
