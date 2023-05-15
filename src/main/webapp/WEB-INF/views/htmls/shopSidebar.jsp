<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">

<head>
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


	<meta charset="utf-8">
	<title>Original Shop</title>

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

	<!-- 引用css樣式 Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<script src="../jquery-3.6.0.js"></script>
	<!-- 小icon的引用 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<!-- 	旁邊的bar -->
<link rel="stylesheet" href="css/forcart.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/layui/2.6.8/css/layui.css">
<script src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>


<script>
	var originalContent = "";
	var request = new XMLHttpRequest();
	function search() {
		var name = document.vinform.name.value;

		// 如果為搜尋空白
		if (originalContent == "") {
			originalContent = document.getElementById("MainPageSet").innerHTML;
		}

		if (name == "") {
			document.getElementById("MainPageSet").innerHTML = originalContent;
			return;
		}

		try {
			request.onreadystatechange = function() {
				if (request.readyState == 4) {
					var val = request.responseText;
					document.getElementById('MainPageSet').innerHTML = val;
				}
			}
			request
					.open("GET",
							"shopSidebarSearch?name="
									+ name, true);
			request.setRequestHeader('Content-type',
					'application/x-www-form-urlencoded');
			request.send();
		} catch (e) {
			alert("無法連線至資料庫");
		}
	}

// 	function searchBrand(name) {
		
// 		// 如果為搜尋空白
// 		if (originalContent == "") {
// 			originalContent = document.getElementById("MainPageSet").innerHTML;
// 		}

// 		if (name == "") {
// 			document.getElementById("MainPageSet").innerHTML = originalContent;
// 			return;
// 		}

// 		try {
// 			request.onreadystatechange = function() {
// 				if (request.readyState == 4) {
// 					var val = request.responseText;
// 					document.getElementById('MainPageSet').innerHTML = val;
// 				}
// 			}
// 			request.open("GET",
// 					"shopSidebarBrand?name=" + name,
// 					true);
// 			request.setRequestHeader('Content-type',
// 					'application/x-www-form-urlencoded');
// 			request.send();
// 		} catch (e) {
// 			alert("無法連線至資料庫");
// 		}
// 	}
	
	function searchBrand(n) {
		console.log("備案了+"+n);
		$.ajax({
	 			type:"GET",
// 	 			url:"shopSidebarSearch",
				url:"shopSidebarBrand",
	 			data:{name:n}
	 		}).then(function(e,stat,hi){
// 	 			console.log(e);
// 	 			console.log(stat);
// 	 			console.log(hi);
	 			document.getElementById("MainPageSet").innerHTML = e;
	 			$('.product').click(submitForm);
	 			history.pushState({}, "", "shopSidebar?brand="+n);
	 		})
	}
	
	
</script>

	
	<script> 
		console.log("測試!!!!!!!")
		
	
	</script>
	
	<c:if test="${  not empty brand }">
		<script>
// 			console.log("測試你好!!!!!!!"+${brand})  這是錯誤寫法! 不能用在這
// 			console.log('${brand}');  這樣勉強可以
		 	let brandValue = '${brand}';
		 	console.log("我背痛ㄌ");
		 	
		 
		 	$.ajax({
	 			type:"GET",
// 	 			url:"shopSidebarSearch",
				url:"shopSidebarBrand",
	 			data:{name:"${brand}"}
	 		}).then(function(e,stat,hi){
	 		
	 			
	 			document.getElementById("MainPageSet").innerHTML = e;
	 			$('.product').click(submitForm);
	 		})

		</script>
	</c:if>
		
	
	
	
	
</head>

<body id="body">
 <c:if test="${ not empty brand }">
        <script>
            console.log("你好! "+ '${brand}');
        </script>
    </c:if>
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
<%-- 										<li><a style="font-size: 16px" href="<c:url value='/signin'/>">註冊</a></li> --%>
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
						
					
					
<!-- 						<li class="dropdown cart-nav dropdown-slide"> -->
						
<!-- 							*** 購物車 下拉式選單 *** -->
<%-- 							<a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i --%>
<!-- 									class="tf-ion-android-cart" style="font-size: 23px"></i></a> -->
<!-- 							<div class="dropdown-menu cart-dropdown"> -->
							
<!-- 								購物車內容1 -->
<!-- 								<div class="media"> -->
<%-- 									<a href="<c:url value=''/>" class="pull-left" > --%>
<!-- 										<img class="media-object" src="images/oShopBlack-no.png" alt="image" /> -->
<!-- 									</a> -->
<!-- 									<div class="media-body"> -->
									
