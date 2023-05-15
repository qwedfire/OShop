package tw.web.api;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import ecpay.logistics.integration.AllInOne;
import ecpay.logistics.integration.domain.ExpressMapObj;

public class ecPay_emap {
	public static void main(String... arg) {
//		ecPay_emap.send();
		ecPay_emap.whereIam();
		ecPay_emap.urldecode();
		ecPay_emap.ttime();
		System.out.println("下面是dataTest()");
		dateTest();
	}
	public static void dateTest() {
		SimpleDateFormat tradedate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date now= new Date();
		String formatedtime=tradedate.format(now);
		System.out.println(formatedtime);
	}
	public static void ttime() {
		System.out.println(System.currentTimeMillis());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss sss");
		Date d=new Date();
		String timenow=sdf.format(d);
		System.out.println(timenow);
		System.out.println(System.currentTimeMillis());
		
		System.out.println("最大時間:"+new Date(Long.MAX_VALUE));
		
		
	}
	public static void urldecode() {
		try {
			String s=URLDecoder.decode("\r\n","utf-8");
			System.out.println(s);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void whereIam() {
		String workingDir = System.getProperty("user.dir");
        System.out.println("Current working directory is: " + workingDir);
      
		System.out.println(new Date(System.currentTimeMillis()));
		System.out.println(System.currentTimeMillis());
	}
	public static String hihi() {
		return "<form id=\"postForm\" action=\"https://logistics-stage.ecpay.com.tw/Express/map\" method=\"post\"><input type=\"hidden\"\r\n"
				+ "	        name=\"ServerReplyURL\" value=\"https://fac1-123-110-45-107.ngrok-free.app/end/reciever.jsp\"><input type=\"hidden\"\r\n"
				+ "	        name=\"Device\" value=\"\"><input type=\"hidden\" name=\"MerchantID\" value=\"2000132\"><input type=\"hidden\"\r\n"
				+ "	        name=\"MerchantTradeNo\" value=\"ASxD202304084109220\"><input type=\"hidden\" name=\"ExtraData\" value=\"\"><input\r\n"
				+ "	        type=\"hidden\" name=\"IsCollection\" value=\"Y\"><input type=\"hidden\" name=\"LogisticsSubType\" value=\"FAMI\"><input\r\n"
				+ "	        type=\"hidden\" name=\"LogisticsType\" value=\"CVS\">\r\n"
				+ "		    <script language=\"JavaScript\">postForm.submit()</script>\r\n"
				+ "		</form>";
	}
	public static String send() {
		//SampleCode s=new SampleCode();
		//s.sampleCreateCVS();
		AllInOne logistic=new AllInOne();
		ExpressMapObj obj= new ExpressMapObj();
		//2000933 = 測試編號 特店編號(MerchantID)：2000933
		obj.setMerchantID("2000933"); 
		//設定MerchantTradeNo 廠商交易編號 1. 編號均為唯一值，不可重複使用 2. 英數字大小 寫混合。 
		// send 按下去就會從資料庫生成一個 需要是唯一!
		
		/**具體方式:
		 * 		插入會員編號、時間	到一個資料表
		 * 
		 * 		自動生成主鍵(自動遞增的資料表)
		 * 	
		 * 		自動生成的主鍵 回傳 為
		 * 
		 * 		<地區Tw + 會員編號+時間+主鍵> == 廠商交易編號
		 * 
		 * 		【記得】	存入購物資料表
		 * 		
		 * 	
		 * 		
		 * **/
		Date d=new Date();
		System.out.println(d);
		obj.setMerchantTradeNo("TwASxD20230408012329");
		//是否代收款項 Y = 收件人付錢 N = 收件人不用付錢
		obj.setIsCollection("Y");
		//綠界將會回傳到下列網址 然後透過下列網址.jsp 檔案把 在這個檔案把對方的reqeust處理更新到資料庫
		obj.setServerReplyURL("https://2c7f-118-163-218-100.ngrok-free.app/end/reciever.jsp");
		GoSys.println("確認用=>綠界物流將會回傳到下列網址 ==\n"+obj.getServerReplyURL());
		obj.setLogisticsSubType("FAMI");           
		String store=logistic.expressMap(obj);
		System.out.println(store);
		return store;
	}
}
