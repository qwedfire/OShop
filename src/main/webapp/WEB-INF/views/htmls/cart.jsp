<%@page import="com.example.demo.controller.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/os_shop"
	user="root"
	password="root"
	/>
	
<%
User user=(User)session.getAttribute("user");
String userName = user.getRealname();
int userID = user.getId();

%>
<!-- 	這是購物車的資料表變數名稱為rs1 -->
<sql:query var="rs1">
		SELECT * FROM os_cart_item_use WHERE userID = '<%=userID%>'
</sql:query>
<!-- 	這是購物車裡的商品資料表變數名稱為rs2 -->
<%-- <c:forEach var="row1" items="${rs1.rows}"> --%>
<%--     <sql:query var="rs2"> --%>
<%--         SELECT * FROM os_cart_item_use WHERE userID = ${row1.userID} --%>
<%--     </sql:query> --%>
<%-- </c:forEach> --%>


<%-- <sql:query var="rs1"> --%>
<%-- 		SELECT * FROM cart WHERE username = '<%=userName%>' --%>
<%-- </sql:query> --%>
<!-- 	這是購物車裡的商品資料表變數名稱為rs2 -->
<%-- <c:forEach var="row1" items="${rs1.rows}"> --%>
<%--     <sql:query var="rs2"> --%>
<%--         SELECT * FROM cart_item WHERE cartID = ${row1.cartID} --%>
<%--     </sql:query> --%>
<%-- </c:forEach> --%>
<!-- 	這是商品的資料表變數名稱為rs3 -->
<sql:query var="rs3">
		SELECT * FROM os_product
</sql:query>

<%-- <sql:query var="rs3"> --%>
<!-- 		SELECT * FROM product -->
<%-- </sql:query> --%>
<!DOCTYPE html>

<html lang="en">

<c:choose>
 <c:when test="${empty rs1.rows}">
<!-- window.location.href = "emptyCart"; -->
<c:redirect url="/emptyCart" />
 </c:when>
<c:otherwise>

<head>
	<!-- 基本頁面設定
  ================================================== -->
  <meta charset="utf-8">
  <title>Original Shop</title>

  <!-- 移動特定元數據
================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">

  <!-- 頁籤圖片(icon) -->
  <link rel="shortcut icon" type="image/x-icon" href="images/oShopBlack-no.png" />
  <!-- 圖片(icon)字體 -->
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- 引用css樣式 bootstrap.min -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- 頁面主體樣式CSS -->
  <link rel="stylesheet" href="css/style.css">


</head>

