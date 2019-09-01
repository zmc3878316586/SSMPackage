<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8"/>
  <title>欢迎使用京西快递管理系统</title>
  <style type="text/css">
    button {
      width: 120px !important;
      height: 120px !important;
      font-size: 28px !important;
      padding-left: 0px !important;
    }
  </style>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<blockquote>
  <h2>京西快递</h2>
  <small>为您保驾护航</small>
</blockquote>
<body style="background:url(/img/1.jpg)">

<div class="center-block" style="text-align: center;padding-top:60px ;">
  <button type="button" class="btn btn-danger" onclick="window.location.href='${pageContext.request.contextPath}/expressQuery'">快递查询</button>
  <button type="button" class="btn btn-danger"
          onclick="window.location.href='${pageContext.request.contextPath}/user/login'">快递专员
  </button>
  <button type="button" class="btn btn-danger"
          onclick="window.location.href='${pageContext.request.contextPath}/admin/login'">管理员
  </button>
</div>
<table>
<tr valign="top">
  <div class="center-block" style="text-align: center;padding-top:10px ;">
    <button type="button" class="btn btn-primary" onclick="window.location.href='wait.jsp'">系统设置</button>
    <button type="button" class="btn btn-danger" onclick="window.location.href='wait.jsp'">加入我们</button>
    <button type="button" class="btn btn-primary" onclick="window.location.href='wait.jsp'">联系客服</button>
  </div>
</tr>

<tr valign="top">
  <div class="center-block" style="text-align: center;padding-top:10px ;">
    <button type="button" class="btn btn-primary" onclick="window.location.href='wait.jsp'">常见问题</button>
    <button type="button" class="btn btn-primary" onclick="window.location.href='wait.jsp'">商务合作</button>
    <button type="button" class="btn btn-primary" onclick="window.location.href='wait.jsp'">企业文化</button>
  </div>
</tr>
</table>
</body>

</html>