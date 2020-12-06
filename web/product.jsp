<%@ page import="com.phone_shop.dao.impl.ComDaolmpl" %>
<%@ page import="com.phone_shop.dao.ComDao" %>
<%@ page import="com.phone_shop.model.Commodity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 15308
  Date: 2020/12/4
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>product</title>
    <link rel="stylesheet" type="text/css" href="css/product.css"/>
</head>
<body>
<div class="header">
    <div class="nav-one">
        <ul>
            <li class="nav-left">手机首页</li>
            <li class="nav-left">四川</li>
        </ul>
        <ul class="nav-right">
            <li><a href="#">登录</a></li>
            <li><a href="#">注册</a></li>
            <li id="li1">
                <a href="#">我的</a>
                <ul class="my-down" id="ul1">
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">我的收藏 </a></li>
                    <li><a href="#">我的余额</a></li>
                    <li><a href="#">退出</a></li>
                </ul>
            </li>
        </ul>
        <script type="text/javascript">
            var oLi = document.getElementById('li1');
            var oUl = document.getElementById('ul1');
            oLi.onmouseover = function(){
                oUl.style.height = '130px';
            }
            oLi.onmouseout = function(){
                oUl.style.height = '0';
            }
        </script>
    </div>
    <div class="nav-two">
        <div id="logo">
            <img src="img/logo.png" alt="404...">
        </div>
        <div class="search">
            <input type="text"><span>搜索</span>
        </div>
        <div class="cart">
            <span><a href="cart.html">我的购物车</a></span>
        </div>

    </div>
</div>
<%
    int com_id = Integer.parseInt(request.getParameter("com_id"));
    ComDao comDao = new ComDaolmpl();
    Commodity commodity = comDao.getCommodity(com_id);
%>
    <div class="main">
        <div class="left">
            <div class="left_picture">
                <img src="<%=commodity.getCom_url()%>" style="width: 400px;height: 540px">
            </div>
        </div>
        <div class="right">
            <div class="right_product_title">
                <%=commodity.getCom_name()%>
            </div>
            <div class="right_product_deal">
                <%=commodity.getCom_intro()%>
            </div>
            <span class="price_style"><%=commodity.getCom_price()%>￥</span>
            <span class="sell">已售<%=commodity.getCom_sell()%>份</span>
            <span class="public_date">发布时间：<%=commodity.getCom_ftime()%></span>

            <div class="right_caozuo">
                <button type="button"><a href="">加入购物车</a></button>
                <button type="button">收藏</button>
                <button type="button">购买</button>
                <button type="button"><a href="index.jsp">返回</a></button>
            </div>
        </div>
    </div>
</body>
</html>

