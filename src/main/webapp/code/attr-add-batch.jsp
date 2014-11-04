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
		    <label class="control-label" style="width:100px;" for="inputName">Sql语句：</label>
		    <div class="controls" style="margin-left:110px;">
		      <textarea id="sqlcontent"  style="width:360px; height:300px;">
CREATE TABLE `sys_user_detail` (
    `tbid` bigint(20) NOT NULL auto_increment,
    `realname` varchar(10) default NULL COMMENT '真实姓名',
    `logintime` timestamp NULL default NULL COMMENT '登录时间',
    `loginnum` int(11) default '0' COMMENT '登录次数',
    `data_flag` tinyint(4) NOT NULL default '0' COMMENT '数据标示',
    PRIMARY KEY  (`tbid`)
  ) ENGINE=InnoDB AUTO_INCREMENT=13862 DEFAULT CHARSET=utf8;
		      	</textarea>
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
		var name = $("#sqlcontent").val();
		if(name == ""){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("<strong>错误!</strong>Sql内容不能为空");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		
		addAttrs();
		
		$("#divInfo").removeClass("alert-success");
		$("#divInfo").removeClass("alert-error");
		$("#divInfo").html("<strong>成功!</strong>属性添加成功");
		$("#divInfo").addClass("alert-success");
		$("#divInfo").show();
		
		return false;
	});
	$("#close-btn").click(function(){
		api.close();
		return false;
	});
});

function addAttrs(){
	var sql = $.trim($("#sqlcontent").val()).toLowerCase();
	//1、获取类名
	var className = "Snippet";
	var classstart = sql.indexOf("create table");
	var classend = sql.indexOf("(");
	if( classstart >= 0){
		var name = sql.substring(classstart+12,classend);
		name = name.replace(/ /g,'');
		name = name.replace(/`/g,'');
		if(name.indexOf("_") >= 0){
			var names = name.split("_");
			var temp = "";
			for (var i = 0; i < names.length; i++) {
				var splitstr = names[i];
				temp += splitstr.substring(0,1).toUpperCase() + splitstr.substring(1,splitstr.length);
			};
			name = temp;
		}else if(name.indexOf("-") >= 0){
			var names = name.split("-");
			var temp = "";
			for (var i = 0; i < names.length; i++) {
				var splitstr = names[i];
				temp += splitstr.substring(0,1).toUpperCase() + splitstr.substring(1,splitstr.length);
			};
			name = temp;
		}else{
			name = name.substring(0,1).toUpperCase() + name.substring(1,name.length); 
		}
		className = name;
		sql = sql.substring(classend+1);
	}
	//2、获取字段
	var fields = sql.split(",");
	
	for (var i = 0; i < fields.length-1; i++) {
		var filed = $.trim(fields[i]);
		//2.1获取注释
		var commentStart = filed.indexOf("comment '");
		var commentStr;
		if(commentStart >= 0){
			commentStr = filed.substring(commentStart+9);
			commentStr = commentStr.substring(0,commentStr.indexOf("'"));
		}
		//2.2获取变量名与类型
		filed = filed.replace(/`/g,'');
		var temps = filed.split(" ");
		var filedname = temps[0];
		var filedtype = temps[1];
		console.log(filedname + "-----"+filedtype);
		if (filedtype && filedtype.indexOf("(") >= 0) {
			filedtype = filedtype.substring(0,filedtype.indexOf("("));
		};
		//2.3类型转换为java对应的类型
		filedtype = filedtype;
		if (!filedtype) {
			continue;
		};
		filedtype = filedtype.replace("varchar","String");
		filedtype = filedtype.replace("char","String");
		filedtype = filedtype.replace("text","String");
		filedtype = filedtype.replace("bigint","Long");
		filedtype = filedtype.replace("tinyint","Integer");
		filedtype = filedtype.replace("smallint","Integer");
		filedtype = filedtype.replace("int","Integer");
		filedtype = filedtype.replace("boolean","Integer");
		filedtype = filedtype.replace("timestamp","Timestamp");
		filedtype = filedtype.replace("float","Float");
		filedtype = filedtype.replace("double","Double");
		
		W.refreshAttrs(filedname,filedtype,false,commentStr);
	};

}
</script>
</body>
</html>