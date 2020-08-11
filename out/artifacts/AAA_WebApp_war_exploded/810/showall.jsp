<%--
  Created by IntelliJ IDEA.
  User: cobight
  Date: 2020/8/10
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>标题</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<h1>协议：<%=request.getScheme()%></h1>
<h1>服务名：<%=request.getServerName()%></h1>
<h1>端口号：<%=request.getServerPort()%></h1>
<h1>项目名：<%=request.getContextPath()%></h1>
<h1>URI:<%=request.getRequestURI()%></h1>
<h1>URL:<%=request.getRequestURL()%></h1>
<h1>name：<%=request.getParameter("name")%></h1>
<h1>pwd：<%=request.getParameter("pwd")%></h1>
</body>
</html>