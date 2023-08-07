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
  <!-- 引用css樣式 New eye -->
  <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css ">

  <style>
    .password-container {
      width: 400px;
      position: relative;
    }

    .password-container input[type="password"],
    .password-container input[type="text"] {
      width: 100%;
      padding: 12px 36px 12px 12px;
      box-sizing: border-box;
    }

    .fa-eye {
      /* position: absolute;
  top: 55%;
  right: 12%; */
      cursor: pointer;
      color: lightgray;
    }

    #password-container {
      display: grid;
    }

    #password {
      grid-row: 1;
      grid-column: 1;
    }

    #eye {
      grid-row: 1;
      grid-column: 1;
      border: 0px solid red;
      margin-left: 90%;
      /* margin-right: 45%; */
      /*padding: auto;*/
      align-content: center;
      align-items: center;
      /* width:fit-content; */
      text-align: center;
      padding-top: 3%;
    }
  </style>
	<c:choose>
    	<c:when test="${message=='sessionMiss'}">
       	 	<script>
            	alert('連線逾時，請重新登入!');
        	</script>
   	 	</c:when>
	</c:choose>
	<c:if test="${  not empty loginBeforeCheckout }">
		<script>
			alert("請先登入!")
		</script>
	</c:if>
	<c:choose>
    	<c:when test="${SinginMessage.equals('successSignin')}">
       	 	<script>
            	alert('註冊成功!');
        	</script>
   	 	</c:when>
	</c:choose>
</head>

<body id="body">


  <!-- 內容區塊 -->
  <section class="signin-page account">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <div class="block text-center">
          
          	<!-- *** 頁面跳轉 *** -->
            <a href="<c:url value='/index'/>" class="logo">
              <img src="images/Original Shop.png" style="width: 20%;" alt="">
            </a>
            
            <h2 class="text-center">歡迎回來</h2>
            
            <form id="team_login_form" class="text-left clearfix" method="post" action="<c:url value='/login'/>">
              <div class="form-group">
                <input type="text" class="form-control"  id="username" name="account" required placeholder="帳號" style="font-size: 14px; font-weight: bold" >
              </div>
              <div class="form-group" id="password-container">
                <input type="password" class="form-control" id="password" name="password" required placeholder="密碼" style="font-size: 14px;; font-weight: bold">
                <div class="fa-solid fa-eye" id="eye"> </div>
              </div>
              <div class="checkbox mb-3">
                <label>
                  <input type="checkbox" value="remember-me" > 記住我
                </label>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-main text-center" style="font-size: 16px;"><b>登入</b></button>
              </div>
            </form>
            
			<!-- *** 頁面跳轉 *** -->
            <p class="mt-20" style="font-size: 16px;">尚未註冊會員 ?  
              <a href="<c:url value='/register'/>" style="font-size: 16px;">  註冊 O Shop</a>
            </p>
            <p>
            <a href="<c:url value='/forgetPassword'/>" style="font-size: 16px;"> 忘記密碼 ?</a>
            </p>
           
            <!--FB-->
            
      </div>
    </div>
    </div>
    </div>
  </section><!-- 內容區塊結束 -->

  <script>
    const passwordInput = document.querySelector("#password")
    const eye = document.querySelector("#eye")

    eye.addEventListener("click", function () {
      this.classList.toggle("fa-eye-slash")
      const type = passwordInput.getAttribute("type") === "password" ? "text" : "password"
      passwordInput.setAttribute("type", type)
    })


  </script>
  	
<c:choose>
  <c:when test="${error != null}">
    <script type="text/javascript">
    	console.log("error!=null");
      alert('${error}');
    </script>
  </c:when>
  <c:otherwise>
  	
  	
	 <script type="text/javascript">
	 	console.log("剛登入");
	      
	 </script>

    
  </c:otherwise>
</c:choose>
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
<%--  <script src="js/script.js"></script>--%>

</body>

</html>