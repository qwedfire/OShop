<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String name = request.getParameter("name");
// System.out.println(name);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
// 	?serverTimezone=Asia/Taipei
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/os_shop",
	"root", "root");
	PreparedStatement ps = con.prepareStatement("SELECT * FROM os_product WHERE brand LIKE ?");
	ps.setString(1, "%" + name + "%");
	ResultSet rs = ps.executeQuery();

	if (!rs.isBeforeFirst()) {
		out.println("<p>查無資料</p>");
	} else {
		while (rs.next()) {
	out.println("<div class=\"col-md-4 col-sm-6 col-xs-12\">" + "<div class=\"product-item\">"
			+ "<div class=\"product-thumb\">" + "<img class=\"img-responsive\" src=\"" + rs.getString("img")
			+ "\" alt=\"product-img\" />" 
			+ "<div class=\"preview-meta\">" + "<ul>"
			+ "<li><span data-toggle=\"modal\" data-target=\"#product-modal" + rs.getString("id")
			+ "\"><i class=\"tf-ion-ios-search-strong\"></i></span></li>"
			+ "<li><a href=\"#\"><i class=\"tf-ion-ios-heart\"></i></a></li>"
			+ "<li class='product my-cart-btn' data-id='"+rs.getString("id")+"'><a href=\"#!\"><i class=\"tf-ion-android-cart\"></i></a></li>" + "</ul>" + "</div>"
			+ "</div>" + "<div class=\"product-content\">" + "<h4><a href=\"product-single.html\">"
			+ rs.getString("brand") + " " + rs.getString("name") + "</a></h4>" + "<p class=\"price\">$"
			+ rs.getString("price") + "</p>" + "</div>" + "</div>" + "</div>");
		}
	}
	con.close();
} catch (Exception e) {
	out.print(e);
}
%>
