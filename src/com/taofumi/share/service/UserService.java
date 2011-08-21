package com.taofumi.share.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.taofumi.share.dao.UserDao;
import com.taofumi.share.entity.User;

@Service
@Transactional
public class UserService {
    @Resource(name = "userDao")
    private UserDao dao;

    // 添加用户
    public void addUser(User user) {
        dao.addUser(user);
    }
}
