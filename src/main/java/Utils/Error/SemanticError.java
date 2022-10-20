package Utils.Error;

import Utils.Error.MyBaseError;
import Utils.Position;

public class SemanticError extends MyBaseError {
	public SemanticError(String _str, Position _pos){
		super(_str,_pos);
		if(pos==null)pos=new Position(-1,-1);
	}
}
