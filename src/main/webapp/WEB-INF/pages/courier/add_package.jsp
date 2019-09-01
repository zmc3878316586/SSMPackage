<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>用户管理-新建包裹</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/datetimepicker/css/bootstrap-datetimepicker.min.css"
        type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/js/My97DatePicker/skin/WdatePicker.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script type="text/javascript"
          src="${pageContext.request.contextPath}/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
  <script type="text/javascript"
          src="${pageContext.request.contextPath}/datetimepicker/js/bootstrap-datetimepicker.zh-CN.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>

  <script type="text/javascript">
      $(function () {
          $("#addPackage").submit(function () {
              $.post("${pageContext.request.contextPath}/user/addPkgHandle", $(this).serialize(), function (data) {
                  if (data.flag == true) {
                      alert("添加成功");
                  } else {
                      alert(data.message);
                  }
              });
              return false;
          });
      })
  </script>
</head>

<body>
<ol class="breadcrumb">
  <li>当前位置:新建包裹</li>
</ol>
<div id="alertMessage">
</div>
<div id="scrollContent" style="width: 99%">
  <form action="#" method="post" id="addPackage">

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">快递单号</label>
        <div class="col-sm-3">
          <input id="exp_id" class="form-control" type="text" name="exp_id"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">包裹状态</label>
        <div class="col-sm-3">
          <input id="paType" class="form-control" type="text" name="pa_type" value="未发送"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <input type="hidden" name="pa_id"/>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">寄件人姓名</label>
        <div class="col-sm-3">
          <input id="empName" class="form-control" type="text" name="send_name"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">寄件人手机号码</label>
        <div class="col-sm-3">
          <input id="empNo" class="form-control" type="text" name="send_tel"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">寄件人地址</label>
        <div class="col-sm-3">
          <input id="mobile" class="form-control" type="text" name="send_place"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">收件人姓名</label>
        <div class="col-sm-3">
          <input id="email" class="form-control" type="text" name="rec_name"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">收件人手机号码</label>
        <div class="col-sm-3">
          <input id="idCard" class="form-control" type="text" name="rec_tel"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">收件人地址</label>
        <div class="col-sm-3">
          <input id="salary" class="form-control" type="text" name="rec_place"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">备注</label>
        <div class="col-sm-6">
							<textarea id="desc" class="form-control" name="marks"></textarea>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

  </form>
  <div class="modal-footer">
    <button type="button" class="btn btn-primary" id="submit_button" onclick="$('form').first().submit()">
      <span>添加包裹</span></button>
  </div>
</div>

</body>

</html>