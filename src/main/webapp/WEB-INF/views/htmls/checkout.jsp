<%@ page import="com.example.oshop.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Themefisher Constra HTML Template v1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- 頁籤圖片(icon) -->
    <link rel="shortcut icon" type="image/x-icon"
          href="images/oShopBlack-no.png"/>
    <!-- 圖片(icon)字體 -->
    <link rel="stylesheet" href="plugins/themefisher-font/style.css">
    <!-- 引用css樣式 bootstrap.min -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <!-- 頁面主體樣式CSS -->
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                    <a href="<c:url value='/index'/>"> <!-- 頁首標題欄 -->
                        <svg
                                width="135px" height="29px" viewBox="0 0 210 29" version="1.1"
                                xmlns="http://www.w3.org/2000/svg"
                                xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g id="Page-1" stroke="none" stroke-width="1" fill="none"
                               fill-rule="evenodd" font-size="35"
                               font-family="AustinBold, Austin" font-weight="bold">
                                <g id="Group" transform="translate(-108.000000, -297.000000)"
                                   fill="#000000">
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
                    <!-- *** 導覽列 商品 下拉式選單 *** -->
                    <li class="dropdown dropdown-slide"><a
                            href="<c:url value=''/>" class="dropdown-toggle"
                            data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                            role="button" aria-haspopup="true" aria-expanded="false">筆記型電腦<span
                            class=""></span></a> <!-- class="tf-ion-ios-arrow-down" -->
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


                            </div>
                            <!-- / .row -->
                        </div>
                        <!-- / .dropdown-menu --></li>
                    <!-- / 商品 -->

                    <!-- *** 導覽列 商品 下拉式選單 *** -->
                    <li class="dropdown dropdown-slide"><a
                            href="<c:url value=''/>" class="dropdown-toggle"
                            data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                            role="button" aria-haspopup="true" aria-expanded="false">桌上型電腦<span
                            class=""></span></a>

                        <!-- *** 導覽列 商品 下拉式選單 *** -->
                    <li class="dropdown dropdown-slide"><a
                            href="<c:url value=''/>" class="dropdown-toggle"
                            data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                            role="button" aria-haspopup="true" aria-expanded="false"><span
                            class=""></span>周邊配件</a> <!-- class="tf-ion-ios-arrow-down" -->
                        <div class="dropdown-menu">
                            <div class="row">

                                <!-- *** 筆電 導覽列 有跳轉頁面 *** -->
                                <div class="col-lg-6 col-md-6 mb-sm-3">
                                    <ul>
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        </li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="<c:url value='/product-single'/>">APPLE
                                            周邊</a></li>
                                        <li><a href="<c:url value='/product-single'/>">ASUS
                                            周邊</a></li>
                                        <li><a href="<c:url value='/product-single'/>">ACER
                                            周邊</a></li>
                                        <li><a href="<c:url value='/product-single'/>">MSI
                                            周邊</a></li>
                                        <li><a href="<c:url value='/product-single'/>">其他品牌
                                            周邊</a></li>
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

                            </div>
                            <!-- / .row -->
                        </div>
                        <!-- / .dropdown-menu --></li>
                    <!-- / 商品 -->


                    <!-- * 購物體驗 /blog-full-width * -->
                    <li class="dropdown dropdown-slide"><a
                            href="<c:url value=''/>" class="dropdown-toggle"
                            data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                            role="button" aria-haspopup="true" aria-expanded="false">企業專區
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
                        </ul>
                    </li>
                    <!-- / 關於我們 -->


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
                    <li class="dropdown dropdown-slide"><a
                            href="<c:url value=''/>" class="dropdown-toggle"
                            data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                            role="button" aria-haspopup="true" aria-expanded="false">我的帳戶</a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value='/profileDetails'/>">個人資訊</a></li>
                            <li><a href="<c:url value='/dashboard'/>">商店購物金</a></li>
                            <li><a href="<c:url value='/order'/>">我的訂單</a></li>
                            <li><a href="<c:url value='/orderList'/>">追蹤清單</a></li>
                        </ul>
                    </li>
                    <!-- / 我的帳戶 -->


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
                    <h1 class="page-name">訂單結帳</h1>
                    <ol class="breadcrumb">

                        <!-- *** 回到首頁 *** -->
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

                <div class="col-md-1"></div>
                <!-- 0504補 -->

                <div class="col-md-5">
                    <div class="block billing-details">
                        <h4 class="widget-title" style="font-size: 18px">顧客資料</h4>
                        <form class="checkout-form">
                            <div class="form-group">
                                <label for="full_name" style="font-size: 14px">顧客名稱</label> <input
                                    type="text" class="form-control" id="full_name" placeholder=""
                                    style="font-size: 16px"/>
                            </div>
                            <div class="form-group">
                                <label for="user_email" style="font-size: 14px">電子信箱</label> <input
                                    type="text" class="form-control" id="user_email"
                                    placeholder="" style="font-size: 16px"/>
                            </div>
                            <div class="form-group">
                                <label for="user_phone" style="font-size: 14px">電話號碼</label> <input
                                    type="text" class="form-control" id="user_phone"
                                    placeholder="" style="font-size: 16px"/>
                            </div>
                            <div class="form-group">
                                <label for="user_date" style="font-size: 14px">生日日期</label> <input
                                    type="date" class="form-control" id="user_date" placeholder=""
                                    style="font-size: 16px"/>
                            </div>
                            <div class="checkout-country-code clearfix">
                                <div class="form-group">
                                    <label for="user_post_code" style="font-size: 14px">郵遞區號</label>
                                    <input type="text" class="form-control" id="user_post_code"
                                           name="zipcode" value="" style="font-size: 16px"/>
                                </div>
                                <div class="form-group">
                                    <label for="user_city" style="font-size: 14px">城市</label> <input
                                        type="text" class="form-control" id="user_city" name="city"
                                        value="" style="font-size: 16px"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="user_address" style="font-size: 14px">地址</label> <input
                                    type="text" class="form-control" id="user_address"
                                    placeholder="" style="font-size: 16px"/>
                            </div>
                        </form>
                    </div>
                    <div class="block">
                        <h4 class="widget-title" style="font-size: 18px">選擇送貨及付款方式</h4>
                        <div class="checkout-product-details">
                            <div class="payment">
                                <div class="card-details">
                                    <!-- 選擇送貨及付款方式 -->

                                    <div class="form-group">
                                        <label for="order-delivery-country" style="font-size: 14px">送貨地點</label>
                                        <span class="select-cart-form"> <select
                                                id="order-delivery-country" class="form-control">
													<option value="TW" selected style="font-size: 14px">台灣</option>
											</select>
											</span>
                                    </div>

                                    <!-- 送貨方式 -->
                                    <div class="form-group">
                                        <label for="order-delivery-method">送貨方式</label> <span
                                            class="select-cart-form"> <select
                                            id="order-delivery-method" class="form-control"
                                            style="font-size: 14px">
													<option value="1">7-11 超商取貨付款 (取貨付款)</option>
													<option value="2">全家 超商取貨付款 (取貨付款)</option>
													<option value="3">7-11 純取貨，不付款 (先進行付款，超商直接取貨)</option>
													<option value="4" selected>全家 純取貨，不付款
														(先進行付款，超商直接取貨)</option>
													<option value="5">一般宅配 (先進行付款，核對後配送)(限台灣本島)</option>
											</select>
											</span>
                                    </div>
                                    <!-- 送貨方式 END -->

                                    <!-- 付款方式 -->
                                    <!-- 7-11 全家 超商取貨付款 (取貨付款) >>>>> 只能選擇以下 1 或 2 -->
                                    <!-- 7-11 全家 純取貨，不付款 (先進行付款，超商直接取貨) >>>>> 只能選擇以下 3 或 4 -->
                                    <!-- 一般宅配 (先進行付款，核對後配送)(限台灣本島) >>>>> 只能選擇以下 3 或 4 -->

                                    <div class="form-group">
                                        <label for="order-payment-method">付款方式</label> <span
                                            class="select-cart-form"> <select
                                            id="order-payment-method" class="form-control"
                                            style="font-size: 14px">
													<option value="1">7-11 貨到付款</option>
													<option value="2">全家 貨到付款</option>
													<option value="3">銀行轉帳</option>
													<option value="4" selected>信用卡
														(支援國內外Visa,Master,JCB)</option>
											</select>
											</span>
                                    </div>
                                    <!-- 付款方式 END-->
                                    <div>
                                        <p style="font-size: 14px">⚠
                                            下單後請盡速付款，如超過繳款期限，系統將自動取消訂單。</p>
                                        <p style="font-size: 14px">
                                            ⚠【收件人姓名請輸入’’真實姓名’’，超商取貨時需核對證件。】</p>
                                        <p style="font-size: 14px">⚠
                                            全面使用【雲端電子發票】電子發票證明聯系統會寄至買家E-mail</p>
                                    </div>
                                </div>


                                <br>


                                <div>
                                    <a class="btn btn-main btn-checkout"
                                       data-e2e-id="checkout_button" href="<c:url value='/cart'/>"
                                       style="font-size: 16px"> 返回購物車 </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!--             <div class="col-md-1"> -->
                <!--             </div> -->

                <div class="col-md-5">
                    <div class="product-checkout-details">
                        <div class="block">
                            <h4 class="widget-title" style="font-size: 18px">訂單資訊</h4>
                            <div class="">
                                <p style="font-size: 16px">
                                    有優惠代碼嗎 ? <a data-toggle="modal" data-target="#coupon-modal"
                                                      href="#!" style="font-size: 16px">&emsp;輸入優惠代碼</a>
                                </p>
                            </div>
                            <ul class="summary-prices">
                                <li><span style="font-size: 16px">小計:</span> <span
                                        class="price" style="font-size: 16px"></span></li>
                                <li><span style="font-size: 16px">運費:</span> <span
                                        style="font-size: 16px">免運</span></li>
                            </ul>

                            <div class="summary-total">
                                <span style="font-size: 16px">合計</span>
                                <span id="money"
                                      style="font-size: 16px" id="money">??</span>
                            </div>

                            <section class="remark-form">
                                <div class="section-header" style="margin-top: 30px">
                                    <h4 style="font-size: 18px">訂單備註</h4>
                                </div>
                                <div class="section-body">
                                    <form name="remarksForm">
                                        <div class="form-group">
												<textarea id="order-remarks" class="form-control"
                                                          name="order[order_remarks]" placeholder="有什麼想告訴賣家嗎？"
                                                          rows="3"
                                                          style="width: 425px; height: 128px; resize: none; margin-top: 20px; font-size: 16px;"></textarea>
                                        </div>
                                    </form>
                                </div>
                            </section>


                            <div class="col-md-12">
                                <div class="product-checkout-711">
                                    <div class="block">

                                        <!-- Delivery Form -->
                                        <section class="delivery-form"
                                                 data-e2e-id="checkout-delivery_container">
                                            <div class="section-header">
                                                <div class="pull-right">運費: NT$0</div>
                                                <h3 style="font-size: 18px">送貨資料</h3>
                                            </div>
                                            <div class="section-body">
                                                <p style="font-size: 16px">已選擇的送貨方式: 全家 純取貨，不付款
                                                    (先進行付款，超商直接取貨)</p>
                                                <form checkout-delivery-form name="deliveryForm"
                                                      autocomplete="off"></form>


                                                <div id="delivery-form-content">
                                                    <div class="form-group" ng-if="isCreatingNewAddress()">
                                                        <label class="control-label"> <input
                                                                type="checkbox"
                                                                data-e2e-id="order-delivery-recipient-is-customer_checkbox"
                                                                name="order[delivery_data][recipient_is_customer]"
                                                                style="font-size: 16px">
                                                            收件人資料與顧客資料相同
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="control-label"
                                                               style="font-size: 16px">收件人名稱</label>
                                                        <input id="recipient-name" type="text"
                                                               class="form-control"
                                                               name="order[delivery_data][recipient_name]" value=""
                                                               ng-pattern="/^(?:[\u4e00-\u9fa5\u3400-\u4DB5a-zA-Z0-9]{1,5}|[a-zA-Z0-9]{1,10})$/"
                                                               required style="font-size: 16px"/> <span
                                                            class="help-block" style="font-size: 16px">請填入收件人真實姓名，以確保順利收件</span>
                                                    </div>


                                                    <div class="form-group intl-tel-input-container">
                                                        <label for="recipient-phone" class="control-label"
                                                               style="font-size: 16px">收件人電話號碼</label>
                                                        <input id="recipient-phone" type="tel"
                                                               class="form-control"
                                                               name="order[delivery_data][recipient_phone]" value=""
                                                               ng-pattern="/^0?9{1}[0-9]{8}$/" required
                                                               data-country='TW' style="font-size: 16px"/>
                                                    </div>

                                                    <!-- fields by delivery -->


                                                    <!-- Family Mart -->
                                                    <hr>
                                                    <div id="family-mart-address" checkout-delivery-family-mart
                                                         get-form-data="getFormData()">
                                                        <div class="form-group">
                                                            <label
                                                                    class="control-label"> <img
                                                                    src="https://static.shoplineapp.com/web/assets/services/family_mart.jpg"
                                                                    style="font-size: 18px">
                                                                <c:choose>
                                                                    <c:when test="${ not empty CVSStoreName }">
                                                                        ${CVSStoreName}:${CVSAddress}
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        選擇門市
                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </label>
                                                            <br>
                                                            <br>
                                                            <div id="searchstore"
                                                                 class="btn btn-success btn-block btn-pick-store"
                                                                 style="font-size: 16px">
                                                                搜尋門市

                                                            </div>
                                                            <div id="logistic_ecpay">

                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>


                                <br>


                                <div>
                                    <a class="btn btn-main pull-right btn-block btn-checkout"
                                       data-e2e-id="checkout_button"
                                       style="font-size: 16px" href="<c:url value='pay'/>"> 提交訂單 </a>
