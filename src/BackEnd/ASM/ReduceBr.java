package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;
import BackEnd.ASM.Instruction.Branch_Inst_ASM;
import BackEnd.ASM.Module.ASMModule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class ReduceBr {
	ASMModule asmmodule;
	public ReduceBr(ASMModule _asmmodule){
		asmmodule=_asmmodule;
	}
	HashMap<ASMBasicBlock, HashSet<ASMBasicBlock>> preblock=new HashMap<>();
	HashSet<ASMBasicBlock> ForBidForMerge=new HashSet<>();
	public void process(){
		for(ASMFunction currentfunction:asmmodule.funcList){
			processFunction(currentfunction);
		}
	}
	public void processFunction(ASMFunction currentfunction){
		while(true){
			GetAllPreBlock(currentfunction);
			boolean flag=false;
			for (ASMBasicBlock currentblock : currentfunction.blockList) {
				if(currentblock.instList.size()<20 && !ForBidForMerge.contains(currentblock) && preblock.containsKey(currentblock)){
					for(ASMBasicBlock preblock:preblock.get(currentblock)){
						Merge(preblock,currentblock);
					}
					currentfunction.blockList.remove(currentblock);
					flag=true;
					break;
				}
			}
			if(!flag)break;
		}
	}
	void GetAllPreBlock(ASMFunction currentfunction){
		preblock.clear();
		ForBidForMerge.clear();
		for(ASMBasicBlock currentblock:currentfunction.blockList){
			//preblock通过beqz到的block不能被merge
			ForBidForMerge.addAll(GetNextBlock_beqz(currentblock, currentfunction));

			for(ASMBasicBlock nextblock:GetNextBlock_j(currentblock,currentfunction)){
				if(nextblock==currentblock){//自循环不能被merge
					ForBidForMerge.add(nextblock);
					continue;
				}
				if(!preblock.containsKey(nextblock)){
					HashSet<ASMBasicBlock> tmp=new HashSet<>();
					tmp.add(currentblock);
					preblock.put(nextblock,tmp);
				}
				else {
					HashSet<ASMBasicBlock> tmp=preblock.get(nextblock);
					tmp.add(currentblock);
					preblock.replace(nextblock,tmp);
				}
			}
		}
	}
	ArrayList<ASMBasicBlock> GetNextBlock_j(ASMBasicBlock currentblock,ASMFunction currentfunction){
		ArrayList<ASMBasicBlock> ans=new ArrayList<>();
		for(Base_Inst_ASM inst:currentblock.instList){
			if(inst instanceof Branch_Inst_ASM && inst.rs1==null){//j
				ans.add(GetJumpBlock(((Branch_Inst_ASM) inst).jumpblockname,currentfunction));
			}
		}
		return ans;
	}
	ArrayList<ASMBasicBlock> GetNextBlock_beqz(ASMBasicBlock currentblock,ASMFunction currentfunction){
		ArrayList<ASMBasicBlock> ans=new ArrayList<>();
		for(Base_Inst_ASM inst:currentblock.instList){
			if(inst instanceof Branch_Inst_ASM && inst.rs1!=null){//beqz
				ans.add(GetJumpBlock(((Branch_Inst_ASM) inst).jumpblockname,currentfunction));
			}
		}
		return ans;
	}
	ASMBasicBlock GetJumpBlock(String blockname,ASMFunction currentfunction){
		for(ASMBasicBlock currentblock:currentfunction.blockList){
			if(currentblock.name.equals(blockname))return currentblock;
		}
		throw new RuntimeException("can't find jumpblock ???");
	}

	void Merge(ASMBasicBlock block,ASMBasicBlock deleteblock){
//		System.out.println("!!! "+block.name+" "+deleteblock.name);
		LinkedList<Base_Inst_ASM> newinstList=new LinkedList<>();
		for(Base_Inst_ASM inst:block.instList){
			if(inst instanceof Branch_Inst_ASM && inst.rs1==null){//j
				newinstList.addAll(deleteblock.instList);
			}
			else {
				newinstList.add(inst);//注：这样同一个inst可能在多个block被用到
			}
		}
		block.instList=newinstList;
	}
}
