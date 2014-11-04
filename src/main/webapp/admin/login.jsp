<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <title>导途后台管理系统-登录</title>

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/plugin/buttons/css/font-awesome.min.css"  rel="stylesheet" />
    <link href="${contextPath}/plugin/buttons/css/buttons.css" rel="stylesheet"  />

    <!-- Custom styles for this template -->
    <link href="${contextPath}/css/signin.css" rel="stylesheet">
  </head>
  <body>

      <div id="login-div">
          <h2 id="login-title">导途后台登录</h2>
          <div id="login-form">
            <div class="control-group">
            
              <div id="errormsg"></div>
            	
              <div class="controls">
                <label for="password" class="control-label fa fa-asterisk"></label>
                <input id="username" type="text" name="username" placeholder="用户名" class="form-control input-medium">
              </div>

              <div class="controls">
                <label for="password" class="control-label fa fa-asterisk"></label>
                <input id="password" type="password" name="password" placeholder="密码" class="form-control input-medium">
              </div>

              <div class="form-actions">
                <a href="#" id="login-ran" class="button button-rounded button-flat-action" 
                		style="width:280px;margin-top:25px;margin-right:14px;">登陆</a>
              </div>
			  
            </div>
          </div>
      </div>

  </body>

<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/jquery.placeholder.js"></script>
<script>
$(function(){
  $("#login-ran").click(function(){
    var username = $.trim($("#username").val());
    var password = $("#password").val();
    if(username == ""){
      $("#errormsg").html("请输入用户名");
      return false;
    }
    if(password == ""){
      $("#errormsg").html("请输入密码");
      return false;
    }
    $.post("${contextPath}/admin/user_login.action",{
      "sysUser.username":username,"sysUser.password":password
    },function(msg){
      if(msg.result == 2){
    	$("#errormsg").css("color","#ff0000");
        $("#errormsg").html("密码不正确");
      }else if(msg.result == 1){
    	$("#errormsg").css("color","#36A803");
        $("#errormsg").html("登录成功");
        window.self.location = "${contextPath}/admin/admin_index.action";
      }else{
    	$("#errormsg").css("color","#ff0000");
        $("#errormsg").html("用户名不正确");
      }
    });
  });
});
</script>
</html>