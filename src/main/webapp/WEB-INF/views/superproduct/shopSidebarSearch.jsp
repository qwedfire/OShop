<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String name = request.getParameter("name");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
// 	?serverTimezone=Asia/Taipei
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/os_shop",
	"root", "root");
	PreparedStatement ps = con.prepareStatement("SELECT * FROM os_product WHERE name LIKE ?");
	ps.setString(1, "%" + name + "%");
	ResultSet rs = ps.executeQuery();

	if (!rs.isBeforeFirst()) {
		out.println("<p>查無資料</p>");
	} else {
		while (rs.next()) {
	out.println(
			"<div class=\"col-md-4 col-sm-6 col-xs-12\">"
					+ "<div class=\"product-item\">"
					+ "<div class=\"product-thumb\">"
					+ "<img class=\"img-responsive\" src=\"" + rs.getString("img")
					+ "\" alt=\"product-img\" />" 
					+ "<div class=\"preview-meta\">"
					+ "<ul>"
					+ "<li><span data-toggle=\"modal\" data-target=\"#product-modal" + rs.getString("id")
					+ "\"><i class=\"tf-ion-ios-search-strong\"></i></span></li>"
					+ "<li><a href=\"#\"><i class=\"tf-ion-ios-heart\"></i></a></li>"
					+ "<li class='product my-cart-btn' data-id='"+rs.getString("id")+"'	data-summary='summary 1' data-price='20000' data-quantity='1' data-name='筆電' data-image='images/shop/products/10.jpg'><a href=\"#!\"><i class=\"tf-ion-android-cart\"></i></a></li>"
					+ "</ul>"
					+ "</div>"
					+ "</div>"
					+ "<div class=\"product-content\">"
					+ "<h4><a href=\"product-single.html\">" + rs.getString("brand") + " " + rs.getString("name") + "</a></h4>"
					+ "<p class=\"price\">$" + rs.getString("price") + "</p>"
					+ "</div>"
					+ "</div>"
					+ "</div>"
					+ "<div class=\"modal product-modal fade\" id=\"product-modal" + rs.getString("id") + "\">"
					+ "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">"
					+ "<i class=\"tf-ion-close\"></i>"
						+ "</button>"
					+ "<div class=\"modal-dialog\" role=\"document\">"
					+ "<div class=\"modal-content\">"
					+ "<div class=\"modal-body\">"
					+ "<div class=\"row\">"
					+ "<div class=\"col-md-7 col-sm-6 col-xs-12\">"
					+ "<div class=\"modal-image\">"
					+ "<img class=\"img-responsive\" src=\"" + rs.getString("img") + "\" alt=\"product-img\" />"
					+ "</div>"
					+ "</div>"
					+ "<div class=\"col-md-5 col-sm-6 col-xs-12\">"
					+ "<div class=\"product-short-details\">"
					+ "<h2 class=\"product-title\">" + rs.getString("brand") + " " + rs.getString("name") + "</h2>"
					+ "<p class=\"product-price\">$" + rs.getString("price") + "</p>"
					+ "<p class=\"product-short-description\">" + rs.getString("info") + "</p>"
					+ "<a class=\"product my-cart-btn btn btn-main\" data-id='"+rs.getString("id")+"'	data-summary='summary 1' data-price='20000' data-quantity='1' data-name='筆電' data-image='images/shop/products/10.jpg'>加入購物車</a>"
					+ "<a href=\"/shop" + rs.getString("url") + "\" class=\"btn btn-transparent\">查看商品詳情</a>"
					+ "</div>"
					+ "</div>"
					+ "</div>"
					+ "</div>"
					+ "</div>"
					+ "</div>"
					+ "</div>");
		}
	}
	con.close();
} catch (Exception e) {
	out.print(e);
}
%>

