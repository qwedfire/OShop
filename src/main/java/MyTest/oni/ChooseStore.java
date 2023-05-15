package MyTest.oni;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecpay.logistics.integration.AllInOne;
import ecpay.logistics.integration.domain.ExpressMapObj;
import tw.web.api.GoSys;

/**
 * Servlet implementation class getStore
 */
@WebServlet("/ChooseStore")
public class ChooseStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChooseStore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AllInOne logistic=new AllInOne();
		
		ExpressMapObj obj= new ExpressMapObj();
		//2000933 = 測試編號 特店編號(MerchantID)：2000933
		obj.setMerchantID("2000933"); 
		//設定MerchantTradeNo 廠商交易編號 1. 編號均為唯一值，不可重複使用 2. 英數字大小 寫混合。 
		obj.setMerchantTradeNo("ASxD2023040901232292");
		//是否代收款項 Y = 收件人付錢 N = 收件人不用付錢
		obj.setIsCollection("Y");
		//綠界將會回傳到下列網址 然後透過下列網址.jsp 檔案把 在這個檔案把對方的reqeust處理更新到資料庫
//		obj.setServerReplyURL("https://f4e6-123-110-45-107.ngrok-free.app/end/MyTest/oni/reciever.java");

		obj.setServerReplyURL("https://f4e6-123-110-45-107.ngrok-free.app/end/StoreReciver");
		GoSys.println("確認用=>綠界物流將會回傳到下列網址 ==\n"+obj.getServerReplyURL());
		obj.setLogisticsSubType("FAMI");
		String store=logistic.expressMap(obj);
		GoSys.println(store);
		response.getWriter().append(store).append(request.getContextPath());
		/*
		 * 這邊可以看用hibernate或者jdbc寫入資料庫!
		 * 把使用者選好的店家丟到使用者的訂單資料表
		 * 
		 * */
		/*
		 * 另外重新說一下流程
		 * 1.使用者把商品丟購物車(這個動作是真的丟到使用者的臨時購物車TemporaryCart)
		 * 2.使用者想要結帳(勾選商品)、按下一步 (把選取的資料丟到後台DesiredCart)
		 * 3.選擇物流方式 ( B2C  或 黑貓 ) 先設定好物流資料 
		 *   如果有選擇店家就會跑到這邊來ChooseStore 然後跑到StoreReciver(再轉回原本畫面)
		 *   如果選擇黑貓 就頁面切換成需要填入
		 *   		姓名 電話 或手機 地址 郵遞區號 然後其他使用自動設定Callfunction
		 *   
		 * 4.	選好宅配(收穫基礎資料)或
		 * 		選好商店(需填收貨人基礎資料) 剩下的由系統帶入  包含細節設定
		 * 		最後		[付款完成]	> [生成訂單] 
		 *   
		 * 		全家:
		 * 			透過$.ajax 導向選擇商店(/ChooseStore) 選擇完畢後ChooseStore.java 導向/Reciver
		 * 		黑貓:
		 * 			廠商自己需要設定ㄅ的:
		 * 				
		 * 				SenderName  		必填 	字元限制為為4~10字元(中文2~5個字, 英文4~10個字)
		 * 				SenderCellPhone 	和電話擇一必填 只允許數字、長度為10碼、需為09開頭
		 * 				SenderPhone 		和手機擇一必填 允許數字+特殊符號；特殊符號僅限()-#
		 * 				SenderZipCode   	必填     郵遞區號
		 * 				SenderAddress 		必填		字元限制需大於6個字元，且不可超過60個字元。
		 * 				Temperature 		0001 常溫 預設
		 * 				Distance 			00:同縣市 (預設值) 不同系統會自己改
		 * 				Specification       size=		0001: 60cm (預設值)
		 *												0002: 90cm
		 *												0003: 120cm
		 *												0004: 150cm
		 *				ScheduledPickupTime 請固定帶入4 (不限時)	宅配物流商預定取貨的時段	
		 *				ScheduledDeliveryTime 			1: 13點前
	 	 *												2: 14點~18點
		 *												3: 14點~18點
	 	 *												4:不限時		
		 *				TradeDesc  			交易描述200字 超過截斷 (沒用)
		 *				ServerReplyURL 		必填			回應url			
		 *				ClientReplyURL 		若要使用幕後建立訂單，此欄位請勿填寫。
		 *				PlatformID 
		 *				CheckMacValue 		必填						
		 * 			收件人的:
		 * 				ReceiverName 		必填 	不可有符號^ ‘ ` ! @# % & * + \ ” < >|_ [ ] ,，?以及不可有空白，其中若有空白,，?系統會自動去除。
		 * 				ReceiverCellPhone 	和電話擇一必填 只允許數字、長度為10碼、需為09開頭
		 * 				ReceiverPhone 		和手機擇一必填 允許數字+特殊符號；特殊符號僅限()-#
		 * 				ReceiverZipCode		必填     郵遞區號
		 * 				ReceiverAddress
		 * 			
		 * 
		 * 
					合作特店必須檢查CheckMacValue來驗證，請參考附錄檢查碼機制。
		 * 4.Reciver.java 這程式從後台DesiredCart取得使用者下單商品資料
		 *		
		 *		LogisticsSubType :
		 *				宅配:=>	TCAT:黑貓  POST:中華郵政
		 *				
		 *		黑貓: 
		 *			
		 *			GoodsName 商品名稱 (選填)
		 *			GoodsAmount 最多20000 元 商品金額 賠償依據 。
		 *			GoodsWeight上限20公斤，小數3位 中華不可空 黑貓可不填
		 * 			
		 * 			
		 * 
		 * */
		
		/* 	綠界Response參數說明
		MerchantID String(10)
		廠商編號
		
		MerchantTradeNo String(20)
		廠商交易編號
		
		訂單產生時傳送給綠界科技的廠商交易編號。
		
		RtnCode Int
		目前物流狀態
		
		請參考物流狀態代碼一覽表。
		
		RtnMsg String(200)
		物流狀態說明
		
		請參考物流狀態代碼一覽表。
		
		AllPayLogisticsID String(20)
		綠界科技的物流交易編號
		
		請保存綠界科技的交易編號與 AllPayLogisticsID的關連。
		
		LogisticsType String(20)
		物流類型
		
		LogisticsSubType String(20)
		物流子類型
		
		GoodsAmount Int
		商品金額
		
		商品遺失賠償依據
		
		UpdateStatusDate String(20)
		物流狀態更新時間
		
		格式為：yyyy/MM/dd HH:mm:ss
		
		ReceiverName String (60)
		收件人姓名
		
		ReceiverPhone String(20)
		收件人電話
		
		ReceiverCellPhone String(20)
		收件人手機
		
		ReceiverEmail String(50)
		收件人email
		
		ReceiverAddress String(200)
		收件人地址
		
		CVSPaymentNo String(15)
		寄貨編號
		
		CVSValidationNo String(10)
		驗證碼
		
		BookingNote String(50)
		托運單號
		
		物流類型[LogisticsType]為HOME才會回傳
		
		CheckMacValue String
		檢查碼 
		*/
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
