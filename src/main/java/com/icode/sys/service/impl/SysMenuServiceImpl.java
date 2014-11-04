package com.icode.sys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icode.util.Page;
import com.icode.sys.domain.SysMenu;
import com.icode.sys.persistence.SysMenuMapper;
import com.icode.sys.service.SysMenuService;

@Service("sysMenuService")
public class SysMenuServiceImpl implements SysMenuService {

	@Resource
	private SysMenuMapper sysMenuMapper;
	
	public SysMenu searchById(Integer tbid){
		return sysMenuMapper.selectByPrimaryKey(tbid);
	}
	
	@Transactional
	public int insert(SysMenu sysMenu) {
		return sysMenuMapper.insert(sysMenu);
	}
	
	@Transactional
	public int update(SysMenu sysMenu) {
		return sysMenuMapper.updateByPrimaryKey(sysMenu);
	}
	
	@Transactional
	public int delete(Integer tbid){
		return sysMenuMapper.deleteByPrimaryKey(tbid);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<SysMenu> items = sysMenuMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

	@Override
	public List<SysMenu> menusWithParent(SysMenu sysMenu) {
		
		List<SysMenu> menus = sysMenuMapper.menusWithParent(sysMenu);
		for (int i = 0; i < menus.size(); i++) {
			SysMenu menu = menus.get(i);
			if(menu.getIsparent() == 1){
				List<SysMenu> childs = menusWithParent(menu);
				menu.setChild(childs);
			}
		}
		return menus;
	}

}