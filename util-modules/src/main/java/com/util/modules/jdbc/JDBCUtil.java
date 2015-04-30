package com.util.modules.jdbc;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by kelylm on 15-4-30.
 */
public class JDBCUtil {

    public static final int DEFAULT_SIZE = 200;

    /**
     *批量操作的默认值
     */
    private int batchSize = DEFAULT_SIZE;

    /**
     * 数据源
     */
    private DataSource dataSource;

    public JDBCUtil() {
    }

    public JDBCUtil(DataSource dataSource) {
        this.dataSource = dataSource;
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
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            rows = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw returnSqlException(e, sql, params);
        } finally {
            close(resultSet, preparedStatement, conn);

        }
        return rows;

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
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            rows = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw returnSqlException(e, sql, params);
        } finally {
            close(resultSet, preparedStatement, conn);

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
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            resultSet = preparedStatement.executeQuery();
        } catch (SQLException e) {
            throw returnSqlException(e, sql, params);
        } finally {
            close(resultSet, preparedStatement, conn);

        }
        return resultSet;

    }

    /**
     * 用于批量插入和批量更新
     * @param sql
     * @param list
     */
    public List<int[]> batch(String sql, List<Object[]> list) throws SQLException {
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<int[]> resultList=new ArrayList<>();
        try {
            preparedStatement = conn.prepareStatement(sql);
            List<Object[]> limitList=new ArrayList<>();
            int count=0;
            for (int i = 0; i <list.size(); i++) {
                limitList.add(list.get(i));
                count++;
                if(count>=DEFAULT_SIZE){
                    int[] ints = executeBatch(preparedStatement, limitList);
                    resultList.add(ints);
                }
            }
            if(!limitList.isEmpty()){
                int[] ints = executeBatch(preparedStatement, limitList);
                resultList.add(ints);
            }

        } catch (SQLException e) {
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
     * 删除
     *
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */

    public int delete(String sql, Object... params) throws SQLException {
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        int rows = 0;
        try {
            preparedStatement = conn.prepareStatement(sql);
            setPreparedStatementValue(preparedStatement, params);
            rows = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw returnSqlException(e, sql, params);
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
    protected static SQLException returnSqlException(SQLException cause, String sql, Object... params) {

        String errorMsg = cause.getMessage();
        if (errorMsg == null) {
            errorMsg = "";
        }
        StringBuffer msg = new StringBuffer(errorMsg);

        msg.append("executeSql: ");
        msg.append(sql);
        msg.append(" Parameters: ");
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
     * @param preparedStatement
     * @param conn
     */
    private void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection conn) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException e) {
            //ignore
        } finally {
            try {
                resultSet = null;
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                //ignore
            } finally {
                try {
                    preparedStatement = null;
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
