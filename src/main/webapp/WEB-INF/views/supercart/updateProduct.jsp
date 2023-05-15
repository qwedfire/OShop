<%@page import="com.example.demo.controller.user.User"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
// 	String userName="劉冠儒";  
// 	String userName = (String)session.getAttribute("userName");
	User user=(User)session.getAttribute("user");
	String userName = user.getRealname();
	int userID = user.getId();

	String productID = request.getParameter("dataid");
	String newQuantity = request.getParameter("quantity");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop=new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/os_shop",prop);
	
	String updateSql = "UPDATE os_cart_item_use SET quantity=? WHERE productID='"+productID+"' AND userID="+userID ;
	PreparedStatement updateStmt = conn.prepareStatement(updateSql);
	updateStmt.setInt(1, Integer.parseInt(newQuantity));
	updateStmt.executeUpdate();
	
	
	
	//取得使用者的cartID
// 	String findSql = "SELECT * FROM cart WHERE username='"+userName+"'";
// // 	String findSql = "SELECT * FROM os_cart_item_use WHERE userID='"+userID+"' AND productID='"+productID+"'";
// 	PreparedStatement findStmt = conn.prepareStatement(findSql);
// 	ResultSet resultSet1 = findStmt.executeQuery();
// 	resultSet1.next();
// 	int cartID=resultSet1.getInt("cartID");
	
	
// 	String updateSql = "UPDATE cart_item SET quantity=? WHERE productID='"+productID+"' AND cartID="+cartID ;

// 	String updateSql = "UPDATE cart_item SET quantity=? WHERE productID='"+productID+"' AND cartID="+cartID ;
// 	PreparedStatement updateStmt = conn.prepareStatement(updateSql);
// 	updateStmt.setInt(1, Integer.parseInt(newQuantity));
// 	updateStmt.executeUpdate();
	
	
// 	String findSql1 = "SELECT quantity FROM cart_item WHERE productID='"+productID+"'";
// 	String findSql2 = "SELECT price FROM product WHERE prodID='"+productID+"'";
// 	PreparedStatement findStmt1 = conn.prepareStatement(findSql1);
// 	PreparedStatement findStmt2 = conn.prepareStatement(findSql2);
// 	findStmt1.executeQuery();
// 	findStmt2.executeQuery();
%>