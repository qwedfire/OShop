<%@page import="tw.web.api.ecPay_emap"%>
<%@page import="tw.web.api.GoSys"%>
<%@page import="ecpay.logistics.integration.domain.ExpressMapObj"%>
<%@page import="ecpay.logistics.integration.AllInOne"%>
<%@page import="java.io.File" %>
<%@page import="MyTest.oni.SampleCode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>Insert  title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
		<script type="text/javascript">
			
			
		</script>
		<style type="text/css">
		
			 input[type="radio"]{cursor: pointer; }
       
        
	        /* 02-01. :valid 驗證通過時的樣式設定 */
	        input[type="email"]:valid{background-color: aquamarine;}
	        input[type="text"]:valid{background-color: aquamarine;}
	        input[type="tel"]:valid{background-color: aquamarine;}
	       
	        /* 02-02. :invalid 驗證不通過時的樣式設定 */
	        input[type="email"]:invalid{ background-color: #fc9191;  }
	        input[type="text"]:invalid{ background-color: #fc9191;  }
	        input[type="tel"]:invalid{ background-color: #fc9191;  }
	        /* 03-01. 驗證通過時 輸入框後面顯示 ✓ */
	        input:valid+b::before{content: "✓"; color: rgb(0, 248, 165);}
	
	        /* 03-02. 驗證不通過時 輸入框後面顯示 ✖ */
	        input:invalid+b::before{content: "✖"; color: red;}
			
			form {
				border: solid red 1px;
				align-items: center  ;
				margin-left: 40%; 
 				margin-right: 40%;
 				margin-top: 20%;
 				display:inline-block;
 				text-align: center;
			}
		</style>	
		
		<script type="text/javascript">
		$(function() {
		    console.log( "ready!" );
			function budog(){
				//${pageContext.request.contextPath}
				
				
				
			}
			/*function triggerJSP() {
				 console.log("被按下去了");
				
				  var xml = new XMLHttpRequest();
				  xml.open('GET', 'chooseStore.jsp', true);
				  xml.onreadystatechange = function() {
				    if (this.readyState === 4 && this.status === 200) {
				      console.log(this.responseText);	
				      $("#dd").html(this.responseText);
				    }
				  };
				  xml.send();
			}*/
			
			
			function triggerJSP() {
				/*$.get("chooseStore.jsp",function(e){
					console.log("e=",e)
				})*/
				//這邊被Webservlet 執行 但是其他位置應該是要用 logistics/ ChooseStore
				$.ajax({
					type:"GET",
					url:"ChooseStore",
					data:[]
				}).then(function(e){
					console.log(e)
					$("#dd").html(e);				
				})
			}
			$("#god").on("click",triggerJSP);
			
		});
			
		</script>
	</head>
	<body>
		<hr>
  		<form action="">
       	 	送貨人手機 <input type="tel" name='cellphoneNumber'  required pattern="[0-9]{2}[0-9]{4}[0-9]{4}" placeholder="0912345678">
        	 <br>
       	 	送貨人地址 <input name='sender_address' type="text" ><br>
        	送貨人姓名 <input name='sender_name' type="text" ><br>
        	<input type="submit" value="確認送出"> 
        	
    	</form>
		<button id="god" > 按鈕神</button>
		<div id ="dd"></div>
    
    
    	
	</body>
</html>