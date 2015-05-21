package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.UserAppRoles;

@Repository("userAppRolesDao")
public interface UserAppRolesDao {

	UserAppRoles get(Long id);

	List<UserAppRoles> search(Map<String, Object> parameters);

	Page<UserAppRoles> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(UserAppRoles userAppRoles);

	void delete(Long id);

	void update(UserAppRoles userAppRoles);

}
