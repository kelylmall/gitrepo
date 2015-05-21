package com.github.kelylm.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.kelylm.entity.UserAppRoles;
import com.github.kelylm.repository.UserAppRolesDao;

@Service
@Transactional
public class UserAppRolesService {

	private static Logger logger = LoggerFactory.getLogger(UserAppRolesService.class);

	@Autowired
	private UserAppRolesDao userAppRolesDao;

	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *                查询条件
	 * @param pageable
	 *                分页参数
	 * @return
	 */
	public Page<UserAppRoles> searchPage(Map<String, Object> searchParams, Pageable pageable) {
		return userAppRolesDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *                查询条件
	 * @return
	 */
	public List<UserAppRoles> search(Map<String, Object> searchParas) {
		return userAppRolesDao.search(searchParas);
	}

	public UserAppRoles get(Long id) {
		return userAppRolesDao.get(id);
	}

	public void insert(UserAppRoles userAppRoles) {
		userAppRolesDao.insert(userAppRoles);
	}

	public void update(UserAppRoles userAppRoles) {
		userAppRolesDao.update(userAppRoles);
	}

	public void delete(Long id) {
		userAppRolesDao.delete(id);
	}
}
