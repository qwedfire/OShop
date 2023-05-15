<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en">

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


	<!-- 引用W3school #trash-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style>
		#trash {

			color: gray;
			margin-left: 0%;
			border: 0px solid red;
		}

		.product-single-new {
			color: gray;
			border: 0px solid red;
		}
	</style>

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
							<c:choose >
								<c:when test="${not empty sessionScope.user}">
									<ul class="dropdown-menu search-dropdown">
										<li><a style="font-size: 16px" href="<c:url value='/signin'/>">註冊</a></li>
										<li><a style="font-size: 16px" href="<c:url value='/logout'/>">登出</a></li>
									</ul>
								</c:when>
								<c:otherwise>
									<ul class="dropdown-menu search-dropdown">
										<li><a style="font-size: 16px" href="<c:url value='/signin'/>">註冊</a></li>
										<li><a style="font-size: 16px" href="<c:url value='/login'/>">登入</a></li>
									</ul>
								</c:otherwise>	
							</c:choose>
							
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
						<!-- / 查詢 -->
						
						

<!-- 						語言選擇 -->
<!-- 						<li class="commonSelect"> -->
<!-- 							<select class="form-control"> -->
<!-- 								<option>中文</option> -->
<!-- 								<option>英文</option> -->
<!-- 								<option>日文</option> -->
<!-- 							</select> -->
<!-- 						</li> -->
<!-- 						/ 語言選擇 -->

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
						
					<!-- Home *** 頁面跳轉首頁 *** -->
					<!--<li class="dropdown ">
						<a href="<c:url value='/index'/>">回首頁</a>
					</li>-->
					<!-- / Home -->
					
				
						
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
 									<!-- class="tf-ion-ios-arrow-down" -->
 									
 									
<!-- 							<div class="dropdown-menu"> -->
<!-- 								<div class="row"> -->

<!-- 									*** 筆電 導覽列 有跳轉頁面 *** -->
<!-- 									<div class="col-lg-6 col-md-6 mb-sm-3"> -->
<!-- 										<ul> -->
<!-- 											<li class="dropdown-header">依系列&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li> -->
<!-- 											<li role="separator" class="divider"></li> -->
<!-- 											<li><a href="<c:url value='/product-single'/>">Swift</a></li> --!>
<!-- 											<li><a href="<c:url value='/product-single'/>">Aspire</a></li> --!>
<!-- 											<li><a href="<c:url value='/product-single'/>">其他系列</a></li> --!>
<!-- 										</ul> -->
<!-- 									</div> -->

<!-- 									*** 周邊 導覽列 有跳轉頁面 *** -->
<!-- 									<div class="col-lg-6 col-md-6 mb-sm-3"> -->
<!-- 										<ul> -->
<!-- 											<li class="dropdown-header">電腦周邊&emsp;</li> -->
<!-- 											<li role="separator" class="divider"></li> -->
<!-- 											<li><a href="<c:url value='/product-single'/>">滑鼠</a></li> --!>
<!-- 											<li><a href="<c:url value='/product-single'/>">耳機</a></li> --!>
<!-- 											<li><a href="<c:url value='/product-single'/>">麥克風</a></li> --!>
<!-- 										</ul> -->
<!-- 									</div> -->
									
