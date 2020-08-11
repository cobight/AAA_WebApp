<%@ page import="AAA0810.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: cobight
  Date: 2020/8/10
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>add</title>
    <script type="application/javascript">
        function setIframeHeight(iframe) {
            if (iframe) {
                var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                if (iframeWin.document.body) {
                    iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                }
            }
        }
    </script>
</head>
<body>
<%!
    User u=new User();
%><br>
<iframe src="/AAA/Users/showall.jsp" width="50%" height="" frameborder="0" scrolling="no" onload="setIframeHeight(this)"> </iframe>

<form action="/AAA/add" method="post">
    账号：<input type="text" name="username" /><br>
    密码：<input type="text" name="userpwd" /><br>
    <input type="submit" value="提交"/>
</form>

</body>
</html>