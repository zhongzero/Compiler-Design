package BackEnd.ASM;

import BackEnd.ASM.Module.ASMModule;
import FrontEnd.IR.Basic.User;
import FrontEnd.IR.Basic.Value;
import FrontEnd.IR.BasicBlock.IRBasicBlock;
import FrontEnd.IR.Const.*;
import FrontEnd.IR.Function.IRFunction;
import FrontEnd.IR.GlobalVarDef.GlobalVarDef;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.Instruction.*;
import FrontEnd.IR.Module.IRModule;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.FunctionType;
import FrontEnd.IR.TypeSystem.LabelType;
import FrontEnd.IR.TypeSystem.OperandType.*;

public class ASMBuilder extends IRVisitor<Void> {
	public ASMModule asmModule=new ASMModule();


	public Void visitIRModule(IRModule node){
		return null;
	}

	public Void visitIRFunction(IRFunction node){
		return null;
	}

	public Void visitIRBasicBlock(IRBasicBlock node){
		return null;
	}

	public Void visitGlobalVarDef(GlobalVarDef node){
		return null;
	}

	public Void visitAllocInst(AllocInst node){
		return null;
	}
	public Void visitBinaryInst(BinaryInst node){
		return null;
	}
	public Void visitBitCastInst(BitCastInst node){
		return null;
	}
	public Void visitBrInst(BrInst node){
		return null;
	}
	public Void visitCallInst(CallInst node){
		return null;
	}
	public Void visitGetElementPtrInst(GetElementPtrInst node){
		return null;
	}
	public Void visitIcmpInst(IcmpInst node){
		return null;
	}
	public Void visitLoadInst(LoadInst node){
		return null;
	}
	public Void visitRetInst(RetInst node){
		return null;
	}
	public Void visitStoreInst(StoreInst node){
		return null;
	}

	public Void visitConstInt(ConstInt node){
		return null;
	}
	public Void visitConstBool(ConstBool node){
		return null;
	}
	public Void visitConstString(ConstString node){
		return null;
	}
	public Void visitConstNull(ConstNull node){
		return null;
	}

	public Void visitFunctionType(FunctionType node){
		return null;
	}
	public Void visitLabelType(LabelType node){
		return null;
	}
	public Void visitIntegerType(IntegerType node){
		return null;
	}
	public Void visitPointerType(PointerType node){
		return null;
	}
	public Void visitArrayType(ArrayType node){
		return null;
	}
	public Void visitStructType(StructType node){
		return null;
	}
	public Void visitVoidType(VoidType node){
		return null;
	}

	public Void visitBaseInst(BaseInst node){
		return null;
	}
	public Void visitBaseConst(BaseConst node){
		return null;
	}
	public Void visitBaseType(BaseType node){
		return null;
	}
	public Void visitUser(User node){
		return null;
	}
	public Void visitValue(Value node){
		return null;
	}
}
