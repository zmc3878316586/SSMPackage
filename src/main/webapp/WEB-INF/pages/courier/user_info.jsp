<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
								<span>王小明</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户编号</label>
							<div class="col-sm-8">
								<span>R10001</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">性别</label>
							<div class="col-sm-8">
								<span>男</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">身份证号码</label>
							<div class="col-sm-8">
								<span>876543199809241356</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">手机号码</label>
							<div class="col-sm-8">
								<span>15987634535</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
						 	<label class="col-sm-3 control-label">电子邮箱</label>
							<div class="col-sm-8">
								<span>wangxiaoming586@163.com</span>
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
							<label class="col-sm-3 control-label">入职时间</label>
							<div class="col-sm-8">
								<span>2010-09-12</span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-sm-3 control-label">家庭住址</label>
							<div class="col-sm-8">
								<span>江苏省南京市鼓楼区中山南路218号</span>
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

</html>