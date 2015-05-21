package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.App;

@Repository("appDao")
public interface AppDao {

	App get(Long id);

	List<App> search(Map<String, Object> parameters);

	Page<App> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(App app);

	void delete(Long id);

	void update(App app);

}
