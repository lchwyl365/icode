<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/icheck/skins/square/red.css" />
	
  </head>
  <body style="overflow:hidden">
    <div style="overflow:hidden;">
    	<div class="table_toolbar">
	    	<a href="#" class="button button-rounded button-flat-action" id="add-button"><i class="icon-plus"></i> 新增职务</a>
	    	<a href="#" class="button button-rounded button-flat-primary" id="del-button"><i class="icon-trash"></i> 删除职务</a>
	    </div>
		<table class="table table-hover">
	      <thead>
	        <tr>
	          <th style="width:40px;"><input type="checkbox" id="role_ck_all"/></th>
	          <th>职务名称</th>
	          <th>人员</th>
	        </tr>
	      </thead>
	      <tbody>
	      	<s:iterator value="pageInfo.list" id="item">
	      		<tr class="role_tr" roleid="${item.tbid}" rolename="${item.rolename}" userids="${item.userids}" menuids="${item.menuids}">
		          <td><input type="checkbox" class="role_ck" roleid="${item.tbid}"/></td>
		          <td><s:property value="#item.rolename" /></td>
		          <td><s:property value="#item.userStr" /></td>
		        </tr>
	      	</s:iterator>
	      </tbody>
	    </table>
	    <s:if test="%{#request.pageInfo.total > 0}">
			<!-- 分页 -->
			<nav>
	      		<ul class="pagination">
					<pg:pager url="${contextPath}/admin/role_index.action" items="${pageInfo.total}"	
						export="currentPageNumber=pageNumber">
						<pg:first>
								<li class="" ><a  id="firstPage" href="${pageUrl}&pageNumber=${pageNumber}" >首页</a></li>
						</pg:first>
						<pg:pages>
							<c:choose> 
								<c:when test="${currentPageNumber == pageNumber}">
									<li class="active"><a href="#">${pageNumber} </a></li>
								</c:when>
								<c:otherwise>
									<li class=""><a href="${pageUrl}&pageNumber=${pageNumber}">${pageNumber}</a></li>
								</c:otherwise>
							</c:choose>
						</pg:pages>
						<pg:last>
								<li><a id="endPage" href="${pageUrl}&pageNumber=${pageNumber}" >尾页</a></li>
						</pg:last>
					</pg:pager>
				</ul>
			</nav>
		   <!-- /分页 -->
		</s:if>

		<div id="attr-div">
				<div id="attr-content-div">
					<form class="form-inline" role="form">
					  <div class="form-group">
					    <label class="sr-only" for="rolename">职务名称</label>
					    <input type="text" id="rolename" class="form-control" style="width:300px;" placeholder="职务名称">
					    <input type="hidden" id="roleid" />
					  </div>
					</form>
					<div class="attr-list-div attr-list-persion-div">
						<div class="attr-list-title-div">选择管理员
							<!--<span class="attr-title-right">
							  <a href="#" class="button button-circle button-flat" style="padding:5px;height:28px;width:28px;line-height:18px;"><i class="icon-angle-left"></i></a>
							  <a href="#" class="button button-circle button-flat" style="padding:5px;height:28px;width:28px;line-height:18px;"><i class="icon-angle-right"></i></a>
							</span>-->
						</div>
						<div class="attr-table-persion-div" style="overflow-y:auto;height:389px;">
							<table class="table table-hover">
								<s:iterator value="users" id="user">
									<tr>
							          <td><input type="checkbox" class="roleuser" id="user_${user.tbid}" userid="${user.tbid}">&nbsp;&nbsp;<s:property value="#user.realname" /></td>
							        </tr>
								</s:iterator>
							</table>
						</div>
					</div>
					<div class="attr-list-div attr-list-role-div" >
						<div class="attr-list-title-div">设置权限   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id="checkAll" />  全选</div>
						<div class="attr-table-persion-div" style="overflow-y:auto;height:389px;">
							<table class="table table-hover" >
								<s:iterator value="menus" id="menu">
									<tr>
							          <td><s:property value="#menu.name" /></td>
							          <td>
							          	<input type="checkbox" class="rolemenu" id="menu_${menu.tbid}" menuid="${menu.tbid}">&nbsp;&nbsp;访问  &nbsp;&nbsp;
							          	<s:iterator value="#menu.child" id="btn">
							          		<input type="checkbox" class="rolemenu" id="menu_${btn.tbid}" menuid="${btn.tbid}" >&nbsp;&nbsp;<s:property value="#btn.name" />&nbsp;&nbsp;
							          	</s:iterator>
							          </td>
							        </tr>
								</s:iterator>
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
 	<script src="${contextPath}/plugin/lhgdialog/lhgdialog.js?skin=mac"></script>
 	
    <script type="text/javascript">
    var width = 0;
    var height = 0;
    var isadd = 0;
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
  	function addInitRole(){
		isadd = 1;
		openAttr();
		//清除数据
    	var rolename = $(this).attr("rolename");
    	$("#rolename").val("")
    	
    	$(".roleuser").each(function(){
    		$(this).iCheck('uncheck');
    	});
    	
    	$(".rolemenu").each(function(){
    		$(this).iCheck('uncheck');
    	});
	}
  	function addRole(){
    	var rolename = $.trim($("#rolename").val());
    	if(rolename == ""){
    		alert("请输入职务名称！");
    		return;	
    	}
    	var roleid = $("#roleid").val();
    	
    	var url = "";
    	if(isadd == 1){
    		url = "${contextPath}/admin/role_add.action?sysRole.data_flag=0&sysRole.rolename="+rolename;
    	}else{
    		url = "${contextPath}/admin/role_update.action?sysRole.data_flag=0&sysRole.tbid="+roleid+"&sysRole.rolename="+rolename;
    	}
    	var unCheckUser = true;
	    $(".roleuser").each(function(){
	    	if($(this).prop("checked")==true){
	    		unCheckUser = false;
	    		url += "&userids="+$(this).attr("userid");
	    	}
	    });
	    if(unCheckUser){
	    	alert("请选择该职务的用户！");
	    	return;
	    }
	    var unCheckMenu = true;
	 	$(".rolemenu").each(function(){
  		 	if($(this).prop("checked")==true){
  		 		unCheckMenu = false;
  		 		url += "&menuids="+$(this).attr("menuid");
  		 	}
	    });
	 	if(unCheckMenu){
	    	alert("请选择该职务可以访问的菜单！");
	    	return;
	    }
    	$.ajax({
    		   type: "POST",
    		   url: url,
    		   success: function(msgs){
    		      if(msgs.result == 1){
    		    	  window.self.location = "${contextPath}/admin/role_index.action";
    		      }else{
    		    	  if(isadd == 1){
    		    		  alert("添加职务失败！");
    		    	  }else{
    		    		  alert("修改职务失败！");
    		    	  }
    		      }
    		   }
    	});
    }
  	function delRole(){
  		
  		var roleids = new Array();
  		var url = "${contextPath}/admin/role_delete.action?1=1";
  		$(".role_ck").each(function(){
  			var check = $(this).prop("checked");
  			if(check){
  				var roleid = $(this).attr("roleid");
  				roleids.push(roleid);
  				url += "&roleids="+roleid;
  			}
  		});
  		if(roleids.length == 0){
  			alert("请选择要删除的职务！");
  			return;
  		}
  		
  		$.dialog({
  			lock: true,
  			width: '300px',
  		    height: 100,
  		    title: '确认信息',
  		    content: '<h4 style="font: 16px/22px Microsoft YaHei;">确认删除职务？</h4>',
  		  	icon: 'prompt.gif',
  		    ok: function(){
  		    	
  		    	$.ajax({
  	    		   type: "POST",
  	    		   url: url,
  	    		   success: function(msgs){
  	    		      if(msgs.result == 1){
  	    		    	  window.self.location = "${contextPath}/admin/role_index.action";
  	    		      }else{
  	    		    	  alert("删除职务失败！");
  	    		      }
  	    		   }
  	    	    });
  		        return false;
  		    },
  		    cancelVal: '关闭',
  		    cancel: true,
  		  	max: false,
  	    	min: false
  		});
  	}
	function roleClick(){
      	isadd = 0;
      	openAttr();
      	// 5.1 设置角色名称
      	var rolename = $(this).attr("rolename");
      	$("#rolename").val(rolename);
      	
      	var roleid = $(this).attr("roleid");
      	$("#roleid").val(roleid);
      	
      	// 5.2 设置角色用户
      	$(".roleuser").each(function(){
      		$(this).iCheck('uncheck');
      	});
      	var userstr = $(this).attr("userids");
      	if(userstr != ""){
      		var userids = userstr.split(",");
          	for(var i = 0 ; i < userids.length; i++){
          		var tbid = userids[i];
			$("#user_"+tbid).iCheck('check');
          	}
      	}
      	
      	// 5.3 设置用户权限
      	$(".rolemenu").each(function(){
      		$(this).iCheck('uncheck');
      	});
      	var menustr = $(this).attr("menuids");
      	if(menustr != ""){
      		var menuids = menustr.split(",");
          	for(var i = 0 ; i < menuids.length; i++){
          		var tbid = menuids[i];
			$("#menu_"+tbid).iCheck('check');
          	}
      	}
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
		
		//2、为添加删除按钮添加事件
    	$("#add-button").click(addInitRole);
		$("#del-button").click(delRole);
		
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
        
        //4、保存权限的设置
        $("#btn-ok").click(addRole);
        
        //5、为表格添加事件
        $(".role_tr").click(roleClick);
        
        //6、 全选
        $('#checkAll').on('ifChanged', function(event){
			var check = $("#checkAll").prop("checked");
        	
        	$(".rolemenu").each(function(){
        		if(check == true){
        			$(this).iCheck('check');
      		 	}else{
      		 		$(this).iCheck('uncheck');
      		 	}
          	});
		});
        
        $('#role_ck_all').on('ifChanged', function(event){
			var check = $("#role_ck_all").prop("checked");
        	
        	$(".role_ck").each(function(){
        		if(check == true){
        			$(this).iCheck('check');
      		 	}else{
      		 		$(this).iCheck('uncheck');
      		 	}
          	});
		});

    });
    </script>
  </body>
</html>