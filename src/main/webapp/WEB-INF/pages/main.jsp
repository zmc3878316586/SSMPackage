<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>欢迎使用京西快递后台管理系统</title>
</head>
<frameset rows="88,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="${pageContext.request.contextPath}/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
	<frameset cols="187,*" frameborder="no" border="0" fraMespacing="0">
		<frame src="${pageContext.request.contextPath}/left" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
		<frame src="${pageContext.request.contextPath}/right" name="rightFrame" id="rightFrame" title="rightFrame"/>
	</frameset>
</frameset>
<noframes>

	<body>

	</body>

</noframes>
</html>
