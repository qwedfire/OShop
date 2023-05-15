<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.example.demo.controller.user.User"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<%

// String userName="劉冠儒";
int userID=0;
try{
	User user=(User)session.getAttribute("user");
	String userName = user.getRealname();
	userID = user.getId();
	
	// String cartID=1+"";// String cartID = (String)session.getAttribute("cartID");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop=new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/os_shop",prop);
	
	String dataid = request.getParameter("dataid");
	
	// String userName="賴芊坊"; // String userName = (String)session.getAttribute("username");
	// String userName="陳書玄"; // String userName = (String)session.getAttribute("username");
	// String userName="Brad"; // String userName = (String)session.getAttribute("username");
	// String userName="劉冠儒"; // String userName = (String)session.getAttribute("username");
	// String userName="Tony"; // String userName = (String)session.getAttribute("username");
	
	// String findSql1 = "SELECT * FROM cart WHERE username='"+userName+"'";
	String findSql1 = "SELECT * FROM os_user WHERE id='"+userID+"'";
	PreparedStatement findStmt1 = conn.prepareStatement(findSql1);
	ResultSet resultSet1 = findStmt1.executeQuery();
	
	if(resultSet1.next()){ //如果已經有這個使用者 取得唯一的值
	// 	int cartid=resultSet1.getInt("cartID");  //取得使用者相對應的cardID>>>>>>>>>>>>必須有使用者存在
	// 	String findSql2 = "SELECT * FROM cart_item WHERE cartID=? AND productID=?";
		String findSql2 = "SELECT * FROM os_cart_item_use WHERE userID=? AND productID=?";
		PreparedStatement findStmt2 = conn.prepareStatement(findSql2);
	// 	findStmt2.setInt(1, cartid);
		findStmt2.setInt(1, userID);
		findStmt2.setInt(2, Integer.parseInt(dataid));
		ResultSet resultSet2 = findStmt2.executeQuery(); //唯一的商品
		if(resultSet2.next()){  //使用者購物車裡面的商品已經存在更新商品的數量
		  int quantity = resultSet2.getInt("quantity");
	// 	  String updateSql = "UPDATE cart_item SET quantity=? WHERE cartID=? AND productID=?";
		  String updateSql = "UPDATE os_cart_item_use SET quantity=? WHERE userID=? AND productID=?";
		  PreparedStatement updateStmt = conn.prepareStatement(updateSql);
		  updateStmt.setInt(1, quantity + 1);
	// 	  updateStmt.setInt(2, cartid);
		  updateStmt.setInt(2, userID);
		  updateStmt.setInt(3, Integer.parseInt(dataid));
		  updateStmt.executeUpdate();
		}else{  //使用者購物車裡面沒有的商品 新增一筆資料到cart_item  cartID productID quantity(已知,已知,1 )
	// 		String insertSql = "INSERT INTO cart_item(cartID, productID, quantity) VALUES (?, ?, 1)";
			String insertSql = "INSERT INTO os_cart_item_use(userID, productID, quantity) VALUES (?, ?, 1)";
			PreparedStatement insertStmt = conn.prepareStatement(insertSql);
	// 		insertStmt.setInt(1, cartid);
			insertStmt.setInt(1, userID);
			insertStmt.setInt(2, Integer.parseInt(dataid));
			insertStmt.executeUpdate();
		}
	}else{ //如果沒有使用者  產生新的資料欄位在 cart資料表中 cartID使用Statement.RETURN_GENERATED_KEYS得到(因為是自動產生所以用這種方法取得)
		//然後再新增cart_item資料表根據剛剛增加得cartID 對應到相對的資料欄位新增productID為1
	// 	String insertSql1 = "INSERT INTO cart(username) VALUES (?)";
		String insertSql1 = "INSERT INTO os_cart_item_use(user_id, productID, quantity) VALUES (?, ?, 1)";
	// 	PreparedStatement insertStmt1 = conn.prepareStatement(insertSql1, Statement.RETURN_GENERATED_KEYS);
		PreparedStatement insertStmt1 = conn.prepareStatement(insertSql1);
		insertStmt1.setInt(1, userID);
		insertStmt1.setInt(2, Integer.parseInt(dataid));
		insertStmt1.executeUpdate();
		//取得新生成的cartID 
	// 	ResultSet generatedKeys = insertStmt1.getGeneratedKeys();
	// 	int cartID = -1;
	// 	if (generatedKeys.next()) {
	// 	    cartID = generatedKeys.getInt(1);
	// 	}
		
	// 	String insertSql = "INSERT INTO cart_item(cartID, productID, quantity) VALUES (?, ?, 1)";
	// // 	String insertSql = "INSERT INTO os_cart_items(cart_id, product_id, quantity) VALUES (?, ?, 1)";
	// 	PreparedStatement insertStmt = conn.prepareStatement(insertSql);
	// 	insertStmt.setInt(1, cartID);
	// 	insertStmt.setInt(2, Integer.parseInt(dataid));
	// 	insertStmt.executeUpdate();
	}
}catch(Exception e){
	e.printStackTrace();
	System.out.println("11111111111111112222222222222");
	out.print("你好");
}
%>