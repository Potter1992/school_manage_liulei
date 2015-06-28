<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <jsp:include page="css_js.jsp"></jsp:include>
    <script src="<%=request.getContextPath()%>/js/role.js"/>
    <meta name="renderer" content="webkit">
    <title>学生异动管理</title>
</head>
<body>

<jsp:include page="head.jsp"></jsp:include><!-- 管理员页面头部 -->
<div class="tab-body">
    <div id="tab-panel-manage">
        <div class="tab-panel active" id="tab-approve-detail">
            <!-- 审核成员管理 -->
            <jsp:include page="approve.jsp"></jsp:include>
        </div>
        <div class="tab-panel " id="tab-change-detail">
            <!-- 异动管理 -->
            <jsp:include page="change.jsp"></jsp:include>
        </div>
        <div class="tab-panel " id="tab-role-detail">
            <!-- 角色管理 -->
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>