<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>用户管理-用户查询</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" type="text/css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>

<body>
<ol class="breadcrumb">
  <li>当前位置:用户查询</li>
</ol>
<div class="container-fluid" style="padding-left: 0px;">
  <div class="well">
    <form action="${pageContext.request.contextPath}/admin/queryCourierByPrmt" method="get">
      <div class="form-group" style="width: 100%">
        <div class="row">
          <div class="col-sm-1">
            <span>用户姓名:</span>
          </div>
          <div class="col-sm-2">
            <input id="empName" class="form-control" type="text" name="name"/>
          </div>
          <div class="col-sm-1">
            <span>工号:</span>
          </div>
          <div class="col-sm-2">
            <input id="empNo" class="form-control" type="text" name="userNo"/>
          </div>
          <div>
            <button type="submit" class="btn btn-primary"><span>查询用户</span></button>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>

<div id="scrollContent" style="width: 99%">
  <table class="table table-hover table-striped table-bordered">
    <thead>
    <tr class="info">
      <th class="text-center">
        <span>用户姓名</span>
      </th>
      <th class="text-center">
        <span>用户编号</span>
      </th>
      <th class="text-center">
        <span>性别</span>
      </th>
      <th class="text-center">
        <span>手机号码</span>
      </th>
      <th class="text-center">
        <span>操作</span>
      </th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="user">
      <tr>
        <td>${user.em_name}</td>
        <td>R${user.em_no}</td>
        <td>
          <c:if test="${user.em_sex == 1}">男</c:if>
          <c:if test="${user.em_sex == 2}">女</c:if>
        </td>
        <td>${user.em_tel}</td>
        <td>
          <a href="${pageContext.request.contextPath}/admin/courierInfo?em_id=${user.em_id}">详情</a>
          <a href="${pageContext.request.contextPath}/admin/delUser?em_id=${user.em_id}">删除</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>

</html>