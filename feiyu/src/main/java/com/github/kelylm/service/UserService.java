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

import com.github.kelylm.entity.User;
import com.github.kelylm.repository.UserDao;

@Service
@Transactional
public class UserService {

	private static Logger logger = LoggerFactory.getLogger(UserService.class);

	@Autowired
	private UserDao userDao;

	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *                查询条件
	 * @param pageable
	 *                分页参数
	 * @return
	 */
	public Page<User> searchPage(Map<String, Object> searchParams, Pageable pageable) {
		return userDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *                查询条件
	 * @return
	 */
	public List<User> search(Map<String, Object> searchParas) {
		return userDao.search(searchParas);
	}

	public User get(Long id) {
		return userDao.get(id);
	}

	public void insert(User user) {
		userDao.insert(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(Long id) {
		userDao.delete(id);
	}
}
