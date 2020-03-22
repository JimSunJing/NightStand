package com.jimmy.utils.typeHandler;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 为Mybatis处理json格式数据提供处理解决方案
 * @MappedTypes(JSONArray.class) 转换的目标类型
 */
@MappedTypes(JSONArray.class)
@MappedJdbcTypes(JdbcType.VARCHAR)
public class JsonArrayHandler extends BaseTypeHandler<JSONArray> {

    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, JSONArray objects, JdbcType jdbcType) throws SQLException {
        ps.setString(i,String.valueOf(objects.toJSONString()));
    }

    @Override
    public JSONArray getNullableResult(ResultSet resultSet, String columnName) throws SQLException {
        String sqlJson = resultSet.getString(columnName);
        if (sqlJson!=null){
            return JSON.parseArray(sqlJson);
        }
        return null;
    }

    @Override
    public JSONArray getNullableResult(ResultSet resultSet, int columnIndex) throws SQLException {
        String sqlJson = resultSet.getString(columnIndex);
        if (sqlJson!=null){
            return JSONArray.parseArray(sqlJson);
        }
        return null;
    }

    @Override
    public JSONArray getNullableResult(CallableStatement callableStatement, int columnIndex) throws SQLException {
        String sqlJson = callableStatement.getString(columnIndex);
        if (sqlJson!=null){
            return JSONArray.parseArray(sqlJson);
        }
        return null;
    }
}
