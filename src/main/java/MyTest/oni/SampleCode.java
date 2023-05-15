package MyTest.oni;

import java.text.SimpleDateFormat;
import java.util.Date;

import ecpay.logistics.integration.AllInOne;
import ecpay.logistics.integration.domain.CreateCVSObj;
import ecpay.logistics.integration.domain.PrintHILIFEC2COrderInfoObj;

public class SampleCode {
	private AllInOne all;
	
	public void initial(){
		//此步驟為透過AllInOne建構子來實體化此類別，順便輸入log4j.properties的位置路徑
		//若不需要產生log檔，可直接在log4j.properties更改設定，或是將此步驟所輸入的字串改為""，或不傳任何參數
		all = new AllInOne("../src/main/resources/logistics_conf.xml");
	}
	
	public String sampleCreateCVS(){
		initial();
		/**
		 * 讓user 選好商店 (回傳入server)
		 * 輸入寄件人 
		 * 		1.姓名
		 * 		2.手機
		 * 		3.信箱
		 * 		4.地址(住家) 
		 * 		5.店鋪代號(目的地)
		 * 輸入收件人
		 * 		1.姓名
		 * 		2.手機
		 * 		3.信箱
		 * 		4.地址(住家) 
		 * 		5.店鋪代號(目的地) 
		 * 之後由server 代為輸入建立訂單
		 * */
		//實體化出所需要的domain物件
		//下面是產生超商的物流取貨訂單 這是暫時的物件 真的建立是create();
		
		CreateCVSObj obj = new CreateCVSObj();
		//建議從後端撈取交易訂單資料，物從前端輸入以免遭竄改
//		obj.setMerchantTradeNo("usid_product");
//		廠商訂單交易編號可以為空 系統會產生給我們 
		SimpleDateFormat tradedate=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date now= new Date();
		String formatedtime=tradedate.format(now);
		obj.setMerchantTradeDate(formatedtime);
		obj.setMerchantID("2000132");
		
		obj.setReceiverCellPhone("0920555168");
		obj.setReceiverStoreID("006598");
		//可以從前端使用者填入資料
		obj.setSenderName("小名子");
		obj.setSenderCellPhone("0912345678");
		obj.setGoodsAmount("1");
		obj.setGoodsAmount("25000");
		obj.setGoodsName("RTX3080");
		
		
		//以上資料不完全，僅供參考如何放入資料
		
		//呼叫AllInOne中相應的method，該method會幫忙打API並回傳回應的結果
		String result = all.create(obj);
		return result;
	}
	
	public String samplePrintHiLifeCVS(){
		initial();
		//實體化出所需要的domain物件
		PrintHILIFEC2COrderInfoObj obj = new PrintHILIFEC2COrderInfoObj();
		//建議從後端DB撈取資料填入，勿從前端輸入以免遭竄改
		obj.setAllPayLogisticsID("XXX");
		obj.setCVSPaymentNo("XXX");
		
		//呼叫AllInOne中相應的method，產生html form字串(含JavaScript Submit)之後再放入前端即可
		String html = all.printHILIFEC2COrderInfo(obj);
		return html;
	}
}

