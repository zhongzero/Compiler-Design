package BackEnd.ASM.Module;

import BackEnd.ASM.ConstString.ASMConstString;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.GlobalVarDef.ASMGlobalVarDef;
import BackEnd.ASM.Operand.PhysicalRegister_ASM;

import java.util.ArrayList;

public class ASMModule {
	public ArrayList<ASMFunction> funcList;//.text
	public ArrayList<ASMGlobalVarDef> globalDefList;//.bss
	public ArrayList<ASMConstString> constStringList;//.rodata

	public ArrayList<PhysicalRegister_ASM> physicalReg;
	public ArrayList<PhysicalRegister_ASM> regForColor;
	public ArrayList<PhysicalRegister_ASM> callerSavedReg,calleeSavedReg;
	public PhysicalRegister_ASM ra,sp,s0,a0,t0,t1,t2,t3;

	public ASMModule(){
		funcList=new ArrayList<>();
		globalDefList=new ArrayList<>();
		constStringList=new ArrayList<>();
		initphysicalReg();
	}
	void initphysicalReg(){
		physicalReg=new ArrayList<>();
		physicalReg.add(new PhysicalRegister_ASM("zero"));//0
		physicalReg.add(new PhysicalRegister_ASM("ra"));//1
		physicalReg.add(new PhysicalRegister_ASM("sp"));//2
		physicalReg.add(new PhysicalRegister_ASM("gp"));//3
		physicalReg.add(new PhysicalRegister_ASM("tp"));//4
		physicalReg.add(new PhysicalRegister_ASM("t0"));//5
		physicalReg.add(new PhysicalRegister_ASM("t1"));//6
		physicalReg.add(new PhysicalRegister_ASM("t2"));//7
		physicalReg.add(new PhysicalRegister_ASM("s0"));//8
		physicalReg.add(new PhysicalRegister_ASM("s1"));//9
		physicalReg.add(new PhysicalRegister_ASM("a0"));//10
		physicalReg.add(new PhysicalRegister_ASM("a1"));//11
		physicalReg.add(new PhysicalRegister_ASM("a2"));//12
		physicalReg.add(new PhysicalRegister_ASM("a3"));//13
		physicalReg.add(new PhysicalRegister_ASM("a4"));//14
		physicalReg.add(new PhysicalRegister_ASM("a5"));//15
		physicalReg.add(new PhysicalRegister_ASM("a6"));//16
		physicalReg.add(new PhysicalRegister_ASM("a7"));//17
		physicalReg.add(new PhysicalRegister_ASM("s2"));//18
		physicalReg.add(new PhysicalRegister_ASM("s3"));//19
		physicalReg.add(new PhysicalRegister_ASM("s4"));//20
		physicalReg.add(new PhysicalRegister_ASM("s5"));//21
		physicalReg.add(new PhysicalRegister_ASM("s6"));//22
		physicalReg.add(new PhysicalRegister_ASM("s7"));//23
		physicalReg.add(new PhysicalRegister_ASM("s8"));//24
		physicalReg.add(new PhysicalRegister_ASM("s9"));//25
		physicalReg.add(new PhysicalRegister_ASM("s10"));//26
		physicalReg.add(new PhysicalRegister_ASM("s11"));//27
		physicalReg.add(new PhysicalRegister_ASM("t3"));//28
		physicalReg.add(new PhysicalRegister_ASM("t4"));//29
		physicalReg.add(new PhysicalRegister_ASM("t5"));//30
		physicalReg.add(new PhysicalRegister_ASM("t6"));//31
		ra=physicalReg.get(1);
		sp=physicalReg.get(2);
		s0=physicalReg.get(8);
		a0=physicalReg.get(10);
		t0=physicalReg.get(5);
		t1=physicalReg.get(6);
		t2=physicalReg.get(7);
		t3=physicalReg.get(28);
//		regForColor=new ArrayList<>();
//		regForColor.addAll(physicalReg);
//		regForColor.remove(physicalReg.get(0));//没有zero
//		regForColor.remove(physicalReg.get(1));//没有ra
//		regForColor.remove(physicalReg.get(2));//没有sp
//		regForColor.remove(physicalReg.get(3));//没有gp
//		regForColor.remove(physicalReg.get(4));//没有tp
//		regForColor.remove(physicalReg.get(5));//没有t0
//		regForColor.remove(physicalReg.get(8));//没有s0
//		regForColor.remove(physicalReg.get(6));//没有t1

		callerSavedReg=new ArrayList<>();
		//ra,t0也是callersaved reg,但是它不参加分配
//		callerSavedReg.add(physicalReg.get(6));//t1
		callerSavedReg.add(physicalReg.get(7));//t2
		callerSavedReg.add(physicalReg.get(28));//t3
		callerSavedReg.add(physicalReg.get(29));//t4
		callerSavedReg.add(physicalReg.get(30));//t5
		callerSavedReg.add(physicalReg.get(31));//t6
		callerSavedReg.add(physicalReg.get(10));//a0
		callerSavedReg.add(physicalReg.get(11));//a1
		callerSavedReg.add(physicalReg.get(12));//a2
		callerSavedReg.add(physicalReg.get(13));//a3
		callerSavedReg.add(physicalReg.get(14));//a4
		callerSavedReg.add(physicalReg.get(15));//a5
		callerSavedReg.add(physicalReg.get(16));//a6
		callerSavedReg.add(physicalReg.get(17));//a7

		calleeSavedReg=new ArrayList<>();
		//sp,s1也是calleesaved reg,但是它不参加分配
		calleeSavedReg.add(physicalReg.get(9));//s1
		calleeSavedReg.add(physicalReg.get(18));//s2
		calleeSavedReg.add(physicalReg.get(19));//s3
		calleeSavedReg.add(physicalReg.get(20));//s4
		calleeSavedReg.add(physicalReg.get(21));//s5
		calleeSavedReg.add(physicalReg.get(22));//s6
		calleeSavedReg.add(physicalReg.get(23));//s7
		calleeSavedReg.add(physicalReg.get(24));//s8
		calleeSavedReg.add(physicalReg.get(25));//s9
		calleeSavedReg.add(physicalReg.get(26));//s10
		calleeSavedReg.add(physicalReg.get(27));//s11

		//zero,gp,tp与caller/callee无关

		regForColor=new ArrayList<>();
		regForColor.addAll(calleeSavedReg);
		regForColor.addAll(callerSavedReg);
	}

	@Override
	public String toString(){
		StringBuilder ans=new StringBuilder();
		ans.append("\t.section\t.text\n");
		for(int i=0;i<funcList.size();i++){
			ans.append(funcList.get(i).toString());
		}
		ans.append("\t.section\t.bss\n");
		for(int i=0;i<globalDefList.size();i++){
			ans.append(globalDefList.get(i).toString());
		}
		ans.append("\t.section\t.rodata\n");
		for(int i=0;i<constStringList.size();i++){
			ans.append(constStringList.get(i).toString());
		}
		return ans.toString();
	}
}
