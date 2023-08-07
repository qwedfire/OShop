<%@ page import="com.example.oshop.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link rel="shortcut icon" type="image/x-icon" href="images/oShopBlack-no.png"/>
    <!-- 圖片(icon)字體 -->
    <link rel="stylesheet" href="plugins/themefisher-font/style.css">
    <!-- 引用css樣式 bootstrap.min -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <!-- 頁面主體樣式CSS -->
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

                        <a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown"><i
                                class="fas fa-user"></i> </a>
                        <ul class="dropdown-menu search-dropdown">
                            <li><a style="font-size: 16px" href="<c:url value='/register'/>">註冊</a></li>
                            <li><a style="font-size: 16px" href="<c:url value='/login'/>">登入</a></li>
                        </ul>

                    </li>
                    <!-- / 會員 -->
                    <!-- 查詢 -->
                    <li class="dropdown search dropdown-slide">

                        <!-- *** 查詢 輸入框頁面跳轉 *** -->
                        <a href="<c:url value=''/>" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown"><i
                                class="fas fa-search search-icon"></i> </a>
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
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        </li>
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
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        </li>
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
                                    <c:forEach items="${cartItemList}" var="cartItem">
                                        <c:forEach items="${products}" var="product">
                                            <c:if test="${cartItem.productID eq product.id}">
                                                <tr id="product-${product.id}">
                                                    <td>
                                                        <img src="${product.img}" alt="Product Image" width="100"
                                                             height="100"/>
                                                    </td>
                                                    <td><c:out value="${product.name}"/></td>
                                                    <td><c:out value="${product.price}"/></td>
                                                    <td>
                                                        <input type="number" min="1" max="999"
                                                               value="${cartItem.quantity}"
                                                               onchange="updateQuantity(this.value,${cartItem.cartID},${product.id},${product.price},'totalPriceDisplay_${product.id}' )">
                                                    </td>
                                                    <td>
                                                        <span class="subtotal" id="totalPriceDisplay_${product.id}">${cartItem.quantity * product.price}</span>
                                                    </td>
                                                    <td>&nbsp;&nbsp;&nbsp;<a
                                                            onclick="deleteProduct(${cartItem.cartID},${product.id})"><i
                                                            class="far fa-trash-alt"></i></a></td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    </tbody>
                                </table>

<%--                                <span id="totalCost"></span>--%>
                                <!-- *** 頁面跳轉 *** -->
                                <a href="<c:url value='/checkout'/>" class="btn btn-main pull-right"
                                   style="font-size: 16px; margin-right: 33px;">前往結帳</a>
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


<%--有添加順便修改小計的功能--%>
<%--輸入的商品數量更新資料庫--%>
<script>
    function updateQuantity(newQuantity, cartID, productID, price, displayId) {
        const data = {
            cartID: cartID,
            productID: productID,
            quantity: newQuantity
        };
        // 发送 AJAX 请求到后端
        $.ajax({
            method: "POST", // 或者 "PUT"，取决于你的后端配置
            url: "/updateQuantity", // 后端处理更新数量的路由
            data: JSON.stringify(data),
            contentType: "application/json", // 使用JSON格式发送数据
            success: function (response) {
                // 更新成功后的操作，如果需要的话
                console.log("Quantity updated successfully!");
                const totalValue = newQuantity * price; // 这里使用模板字符串获取商品价格
                document.getElementById(displayId).textContent = totalValue;
            },
            error: function (error) {
                // 更新失败后的操作，如果需要的话
                console.error("Error updating quantity:", error);
            }
        });
    }
</script>
<%--垃圾桶功能--%>
<script>
    function deleteProduct(cartID, productID) {
        const data = {
            cartID: cartID,
            productID: productID, // 传递要删除的商品ID
            quantity: "0"
        };
        if (confirm("確定要刪除此商品？")) {
            // 发送 AJAX 请求到后端
            $.ajax({
                method: "POST", // 或者 "DELETE"，取决于你的后端配置
                url: "/deleteProduct", // 后端处理删除商品的路由
                data: JSON.stringify(data),
                contentType: "application/json", // 使用JSON格式发送数据
                success: function (response) {
                    // 删除成功后的操作，如果需要的话
                    console.log("Product deleted successfully!");
                    // 在这里你可以更新页面、重新加载数据等操作
                    $("#product-" + productID).remove();
                },
                error: function (error) {
                    // 删除失败后的操作，如果需要的话
                    console.error("Error deleting product:", error);
                }
            });
        } else {
        }
    }
</script>

<%--紀錄總金額--%>
<script>
    // 當頁面載入完成後執行
    $(document).ready(function () {
        // 計算所有小計的總和
        function calculateTotal() {
            let total = 0;
            $('.subtotal').each(function () {
                total += parseInt($(this).text()); // 假設小計的值都是整數，若有小數可以用parseFloat()
            });
            return total;
        }
        // 更新總計顯示
        function updateTotalDisplay(total) {
            $('#totalCost').text(total); // 假設總計顯示的地方有個id為totalCost的元素
            localStorage.setItem('totalAmount', total);
        }

        // 初始化時計算並更新總計顯示
        const initialTotal = calculateTotal();
        updateTotalDisplay(initialTotal);

        // 當小計有改變時更新總計顯示
        $('.subtotal').on('DOMSubtreeModified', function () {
            const updatedTotal = calculateTotal();
            updateTotalDisplay(updatedTotal);
        });
    });
</script>





</body>

</html>