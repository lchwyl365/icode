package com.icode.sys.persistence;

import java.util.List;

import com.icode.util.Page;

import org.apache.ibatis.annotations.Param;

import com.icode.sys.domain.SysMenu;

public interface SysMenuMapper {
	
    int deleteByPrimaryKey(@Param(value="tbid")Integer tbid);

    int insert(SysMenu sysMenu);

    SysMenu selectByPrimaryKey(@Param(value="tbid")Integer tbid);

    int updateByPrimaryKey(SysMenu sysMenu);

	List<SysMenu> search(Page pager);

	List<SysMenu> menusWithParent(SysMenu sysMenu);
	
}