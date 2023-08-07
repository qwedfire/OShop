<%--
  Created by IntelliJ IDEA.
  User: tom98
  Date: 2023/7/23
  Time: 下午 06:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="plugins/themefisher-font/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        .product {
            position: relative;
            display: inline-block;
        }
        .product-image {
            width: 200px;
            height: 200px;
            /* 商品圖片樣式 */
        }
        .icons {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none; /* 初始時隱藏圖標 */
        }
        .product:hover .icons {
            display: block; /* 滑鼠移到商品上時顯示圖標 */
        }
        .cart-icon, .search-icon, .heart-icon {
            font-size: 24px;
            margin: 5px;
            /* 圖標樣式 */
        }
    </style>



</head>
<body>

<div class="product">
    <!-- 商品內容 -->
    <img src="images/single-product/SF514-54T-79C/SF514-54T-79C0-000.png" alt="Product Image" class="product-image">
    <div class="icons">
        <i class="fas fa-shopping-cart cart-icon"></i>
        <i class="fas fa-search search-icon"></i>
        <i class="far fa-heart heart-icon"></i>
    </div>
</div>






<hr>
<img src="/images/single-product/SFX14-51G-70P/SFX14-51G-70P8-1.png">
<hr>
<img src="/images/SFX14-51G-70P8-2.png">
<hr>
<img src="images/SFX14-51G-70P8-3.png">

<img src="images/oShopBlack7.png">

<i class="tf-ion-ios-search-strong"></i>
</body>
</html>
