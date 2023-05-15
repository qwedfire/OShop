<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Original Shop</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<!-- theme meta -->
<meta name="theme-name" content="aviato" />

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="images/oShopBlack-no.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

<!-- Animate css -->
<link rel="stylesheet" href="plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="plugins/slick/slick-theme.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<!-- 購物車用 -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->

<!-- 智慧客服 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/layui/2.6.8/css/layui.css">
<script src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
<style>
	.lineBox{
		position: fixed!important;
		bottom: 30%;
		right: 0px;
		left: auto;
		z-index: 999999;
	}
	.lineBox .lineItem{
		cursor: pointer;
		width: 50px;
		height: 55px;
		background: #01060e;
		margin-bottom: 1px;
		color: #fff;
		line-height: 55px;
		text-align: center;
		position: relative;
	}
	.lineItem .layui-icon{
		font-size: 26px;
	}
	.lineItem:hover{
		opacity: 1.8;
	}
	.lineTop{
		margin-top: 4px;
	}
	.lineTip{
		border-radius: 2px;
		box-shadow: 1px 1px 3px rgba(0,0,0,.2);
		position: absolute;
		top:0px;
		right: 59px;
		color: #000;
		padding: 0 10px;
		background: #fff;
		display: none;
	}
	.lineTip:before, .lineTip:after {
		content: "";
		display: block;
		position: absolute;
		width: 0;
		height: 0;
		border: 8px solid transparent;
		border-left-color: rgba(255,255,255,1);
		right: -16px;
		top: 10px;
		z-index: 1;
	}

	.lineTip:after{
		right: -18px;
		border-left-color: rgb(237,237,237);
		z-index: 0;
	}
	.lineWechat{
		width: 100px;
		height: 100px;
		padding: 0px;
	}
</style>







<style>
/*  購物車上的小數字設定位置和顏色  */

  .badge-notify {  
  	background: red;  
  	position: relative; 
    	top: -60px;    
  	right: -3px;  
  }  
/* .badge { */
/*     display: inline-block; */
/*     min-width: 10px; */
/*     padding: 3px 7px; */
/*     font-size: inherit; */
/*     font-weight: 700; */
/*     line-height: 1; */
/*     color: #fff; */
/*     text-align: center; */
/*     white-space: nowrap; */
/*     vertical-align: middle; */
/*     background-color: #777; */
/*     border-radius: 10px; */
/* } */
		
/*購物車下拉會跟著移動版本更新之後沒有用到 但如果不註解會跟新版本的有衝突 如果滑到一定的高度我購物車的小數字會消失不見 */
/* .my-cart-icon-affix { */
/* 	position: fixed; */
/* 	z-index: 999; */
/* } */

</style>
</head>

<body id="body">
	<!-- Start Top Header Bar -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
						<span><img src="images/oShopBlack.png" style="width: 60px;"></span>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="index.html"> <!-- replace logo here --> <svg
								width="435px" height="30px" viewBox="0 0 355 40" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
								<g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
									<g id="Group" transform="translate(-108.000000, -297.000000)"
									fill="#000000">
										<text id="AVIATO">
											<tspan x="158.94" y="325">Original Shop</tspan>
										</text>
									</g>
								</g>
							</svg>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Cart -->
					<ul class="top-menu text-right list-inline">
						<!-- Search -->
						<li class="dropdown search dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i>
								查詢</a>
							<ul class="dropdown-menu search-dropdown">
								<li>
									<form action="post">
										<input type="search" class="form-control"
											placeholder="Search...">
									</form>
								</li>
							</ul></li>
						<!-- / Search -->
						<!-- Languages -->
						<li class="commonSelect"><select class="form-control">
								<option>英文</option>
								<option>中文</option>
								<option>日文</option>
						</select></li>
						<!-- / Languages -->
<!-- 						<li> -->
<!-- 							<h3> -->
<!-- 								&nbsp;&nbsp;&nbsp;&nbsp; -->
								<!-- 									擺放位置 -->
<!-- 								<div style="float: right; cursor: pointer;"> -->
									<!-- 										購物車圖案 -->
<!-- 									<span class="glyphicon glyphicon-shopping-cart my-cart-icon" onclick="toCart()"> -->
										<!-- 											加入購物車的數字 --> 
