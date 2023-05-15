package tw.web.api;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;

public class WebUtils {
	/*****/
	public static String loadView(String view) throws Exception {
		
		String  viewFile=
		String.format("C:\\Users\\user\\eclipse-workspace\\"
				+ "Weboni_1\\src\\main\\webapp\\views\\%s.html", view);
		
		
		FileReader reader=new FileReader(viewFile);
		BufferedReader br=new BufferedReader(reader);
		String line=null;
		StringBuffer sb=new StringBuffer();
		while ((line=br.readLine())!=null) {
			sb.append(line);
		}
		
		
		return sb.toString();
	}
	public static int toInt(String i) {
		int x= Integer.parseInt(i);
		return x;
	}
	public static String sayYa() {
		return "ya";
	}
	public static String sayYa(String something) {
		return String.format("%s ...ya",something);
	}
	public static String hashPassword(String pwd) {
		
		
		
		return BCrypt.hashpw(pwd, BCrypt.gensalt()) ;
	}
	public static int createScore() {
		return (int)(Math.random()*99+1);
	}
	public static int nextPage(String page,String pages) {
		int ipages=(int)Double.parseDouble(pages);
		int ipage=Integer.parseInt(page);
		
		return ipage>=ipages?ipage:ipage+1;
	}
	public static String calc(String sx,String sy, String op)  {
		String result="無計算";
		
		try {
			int x=Integer.parseInt(sx);
			int y=Integer.parseInt(sy);	
			
			
			
			switch(op) {
			case "1":
				result=x+y+"";
				break;
			case "2":
				result=x-y+"";
				break;
			case "3":
				result=x*y+"";
				break;
			case "4":
				result=x/y+"..."+x%y;
				break;
			
		}
		}catch(Exception e) {
			System.out.println("webU:err> "+e.toString());
			return result;
		}
	
		return result;

	}
}