<%--                                    <c:choose>--%>
<%--                                        <c:when test="${ totalCost > 0}">--%>
<%--                                            <a class="btn btn-main pull-right btn-block btn-checkout"--%>
<%--                                               data-e2e-id="checkout_button"--%>
<%--                                               onclick="window.open('<c:url value="/pay"/>', '_blank')"--%>
<%--                                               style="font-size: 16px"> 提交訂單 </a>--%>
<%--                                        </c:when>--%>
<%--                                        <c:otherwise>--%>
<%--                                            <a class="btn btn-main pull-right btn-block btn-checkout"--%>
<%--                                               data-e2e-id="checkout_button"--%>

<%--                                               style="font-size: 16px"> 至少一個商品才能提交訂單 </a>--%>
<%--                                        </c:otherwise>--%>
<%--                                    </c:choose>--%>
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
                            <input class="form-control" type="text" placeholder="輸入優惠代碼"/>
                        </div>
                        <button type="submit" class="btn btn-main">確認優惠代碼</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    // 取出總金額並顯示在頁面中
    const totalAmount = localStorage.getItem('totalAmount');
    console.log(totalAmount);
    if (totalAmount !== null) {
        $('#money').text(totalAmount); // 假設總計顯示的地方有個id為money的元素
    }
</script>
</body>
</html>