<!-- 										<span class="badge badge-notify my-cart-badge"></span> -->
<!-- 									</span> -->
<!-- 								</div> -->
<!-- 							</h3> -->
<!-- 						</li> -->
					</ul>
					<!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Top Header Bar -->


	<!-- Main Menu Section -->
	<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">主選單</h2>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">切換導航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>

				</div>
				<!-- / .navbar-header -->

				<!-- Navbar Links -->
				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">

						<!-- Home -->
						<li class="dropdown "><a href="<c:url value='/index4' />">主頁</a></li>

						<!-- Elements -->
						<li class="dropdown dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Shop <span
								class="tf-ion-ios-arrow-down"></span></a>
							<div class="dropdown-menu">
								<div class="row">

									<!-- Basic -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">頁面</li>
											<li role="separator" class="divider"></li>
											<li><a href="shop.html">購物</a></li>
											<li><a href="checkout.html">檢視</a></li>
											<li><a href="cart.html"></a></li>
											<li><a href="pricing.html">價格</a></li>
											<li><a href="confirmation.html">驗證</a></li>

										</ul>
									</div>

									<!-- Layout -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">版面</li>
											<li role="separator" class="divider"></li>
											<li><a href="product-single.html">產品詳情</a></li>
											<li><a href="shop-sidebar.html">邊欄購物</a></li>

										</ul>
									</div>

								</div>
								<!-- / .row -->
							</div>
							<!-- / .dropdown-menu --></li>
						<!-- / Elements -->


						<!-- 頁面 -->
						<li class="dropdown full-width dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">頁面 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<div class="dropdown-menu">
								<div class="row">

									<!-- 介紹 -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">介紹</li>
											<li role="separator" class="divider"></li>
											<li><a href="contact.html">聯繫我們</a></li>
											<li><a href="about.html">關於我們</a></li>
											<li><a href="404.html">404 Page</a></li>
											<li><a href="coming-soon.html">即將推出</a></li>
											<li><a href="faq.html">常見問題</a></li>
										</ul>
									</div>

									<!-- 接觸 -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">控制面板</li>
											<li role="separator" class="divider"></li>
											<li><a href="dashboard.html">用戶界面</a></li>
											<li><a href="order.html">命令</a></li>
											<li><a href="address.html">地址</a></li>
											<li><a href="profile-details.html">資料詳情</a></li>
										</ul>
									</div>

									<!-- 公用事業 -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">公用事業</li>
											<li role="separator" class="divider"></li>
											<li><a href="login.html">註冊頁面</a></li>
											<li><a href="signin.html">登錄頁面</a></li>
											<li><a href="forget-password.html">Forget Password</a></li>
										</ul>
									</div>

									<!-- Mega Menu -->
									<div class="col-sm-3 col-xs-12">
										<a href="shop.html"> <img class="img-responsive"
											src="images/shop/header-img.jpg" alt="menu image" />
										</a>
									</div>
								</div>
								<!-- / .row -->
							</div>
							<!-- / .dropdown-menu --></li>
						<!-- / Pages -->



						<!-- Blog -->
						<li class="dropdown dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Blog <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li><a href="blog-left-sidebar.html">部落格左側邊欄</a></li>
								<li><a href="blog-right-sidebar.html">部落格右側邊欄</a></li>
								<li><a href="blog-full-width.html">部落格全寬</a></li>
								<li><a href="blog-grid.html">部落格2列</a></li>
								<li><a href="blog-single.html">部落格登入</a></li>
							</ul></li>
						<!-- / Blog -->

						<!-- Shop -->
						<li class="dropdown dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">元素 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">排版</a></li>
								<li><a href="buttons.html">按鈕</a></li>
								<li><a href="alerts.html">警報</a></li>
							</ul></li>
						<!-- / Blog -->
					</ul>
					<!-- / .nav .navbar-nav -->

				</div>
				<!--/.navbar-collapse -->
			</div>
			<!-- / .container -->
		</nav>
	</section>

	<div class="hero-slider">
		<div class="slider-item th-fullpage hero-area"
			style="background-image: url(./images/slider/1.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 text-center">
						<p data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".1">產品</p>
						<h1 data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".5">最新消息</h1>
						<a data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".8" class="btn" href="shop.html">購物</a>
					</div>
				</div>
			</div>
		</div>
		<div class="slider-item th-fullpage hero-area"
			style="background-image: url(./images/slider/2.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 text-left">
						<p data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".1">產品</p>
						<h1 data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".5">折扣專區</h1>
						<a data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".8" class="btn" href="shop.html">購物</a>
					</div>
				</div>
			</div>
		</div>
		<div class="slider-item th-fullpage hero-area"
			style="background-image: url(./images/slider/4.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 text-right">
						<p data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".1">產品</p>
						<h1 data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".5">主題販售</h1>
						<a data-duration-in=".3" data-animation-in="fadeInUp"
							data-delay-in=".8" class="btn" href="shop.html">購物</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="product-category section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<h2>產品導覽</h2>
					</div>
				</div>
				<div class="col-md-6">
					<div class="category-box">
						<a href="#!"> <img src="images/shop/category/9.jpg" alt="" />
							<div class="content">
								<h3 style="color: blue;">老手專區</h3>
								<p style="color: blue;">自行選購</p>
							</div>
						</a>
					</div>
					<div class="category-box">
						<a href="#!"> <img src="images/shop/category/7.jpg" alt="" />
							<div class="content">
								<h3 style="color: yellow;">主題專題</h3>
								<p style="color: yellow;">客製化</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="category-box category-box-2">
						<a href="#!"> <img src="images/shop/category/8.jpg" alt="" />
							<div class="content">
								<h3 style="color: brown;">新手專區</h3>
								<p style="color: brown">量身訂做</p>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="products section bg-gray">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>熱門商品</h2>
				</div>
			</div>
			<div class="row">

				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<span class="bage">銷售</span> <img class="img-responsive"
								src="images/shop/products/10.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#!"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href="#!"> 
									<i class="product my-cart-btn tf-ion-android-cart" 
											data-id="1"
											data-name="筆電" data-summary="summary 1"
											data-price="20000" data-quantity="1"
											data-image="images/shop/products/10.jpg" 
											 ></i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">筆電</a>
							</h4>
							<p class="price">$20,000</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/shop/products/11.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href="#!"> <!-- data-quantity="1"點一次購物車增加的數量為1 -->
											<i class="product my-cart-btn tf-ion-android-cart" data-id="2"
											data-name="product_2" data-summary="summary 2"
											data-price="2000" data-quantity="1"
											data-image="images/shop/products/11.jpg" > </i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">主機板</a>
							</h4>
							<p class="price">$2,000</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/shop/products/12.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href="#!"> <i
											class="product my-cart-btn tf-ion-android-cart" data-id="3"
											data-name="product_3" data-summary="summary 3"
											data-price="2300" data-quantity="1"
											data-image="images/shop/products/12.jpg" > </i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">顯示卡</a>
							</h4>
							<p class="price">$2,300</p>
						</div>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal product-modal fade" id="product-modal">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="tf-ion-close"></i>
					</button>
					<div class="modal-dialog " role="document">
						<div class="modal-content">
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8 col-sm-6 col-xs-12">
										<div class="modal-image">
											<img class="img-responsive"
												src="images/shop/products/modal-product.jpg"
												alt="product-img" />
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="product-short-details">
											<h2 class="product-title">GM 吊墜，玄武岩灰色</h2>
											<p class="product-price">$200</p>
											<p class="product-short-description">Lorem ipsum dolor
												sit amet, consectetur adipisicing elit. Rem iusto nihil cum.
												Illo laborum numquam rem aut officia dicta cumque.</p>
											<a href="cart.html" class="btn btn-main">添加到購物車</a> <a
												href="product-single.html" class="btn btn-transparent">查看產品詳情</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.modal -->

			</div>
		</div>
	</section>


	<!--
