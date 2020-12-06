<%@ page import="java.util.List" %>
<%@ page import="com.phone_shop.model.Commodity" %>
<%@ page import="com.phone_shop.dao.ComDao" %>
<%@ page import="com.phone_shop.dao.impl.ComDaolmpl" %><%--
  Created by IntelliJ IDEA.
  User: 15308
  Date: 2020/11/30
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <title>首页</title>
  <link rel="stylesheet" type="text/css" href="./css/index.css"/>
  <script type="text/javascript">
    function alertVal(){
      alert("欢迎光临")
    }
    function cut(val){
      var domBox='';
      domBox=document.getElementById('tab_content_ul');
      domBox.setAttribute("class","excursion"+val)
    }
  </script>
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
  <%
    String beginning = request.getParameter("beginning");
    if (beginning == null)
      beginning="0";
    int begin = Integer.parseInt(beginning);
    String com_name = request.getParameter("com_name");
    if(com_name == null){
      com_name = "";
    }
    ComDao comDao = new ComDaolmpl();
    List<Commodity> commodities = comDao.getsearch(com_name,begin);
//    List<Commodity> commodityList = comDao.getAllContacts();
  %>
  <div class="nav-two">
    <div id="logo">
      <img src="img/logo.png" alt="404...">
    </div>
    <div class="search">
      <form>
        <input name="com_name" placeholder="请输入关键字" value="<%=com_name%>"><input type="submit" value="搜索">
      </form>
    </div>
    <div class="cart">
      <span><a href="cart.html">我的购物车</a></span>
    </div>

  </div>
</div>
<div class="main">
  <div id="tab_time">
    <ul>
      <li tabindex="1" onclick="cut(1)">全部</li>
      <li tabindex="1" onclick="cut(2)">苹果</li>
      <li tabindex="1" onclick="cut(3)">华为</li>
      <li tabindex="1" onclick="cut(4)">荣耀</li>
      <li tabindex="1" onclick="cut(5)">小米</li>
      <li tabindex="1" onclick="cut(6)">ViVo</li>
      <li tabindex="1" onclick="cut(7)">OPPO</li>
      <li tabindex="1" onclick="cut(8)">游戏手机</li>
      <li tabindex="1" onclick="cut(9)">手机配件</li>
    </ul>
  </div>
  <div id="tab_content">
    <ul id="tab_content_ul">
      <li id="child1">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <%
            for (Commodity commodity: commodities){
          %>
          <div class="product1">
            <a href="product.jsp?com_id=<%=commodity.getCom_id()%>">
              <div class="picture">
                <img src="<%=commodity.getCom_url()%>" alt="123...">
              </div>
              <span class="deal"><%=commodity.getCom_name()%></span>
              <span class="product_price"><%=commodity.getCom_price()%>￥</span>
              <span class="sell_count">已售<%=commodity.getCom_sell()%>份</span>
              <br>
              <button type="button" class="btn1">加入购物车</button>
              <button type="button" class="btn2">收藏</button>
              <button type="button" class="btn2">购买</button>
            </a>
          </div>
          <%}%>
        </div>
      </li>
      <li id="child2">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child3">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child4">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child5">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child6">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child7">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child8">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
        </div>
      </li>
      <li id="child9">
        <div class="type">

        </div>
        <!-- 轮播图 -->
        <div class="rotation">
          <img src="img/lunbo.png" alt="123...">
        </div>
        <div class="product">
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product2.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product3.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product.png" alt="123...">
          </div>
          <div class="product1">
            <img src="img/product1.png" alt="123...">
          </div>
        </div>
      </li>
    </ul>
  </div>
  <div class="paginate">
    <button><a href="index.jsp?beginning=<%=0%>">首页</a></button>
    <%if (begin-15<0) {%>
    <button><a href="javascript:void(0)" onclick="tishi()">上一页</a></button>
    <% }else { %>
    <button><a href="index.jsp?beginning=<%=begin-6%>&name=<%=com_name%>">上一页</a></button>
    <%}%>
    <%--      <span>共__页</span>--%>
    <%--      <span>第__页</span>--%>
    <%if (commodities.size()<6) {%>
    <button><a href="javascript:void(0)" onclick="tishi1()">下一页</a></button>
    <% }else { %>
    <button><a href="index.jsp?beginning=<%=begin+6%>&name=<%=com_name%>">下一页</a></button>
    <%}%>
    <button><a href="index.jsp?beginning=<%=6*11%>">尾页</a></button>
  </div>
</div>
<div class="footer">

</div>
</body>
<script>
  function tishi() {
    window.alert("已经是第一页了！！！");
  }
  function tishi1() {
    var result = confirm("已到最后一页，是否返回首页？？？");
    if (result) {
      //执行退出
      window.location.href = 'main.jsp';
    }
  }
</script>
</html>