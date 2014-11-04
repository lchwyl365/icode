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
<title>AutoJCode-Java代码在线自动生成</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="${contextPath}/css/docs.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/google-code-prettify/prettify.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
a:hover{text-decoration:none;color:#fff;}
table{border-collapse:separate;}
#header {
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
#dropShadowWrapper {
    background-image: url("${contextPath}/img/page_shadow_1014px.png");
    background-position: left center;
    background-repeat: repeat-y;
    border: 0 dashed pink;
    display: block;
    margin: auto;
    position: relative;
    width: 1014px;
    z-index: 2;
}
#footerWrapper{
    background-color: #fff;
    background-repeat: repeat-x;
    border: 0 dashed orange;
    color: #FFFFFF;
    margin: auto;
    min-height: 200px;
    width: 990px;
}
#headerWrapper {
    border: 0 dashed red;
    height: 100px;
    margin: auto;
    position: relative;
    width: 990px;
    z-index: 1000;
}
#logoWrapper {
    float: left;
    height: 90px;
    padding: 20px 0 0 22px;
    width: 308px;
}
#logoImg {
    border: 0 none;
}
#navigationWrapper {
    border: 0 dashed blue;
    float: right;
    height: 30px;
    margin-top: 21px;
    padding: 0;
    text-align: right;
    width: 630px;
}
#nav {
    border: 0 dashed red;
    list-style: none outside none;
    margin: 0;
    padding: 0;
    z-index: 450;
}
#nav li {
    display: block;
    float: left;
    margin: 0;
    position: relative;
    z-index: 500;
}
li.main_nav li {
    background: none repeat scroll 0 0 #C25E00;
    border: 0 dashed black;
}
.main_nav {
    border: 0 dashed pink;
}
#nav li a {
    border: 0 dashed purple;
    color: #333333;
    display: block;
    font-family: "Microsoft Yahei",Helvetica,Arial,Verdana,Sans-Serif;
    font-size: 18px;
    padding: 8px 24px 7px;
    text-align: left;
    text-decoration: none;
}
#nav li a:hover {
    background-color: #1F7D9C;
    color: #FFFFFF;
}
#nav a.selected {
    color: #FF0000;
}
#nav ul {
    display: none;
    left: 0;
    list-style: none outside none;
    padding: 0;
    position: absolute;
}
#nav ul li {
    float: left;
    text-align: left;
    width: 200px;
}
#nav ul a {
    border: 0 dashed green;
    color: #FFFFFF;
    display: block;
    padding: 2px 24px;
}
#nav ul a:hover {
    text-decoration: none;
}
#pageWrapper {
    background: none repeat scroll 0 0 transparent;
    border: 0 dashed red;
    margin: 20px auto auto;
    min-height: 500px;
    position: relative;
    width: 990px;
}
#bannerWrapper{
	height: 312px;
    width: 990px;
}
h2 {
    background: url("${contextPath}/img/line.gif") repeat-x scroll center center transparent;
    margin: 15px 0 10px;
    text-align: center;
    color:#1F7D9C;
    font-family: "Microsoft Yahei",Helvetica,Arial,Verdana,Sans-Serif;
    font-size: 24px;
    font-weight:400;
    font-style:normal;
}
h2 span {
    background: none repeat scroll 0 0 #FFFFFF;
    padding: 0 20px;
}

.thumbnails {
    list-style: none outside none;
    margin-left: 5px;
}
.thumbnails:before, .thumbnails:after {
    content: "";
    display: table;
    line-height: 0;
}
.thumbnails:after {
    clear: both;
}
.row-fluid .thumbnails {
    margin-left: 0;
}
.thumbnails > li {
    float: left;
    margin-bottom: 20px;
    margin-left: 20px;
}
.thumbnail {
    border: 1px solid #DDDDDD;
    border-radius: 4px 4px 4px 4px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
    display: block;
    line-height: 20px;
    padding: 4px;
    transition: all 0.2s ease-in-out 0s;
}
a.thumbnail:hover {
    border-color: #0088CC;
    box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
.thumbnail > img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    max-width: 100%;
}
.thumbnail .caption {
    color: #555555;
    padding: 9px;
}

