<%@page import="com.example.demo.controller.user.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
// String userName="劉冠儒"; 
User user=(User)session.getAttribute("user");
String userName = user.getRealname();
int userID = user.getId();

String productID = request.getParameter("dataid");
Class.forName("com.mysql.cj.jdbc.Driver");
Properties prop=new Properties();
prop.put("user", "root");
prop.put("password", "root");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/os_shop",prop);

// String findSql1 = "SELECT * FROM cart WHERE username='"+userName+"'";
// PreparedStatement findStmt1 = conn.prepareStatement(findSql1);
// ResultSet resultSet1 = findStmt1.executeQuery();
// resultSet1.next();
// int cartID=resultSet1.getInt("cartID");



// String deleteSql = "DELETE FROM cart_item WHERE productID='"+productID+"' AND cartID="+cartID ;
String deleteSql = "DELETE FROM os_cart_item_use WHERE productID='"+productID+"' AND userID="+userID ;
PreparedStatement deleteStmt = conn.prepareStatement(deleteSql);
deleteStmt.executeUpdate();
%>