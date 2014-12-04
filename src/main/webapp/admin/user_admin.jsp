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
    <title>管理员资料</title>
    
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/list.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/icheck/skins/square/red.css" />
	
  </head>
  <body style="overflow:hidden">
    <div style="overflow:hidden;">
    	<div class="table_toolbar">
	    	<a href="#" class="button button-rounded button-flat-primary" id="del-button"><i class="icon-trash"></i> 取消管理员身份</a>
	    </div>
		<table class="table table-hover">
	      <thead>
	        <tr>
	          <th style="width:40px;"><input type="checkbox" id="item_ck_all"/></th>
	          <th>用户名</th>
	          <th>真实姓名</th>
	          <th>职务</th>
	        </tr>
	      </thead>
	      <tbody>
	      	<s:iterator value="pageInfo.list" id="item">
	      		<tr class="item_tr" tbid="${item.tbid}" username="${item.username}" realname="${item.realname}" roleStr="${item.roleStr}" >
		          <td><input type="checkbox" class="item_ck" tbid="${item.tbid}"/></td>
		          <td><s:property value="#item.username" /></td>
		          <td><s:property value="#item.realname" /></td>
		          <td><s:property value="#item.roleStr" /></td>
		        </tr>
	      	</s:iterator>
	      </tbody>
	    </table>
	    <s:if test="%{#request.pageInfo.total > 0}">
			<!-- 分页 -->
			<nav>
	      		<ul class="pagination">
					<pg:pager url="${contextPath}/admin/admin_index.action" items="${pageInfo.total}"	
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
					<form class="form-horizontal" role="form">
					  <div class="form-group">
					    <label class="col-sm-2 control-label">用户名</label>
					    <div class="col-sm-4">
					      <p class="form-control-static" id="p_username"></p>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="p_realname" class="col-sm-2 control-label">真实姓名</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="p_realname">
					      <input type="hidden" id="t_userid">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-sm-2 control-label">职务信息</label>
					    <div class="col-sm-4">
					      <p class="form-control-static" id="p_roleinfo"></p>
					    </div>
					  </div>
					</form>
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
  	//更改用户真实姓名
  	function updateUser(){

  		var realname = $.trim($("#p_realname").val());
    	if(realname == ""){
    		alert("请输入管理员的真实姓名！");
    		return;	
    	}
    	var userid = $("#t_userid").val();
    	
    	var url = "${contextPath}/admin/user_updateRealName.action?sysUser.tbid="+userid+"&sysUser.realname="+realname;

    	$.ajax({
    		   type: "POST",
    		   url: url,
    		   success: function(msgs){
    		      if(msgs.result == 1){
    		    	  window.self.location = "${contextPath}/admin/user_initAdmin.action";
    		      }else{
    		    	 alert("修改用户真实姓名失败！");
    		      }
    		   }
    	});
    }
  	function cancelAdmin(){
  		
  		var userids = new Array();
  		var url = "${contextPath}/admin/user_cancelAdmin.action?1=1";
  		$(".item_ck").each(function(){
  			var check = $(this).prop("checked");
  			if(check){
  				var tbid = $(this).attr("tbid");
  				userids.push(tbid);
  				url += "&userids="+tbid;
  			}
  		});
  		if(userids.length == 0){
  			alert("请选择要取消的管理员！");
  			return;
  		}
  		
  		$.dialog({
  			lock: true,
  			width: '300px',
  		    height: 100,
  		    title: '确认信息',
  		    content: '<h4 style="font: 16px/22px Microsoft YaHei;">确认取消管理员身份？</h4>',
  		  	icon: 'prompt.gif',
  		    ok: function(){
  		    	
  		    	$.ajax({
  	    		   type: "POST",
  	    		   url: url,
  	    		   success: function(msgs){
  	    		      if(msgs.result == 1){
  	    		    	  window.self.location = "${contextPath}/admin/user_initAdmin.action";
  	    		      }else{
  	    		    	  alert("取消管理员操作失败！");
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
	function itemClick(){
      	openAttr();
      	
      	// 5.1 设置角色名称
      	var username = $(this).attr("username");
      	$("#p_username").html(username);
      	
      	var realname = $(this).attr("realname");
      	$("#p_realname").val(realname);
      	
      	var roleStr = $(this).attr("roleStr");
      	$("#p_roleinfo").html(roleStr);
      	
      	var tbid = $(this).attr("tbid");
      	$("#t_userid").val(tbid);
      	
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
		$("#del-button").click(cancelAdmin);
		
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
        $("#btn-ok").click(updateUser);
        
        //5、为表格添加事件
        $(".item_tr").click(itemClick);
        
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
        
        $('#item_ck_all').on('ifChanged', function(event){
			var check = $("#item_ck_all").prop("checked");
        	
        	$(".item_ck").each(function(){
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