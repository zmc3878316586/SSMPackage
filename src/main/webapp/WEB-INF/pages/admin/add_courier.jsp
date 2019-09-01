<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="UTF-8">
  <title>用户管理-添加用户</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/datetimepicker/css/bootstrap-datetimepicker.min.css"
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
          $("#addForm").submit(function () {
              $.post("${pageContext.request.contextPath}/admin/addUser", $(this).serialize(), function (data) {
                  if(data.flag == true){
                      alert("添加成功");
                  } else {
                      alert(data.message);
                  }
              });
              return false;
          })
      });
  </script>
</head>

<body>
<ol class="breadcrumb">
  <li>当前位置:添加快递专员</li>
</ol>
<div id="alertMessage">
</div>
<div id="scrollContent" style="width: 99%">

  <form action="" method="post" id="addForm">

    <input name="em_id" type="hidden" value=""/>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">快递员姓名</label>
        <div class="col-sm-3">
          <input id="empName" class="form-control" type="text" name="em_name"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">快递员工号</label>
        <div class="col-sm-3">
          <input id="empNo" class="form-control" type="text" name="em_no"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">密码</label>
        <div class="col-sm-3">
          <input id="empPs" class="form-control" type="password" name="em_password"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">性别</label>
        <div class="col-sm-3">
          <label><input type="radio" name="em_sex" value="1" checked="checked"/>男</label>&nbsp;&nbsp;
          <label><input type="radio" name="em_sex" value="2"/>女</label>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">年龄</label>
        <div class="col-sm-3">
          <input id="age" class="form-control" type="text" name="em_age"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">手机号码</label>
        <div class="col-sm-3">
          <input id="mobile" class="form-control" type="text" name="em_tel"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">家庭地址</label>
        <div class="col-sm-6">
          <input id="address" class="form-control" type="text" name="em_home"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="form-group">
      <div class="row">
        <label class="control-label col-md-2" style="text-align: right;">所在地</label>
        <div class="col-sm-3">
          <input id="place" class="form-control" type="text" name="em_place"/>
        </div>
        <div class="col-sm-1">
          <span style="color:rgb(255,0,0)">*</span>
        </div>
      </div>
    </div>

    <div class="modal-footer">
    <button type="submit" class="btn btn-primary" id="submit_button"><span>添加快递专员</span></button>
  </div>

  </form>
</div>
</body>

</html>