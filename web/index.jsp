<%--
  Created by IntelliJ IDEA.
  User: xhxlemon
  Date: 2020-06-15
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎选购~</title>
  </head>
  <body background="gwc.jpg">
  <form action="dl.jsp" method="post">
  <style>
    body {
      background-size: 100% 100%;
    }
   h1{
       text-align: center;
       position: relative;
     }
   p{
     font-family: Lobster, monospace;
     text-align: center;
     position: relative;
   }
  </style>
  <h1>进入购物车请先登录/注册</h1>
    <p>
      <input type="submit" value="登录"/>
    </p>
  <p>
    <a href="注册.html" target="_blank" class="links">注册</a>
  </p>
  </form>
  <%
    String str=(String)request.getSession().getAttribute("mrgss");
    if(str!=null){
      out.print(str);
    }
  %>
  </body>
</html>
