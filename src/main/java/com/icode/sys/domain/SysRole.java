package com.icode.sys.domain;
 
import java.io.Serializable;
 
public class SysRole implements Serializable {
	
	private Long tbid;//编号
	  
	private String rolename;//角色名称
	  
	private Integer data_flag;//数据标示 1： 系统运行必须需要的数据
	  
	public Long getTbid() {
		 return tbid;
	}
	
	public void setTbid(Long tbid) {
		 this.tbid = tbid;
	}
	
	public String getRolename() {
		 return rolename;
	}
	
	public void setRolename(String rolename) {
		 this.rolename = rolename;
	}
	
	public Integer getData_flag() {
		 return data_flag;
	}
	
	public void setData_flag(Integer data_flag) {
		 this.data_flag = data_flag;
	}
	
}