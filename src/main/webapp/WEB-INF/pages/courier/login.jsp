<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>欢迎使用京西快递</title>
  <style>
    body {
      background-color: #1c77ac;
      background-image: url(${pageContext.request.contextPath}/css/skin/images/light.png);
      background-repeat: no-repeat;
      background-position: center top;
      overflow: hidden;
    }
  </style>
  <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
  <script>
      $(function () {
          $("#loginForm").submit(function () {
              $.post("${pageContext.request.contextPath}/user/loginHandle", $(this).serialize(), function (data) {
                  if (data.flag == true) {
                      location.href = "${pageContext.request.contextPath}/main";
                  } else {
                      alert(data.message);
                  }
              });
              return false;
          });
      })
  </script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/skin/css/style.css" type="text/css"/>

</head>

<body>
<div id="mainBody">
  <div id="cloud1" class="cloud"></div>
  <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop">
  <span>用户登录</span>
  <ul>
    <li>
      <a href="#">联系我们</a>
    </li>
    <li>
      <a href="#">帮助</a>
    </li>
    <li>
      <a href="#">关于我们</a>
    </li>
  </ul>
</div>
<div class="loginbody">
  <form action="" method="post" id="loginForm">
    <div class="loginbox">
      <ul>
        <li><input id="name" name="username" type="text" class="loginuser" value="" onclick="javascript()"/></li>
        <li><input id="password" name="password" type="password" class="loginpwd" onclick="javascript()"/></li>
        <li><input type="submit" class="loginbtn" value="登录"/></li>
      </ul>
    </div>
  </form>
</div>
<div class="loginbm">版权所有&nbsp;&nbsp;&nbsp;&nbsp;青软301项目部</div>
</body>

</html>