<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   <div id="lch_header">
     <div class="navbar-header">
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         <span class="sr-only">Toggle navigation</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
       <a class="navbar-brand" href="#"><img src="${contextPath}/img/logo.png"></a>
     </div>
     <div id="navbar" class="collapse navbar-collapse" ST>
       <ul class="nav navbar-nav">
         <li class="active"><a href="#">系统管理</a></li>
         <li><a href="#about">数据管理</a></li>
       </ul>
       <ul class="nav navbar-nav navbar-right">
           <li><a class="f14">你好，<s:property value="#session.sysLoginUser.username"/>&nbsp;&nbsp;</a></li>
           <li><a class="f14" href="../navbar-fixed-top/">退出&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
       </ul>
     </div><!--/.nav-collapse -->
   </div>
 </nav>