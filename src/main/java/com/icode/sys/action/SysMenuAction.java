package com.icode.sys.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icode.sys.domain.SysMenu;
import com.icode.sys.domain.SysUser;
import com.icode.sys.service.SysMenuService;
import com.icode.util.Page;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class SysMenuAction extends BaseAction {

	private SysMenu sysMenu;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	private List<SysMenu> menus;
	
	@Resource
	private SysMenuService sysMenuService;

	public String index(){
		pager = sysMenuService.search(pager);
		return "index";
	}
	
	/***
	 * 查询菜单页
	 * @return
	 */
	public String searchMenus(){
		SysUser user = (SysUser)this.httpSession.getAttribute(SysUser.SYS_LOGIN_USER);
		if(user == null || sysMenu == null){
			backurl = "login.jsp";
			return "result-jsp";
		}
		
		//TODO 此处需加缓存类,及按用户权限查询
		menus = sysMenuService.menusWithParent(sysMenu);
		backurl = "leftmenu.jsp";
		return "result-jsp";
	}
	
	public String add(){
		result = sysMenuService.insert(sysMenu);
		backurl = "sysMenu/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = sysMenuService.delete(sysMenu.getTbid());
		return "result-json";
	}
	
	public String intoUpdate(){
		sysMenu = sysMenuService.searchById(sysMenu.getTbid());
		return "intoUpdate";
	}
	
	public String update(){
		result = sysMenuService.update(sysMenu);
		backurl = "front/sysMenu_intoUpdate.action?sysMenu.tbid="+sysMenu.getTbid();
		return "result-jsp";
	}
	
	public SysMenu getSysMenu(){
		return sysMenu;
	}
	public void setSysMenu(SysMenu sysMenu){
		this.sysMenu = sysMenu;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public Page getPager() {
		return pager;
	}
	public void setPager(Page pager) {
		this.pager = pager;
	}
	public String getBackurl() {
		return backurl;
	}
	public void setBackurl(String backurl) {
		this.backurl = backurl;
	}

	public List<SysMenu> getMenus() {
		return menus;
	}

	public void setMenus(List<SysMenu> menus) {
		this.menus = menus;
	}
	
}