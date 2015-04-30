package modules.json;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @FileName BaseBean.java
 * @Description: json 序列化
 * @author ming.li@lingcaibao.com
 * @date 2015年1月9日 下午4:02:18
 * @version V1.0
 */
public class BaseBean implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 1L;
	// 布尔类型
	private boolean flag = true;
	// 字符类型
	private char ch = 'a';
	// 数值类型：又分为整数类型和浮点类型
	private long reqId = 10L;
	private int count = 1111;
	private double money = 2222d;
	private float amount = 3333f;
	private byte bty;
	private short st = 444;

	// -------------对象--------------------//
	private String id;
	private BigDecimal point;
	private List<User> list;
	private Map<String, User> map;

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public char getCh() {
		return ch;
	}

	public void setCh(char ch) {
		this.ch = ch;
	}

	public long getReqId() {
		return reqId;
	}

	public void setReqId(long reqId) {
		this.reqId = reqId;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public byte getBty() {
		return bty;
	}

	public void setBty(byte bty) {
		this.bty = bty;
	}

	public short getSt() {
		return st;
	}

	public void setSt(short st) {
		this.st = st;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getPoint() {
		return point;
	}

	public void setPoint(BigDecimal point) {
		this.point = point;
	}

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public Map<String, User> getMap() {
		return map;
	}

	public void setMap(Map<String, User> map) {
		this.map = map;
	}

}
