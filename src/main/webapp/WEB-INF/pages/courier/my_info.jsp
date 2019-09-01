<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>快递专员-我的信息</title>
</head>
<style>
  .col-center-block {
    float: none;
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<body>
<ol class="breadcrumb">
  <li>当前位置:我的信息</li>
</ol>
<div class="container">
  <div class="row">
    <div class="col-md-6 col-center-block col-md-offset-3">
      <ul class="list-group">
        <li class="list-group-item"><label class="control-label col-md-3">员工姓名</label> ${user.em_name}</li>
        <li class="list-group-item"><label class="control-label col-md-3">员工编号</label> ${user.em_no}</li>
        <li class="list-group-item"><label class="control-label col-md-3">性别</label>
          <c:if test="${user.em_sex == 1}">男</c:if>
          <c:if test="${user.em_sex == 2}">女</c:if>
        </li>
        <li class="list-group-item"><label class="control-label col-md-3">手机号码</label> ${user.em_tel}</li>
        <li class="list-group-item"><label class="control-label col-md-3">家庭住址</label> ${user.em_home}</li>
        <li class="list-group-item"><label class="control-label col-md-3">所在地址</label> ${user.em_place}</li>
      </ul>
    </div>
  </div>
</div>
</body>

</html>