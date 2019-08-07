<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>学生主页一</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/plugins/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/plugins/layuiadmin/style/admin.css" media="all">
</head>
<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">麦尔旦，欢迎使用学生生活服务</div>
                        <div class="layui-card-body">
                            <div class="layui-card-body layui-text">
                                <table style="{border-style: none;text-align:left;font-weight:700;}">
                                    <colgroup>
                                        <col width="100">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <td>姓名:</td>
                                        <td>
                                            麦尔旦·麦
                                        </td>
                                        <td>学号:</td>
                                        <td>
                                            2017221101025
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>学院:</td>
                                        <td>
                                            信息与软件系统
                                        </td>
                                        <td>专业:</td>
                                        <td>
                                            软件工程(系统与技术)
                                        </td>
                                        <td>班级:</td>
                                        <td>
                                            2017221101
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>宿舍:</td>
                                        <td>
                                            新苑6#418
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>一卡通:</td>
                                        <td>
                                            余额：200
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript"
        src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript"
        src="https://api.map.baidu.com/api?v=2.0&ak=HAyXKM0od6KqNdGCqwmx07WPm111ZF5B&__ec_v__=20190126"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

<script src="${ctx}/static/plugins/layuiadmin/layui/layui.js?t=1"></script>

</body>
</html>


