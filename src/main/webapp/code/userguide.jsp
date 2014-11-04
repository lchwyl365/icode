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
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="plugin/buttons/css/buttons.css" />
<style type="text/css">
a{text-decoration: none;}
a:hover{color:white;text-decoration:none;}
table{border-collapse:separate;}
p{
 color: #333333;
 font: 14px/24px Helvetica,Tahoma,Arial,sans-serif;
}
#header {
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
#dropShadowWrapper {
    background-image: url("img/page_shadow_1014px.png");
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
    margin: 30px auto auto;
    padding:25px 20px;
    min-height: 500px;
    position: relative;
    width: 990px;
    border:1px solid #dadada;
    border-top:2px solid #1F7D9C;
}
#bannerWrapper{
	height: 316px;
    width: 990px;
}
.content-head{overflow:hidden;}
.content-other-info{float:right;width:150px;color:#666;}
.content-title{float:left;margin:0px;width:500px;font: 28px/36px "Microsoft YaHei"; color: #333333;}
.content a{color:#0066CC;}
.content a:hover{color:#CC0000;}
</style>
</head>
<body>
 	<div id="dropShadowWrapper">
 		<div id="headerWrapper">
		    <div id="logoWrapper"><a href="index.html"><img src="${contextPath}/img/jcode-logo.gif" id="logoImg"></a></div>
		    <!-- begin navigation -->
		    <div id="navigationWrapper">
		        <ul id="nav">
		          <li class="main_nav"><a target="${contextPath}/index.html" href="${contextPath}/index.html"><span style="cursor:default">首页</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/index.jsp" href="${contextPath}/code/index.jsp"><span style="cursor:default">自动生成代码</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/sql2class.jsp" href="${contextPath}/code/sql2class.jsp"><span style="cursor:default">Sql转Java类</span></a></li>
				  <li class="main_nav"><a target="${contextPath}/code/userguide.jsp" href="${contextPath}/code/userguide.jsp"><span style="cursor:default">使用说明</span></a></li>
			    </ul>
			</div>
		    <!-- end navigation --> 
    	</div>
    	<div id="pageWrapper">
    		<div class="content-head">  
    			<div class="content-other-info">  
    				<span>2013-10-22 13:13</span>  
    			</div>   
    			<h2 class="content-title">AutoJCode快速开发使用说明</h2>  
    		</div>
    		<div class="content" id="content"> 
    			<p><strong>第一步：快速生成代码</strong></p>
    			<p>进入AutoJCode&nbsp;<a target="_blank" href="${contextPath}/code/index.jsp">自动代码生成界面</a>，录入Java类包路径、类名，点击<strong style="color:#00A1CB">添加属性</strong>按钮，为类添加属性，点击<strong style="color:#7DB500">生成代码</strong>	按钮，生成代码。如图：</p>
    			<p><img src="${contextPath}/img/class-design.png" /></p>
    			<p><strong>第二步：代码预览下载</strong></p>
    			<p>生成代码后进入代码预览页面，点击相应文件名即可浏览文件，点击<strong style="color:#7DB500">下载源代码</strong>按钮 下载源码，点击<strong style="color:#00A1CB">下载lib库</strong>按钮 下载代码运行需要的jar文件。如图：</p>
    			<p><img src="${contextPath}/img/code-explor.png" /></p>
    			<p><strong>第三步：搭建环境，运行生成后的代码</strong></p>
    			<p>1、在Eclipse中新建一个Web项目,下一步中Dynamic web module version选项选择2.5 如图：</p>
    			<p><img src="${contextPath}/img/new_project.png" /></p>
    			<p><img src="${contextPath}/img/web-prject.png" /></p>
    			<p>2、将下载的“源代码” 和 “lib库”解压后拷贝到“新建项目”的硬盘目录下：如图</p>
    			<p><img src="${contextPath}/img/copy-file.png" /></p>
    			<p><img src="${contextPath}/img/copy-lib.png" /></p>
    			<p>3、拷贝完成后刷新项目，刷新完成后会出现错误，需要我们添加 Server Runtime Library(及j2ee服务器的运行类库)，我们来添加一下Tomcat 6的运行库：如图</p>
    			<p>3.1、刷新项目</p>
    			<p><img src="${contextPath}/img/refresh-project.png" /></p>
    			<p>3.2、为Eclipse配置tomcat运行环境，如果你已经配置直接进行添加类库操作就行。</p>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;在Eclipse打开Servers透视图<br><img src="${contextPath}/img/servers1.png" /></p>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;新建一个Server<br><img src="${contextPath}/img/server2.png" /></p>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;选择本地Tomcate路径，修改Jdk为系统安装jdk<br><img src="${contextPath}/img/server3.png" /></p>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;在弹出的添加项目窗口中添加项目到Tomcat上<br><img src="${contextPath}/img/server5.png" /></p>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;双击新建好的Server 在出现的文件中 将Server Locations 选择User Tomcat installation选项（使用本地Tomcat）<img src="${contextPath}/img/server4.png" /></p>
    			<p>3.3、右击项目 选择"Properties" ,在Prperties窗口中选择Java Build Path ,在Libraries 选项卡中Add Library... 添加Server Runtime 库文件</p>
    			<p><img src="${contextPath}/img/add-server-lib.png" /></p>
    			<p>3.4、打开proxool.xml配置文件，修改数据库的名字和密码</p>
    			<p><img src="${contextPath}/img/db-config.png" /></p>
    			<p>3.5、打开db/Persion.sql，在数据库中运行sql</p>
    			<p><img src="${contextPath}/img/sql-exploer.png" /></p>
    			<p>3.6、启动Tomcat，打开浏览器访问  http://localhost:8080/persion，项目搭建完成。</p>
    			<p><img src="${contextPath}/img/project-manager.png" /></p>
    			<p>&nbsp;</p><p><strong>感谢您的支持！如果您有任何疑问，请发送邮件至 lchwyl365@gmail.com 或联系QQ :463182580</strong><strong>，我会尽快答复您。</strong></p> 
    		</div>
    	</div>
 		<div id="footerWrapper">&nbsp;</div>
 	</div>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>