<!-- 									*** 筆電 空 連結 *** -->
<%-- 										<h4 class="media-heading"><a href="<c:url value=''/>" >筆電</a></h4> --%>
<!-- 										<div class="cart-price"> -->
<!-- 											<span>1 x</span> -->
<!-- 											<span>1250.00</span> -->
<!-- 										</div> -->
<!-- 										<h5><strong>$1200</strong></h5> -->
<!-- 									</div> -->
<!-- 									*** 購物車商品移除 *** -->
<%-- 									<a href="<c:url value=''/>" class="remove"><i class="tf-ion-close"></i></a> --%>
<!-- 								</div> -->
<!-- 								/ 購物車內容1 -->
								
<!-- 								購物車內容2 -->
<!-- 								<div class="media"> -->
<%--                   					<a href="<c:url value=''/>" class="pull-left"> --%>
<!-- 										<img class="media-object" src="images/oShopBlack-no.png" alt="image" /> -->
<!-- 									</a> -->
<!-- 									<div class="media-body"> -->
									
<!-- 										*** 耳機 空 連結 *** -->
<%-- 										<h4 class="media-heading"><a href="<c:url value=''/>">耳機</a></h4> --%>
<!-- 										<div class="cart-price"> -->
<!-- 											<span>1 x</span> -->
<!-- 											<span>1250.00</span> -->
<!-- 										</div> -->
<!-- 										<h5><strong>$1200</strong></h5> -->
<!-- 									</div> -->
									
<!-- 									*** 購物車商品移除 *** -->
<%-- 									<a href="<c:url value=''/>" class="remove"><i class="tf-ion-close"></i></a> --%>
<!-- 								</div> -->
<!-- 								/ 購物車內容2 -->

<!-- 								<div class="cart-summary"> -->
<!-- 									<span>合計</span> -->
<!-- 									<span class="total-price">NT$1799</span> -->
<!-- 								</div> -->
								
<!-- 								*** 頁面跳轉 *** -->
<!-- 								<ul class="text-center cart-buttons"> -->
<%-- 									<li><a href="<c:url value='/cart'/>" class="btn btn-small">檢視購物車</a></li> --%>
<%-- 									<li><a href="<c:url value='/checkout'/>" class="btn btn-small btn-solid-border">查看</a></li> --%>
<!-- 								</ul> -->
<!-- 							</div> -->

