<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
    if(request.getSession().getAttribute("adminName")==null)
    {
        out.print("<script type=\"text/javascript\"> alert(\"请先登陆!\");window.location=\"/login.jsp\" </script>");
    }
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>

</head>
<body>

</body>
</html>