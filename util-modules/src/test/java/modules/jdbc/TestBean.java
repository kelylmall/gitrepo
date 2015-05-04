package modules.jdbc;

import java.util.Date;

public class TestBean {

	private String userName;
	private int age;
	private Date brithday;
	private boolean isLock;
	private double value;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}


	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBrithday() {
		return brithday;
	}

	public void setBrithday(Date brithday) {
		this.brithday = brithday;
	}

	public boolean isLock() {
		return isLock;
	}

	public void setIsLock(boolean isLock) {
		this.isLock = isLock;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}
}
