package com.github.kelylm.entity;


public class User {

	//alias
	public static final String TABLE_ALIAS = "User";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ORGANIZATION_ID = "organizationId";
	public static final String ALIAS_USERNAME = "username";
	public static final String ALIAS_PASSWORD = "password";
	public static final String ALIAS_SALT = "salt";
	public static final String ALIAS_LOCKED = "locked";

	/**
	 * 
	 */
	private Long id;
	/**
	 * 
	 */
	private Long organizationId;
	/**
	 * 
	 */
	private String username;
	/**
	 * 
	 */
	private String password;
	/**
	 * 
	 */
	private String salt;
	/**
	 * 
	 */
	private Boolean locked;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	public java.lang.Long getOrganizationId() {
		return this.organizationId;
	}
	
	public void setOrganizationId(java.lang.Long value) {
		this.organizationId = value;
	}
	public java.lang.String getUsername() {
		return this.username;
	}
	
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	public java.lang.String getSalt() {
		return this.salt;
	}
	
	public void setSalt(java.lang.String value) {
		this.salt = value;
	}
	public java.lang.Boolean getLocked() {
		return this.locked;
	}
	
	public void setLocked(java.lang.Boolean value) {
		this.locked = value;
	}
}