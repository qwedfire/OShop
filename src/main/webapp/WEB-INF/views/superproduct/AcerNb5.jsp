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
    <meta charset="utf-8" />
    <title>Original Shop</title>

    <!-- 移動特定元數據
================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Construction Html5 Template" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=5.0"
    />
    <meta name="author" content="Themefisher" />
    <meta name="generator" content="Themefisher Constra HTML Template v1.0" />

    <!-- 頁籤圖片(icon) -->
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="images/oShopBlack-no.png"
    />
    <!-- 圖片(icon)字體 -->
    <link rel="stylesheet" href="plugins/themefisher-font/style.css" />
    <!-- 引用css樣式 bootstrap.min -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" />
    <!-- 頁面主體樣式CSS -->
    <link rel="stylesheet" href="css/style.css" />

    <style>
      .price {
        font-size: 18px;
        color: #333;
      }

      .original-price {
        text-decoration: line-through;
        margin-right: 10px;
      }

      .new-price {
        color: #333;
        font-weight: bold;
      }

      .rating {
        display: inline-block;
      }

      .star {
        font-size: 1.5em;
        color: rgb(239, 239, 21);
        cursor: pointer;
      }

      .star222 {
        font-size: 1.5em;
        color: #ccc;
        cursor: pointer;
      }
      /* 
.star:hover,
.star:focus {
  color: #ff0;
}

.star.active {
  color: #ff0;
} */

      .container222 {
        display: grid;
        grid-template-columns: 300px 300px;
        gap: 15px;
      }

      .item222 {
        padding: 0px;
        font-size: 16px;
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

    <section class="single-product">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <ol class="breadcrumb">
            
            <!-- *** 跳轉頁面 *** -->
              <li style="font-size: 18px"><a href="<c:url value='/index'/>">首頁</a></li>
              <li style="font-size: 18px"><a href="<c:url value='/shop'/>">商店</a></li>
              <li style="font-size: 18px"><a href="<c:url value='/shop'/>">Swift X</a></li>
              <li style="font-size: 18px" class="active">SFX16-51G</li>
              
            </ol>
          </div>
          <div class="col-md-6">
            <ol class="product-pagination text-right">
              <!-- <li><a href="blog-left-sidebar.html"><i class="tf-ion-ios-arrow-left"></i> Next </a></li> -->
              <!-- <li><a href="blog-left-sidebar.html">Preview <i class="tf-ion-ios-arrow-right"></i></a></li> -->
            </ol>
          </div>
        </div>
        <div class="row mt-20">
          <div class="col-md-6">
            <div class="single-product-slider">
              <div
                id="carousel-custom"
                class="carousel slide"
                data-ride="carousel"
              >
                <div class="carousel-outer">
                  <!-- me art lab slider -->
                  <div class="carousel-inner">
                    <div class="item active">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-1.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-1.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-2.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-2.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-3.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-3.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-4.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-4.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-5.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-5.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-6.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-6.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-7.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-7.png"
                      />
                    </div>
                    <div class="item">
                      <img
                        src="images/single-product/SFX16-51G/SFX16-51G-8.png"
                        alt=""
                        data-zoom-image="images/single-product/SFX16-51G/SFX16-51G-8.png"
                      />
                    </div>
                  </div>

                  <!-- sag sol -->
                  <a
                    class="left carousel-control"
                    href="#carousel-custom"
                    data-slide="prev"
                  >
                    <i class="tf-ion-ios-arrow-left"></i>
                  </a>
                  <a
                    class="right carousel-control"
                    href="#carousel-custom"
                    data-slide="next"
                  >
                    <i class="tf-ion-ios-arrow-right"></i>
                  </a>
                </div>

                <!-- thumb -->
                <ol class="carousel-indicators mCustomScrollbar meartlab">
                  <li
                    data-target="#carousel-custom"
                    data-slide-to="0"
                    class="active"
                  >
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-1.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="1">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-2.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="2">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-3.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="3">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-4.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="4">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-5.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="5">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-6.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="6">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-7.png"
                      alt=""
                    />
                  </li>
                  <li data-target="#carousel-custom" data-slide-to="7">
                    <img
                      src="images/single-product/SFX16-51G/SFX16-51G-8.png"
                      alt=""
                    />
                  </li>
                </ol>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="single-product-details">
              <h1>Swift X SFX16-51G UN.AYLTA.001</h1>
              <h1>筆記型電腦</h1>
              <p class="product-price" style="font-size: 20px">
                機型： SFX16-51G
              </p>

              <br />

              <p class="product-description mt-20" style="font-size: 20px">
                Swift X 專為創作和遊戲而設計，搭載最新的第 11 代 Intel® Core™
                H35 系列處理器，1和強大的 NVIDIA® GeForce RTX™ 3050 Ti
                GPU。1搭配 16
                吋螢幕，讓精彩畫面擁有更大的展現空間，在您未來的專案中充分發揮
                Swift X 的威力。
              </p>
              <!-- <div class="color-swatches">
						<span>color:</span>
						<ul>
							<li>
								<a href="#!" class="swatch-violet"></a>
							</li>
							<li>
								<a href="#!" class="swatch-black"></a>
							</li>
							<li>
								<a href="#!" class="swatch-cream"></a>
							</li>
						</ul>
					</div> -->
              <!-- <div class="product-size">
						<span>Size:</span>
						<select class="form-control">
							<option>S</option>
							<option>M</option>
							<option>L</option>
							<option>XL</option>
						</select>
					</div> -->

              <br />

              <div class="price">
                <!-- <span class="original-price">$43,000</span> -->
                <span class="new-price">$36,800</span>
              </div>

              <br />

              <div class="product-quantity">
                <!-- <span>數量:</span> -->
                <div class="product-quantity-slider">
                  <input
                    id="product-quantity"
                    type="text"
                    value="0"
                    name="product-quantity"
                    style="text-align: center"
                  />
                </div>
              </div>

              <br />

              <!-- <div class="product-category">
						<span>Categories:</span>
						<ul>
							<li><a href="product-single.html">Products</a></li>
							<li><a href="product-single.html">Soap</a></li>
						</ul>
					</div> -->
              <a href="<c:url value='/cart'/>" class="btn btn-main mt-20">加入購物車</a>

              <br />
              <br />
            </div>
          </div>
        </div>

        <br />
        <br />

        <div class="row">
          <div class="col-xs-12">
            <div class="tabCommon mt-20">
              <ul class="nav nav-tabs">
                <li class="active">
                  <a data-toggle="tab" href="#details" aria-expanded="true"
                    >技術規格</a
                  >
                </li>
                <li class="">
                  <a data-toggle="tab" href="#reviews" aria-expanded="false"
                    >評論 (3)</a
                  >
                </li>
              </ul>
              <div class="tab-content patternbg">
                <div id="details" class="tab-pane fade active in">
                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">作業系統</h3>
                    <div class="container222">
                      <div class="item222">作業系統</div>
                      <div class="item222">Windows 11 Home</div>
                      <div class="item222">作業系統架構</div>
                      <div class="item222">64 位元</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">處理器</h3>
                    <div class="container222">
                      <div class="item222">處理器製造商</div>
                      <div class="item222">Intel®</div>
                      <div class="item222">處理器形式</div>
                      <div class="item222">Core™ i7</div>
                      <div class="item222">處理器型號</div>
                      <div class="item222">i7-11390H</div>
                      <div class="item222">處理器速度</div>
                      <div class="item222">3.40 GHz</div>
                      <div class="item222">處理器核心數</div>
                      <div class="item222">四核（四個核心）</div>
                      <div class="item222">處理器世代</div>
                      <div class="item222">第11代</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">
                      螢幕顯示 & 圖形能力
                    </h3>
                    <div class="container222">
                      <div class="item222">顯示晶片製造商</div>
                      <div class="item222">NVIDIA®</div>
                      <div class="item222">顯示晶片規格</div>
                      <div class="item222">GeForce® RTX™ 3050Ti</div>
                      <div class="item222">顯示記憶體儲存</div>
                      <div class="item222">專用</div>
                      <div class="item222">螢幕尺寸</div>
                      <div class="item222">40.9 cm (16.1")</div>
                      <div class="item222">螢幕顯示型式</div>
                      <div class="item222">LCD</div>
                      <div class="item222">背光技術</div>
                      <div class="item222">LED</div>
                      <div class="item222">解析度</div>
                      <div class="item222">1920 x 1080</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">記憶體</h3>
                    <div class="container222">
                      <div class="item222">已安裝系統記憶體總量</div>
                      <div class="item222">16 GB</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">儲存裝置</h3>
                    <div class="container222">
                      <div class="item222">固體硬盤總容量</div>
                      <div class="item222">512 GB</div>
                      <div class="item222">固態硬碟(SSD)介面</div>
                      <div class="item222">PCI Express</div>
                      <div class="item222">光碟機型式</div>
                      <div class="item222">否</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">內置裝置</h3>
                    <div class="container222">
                      <div class="item222">麥克風</div>
                      <div class="item222">有</div>
                      <div class="item222">喇叭數量</div>
                      <div class="item222">2</div>
                      <div class="item222">聲音模式</div>
                      <div class="item222">立體聲</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">介面/連接埠</h3>
                    <div class="container222">
                      <div class="item222">HDMI</div>
                      <div class="item222">有</div>
                      <div class="item222">HDMI 輸出數目</div>
                      <div class="item222">1</div>
                      <div class="item222">USB 3.2 Gen 1 Type-A 連接埠數量</div>
                      <div class="item222">2</div>
                      <div class="item222">USB 連接埠總數</div>
                      <div class="item222">3</div>
                      <div class="item222">USB Type-C</div>
                      <div class="item222">有</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">輸入裝置</h3>
                    <div class="container222">
                      <div class="item222">指向裝置型式</div>
                      <div class="item222">TouchPad</div>
                      <div class="item222">鍵盤</div>
                      <div class="item222">有</div>
                      <div class="item222">觸控板功能</div>
                      <div class="item222">多觸式手勢功能</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">電池資訊</h3>
                    <div class="container222">
                      <div class="item222">電池Cell數</div>
                      <div class="item222">4-cell</div>
                      <div class="item222">電池型式</div>
                      <div class="item222">鋰電池</div>
                      <div class="item222">電池使用時間</div>
                      <div class="item222">7 小時</div>
                      <div class="item222">電池效能功率</div>
                      <div class="item222">59 Wh</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">實體特性</h3>
                    <div class="container222">
                      <div class="item222">高</div>
                      <div class="item222">18.90 mm</div>
                      <div class="item222">寬</div>
                      <div class="item222">367.8 mm</div>
                      <div class="item222">深</div>
                      <div class="item222">236.1 mm</div>
                      <div class="item222">重量（大約）</div>
                      <div class="item222">1.90 kg</div>
                      <div class="item222">產品顏色</div>
                      <div class="item222">灰色</div>
                    </div>
                  </div>

                  <br />

                  <div>
                    <h3 style="padding: 10px 0px 10px 0px">其他</h3>
                    <div class="container222">
                      <div class="item222">包裝內容</div>
                      <div class="item222">Swift X SFX16-51G 筆記型電腦</div>
                      <div class="item222"></div>
                      <div class="item222">鋰電池</div>
                      <div class="item222"></div>
                      <div class="item222">AC 變壓器</div>
                    </div>
                  </div>
                </div>
                <div id="reviews" class="tab-pane fade">
                  <div class="post-comments">
                    <ul class="media-list comments-list m-bot-50 clearlist">
                      <!-- Comment Item start-->
                      <li class="media">
                        <a class="pull-left" href="#!">
                          <img
                            class="media-object comment-avatar"
                            src="images/oShopBlack-no.png"
                            alt=""
                            width="50"
                            height="50"
                          />
                        </a>

                        <div class="media-body">
                          <div class="comment-info">
                            <h4 class="comment-author">
                              <a href="<c:url value=''/>">u******9</a>
                            </h4>
                            <time datetime="2013-04-06T13:53"
                              >May 13, 2023, AM 10:55</time
                            >
                            <a class="comment-button" href="<c:url value=''/>">
                              ><i class="tf-ion-chatbubbles"></i>回覆</a
                            >
                          </div>

                          <div class="rating">
                            <span class="star" data-value="1">&#9733;</span>
                            <span class="star" data-value="2">&#9733;</span>
                            <span class="star" data-value="3">&#9733;</span>
                            <span class="star" data-value="4">&#9733;</span>
                            <span class="star222" data-value="5">&#9733;</span>
                          </div>

                          <!-- <p>
													防撞包裝仔細、物流配送迅速且提前通知到貨，有問必答回覆速度很快，不推不行 ^^
												</p> -->
                        </div>
                      </li>
                      <!-- End Comment Item -->

                      <!-- Comment Item start-->
                      <li class="media">
                        <a class="pull-left" href="<c:url value=''/>">
                          <img
                            class="media-object comment-avatar"
                            src="images/oShopBlack-no.png"
                            alt=""
                            width="50"
                            height="50"
                          />
                        </a>

                        <div class="media-body">
                          <div class="comment-info">
                            <div class="comment-author">
                              <a href="<c:url value=''/>">r******3</a>
                            </div>
                            <time datetime="2013-04-06T13:53"
                              >May 06, 2023, PM 14:12</time
                            >
                            <a class="comment-button" href="<c:url value=''/>">
                              ><i class="tf-ion-chatbubbles"></i>回覆</a
                            >
                          </div>

                          <div class="rating">
                            <span class="star" data-value="1">&#9733;</span>
                            <span class="star" data-value="2">&#9733;</span>
                            <span class="star" data-value="3">&#9733;</span>
                            <span class="star" data-value="4">&#9733;</span>
                            <span class="star222" data-value="5">&#9733;</span>
                          </div>

                          <!-- <p>
													有遇一些小狀況，但店家很熱心幫忙，會馬上回覆，購買售後很安心！有需要會再回購的！
												</p> -->
                        </div>
                      </li>
                      <!-- End Comment Item -->

                      <!-- Comment Item start-->
                      <li class="media">
                        <a class="pull-left"  href="<c:url value=''/>">
                          <img
                            class="media-object comment-avatar"
                            src="images/oShopBlack-no.png"
                            alt=""
                            width="50"
                            height="50"
                          />
                        </a>

                        <div class="media-body">
                          <div class="comment-info">
                            <div class="comment-author">
                              <a href="<c:url value=''/>">a******x</a>
                            </div>
                            <time datetime="2013-04-06T13:53"
                              >May 03, 2023, AM 09:58</time
                            >
                            <a class="comment-button" href="<c:url value=''/>"
                              ><i class="tf-ion-chatbubbles"></i>回覆</a
                            >
                          </div>
                          <div class="rating">
                            <span class="star" data-value="1">&#9733;</span>
                            <span class="star" data-value="2">&#9733;</span>
                            <span class="star" data-value="3">&#9733;</span>
                            <span class="star" data-value="4">&#9733;</span>
                            <span class="star" data-value="5">&#9733;</span>
                          </div>

                          <!-- <p>
													出貨速度真的很快且包裝的很完整，收到貨很滿意，真心推薦喔！
												</p> -->
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="products related-products section">
      <div class="container">
        <div class="row">
          <div class="title text-center">
            <h1>挑選最適合您的 Swift</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="product-item">
              <div class="product-thumb">
                <span class="bage">Sale</span>
                <img
                  class="img-responsive"
                  src="images/single-product/SF514-54T-79C0/SF514-54T-79C0-1.png"
                  alt="product-img"
                />
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
                <h4><a href="<c:url value='/product-single'/>">Swift 5</a></h4>
                SF514-54GT-5709 | UN.HU4TA.001
                <!-- <p class="price">$200</p> -->
                <div class="price">
                  <span class="original-price">$39,000</span>
                  <span class="new-price">$35,999</span>
                </div>
              </div>
              <ul style="padding: 20px 0px 20px 0px">
                <li style="padding: 10px 0px 10px 0px">Windows 10</li>
                <li style="padding: 10px 0px 10px 0px">
                  Intel® Core™ i5-1035G1 處理器 4核心 1 GHz
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  NVIDIA® GeForce® MX350 連 2 GB 專屬記憶體
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  35.6 cm (14") Full HD (1920 x 1080) 16:9 IPS 觸控支援
                </li>
                <li style="padding: 10px 0px 10px 0px">8 GB, LPDDR4</li>
                <li style="padding: 10px 0px 10px 0px">512 GB SSD</li>
              </ul>
              <div class="text-center">
                <button type="submit" class="btn btn-main text-center">
                  探索
                </button>
              </div>
              <div class="text-center" style="padding: 20px 0px 10px 0px">
                <label>
                  <input type="checkbox" value="remember-me" /> 加入比較
                </label>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="product-item">
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/single-product/SF514-54T-79C0/SF514-54T-79C0-001.png"
                  alt="product-img"
                />
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
                <h4><a href="<c:url value='/product-single'/>">Swift 5</a></h4>
                SF514-55T-56MP | UN.A35TA.001
                <!-- <p class="price">$230</p> -->
                <div class="price">
                  <!-- <span class="original-price">$43,000</span> -->
                  <span class="new-price">$38,000</span>
                </div>
              </div>
              <ul style="padding: 20px 0px 20px 0px">
                <li style="padding: 10px 0px 10px 0px">
                  Windows 10 家用版 64 位元
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  Intel® Core™ i5-1135G7 處理器 4核心 2.40 GHz
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  Intel® Iris® Xe Graphics 共用記憶體
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  35.6 cm (14") Full HD (1920 x 1080) 16:9 IPS 觸控支援
                </li>
                <li style="padding: 10px 0px 10px 0px">8 GB, LPDDR4</li>
                <li style="padding: 10px 0px 10px 0px">512 GB SSD</li>
              </ul>
              <div class="text-center">
                <button type="submit" class="btn btn-main text-center">
                  探索
                </button>
              </div>
              <div class="text-center" style="padding: 20px 0px 10px 0px">
                <label>
                  <input type="checkbox" value="remember-me" /> 加入比較
                </label>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="product-item">
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/single-product/SF514-54T-79C0/SF514-54T-79C0-000.png"
                  alt="product-img"
                />
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
                <h4><a href="<c:url value='/product-single'/>">Swift 5</a></h4>
                SF514-55-58MK | UN.A6STA.004
                <!-- <p class="price">$230</p> -->
                <div class="price">
                  <!-- <span class="original-price">$43,000</span> -->
                  <span class="new-price">$42,000</span>
                </div>
              </div>
              <ul style="padding: 20px 0px 20px 0px">
                <li style="padding: 10px 0px 10px 0px">
                  Windows 11 Home 64 位元
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  Intel® Core™ i7-1165G7 處理器 4核心 2.80 GHz
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  Intel® Iris® Xe Graphics 共用記憶體
                </li>
                <li style="padding: 10px 0px 10px 0px">
                  35.6 cm (14") Full HD (1920 x 1080) 16:9 觸控支援
                </li>
                <li style="padding: 10px 0px 10px 0px">16 GB, LPDDR4X</li>
                <li style="padding: 10px 0px 10px 0px">512 GB SSD</li>
              </ul>
              <div class="text-center">
                <button type="submit" class="btn btn-main text-center">
                  探索
                </button>
              </div>
              <div class="text-center" style="padding: 20px 0px 10px 0px">
                <label>
                  <input type="checkbox" value="remember-me" /> 加入比較
                </label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Modal -->
    <div class="modal product-modal fade" id="product-modal">
      <button
        type="button"
        class="close"
        data-dismiss="modal"
        aria-label="Close"
      >
        <i class="tf-ion-close"></i>
      </button>
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="row">
              <div class="col-md-8">
                <div class="modal-image">
                  <img
                    class="img-responsive"
                    src="images/shop/products/modal-product.jpg"
                  />
                </div>
              </div>
              <div class="col-md-3">
                <div class="product-short-details">
                  <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                  <p class="product-price">$200</p>
                  <p class="product-short-description">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Rem iusto nihil cum. Illo laborum numquam rem aut officia
                    dicta cumque.
                  </p>
                  <a href="<c:url value=''/>" class="btn btn-main">Add To Cart</a>
                  <a href="<c:url value=''/>" class="btn btn-transparent"
                    >View Product Details</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

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
      var quantityInput = document.getElementById("product-quantity");

      quantityInput.addEventListener("input", function () {
        var value = parseInt(this.value);
        if (value < 0) {
          this.value = 0;
        } else if (value > 3) {
          this.value = 3;
        }
      });
    </script>
  </body>
</html>
