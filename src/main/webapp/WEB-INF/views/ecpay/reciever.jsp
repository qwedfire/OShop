<%@page import="java.nio.charset.Charset"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="tw.web.api.ecPay_emap"%>
<%@page import="tw.web.api.GoSys"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String MerchantID=request.getParameter("MerchantID");
	String MerchantTradeNo=request.getParameter("MerchantTradeNo");
	String LogisticsSubType =request.getParameter("LogisticsSubType");
	String CVSStoreID =request.getParameter("CVSStoreID");
	String CVSStoreName =request.getParameter("CVSStoreName");
	String CVSAddress =request.getParameter("CVSAddress");
	String CVSTelephone =request.getParameter("CVSTelephone");
	String CVSOutSide  =request.getParameter("CVSOutSide");
	String ExtraData  =request.getParameter("ExtraData");
 	GoSys.println("MerchantID:"+MerchantID);
 	GoSys.println("MerchantTradeNo:"+MerchantTradeNo);
 	GoSys.println("LogisticsSubType:"+LogisticsSubType);
 	GoSys.println("CVSStoreID:"+CVSStoreID);
 	GoSys.println("CVSStoreName亂碼:"+CVSStoreName);
 	CVSStoreName = new String(CVSStoreName.getBytes("ISO-8859-1"), "UTF8");
 	GoSys.println("CVSStoreName:"+CVSStoreName);
 	
 	CVSAddress = new String(CVSAddress.getBytes("ISO-8859-1"), "UTF8");
	GoSys.println("CVSAddress:"+CVSAddress);
	
	
 	GoSys.println("CVSTelephone:"+CVSTelephone);
 	GoSys.println("CVSOutSide:"+CVSOutSide);
 	GoSys.println("ExtraData:"+ExtraData);

%>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta http-equiv="ngrok-skip-browser-warning" content="69420">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	
		<script type="text/javascript" src="https://logistics-stage.ecpay.com.tw/Express/map"></script>

		
		
	</head>
	<body>
		
		<div id=map></div>
		
		
	</body>
</html>