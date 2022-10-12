package FrontEnd.AST.StatNodeSet;

import FrontEnd.AST.DefNodeSet.VarDefNode;
import FrontEnd.AST.ExprNodeSet.BaseExprNode;
import FrontEnd.AST.OtherNodeSet.BlockNode;
import FrontEnd.AST.ASTVisitor;
import FrontEnd.AST.OtherNodeSet.ParaDataListNode;
import Utils.Position;

import java.util.ArrayList;

public class ForStatNode extends BaseStatNode{
	public ArrayList<VarDefNode> initdeflist;
	public ArrayList<BaseExprNode> initexprlist;
	public BaseExprNode conditionexpr;
	public BaseExprNode updateexpr;
	public BlockNode block;
	public ForStatNode(ArrayList<VarDefNode> _initdeflist,ArrayList<BaseExprNode> _initexprlist,
					   BaseExprNode _conditionexpr, BaseExprNode _updateexpr,
					   BlockNode _block, Position _pos){
		super(_pos);
		initdeflist=_initdeflist;
		initexprlist=_initexprlist;
		conditionexpr=_conditionexpr;
		updateexpr=_updateexpr;
		block=_block;
	}

	@Override
	public void accept(ASTVisitor visitor) {
		visitor.visitForStat(this);
	}
}
