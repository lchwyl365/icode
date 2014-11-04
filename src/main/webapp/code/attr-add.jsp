<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>AutoJCode-Java代码在线自动生成-添加属性</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/docs.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
a:hover{text-decoration:none;color:#fff;}
table{border-collapse:separate;}
</style>
</head>
<body>
 	<div style="margin-top:21px;">
 		<form class="form-horizontal" style="margin-bottom:0px;">
 		  <div class="control-group" style="margin-bottom: 15px">
		    <label class="control-label" style="width:100px;" for="inputName">属性名</label>
		    <div class="controls" style="margin-left:110px;">
		      <input type="text" id="inputName" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">
		    </div>
		  </div>
		  <div class="control-group" style="margin-bottom: 15px">
		    <label class="control-label" style="width:100px;" for="inputType">类型</label>
		    <div class="controls" style="margin-left:110px;">
			    <label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="String" checked="checked"> String
			   	</label>
			   	<label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="Integer"> Integer
			   	</label>
			   	<label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="Long"> Long
			   	</label>
			   	<label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="Byte"> Byte
			   	</label>
			   	<label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="Float"> Float
			   	</label>
			   	<label class="radio" style="width:60px;float:left;padding-top:5px;">
					<input type="radio" name="inputType" value="Timestamp"> Timestamp
			   	</label>
		    </div>
		  </div>
		  <div class="control-group" style="margin-bottom: 15px">
		    <label class="control-label" style="width:100px;" for="inputComment">备注</label>
		    <div class="controls" style="margin-left:110px;">
		      <input type="text" id="inputComment" >
		    </div>
		  </div>
		  <div class="control-group" style="margin-bottom: 15px">
		    <label class="control-label" style="width:100px;" for="inputPrimary"></label>
		    <div class="controls" style="margin-left:110px;">
		       <label class="checkbox">
				<input type="checkbox" id="inputPrimary"> 设置为主键
			   </label>
		    </div>
		  </div>
		  <div class="control-group" style="margin-bottom: 15px">
		  	 <div class="controls" style="margin-left:110px;">
			      <a id="add-btn" href="#" class="button button-rounded button-flat-action " style="padding:0px 40px;">添加</a>
			      <a id="close-btn" href="#" class="button button-rounded button-flat-primary " style="padding:0px 40px;">关闭</a>
			 </div>
		  </div>
		  <div id="divInfo" class="alert alert-error" style="width:280px;margin:0px auto;display:none;"></div>
		</form>
 	</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script>
var api = frameElement.api,W = api.opener;

$(function(){
	$("#add-btn").click(function(){
		$("#divInfo").hide();
		var name = $("#inputName").val();
		if(name == ""){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("<strong>错误!</strong>属性名不能为空");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		var headstr = name.substring(0,1);
		var pat = new RegExp("^[0-9]+$");
		if(pat.test(headstr)){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("<strong>错误!</strong>属性名首字母必须为字母或下划线");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		var exits = W.exitsName(name);
		if(exits){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("<strong>错误!</strong>属性名重复");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		var type = $("input[name='inputType']:checked").val();
		var primary = $("#inputPrimary").attr("checked");
		var comment = $("#inputComment").val();
		W.refreshAttrs(name,type,primary,comment);
		$("#divInfo").removeClass("alert-success");
		$("#divInfo").removeClass("alert-error");
		$("#divInfo").html("<strong>成功!</strong>属性添加成功");
		$("#divInfo").addClass("alert-success");
		$("#divInfo").show();
		
		$("#inputName").val("");
		$("#inputComment").val("");
		$("#inputPrimary").attr('checked' ,false);
		return false;
	});
	$("#close-btn").click(function(){
		api.close();
		return false;
	});
});
</script>
</body>
</html>