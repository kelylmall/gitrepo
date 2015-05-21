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

import com.github.kelylm.entity.Organization;
import com.github.kelylm.repository.OrganizationDao;

/**
* @Title: 
* @Description: 
* @Author jhe   
* @Date 2013 - 2015
* @Version V1.0
* @Copyright © 2013 掌信彩通信息科技(中国)有限公司. All rights reserved.
*/
// Spring Service Bean的标识.
@Service
@Transactional
public class OrganizationService {

	private static Logger logger = LoggerFactory
			.getLogger(OrganizationService.class);

	@Autowired
	private OrganizationDao organizationDao;


	/**
	 * 分页查询
	 * 
	 * @param searchParams
	 *            查询条件
	 * @param pageable
	 *            分页参数
	 * @return
	 */
	public Page<Organization> searchPage(Map<String, Object> searchParams,
			Pageable pageable) {
		return organizationDao.searchPage(searchParams, pageable);
	}

	/**
	 * 不分页查询
	 * 
	 * @param searchParas
	 *            查询条件
	 * @return
	 */
	public List<Organization> search(Map<String, Object> searchParas) {
		return organizationDao.search(searchParas);
	}

	
	public Organization get(Long id) {
		return organizationDao.get(id);
	}

	public void insert(Organization organization) {
		organizationDao.insert(organization);
	}
	
	public void update(Organization organization) {
		organizationDao.update(organization);
	}

	public void delete(Long id) {
		organizationDao.delete(id);
	}
}
