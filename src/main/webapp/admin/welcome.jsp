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

    <title>导途后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">

  </head>

  <body>
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      
      //这个的作用是在页面在装载的时候就执行的函数
      $(document).ready(function() 
      {
        
      });
    </script>
  </body>
</html>