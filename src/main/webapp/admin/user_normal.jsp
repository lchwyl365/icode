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
    <title>普通用户资料</title>
    
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/css/list.css" >
    <link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/icheck/skins/square/red.css" />
	
  </head>
  <body style="overflow:hidden">
    <div style="overflow:hidden;">
    	<div class="table_toolbar">
    		<input type="text" id="username" placeholder="用户名 / 手机号"/>
    		<a href="#" class="button button-rounded button-flat-action" id="search-button">查询</a>
	    	<a href="#" class="button button-rounded button-flat-primary" id="add-button"><i class="icon-plus"></i> 设置为导途管理员</a>
	    </div>
		<table class="table table-hover">
	      <thead>
	        <tr>
	          <th style="width:40px;"><input type="checkbox" id="item_ck_all"/></th>
	          <th>用户名</th>
	          <th>手机号</th>
	          <th>真实姓名</th>
	        </tr>
	      </thead>
	      <tbody>
	      	<s:iterator value="pageInfo.list" id="item">
	      		<tr class="item_tr" tbid="${item.tbid}" username="${item.username}" realname="${item.realname}" roleStr="${item.roleStr}" >
		          <td><input type="checkbox" class="item_ck" tbid="${item.tbid}"/></td>
		          <td><s:property value="#item.username" /></td>
		          <td><s:property value="#item.telephone" /></td>
		          <td><s:property value="#item.realname" /></td>
		        </tr>
	      	</s:iterator>
	      </tbody>
	    </table>
	    <s:if test="%{#request.pageInfo.total > 0}">
			<!-- 分页 -->
			<nav>
	      		<ul class="pagination">
					<pg:pager url="${contextPath}/admin/user_initUser.action" items="${pageInfo.total}"	
						export="currentPageNumber=pageNumber">
						<pg:param name="sysUser.username"/>
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
 	
 	<script src="${contextPath}/js/attr.js"></script>
 	
    <script type="text/javascript">
  	
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
    		    	  window.self.location = "${contextPath}/admin/user_initUser.action";
    		      }else{
    		    	 alert("修改用户真实姓名失败！");
    		      }
    		   }
    	});
    }
  	function settingAdmin(){
  		
  		alert("功能未完成！");
  		/*var userids = new Array();
  		var url = "${contextPath}/admin/user_settingAdmin.action?1=1";
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
  	    		    	  window.self.location = "${contextPath}/admin/user_initUser.action";
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
  		});*/
  	}
	function itemClick(){
		//打开属性面板
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
	// 查询用户
	function searchUser(){
		
	}
	function addEvent(){
		//2、为添加删除按钮添加事件
		$("#add-button").click(settingAdmin);
		$("#search-button").click(searchUser);
	}
    $(document).ready(function() 
    {
		//添加事件
    	addEvent();
    });
    </script>
  </body>
</html>