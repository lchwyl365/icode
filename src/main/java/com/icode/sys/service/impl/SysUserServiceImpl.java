package com.icode.sys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icode.util.Page;
import com.icode.sys.domain.SysUser;
import com.icode.sys.persistence.SysUserMapper;
import com.icode.sys.service.SysUserService;

@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {

	@Resource
	private SysUserMapper sysUserMapper;
	
	public SysUser searchById(Long tbid){
		return sysUserMapper.selectByPrimaryKey(tbid);
	}
	
	@Transactional
	public int insert(SysUser sysUser) {
		return sysUserMapper.insert(sysUser);
	}
	
	@Transactional
	public int update(SysUser sysUser) {
		return sysUserMapper.updateByPrimaryKey(sysUser);
	}
	
	@Transactional
	public int delete(Long tbid){
		return sysUserMapper.deleteByPrimaryKey(tbid);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<SysUser> items = sysUserMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

	@Override
	public SysUser searchByUsername(String username) {
		return sysUserMapper.searchByUsername(username);
	}

}