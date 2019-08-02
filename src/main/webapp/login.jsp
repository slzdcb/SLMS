<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>统一身份认证</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="/css/style.css" type="text/css"/>
</head>
<body>
<h1>统一身份认证</h1>
<div class="container">
    <div class="login">
        <h2>用 户 登 录</h2>
        <form action="#" method="post">
            <input type="text" id="username" placeholder="用户名" required="">
            <input type="password" id="password" placeholder="密码" required="">
        </form>
        <div class="extratlogin">
            <a>忘记密码?</a>
            <a>我是管理员</a>
        </div>
        <div class="send-button">
            <form>
                <input type="submit" id="login" value="登 录">
            </form>
        </div>
    </div>
</div>

<div class="copyright">
    <p>Copyright &copy; 2019 UESTC 学生生活管理系统</p>
</div>
<script type="text/javascript" rel="script" src="js/login.js"/>
</body>
</html>