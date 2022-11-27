package FrontEnd.IR.Basic;

import FrontEnd.AST.ASTVisitor;
import FrontEnd.IR.IRVisitor;
import FrontEnd.IR.TypeSystem.BaseType;

import java.util.ArrayList;

public class User extends Value{
	public ArrayList<Value> operandlist;
	public User(String _name, BaseType _type){
		super(_name,_type);
		operandlist=new ArrayList<>();
	}
	public void addOperand(Value value){
		operandlist.add(value);
	}
	public Value getOperand(int i){
		return operandlist.get(i);
	}

	@Override
	public <T> T accept(IRVisitor<T> visitor) {
		return visitor.visitUser(this);
	}
}
