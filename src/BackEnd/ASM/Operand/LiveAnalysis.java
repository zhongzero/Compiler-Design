package BackEnd.ASM.Operand;

import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.Instruction.Base_Inst_ASM;

import java.util.HashMap;
import java.util.HashSet;

public class LiveAnalysis {
	public HashMap<Base_Inst_ASM,HashSet<Register_ASM> > liveIn,liveOut;
	public void process(ASMFunction currentfunction){

	}
}
