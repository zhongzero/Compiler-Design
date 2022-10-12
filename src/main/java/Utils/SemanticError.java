package Utils;

public class SemanticError extends Error {
	public String str;
	public Position pos;
	public SemanticError(Position _pos){
		str="Unknown Semantic Error";
		pos=_pos;
	}
	public SemanticError(String _str, Position _pos){
		str=_str;
		pos=_pos;
	}
	public void Output(){
		System.out.println(str+" "+pos.toString());
	}
}
