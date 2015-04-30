package modules.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.PropertyPreFilter;
import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;
import junit.framework.Assert;
import junit.framework.TestCase;

import java.lang.reflect.Type;
import java.util.*;

/**
 * @FileName Demo.java
 * @Description: TODO
 * @author ming.li@lingcaibao.com
 * @date 2015年1月9日 下午4:21:25
 * @version V1.0
 */

public class DemoJSON extends TestCase {

	// Object序列化为json字符串
	public static void test1() {
		BaseBean bean = new BaseBean();
		String json = JSON.toJSONString(bean);
		System.out.println(json);
	}

	// json字符串反序列为java对象
	public static void test2() {
		BaseBean bean = new BaseBean();
		String json = JSON.toJSONString(bean);
		BaseBean parseObject = JSON.parseObject(json, BaseBean.class);
		System.out.println("object" + parseObject);
		System.out.println("object to json" + JSON.toJSONString(parseObject));
	}

	// 集合序列化为json字符串
	public static void test3() {
		List<User> list = new ArrayList<>();
		User user = new User();
		list.add(user);
		BaseBean bean = new BaseBean();
		bean.setList(list);
		String json = JSON.toJSONString(bean);
		System.out.println(json);
	}

	public static void test4() {
		List<User> list = new ArrayList<>();
		User user = new User();
		list.add(user);
		BaseBean bean = new BaseBean();
		bean.setList(list);
		String json = JSON.toJSONString(bean);

		BaseBean parseObject = JSON.parseObject(json, BaseBean.class);
		System.out.println("object to json" + JSON.toJSONString(parseObject));
	}

	// 泛型反序列化
	@SuppressWarnings("unchecked")
	public static <T> void testList5() {
		List<T> list = new ArrayList<T>();
		User user = new User();
		list.add((T) user);
		String json = JSON.toJSONString(list);
		List<T> parseObject = JSON.parseObject(json, new TypeReference<List<T>>() {
		});
		System.out.println("list to json" + JSON.toJSONString(parseObject));
	}

	// 泛型反序列化
	@SuppressWarnings("unchecked")
	public static <T, E> void testMap5() {
		Map<T, E> map = new HashMap<>();
		User user = new User();
		map.put((T) "key1", (E) user);
		String json = JSON.toJSONString(map);

		Map<T, E> parseObject = JSON.parseObject(json, new TypeReference<Map<T, E>>() {
		});
		System.out.println("map to json" + JSON.toJSONString(parseObject));
	}

	/**
	 * @JSONField使用
	 * @throws
	 */
	public static void test6() {
		A a = new A();
		String json = JSON.toJSONString(a);
		System.out.println(json);

		A parseObject = JSON.parseObject(json, A.class);
		System.out.println(JSON.toJSONString(parseObject));
		int id = parseObject.getId();
		System.out.println(id);

	}

	/**
	 * 日期序列化 反序列化能够自动识别如下日期格式： ISO-8601日期格式. yyyy-MM-dd. yyyy-MM-dd HH:mm:ss.
	 * yyyy-MM-dd HH:mm:ss.SSS 毫秒数字 毫秒数字字符串
	 * 
	 * @throws
	 */
	public static void testDate() {
		Date date = new Date();
		String json = JSON.toJSONStringWithDateFormat(date, "yyyy-MM-dd HH:mm:ss");
		System.out.println(json);

		Date parseObject = JSON.parseObject(json, Date.class);
		A a = new A();
		System.out.println(JSON.toJSONStringWithDateFormat(a, "yyyy-MM-dd HH:mm:ss"));
		Assert.assertEquals(json, JSON.toJSONStringWithDateFormat(parseObject, "yyyy-MM-dd HH:mm:ss"));
	}

	/**
	 * 定制化序列 需要根据不同的环境返回定制化返回属性时，使用SimplePropertyPreFilter过滤属性。
	 * 
	 * @throws
	 */
	public static void testCustomer() {

		Vo vo = new Vo();
		vo.setId(123);
		vo.setName("flym");
		SimplePropertyPreFilter filter = new SimplePropertyPreFilter(Vo.class, "name");
		System.out.println(JSON.toJSONString(vo, filter));
		Assert.assertEquals("{\"name\":\"flym\"}", JSON.toJSONString(vo, filter));
	}

	/**
	 * 定制化序列 通过SerializeFilter定制序列化。 astjson提供了多种SerializeFilter：
	 * PropertyPreFilter 根据PropertyName判断是否序列化; PropertyFilter
	 * 根据PropertyName和PropertyValue来判断是否序列化 ; NameFilter
	 * 修改Key，如果需要修改Key,process返回值则可; ValueFilter 修改Value BeforeFilter
	 * 序列化时在最前添加内容 AfterFilter 序列化时在最后添加内容
	 * wiki:https://github.com/alibaba/fastjson/wiki/SerializeFilter
	 * 
	 * @throws
	 */
	public static void testCustomer1() {
		Vo vo = new Vo();
		vo.setId(123);
		vo.setName("flym");
		// PropertyName和PropertyValue来判断是否序列化
		PropertyPreFilter popFilter = new PropertyPreFilter() {
			@Override
			public boolean apply(	JSONSerializer serializer,
									Object object,
									String name) {
				if ("id".equals(name)) {
					int intValue = ((Vo) object).getId();
					return intValue >= 200;
				}
				return true;
			}
		};

		String json = JSON.toJSONString(vo, popFilter);
		System.out.println(json);
	}

	/**
	 * 定制反序列化 ParseProcess是编程扩展定制反序列化的接口。fastjson支持如下ParseProcess：
	 * 
	 * ExtraProcessor 用于处理多余的字段 ExtraTypeProvider 用于处理多余字段时提供类型信息
	 * 
	 * @throws
	 */
	public static void testCustomer2() {

		ExtraProcessor processor = new ExtraProcessor() {
			@SuppressWarnings("unchecked")
			public void processExtra(	Object object,
										String key,
										Object value) {
				Vo vo = (Vo) object;
				vo.getMap().put(key, value);
			}
		};

		ExtraTypeProvider provider = new ExtraTypeProvider() {
			@Override
			public Type getExtraType(	Object object,
										String key) {
				Vo vo = (Vo) object;
				System.out.println(key);
				return null;
			}
		};
		Vo parseObject = JSON.parseObject("{\"id\":123,\"name\":\"abc\"}", Vo.class, processor);
		System.out.println(JSON.toJSONString(parseObject));

		// Vo parseObject1 = JSON.parseObject("{\"id\":123,\"name\":\"abc\"}",
		// Vo.class, provider);
		// System.out.println(JSON.toJSONString(parseObject1));
	}

}
