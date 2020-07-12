<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String uname= request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    boolean flag=false;
    if(uname.equals("ah")&&pwd.equals("123456")){
        flag=true;
    }
    if(flag){
        request.getRequestDispatcher("do.jsp").forward(request,response);
    }else{
        request.getSession().setAttribute("mrgss", "输入有误!请重新输入");
        response.sendRedirect("dl.jsp");
    }
%>
