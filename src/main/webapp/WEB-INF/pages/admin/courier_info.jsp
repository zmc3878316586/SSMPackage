<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

	<head>
		<meta charset="UTF-8">
		<title>快递员信息</title>
	</head>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<body>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
				</button>
					<h4 class="modal-title">快递员详细信息</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户姓名</label>
							<div class="col-sm-8">
								<span>${user.em_name}</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户编号</label>
							<div class="col-sm-8">
								<span>R${user.em_no}</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">性别</label>
							<div class="col-sm-8">
                <c:if	test="${user.em_sex == 1}"><span>男</span></c:if>
								<c:if	test="${user.em_sex == 2}"><span>女</span></c:if>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">手机号码</label>
							<div class="col-sm-8">
								<span>${user.em_tel}</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label  class="col-sm-3 control-label">用户类型</label>
							<div class="col-sm-8">
								<span>专递专员</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">在职状态</label>
							<div class="col-sm-8">
								<span>在职</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">家庭住址</label>
							<div class="col-sm-8">
								<span>${user.em_home}</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">所在地</label>
							<div class="col-sm-8">
								<span>${user.em_place}</span>
							</div>
						</div>
					</div>

				</div>

				<div class="modal-footer">
					<div class="btn btn-default" data-dismiss="modal" id="dialogng">关闭</div>
				</div>
			</div>
		</div>
	</body>

<script>
  $(function () {
      $("#dialogng").click(function () {
				location.href = "${pageContext.request.contextPath}/admin/queryCourier";
			})
	});
</script>

</html>