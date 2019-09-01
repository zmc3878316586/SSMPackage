<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>包裹实时信息</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/time-axis.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>

<body>
<h3>快递单号:${expId}</h3>
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