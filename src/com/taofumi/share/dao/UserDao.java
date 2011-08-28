package com.taofumi.share.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ConnectionCallback;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.taofumi.share.entity.User;

@Repository
public class UserDao {
    private SimpleJdbcTemplate simpleJdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }

    /**
     * 添加用户并返回该用户主键
     * 
     * @param user
     * @return id
     */
    public Integer addUser(User user) {
        /** 用户密码MD5加密 */

        String sql = "insert into tb_user values(:id,:username,:password,:email,:safecode,:identify,:status)";
        SqlParameterSource sqs = new BeanPropertySqlParameterSource(user);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        simpleJdbcTemplate.getNamedParameterJdbcOperations().update(sql, sqs, keyHolder);
        return keyHolder.getKey().intValue();
    }

    /**
     * 通过用户表主键删除该用户
     * 
     * @param id
     * @return
     */
    public boolean delUser(String id) {
        String sql = "delete from tb_user where id=?";
        int rs = simpleJdbcTemplate.update(sql, id);
        if (rs > 0) {
            return true;
        }
        return false;
    }

    /**
     * 修改用户
     * 
     * @param user
     * @return
     */
    public boolean updateUser(User user) {
        /** 用户密码MD5加密 */

        String sql = "update tb_user set username=:username,password=:password,email=:email,safecode=:safecode,identify=:identify,status=:status where id=:id";
        SqlParameterSource param = new BeanPropertySqlParameterSource(user);
        int rs = simpleJdbcTemplate.update(sql, param);
        if (rs > 0) {
            return true;
        }
        return false;
    }

    /**
     * 通过用户主键查询用户 行映射器
     * 
     * @param id
     * @return
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
    public User queryUserById(int id) {
        String sql = "select * from tb_user where id= ?";
        User user = simpleJdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper(User.class), id);
        return user;
    }

    /**
     * 查询所有用户
     * 
     * @return
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
    public List<User> queryAllUser(int id) {
        String sql = "select * from tb_user where id> ?";
        Object[] args = { id };
        List<User> list = simpleJdbcTemplate.getJdbcOperations()
                .query(sql, args, new BeanPropertyRowMapper(User.class));
        return list;
    }

    /**
     * 获取数据库连接做更灵活的操作
     */
    public void doMore() {
        simpleJdbcTemplate.getJdbcOperations().execute(new ConnectionCallback<Object>() {
            @Override
            public Object doInConnection(Connection con) throws SQLException, DataAccessException {
                System.out.println(con);
                return null;
            }
        });
    }
}