Start Call To Action
==================================== -->
	<section class="call-to-action bg-gray section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="title">
						<h2>訂閱我們</h2>
						<p>
							如果想知道關於更多商品新資訊， <br> 麻煩請您在下方輸入電子郵件帳號訂閱。
						</p>
					</div>
					<div class="col-lg-6 col-md-offset-3">
						<div class="input-group subscription-form">
							<input type="text" class="form-control"
								placeholder="Enter Your Email Address"> <span
								class="input-group-btn">
								<button class="btn btn-main" type="button">立即訂閱</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->

				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->

	<section class="section instagram-feed">
		<div class="container">
			<div class="row">
				<div class="title">
					<h2>檢視我們的IG帳號</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="instagram-slider" id="instafeed"
						data-accessToken="IGQVJYeUk4YWNIY1h4OWZANeS1wRHZARdjJ5QmdueXN2RFR6NF9iYUtfcGp1NmpxZA3RTbnU1MXpDNVBHTzZAMOFlxcGlkVHBKdjhqSnUybERhNWdQSE5hVmtXT013MEhOQVJJRGJBRURn">
					</div>
				</div>
			</div>
		</div>
	</section>
	
<!-- 	智慧客服 -->
	
			<!-- 									擺放位置 -->
		<!-- 										購物車圖案 -->
<!-- 		<span class="glyphicon glyphicon-shopping-cart my-cart-icon" onclick="toCart()"> -->
			<!-- 											加入購物車的數字 --> 
<!-- 			<span class="badge badge-notify my-cart-badge"></span> -->
<!-- 		</span> -->
	</div>
	
	<div class="lineBox">
		<div class="lineItem" onclick="toCart()" >
			<i class="layui-icon ">&#xe657;</i>
			<span class="badge badge-notify my-cart-badge glyphicon my-cart-btn my-cart-icon"></span>
