package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.Sessions;

@Repository("sessionsDao")
public interface SessionsDao {

	Sessions get(Long id);

	List<Sessions> search(Map<String, Object> parameters);

	Page<Sessions> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(Sessions sessions);

	void delete(Long id);

	void update(Sessions sessions);

}
