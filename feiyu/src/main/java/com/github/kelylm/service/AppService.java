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

import com.github.kelylm.entity.App;
import com.github.kelylm.repository.AppDao;

@Service
@Transactional
public class AppService {

	private static Logger logger = LoggerFactory.getLogger(AppService.class);

	@Autowired
	private AppDao appDao;

	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *                查询条件
	 * @param pageable
	 *                分页参数
	 * @return
	 */
	public Page<App> searchPage(Map<String, Object> searchParams, Pageable pageable) {
		return appDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *                查询条件
	 * @return
	 */
	public List<App> search(Map<String, Object> searchParas) {
		return appDao.search(searchParas);
	}

	public App get(Long id) {
		return appDao.get(id);
	}

	public void insert(App app) {
		appDao.insert(app);
	}

	public void update(App app) {
		appDao.update(app);
	}

	public void delete(Long id) {
		appDao.delete(id);
	}

}
