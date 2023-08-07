<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Themefisher Constra HTML Template v1.0">

    <!-- 頁籤圖片(icon) -->
    <link rel="shortcut icon" type="image/x-icon"
          href="images/oShopBlack-no.png"/>
    <!-- 圖片(icon)字體 -->
    <link rel="stylesheet" href="plugins/themefisher-font/style.css">
    <!-- 引用css樣式 bootstrap.min -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <!-- 頁面主體樣式CSS -->

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/styles.css>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            function handleWindowSizeChange() {
                const myDiv = document.querySelector('#troubleThing');
                if (window.innerWidth > 768) {
                    console.log("hihi");
                    myDiv.classList.add('pull-left');
                } else {
                    console.log("hihi???");
                    myDiv.classList.remove('pull-left');
                }
            }

            // 監聽視窗大小改變事件
            window.addEventListener('resize', handleWindowSizeChange);
            // 初始化時先執行一次
            handleWindowSizeChange();
            document.getElementById('editProfileBtn').addEventListener('click',
                function () {
                    console.log("被按了>顯示修改畫面!");
                    $('#editProfileModal').modal('show');
                });
            document.getElementById('oshopProfileDetailclose1').addEventListener('click',
                function () {
                    console.log("被關了1!");
                    $('#editProfileModal').modal('hide');
                });
            document.getElementById('oshopProfileDetailclose2').addEventListener('click',
                function () {
                    console.log("被關了2!");
                    $('#editProfileModal').modal('hide');
                });
            var submitBtn = document.getElementById("iwantedit");
            submitBtn.addEventListener("click", function () {
                // 彈出提示對話框
                var confirmed = confirm("確定要修改嗎？");

                // 如果使用者按下確認按鈕，則顯示修改成功的訊息
                if (confirmed) {
                    alert("修改成功！");
                }
            });
        });
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
                            role="button" aria-haspopup="true" aria-expanded="false">筆記型電腦<span
                            class=""></span></a> <!-- class="tf-ion-ios-arrow-down" -->
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
                            </div>
                            <!-- / .row -->
                        </div> <!-- / .dropdown-menu --></li>
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
                                        <li class="dropdown-header">依品牌&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
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
                        </div> <!-- / .dropdown-menu --></li>
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

<!-- 標題區塊 -->
<section class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="content">
                    <h1 class="page-name">我的帳戶</h1>
                    <ol class="breadcrumb">

                        <!-- *** 頁面跳轉 *** -->
                        <li><a href="<c:url value='/index'/>">首頁</a></li>
                        <li class="active">個人資訊</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 標題區塊結束 -->

<!-- 內容區塊 -->
<section class="user-dashboard page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="list-inline dashboard-menu text-center">

                    <!-- *** 內容區塊 跳轉頁面連結 *** -->
                    <li><a class="active" href="<c:url value='/profileDetails'/>"
                           style="font-size: 16px;">個人資訊</a></li>
                    <li><a href="<c:url value='/dashboard'/>"
                           style="font-size: 16px;">商店購物金</a></li>
                    <li><a href="<c:url value='/order'/>"
                           style="font-size: 16px;">我的訂單</a></li>
                    <li><a href="<c:url value='/orderList'/>"
                           style="font-size: 16px;">追蹤清單</a></li>

                </ul>
                <div class="dashboard-wrapper dashboard-user-profile">
                    <div class="media">
                        <div id="troubleThing" href="#!"
                             style="display: flex; flex-direction: column; padding-right: 20px;">
                            <div class="d-flex flex-column align-items-center"
                                 style="align-content: center;">
                                <div style="text-align: center;">
                                    <img src="data:image/jpeg;base64,${base64Image}"
                                         alt="User Avatar" class="rounded-circle mb-3"
                                         style="width: 200px; height: 200px; margin: auto" alt="Image">
                                    <!-- 								<img class="media-object user-img" src="images/oshop.jpeg" > -->
                                </div>
                            </div>
                        </div>
                        <div class="media-body">
                            <ul class="user-profile-list">
                                <li style="font-size: 16px;"><span>姓名 :</span>${user.realname}</li>
                                <li style="font-size: 16px;"><span>帳號 :</span>${user.account}</li>
                                <li style="font-size: 16px;"><span>信箱 :</span>${user.email}</li>
                                <li style="font-size: 16px;"><span>電話 :</span>${user.phone}</li>
                                <li style="font-size: 16px;"><span>生日 :</span>${user.birthday}</li>
                                <li style="font-size: 16px;"><span>地址 :</span>${user.address}</li>
                                <li style="font-size: 16px;"><span>性別 :</span>${user.sex}</li>
                            </ul>
                        </div>
                        <div style="text-align: center">
                            <a href="#" id="editProfileBtn" class="btn btn-primary">修改個人資料</a>
                        </div>
                        <div class="modal fade" id="editProfileModal" tabindex="-1"
                             role="dialog" aria-labelledby="editProfileModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editProfileModalLabel">修改個人資料</h5>
                                        <button id="oshopProfileDetailclose1" type="button" class="close"
                                                data-bs-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<c:url value='/editProfile' />" method="post"
                                          enctype="multipart/form-data">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label for="realname">姓名</label> <input type="text"
                                                                                        class="form-control"
                                                                                        id="realname" name="realname"
                                                                                        value="${user.realname}"
                                                                                        required>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">信箱</label> <input type="email"
                                                                                     class="form-control" id="email"
                                                                                     name="email"
                                                                                     value="${user.email}" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">電話</label> <input type="text"
                                                                                     class="form-control" id="phone"
                                                                                     name="phone"
                                                                                     value="${user.phone}" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="birthday">生日</label> <input type="date"
                                                                                        class="form-control"
                                                                                        id="birthday" name="birthday"
                                                                                        value="${user.birthday}"
                                                                                        required>
                                            </div>
                                            <div class="form-group">
                                                <label for="address">地址</label> <input type="text"
                                                                                       class="form-control" id="address"
                                                                                       name="address"
                                                                                       value="${user.address}" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="sex">性別</label> <select class="form-control"
                                                                                    id="sex" name="sex" required>
                                                <option value="男" ${user.sex == '男' ? 'selected' : ''}>男</option>
                                                <option value="女" ${user.sex == '女' ? 'selected' : ''}>女</option>
                                            </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="picture">用戶頭像</label> <input type="file"
                                                                                         class="form-control"
                                                                                         id="picture" name="picture"
                                                                                         accept="image/*">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button id="oshopProfileDetailclose2" type="button"
                                                    class="btn btn-secondary"
                                                    data-bs-dismiss="modal">取消
                                            </button>
                                            <button id="iwantedit" type="submit" class="btn btn-primary">保存修改</button>
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
</section>
<!-- 內容區塊結束 -->
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