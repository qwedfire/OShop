<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Original Shop</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<!-- 頁籤圖片(icon) -->
<link rel="shortcut icon" type="image/x-icon"
	href="images/oShopBlack-no.png" />

<!-- 圖片(icon)字體 -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- 引用css樣式 bootstrap.min -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

<!-- 引用css樣式 Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<script src="../jquery-3.6.0.js"></script>
<!-- 小icon的引用 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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
// 		console.log("嗨"+brand);
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
	 			console.log(e);
	 			console.log(stat);
	 			console.log(hi);
	 			document.getElementById("MainPageSet").innerHTML = e;
	 			 history.pushState({}, "", "shopSidebar?name="+n);
	 		})
	}
	
</script>
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
					
						<a href=<c:url  value='index'/>> <!-- 頁首標題欄 --> <svg width="435px"
								height="30px" viewBox="0 0 355 40" version="1.1"
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
					<!-- 購物車 -->
					<ul class="top-menu text-right list-inline">
						<li class="dropdown cart-nav dropdown-slide">
							<!-- *** 購物車 下拉式選單 *** --> <a href="<c:url value=''/>"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-android-cart"></i>購物車</a>
							<div class="dropdown-menu cart-dropdown">
								<!-- 購物車內容1 -->
								<div class="media">
									<a class="pull-left" href="#!"> <img class="media-object"
										src="images/shop/cart/cart-1.jpg" alt="image" />
									</a>
									<div class="media-body">

										<!-- *** 筆電 空 連結 *** -->
										<h4 class="media-heading">
											<a href="<c:url value=''/>">筆電</a>
										</h4>

										<div class="cart-price">
											<span>1 x</span> <span>1250.00</span>
										</div>
										<h5>
											<strong>$1200</strong>
										</h5>
									</div>

									<!-- *** 購物車商品移除 *** -->
									<a href="<c:url value=''/>" class="remove"><i
										class="tf-ion-close"></i></a>
								</div>
								<!-- / 購物車內容1 -->

								<!-- 購物車內容2 -->
								<div class="media">
									<a class="pull-left" href="#!"> <img class="media-object"
										src="images/shop/cart/cart-2.jpg" alt="image" />
									</a>
									<div class="media-body">

										<!-- *** 耳機 空 連結 *** -->
										<h4 class="media-heading">
											<a href="<c:url value=''/>">耳機</a>
										</h4>

										<div class="cart-price">
											<span>1 x</span> <span>1250.00</span>
										</div>
										<h5>
											<strong>$1200</strong>
										</h5>
									</div>

									<!-- *** 購物車商品移除 *** -->
									<a href="<c:url value=''/>" class="remove"><i
										class="tf-ion-close"></i></a>
								</div>
								<!-- / 購物車內容2 -->

								<div class="cart-summary">
									<span>合計</span> <span class="total-price">$1799.00</span>
								</div>

								<!-- *** 頁面跳轉 *** -->
								<ul class="text-center cart-buttons">
									<li><a href="<c:url value='/cart'/>" class="btn btn-small">檢視購物車</a></li>
									<li><a href="<c:url value='/checkout'/>"
										class="btn btn-small btn-solid-border">查看</a></li>
								</ul>

							</div>

						</li>
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

						<!-- 語言選擇 -->
						<li class="commonSelect"><select class="form-control">
								<option>中文</option>
								<option>英文</option>
								<option>日文</option>
						</select></li>
						<!-- / 語言選擇 -->

					</ul>
					<!-- / .nav .navbar-nav .navbar-right -->
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
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

				</div>
				<!-- / .navbar-header -->

				<!-- Navbar Links -->
				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">


						<!-- Home *** 頁面跳轉首頁 *** -->
						<!--<li class="dropdown ">
						<a href="<c:url value='/index'/>">回首頁</a>
					</li>-->
						<!-- / Home -->


						<!-- *** 導覽列 商品 下拉式選單 *** -->
						<li class="dropdown dropdown-slide"><a
							href="<c:url value=''/>" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">商品 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<div class="dropdown-menu">
								<div class="row">

									<!-- *** 筆電 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">筆電&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">APPLE
													蘋果</a></li>
											<li><a href="<c:url value='/product-single'/>">ASUS
													華碩</a></li>
											<li><a href="<c:url value='/product-single'/>">ACER
													宏碁</a></li>
										</ul>
									</div>

									<!-- *** 周邊 導覽列 有跳轉頁面 *** -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">周邊&emsp;</li>
											<li role="separator" class="divider"></li>
											<li><a href="<c:url value='/product-single'/>">滑鼠</a></li>
											<li><a href="<c:url value='/product-single'/>">耳機</a></li>
											<li><a href="<c:url value='/product-single'/>">麥克風</a></li>
										</ul>
									</div>

								</div>
								<!-- / .row -->
							</div> <!-- / .dropdown-menu --></li>
						<!-- / 商品 -->


						<!-- *** 會員 有跳轉頁面 *** -->
						<li class="dropdown dropdown-slide"><a
							href="<c:url value=''/>" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">會員 </a>
							<c:choose >
								<c:when test="${not empty sessionScope.user}">
									<ul class="dropdown-menu search-dropdown">
							
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



						<!-- * 購物體驗 /blog-full-width * -->
						<li class="dropdown dropdown-slide"><a
							href="<c:url value=''/>" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">購物體驗
						</a></li>
						<!-- / 購物體驗 -->


						<!-- *** 關於我們 有跳轉頁面 *** -->
						<li class="dropdown dropdown-slide"><a href="#!"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">關於我們 </a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/about'/>">公司簡介</a></li>
								<li><a href="<c:url value='/contact'/>">聯絡我們</a></li>
							</ul></li>
						<!-- / 關於我們 -->
					</ul>
					<!-- / .nav .navbar-nav -->


				</div>
				<!--/.navbar-collapse 導覽列 -->
			</div>
			<!-- / .container -->
		</nav>
	</section>
	<!-- 導覽列區塊結束 -->

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
						<div class="panel-group commonAccordion" id="accordion"
							role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne"> <i
											class="fas fa-laptop"> 筆記型電腦</i>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
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
											data-parent="#accordion" href="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo"> <i
											class="fa fa-television"> 套裝電腦</i>
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
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
											data-parent="#accordion" href="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree"> <i
											class="fa fa-keyboard"></svg> 周邊</i>
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										<ul>
											<li><a href="<c:url value=''/>">滑鼠</a></li>
											<li><a href="<c:url value=''/>">耳機</a></li>
											<li><a href="<c:url value=''/>">麥克風</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 				商品頁 -->
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

	<!-- 頁尾區塊 -->
	<!-- * 無意義連結 * -->

	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href="<c:url value=''/>"> <i
								class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href="<c:url value=''/>"> <i
								class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href="<c:url value=''/>"> <i
								class="tf-ion-social-github"></i>
						</a></li>
						<li><a href="<c:url value=''/>"> <i
								class="tf-ion-android-mail"></i>
						</a></li>
					</ul>
					<ul class="footer-menu text-uppercase">
						<li><a href="<c:url value=''/>">接觸</a></li>
						<li><a href="<c:url value=''/>">購物</a></li>
						<li><a href="<c:url value=''/>">價格</a></li>
						<li><a href="<c:url value=''/>">隱私政策</a></li>
					</ul>
					<p class="copyright-text">
						版權 &copy;2021, 設計 &amp; 由開發 <a href="https://themefisher.com/">Themefisher</a>
					</p>
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
	<script
		src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
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