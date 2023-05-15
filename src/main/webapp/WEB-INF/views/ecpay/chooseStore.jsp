<%@page import="tw.web.api.ecPay_emap"%>
<%@page import="tw.web.api.GoSys"%>
<%@page import="ecpay.logistics.integration.domain.ExpressMapObj"%>
<%@page import="ecpay.logistics.integration.AllInOne"%>
<%@page import="java.io.File" %>
<%@page import="MyTest.oni.SampleCode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
	</head>
	<body>
		<%
					//ecPay_emap.whereIam();
					AllInOne logistic=new AllInOne();
					
					ExpressMapObj obj= new ExpressMapObj();
					//2000933 = 測試編號 特店編號(MerchantID)：2000933
					obj.setMerchantID("2000933"); 
					//設定MerchantTradeNo 廠商交易編號 1. 編號均為唯一值，不可重複使用 2. 英數字大小 寫混合。 
					obj.setMerchantTradeNo("ASxD2023040901232292");
					//是否代收款項 Y = 收件人付錢 N = 收件人不用付錢
					obj.setIsCollection("Y");
					//綠界將會回傳到下列網址 然後透過下列網址.jsp 檔案把 在這個檔案把對方的reqeust處理更新到資料庫
					obj.setServerReplyURL("https://f4e6-123-110-45-107.ngrok-free.app/end/MyTest/oni/reciever.java");
					GoSys.println("確認用=>綠界物流將會回傳到下列網址 ==\n"+obj.getServerReplyURL());
					obj.setLogisticsSubType("FAMI");
					String store=logistic.expressMap(obj);
					GoSys.println(store);
					
					
				%>
				<%=store %>
	</body>
</html>