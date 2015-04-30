package modules.json;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

/**
 * @FileName A.java
 * @Description: TODO
 * @author ming.li@lingcaibao.com
 * @date 2015年1月9日 下午4:52:23
 * @version V1.0
 */
public class A {

	// 使用ordinal指定字段的顺序,这个特性需要1.1.42以上版本。
	@JSONField(ordinal = 3, name = "ID")
	private int id = 100;

	// 字段不序列化
	@JSONField(serialize = false, ordinal = 2)
	private String userId = "u1111";

	// 字段不反序列化
	@JSONField(deserialize = true, ordinal = 1)
	private String bId = "b2222";

	private String noId = "n3333";

	// 配置date序列化和反序列使用yyyyMMdd日期格式
	@JSONField(format = "yyyyMMdd", ordinal = 0)
	private Date date = new Date();

	public int getId() {
		return id;
	}

	public void setId(int value) {
		this.id = value;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getNoId() {
		return noId;
	}

	public void setNoId(String noId) {
		this.noId = noId;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

}
