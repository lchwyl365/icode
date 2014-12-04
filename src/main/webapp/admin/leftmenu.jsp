<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<s:iterator value="menus" id="menu" status="mst">
	<s:set value="'menuhead'" name="divClass" ></s:set>
    <div class="${divClass}" menuid="${menu.tbid}" isparent="${menu.isparent}" url="${menu.url}"><a href="#">
    	<img src="${contextPath}${icon}">&nbsp;&nbsp;<s:property value="#menu.name" /></a></div>
      <s:if test="1 == #menu.isparent">
    	<ul class="nav nav-sidebar" parentid="${menu.tbid}">
    	  <s:iterator value="#menu.child" id="submenu" status="st"> 
    	  	<s:set value="'menulink menuitem'" name="linkClass" ></s:set>
    	  	<s:if test="#st.last">
    	  		<s:set value="'menulink menuitem_b'" name="linkClass" ></s:set>
    	  	</s:if>
    	  	<li><a href="#" class="${linkClass}" parentid="${menu.tbid}" style="${linkStyle}" url="${submenu.url}"><s:property value="#submenu.name" /></a></li>
    	  </s:iterator>
		</ul>
    </s:if>
</s:iterator>