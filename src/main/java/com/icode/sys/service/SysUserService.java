package com.icode.sys.service;
import com.icode.util.Page;
import com.icode.sys.domain.SysUser;

public interface SysUserService {

	SysUser searchById(Long tbid);
	
	Page search(Page pager);
	
	int insert(SysUser sysUser);

	int update(SysUser sysUser);
	
	int delete(Long tbid);

	/**
	 * 根据用户名查找用户
	 * @param username
	 * @return
	 */
	SysUser searchByUsername(String username);
	
}