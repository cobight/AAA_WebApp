<%--
  Created by IntelliJ IDEA.
  User: cobight
  Date: 2020/8/10
  Time: 15:23
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
<form action="reg" method="post">
    姓名：<input type="text" name="username"><br>
    年龄：<input type="text" name="age"><br>
    性别：
    <input type="radio" name="sex" value="0">女
    <input type="radio" name="sex" value="1">男

    <br>
    爱好：
    <input type="checkbox" name="hobby" value="swim"/>游泳
    <input type="checkbox" name="hobby" value="read"/>看书
    <input type="checkbox" name="hobby" value="basketball"/>篮球
    <input type="checkbox" name="hobby" value="sleep"/>睡觉

    <br>
    学历：
    <select name="edu">
        <option value="专科">专科</option>
        <option value="本科">本科</option>
        <option value="研究生">研究生</option>
    </select>

    <br>
    <input type="submit" value="注册"/>
    <input type="reset" value="重置"/>

</form>
</body>
</html>