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
    <title>用户角色管理</title>
    
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/list.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
	
	<link href="${contextPath}/plugin/icheck/skins/square/red.css" rel="stylesheet">
	
  </head>
  <body style="overflow:hidden">
    <div style="overflow:hidden;">
    	<div class="table_toolbar">
	    	<a href="#" class="button button-rounded button-flat-action" id="add-button"><i class="icon-plus"></i> 新增职务</a>
	    	<a href="#" class="button button-rounded button-flat-primary"><i class="icon-trash"></i> 删除职务</a>
	    </div>
		<table class="table table-hover">
	      <thead>
	        <tr>
	          <th>用户名</th>
	          <th>姓名</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <td>Mark</td>
	          <td>@mdo</td>
	        </tr>
	        <tr>
	          <td>Jacob</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <td>Mark</td>
	          <td>@twitter</td>
	        </tr>
	      </tbody>
	    </table>
		<div id="attr-div">
				<div id="attr-content-div">
					<form class="form-inline" role="form">
					  <div class="form-group">
					    <label class="sr-only" for="exampleInputEmail2">职务名称</label>
					    <input type="text" class="form-control" style="width:300px;" id="exampleInputEmail2" placeholder="职务名称">
					  </div>
					</form>
					<div class="attr-list-div attr-list-persion-div">
						<div class="attr-list-title-div">选择管理员
							<span class="attr-title-right">
							  <a href="#" class="button button-circle button-flat" style="padding:5px;height:28px;width:28px;line-height:18px;"><i class="icon-angle-left"></i></a>
							  <a href="#" class="button button-circle button-flat" style="padding:5px;height:28px;width:28px;line-height:18px;"><i class="icon-angle-right"></i></a>
							</span>
						</div>
						<div class="attr-table-persion-div">
							<table class="table table-hover">
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Mark</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox" checked>&nbsp;&nbsp;&nbsp;&nbsp;Jacob</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Mark</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Mark</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Jacob</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Jacob</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Mark</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Jacob</td>
						        </tr>
						        <tr>
						          <td><input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;Mark</td>
						        </tr>
						    </table>
						</div>
					</div>
					<div class="attr-list-div attr-list-role-div" >
						<div class="attr-list-title-div">设置权限</div>
						<div class="attr-table-persion-div" style="overflow-y:auto;height:389px;">
							<table class="table table-hover" >
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Mark3</td>
						          <td><input type="checkbox" >&nbsp;&nbsp;查看  &nbsp;&nbsp;
						          	  <input type="checkbox" >&nbsp;&nbsp;添加 &nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;删除&nbsp;&nbsp;
						          	  <input type="checkbox">&nbsp;&nbsp;修改&nbsp;&nbsp;
						          </td>
						        </tr>
						        <tr>
						          <td>Jacob</td>
						          <td>@fat</td>
						        </tr>
						        <tr>
						          <td>Larry the Bird</td>
						          <td>@twitter</td>
						        </tr>
						    </table>
						</div>
					</div>
				</div>
				<div id="attr-toolbar-div">
					<a href="#" class="button button-rounded button-flat-action" id="btn-ok"><i class="icon-ok"></i> 保存</a>
					<a href="#" class="button button-rounded button-flat-primary" id="btn-cancel"><i class="icon-signout"></i> 取消</a>
				</div>
				
				<div id="attr-close-div"></div>
	    </div>
    </div>
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
 	<script src="${contextPath}/plugin/icheck/icheck.min.js"></script>
 	<script src="${contextPath}/plugin/jquery.nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript">
    var width = 0;
    var height = 0;
  	//移动隐藏属性面板
    function closeAttr(){
  		$("#attr-div").animate({right:(0-width)}, "normal","swing", function(){
  			$("#attr-div").hide();
  		});
    }
  	//移动显示属性面板
  	function openAttr(){
  		$("#attr-div").show();
		//移动显示属性面板
		$("#attr-div").animate({right:0}, "normal");
  	}
    $(document).ready(function() 
    {
	  	//1、初始化面板的大小
	  	width = $(document).width() - 260;
	  	if(width < 0) width = 700;
	  	height = $(document).height() - 80;
	  	$("#attr-div").height(height);
		$("#attr-div").width(width);
		$("#attr-div").css("right",0-width);
		$("#attr-close-div").css("top",height * 0.5);
		
		//2、为添加按钮添加事件
    	$("#add-button").click(openAttr);
    	//3、取消面板的显示
    	$("#btn-cancel").click(closeAttr);
    	$("#attr-close-div").click(closeAttr);
    	
    	
    	$('input').iCheck({
    	    checkboxClass: 'icheckbox_square-red',
    	    radioClass: 'iradio_square-red',
    	    increaseArea: '20%' // optional
    	  });
    	
    	//改变滚动条的样式
        $("html").niceScroll();
      //改变滚动条的样式
        $(".attr-table-persion-div").niceScroll();
    });
    </script>
  </body>
</html>