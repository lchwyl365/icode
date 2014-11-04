package com.icode.sys.persistence;

import java.util.List;

import com.icode.util.Page;

import org.apache.ibatis.annotations.Param;

import com.icode.sys.domain.SysUser;

public interface SysUserMapper {
	
    int deleteByPrimaryKey(@Param(value="tbid")Long tbid);

    int insert(SysUser sysUser);

    SysUser selectByPrimaryKey(@Param(value="tbid")Long tbid);

    int updateByPrimaryKey(SysUser sysUser);

	List<SysUser> search(Page pager);

	SysUser searchByUsername(String username);
	
}