package com.icode.sys.action;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icode.sys.domain.SysUser;
import com.icode.sys.service.SysUserService;
import com.icode.util.Page;
import com.icode.util.ResultJson;
import com.icode.util.SHATool;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class SysUserAction extends BaseAction {

	private SysUser sysUser;
	
	private Page pager;
	
	private ResultJson resultJson;
	
	private String backurl;
	
	@Resource
	private SysUserService sysUserService;
	
	public String login(){
		int result = 3;
		if(sysUser != null && StringUtils.isNotEmpty(sysUser.getUsername())){
			SysUser tempUser = sysUserService.searchByUsername(sysUser.getUsername());
			
			if(tempUser != null){
				String pwdcode = new SHATool().getDigestOfString(sysUser.getPassword().trim().getBytes());
				if(pwdcode.equals(tempUser.getPassword())){
					result = 1;
					this.httpSession.setAttribute(SysUser.SYS_LOGIN_USER, sysUser);
				}else{//密码不正确
					result = 2;
				}
			}else{ //用户名不存在
				result = 3;
			}
		}
		resultJson = new ResultJson(result);
		return "result-json";
	}

	public String index(){
		pager = sysUserService.search(pager);
		return "index";
	}
	
	public String add(){
		int result = sysUserService.insert(sysUser);
		resultJson = new ResultJson(result);
		backurl = "sysUser/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		int result = sysUserService.delete(sysUser.getTbid());
		resultJson = new ResultJson(result);
		return "result-json";
	}
	
	public String intoUpdate(){
		sysUser = sysUserService.searchById(sysUser.getTbid());
		return "intoUpdate";
	}
	
	public String update(){
		int result = sysUserService.update(sysUser);
		resultJson = new ResultJson(result);
		backurl = "front/sysUser_intoUpdate.action?sysUser.tbid="+sysUser.getTbid();
		return "result-jsp";
	}
	
	public SysUser getSysUser(){
		return sysUser;
	}
	public void setSysUser(SysUser sysUser){
		this.sysUser = sysUser;
	}
	
	public ResultJson getResultJson() {
		return resultJson;
	}

	public void setResultJson(ResultJson resultJson) {
		this.resultJson = resultJson;
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
}