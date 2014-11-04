package com.icode.sys.service;
import java.util.List;

import com.icode.util.Page;
import com.icode.sys.domain.SysMenu;

public interface SysMenuService {

	SysMenu searchById(Integer tbid);
	
	Page search(Page pager);
	
	int insert(SysMenu sysMenu);

	int update(SysMenu sysMenu);
	
	int delete(Integer tbid);

	List<SysMenu> menusWithParent(SysMenu sysMenu);
	
}