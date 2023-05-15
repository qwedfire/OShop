package ecpay.logistics.integration;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import ecpay.logistics.integration.ecpayOperator.EcpayFunction;
import ecpay.logistics.integration.errorMsg.ErrorMessage;
import ecpay.logistics.integration.exception.EcpayException;
import tw.web.api.ecPay_emap;

public class AllInOneBase {
	protected static String operatingMode;
	protected static String mercProfile;
	protected static String isProjectContractor;
	protected static String HashKey;
	protected static String HashIV;
	protected static String MerchantID;
	protected static String PlatformID;
	protected static String createUrl;
	protected static String mapUrl;
	protected static String queryLogisticsTradeInfoUrl;
	protected static String logisticsCheckAccountsUrl;
	protected static String updateShipmentInfoUrl;
	protected static String printTradeDocumentUrl;
	protected static String createTestDataUrl;
	protected static String returnHomeUrl;
	protected static String returnCVSUrl;
	protected static String returnHiLifeCVSUrl;
	protected static String returnUniMartCVSUrl;
	protected static String updateStoreInfoUrl;
	protected static String cancelC2COrderUrl;
	protected static String printUniMartC2COrderInfoUrl;
	protected static String printFAMIC2COrderInfoUrl;
	protected static String printHILIFEC2COrderInfoUrl;
	protected static String printOKMARTC2COrderInfoUrl;
	protected static Document verifyDoc;
	public AllInOneBase(){
		try{
			Document doc;
//			 gpt建議
			 
			Resource resource = new ClassPathResource("logistics_conf.xml");
			String configPath = resource.getFile().getAbsolutePath();
			System.out.println("路徑"+configPath);
			/* when using web project 用動態載入的方式幫我搞定了*/
			
//			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
//			ecPay_emap.whereIam();
//			String configPath = URLDecoder.decode(classLoader.getResource("/logistics_conf.xml").getPath(), "UTF-8");
			System.out.println(">>>decodegetPath>>>>>>"+configPath);
//			System.out.println(">>>just.path>>>>"+classLoader.getResource("/logistics_conf.xml").getPath());
			doc = EcpayFunction.xmlParser(configPath);
			
			
			/* when using testing code */
//			String logisticsConfPath = "./src/main/resources/logistics_conf.xml";
//			doc = EcpayFunction.xmlParser(logisticsConfPath);
//			上面兩行導致 err>>ecpay:java.io.FileNotFoundException: C:\Windows\System32\src\main\resources\logistics_conf.xml (系統找不到指定的路徑。)
			
			
			doc.getDocumentElement().normalize();
			// OperatingMode
			Element ele = (Element)doc.getElementsByTagName("OperatingMode").item(0);
			operatingMode = ele.getTextContent();
			// MercProfile
			ele = (Element)doc.getElementsByTagName("MercProfile").item(0);
			mercProfile = ele.getTextContent();
			// IsProjectContractor
			ele = (Element)doc.getElementsByTagName("IsProjectContractor").item(0);
			isProjectContractor = ele.getTextContent();
			// MID, HashKey, HashIV, PlatformID
			NodeList nodeList = doc.getElementsByTagName("MInfo");
			for(int i = 0; i < nodeList.getLength(); i++){
				ele = (Element)nodeList.item(i);
				if(ele.getAttribute("name").equalsIgnoreCase(mercProfile)){
					MerchantID = ele.getElementsByTagName("MerchantID").item(0).getTextContent();
					HashKey = ele.getElementsByTagName("HashKey").item(0).getTextContent();
					HashIV = ele.getElementsByTagName("HashIV").item(0).getTextContent();
					PlatformID = isProjectContractor.equalsIgnoreCase("N")? "" : MerchantID;
				}
			}
			if(HashKey == null){
				throw new EcpayException(ErrorMessage.MInfo_NOT_SETTING);
			}
		} catch(IOException e){
			e.printStackTrace();
		}
	}
}