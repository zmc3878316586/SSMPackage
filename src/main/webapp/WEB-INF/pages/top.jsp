<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>欢迎使用京西快递后台管理系统</title>
		<link href="${pageContext.request.contextPath}/css/skin/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
	</head>

	<body style="background:url(${pageContext.request.contextPath}/css/skin/images/topbg.gif) repeat-x;">

		<div class="topleft">
			<a href="${pageContext.request.contextPath}/" target="_parent"><img src="${pageContext.request.contextPath}/img/logo.png" title="系统首页" alt=""/></a>
		</div>
		<div class="topright">
			<ul>
				<li><span><img src="${pageContext.request.contextPath}/css/skin/images/help.png" title="帮助" class="helpimg" alt=""/></span>
					<a href="#">帮助</a>
				</li>
				<li>
					<a href="#">关于</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/user/login" target="_parent">退出</a>
				</li>
			</ul>
			<div class="user">
				<span>${name}</span>
			</div>

		</div>

	</body>

</html>