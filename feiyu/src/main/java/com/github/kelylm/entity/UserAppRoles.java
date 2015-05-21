package com.github.kelylm.entity;


public class UserAppRoles {

	//alias
	public static final String TABLE_ALIAS = "UserAppRoles";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_APP_ID = "appId";
	public static final String ALIAS_ROLE_IDS = "roleIds";

	/**
	 * 
	 */
	private Long id;
	/**
	 * 
	 */
	private Long userId;
	/**
	 * 
	 */
	private Long appId;
	/**
	 * 
	 */
	private String roleIds;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	public java.lang.Long getAppId() {
		return this.appId;
	}
	
	public void setAppId(java.lang.Long value) {
		this.appId = value;
	}
	public java.lang.String getRoleIds() {
		return this.roleIds;
	}
	
	public void setRoleIds(java.lang.String value) {
		this.roleIds = value;
	}
}