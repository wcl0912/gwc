<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>登录页面</title>
  <style type="text/css">
    #wrap {
      height: 719px;
      width: 100%;
      background-image: url(dlbj.jpg);
      background-repeat: no-repeat;
      background-position: left;
      background-size: 60% 100% ;
      position: relative;
    }
    #wrap .logGet {
      height: 408px;
      width: 368px;
      position: absolute;
      background-color: #FFFFFF;
      top: 20%;
      right: 15%;
    }
    .logC a button {
      width: 100%;
      height: 45px;
      background-color: #FF0000;
      border: none;
      color: white;
      font-size: 18px;
    }
    .logGet .logD.logDtip .p1 {
      display: inline-block;
      font-size: 28px;
      margin-top: 30px;
      width: 86%;
    }
    #wrap .logGet .logD.logDtip {
      width: 86%;
      border-bottom: 1px solid #ee7700;
      margin-bottom: 60px;

      margin-right: auto;
      margin-left: auto;
    }
    .logGet .lgD img {
      position: absolute;
      top: 12px;
      left: 8px;
    }
    .logGet .lgD input {
      width: 100%;
      height: 42px;
      text-indent: 2.5rem;
    }
    #wrap .logGet .lgD {
      width: 86%;
      position: relative;
      margin-bottom: 30px;
      margin-top: 30px;
      margin-right: auto;
      margin-left: auto;
    }
    #wrap .logGet .logC {
      width: 86%;

      margin-right: auto;

      margin-left: auto;
    }
   <%--
   p{
      text-align: center;
    }
    --%>
    #head {
      height: 120px;
      width: 100%;
      background-color: lightpink;
      text-align: center;
      position: relative;
    }
    #foot {
      width: 100%;
      height: 120px;
      background-color: #B7CEFA;
      position: relative;
    }
    <%--顶部--%>
    .title {
      color: #FFFFFF;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      font-size: 36px;
      height: 40px;
      width: 30%;
    }
    <%--底部--%>
    .copyright {
      color: #FFFFFF;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      height: 60px;
      width: 40%;
      text-align:center;
    }

    .copyright .img .icon {
      width: 24px;
      height: 24px;
      margin-left: 22px;
      vertical-align: middle;
      margin-right: 5px;
    }

    .copyright .img .icon1 {
      width: 24px;
      height: 24px;
      margin-left: 22px;
      vertical-align: middle;
      margin-right: 5px;
    }
    .copyright .img .icon2 {
      width: 24px;
      height: 24px;
      margin-left: 22px;
      vertical-align: middle;
      margin-right: 5px;
    }
  </style>
</head>
<body >

<div class="header" id="head">
  <div class="title">购物车登录</div>
</div>


<form action="scropp.jsp" method="post">
  <div class="wrap" id="wrap">
    <div class="logGet">
      <div class="logD logDtip">
        <p class="p1">登录</p>
      </div>
      <div class="lgD">
        <img src="yh.jpg" width="20" height="20" alt=""/>
        <input type="text" name="uname" placeholder="输入账号wcl"/>
      </div>
      <div class="lgD">
        <img src="mm.jpg" width="20" height="20" alt=""/>
        <input type="password" name="pwd" placeholder="输入密码123456" />
      </div>
      <div class="logC">
        <input type="submit" value="登录" target="_blank" class="links" />
      </div>
    </div>
  </div>
</form>
<%
  String str=(String)request.getSession().getAttribute("mrgss");
  if(str!=null){
    out.print(str);
  }
%>

<div class="footer" id="foot">
  <div class="copyright">
    <div class="img">
      <i class="icon"></i><span>联系邮箱：1111111111@qq.com</span>
    </div>
    <div class="img">
      <i class="icon1"></i><span>联系地址：安徽科技学院</span>
    </div>
    <div class="img">
      <i class="icon2"></i><span>联系电话：178XXXXXX92</span>
    </div>
  </div>
</div>
</body>
</html>
