package BackEnd.ASM.Operand;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;
import BackEnd.ASM.Instruction.Branch_Inst_ASM;
import BackEnd.ASM.Instruction.Ret_Inst_ASM;

import java.util.*;

public class LiveAnalysis {
	public HashMap<Base_Inst_ASM,HashSet<Base_Inst_ASM> > succ;//每个指令(节点)的后继指令(节点)
	public HashMap<Base_Inst_ASM,HashSet<Register_ASM> > liveIn,liveOut;

	public void process(ASMFunction currentfunction){//得到liveIn和liveOut
		getSuccessor(currentfunction);

		liveIn=new HashMap<>();
		liveOut=new HashMap<>();
		for(ASMBasicBlock currentblock:currentfunction.blockList){
			for(Base_Inst_ASM inst:currentblock.instList){
				liveIn.put(inst,new HashSet<>());
				liveOut.put(inst,new HashSet<>());
			}
		}

		while (true){
			boolean flag=false;
			for(int i=currentfunction.blockList.size()-1;i>=0;i--) {
				ASMBasicBlock currentblock = currentfunction.blockList.get(i);
//				System.out.println(currentblock.name);
				Iterator<Base_Inst_ASM> iterator = currentblock.instList.descendingIterator();
				while (iterator.hasNext()) {
					Base_Inst_ASM inst = iterator.next();
					HashSet<Register_ASM> liveIn2,liveOut2=new HashSet<>();
					for(Base_Inst_ASM succinst:succ.get(inst)){
						liveOut2.addAll(liveIn.get(succinst));
					}
					liveIn2 = new HashSet<>(liveOut2);
					liveIn2.removeAll(inst.def);
					liveIn2.addAll(inst.use);

					if(!Equal(liveIn.get(inst),liveIn2) || !Equal(liveOut.get(inst),liveOut2) )flag=true;

					liveIn.replace(inst,liveIn2);
					liveOut.replace(inst,liveOut2);
				}
			}
			if(!flag)break;
		}

//		System.out.println("!!!!");
//		int num=0;
//		for(ASMBasicBlock currentblock:currentfunction.blockList){
//			for(Base_Inst_ASM inst:currentblock.instList){
//				System.out.println(liveOut.get(inst));
//				System.out.println(inst);
//				if(++num==20)throw new RuntimeException();
//			}
//		}
	}
	boolean Equal(HashSet<Register_ASM> tmp1,HashSet<Register_ASM> tmp2){
		if(tmp1.size() !=tmp2.size())return false;
		return tmp1.containsAll(tmp2);
	}
	void getSuccessor(ASMFunction currentfunction){
		succ=new HashMap<>();
		for(ASMBasicBlock currentblock:currentfunction.blockList){
			Base_Inst_ASM preinst=null;
			for(Base_Inst_ASM inst:currentblock.instList){
				//结尾一定是ret或者j(beqz一定在j之前)
				if(inst instanceof Ret_Inst_ASM)succ.put(inst,new HashSet<>());//ret
				if(inst instanceof Branch_Inst_ASM && inst.rs1==null){//j
					HashSet<Base_Inst_ASM> tmp=new HashSet<>();
					tmp.add(GetJumpBlockFirstInst(((Branch_Inst_ASM) inst).jumpblockname,currentfunction));
					succ.put(inst,tmp);
				}

				if(preinst!=null){
					HashSet<Base_Inst_ASM> tmp=new HashSet<>();
					tmp.add(inst);
					if(preinst instanceof Branch_Inst_ASM){//一定为beqz
						tmp.add(GetJumpBlockFirstInst(((Branch_Inst_ASM) preinst).jumpblockname,currentfunction));
						succ.put(preinst,tmp);
					}
					else {//一般非跳转指令
						succ.put(preinst,tmp);//一般非跳转指令顺序执行
					}

				}
				preinst=inst;
			}
		}
	}
	Base_Inst_ASM GetJumpBlockFirstInst(String blockname,ASMFunction currentfunction){
		for(ASMBasicBlock currentblock:currentfunction.blockList){
			if(currentblock.name.equals(blockname))return currentblock.instList.get(0);
		}
		throw new RuntimeException("can't find jumpblock ???");
	}
}