<body id="body">

	<!-- 頁首區塊 -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
						<!-- *** 標題處 左側圖片 *** -->
						<!-- <span><img src="./images/oShopBlack.png" style="width: 60px;"></span> -->
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- 網站標誌(Logo) -->
					<div class="logo text-center">
					
						<!-- *** LOGO連結 回到首頁 *** -->
						<a href="<c:url value='/index'/>">
						
							<!-- 頁首標題欄 -->
							<svg width="135px" height="29px" viewBox="0 0 210 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
									font-size="35" font-family="AustinBold, Austin" font-weight="bold">
									<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
										<text id="AVIATO">
											<tspan x="108.94" y="325">Original Shop</tspan>
											<!-- 控制LOGO左右 -->
										</text>
									</g>
								</g>
							</svg>
						</a>
					</div>
				</div>
				
				
				<div class="col-md-4 col-xs-12 col-sm-4">
				
					<!-- 購物車 會員 搜尋-->
					<ul class="top-menu text-right list-inline">
						
						<!-- 會員 導覽列 有跳轉頁面 -->
						<li class="dropdown search dropdown-slide">
				
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
									class="tf-ion-person" style="font-size: 23px"></i> </a>
							<ul class="dropdown-menu search-dropdown">
								<li><a style="font-size: 16px" href="<c:url value='/signin'/>">註冊</a></li>
								<li><a style="font-size: 16px" href="<c:url value='/login'/>">登入</a></li>
							</ul>
							
						</li>
						<!-- / 會員 -->
					
						<li class="dropdown cart-nav dropdown-slide">
						
							<!-- *** 購物車 下拉式選單 *** -->
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
									class="tf-ion-android-cart" style="font-size: 23px"></i></a>
							<div class="dropdown-menu cart-dropdown">
							
								<!-- 購物車內容1 -->
								<div class="media">
									<a href="<c:url value=''/>" class="pull-left" >
										<img class="media-object" src="images/oShopBlack-no.png" alt="image" />
									</a>
									<div class="media-body">
									
									<!-- *** 筆電 空 連結 *** -->
										<h4 class="media-heading"><a href="<c:url value=''/>" >筆電</a></h4>
										<div class="cart-price">
											<span>1 x</span>
											<span>1250.00</span>
										</div>
										<h5><strong>$1200</strong></h5>
									</div>
									<!-- *** 購物車商品移除 *** -->
									<a href="<c:url value=''/>" class="remove"><i class="tf-ion-close"></i></a>
								</div>
								<!-- / 購物車內容1 -->
								
								<!-- 購物車內容2 -->
								<div class="media">
                  					<a href="<c:url value=''/>" class="pull-left">
										<img class="media-object" src="images/oShopBlack-no.png" alt="image" />
									</a>
									<div class="media-body">
									
										<!-- *** 耳機 空 連結 *** -->
										<h4 class="media-heading"><a href="<c:url value=''/>">耳機</a></h4>
										<div class="cart-price">
											<span>1 x</span>
											<span>1250.00</span>
										</div>
										<h5><strong>$1200</strong></h5>
									</div>
									
									<!-- *** 購物車商品移除 *** -->
									<a href="<c:url value=''/>" class="remove"><i class="tf-ion-close"></i></a>
								</div>
								<!-- / 購物車內容2 -->

								<div class="cart-summary">
									<span>合計</span>
									<span class="total-price">NT$1799</span>
								</div>
								
								<!-- *** 頁面跳轉 *** -->
								<ul class="text-center cart-buttons">
									<li><a href="<c:url value='/cart'/>" class="btn btn-small">檢視購物車</a></li>
									<li><a href="<c:url value='/checkout'/>" class="btn btn-small btn-solid-border">查看</a></li>
								</ul>
							</div>

						</li>
						<!-- / 購物車 -->

						<!-- 查詢 -->
						<li class="dropdown search dropdown-slide">
						
						<!-- *** 查詢 輸入框頁面跳轉 *** -->
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
									class="tf-ion-ios-search-strong" style="font-size: 23px"></i> </a>
							<ul class="dropdown-menu search-dropdown">
								<li>
									<form action="post"><input type="search" class="form-control"
											placeholder="Search..."></form>
								</li>
							</ul>
						</li>
					</ul><!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>
	<!-- 頁首區塊結束 -->

	<!-- 導覽列區塊 -->
	<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">主選單</h2>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
	
				</div><!-- / .navbar-header -->
	
				<!-- Navbar Links -->
				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">
						
						<!-- *** 導覽列 商品 下拉式選單 *** -->
						<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">筆記型電腦<span
									class=""></span></a>
 									<!-- class="tf-ion-ios-arrow-down" -->
							<div class="dropdown-menu">
								<div class="row">

									<!-- *** 筆電 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">APPLE</a></li>
											<li><a href="<c:url value='/product-single'/>">ASUS</a></li>
											<li><a href="<c:url value='/product-single'/>">ACER</a></li>
											<li><a href="<c:url value='/product-single'/>">Msi</a></li>
											<li><a href="<c:url value='/product-single'/>">其他品牌</a></li>
										</ul>
									</div>

									<!-- *** 周邊 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">依需求&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">家用</a></li>
											<li><a href="<c:url value='/product-single'/>">商用</a></li>
											<li><a href="<c:url value='/product-single'/>">創作者</a></li>
											<li><a href="<c:url value='/product-single'/>">學生</a></li>
											<li><a href="<c:url value='/product-single'/>">電競</a></li>
										</ul>
									</div>
								</div><!-- / .row -->
							</div><!-- / .dropdown-menu -->
						</li><!-- / 商品 -->
						
						<!-- *** 導覽列 商品 下拉式選單 *** -->
						<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">桌上型電腦<span
									class=""></span></a>
						</li>
						<!-- / 商品 -->
						
						<!-- *** 導覽列 商品 下拉式選單 *** -->
						<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false"><span
									class=""></span>周邊配件</a>
									<!-- class="tf-ion-ios-arrow-down" -->
							<div class="dropdown-menu">
								<div class="row">

									<!-- *** 筆電 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">APPLE 周邊</a></li>
											<li><a href="<c:url value='/product-single'/>">ASUS 周邊</a></li>
											<li><a href="<c:url value='/product-single'/>">ACER 周邊</a></li>
											<li><a href="<c:url value='/product-single'/>">MSI 周邊</a></li>
											<li><a href="<c:url value='/product-single'/>">其他品牌 周邊</a></li>
										</ul>
									</div>

									<!-- *** 周邊 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">依類別&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">鍵盤</a></li>
											<li><a href="<c:url value='/product-single'/>">滑鼠/滑鼠墊</a></li>
											<li><a href="<c:url value='/product-single'/>">耳機/麥克風</a></li>
											<li><a href="<c:url value='/product-single'/>">電源適配器</a></li>
											<li><a href="<c:url value='/product-single'/>">串流媒體</a></li>
											<li><a href="<c:url value='/product-single'/>">保護配件與防護</a></li>
											<li><a href="<c:url value='/product-single'/>">其他周邊</a></li>
										</ul>
									</div>

								</div><!-- / .row -->
							</div><!-- / .dropdown-menu -->
						</li><!-- / 商品 -->
						
						<!-- * 購物體驗 /blog-full-width * -->
						<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown"
								data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true"
								aria-expanded="false">企業專區 </a>
						</li><!-- / 購物體驗 -->
						
						<!-- *** 關於我們 有跳轉頁面 *** -->
						<li class="dropdown dropdown-slide">
							<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">關於我們 </a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/about'/>">公司簡介</a></li>
								<li><a href="<c:url value='/contact'/>">聯絡我們</a></li>
							</ul>
						</li><!-- / 關於我們 -->
						
						<!-- *** 我的帳戶 有跳轉頁面 *** -->
						<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">我的帳戶</a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/profileDetails'/>">個人資訊</a></li>
								<li><a href="<c:url value='/dashboard'/>">商店購物金</a></li>
								<li><a href="<c:url value='/order'/>">我的訂單</a></li>
								<li><a href="<c:url value='/orderList'/>">追蹤清單</a></li>					
							</ul>
						</li>
						<!-- / 我的帳戶 -->
						
					</ul><!-- / .nav .navbar-nav -->

				</div>
				<!--/.navbar-collapse 導覽列 -->
			</div><!-- / .container -->
		</nav>
	</section><!-- 導覽列區塊結束 -->

	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">購物車</h1>
						<ol class="breadcrumb">
						<!-- *** 跳轉 回到首頁 *** -->
							<li><a href="<c:url value='/index'/>">首頁</a></li>
							<li class="active">購物車</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>



	<div class="page-wrapper">
		<div class="cart shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="block">
							<div class="product-list">
								<form method="post">
									<table class="table">
										<thead>
											<tr>
												<th class="" style="font-size: 18px;">商品圖片</th>
												<th class="" style="font-size: 18px;">商品名稱</th>
												<th class="" style="font-size: 18px;">單件價格</th>
												<th class="" style="font-size: 18px;">商品數量</th>
												<th class="" style="font-size: 18px;">小計</th>
												<th class="" style="font-size: 18px;">商品狀態</th>
											</tr>
										</thead>
										<tbody>
