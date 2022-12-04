package FrontEnd.IR.Module;

import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.Const.ConstString;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.TypeSystem.OperandType.StructType;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class IRModule extends Value {
	public LinkedHashMap<String, IRFunction> funcHashMap;
	public HashMap<String, StructType> structHashMap;
	public ArrayList<GlobalVarDef> globalVarList;
	public ArrayList<ConstString> stringList;
	public IRModule(){
		super("module",null);
		funcHashMap=new LinkedHashMap<>();
		structHashMap=new HashMap<>();
		globalVarList=new ArrayList<>();
		stringList =new ArrayList<>();
	}

	@Override
	public String toString(){
		StringBuilder ans=new StringBuilder();
		ans.append("target datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\n");
		ans.append("target triple = \"x86_64-pc-linux-gnu\"\n");

		//print struct
		for (java.util.Map.Entry<String, StructType> entry: structHashMap.entrySet()) {
			ans.append(entry.getValue().defStructString()+"\n");
		}
		ans.append("\n");

		//print const string
		for(int i=0;i<stringList.size();i++){
			ans.append(stringList.get(i)+"\n");
		}
		ans.append("\n");

		//print global variable
		for(int i=0;i<globalVarList.size();i++){
			ans.append(globalVarList.get(i).toString()+"\n");
		}
		ans.append("\n");

		//print external function declare
		for (Map.Entry<String, IRFunction> entry: funcHashMap.entrySet()) {
			IRFunction tmp=entry.getValue();
			if(tmp.isExternal)ans.append(tmp.toString()+"\n");
		}
		ans.append("\n");

		//print internal function define
		for (Map.Entry<String, IRFunction> entry: funcHashMap.entrySet()) {
			IRFunction tmp=entry.getValue();
			if(!tmp.isExternal)ans.append(tmp.toString()+"\n");
		}
		return ans.toString();
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitIRModule(this);
	}
}
