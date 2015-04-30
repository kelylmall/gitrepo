package com.util.modules.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;


public class DatabaseUtil {

    /**
     * 数据源
     */
    private DataSource dataSource;

    /**
     * 数据库连接
     */
    public Connection conn;

    /**
     * 获取数据源
     *
     * @return 数据源
     */
    public DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 设置数据源
     *
     * @param dataSource 数据源
     */
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * 获取数据库连接
     *
     * @return conn
     */
    public Connection getConnection() {
        try {
            conn = dataSource.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return conn;
    }

    /**
     * 关闭数据库连接
     *
     * @param conn
     */
    public void closeConnection(Connection conn) {
        if (null != conn) {
            try {
                conn.close();
                conn = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 获取执行SQL的工具
     *
     * @param conn 数据库连接
     * @return stmt
     */
    public int getFoundRows(Connection conn) {
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = getStatement(conn);
            rs = stmt.executeQuery("SELECT FOUND_ROWS()");
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeStatement(stmt);
            closeResultSet(rs);
        }
        return 0;
    }

    /**
     * 获取执行SQL的工具
     *
     * @param conn 数据库连接
     * @return stmt
     */
    public Statement getStatement(Connection conn) {
        Statement stmt = null;
        try {
            stmt = conn.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return stmt;
    }

    /**
     * 获取执行SQL的工具
     *
     * @param conn 数据库连接
     * @param sql  SQL语句
     * @return prepStmt
     */
    public PreparedStatement getPrepStatement(Connection conn, String sql) {
        PreparedStatement prepStmt = null;
        try {
            prepStmt = conn.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return prepStmt;
    }

    /**
     * 关闭数据库资源
     *
     * @param stmt
     */
    public void closeStatement(Statement stmt) {
        if (null != stmt) {
            try {
                stmt.close();
                stmt = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 关闭数据库资源
     *
     * @param prepStmt
     */
    public void closePrepStatement(PreparedStatement prepStmt) {
        if (null != prepStmt) {
            try {
                prepStmt.close();
                prepStmt = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 获取结果集
     *
     * @param stmt 执行SQL的工具
     * @param sql  SQL语句
     * @return 结果集
     */
    public ResultSet getResultSet(Statement stmt, String sql) {
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 关闭数据库资源
     *
     * @param rs
     */
    public void closeResultSet(ResultSet rs) {
        if (null != rs) {
            try {
                rs.close();
                rs = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