<%-- 											<c:forEach items="${rs2.rows }" var="row"> --%>
											<c:forEach items="${rs1.rows }" var="row">
												<c:set var="productID" value="${row.productID}" />
												<tr data-productid="${row.productID}">
													<td class="">
														<div class="product-info">
<%-- 															<img width="80" src="<c:url value='/ShowImage?prodID=${row.productID }'/> " alt="" /> --%>
															<c:forEach items="${rs3.rows}" var="item">
														    <c:if test="${item.id eq productID}">
														    <img width="80" src="${item.img}" alt="" />
														    </c:if>
														  </c:forEach>			
														</div>
													</td>
													<td id="product-name" style="font-size: 16px;">
														<c:forEach items="${rs3.rows}" var="item">
<%-- 														    <c:if test="${item.prodID eq productID}"> --%>
														    <c:if test="${item.id eq productID}">
														      ${item.name}
														    </c:if>
													 	</c:forEach>
													</td>
													<td class="" style="font-size: 16px;">
														<c:forEach items="${rs3.rows}" var="item">
<%-- 														    <c:if test="${item.prodID eq productID}"> --%>
														    <c:if test="${item.id eq productID}">
														      ${item.price}
														    </c:if>
														  </c:forEach>
													</td>
													<td>
														<label for="quantity"></label> <input type="number"
														id="quantity-input" name="quantity" min="0" max="999" value=${row.quantity }
														onchange="updateTotalPrice(this)">
<!-- 														<label for="quantity"></label> -->
<!-- 														<input type="number" id="quantity" name="quantity" min="1" max="5"> -->
													</td>
													<td id="totalPrice" class="" style="font-size: 16px;">
														<c:set var="totalPrice" value="0" />
														<c:forEach items="${rs3.rows}" var="item">
