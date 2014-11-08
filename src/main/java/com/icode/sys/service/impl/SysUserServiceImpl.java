package com.icode.sys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icode.sys.domain.SysUser;
import com.icode.sys.persistence.SysUserMapper;
import com.icode.sys.service.SysUserService;

@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {

	@Resource
	private SysUserMapper sysUserMapper;
	
	public SysUser userWithId(Long tbid){
		return sysUserMapper.userWithId(tbid);
	}
	
	@Transactional
	public int insert(SysUser sysUser) {
		return sysUserMapper.insert(sysUser);
	}
	
	@Transactional
	public int delete(Long tbid){
		return sysUserMapper.deleteByPrimaryKey(tbid);
	}
	
	@Transactional
	public int update(SysUser sysUser) {
		return sysUserMapper.updateByPrimaryKey(sysUser);
	}

	@Override
	public SysUser userWithUsername(String username) {
		return sysUserMapper.userWithUsername(username);
	}

	@Override
	public List<SysUser> usersWithType(int type) {
		List<SysUser> users = sysUserMapper.usersWithType(type);
		return users;
	}

	@Override
	public List<SysUser> userWithRole(Long roleid) {
		return sysUserMapper.userWithRole(roleid);
	}

}