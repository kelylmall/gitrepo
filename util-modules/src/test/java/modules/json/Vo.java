package modules.json;

import java.util.HashMap;
import java.util.Map;

/**
 * @FileName Vo.java
 * @Description: TODO
 * @author ming.li@lingcaibao.com
 * @date 2015年1月9日 下午5:22:26
 * @version V1.0
 */
public class Vo {
	private int id;
	private String name;

	private Map map = new HashMap<>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

}
