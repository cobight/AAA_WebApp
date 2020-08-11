<%--
  Created by IntelliJ IDEA.
  User: cobight
  Date: 2020/8/10
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>del</title>
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
<br>
<iframe src="/AAA/Users/showall.jsp" width="50%" height="" frameborder="0" scrolling="no" onload="setIframeHeight(this)"> </iframe>

<form action="/AAA/del" method="post">
    请输入要删除的userid：<input type="text" name="userid"/><input type="submit" value="删除"/>
</form>
</body>
</html>
