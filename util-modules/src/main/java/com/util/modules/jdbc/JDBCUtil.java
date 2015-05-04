package com.util.modules.jdbc;

import javax.sql.DataSource;
import java.lang.reflect.Field;
import java.sql.*;
import java.util.*;

/**
 * Created by kelylm on 15-4-30.
 */
public class JDBCUtil {

    public static final int DEFAULT_SIZE = 100;

    /**
     * 批量操作的默认值
     */
    private int batchSize = DEFAULT_SIZE;

    /**
     * 数据源
     */
    private DataSource dataSource;


    private static JDBCUtil jdbcUtil = null;

    public JDBCUtil() {
    }

    public static synchronized JDBCUtil getInstance() {
        if (jdbcUtil == null) {
            jdbcUtil = new JDBCUtil();
        }
        return jdbcUtil;
    }

    public JDBCUtil(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static Connection getConnection(String url, String username, String password) throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }


    /**
     * 插入
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */
    public int insert(String sql, Object... params) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            int rows = executeUpdate(sql, params, conn);
            return rows;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }


    }

    /**
     * 更新
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */

    public int update(String sql, Object... params) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            int rows = executeUpdate(sql, params, conn);
            return rows;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return rows;
    }


    /**
     * 查询
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */
    public ResultSet query(String sql, Object... params) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            ResultSet resultSet = query(sql, params, conn);
            return resultSet;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
    }

    private ResultSet query(String sql, Object[] params, Connection conn) throws SQLException {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            resultSet = preparedStatement.executeQuery();
        } catch (SQLException e) {
            throw outSqlException(e, sql, params);
        } finally {
            close(resultSet, preparedStatement, conn);

        }
        return resultSet;

    }

    /**
     * 用于批量插入和批量更新
     *
     * @param sql
     * @param list
     */
    public List<int[]> batch(String sql, List<Object[]> list) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            List<int[]> resultList = batch(sql, list, conn);
            return resultList;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }

    }

    public List<int[]> batch(String sql, List<Object[]> list, Connection conn) throws SQLException {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<int[]> resultList = new ArrayList<>();
        try {
            conn.setAutoCommit(false);
            preparedStatement = conn.prepareStatement(sql);
            List<Object[]> limitList = new ArrayList<>();
            int count = 0;
            for (int i = 0; i < list.size(); i++) {
                limitList.add(list.get(i));
                count++;
                if (count >= DEFAULT_SIZE) {
                    int[] ints = executeBatch(preparedStatement, limitList);
                    resultList.add(ints);
                    limitList = new ArrayList<>();
                    count = 0;
                }
            }
            if (!limitList.isEmpty()) {
                int[] ints = executeBatch(preparedStatement, limitList);
                resultList.add(ints);
            }
            conn.commit();
        } catch (SQLException e) {
            conn.rollback();
            throw e;
        } finally {
            close(resultSet, preparedStatement, conn);
        }
        return resultList;
    }

    private int[] executeBatch(PreparedStatement preparedStatement, List<Object[]> limitList) throws SQLException {
        for (Object[] objects : limitList) {
            setPreparedStatementValue(preparedStatement, objects);
            preparedStatement.addBatch();
        }
        int[] ints = preparedStatement.executeBatch();
        return ints;
    }

    /**
     * 批量执行sql(insert、update、delete)
     *
     * @param sqls
     * @return
     * @throws SQLException
     */
    public List<int[]> batchExecuteSql(String[] sqls) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            List<int[]> resultList = batchExecuteSql(sqls, conn);
            return resultList;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
    }

    public List<int[]> batchExecuteSql(String[] sqls, Connection conn) throws SQLException {
        Statement stmt = conn.createStatement();
        ResultSet resultSet = null;
        int count = 0;
        List<int[]> resultList = new ArrayList<>();
        try {

            if (sqls != null) {
                conn.setAutoCommit(false);
                for (int i = 0; i < sqls.length; i++) {
                    count++;
                    if (count < DEFAULT_SIZE) {
                        stmt.addBatch(sqls[i]);
                    } else if (count == DEFAULT_SIZE) {
                        stmt.addBatch(sqls[i]);
                        int[] ints = stmt.executeBatch();
                        resultList.add(ints);
                        count = 0;
                    }
                }
                if (count != 0) {
                    int[] ints = stmt.executeBatch();
                    resultList.add(ints);
                }
                conn.commit();
            }
        } catch (SQLException e) {
            conn.rollback();
            throw e;
        } finally {
            close(resultSet, stmt, conn);
        }
        return resultList;
    }

    /**
     * 返回多条记录
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */
    public List<Map<String, Object>> findMoreResult(String sql,
                                                    Object[] params, Connection connection) throws SQLException {
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        int index = 1;
        PreparedStatement pstmt = connection.prepareStatement(sql);
        ResultSet resultSet = null;

        for (int i = 0; i < params.length; i++) {
            pstmt.setObject(index++, params[i]);
        }

        resultSet = pstmt.executeQuery(); // 返回查询结果
        ResultSetMetaData metaData = resultSet.getMetaData();
        int cols_len = metaData.getColumnCount(); // 获得列的数量
        while (resultSet.next()) {
            Map<String, Object> map = new HashMap<String, Object>();
            for (int i = 0; i < cols_len; i++) {
                String cols_name = metaData.getColumnName(i + 1);
                Object cols_value = resultSet.getObject(cols_name);
                if (cols_value == "") {
                    cols_value = "";
                }
                map.put(cols_name, cols_value);
            }
            list.add(map);
        }
        return list;
    }


    /**
     * jdbc的封装可以用反射机制来封装
     *
     * @param sql
     * @param params
     * @param cls
     * @param <T>
     * @return
     * @throws Exception
     */
    public <T> T findSingleRefResult(String sql, Object[] params,
                                     Class<T> cls) throws Exception {
        Connection connection = dataSource.getConnection();
        T resultObject = null;
        ResultSet resultSet = null;
        int index = 1;
        PreparedStatement pstmt = connection.prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            pstmt.setObject(index++, params[i]);
        }
        resultSet = pstmt.executeQuery(); // 返回查询结果
        ResultSetMetaData metaData = resultSet.getMetaData();
        int cols_len = metaData.getColumnCount(); // 获得列的数量
        while (resultSet.next()) {
            // 通过反射机制创建实例
            resultObject = cls.newInstance();
            for (int i = 0; i < cols_len; i++) {
                String cols_name = metaData.getColumnName(i + 1);
                Object cols_value = resultSet.getObject(cols_name);
                if (cols_value == "") {
                    cols_value = "";
                }
                Field field = cls.getDeclaredField(cols_name);
                field.setAccessible(true); // 打开javabean的访问private权限
                field.set(resultObject, cols_value);
            }
        }
        return resultObject;
    }

    public <T> List<T> findMoreRefResult(String sql, Object[] params,
                                         Class<T> cls) throws Exception {
        List<T> list = new ArrayList<T>();
        Connection connection = dataSource.getConnection();
        ResultSet resultSet = null;
        PreparedStatement pstmt = connection.prepareStatement(sql);
        try {
            int index = 1;
            for (int i = 0; i < params.length; i++) {
                pstmt.setObject(index++, params[i]);
            }
            resultSet = pstmt.executeQuery(); // 返回查询结果
            ResultSetMetaData metaData = resultSet.getMetaData();
            int cols_len = metaData.getColumnCount(); // 获得列的数量
            while (resultSet.next()) {
                // 通过反射机制创建实例
                T resultObject = cls.newInstance();
                for (int i = 0; i < cols_len; i++) {
                    String cols_name = metaData.getColumnName(i + 1);
                    Object cols_value = resultSet.getObject(cols_name);
                    if (cols_value == "") {
                        cols_value = "";
                    }
                    Field field = cls.getDeclaredField(cols_name);
                    field.setAccessible(true); // 打开javabean的访问private权限
                    field.set(resultObject, cols_value);
                }
                list.add(resultObject);
            }
        } finally {
            close(resultSet, pstmt, connection);
        }
        return list;
    }

    /**
     * 删除
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */

    public int delete(String sql, Object... params) throws SQLException {
        Connection conn = dataSource.getConnection();
        try {
            int rows = executeUpdate(sql, params, conn);
            return rows;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
    }

    public int executeUpdate(String sql, Object[] params, Connection conn) throws SQLException {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            conn.setAutoCommit(false);
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            rows = preparedStatement.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            conn.rollback();
            throw outSqlException(e, sql, params);
        } finally {
            close(resultSet, preparedStatement, conn);

        }
        return rows;
    }


    /**
     * 输出执行的sql和参数
     *
     * @param cause
     * @param sql
     * @param params
     * @return
     */
    protected static SQLException outSqlException(SQLException cause, String sql, Object... params) {

        String errorMsg = cause.getMessage();
        if (errorMsg == null) {
            errorMsg = "";
        }
        StringBuffer msg = new StringBuffer(errorMsg);

        msg.append(" \r\nexecuteSql: ");
        msg.append(sql);
        msg.append(" \r\nParameters: ");
        if (params == null) {
            msg.append("[]");
        } else {
            msg.append(Arrays.deepToString(params));
        }
        SQLException e = new SQLException(msg.toString(), cause.getSQLState(), cause.getErrorCode());
        e.setNextException(cause);

        return e;
    }

    /**
     * 设置占位符？的值
     *
     * @param preparedStatement
     * @param params
     * @throws SQLException
     */
    private void setPreparedStatementValue(PreparedStatement preparedStatement, Object[] params) throws SQLException {
        if (params == null || params.length <= 0) {
            throw new SQLException("params is null");
        }

        for (int i = 0; i < params.length; i++) {
            if (params[i] != null) {
                preparedStatement.setObject(i + 1, params[i]);
            } else {
                int sqlType = Types.VARCHAR;
                preparedStatement.setNull(i + 1, sqlType);
            }
        }


    }

    /**
     * 释放资源
     *
     * @param resultSet
     * @param statement
     * @param conn
     */
    private void close(ResultSet resultSet, Statement statement, Connection conn) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException e) {
            //ignore
        } finally {
            try {
                resultSet = null;
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {
                //ignore
            } finally {
                try {
                    statement = null;
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    //ignore
                } finally {
                    conn = null;
                }
            }
        }
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    public int getBatchSize() {
        return batchSize;
    }

    public void setBatchSize(int batchSize) {
        this.batchSize = batchSize;
    }


}
