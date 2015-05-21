package com.github.kelylm.entity;


public class Resource {

	//alias
	public static final String TABLE_ALIAS = "Resource";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_URL = "url";
	public static final String ALIAS_PARENT_ID = "parentId";
	public static final String ALIAS_PARENT_IDS = "parentIds";
	public static final String ALIAS_PERMISSION = "permission";
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
	private String type;
	/**
	 * 
	 */
	private String url;
	/**
	 * 
	 */
	private Long parentId;
	/**
	 * 
	 */
	private String parentIds;
	/**
	 * 
	 */
	private String permission;
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
	public java.lang.String getType() {
		return this.type;
	}
	
	public void setType(java.lang.String value) {
		this.type = value;
	}
	public java.lang.String getUrl() {
		return this.url;
	}
	
	public void setUrl(java.lang.String value) {
		this.url = value;
	}
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	
	public void setParentId(java.lang.Long value) {
		this.parentId = value;
	}
	public java.lang.String getParentIds() {
		return this.parentIds;
	}
	
	public void setParentIds(java.lang.String value) {
		this.parentIds = value;
	}
	public java.lang.String getPermission() {
		return this.permission;
	}
	
	public void setPermission(java.lang.String value) {
		this.permission = value;
	}
	public java.lang.Boolean getAvailable() {
		return this.available;
	}
	
	public void setAvailable(java.lang.Boolean value) {
		this.available = value;
	}
}