<!-- 			<i class="layui-icon badge badge-notify my-cart-badge">&#xe657;</i> -->
		</div>
		<div class="lineItem">
			<i class="layui-icon">&#xe626;</i>
			<div class="lineTip">	
			<iframe
			allow="microphone;"
			width="350"
			height="320"
			src="https://console.dialogflow.com/api-client/demo/embedded/92c466fc-f413-4490-b592-fea0bd43a98a">
			</iframe>
			</div>
		</div>
		<div class="lineItem lineTop" id="launchTopButton">
			<i class="layui-icon" src="http://127.0.0.1:5502/aviato-main/theme/index.html">&#xe604;</i>
		</div>
	</div>
	<script>
		$(function(){
			$("#launchTopButton").click(function() {
				$('body,html').scrollTop(0);
			});
			$(".lineItem").hover(function() {
				$(".lineTip").hide();
				$(this).find(".lineTip").show();
			});
		});
	</script>

	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href="https://www.facebook.com/themefisher"> <i
								class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href="https://www.instagram.com/themefisher"> <i
								class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href="https://www.twitter.com/themefisher"> <i
								class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href="https://www.pinterest.com/themefisher/"> <i
								class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu text-uppercase">
						<li><a href="contact.html">接觸</a></li>
						<li><a href="shop.html">購物</a></li>
						<li><a href="pricing.html">價格</a></li>
						<li><a href="contact.html">隱私政策</a></li>
					</ul>
					<p class="copyright-text">
						版權 &copy;2021, 設計 &amp; 由開發 <a href="https://themefisher.com/">Themefisher</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="js/script.js"></script>

	<!-- 購物車用的喔 -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<script type='text/javascript' src="js/bootstrap.min.js"></script>
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	
<!-- 	購物車圖案會根據資料庫的資料顯示有多少商品在購物車中並實現點擊購物車即增加到資料表中	 -->
	<script>
	$.ajax({
		  url: 'showCart',
		  method: 'GET',
		  success: function(data) {
			console.log(data);
// 		    data的資料為 >>[{"quantity":"2","productID":1,"cartID":1},{"quantity":"4","productID":2,"cartID":1},{"quantity":"2","productID":3,"cartID":7}]		    // 將取得的商品資料存入購物車物件中
		    var jsonData = JSON.parse(data.trim());
		    var cartItems = [];
		    jsonData.forEach(function(item) {
	            var cartItem = {
	                id: item.cartID,
	                name: '',
	                summary: 'summary 1',
	                price: 1,
	                quantity: item.quantity,
	                image: 'images/shop/products/10.jpg'
	            };
	            cartItems.push(cartItem);
	        });
		    
		    $('.my-cart-btn').myCart({
		        currencySymbol: '$',
		        classCartIcon: 'my-cart-icon',
		        classCartBadge: 'my-cart-badge',
		        classProductQuantity: 'my-product-quantity',
		        classProductRemove: 'my-product-remove',
		        classCheckoutCart: 'my-cart-checkout',
		        affixCartIcon: true,
		        showCheckoutModal: true,
		        numberOfDecimals: 2,
		        cartItems: cartItems // 這裡傳入 cartItems
		    });
		  },		    
		  error: function(jqXHR, textStatus, errorThrown) {
		    console.error(textStatus + ': ' + errorThrown);
		  }
		});
	</script>
<!-- 	點購物車按鈕將資料送往資料庫 -->
	<script>
	function submitForm() {
// 		如果沒有使用者資料不執行新增到資料庫的動作
// 	  if (!checkUserName()) {
// 	      return;
//   	  } 
	  var dataid = $(this).attr('data-id');
	  console.log("dataid:"+dataid);
	  $.ajax({
	    type: 'GET',
	    url: 'addToCart',
	    data: {dataid: dataid},
	    success: function(data) {
	      console.log(1);
	      console.log("data:"+data);
	    },
	    error: function() {
	      console.log(2);
	    } 
	  });
	}
	
	$(document).ready(function() {
	  $('.product').click(submitForm);
// 	  購物車小紅字數字0-9會跑到上面去加上這個才可以讓他為字不會跑掉
	  $('.badge').css('font-size','inherit');
	});
	
	
</script>



<!-- 點擊購物車圖案直接跳轉到購物車頁面 -->
<script>
	function toCart(){
		window.location.href = 'cart2';
	}
</script>
<!-- 如果session用戶名稱是空的跳轉到其他畫面 -->
<script >
	function checkUserName() {
	    if (<%= session.getAttribute("userName") %> == null) {
	      window.location.href = "tryindex";
	      return false;
	    } 
	    return true;
	  }
</script>
</body>