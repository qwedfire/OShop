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
  <!-- 引用css樣式 Animate  -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- 引用css樣式 Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  <!-- 頁面主體樣式CSS -->
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="body">

  <!-- 內容 -->
  <section class="forget-password-page account">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <div class="block text-center">
          
			<!-- *** 頁面跳轉 *** -->
            <a href="<c:url value='/index'/>" class="logo">
              <img src="images/Original Shop.png" style="width: 20%;" alt="">
            </a>
            <h2 class="text-center">忘記密碼 ?</h2>
            <form class="text-left clearfix" action="forgetPasswordReturn">
              <p style="font-size: 16px;">請輸入您帳戶的電子郵件地址。驗證碼將發送給您。收到驗證碼後，您就可以為您的帳戶選擇一個新密碼。</p>
              <div class="form-group">
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="帳戶電子郵件地址" style=" font-weight: bold; font-size: 14px">
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-main text-center"style="font-size: 16px;"><b>請求密碼重置</b></button>
              </div>
            </form>
            <!-- *** 頁面跳轉 *** -->
            <p class="mt-20"><a href="<c:url value='/login'/>" style="font-size: 16px;">會員登入</a></p>
            <p class="mt-20" style="font-size: 16px;">尚未註冊會員 ?<a href="<c:url value='/register'/>" style="font-size: 16px;"> 註冊 OShop</a></p>
          </div>
        </div>
      </div>
    </div>
  </section>

</body>

</html>