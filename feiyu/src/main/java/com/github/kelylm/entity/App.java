package com.github.kelylm.entity;


public class App {

	//alias
	public static final String TABLE_ALIAS = "App";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_APP_KEY = "appKey";
	public static final String ALIAS_APP_SECRET = "appSecret";
	public static final String ALIAS_AVAILABLE = "available";

	/**
	 * 
	 */
	private Long id;
	/**
	 * 
	 */
	private String name;
	/**
	 * 
	 */
	private String appKey;
	/**
	 * 
	 */
	private String appSecret;
	/**
	 * 
	 */
	private Boolean available;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	public java.lang.String getAppKey() {
		return this.appKey;
	}
	
	public void setAppKey(java.lang.String value) {
		this.appKey = value;
	}
	public java.lang.String getAppSecret() {
		return this.appSecret;
	}
	
	public void setAppSecret(java.lang.String value) {
		this.appSecret = value;
	}
	public java.lang.Boolean getAvailable() {
		return this.available;
	}
	
	public void setAvailable(java.lang.Boolean value) {
		this.available = value;
	}
}