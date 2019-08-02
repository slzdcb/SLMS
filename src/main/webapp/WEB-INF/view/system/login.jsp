<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- use EL-Expression-->
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 引入CSS -->
    <link href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.login.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/h-ui/lib/icheck/icheck.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/h-ui/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/easyui/themes/default/easyui.css">
    <!-- 引入JS -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/h-ui/lib/icheck/jquery.icheck.min.js"></script>

    <link rel="stylesheet" href="/css/style.css" type="text/css"/>
    <!-- 页面事件 -->
    <script type="text/javascript">
        $(function () {
            //点击图片切换验证码
            $("#vcodeImg").click(function () {
                this.src = "getVerifiCodeImage?t=" + new Date().getTime();
            });
            //登录按钮事件
            $("#submitBtn").click(function () {
                //检查登录信息
                if ($('#username').val() === '') {
                    $.messager.alert("提示", "请输入用户名 !", "warning");
                } else if ($('#password').val() === '') {
                    $.messager.alert("提示", "请输入密码 !", "warning");
                } else if ($('#verifiCode').val() === '') {
                    $.messager.alert("提示", "请输入验证码 !", "warning");
                } else {
                    //提交用户的登录表单信息
                    var data = $("#form").serialize();
                    $.ajax({
                        type: "post",
                        url: "login",
                        data: data,
                        dataType: "json",
                        success: function (data) {
                            if (data.success) {
                                window.location.href = "goSystemMainView";//进入系统主页面
                            } else {
                                $.messager.alert("提示", data.msg, "warning");
                                $("#vcodeImg").click();//切换验证码
                                $("input[name='vcode']").val("");//清空验证码输入框
                            }
                        }
                    });
                }
            });
            //设置复选框
            $(".skin-minimal input").iCheck({
                radioClass: 'iradio-blue',
                increaseArea: '25%'
            });
        })
    </script>

    <title>统一身份认证</title>
    <meta name="keywords" content="学生信息管理系统">
</head>

<body style="font-weight: lighter; ">
<div class="header" style="padding: 0;">
    <h3 style="font-weight: lighter; color: white; width: 550px; height: 60px; line-height: 60px; margin: 0 0 0 30px; padding: 0;">
        学生服务管理系统 — SLSM
    </h3>
</div>
<h1>统一身份认证</h1>
<div class="loginWraper container">
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

<!-- 页面底部版权声明 -->
<div class="footer">
    Copyright &copy; 2019. All rights reserved UESTC 学生生活管理系统
</div>
</body>
</html>