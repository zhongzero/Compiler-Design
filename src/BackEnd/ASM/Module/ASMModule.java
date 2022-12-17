package BackEnd.ASM.Module;

import BackEnd.ASM.ConstString.ASMConstString;
import BackEnd.ASM.Function.ASMFunction;
import BackEnd.ASM.GlobalVarDef.ASMGlobalVarDef;

import java.util.ArrayList;

public class ASMModule {
	public ArrayList<ASMFunction> funcList;//.text
	public ArrayList<ASMGlobalVarDef> globalDefList;//.bss
	public ArrayList<ASMConstString> constStringList;//.rodata

	public ASMModule(){
		funcList=new ArrayList<>();
		globalDefList=new ArrayList<>();
		constStringList=new ArrayList<>();
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
