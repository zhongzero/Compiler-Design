package Utils.Error;

import Utils.Error.MyBaseError;
import Utils.Position;

public class SyntaxError extends MyBaseError {
	public SyntaxError(String _str, Position _pos){
		super("Syntax Error: "+_str,_pos);
	}
}
