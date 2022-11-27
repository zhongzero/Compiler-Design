package FrontEnd.IR;

import FrontEnd.AST.DefNodeSet.FuncDefNode;
import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Const.*;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.Instruction.*;
import FrontEnd.IR.Module.IRModule;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.LabelType;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.OperandType.*;

import java.util.HashMap;
import java.util.Map;

public class IRPrinter extends IRVisitor<Void>{
	String filename="test.mx";
	@Override
	public Void visitIRModule(IRModule node) {
		MyPrintln("source_filename="+"\""+filename+"\"");
		MyPrintln("target datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"");
		MyPrintln("target triple = \"x86_64-pc-linux-gnu\"");
		MyPrintln("");

		//print external function declare
		for (Map.Entry<String, IRFunction> entry: node.funcHashMap.entrySet()) {
			IRFunction tmp=entry.getValue();
			if(tmp.isExternal){
				MyPrint("declare "+((FunctionType)tmp.type).returntype+" "+tmp.Funcname_and_para());
			}
		}
		for (Map.Entry<String, IRFunction> entry: node.funcHashMap.entrySet()) {
			IRFunction tmp=entry.getValue();
			if(!tmp.isExternal){
//				!!!
			}
		}




		return null;
	}

	@Override
	public Void visitIRFunction(IRFunction node) {
		return null;
	}

	@Override
	public Void visitIRBasicBlock(IRBasicBlock node) {
		return null;
	}

	@Override
	public Void visitAllocInst(AllocInst node) {
		return null;
	}

	@Override
	public Void visitBinaryInst(BinaryInst node) {
		return null;
	}
	@Override
	public Void visitBitCastInst(BitCastInst node) {
		return null;
	}

	@Override
	public Void visitBrInst(BrInst node) {
		return null;
	}

	@Override
	public Void visitCallInst(CallInst node) {
		return null;
	}

	@Override
	public Void visitGetElementPtrInst(GetElementPtrInst node) {
		return null;
	}

	@Override
	public Void visitGlobalVarDef(GlobalVarDef node) {
		return null;
	}

	@Override
	public Void visitIcmpInst(IcmpInst node) {
		return null;
	}

	@Override
	public Void visitLoadInst(LoadInst node) {
		return null;
	}

	@Override
	public Void visitRetInst(RetInst node) {
		return null;
	}

	@Override
	public Void visitStoreInst(StoreInst node) {
		return null;
	}

	@Override
	public Void visitConstInt(ConstInt node) {
		return null;
	}

	@Override
	public Void visitConstBool(ConstBool node) {
		return null;
	}

	@Override
	public Void visitConstString(ConstString node) {
		return null;
	}

	@Override
	public Void visitConstNull(ConstNull node) {
		return null;
	}

	@Override
	public Void visitFunctionType(FunctionType node) {
		return null;
	}

	@Override
	public Void visitLabelType(LabelType node) {
		return null;
	}

	@Override
	public Void visitIntegerType(IntegerType node) {
		return null;
	}

	@Override
	public Void visitPointerType(PointerType node) {
		return null;
	}

	@Override
	public Void visitArrayType(ArrayType node) {
		return null;
	}

	@Override
	public Void visitStructType(StructType node) {
		return null;
	}

	@Override
	public Void visitVoidType(VoidType node) {
		return null;
	}

	@Override
	public Void visitBaseInst(BaseInst node) {
		return null;
	}

	@Override
	public Void visitBaseConst(BaseConst node) {
		return null;
	}

	@Override
	public Void visitBaseType(BaseType node) {
		return null;
	}

	@Override
	public Void visitUser(User node) {
		return null;
	}

	@Override
	public Void visitValue(Value node) {
		return null;
	}

	void MyPrint(String str){
		System.out.print(str);
	}
	void MyPrintln(String str){
		System.out.println(str);
	}
}
