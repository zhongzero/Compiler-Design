package FrontEnd.IR;


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

public abstract class IRVisitor<T> {
	public abstract T visitIRModule(IRModule node);

	public abstract T visitIRFunction(IRFunction node);

	public abstract T visitIRBasicBlock(IRBasicBlock node);

	public abstract T visitGlobalVarDef(GlobalVarDef node);

	public abstract T visitAllocInst(AllocInst node);
	public abstract T visitBinaryInst(BinaryInst node);
	public abstract T visitBitCastInst(BitCastInst node);
	public abstract T visitBrInst(BrInst node);
	public abstract T visitCallInst(CallInst node);
	public abstract T visitGetElementPtrInst(GetElementPtrInst node);
	public abstract T visitIcmpInst(IcmpInst node);
	public abstract T visitLoadInst(LoadInst node);
	public abstract T visitRetInst(RetInst node);
	public abstract T visitStoreInst(StoreInst node);

	public abstract T visitConstInt(ConstInt node);
	public abstract T visitConstBool(ConstBool node);
	public abstract T visitConstString(ConstString node);
	public abstract T visitConstNull(ConstNull node);

	public abstract T visitFunctionType(FunctionType node);
	public abstract T visitLabelType(LabelType node);
	public abstract T visitIntegerType(IntegerType node);
	public abstract T visitPointerType(PointerType node);
	public abstract T visitArrayType(ArrayType node);
	public abstract T visitStructType(StructType node);
	public abstract T visitVoidType(VoidType node);

	public abstract T visitBaseInst(BaseInst node);
	public abstract T visitBaseConst(BaseConst node);
	public abstract T visitBaseType(BaseType node);
	public abstract T visitUser(User node);
	public abstract T visitValue(Value node);

	public T visit(IRModule node){return node.accept(this);}

	public T visit(IRFunction node){return node.accept(this);}

	public T visit(IRBasicBlock node){return node.accept(this);}

	public T visit(GlobalVarDef node){return node.accept(this);}

	public T visit(AllocInst node){return node.accept(this);}
	public T visit(BinaryInst node){return node.accept(this);}
	public T visit(BrInst node){return node.accept(this);}
	public T visit(CallInst node){return node.accept(this);}
	public T visit(GetElementPtrInst node){return node.accept(this);}
	public T visit(IcmpInst node){return node.accept(this);}
	public T visit(LoadInst node){return node.accept(this);}
	public T visit(RetInst node){return node.accept(this);}
	public T visit(StoreInst node){return node.accept(this);}

	public T visit(ConstInt node){return node.accept(this);}
	public T visit(ConstBool node){return node.accept(this);}
	public T visit(ConstString node){return node.accept(this);}
	public T visit(ConstNull node){return node.accept(this);}

	public T visit(FunctionType node){return node.accept(this);}
	public T visit(LabelType node){return node.accept(this);}
	public T visit(IntegerType node){return node.accept(this);}
	public T visit(PointerType node){return node.accept(this);}
	public T visit(ArrayType node){return node.accept(this);}
	public T visit(StructType node){return node.accept(this);}
	public T visit(VoidType node){return node.accept(this);}

	public T visit(BaseInst node){return node.accept(this);}
	public T visit(BaseConst node){return node.accept(this);}
	public T visit(BaseType node){return node.accept(this);}
	public T visit(User node){return node.accept(this);}
	public T visit(Value node){return node.accept(this);}

}