<%-- 														  <c:if test="${item.prodID eq productID}"> --%>
														  <c:if test="${item.id eq productID}">
														    <c:set var="itemTotalPrice" value="${item.price * row.quantity}" />
														    <c:set var="totalPrice" value="${totalPrice + itemTotalPrice}" />
														  </c:if>
														</c:forEach>
														 ${totalPrice}
													</td>
													<td class="">
														<a style="font-size: 20px; margin-left:30px;" id="trash" class="tf-ion-ios-trash" href="#!" onclick="deleteProduct('${row.productID}')"></a>
													</td>
												</tr>
											</c:forEach>
											
										</tbody>
									</table>
									<!-- *** 頁面跳轉 *** -->
									<a href="<c:url value='/checkout'/>" class="btn btn-main pull-right" style="font-size: 16px; margin-right: 33px;">前往結帳</a>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<!-- 頁尾區塊 -->
	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li>
							<a href="<c:url value=''/>">
								<i class="tf-ion-social-facebook"></i>
							</a>
						</li>
						<li>
							<a href="<c:url value=''/>">
								<i class="tf-ion-social-instagram"></i>
							</a>
						</li>
						<li>
							<a href="<c:url value=''/>">
								<i class="tf-ion-social-github"></i>
							</a>
						</li>
						<li>
							<a href="<c:url value=''/>">
								<i class="tf-ion-android-mail"></i>
							</a>
						</li>
					</ul>
					<!-- 	<ul class="footer-menu text-uppercase"> -->
<!-- 						<li> -->
<!-- 							<a href="<c:url value=''/>">接觸</a> --!>
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="<c:url value=''/>">購物</a> --!>
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="<c:url value=''/>">價格</a> --!>
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="<c:url value=''/>">隱私政策</a> --!>
<!-- 						</li> -->
<!-- 					</ul> -->
					<p class="copyright-text" style="font-size: 12px;">版權 &copy;2021, 設計 &amp; 開發 <a
							href="https://themefisher.com/">Themefisher</a></p>
				</div>
			</div>
		</div>
	</footer><!-- 頁尾區塊 -->

	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script src="plugins/instafeed/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

	<!-- slick Carousel -->
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/slick/slick-animation.min.js"></script>

	<!-- Google Mapl -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="js/script.js"></script>
	<script>
		$(document).ready(function() {
// 			name商品名稱 newQuantity數量將這兩個變數傳入後端 後端會將這兩個資料在資料庫中做改動
			 $('input[name="quantity"]').on('change', function() {
// 				 取得目前 input 元素所在的 <tr> 元素
			    var tr = $(this).closest('tr');
// 			 	從 tr 的 data-* 屬性讀取 productID 值
			    var dataid = tr.data('productid');
// 			    取得目前 input 元素的值
			    var newQuantity = $(this).val();
		        $.ajax({
// 		        	傳入updateProduct.jsp做後端的行為(更新資料庫)
		            url: 'updateProduct',
		            type: 'GET',
		            data: {dataid: dataid, quantity: newQuantity},
		            success: function(data) {
		                console.log(1);
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                console.error(textStatus + ': ' + errorThrown);
		                console.log(2);
		            }
		        });
		    });
		});
	</script>
<!-- 	這段是用來寫改變商品數量的時候 小計會同時跟著改變 -->
	<script>
	    function updateTotalPrice(input) {
	        var quantity = input.value;
		    var dataid = $(input).closest("tr").attr("data-productid"); // 获取 dataid 属性值
	    	if(quantity == 0) {
	    		var result = confirm("是否删除此笔数据？");
	    		if(result){
	                // 删除数据的相关操作
	    			$.ajax({
	    	            url: 'deleteProduct',
	    	            type: 'GET',
	    	            data: {dataid: dataid},
	    	            success: function(data) {
	    					$("tr[data-productid='" + dataid + "']").remove();
	    					if ($("tr[data-productid]").length == 0) {
	    	                    window.location.href = "emptyCart";
	    	                }
	    					console.log("dataid:"+dataid);
	    	                console.log(1);
	    	            },
	    	            error: function(jqXHR, textStatus, errorThrown) {
	    	                console.error(textStatus + ': ' + errorThrown);
	    	                console.log(2);
	    	            }
	    	        });
	    		}else{
	    			input.value = 1;// 防止数量为0
	    		}
	    	}else{
		        var price = input.parentNode.previousElementSibling.textContent;
		        var totalPriceElement = input.parentNode.nextElementSibling;
		        var totalPrice = price * quantity;
		        totalPriceElement.textContent = totalPrice;
	    	}
    	}
	</script>
<!-- 	垃圾筒的功能 -->
	<script>
		function deleteProduct(dataid) {
		  if (confirm("確定要刪除這個商品嗎？")) {
// 			name為商品名稱
		    $.ajax({
	            url: 'deleteProduct',
	            type: 'GET',
	            data: {dataid: dataid},
	            success: function(data) {
					$("tr[data-productid='" + dataid + "']").remove();
	                console.log(1);
	             	// 檢查購物車是否為空如果是空的導向到另一個畫面
	                if ($("tr[data-productid]").length == 0) {
	                    window.location.href = "emptyCart";
	                }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                console.error(textStatus + ': ' + errorThrown);
	                console.log(2);
	            }
	        });
		    
		    
		    console.log("刪除商品：" + dataid);
		  }
		}
	</script>

</body>

</c:otherwise>
</c:choose>

</html>