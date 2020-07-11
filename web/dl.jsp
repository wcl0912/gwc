<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录页面</title>
</head>
<body>
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
</body>
</html>
