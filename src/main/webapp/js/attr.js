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
//初始化属性面板
function initAttr(){
	//1、初始化面板的大小
  	width = $(document).width() - 260;
  	if(width < 0) width = 700;
  	height = $(document).height() - 80;
  	$("#attr-div").height(height);
	$("#attr-div").width(width);
	$("#attr-div").css("right",0-width);
	$("#attr-close-div").css("top",height * 0.5);
	
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
}
$(document).ready(function()
{
	//初始化属性面板
	initAttr();
});