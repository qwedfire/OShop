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

  <!-- 頁面主體樣式CSS -->
  <link rel="stylesheet" href="css/style.css">
  <!-- 引用 Animate.css、Loading.css -->
  <link rel="stylesheet" href="./css/loading.css">

</head>


<br>
<br>


<body id="body">
  <section class="page-404">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
		  <!-- *** LOGO連結 回到首頁 *** -->
          <a href="<c:url value='/index'/>"> 
            <img class="ld-cycle-alt" src="images/oShopBlack-no.png"
              style="animation: ld-cycle 10s infinite linear; width: 200px;">
          </a>
          <br>
          <br>
          <h2 style="font-size: 25px;">目前伺服器忙線中，請稍後重試 !</h2>
		  <!-- *** LOGO連結 回到首頁 *** -->  
          <a href="<c:url value='/index'/>" class="btn btn-main" style="font-size: 20px;"><i class="tf-ion-android-arrow-back"></i> 回首頁</a>
<!--           <p class="copyright-text">© 2018 Themefisher 版權所有</p> -->
        </div>
      </div>
    </div>
  </section>

</body>

</html>