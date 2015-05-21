package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.Resource;

@Repository("resourceDao")
public interface ResourceDao {

	Resource get(Long id);

	List<Resource> search(Map<String, Object> parameters);

	Page<Resource> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(Resource resource);

	void delete(Long id);

	void update(Resource resource);

}
