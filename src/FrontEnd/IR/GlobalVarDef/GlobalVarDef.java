package FrontEnd.IR.GlobalVarDef;

import FrontEnd.IR.Basic.User;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;
import FrontEnd.IR.TypeSystem.OperandType.PointerType;

public class GlobalVarDef extends User {
	public GlobalVarDef(String _name, BaseType _vartype){
		super(_name+"_addr",new PointerType(_vartype));
		//initOperand: zeroinitializer
	}


	@Override
	public String getName(){
		return "@"+name;
	}

	@Override
	public String toString() {
		StringBuilder ans=new StringBuilder();
		ans.append("@"+name+"=global "+type.dePoint().toString()+" zeroinitializer, align "+type.dePoint().bytesize());
		return ans.toString();
		//@a_glo = global i32 zeroinitializer, align 4
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitGlobalVarDef(this);
	}
}