<!-- 						</li> -->
						<!-- / 購物車 -->
						
						

						<!-- 查詢 -->
						<li class="dropdown search dropdown-slide">
							<!-- *** 查詢 輸入框頁面跳轉 *** --> <a href="<c:url value=''/>"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i>
								查詢</a>
							<ul class="dropdown-menu search-dropdown">
								<li>
									<form name="vinform" onsubmit="search(); return false;"
										method="post">
										<input type="search" class="form-control" name="name"
											placeholder="Search...">
									</form>
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
											<li><a href="<c:url value=''/>" name="acer"
												onclick="searchBrand(this.name); return false;">宏碁 ACER</a></li>
											<li><a href="<c:url value=''/>" name="asus"
												onclick="searchBrand(this.name); return false;">華碩 ASUS</a></li>
											<li><a href="<c:url value=''/>" name="apple"
												onclick="searchBrand(this.name); return false;">蘋果 APPLE</a></li>
											<li><a href="<c:url value=''/>" name="msi"
												onclick="searchBrand(this.name); return false;">微星 MSI</a></li>
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
											<li><a href="<c:url value=''/>" name="acer"
												onclick="searchBrand(this.name); return false;">宏碁 ACER</a></li>
											<li><a href="<c:url value=''/>" name="asus"
												onclick="searchBrand(this.name); return false;">華碩 ASUS</a></li>
											<li><a href="<c:url value=''/>" name="apple"
												onclick="searchBrand(this.name); return false;">蘋果 APPLE</a></li>
											<li><a href="<c:url value=''/>" name="msi"
												onclick="searchBrand(this.name); return false;">微星 MSI</a></li>
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
						<h1 class="page-name">商店 </h1>
						<ol class="breadcrumb">
						
							<!-- *** 頁面跳轉 *** -->
							<li><a href="<c:url value='/index'/>">首頁</a></li>		
							
							<li class="active">商店</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- #body > section.products.section > div > div > div.col-md-9 > div >
	div:nth-child(1) > div > div.product-thumb > img */ -->

	<!-- "section.products.section" 選擇. 又. 因為有空格   -->
	<!--  section.products section  的話 變成他的直接跟隔代 的section都被選擇-->
	<section class="products section">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="widget">
						<h4 class="widget-title">條件</h4>
						
						<form method="post" action="#">
							<select class="form-control">
								<option>最多人購買</option>
								<option>最熱門</option>
								<option>價格(低到高)</option>
								<option>價格(高到低)</option>
							</select>
						</form>
						
					</div>
					<div class="widget product-category">
						<h4 class="widget-title">分類</h4>
						<div class="panel-group commonAccordion" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="fas fa-laptop"> 筆記型電腦</i>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
									aria-labelledby="headingOne">
									<div class="panel-body">
										<ul>
											<li><a href="<c:url value=''/>" name="acer"
												onclick="searchBrand(this.name); return false;">宏碁 ACER</a></li>
											<li><a href="<c:url value=''/>" name="asus"
												onclick="searchBrand(this.name); return false;">華碩 ASUS</a></li>
											<li><a href="<c:url value=''/>" name="apple"
												onclick="searchBrand(this.name); return false;">蘋果 APPLE</a></li>
											<li><a href="<c:url value=''/>" name="msi"
												onclick="searchBrand(this.name); return false;">微星 MSI</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo">
											<i class="fa fa-television"> 套裝電腦</i>
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
									aria-labelledby="headingTwo">
									<div class="panel-body">
										<ul>
											<li><a href="<c:url value=''/>">宏碁 ACER</a></li>
											<li><a href="<c:url value=''/>">華碩 ASUS</a></li>
											<li><a href="<c:url value=''/>">微星 MSI</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree">
											<i class="fa fa-keyboard"></svg> 周邊</i>
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
									aria-labelledby="headingThree">
									<div class="panel-body">
										<ul>
											<li><a href="<c:url value=''/>">1</a></li>
											<li><a href="<c:url value=''/>">2</a></li>
											<li><a href="<c:url value=''/>">3</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-9">
					<div class="row" id="MainPageSet">
						<c:forEach var="product" items="${products}">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="product-item">
									<div class="product-thumb">
										<img class="img-responsive" src=${product.img
											}
											alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li><span data-toggle="modal"
													data-target="#product-modal${product.id}"> <i
														class="tf-ion-ios-search-strong"></i>
												</span></li>
												<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
												<li><a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-content">
										<h4>
											<a href="product-single.html">${product.brand}
												${product.name}</a>
										</h4>
										<p class="price">$${product.price}</p>
									</div>
								</div>
							</div>
							<div class="modal product-modal fade"
								id="product-modal${product.id}">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<i class="tf-ion-close"></i>
								</button>
								<div class="modal-dialog " role="document">
									<div class="modal-content">
										<div class="modal-body">
											<div class="row">
												<div class="col-md-7 col-sm-6 col-xs-12">
													<div class="modal-image">
														<img class="img-responsive"
															src=${product.img
															} alt="product-img" />
													</div>
												</div>
												
												<div class="col-md-5 col-sm-6 col-xs-12">
													<div class="product-short-details">
														<h2 class="product-title">${product.brand}
															${product.name}</h2>
														<p class="product-price">$${product.price}</p>
														<p class="product-short-description">${product.info}</p>
														<a href="cart.html" class="btn btn-main">加入購物車</a> <a
															href="<c:url value='${product.url}'/>" class="btn btn-transparent">查看商品詳情</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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
					   <!-- <ul class="footer-menu text-uppercase"> -->
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
				
				<script src="js/jquery-2.2.3.min.js"></script>
<!-- 	下面的.js導致 = 不能縮放 -->
<!-- 	<script type='text/javascript' src="js/bootstrap.min.js"></script> -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
				
				
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
	                id: 1,
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
	    	showCartNotification();
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
// 	  購物車小紅字數字0-9會跑到上面去加上這個才可以讓他字不會跑掉
	  $('.badge').css('font-size','inherit');
	});
	
</script>



<!-- 點擊購物車圖案直接跳轉到購物車頁面 -->
<script>
	function toCart(){
		window.location.href = 'cart';
	}
</script>
<!-- 如果session用戶名稱是空的跳轉到其他畫面 -->
<script >
	function checkUserName() {
	    if (<%= session.getAttribute("userName") %> == null) {
	      window.location.href = "login";
	      return false;
	    } 
	    return true;
	  }
</script>

<!-- 點擊購物車之後的提示通知 -->
<script>
function showCartNotification() {
	  const notification = document.createElement('div');
	  if (${user ==null }) {
		  notification.textContent = '請先登入';
		  
	  }else{
		  notification.textContent = '已加入購物車';
	  }
	  notification.style.position = 'fixed';
	  notification.style.bottom = '20px';
	  notification.style.right = '20px';
	  notification.style.padding = '10px';
	  notification.style.background = 'green';
	  notification.style.color = 'white';
	  notification.style.borderRadius = '5px';
	  notification.style.opacity = '0';
	  notification.style.transition = 'opacity 0.5s ease-in-out';
	  notification.style.fontSize = '18px'; // 新增
	  notification.style.padding = '20px';
	  notification.style.zIndex = '9999';
	  document.body.appendChild(notification);
	  setTimeout(() => {
	    notification.style.opacity = '1';
	  }, 10);

	  setTimeout(() => {
	    notification.style.opacity = '0';
	    setTimeout(() => {
	      document.body.removeChild(notification);
	    }, 500);
	  }, 500);
	}

</script>

</body>

</html>