<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>登录页面</title>
  <style type="text/css">
    body {
      background-image: url(dlbj.jpg);
      background-position: left;
      background-size: 100% 100% ;
      position: relative;
    }
    #head {
      height: 120px;
      width: 100%;
      background-color: lightpink;
      text-align: center;
      position: relative;
    }
    #foot {
      width: 100%;
      height: 126px;
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
<body>

<div class="header" id="head">
  <div class="title">购物车登录</div>
</div>


<form action="scropp.jsp" method="post">
  <p>
    <label>用户名：</label><input type="text" name="uname"/>
  </p>
  <p>
    <label>密码：</label><input type="password" name="pwd"/>
  </p>
  <p>
    <input type="submit" value="登录"/>
  </p>
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
      <i class="icon"></i><span>联系邮箱：1624811308@qq.com</span>
    </div>
    <div class="img">
      <i class="icon1"></i><span>联系地址：安徽科技学院</span>
    </div>
    <div class="img">
      <i class="icon2"></i><span>联系电话：17856279692</span>
    </div>
  </div>
</div>
</body>
</html>
