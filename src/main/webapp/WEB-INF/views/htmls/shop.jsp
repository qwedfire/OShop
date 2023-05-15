<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
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
	<!-- 標題區塊 -->
	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">商店</h1>
						<ol class="breadcrumb">
						
							<!-- *** 頁面跳轉 *** -->
							<li><a href="<c:url value='/index'/>">首頁</a></li>		
							
							<li class="active">商店</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section><!-- 標題區塊結束 -->

	<!-- 內容區塊 -->
	<section class="products section">
		<div class="container">
			<div class="row">

				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<span class="bage">Sale</span>
							<img class="img-responsive" src="images/image-product/acerfrostblade120-1.jpg"
								alt="product-img" />
							<div class="preview-meta">
							
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
								
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">Acer PredatPredator Frostblade 120 !or Frostblade 120
									!!!!!!!!!!風扇</a></h4>
							<p class="price">$390</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/asustf120-2.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">華碩 TUF Gaming TF120 ARGB 風扇</a></h4>
							<p class="price">$499</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/asustuftf120w-3.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">華碩 TUF Gaming TF120 ARGB(白) 風扇</a></h4>
							<p class="price">$549</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/awunhl9aam5-4.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">貓頭鷹 NH-L9a-AM5 黑化版散熱器</a></h4>
							<p class="price">$1665</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/cmmobius120-5.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">酷碼 Mobius 120 風扇</a></h4>
							<p class="price">$690</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/cmsickleflow200argb-6.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">酷碼 SickleFlow 200 ARGB 風扇</a></h4>
							<p class="price">$990</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<span class="bage">Sale</span>
							<img class="img-responsive" src="images/image-product/darkflashs100-7.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">darkFlash S100 / S101 12cm風扇</a></h4>
							<p class="price">$399</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/montechmetal120-8.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">MONTECH METAL 120 PWM 12cm 風扇</a></h4>
							<p class="price">$299</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive" src="images/image-product/scythekazeflex-9.jpg"
								alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li>
									<!-- * 搜尋 空 尚未有連結 * -->
										<span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
										</span>
									</li>
									<li>
									<!-- * 愛心 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-ios-heart"></i></a>
									</li>
									<li>
									<!-- * 購物車 空 尚未有連結 * -->
										<a href="<c:url value=''/>"><i class="tf-ion-android-cart"></i></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4><a href="<c:url value='/product-single'/>">Scythe Kaze Flex 120 闇風丸</a></h4>
							<p class="price">$490</p>
						</div>
					</div>
				</div>


				<!-- Modal -->
				<div class="modal product-modal fade" id="product-modal">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i class="tf-ion-close"></i>
					</button>
					<div class="modal-dialog " role="document">
						<div class="modal-content">
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8 col-sm-6 col-xs-12">
										<div class="modal-image">
											<img class="img-responsive"
												src="images/image-product/acerfrostblade120-1-1500.jpg"
												alt="product-img" />
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="product-short-details">
											<h2 class="product-title">Acer Predator Frostblade 120 風扇</h2>
											<p class="product-price">$390</p>
											<p class="product-short-description">
												/HDB軸/1800RPM/ARGB/PWM/一年保 $390 (Visited 314 times)
											</p>
											<a href="<c:url value='/cart'/>" class="btn btn-main">加入購物車</a>
											<a href="<c:url value='/product-single'/>" class="btn btn-transparent">查看商品詳情</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- /.modal -->

			</div>
		</div>
	</section>
	<!-- 內容區塊結束 -->

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
					 <p class="copyright-text" style="font-size: 12px;">版權 &copy;2021, 設計 &amp; 由開發 <a
							href="https://themefisher.com/">Themefisher</a></p>
				</div>
			</div>
		</div>
	</footer>
	<!-- 頁尾區塊 -->

	<!-- 引用
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
	<!-- Main Js File -->
	<script src="js/script.js"></script>

</body>

</html>