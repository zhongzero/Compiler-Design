package Utils.Error;

import Utils.Position;

public class MyBaseError extends Error{
	public String str;
	public Position pos;
	public MyBaseError(String _str, Position _pos){
		str=_str;
		pos=_pos;
	}
	public void Output(){System.out.println(str+" "+pos.toString());}
}
