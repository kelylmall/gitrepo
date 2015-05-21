package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.Organization;

@Repository("organizationDao")
public interface OrganizationDao {

	Organization get(Long id);

	List<Organization> search(Map<String, Object> parameters);

	Page<Organization> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(Organization organization);

	void delete(Long id);

	void update(Organization organization);

}
