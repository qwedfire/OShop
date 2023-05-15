<%@page import="com.example.demo.controller.user.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
User user=(User)session.getAttribute("user");
int userID = user.getId();
Class.forName("com.mysql.cj.jdbc.Driver");
Properties prop=new Properties();
prop.put("user", "root");
prop.put("password", "root");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/os_shop", prop);
PreparedStatement stmt = conn.prepareStatement("DELETE FROM os_cart_item_use WHERE userID = ?");
stmt.setInt(1, userID);
stmt.executeUpdate();
System.out.println("All cart items for user " + userID + " have been deleted.");
%>