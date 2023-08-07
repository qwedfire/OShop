<%@ page import="com.example.oshop.model.User" %>
<%@ page import="com.example.oshop.model.Cart" %>
<%@ page import="com.example.oshop.service.CartService" %>
<%@ page import="com.example.oshop.model.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<%
    User user = (User) session.getAttribute("user");
    List<CartItem> cartItem = null;
    Cart cart = null;
    Integer cartID = null;
    if (user != null) {
        cartID = user.getId();
        cart = (Cart) session.getAttribute("cart");
        cartItem = (List<CartItem>) session.getAttribute("cartItem");
    }
%>
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

    <!-- 引用css樣式 bootstrap.min -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <!-- 小icon的引用 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <!-- 智慧客服 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/layui/2.6.8/css/layui.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/all.css">
    <script src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
</head>


<body id="body">
<%--<i class="fa-solid fa-check" style="color: #44d41c;"></i>--%>
<!-- 頁首區塊 -->
<section class="top-header">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="contact-number">
                    <!-- *** 標題處 左側圖片 *** -->
                    <span><img src="/images/oShopBlack7.png" style="width: 60px;"></span>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <!-- 網站標誌(Logo) -->
                <div class="logo text-center">

                    <!-- *** LOGO連結 回到首頁 *** -->
                    <a href='<c:url value="/index"/>'>

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
                        <a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown"><i class="fas fa-user user-icon"></i> </a>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <ul class="dropdown-menu search-dropdown">
                                    <li><a style="font-size: 16px" href="<c:url value='/logout'/>">登出</a></li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <ul class="dropdown-menu search-dropdown">
                                    <li><a style="font-size: 16px" href="<c:url value='/register'/>">註冊</a></li>
                                    <li><a style="font-size: 16px" href="<c:url value='/login'/>">登入</a></li>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <!-- 查詢 -->
                    <li class="dropdown search dropdown-slide">
                        <!-- *** 查詢 輸入框頁面跳轉 *** -->
                        <a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown"><i class="fas fa-search search-icon"></i> </a>
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
                <h2 class="menu-title"></h2>
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
                        <a href="<c:url value='shopSidebar'/>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">筆記型電腦<span
                                class=""></span></a>
                        <!-- class="tf-ion-ios-arrow-down" -->
                        <div class="dropdown-menu">
                            <div class="row">

                                <!-- *** 筆電 導覽列 有跳轉頁面 *** -->
                                <div class="col-lg-6 col-md-6 mb-sm-3">
                                    <ul>
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        </li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="<c:url value=''/>" name="acer"
                                               onclick="triggerToGo(this.name); return false;">宏碁 ACER</a></li>
                                        <li><a href="<c:url value=''/>" name="asus"
                                               onclick="triggerToGo(this.name); return false;">華碩 ASUS</a></li>
                                        <li><a href="<c:url value=''/>" name="apple"
                                               onclick="triggerToGo(this.name); return false;">蘋果 APPLE</a></li>
                                        <li><a href="<c:url value=''/>" name="msi"
                                               onclick="triggerToGo(this.name); return false;">微星 MSI</a></li>

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
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        </li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="<c:url value=''/>" name="acer"
                                               onclick="triggerToGo(this.name); return false;">宏碁 ACER</a></li>
                                        <li><a href="<c:url value=''/>" name="asus"
                                               onclick="triggerToGo(this.name); return false;">華碩 ASUS</a></li>
                                        <li><a href="<c:url value=''/>" name="apple"
                                               onclick="triggerToGo(this.name); return false;">蘋果 APPLE</a></li>
                                        <li><a href="<c:url value=''/>" name="msi"
                                               onclick="triggerToGo(this.name); return false;">微星 MSI</a></li>

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
<!-- 熱門商品區塊 -->
<section class="products section">
    <div class="container">
        <div class="row">
            <div class="title text-center">
                <h1>熱門商品</h1>
            </div>
        </div>
        <div class="row">

            <!-- 熱門商品顯示列 -->
            <div class="col-md-4">
                <div class="product-item">
                    <div class="product-thumb">
                        <span class="bage">銷售</span>
                        <img class="img-responsive" src="images/single-product/SF514-54T-79C/SF514-54T-79C0-000.png"
                             alt="product-img"/>
                        <div class="preview-meta">
                            <ul>
                                <li>
                                    <!-- * 搜尋 空 尚未有連結 * -->
                                    <span data-toggle="modal" data-target="#product-modal">
                                        <i class="fas fa-search search-icon"></i>
                                    </span>
                                </li>
                                <li>
                                    <!-- * 愛心 空 尚未有連結 * -->
                                    <a>
                                        <i class="fa-solid fa-heart"></i>
                                    </a>
                                </li>
                                <li>
                                    <!-- * 購物車 空 尚未有連結 * -->
                                    <%--                                    <a  href='<c:url value="addCart"/>'>--%>
                                    <a data-id="14" onclick="addToCart(event)">
                                        <i class="fas fa-shopping-cart cart-icon" data-id="14" onclick="addToCart(event)"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-content">
                        <!-- * 熱門商品 有頁面跳轉  Swift 5 SF514-55TA * -->
                        <h3><a href="<c:url value='/product-single'/>">Swift A</a></h3>
                        SF514-55TA | UN.A6STA.004
                        <!-- <p class="price">$230</p> -->
                        <div class="price">
                            <!-- <span class="original-price">$43,000</span> -->
                            <span class="new-price" style="font-size: 16px;">$42,000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="product-item">
                    <div class="product-thumb" style="display: flex;justify-content: center;align-items: center;">
                        <img class="img-responsive" src="images/single-product/SF514-54T-79C/SF514-54T-79C0-001.png"
                             alt="product-img"/>
                        <div class="preview-meta">
                            <ul>

                                <li>
                                    <span data-toggle="modal" data-target="#product-modal">
											<i class="fas fa-search search-icon"></i>
										</span>
                                </li>
                                <li>
                                    <a><i class="fa-solid fa-heart"></i></a>
                                </li>
                                <li>
                                    <a data-id="15" onclick="addToCart(event)">
                                        <i class=" fas fa-shopping-cart cart-icon" data-id="15" onclick="addToCart(event)"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-content">
                        <!-- * 熱門商品 有頁面跳轉  Swift 5 SF514-55T-56MP * -->
                        <h3><a href="<c:url value='/product-single'/>">Swift 5</a></h3>
                        SF514-55T-56MP | UN.A35TA.001
                        <!-- <p class="price">$230</p> -->
                        <div class="price">
                            <!-- <span class="original-price">$43,000</span> -->
                            <span class="new-price" style="font-size: 16px;">$38,000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="product-item">
                    <div class="product-thumb">
                        <img class="img-responsive" src="images/single-product/SFX14-51G-70P/SFX14-51G-70P8-1.png"
                             alt="product-img"/>
                        <div class="preview-meta">
                            <ul>
                                <li>
                                    <span data-toggle="modal" data-target="#product-modal">
											<i class="fas fa-search search-icon"></i>
										</span>
                                </li>
                                <li>
                                    <a><i class="fa-solid fa-heart"></i></a>
                                </li>
                                <li>
                                    <a data-id="16" onclick="addToCart(event)">
                                        <i class=" fas fa-shopping-cart cart-icon" data-id="16" onclick="addToCart(event)"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-content">
                        <!-- *
                         有頁面跳轉  Swift X SFX14-51G-70P8 * -->
                        <h3><a href="<c:url value='/product-single'/>">Swift X</a></h3>
                        SFX14-51G-70P8
                        <div class="price">
                            <span class="new-price" style="font-size: 16px;">$39,900</span>
                        </div>
                    </div>
                </div>
            </div><!-- 熱門商品顯示列結束 -->
        </div>
    </div>
