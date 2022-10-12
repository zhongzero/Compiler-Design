package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.ASTVisitor;
import Utils.Position;

import java.util.ArrayList;

public class ForStatNode extends BaseStatNode{
	public ArrayList<VarDefNode> initdeflist;
	public ArrayList<BaseExprNode> initexprlist;
	public BaseExprNode conditionexpr;
	public BaseExprNode updateexpr;
	public BaseStatNode forstat;
	public ForStatNode(ArrayList<VarDefNode> _initdeflist,ArrayList<BaseExprNode> _initexprlist,
					   BaseExprNode _conditionexpr, BaseExprNode _updateexpr,
					   BaseStatNode _forstat, Position _pos){
		super(_pos);
		initdeflist=_initdeflist;
		initexprlist=_initexprlist;
		conditionexpr=_conditionexpr;
		updateexpr=_updateexpr;
		forstat=_forstat;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitForStat(this);
	}
}
