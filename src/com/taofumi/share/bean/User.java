package com.taofumi.share.bean;

import lombok.Data;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

/**
* 
*/
@Data
@Table("tb_user")
public class User {

    @Name
    @Column("ID")
    private String id;
    @Column("USERNAME")
    private String userName;
    @Column("PASSWORD")
    private String password;
    @Column("EMAIL")
    private String email;
    @Column("SAFECODE")
    private String safeCode;
    @Column("IDENTIFY")
    private String identify;
    @Column("STATUS")
    private String status;
}
