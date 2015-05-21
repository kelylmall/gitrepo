package com.github.kelylm.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.github.kelylm.entity.User;

@Repository("userDao")
public interface UserDao {

	User get(Long id);

	List<User> search(Map<String, Object> parameters);

	Page<User> searchPage(@Param("searchFields") Map<String, Object> searchParams, Pageable pageRequest);

	void insert(User user);

	void delete(Long id);

	void update(User user);

}
