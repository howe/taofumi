/*
Navicat MySQL Data Transfer

Source Server         : 本地海豚
Source Server Version : 50207
Source Host           : localhost:3306
Source Database       : tb4me

Target Server Type    : MYSQL
Target Server Version : 50207
File Encoding         : 65001

Date: 2011-08-15 22:01:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` varchar(255) NOT NULL,
  `operTime` datetime NULL,
  `keyword` varchar(200) NULL,
  `referrer` varchar(1000) NULL,
  `userAgent` varchar(1000) NULL,
  `ipAddress` varchar(41) NULL,
  `district` varchar(100) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_openid`
-- ----------------------------
DROP TABLE IF EXISTS `tb_openid`;
CREATE TABLE `tb_openid` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) NULL,
  `openIdCode` varchar(200) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_openid
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_relation`;
CREATE TABLE `tb_relation` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) NULL,
  `urlId` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_url`
-- ----------------------------
DROP TABLE IF EXISTS `tb_url`;
CREATE TABLE `tb_url` (
  `id` varchar(255) NOT NULL,
  `keyword` varbinary(200) NULL,
  `url` varchar(1000) NULL,
  `tbkUrl` varchar(1500) NULL,
  `image` varchar(1000) DEFAULT '''http://tb4.me/images/yourls-logo.png''',
  `title` varchar(2000) NULL,
  `createTime` datetime NULL,
  `ip` varchar(41) NULL,
  `clicks` int(11) NULL,
  `useMode` char(1) NULL COMMENT '0软删除/1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_url
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` varchar(255) NOT NULL,
  `userName` varchar(20) NULL,
  `password` varchar(255) NULL,
  `email` varchar(100) NULL,
  `safeCode` varchar(255) NULL COMMENT '找回密码用的6位~8位数字，加密存数据库。',
  `identify` char(1) DEFAULT '2' COMMENT '0管理员/1VIP用户/2普通用户',
  `status` char(1) DEFAULT '0' COMMENT '0启用/1停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
