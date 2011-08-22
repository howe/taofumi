package com.taofumi.share.entity;

/**
 * 用户类 所有属性名全部小写
 * 
 * @author yangq
 */
public class User {
    private int    id;
    private String username;
    private String password;
    private String email;
    private String safecode;
    private String identify;
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSafecode() {
        return safecode;
    }

    public void setSafecode(String safecode) {
        this.safecode = safecode;
    }

    public String getIdentify() {
        return identify;
    }

    public void setIdentify(String identify) {
        this.identify = identify;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
