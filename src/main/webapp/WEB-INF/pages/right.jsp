<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <title>right</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    .s_remove:hover {
      color: #EEB422;
    }
  </style>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div>
  <ul id="myTab" class="nav nav-tabs">
    <li class="active" id="menu_0">
      <a href="#home" data-toggle="tab">主页</a>
    </li>
  </ul>
</div>
<!-- 与之绑定的iframe栏-->
<div id="myTabContent" class="tab-content">
  <div class="tab-pane fade in active" id="home">
    <iframe id="test" frameborder="0" scrolling="no" src="../../welcome.jsp"></iframe>
  </div>
</div>
<script>
    /**
     * 添加tab页
     * @param  id   tab页列表ID
     * @param  name tab页名称
     * @param  href tab页href
     */
    function addTab(id, name, href) {
        //是否出现过
        var flag = 0;
        //把所有标签页都移除active属性，在新添加的里面直接active
        $("#myTab li").removeClass("active");
        $("#myTabContent div").removeClass("in active");
        /*遍历所有的标签页，若已经存在，那么就直接加active掉，不需要再次添加*/
        $("#myTab li").each(function () {
            if ($(this).attr("id") == id) {
                flag = 1;
            }
        });
        if (flag == 1) {
            $("#" + id).addClass("active");
            var f_temp = $("#" + id).children().attr("href").replace("#", "");
            $("#" + f_temp).addClass("in active");
        } else {
            var tabHTML = "<li class='active' id='" + id + "'><a  href='#" + name + "' data-toggle='tab'><div>" + name + " <span  onclick='deleteTab(this)' class='glyphicon glyphicon-remove s_remove'></span></div></a></li>";
            var contentHTML = "<div id='" + name + "' class='tab-pane fade in active'><iframe width='100%' frameborder='0' scrolling='no' src='" + href + "'></iframe></div>";
            $("#myTab").append(tabHTML);
            $("#myTabContent").append(contentHTML);
            $("#" + name).find("iframe").load(
                function () {
                    var height = $(this).contents().contents().find("body").height() + 30;
                    $(this).height(height);
                }
            );
        }
    }
</script>
<script>
    /*标签页右边小叉叉的关闭标签页的功能*/
    function deleteTab(obj) {
        $(obj).parents("li").remove();
        var contentDivId = $(obj).parents("a").attr("href").replace("#", "");
        $("#" + contentDivId).remove();
        $("#myTab li:last").addClass("active");
        var lastContentDivId = $("#myTab li:last").children("a").attr("href").replace("#", "");
        $("#" + lastContentDivId).addClass("in active");
    }
</script>
</body>

</html>