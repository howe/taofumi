package com.taofumi.share.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
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

    // 添加用户
    public void addUser(User user) {
        String sql = "insert into tb_user values(:userName,:password,:email,:safeCode,:identify,:status)";
        SqlParameterSource sqs = new BeanPropertySqlParameterSource(user);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        simpleJdbcTemplate.getNamedParameterJdbcOperations().update(sql, sqs, keyHolder);
        System.out.println(keyHolder.getKey().intValue());
    }

}