</section><!-- 熱門商品區塊結束 -->

<!-- 訂閱我們區塊 -->
<section class="section instagram-feed">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="title">
                    <h1>訂閱我們</h1>
                    <p style="font-size: 18px;">如果想知道關於更多商品新資訊， <br> 麻煩請您在下方輸入電子郵件地址訂閱。
                    </p>
                </div>
                <div class="col-lg-6 col-md-offset-3">
                    <div class="input-group subscription-form">
                        <input type="text" class="form-control" placeholder="請輸入您的電子郵件地址"
                               style="font-size: 16px;; font-weight: bold">
                        <span class="input-group-btn">
								<button class="btn btn-main" type="button" style="font-size: 14px;; font-weight: bold">立即訂閱</button>
							</span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->

            </div>
        </div> <!-- End row -->
    </div> <!-- End container -->
</section> <!-- 訂閱我們區塊結束 -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="lineBox" >
    <div class="lineItem" onclick="toCart()">
        <i class="layui-icon" onclick="toCart()">&#xe657;</i>
        <span class="badge badge-notify my-cart-badge glyphicon  my-cart-icon"></span>
        <c:if test="${not empty sessionScope.user}">
            <!-- 如果 user session 不為 null，則顯示數字區域 -->
            <span class="cart-quantity" onclick="toCart()"></span>
        </c:if>

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

<%--右下提示窗--%>
<div id="cart-notification" style="display: none;" class="notification">
    商品添加成功!
</div>


<script>
    function toCart() {
        window.location.href = "/cart";
    }
</script>

<script>
    $(function () {
        $("#launchTopButton").click(function () {
            $('body,Html').scrollTop(0);
        });
        $(".lineItem").hover(function () {
            $(".lineTip").hide();
            $(this).find(".lineTip").show();
        });
    });
</script>

<script>
    // 登入後獲取購物車筆數，並顯示在數字區域
    function showCartItemCount() {
        // 使用 AJAX 或其他方式向後端發送請求獲取購物車筆數，以下是一個示例使用 jQuery 的 AJAX：
        $.ajax({
            url: '/getCartItemCount', // 替換成後端處理購物車筆數的路徑
            method: 'GET',
            success: function (data) {
                // 將獲得的購物車筆數顯示在數字區域
                $('.cart-quantity').text(data.cartItemCount);
                // 顯示數字區域
                // $('.cart-quantity').show();
                console.log(data.cartItemCount);
            },
            error: function () {
                console.log('無法獲取購物車筆數');
            }
        });
    }

    // 在頁面載入時立即調用showCartItemCount
    $(document).ready(function () {
        showCartItemCount();
    });
</script>
<%--處理購物車傳遞到後端的方法--%>
<script>
    function addToCart(event) {
        var notification = document.getElementById('cart-notification');
        notification.style.display = 'block';
        // 设置定时器在0.5秒后隐藏提示窗口
        setTimeout(function () {
            notification.style.display = 'none';
        }, 500);
        var iconElement = event.target;
        var data = {
            cartID: <%=cartID%>,
            productID: iconElement.getAttribute('data-id'),
            quantity: iconElement.getAttribute('data-quantity'),
        };
        fetch('/addtoCart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        }).then(response => {
            showCartItemCount();
            console.log("沒毛病");
        }).catch(error => {
            console.log("有毛病");
            // 在這裡處理錯誤
        });
    }
</script>

<!-- 頁尾區塊 -->
</body>

</html>