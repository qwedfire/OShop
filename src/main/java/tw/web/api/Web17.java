package tw.web.api;

import java.text.ParseException;

public class Web17 {
	// 不是放錯 他就是這樣弄= =
	
	private int x,y,op;				/**IllegalArgument居然有人先抓了?**/
	public Web17(String x,String y,String op) throws ParseException {
		this.x=Integer.parseInt(x);
		this.y=Integer.parseInt(y);
		this.op=Integer.parseInt(op);
		
	}
	//以下for web42
	public Web17(String x,String y) throws ParseException {
		this.x=Integer.parseInt(x);
		this.y=Integer.parseInt(y);
		this.op=1;
		
	}
	public int plus() {
		return x+y;
		
	}
	public double calc() {
		double ret=0;
		switch (op) {
			case 1: 
				ret=x+y;
				break;
			case 2:
				ret=x-y;
				break;
			case 3:
				ret=x*y;
				break;
			case 4:			/**x/y   => 55/4= 13  (餘消失)*/
				ret=x*1.0/y;   /**x*1.0/y   => 55/4= 13.75  (餘保留)*/
				break;
			default:
				throw new IllegalArgumentException("Web17->Unexpected value: " + op);
		}
		
		
		return ret;
		
	}
	
	
}
