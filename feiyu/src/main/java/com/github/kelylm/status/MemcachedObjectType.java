package com.github.kelylm.status;

/**
 * 统一定义Memcached中存储的各种对象的Key前缀和超时时间.
 * 
 * @author calvin
 */
public enum MemcachedObjectType {
	USER("user:", 60 * 60 * 1);
	private String prefix;
	private int expiredTime;

	MemcachedObjectType(String prefix, int expiredTime) {
		this.prefix = prefix;
		this.expiredTime = expiredTime;
	}

	public String getPrefix() {
		return prefix;
	}

	public int getExpiredTime() {
		return expiredTime;
	}

	public static void main(String[] args) {
		String prefix2 = MemcachedObjectType.USER.getPrefix();
		System.out.println(prefix2);
	}
}