<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>用户管理-包裹查询</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" type="text/css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>

<body>
<ol class="breadcrumb">
  <li>当前位置:包裹查询</li>
</ol>
<div class="container-fluid" style="padding-left: 0px;">
  <div class="well">
    <form action="${pageContext.request.contextPath}/user/queryPkgByPrmt" method="get">
      <div class="form-group" style="width: 100%">
        <div class="row">
          <div class="col-sm-1">
            <span>包裹状态:</span>
          </div>
          <div class="col-sm-2">
            <select name="status" class="form-control">
              <option value="">---选择类型---</option>
              <option value="未发送">未发送</option>
              <option value="运输中">运输中</option>
              <option value="已签收">已签收</option>
              <option value="已存档">已存档</option>
            </select>
          </div>
          <div class="col-sm-1">
            <span>包裹单号:</span>
          </div>
          <div class="col-sm-2">
            <input id="empNo" class="form-control" type="text" name="empNo"/>
          </div>
          <div>
            <button type="submit" class="btn btn-primary"><span>查询包裹</span></button>
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
        <span>快递单号</span>
      </th>
      <th class="text-center">
        <span>寄件人</span>
      </th>
      <th class="text-center">
        <span>收件人</span>
      </th>
      <th class="text-center">
        <span>包裹状态</span>
      </th>
      <th class="text-center">
        <span>当前节点</span>
      </th>
      <th class="text-center">
        <span>详情</span>
      </th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="vo">
      <tr>
        <td>${vo.pkg.exp_id}</td>
        <td>${vo.pkg.send_name}</td>
        <td>${vo.pkg.rec_name}</td>
        <td>${vo.pkg.pa_type}</td>
        <td>${vo.nowPlace}</td>
        <td>
          <a href="${pageContext.request.contextPath}/user/pkgInfo?exp_id=${vo.pkg.exp_id}">详情</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>

</html>