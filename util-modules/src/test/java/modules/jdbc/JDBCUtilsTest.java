package modules.jdbc;

import com.alibaba.fastjson.JSON;
import com.util.modules.jdbc.JDBCUtil;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class JDBCUtilsTest {
	private static final  String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
	private static String username = "root";
	private static String password = "a123456";
	private static String driverName = "com.mysql.jdbc.Driver";
	Connection conn;

	@Before
	public void beforeTest() throws ClassNotFoundException, SQLException {
		Class.forName(driverName);
		DriverManager.getConnection(url, username, password);
		this.conn = DriverManager.getConnection(url, username, password);
	}

	@After
	public void afterTest() throws SQLException {
		this.conn.close();
	}


	public static String INSERT_SQL = "INSERT INTO test (id, user_name, age, brithday, isLock, value) VALUES (?, ?, ?, ?, ?,?)";

	@Test
	public void testInsert() throws SQLException {
		Object[] param=new Object[]{UUID.randomUUID().toString(),"test",12,new Date(),0,11};
		JDBCUtil JDBCUtil=new JDBCUtil();
		int i = JDBCUtil.executeUpdate(INSERT_SQL, param, conn);
		System.out.println(i);
//		int j=1/0;
	}

	@Test
	public void testBatch() throws SQLException {
		List<Object[]> list=new ArrayList<>();
		for (int i = 0; i <10000 ; i++) {
			Object[] param=new Object[]{UUID.randomUUID().toString(),"test",12,new Date(),0,i};
			list.add(param);
		}
		long s= System.currentTimeMillis();
		System.out.println(s);
		JDBCUtil JDBCUtil=new JDBCUtil();
		JDBCUtil.batch(INSERT_SQL, list, conn);
		long e = System.currentTimeMillis();
		System.out.println(e-s);
	}

	@Test
	public void testInsertByOne() throws SQLException {

		long s= System.currentTimeMillis();
		System.out.println(s);
		for (int i = 0; i <10000 ; i++) {
			JDBCUtil JDBCUtil=new JDBCUtil();
			Object[] param=new Object[]{UUID.randomUUID().toString(),"test",12,new Date(),0,i};
			JDBCUtil.executeUpdate(INSERT_SQL, param, conn);
		}
		long e = System.currentTimeMillis();
		System.out.println(e-s);
	}

}
