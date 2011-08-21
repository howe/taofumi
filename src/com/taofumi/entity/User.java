package com.taofumi.entity;

import lombok.Data;

/**
 * 用户类
 * 
 * @author yangq
 */
@Data
@SuppressWarnings("unused")
public class User {
    private int    id;
    private String userName;
    private String password;
    private String email;
    private String safeCode;
    private String identify;
    private String status;
}
