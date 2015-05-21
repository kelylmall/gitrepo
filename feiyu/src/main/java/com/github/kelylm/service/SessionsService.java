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

import com.github.kelylm.entity.Sessions;
import com.github.kelylm.repository.SessionsDao;

@Service
@Transactional
public class SessionsService {

	private static Logger logger = LoggerFactory.getLogger(SessionsService.class);

	@Autowired
	private SessionsDao sessionsDao;

	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *                查询条件
	 * @param pageable
	 *                分页参数
	 * @return
	 */
	public Page<Sessions> searchPage(Map<String, Object> searchParams, Pageable pageable) {
		return sessionsDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *                查询条件
	 * @return
	 */
	public List<Sessions> search(Map<String, Object> searchParas) {
		return sessionsDao.search(searchParas);
	}

	public Sessions get(Long id) {
		return sessionsDao.get(id);
	}

	public void insert(Sessions sessions) {
		sessionsDao.insert(sessions);
	}

	public void update(Sessions sessions) {
		sessionsDao.update(sessions);
	}

	public void delete(Long id) {
		sessionsDao.delete(id);
	}
}
