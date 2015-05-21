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

import com.github.kelylm.entity.Resource;
import com.github.kelylm.repository.ResourceDao;

@Service
@Transactional
public class ResourceService {

	private static Logger logger = LoggerFactory.getLogger(ResourceService.class);

	@Autowired
	private ResourceDao resourceDao;

	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *                查询条件
	 * @param pageable
	 *                分页参数
	 * @return
	 */
	public Page<Resource> searchPage(Map<String, Object> searchParams, Pageable pageable) {
		return resourceDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *                查询条件
	 * @return
	 */
	public List<Resource> search(Map<String, Object> searchParas) {
		return resourceDao.search(searchParas);
	}

	public Resource get(Long id) {
		return resourceDao.get(id);
	}

	public void insert(Resource resource) {
		resourceDao.insert(resource);
	}

	public void update(Resource resource) {
		resourceDao.update(resource);
	}

	public void delete(Long id) {
		resourceDao.delete(id);
	}
}
