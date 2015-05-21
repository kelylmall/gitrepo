package com.github.kelylm.shiro;
import java.io.Serializable;

import javax.annotation.PostConstruct;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.base.Objects;

public class ShiroDbRealm extends AuthorizingRealm {
	
	
	private static Logger logger = LoggerFactory.getLogger(ShiroDbRealm.class);
	

	/**
	 * 认证回调函数,登录时调用.
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
//		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
//		User user = accountService.findUserByLoginName(token.getUsername());
//		logger.info("--user--:{}", JsonUtil.objToJson(user));
//		if (user != null) {
//			if (user.getStatus().trim().equals(UserStatusType.FREEZE.getName())) {
//				logger.info("--user--:{}",user.getLoginName()+"账户已冻结！");
//				throw new DisabledAccountException();
//			}
//			
//			byte[] salt = Encodes.decodeHex(user.getPwdSalt());
//			logger.info("--user--:{}",user.getLoginName()+"认证成功！");
//			return new SimpleAuthenticationInfo(new ShiroUser(user.getId(),
//					user.getLoginName()), user.getPwd(),ByteSource.Util.bytes(salt), getName());
//		} else {
//			logger.info("--user--:{}",token.getUsername()+"账户不存在！");
//			return null;
//		}
		return null;
	}

	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用.
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
//		ShiroUser shiroUser = (ShiroUser) principals.getPrimaryPrincipal();
//		User user = accountService.findUserByLoginName(shiroUser.loginName);
//
//		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
//		for (Role role : user.getRoleList()) {
//			// 基于Role的权限信息
//			info.addRole(role.getRoleName());
//			// 基于Permission的权限信息
//			List<String> permissionList = role.getPermissionList();
//			if(permissionList!=null&&!permissionList.isEmpty()){
//				// Permission的权限信息
//			}
//			info.addStringPermissions(role.getPermissionList());
//		}
//		return info;
		return null;
	}

	/**
	 * 设定Password校验的Hash算法与迭代次数.
	 */
	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(
				AccountService.HASH_ALGORITHM);
		matcher.setHashIterations(AccountService.HASH_INTERATIONS);

		setCredentialsMatcher(matcher);
	}

	
	
	/**
	 * 自定义Authentication对象，使得Subject除了携带用户的登录名外还可以携带更多信息.
	 */
	public static class ShiroUser implements Serializable {
		private static final long serialVersionUID = -1373760761780840081L;

		public Long id;
		public String loginName;

		public ShiroUser(Long id, String loginName) {
			this.id = id;
			this.loginName = loginName;
		}

	
		/**
		 * 本函数输出将作为默认的<shiro:principal/>输出.
		 */
		@Override
		public String toString() {
			return loginName;
		}

		/**
		 * 重载hashCode,只计算loginName;
		 */
		@Override
		public int hashCode() {
			return Objects.hashCode(loginName);
		}

		/**
		 * 重载equals,只计算loginName;
		 */
		@Override
		public boolean equals(Object obj) {
			if (this == obj) {
				return true;
			}
			if (obj == null) {
				return false;
			}
			if (getClass() != obj.getClass()) {
				return false;
			}
			ShiroUser other = (ShiroUser) obj;
			if (loginName == null) {
				if (other.loginName != null) {
					return false;
				}
			} else if (!loginName.equals(other.loginName)) {
				return false;
			}
			return true;
		}
	}
}
