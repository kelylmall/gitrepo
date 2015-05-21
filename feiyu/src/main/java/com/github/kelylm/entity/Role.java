package com.github.kelylm.entity;


public class Role {

	//alias
	public static final String TABLE_ALIAS = "Role";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ROLE = "role";
	public static final String ALIAS_DESCRIPTION = "description";
	public static final String ALIAS_RESOURCE_IDS = "resourceIds";
	public static final String ALIAS_AVAILABLE = "available";

	/**
	 * 
	 */
	private Long id;
	/**
	 * 
	 */
	private String role;
	/**
	 * 
	 */
	private String description;
	/**
	 * 
	 */
	private String resourceIds;
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
	public java.lang.String getRole() {
		return this.role;
	}
	
	public void setRole(java.lang.String value) {
		this.role = value;
	}
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	public java.lang.String getResourceIds() {
		return this.resourceIds;
	}
	
	public void setResourceIds(java.lang.String value) {
		this.resourceIds = value;
	}
	public java.lang.Boolean getAvailable() {
		return this.available;
	}
	
	public void setAvailable(java.lang.Boolean value) {
		this.available = value;
	}
}