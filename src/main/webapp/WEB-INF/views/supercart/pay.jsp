<%@page import="com.example.demo.controller.user.User"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="ecpay.payment.integration.domain.AioCheckOutALL"%>
<%@page import="ecpay.payment.integration.AllInOne"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<%
int totalCost = 0;
User user=(User)session.getAttribute("user");
int userID = user.getId();
StringBuilder str=new StringBuilder();
try {
//     連接資料庫
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/os_shop", "root", "root");
    String cartQuery = "SELECT * FROM os_cart_item_use WHERE userID = '"+userID+"'";
    PreparedStatement cartStmt = conn.prepareStatement(cartQuery);
    ResultSet cartRs = cartStmt.executeQuery();
//     對每個購物車查詢購物項目和商品價格
    while (cartRs.next()) {
        int productID = cartRs.getInt("productID");
        int quantity1 = cartRs.getInt("quantity");
        String itemQuery = "SELECT * FROM os_product WHERE id = ?";
        PreparedStatement itemStmt = conn.prepareStatement(itemQuery);
        itemStmt.setInt(1, productID);
        ResultSet itemRs = itemStmt.executeQuery();
        itemRs.next();
        totalCost+=quantity1*itemRs.getInt("price");
    	str.append(itemRs.getString("name")+"*"+quantity1+"#");
    	
        itemRs.close();
        itemStmt.close();
    }
    cartRs.close();
    cartStmt.close();
} catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
}
// // genAioCheckOutALL()方法
	String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	Random random = new SecureRandom();
	StringBuilder sb = new StringBuilder(14);
    for (int i = 0; i < 14; i++) {
        int randomIndex = random.nextInt(CHARACTERS.length());
        sb.append(CHARACTERS.charAt(randomIndex));
    }
	Date now=new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	String formattedDate = sdf.format(now);
	AllInOne all=new AllInOne("");
	AioCheckOutALL obj = new AioCheckOutALL();
	obj.setMerchantTradeNo(sb.toString());
	obj.setMerchantTradeDate(formattedDate);
	obj.setTotalAmount(totalCost+"");
	obj.setItemName(str.toString());
	



	obj.setMerchantID("OShop");
	obj.setTradeDesc("test Description");
	obj.setReturnURL("https://cd49-111-253-207-93.ngrok-free.app/confirmation");
	obj.setOrderResultURL("https://6ce2-111-253-207-93.ngrok-free.app/confirmation");
	obj.setNeedExtraPaidInfo("N");
	System.out.print(obj);
	String form = all.aioCheckOut(obj, null);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=form %>
</body>
</html>