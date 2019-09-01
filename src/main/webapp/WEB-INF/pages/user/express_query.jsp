<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>快递信息查询</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/time-axis.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>

<body>
<form role="form" method="get" action="${pageContext.request.contextPath}/expressQuery">
  <div class="form-group">
    <div class="col-md-3">
      <input type="text" class="form-control" placeholder="请输入快递单号" name="exp_id">
    </div>
    <div class="col-md-1">
      <button type="submit" class="btn btn-primary">查询</button>
    </div>
  </div>
</form>

<div class="main" style="padding-top:50px; width: auto;margin-left:15px ;">
  <ul class="time-axis"></ul>
</div>

<script type="text/javascript">
    //这是要遍历时间轴的数据
    var dimeAxis = [
        <c:forEach items="${list}" var="lg">
        {
            date: '${lg.ar_time}'.substring(0, 19),
            title: '${lg.place}',
            achievement: ''
        },
        </c:forEach>
    ];


    $(function () {
        $.each(dimeAxis, function (i, e) {
            var html = '<li class="time-axis-item">' +
                '<div class="time-axis-date">' + e.date + '<span></span></div>' +
                '<div class="time-axis-title">' + e.title + '</div>' +
                '<p class="time-axis-achievement">' + e.achievement + '</p>' +
                '</li>';
            $('.time-axis').append(html);
        });
    });
</script>
</body>

</html>