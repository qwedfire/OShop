<%@page import="com.example.demo.controller.user.User"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
    
<%
try{
	// String userName="劉冠儒";
	User user=(User)session.getAttribute("user");
	// String userName = user.getRealname();
	int userID = user.getId();
	
	// System.out.println("---------------------------------------"+userName);
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop=new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/os_shop",prop);
	
	// String findSql1 = "SELECT * FROM cart WHERE username='"+userName+"'";
	String findSql1 = "SELECT * FROM os_cart_item_use WHERE userID='"+userID+"'";
	PreparedStatement findStmt1 = conn.prepareStatement(findSql1);
	ResultSet resultSet1 = findStmt1.executeQuery();
	// resultSet1.next();
	JSONArray jsonArray = new JSONArray(); // 創建一個空的 JSON 陣列
	ResultSetMetaData metaData1 = resultSet1.getMetaData();
	int columnCount1 = metaData1.getColumnCount();
	while (resultSet1.next()) {
	    JSONObject jsonObject = new JSONObject(); // 創建一個空的 JSON 物件，用來儲存每一列的資料
	    for (int i = 1; i <= columnCount1; i++) {
	        String columnName = metaData1.getColumnLabel(i);
	        Object columnValue = resultSet1.getObject(i);
	        jsonObject.put(columnName, columnValue); // 把欄位名稱和值加到 JSON 物件裡
	    }
	    jsonArray.put(jsonObject); // 把 JSON 物件加到 JSON 陣列裡
	}
	String jsonStr = jsonArray.toString();
	out.print(jsonStr);
	System.out.println(jsonStr);
}catch(Exception e){
// 	e.printStackTrace();
	System.out.println("showCarterr"+e);
	
}


// int cartID=resultSet1.getInt("cartID");
// String sql = "SELECT * FROM cart_item WHERE cartID="+cartID;
// PreparedStatement Stmt = conn.prepareStatement(sql);
// ResultSet resultSet = Stmt.executeQuery();
// // JSONArray jsonArray = new JSONArray(); // 創建一個空的 JSON 陣列
// ResultSetMetaData metaData = resultSet.getMetaData();
// int columnCount = metaData.getColumnCount();
// while (resultSet.next()) {
//     JSONObject jsonObject = new JSONObject(); // 創建一個空的 JSON 物件，用來儲存每一列的資料
//     for (int i = 1; i <= columnCount; i++) {
//         String columnName = metaData.getColumnLabel(i);
//         Object columnValue = resultSet.getObject(i);
//         jsonObject.put(columnName, columnValue); // 把欄位名稱和值加到 JSON 物件裡
//     }
//     jsonArray.put(jsonObject); // 把 JSON 物件加到 JSON 陣列裡
// }
// String jsonStr = jsonArray.toString();
// out.print(jsonStr);
%>