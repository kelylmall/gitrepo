package com.github.kelylm.status;

public enum UserStatusType {
	ABLED("able"), // 可用
	FREEZE("freeze");// 冻结
	private String name;

	private UserStatusType(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static void main(String[] args) {
		System.out.println(UserStatusType.ABLED.name);
	}

}
