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
a:hover{text-decoration:none;color:#666;}
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
    min-height: 520px;
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
    content: "Sql转Class";
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
#sqlBlock{
	float:left;
	width:380px;
	overflow:hidden;
}
#javaBlock{
	float:right;
	width:500px;
	overflow:hidden;
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
    		<form id="classForm" action="#" class="bs-docs-example form-horizontal" style="width:960px;margin:40px auto;padding-top:60px;overflow:hidden;">
		      <div id="sqlBlock">
		      	<h4>Sql语句
		      	<a id="getSqlBtn" href="#" class="button button-rounded button-flat-action" style="padding:0px 15px;margin-left:10px;">生成类代码</a>
		      	<a id="clearBtn" href="#" class="button button-rounded button-flat" style="padding:0px 15px;margin-left:10px;">清空</a>
		      	</h4>
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
		      <div id="javaBlock">
		      	<h4>生成的Java类
		      	 <a id="copyBtn" href="#" class="button button-rounded button-flat" style="padding:0px 15px;margin-left:10px;">复制</a>
		      	 <a id="generateCodeBtn" href="#" class="button button-rounded button-flat-action" style="padding:0px 15px;margin-left:10px;">生成项目代码</a>
		      	 <input id="packageText" value="com.icode.sys" type="text" style="width:170px;margin-left:10px;">
		      	</h4>
		      	<div id="codeBrowser">
					<pre id="codePre" class="prettyprint linenums" style="border-radius:0px;min-height:310px;font-size:14px;margin-bottom:0px;"><ol class="linenums"><li class="L0"><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">SysUserDetail</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> </span></li><li class="L1"><span class="pln">	</span><span class="kwd">private</span><span class="pln"> </span><span class="typ">Long</span><span class="pln"> tbid</span><span class="pun">;</span></li><li class="L2"><span class="pln">	</span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> realname</span><span class="pun">;</span><span class="com">//真实姓名</span></li><li class="L3"><span class="pln">	</span><span class="kwd">private</span><span class="pln"> </span><span class="typ">Timestamp</span><span class="pln"> logintime</span><span class="pun">;</span><span class="com">//登录时间</span></li><li class="L4"><span class="pln">	</span><span class="kwd">private</span><span class="pln"> </span><span class="typ">Integer</span><span class="pln"> loginnum</span><span class="pun">;</span><span class="com">//登录次数</span></li><li class="L5"><span class="pln">	</span><span class="kwd">private</span><span class="pln"> </span><span class="typ">Integer</span><span class="pln"> data_flag</span><span class="pun">;</span><span class="com">//数据标示</span></li><li class="L0"><span class="pln"> </span></li><li class="L1"><span class="pun">}</span></li></ol></pre>
				</div>
		      </div>
			</form>
    	</div>
 		<div id="footerWrapper">&nbsp;</div>
 	</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.zclip.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/google-code-prettify/prettify.js"></script>
<script type="text/javascript" src="${contextPath}/js/sql2java.js"></script>
<script>
$(function(){
	$("#clearBtn").click(function(){
		$("#sqlcontent").val("");
	});
	$('#copyBtn').zclip({
		path:'${contextPath}/js/ZeroClipboard.swf',
		copy:function(){return classContent;}
	});
});
	
</script>
</body>
</html>