.thumbnail {
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    padding: 15px;
}
.thumbnail:hover {
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
}
.thumbnail a img {
    height: auto;
    width: 100%;
}
.portfolio .thumbnail {
    padding: 8px;
}
/***SUBSTYLE***/
.bs-docs-example:after {
    background-color: #F5F5F5;
    border: 1px solid #DDDDDD;
    border-radius: 4px 0 4px 0;
    color: #9DA0A4;
    content: "业务类设计";
    font-size: 18px;
    font-weight: 400;
    font-family: "Microsoft Yahei",Helvetica,Arial,Verdana,Sans-Serif;
    left: -1px;
    padding: 3px 7px;
    position: absolute;
    top: -1px;
}
.prompt-span{
	float:none;
	color:#666;
}
.operate-img{
	cursor:pointer;
	display:block;
}
h5{
	color:#F67E27;
	font-weight:400;
	margin-top:0px;
}
</style>
</head>
<body>
 	<div id="dropShadowWrapper">
 		<div id="headerWrapper">
		   <div id="logoWrapper"><a href="${contextPath}/index.html"><img src="${contextPath}/img/jcode-logo.gif" id="logoImg"></a></div>
		    <div id="navigationWrapper">
		        <ul id="nav">
		          <li class="main_nav"><a target="${contextPath}/index.html" href="${contextPath}/index.html"><span style="cursor:default">首页</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/index.jsp" href="${contextPath}/code/index.jsp"><span style="cursor:default">自动生成代码</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/sql2class.jsp" href="${contextPath}/code/sql2class.jsp"><span style="cursor:default">Sql转Java类</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/userguide.jsp" href="${contextPath}/code/userguide.jsp"><span style="cursor:default">使用说明</span></a></li>
			    </ul>
			</div>
    	</div>
    	<div id="pageWrapper">
    		<form id="classForm" action="${contextPath}/code/code_generate.action" class="bs-docs-example form-horizontal" style="width:800px;margin:40px auto;padding-top:60px;">
		      <div class="control-group">
			    <label class="control-label" for="inputPackage">Java类包路径</label>
			    <div class="controls">
			      <input type="text" id="inputPackage" name="packageName" value="com.icode.sys">
			      <span class="prompt-span">例如：com.icode.sys</span>
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label" for="inputName">类名</label>
			    <div class="controls">
			      <input type="text" id="inputName" name="className" style="float:left;" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">
			      <div id="divInfo" class="alert alert-error" style="margin-left:10px;display:none;float:left;padding:4px 14px;"></div>
			    </div>
			  </div>
			  <div class="control-group">
			  	    <table class="table table-hover" >
		              <thead>
		                <tr>
		                  <th>属性名</th>
		                  <th>类型</th>
		                  <th>主键</th>
		                  <th>备注</th>
		                  <th></th>
		                </tr>
		              </thead>
		              <tbody id="attr-body">
		              </tbody>
		            </table>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      <a id="add-attr-btn" href="#" class="button button-rounded button-flat-primary " style="padding:0px 30px;margin-right:14px;">添加属性</a>
			      <a id="add-batch-attr-btn" href="#" class="button button-rounded button-flat-primary " style="padding:0px 30px;margin-right:14px;">Sql生成属性</a>
			      <a id="generate-btn" href="#" class="button button-rounded button-flat-action" style="padding:0px 30px;margin-right:14px;">生成代码</a>
			    </div>
			  </div>
			</form>
    	</div>
 		<div id="footerWrapper">&nbsp;</div>
 	</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/lhgdialog/lhgdialog.js?skin=mac"></script>
<script type="text/javascript" src="${contextPath}/plugin/jquery.tmpl.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/google-code-prettify/prettify.js"></script>
<script id="attrTemplate" type="text/x-jquery-tmpl">
  <tr id="{{= trid}}">
    <td>{{= name}} <input type="hidden" class="attrName" name="attrName" value="{{= name}}"></td>
	<td>{{= type}} <input type="hidden" name="attrType" value="{{= type}}"></td>
	<td>{{html primaryImg}}<input type="hidden" name="attrPrimary" value="{{= primary}}"></td>
	<td>{{= comment}} <input type="hidden" name="attrComment" value="{{= comment}}"></td>
	<td class="operate-td"><img trid="{{= trid}}" name="{{= name}}" type="{{= type}}" primary="{{= primary}}" comment="{{= comment}}" title="修改属性" class="operate-img update-img" src="../img/editor_area.gif" ></td>
    <td class="operate-td"><img trid="{{= trid}}" title="删除属性" class="operate-img delete-img" src="../img/delete_edit.gif" ></td>
  </tr>
