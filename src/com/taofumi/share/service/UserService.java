package com.taofumi.share.service;

import java.util.List;

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

    /**
     * 添加用户并返回该用户主键
     * 
     * @param user
     * @return id
     */
    public int addUser(User user) {
        return dao.addUser(user);
    }

    /**
     * 通过用户表主键删除该用户
     * 
     * @param id
     * @return
     */
    public boolean delUser(String id) {
        return dao.delUser(id);
    }

    /**
     * 修改用户
     * 
     * @param user
     * @return
     */
    public boolean updateUser(User user) {
        return dao.updateUser(user);
    }

    /**
     * 通过用户主键查询用户
     * 
     * @param id
     * @return
     */
    public User queryUserById(int id) {
        return dao.queryUserById(id);
    }

    /**
     * 查询所有用户
     * 
     * @return
     */
    public List<User> queryAllUser() {
        return dao.queryAllUser();
    }
}
