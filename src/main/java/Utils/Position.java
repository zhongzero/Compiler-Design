package Utils;

import org.antlr.v4.runtime.*;

public class Position {//用于代码不过编时查找错误地址
	private int row,column;
	public Position(Token token){
		row=token.getLine();
		column=token.getCharPositionInLine();
	}
	public Position(int _row,int _column){
		row=_row;
		column=_column;
	}
	public Position(ParserRuleContext ctx){
		this(ctx.getStart());//返回开头的token，并调用Position(Token token)构造
	}
	public int getRow() {
		return row;
	}
	public int getColumn(){
		return column;
	}


	@Override
	public String toString(){
		return "row="+row+",column="+column;
	}


}
