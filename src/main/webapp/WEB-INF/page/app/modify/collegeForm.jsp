<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>layuiAdmin 文章管理 iframe 框</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/plugins/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/plugins/layuiadmin/style/admin.css" media="all">

</head>
<body>

<div class="layui-form" lay-filter="layuiadmin-app-form-list" id="layuiadmin-app-form-list"
     style="padding: 20px 30px 0 0;">
    <div class="layui-form-item">
        <label class="layui-form-label">学院名称</label>
        <div class="layui-input-inline">
            <input type="text" name="name" value="" class="layui-input" lay-verify="name">
            <input type="text" name="oriId" value="${collegeAllInfo.collegeId}" class="layui-input"
                   style="display:none;">
            <input type="text" name="oriName" value="${collegeAllInfo.collegeName}" class="layui-input"
                   style="display:none;">
        </div>
        <div class="layui-form-mid " style="color:red">*必填项</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">性质</label>
        <div class="layui-input-inline">
            <select id="property" name="property" lay-filter="property" lay-verify="required">
                <option value="">请选择学院性质</option>
                <option value="理科">理科</option>
                <option value="文科">文科</option>
                <option value="工科">工科</option>
            </select>
        </div>
        <div class="layui-form-mid " style="color:red">*必填项</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">专业负责人工号</label>
        <div class="layui-input-inline">
            <input type="text" name="teaId" id="teaId" value="" class="layui-input">
        </div>
        <button class="layui-btn layuiadmin-btn-comm" data-type="batchdel" id="query-tea-info">查看该教师信息</button>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <textarea name="remark" style="width: 400px; height: 150px;" class="layui-textarea"
                      lay-verify="remark"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-hide">
        <input type="button" lay-submit lay-filter="layuiadmin-app-form-submit" id="layuiadmin-app-form-submit"
               value="确认添加">
        <input type="button" lay-submit lay-filter="layuiadmin-app-form-edit" id="layuiadmin-app-form-edit"
               value="确认编辑">
    </div>
</div>

<script src="${ctx}/static/plugins/layuiadmin/layui/layui.js"></script>
<script src="${ctx}/static/custom/js/myLayVerify.js"></script>
<script>
    layui.config({
        base: '${ctx}/static/plugins/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form'], function () {
        var $ = layui.$
            , form = layui.form;


        $("#query-tea-info").click(function () {
            layer.open({
                type: 2
                , title: '查看教师'
                , content: '/teacher/teaInfo?teaNum=' + $("#teaId").val()
                , maxmin: true
                , area: ['550px', '550px']
                , yes: function (index, layero) {
                    layer.close(index); //关闭弹层
                }
            });
        });
    })
</script>
</body>
</html>
