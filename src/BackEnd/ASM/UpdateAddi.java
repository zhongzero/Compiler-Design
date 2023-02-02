package BackEnd.ASM;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;
import BackEnd.ASM.Instruction.Binary_Inst_ASM;
import BackEnd.ASM.Instruction.Li_Inst_ASM;
import BackEnd.ASM.Module.ASMModule;
import BackEnd.ASM.Operand.PhysicalRegister_ASM;
import BackEnd.ASM.Operand.VirtualRegister_ASM;

import java.util.ListIterator;

public class UpdateAddi {
	ASMModule asmmodule;
	public UpdateAddi(ASMModule _asmmodule) {
		asmmodule=_asmmodule;
	}
	public void process(){
		//检查所有的addi操作,如果!(-2048<=imm&&imm<2048),拆成li和add两个操作
		//(addi imm有范围[-2^11,2^11) )
		for(int i=0;i<asmmodule.funcList.size();i++){
			ASMFunction tmpfunc=asmmodule.funcList.get(i);
			for(int j=0;j<tmpfunc.blockList.size();j++){
				ASMBasicBlock tmpblock=tmpfunc.blockList.get(j);
				ListIterator<Base_Inst_ASM> iterator=tmpblock.instList.listIterator();
				while(iterator.hasNext()) {
					Base_Inst_ASM inst = iterator.next();
					if((inst instanceof Binary_Inst_ASM) && ((Binary_Inst_ASM) inst).op.equals("addi")){
						if(!BetweenImm(inst.imm.imm)){
							iterator.previous();
							VirtualRegister_ASM tmp=new VirtualRegister_ASM("tmp");
							iterator.add(new Li_Inst_ASM(tmp,inst.imm,null));
							iterator.add(new Binary_Inst_ASM("add",inst.rd,inst.rs1,tmp,null,null));
							iterator.next();
							iterator.remove();
						}
					}
				}
			}
		}

		//把相邻的li,add合并成addi
		for(ASMFunction currentfunction:asmmodule.funcList){
			for(ASMBasicBlock currentblock:currentfunction.blockList){
				ListIterator<Base_Inst_ASM> iterator=currentblock.instList.listIterator(0);
				Base_Inst_ASM preinst=null;
				while(iterator.hasNext()) {
					Base_Inst_ASM inst = iterator.next();
					if(preinst!=null && preinst instanceof Li_Inst_ASM && BetweenImm(preinst.imm.imm) && inst instanceof Binary_Inst_ASM && ((Binary_Inst_ASM) inst).op.equals("add")){
						if(inst.rs1==preinst.rd){
							iterator.add(new Binary_Inst_ASM("addi",inst.rd,inst.rs2,null,preinst.imm,null));
							iterator.previous();
							iterator.previous();
							iterator.previous();
							iterator.remove();
							iterator.next();
							iterator.remove();
							iterator.next();
							preinst=null;
						}
						else if(inst.rs2==preinst.rd){
							iterator.add(new Binary_Inst_ASM("addi",inst.rd,inst.rs1,null,preinst.imm,null));
							iterator.previous();
							iterator.previous();
							iterator.previous();
							iterator.remove();
							iterator.next();
							iterator.remove();
							iterator.next();
							preinst=null;
						}
					}
					preinst=inst;
				}
			}
		}
	}
	public boolean BetweenImm(int offset){
		return -2048<=offset&&offset<2048;//在load/store地址偏移范围内
	}
}
