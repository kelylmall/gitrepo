package com.github.kelylm.shiro;

import net.spy.memcached.MemcachedClient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.kelylm.entity.User;
import com.github.kelylm.repository.RoleDao;
import com.github.kelylm.repository.UserDao;

@Service
@Transactional
public class AccountService {

	public static final String HASH_ALGORITHM = "SHA-1";

	public static final int HASH_INTERATIONS = 1024;

	private static final int SALT_SIZE = 8;

	private static Logger logger = LoggerFactory.getLogger(AccountService.class);

	@Autowired
	private UserDao userDao;

	@Autowired
	private RoleDao roleDao;

//	@Autowired
//	private MemcachedClient memcachedClient;

	// public void saveUser(User user) {
	//
	// if (isSupervisor(user)) {
	// logger.warn("操作员{}尝试修改超级管理员用户", getCurrentUserName());
	// throw new ServiceException("不能修改超级管理员用户");
	// }
	//
	// // 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	// if (StringUtils.isNotBlank(user.getPlainPassword())) {
	// entryptPassword(user);
	// }
	//
	// userDao.save(user);
	//
	// // 业务日志演示
	// Map<String,Object> logData = Maps.newHashMap();
	// logData.put("userId", user.getId());
	// businessLogger.log("USER", "UPDATE", getCurrentUserName(), logData);
	// }

	/**
	 * 按Id获得用户.
	 */
	// public User getUser(Long id) {
	// return userDao.findOne(id);
	// }

	/**
	 * 按登录名查询用户.
	 */
	public User findUserByLoginName(String loginName) {
		// return userDao.findUserByLoginName(loginName);
		return null;
	}

	public User get(Long id) {
		return null;
	}

	public void registerUser(User user) {
		entryptPassword(user);
		userDao.insert(user);
		// 为用户初始化角色
		// roleDao.

	}

	/**
	 * 获取当前用户数量.
	 */
	// public Long getUserCount() {
	// return userDao.count();
	// }

	/**
	 * 判断是否超级管理员.
	 */
	// private boolean isSupervisor(User user) {
	// return ((user.getId() != null) && (user.getId() == 1L));
	// }

	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	private void entryptPassword(User user) {
		// byte[] salt = Digests.generateSalt(SALT_SIZE);
		// user.setPwdSalt(Encodes.encodeHex(salt));
		// byte[] hashPassword = Digests.sha1(user.getPwd().getBytes(),
		// salt, HASH_INTERATIONS);
		// user.setPwd(Encodes.encodeHex(hashPassword));
	}
}
