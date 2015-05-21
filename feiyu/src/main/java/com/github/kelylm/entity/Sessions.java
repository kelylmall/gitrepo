package com.github.kelylm.entity;


public class Sessions {

	//alias
	public static final String TABLE_ALIAS = "Sessions";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SESSION = "session";

	/**
	 * 
	 */
	private String id;
	/**
	 * 
	 */
	private String session;

	public java.lang.String getId() {
		return this.id;
	}
	
	public void setId(java.lang.String value) {
		this.id = value;
	}
	public java.lang.String getSession() {
		return this.session;
	}
	
	public void setSession(java.lang.String value) {
		this.session = value;
	}
}