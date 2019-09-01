<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>包裹信息实时跟踪</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/time-axis.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>

<body>
<form role="form" action="${pageContext.request.contextPath}/user/pkgTrack" method="get">
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
<c:if test="${expId != null}">
  <form action="" method="post" id="addForm">
    <input name="exp_id" value="${expId}" type="hidden"/>
    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">包裹节点信息</label>
        <div class="col-sm-6">
          <textarea id="desc" class="form-control" name="desc"></textarea>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary" id="submit_button">
        <span>添加包裹节点信息</span>
      </button>
    </div>
  </form>
</c:if>

<script type="text/javascript">
    //这是要遍历时间轴的数据
    var dimeAxis = [
        <c:forEach items="${list}" var="lgt">
        {
            date: '${lgt.ar_time}'.substring(0, 19),
            title: '${lgt.place}',
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

        $("#addForm").submit(function () {
            $.post("${pageContext.request.contextPath}/user/addLgt", $(this).serialize(), function (data) {
                if (data.flag == true) {
                    location.href = "${pageContext.request.contextPath}/user/pkgTrack?exp_id=${expId}";
                } else {
                    alert(data.message);
                }
            });
            return false;
        })

    });
</script>
</body>


</html>