</script>
<script>
var trid = 0;
var isSetPrimary = false;
$(function(){
	
    prettyPrint();
    
	$("#generate-btn").click(function(){
		$("#divInfo").hide();
		var name = $("#inputName").val();
		if(name == ""){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("属性名不能为空");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		var headstr = name.substring(0,1);
		var pat = new RegExp("^[a-z0-9]+$");
		if(pat.test(headstr)){
			$("#divInfo").removeClass("alert-success");
			$("#divInfo").removeClass("alert-error");
			$("#divInfo").html("属性名首字母必须为大写字母或下划线");
			$("#divInfo").addClass("alert-error");
			$("#divInfo").show();
			return false;
		}
		if(!isSetPrimary){
			$.dialog({
				title:"消息提醒",
				id:"setDialog",
			    lock: true,
			    content: '没有设置主键属性',
			    icon: 'alert.gif',
			    time: 18,
			    width:280
			});
			return false;
		}
		var inputPackage = $.trim($("#inputPackage").val());
		if(inputPackage == ""){
			$.dialog({
				title:"消息提醒",
				id:"packageDialog",
			    lock: true,
			    content: '没有指定包名！',
			    icon: 'alert.gif',
			    time: 18,
			    width:280
			});
			return false;
		}
		$("#classForm").submit();
		return false;
	});
	$("#add-attr-btn").click(function(){
		$.dialog({
			title:'添加属性',
		    width: '420px',
		    height: '330px',
		    content: 'url:${contextPath}/code/attr-add.jsp',
		    lock:true
		});
		return false;
	});
	
	$("#add-batch-attr-btn").click(function(){
		$.dialog({
			title:'批量添加属性',
		    width: '520px',
		    height: '400px',
		    content: 'url:${contextPath}/code/attr-add-batch.jsp',
		    lock:true
		});
		return false;
	});
	
	$("#login-ran").click(function(){
		$.dialog({
			title:'登录',
		    width: '500px',
		    height: '330px',
		    content: 'url:${contextPath}/code/login.jsp',
		    lock:true
		});
	});
});
function refreshAttrs(name,type,primary,comment){
	 (primary == 'checked') ? primary = 1 : primary = 0;
	 var primaryImg = "";
	 if(primary == 1){
		 isSetPrimary = true;
		 primaryImg = '<img class="primary-key-img" src="../img/key.png">';
	 }
	 var tabs = new Array({trid:trid,name:name,type:type,primary:primary,primaryImg:primaryImg,comment:comment});
	 $("#attrTemplate").tmpl(tabs).appendTo("#attr-body");
	 trid ++;
	 $(".delete-img").click(function(){
		 var trid = $(this).attr("trid");
		 $("#"+trid).empty();
		 return false;
	 });
	 $(".update-img").unbind("click");
	 $(".update-img").click(function(){
		 var trid = $(this).attr("trid");
		 var name = $(this).attr("name");
		 var type = $(this).attr("type");
		 var primary = $(this).attr("primary");
		 var comment = $(this).attr("comment");
		 var url = '${contextPath}/code/code_intoUpdate.action?attr.trid='+trid+'&attr.attrName='+name+'&attr.attrType='+type+'&attr.attrPrimary='+primary+'&attr.attrComment='+comment;
		 $.dialog({
				title:'修改属性',
			    width: '420px',
			    height: '330px',
			    content: 'url:'+url,
			    lock:true
			});
		 return false;
	 });
}
function updateAttrs(trid,name,type,primary,comment){
	(primary == 'checked') ? primary = 1 : primary = 0;
	 var primaryImg = "";
	 if(primary == 1){
		 isSetPrimary = true;
		 primaryImg = '<img class="primary-key-img" src="../img/key.png">';
	 }
	 var tabs = new Array({trid:trid,name:name,type:type,primary:primary,primaryImg:primaryImg,comment:comment});
	 $("#attrTemplate").tmpl(tabs).replaceAll("#"+trid);
	 $(".delete-img").unbind("click");
	 $(".delete-img").click(function(){
		 var trid = $(this).attr("trid");
		 $("#"+trid).empty();
		 return false;
	 });
	 $(".update-img").unbind("click");
	 $(".update-img").click(function(){
		 var trid = $(this).attr("trid");
		 var name = $(this).attr("name");
		 var type = $(this).attr("type");
		 var primary = $(this).attr("primary");
		 var comment = $(this).attr("comment");
		 var url = '${contextPath}/code/code_intoUpdate.action?attr.trid='+trid+'&attr.attrName='+name+'&attr.attrType='+type+'&attr.attrPrimary='+primary+'&attr.attrComment='+comment;
		 $.dialog({
				title:'修改属性',
			    width: '420px',
			    height: '330px',
			    content: 'url:'+url,
			    lock:true
			});
		 return false;
	 });
	 
}
function exitsName(name){
	var exits = false;
	 $(".attrName").each(function(){
		 var val = $(this).val();
		 if(name == val){
			 exits =  true;
		 }
	 });
	return exits;
}
</script>
</body>
</html>