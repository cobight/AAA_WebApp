
<%@ page import="java.util.ArrayList" %>
<%@ page import="AAA0810.Entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="AAA0810.dao.UserDao" %>
<%@ page import="AAA0810.dao.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: cobight
  Date: 2020/8/10
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="header.html"%>
<%
    String showpath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=showpath%>">
    <title>标题</title>
</head>
<body>
<%!
    UserDao ud= new UserDaoImpl();
    List<User> list=new ArrayList<User>();
%>
<br>
<table border="1">
    <tr>
        <td>userid</td>
        <td>username</td>
        <td>userpwd</td>
    </tr>


<%
    list=ud.sel_all();
    for (User user : list) {
%>
    <tr>
        <td><%=user.getUserid()%></td>
        <td><%=user.getUsername()%></td>
        <td><%=user.getUserpwd()%></td>
    </tr>

<%
    }
%>
</table>
</body>
</html>
<script type="application/javascript">
    var act="<%=(String)request.getAttribute("act")%>";
    var msg="<%=(String)request.getAttribute("msg")%>";
    if(act=="add"){
        alert(msg=="yes"?"添加成功":"添加失败");
    }else if(act=="del"){
        alert(msg=="yes"?"删除成功":"删除失败")
    }else if (act=="upd"){
        alert(msg=="yes"?"修改成功":"修改失败")
    }else {
        console.log("直接访问showall");
    }

</script>
