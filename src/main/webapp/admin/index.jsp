<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${contextPath}/img/favicon.ico">

    <title>导途后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/admin.css" rel="stylesheet">

  </head>

  <body>
    
    <s:include value="/admin/header.jsp"></s:include>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <s:action name="menu_searchMenus" namespace="/admin" executeResult="true" ignoreContextParams="true">
          	<s:param name="menuType" value="type"></s:param> 
          </s:action>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="padding:0px;">
          <iframe id="contentFrame" 
          frameborder="0" width="100%" src="${contextPath}/admin/welcome.jsp" ></iframe>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      var currentmenu; //当前展示的menu编号
      //这个的作用是在页面在装载的时候就执行的函数
      $(document).ready(function() 
      {
        //1、为菜单注册onclick事件
        var uls = $(".menuhead"); 
        uls.click(function()
        {
          //2、查看是否是当前菜单
          var temp = $(this).attr("menuid");
          
          if (currentmenu == temp) {
            return;
          };
          currentmenu = temp;
          //3、判断是否为叶子节点
		  var isparent = $(this).attr("isparent");
          if(isparent == 0){
        	  //展示对应的业务页面
        	  var url = $(this).attr("url");
        	  alert(url);
          }
          //4、展开菜单
          //隐藏上个菜单
          $(".nav-sidebar").hide("slow");
          $(".menuselect").removeClass('menuselect');
          //展开菜单
          $(this).addClass('menuselect');
          $("ul[parentid='"+temp+"']").animate({
             opacity: 'show'
           }, "slow");

        });
        $(".menulink").click(function() {
          
          var className = $(this).attr("class");
          className = className.split(" ")[1];

          if (className.indexOf("_s") == -1){

            $("a[parentid='"+currentmenu+"']").each(function() {
              $(this).css("color","#fff");
              var cc = $(this).attr("class");
              cc = cc.split(" ")[1];
              var index = cc.indexOf("_s");
              if (index >= 0) {
                $(this).removeClass(cc);
                var newClassName = cc.substring(0,index);
                $(this).addClass(newClassName);
              }
            });

            $(this).removeClass(className);
            $(this).addClass(className+'_s');
            $(this).css("color","#31CB02");
          }
          
          //展示对应的业务页面
    	  var url = "${contextPath}"+$(this).attr("url");
    	  $("#contentFrame").attr("src",url);
        });

       // alert("$(window).height():"+;
        //设置iframe的高度，iframe的高度由iframe中的页面高度决定。
        var height = $(window).height() - 70;
     	$("#contentFrame").height(height);
     	
     	//顶部连接点击
     	$(".topLink").click(function(){
     		var tbid = $(this).attr("tbid");
     		alert(tbid);
     	});
      });
    </script>
  </body>
</html>