<!-- 								</div>/ .row -->
<!-- 							</div>/ .dropdown-menu -->
							
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


						<!-- *** 會員 有跳轉頁面 *** -->
						<!--<li class="dropdown dropdown-slide">
							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
								data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">會員 </a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/signin'/>">註冊</a></li>
								<li><a href="<c:url value='/login'/>">登入</a></li>
							</ul>
						</li>-->
						<!-- / 會員 -->
						
						
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
						<h1 class="page-name">訂單結帳</h1>
						<ol class="breadcrumb">
						
							<!-- *** 跳轉頁面 回到首頁 *** -->
							<li><a href="<c:url value='/index'/>">首頁</a></li>
							<li class="active">訂單結帳</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="page-wrapper">
		<div class="checkout shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="block billing-details">
							<h4 class="widget-title">顧客資料</h4>
							<form class="checkout-form">
								<div class="form-group">
									<label for="full_name">顧客名稱</label>
									<input type="text" class="form-control" id="full_name" placeholder="">
								</div>
								<div class="form-group">
									<label for="user_email">電子信箱</label>
									<input type="text" class="form-control" id="user_email" placeholder="">
								</div>
								<div class="form-group">
									<label for="user_phone">電話號碼</label>
									<input type="text" class="form-control" id="user_phone" placeholder="">
								</div>
								<div class="form-group">
									<label for="user_date">生日日期</label>
									<input type="date" class="form-control" id="user_date" placeholder="">
								</div>
								<div class="form-group">
									<label for="user_post_code">郵遞區號</label>
									<input type="text" class="form-control" id="user_post_code" name="zipcode" value="">
								</div>
								<div class="form-group">
									<label for="user_city">城市</label>
									<input type="text" class="form-control" id="user_city" name="city" value="">
								</div>
								<div class="form-group">
									<label for="user_address">地址</label>
									<input type="text" class="form-control" id="user_address" placeholder="">
								</div>
							</form>

							<div class="col-md-6">
								<div class="product-checkout-remark">
									<div class="block" style="width:500px; margin-top: 20px; ">
										<h4 class="widget-title">訂單備註</h4>
										<div class="section-body">
											<form name="remarksForm">
												<div class="form-group">
													<textarea id="order-remarks" class="form-control"
														name="order[order_remarks]" placeholder="有什麼想告訴賣家嗎？" rows="3"
														style="width:450px; height:200px; resize:none; margin-top: 20px;"></textarea>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="product-checkout-711">
							<div class="block">
								<!-- Delivery Form -->
								<div>
									<section class="delivery-form" data-e2e-id="checkout-delivery_container">
										<div class="section-header">
											<div class="pull-right">
												運費: NT$0
											</div>
											<h4>送貨資料</h4>
										</div>
										<div class="section-body">
											<p>
												已選擇的送貨方式: 7-11 超商取貨付款 (取貨付款)
											</p>
											<form checkout-delivery-form name="deliveryForm" autocomplete="off">


												<div id="delivery-form-content">

													<div class="form-group">
														<label class="control-label">
															<input type="checkbox"
																data-e2e-id="order-delivery-recipient-is-customer_checkbox"
																name="order[delivery_data][recipient_is_customer]">
															收件人資料與顧客資料相同
														</label>
													</div>
													<div class="form-group">
														<label for="recipient-name" class="control-label">收件人名稱</label>
														<input id="recipient-name" type="text" class="form-control"
															name="order[delivery_data][recipient_name]" value=""
															ng-pattern="/^(?:[\u4e00-\u9fa5\u3400-\u4DB5a-zA-Z0-9]{1,5}|[a-zA-Z0-9]{1,10})$/"
															required />
														<span class="help-block">請填入收件人真實姓名，以確保順利收件</span>
													</div>


													<div class="form-group">
														<label for="recipient-phone"
															class="control-label">收件人電話號碼</label>
														<input id="recipient-phone" type="tel" class="form-control"
															name="order[delivery_data][recipient_phone]" value=""
															ng-pattern="/^0?9{1}[0-9]{8}$/" required
															data-country='TW' />
													</div>
													<br>

													<!-- fields by delivery -->


													<!-- Seven Eleven -->
													<div id="seven-eleven-address" delivery-type="local"
														region-type="tw_711_nopay" checkout-delivery-seven-eleven
														get-form-data="getFormData()">
														<div class="form-group">
															<label for="order-delivery-location-code"
																class="control-label">
																<img
																	src="https://s3-ap-southeast-1.amazonaws.com/static.shoplineapp.com/web/v1/img/seven-eleven.png">
																選擇門市
															</label>
															<div class="btn btn btn-primary btn-block btn-pick-store">
																搜尋門市
															</div>
														</div>
													</div>
													<!-- End of Seven Eleven -->
												</div>
										</div>
								</div>
							</div>

							<br>

							<div>
								<section class="payment-form" data-e2e-id="checkout-payment_container">
									<div class="section-header" style="margin-top: 30px;">
										<h4>付款資料</h4>
									</div>
									<div class="section-body checkout-shopline-payment-form">
										<form name="paymentForm">
											<div class="form-group">
												已選擇的付款方式: 7-11 貨到付款 (請三思再進行購買，記得要取貨!!)
											</div>
										</form>
									</div>
								</section>
							</div>

							<div>
								<section class="invoice-form" data-e2e-id="checkout-invoice_container">
									<div class="section-header" style="margin-top: 50px;">
										<h4>
											索取發票
											<div class="loading-icon sk-three-bounce pull-right" style="display: none;">
												<div class="sk-child sk-bounce1"></div>
												<div class="sk-child sk-bounce2"></div>
												<div class="sk-child sk-bounce3"></div>
											</div>
										</h4>
									</div>
									<div class="section-body">
										<form checkout-invoice-form name="invoiceForm" is-loading="isLoading"
											countries="countries" is-store-pickup="true">

											<div class="form-inline form-inline-2 margin-bottom-standard">
												<div class="form-group">
													<label for="invoice-type"
														class="control-label margin-bottom-small">發票類型</label>
													<span class="select-cart-form">
														<select id="invoice-type" data-e2e-id="invoice-type_select"
															class="form-control" name="order[invoice][invoice_type]"
															required>
															<option selected="selected" value="0">雲端發票</option>
															<option value="1">捐贈發票</option>
															<option value="2">公司戶發票</option>
														</select>
													</span>
												</div>

												<div class="form-group">
													<label for="carrier-type"
														class="control-label margin-bottom-small">載具類型</label>
													<span class="select-cart-form">
														<select id="carrier-type" data-e2e-id="carrier-type_select"
															class="form-control" name="order[invoice][carrier_type]"
															required>
															<option selected="selected" value="0">會員載具
																(發票資訊會寄到您的電郵)
															</option>
															<option value="1">手機條碼</option>
															<option value="2">自然人憑證條碼</option>
														</select>
													</span>
												</div>
											</div>
										
										</form>
										
									</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


				<!-- Modal -->
				<div class="modal fade" id="coupon-modal" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-body">
								<form>
									<div class="form-group">
										<input class="form-control" type="text" placeholder="輸入優惠代碼">
									</div>
									<button type="submit" class="btn btn-main">確認優惠代碼</button>
								</form>
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
	<!-- * 無意義連結 * -->
	
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
				<script
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
				<script type="text/javascript" src="plugins/google-map/gmap.js"></script>

				<!-- Main Js File -->
				<script src="js/script.js"></script>



</body>

</html>