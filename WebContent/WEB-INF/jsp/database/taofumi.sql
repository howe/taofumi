/*
Navicat MySQL Data Transfer

Source Server         : 本地海豚
Source Server Version : 50207
Source Host           : localhost:3306
Source Database       : taofumi

Target Server Type    : MYSQL
Target Server Version : 50207
File Encoding         : 65001

Date: 2011-08-17 15:00:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` varchar(255) NOT NULL,
  `operTime` datetime DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `referrer` varchar(1000) DEFAULT NULL,
  `userAgent` varchar(1000) DEFAULT NULL,
  `ipAddress` varchar(41) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
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
  `userId` varchar(255) DEFAULT NULL,
  `openIdCode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_openid
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_mobibind`
-- ----------------------------
DROP TABLE IF EXISTS `tb_mobibind`;
CREATE TABLE `tb_mobibind` (
  `userId` varchar(255) DEFAULT NULL,
  `mobiNumber` varchar(21) DEFAULT NULL,
  `isVerify` char(1) DEFAULT '0' NULL COMMENT '0未验证/1已验证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mobibind
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_relation`;
CREATE TABLE `tb_relation` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `urlId` varchar(255) DEFAULT NULL,
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
  `keyword` varbinary(200) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `tbkUrl` varchar(1500) DEFAULT NULL,
  `image` varchar(1000) DEFAULT '''http://tb4.me/images/yourls-logo.png''',
  `title` varchar(2000) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `ip` varchar(41) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `useMode` char(1) DEFAULT NULL COMMENT '0软删除/1启用',
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
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `safeCode` varchar(255) DEFAULT NULL COMMENT '找回密码用的6位~8位数字，加密存数据库。',
  `identify` char(1) DEFAULT '2' COMMENT '0管理员/1VIP用户/2普通用户',
  `status` char(1) DEFAULT '0' COMMENT '0启用/1停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
