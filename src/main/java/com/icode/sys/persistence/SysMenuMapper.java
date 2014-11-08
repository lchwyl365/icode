package com.icode.sys.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.icode.sys.domain.SysMenu;

public interface SysMenuMapper {
	
	//添加
    int insert(SysMenu sysMenu);
    
    //删除
    int deleteByPrimaryKey(@Param(value="tbid")Long tbid);

    //修改
    int updateByPrimaryKey(SysMenu sysMenu);

    //查询
	List<SysMenu> menusWithParent(SysMenu sysMenu);
	
	List<SysMenu> menusWithLeaf();

	List<SysMenu> menusWithRole(Long roleid);

	SysMenu menuParentWithTbid(Long menuid);

	SysMenu menuWithTbid(Long tbid);
	
}