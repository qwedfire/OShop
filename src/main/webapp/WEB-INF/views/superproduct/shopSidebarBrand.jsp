<%@page import="java.net.URL"%>
<%@page import="tw.web.api.GoSys"%>
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
	GoSys.println("被傳過來了!"+name);
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
					+ "<a href="+request.getContextPath() + rs.getString("url") + " class=\"btn btn-transparent\">查看商品詳情</a>"
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

// out.print("<div class='lineBox'>");
// out.print("<div class='lineItem' onclick='toCart()' >");
// out.print("<i class='layui-icon '></i>");
// out.print("<span class='badge badge-notify my-cart-badge glyphicon my-cart-btn my-cart-icon'></span>");
// out.print("</div>");
// out.print("<div class='lineItem'>");
// out.print("<i class='layui-icon'></i>");
// out.print("<div class='lineTip'>");
// out.print("<iframe allow='microphone;' width='350' height='320' src='https://console.dialogflow.com/api-client/demo/embedded/92c466fc-f413-4490-b592-fea0bd43a98a\'></iframe>");
// out.print("</div>");
// out.print("</div>");
// out.print("<div class='lineItem lineTop' id='launchTopButton'>");
// out.print("<i class='layui-icon' src='http://127.0.0.1:5502/aviato-main/theme/index.html\'>&#xe604;</i>");
// out.print("</div>");
// out.print("</div>");
// out.print("<script>");
// out.print("$(function(){");
// out.print("$('#launchTopButton').click(function() {");
// out.print("$('body,html').scrollTop(0);");
// out.print("});");
// out.print("$('.lineItem').hover(function() {");
// out.print("$('.lineTip').hide();");
// out.print("$(this).find('.lineTip').show();");
// out.print("});");
// out.print("});");
// out.print("</script>");
%>
