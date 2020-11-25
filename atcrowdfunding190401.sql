/*
Navicat MySQL Data Transfer

Source Server         : 39.107.87.180aliyun
Source Server Version : 50722
Source Host           : 39.107.87.180:3306
Source Database       : atcrowdfunding190401

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-07-23 19:37:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account_type_cert
-- ----------------------------
DROP TABLE IF EXISTS `t_account_type_cert`;
CREATE TABLE `t_account_type_cert` (
  `id` int(11) NOT NULL,
  `accttype` char(1) DEFAULT NULL,
  `certid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_19` (`certid`) USING BTREE,
  CONSTRAINT `t_account_type_cert_ibfk_1` FOREIGN KEY (`certid`) REFERENCES `t_cert` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account_type_cert
-- ----------------------------
INSERT INTO `t_account_type_cert` VALUES ('4', '0', '1');
INSERT INTO `t_account_type_cert` VALUES ('5', '0', '2');
INSERT INTO `t_account_type_cert` VALUES ('6', '0', '3');
INSERT INTO `t_account_type_cert` VALUES ('7', '0', '5');
INSERT INTO `t_account_type_cert` VALUES ('8', '1', '1');
INSERT INTO `t_account_type_cert` VALUES ('9', '1', '6');
INSERT INTO `t_account_type_cert` VALUES ('10', '2', '6');
INSERT INTO `t_account_type_cert` VALUES ('11', '2', '7');
INSERT INTO `t_account_type_cert` VALUES ('12', '3', '5');
INSERT INTO `t_account_type_cert` VALUES ('13', '3', '4');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) NOT NULL,
  `userpswd` char(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createtime` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'superadmin', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', '超级管理员', 'admin@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('2', 'zhangsan', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'zhangsan', 'test@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('3', 'lisi', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'lisi', 'lisi@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('4', 'wangwu', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'wangwu', 'wangwu@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('5', 'zhaoliu', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'zhaoliu', 'zhaoliu@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('6', 'tianqi', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'tianqi', 'tianqi@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('7', 'wanba', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'wanba', 'wanba@atguigu.com', '2019-01-12 17:18:00');
INSERT INTO `t_admin` VALUES ('8', 'aaa', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', 'aaa', 'aaa@atguigu.com', '2019-01-12 17:18:00');

-- ----------------------------
-- Table structure for t_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role`;
CREATE TABLE `t_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`adminid`) USING BTREE,
  KEY `FK_Reference_2` (`roleid`) USING BTREE,
  CONSTRAINT `t_admin_role_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`),
  CONSTRAINT `t_admin_role_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_role
-- ----------------------------
INSERT INTO `t_admin_role` VALUES ('22', '2', '1');
INSERT INTO `t_admin_role` VALUES ('23', '2', '2');
INSERT INTO `t_admin_role` VALUES ('24', '1', '2');

-- ----------------------------
-- Table structure for t_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `t_advertisement`;
CREATE TABLE `t_advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `iconpath` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - ',
  `url` varchar(255) DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for t_cert
-- ----------------------------
DROP TABLE IF EXISTS `t_cert`;
CREATE TABLE `t_cert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cert
-- ----------------------------
INSERT INTO `t_cert` VALUES ('1', '营业执照副本');
INSERT INTO `t_cert` VALUES ('2', '税务登记证');
INSERT INTO `t_cert` VALUES ('3', '组织机构代码证');
INSERT INTO `t_cert` VALUES ('4', '单位登记证件');
INSERT INTO `t_cert` VALUES ('5', '法定代表人证件');
INSERT INTO `t_cert` VALUES ('6', '经营者证件');
INSERT INTO `t_cert` VALUES ('7', '手执身份证照片');

-- ----------------------------
-- Table structure for t_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_dictionary`;
CREATE TABLE `t_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dictionary
-- ----------------------------
INSERT INTO `t_dictionary` VALUES ('1', '性别', 'sex', '男', '0');
INSERT INTO `t_dictionary` VALUES ('2', '性别', 'sex', '女', '1');
INSERT INTO `t_dictionary` VALUES ('3', '实名认证状态', 'authstatus', '未实名认证', '0');
INSERT INTO `t_dictionary` VALUES ('4', '实名认证状态', 'authstatus', '实名认证审核中', '1');
INSERT INTO `t_dictionary` VALUES ('5', '实名认证状态', 'authstatus', '已实名认证', '2');
INSERT INTO `t_dictionary` VALUES ('6', '账户类型', 'accttype', '企业', '0');
INSERT INTO `t_dictionary` VALUES ('7', '账户类型', 'accttype', '个体', '1');
INSERT INTO `t_dictionary` VALUES ('8', '账户类型', 'accttype', '个人', '2');
INSERT INTO `t_dictionary` VALUES ('9', '账户类型', 'accttype', '政府', '3');

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) NOT NULL,
  `userpswd` char(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `authstatus` char(1) NOT NULL COMMENT 'ʵ',
  `usertype` char(1) NOT NULL COMMENT ' ',
  `realname` varchar(255) DEFAULT NULL,
  `cardnum` varchar(255) DEFAULT NULL,
  `accttype` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES ('1', '15377070960', '$2a$10$.gt2E3i5WHU6XrDQ/tbJ2uhLtutfCpNMX1I.CH8LSiKjgSc41o1hy', '15377070960', 'test@163.com', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for t_member_address
-- ----------------------------
DROP TABLE IF EXISTS `t_member_address`;
CREATE TABLE `t_member_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_13` (`memberid`) USING BTREE,
  CONSTRAINT `t_member_address_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member_address
-- ----------------------------
INSERT INTO `t_member_address` VALUES ('1', '1', '北京尚硅谷');
INSERT INTO `t_member_address` VALUES ('2', '1', '深圳尚硅谷');
INSERT INTO `t_member_address` VALUES ('3', '1', '上海尚硅谷');

-- ----------------------------
-- Table structure for t_member_cert
-- ----------------------------
DROP TABLE IF EXISTS `t_member_cert`;
CREATE TABLE `t_member_cert` (
  `id` int(11) NOT NULL,
  `memberid` int(11) DEFAULT NULL,
  `certid` int(11) DEFAULT NULL,
  `iconpath` varchar(255) DEFAULT NULL COMMENT 'ͼƬ·',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_14` (`memberid`) USING BTREE,
  KEY `FK_Reference_15` (`certid`) USING BTREE,
  CONSTRAINT `t_member_cert_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`),
  CONSTRAINT `t_member_cert_ibfk_2` FOREIGN KEY (`certid`) REFERENCES `t_cert` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member_cert
-- ----------------------------

-- ----------------------------
-- Table structure for t_member_project_follow
-- ----------------------------
DROP TABLE IF EXISTS `t_member_project_follow`;
CREATE TABLE `t_member_project_follow` (
  `id` int(11) NOT NULL,
  `projectid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_11` (`projectid`) USING BTREE,
  KEY `FK_Reference_12` (`memberid`) USING BTREE,
  CONSTRAINT `t_member_project_follow_ibfk_1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `t_member_project_follow_ibfk_2` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member_project_follow
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '控制面板', 'glyphicon glyphicon-dashboard', 'main.html');
INSERT INTO `t_menu` VALUES ('2', '0', '权限管理', 'glyphicon glyphicon glyphicon-tasks', null);
INSERT INTO `t_menu` VALUES ('3', '2', '用户维护', 'glyphicon glyphicon-user', 'admin/index');
INSERT INTO `t_menu` VALUES ('4', '2', '角色维护', 'glyphicon glyphicon-king', 'role/index');
INSERT INTO `t_menu` VALUES ('5', '2', '权限维护', 'glyphicon glyphicon-lock', 'permission/index');
INSERT INTO `t_menu` VALUES ('6', '2', '菜单维护', 'glyphicon glyphicon-th-list', 'menu/index');
INSERT INTO `t_menu` VALUES ('7', '0', '业务审核', 'glyphicon glyphicon-ok', null);
INSERT INTO `t_menu` VALUES ('8', '7', '实名认证审核', 'glyphicon glyphicon-check', 'auth_cert/index.html');
INSERT INTO `t_menu` VALUES ('9', '7', '广告审核', 'glyphicon glyphicon-check', 'auth_adv/index.html');
INSERT INTO `t_menu` VALUES ('10', '7', '项目审核', 'glyphicon glyphicon-check', 'auth_project/index.html');
INSERT INTO `t_menu` VALUES ('11', '0', '业务管理', 'glyphicon glyphicon-th-large', null);
INSERT INTO `t_menu` VALUES ('12', '11', '资质维护', 'glyphicon glyphicon-picture', 'cert/index.html');
INSERT INTO `t_menu` VALUES ('13', '11', '分类管理', 'glyphicon glyphicon-equalizer', 'certtype/index.html');
INSERT INTO `t_menu` VALUES ('14', '11', '流程管理', 'glyphicon glyphicon-random', 'process/index.html');
INSERT INTO `t_menu` VALUES ('15', '11', '广告管理', 'glyphicon glyphicon-hdd', 'advert/index.html');
INSERT INTO `t_menu` VALUES ('16', '11', '消息模板', 'glyphicon glyphicon-comment', 'message/index.html');
INSERT INTO `t_menu` VALUES ('17', '11', '项目分类', 'glyphicon glyphicon-list', 'projectType/index.html');
INSERT INTO `t_menu` VALUES ('18', '11', '项目标签', 'glyphicon glyphicon-tags', 'tag/index.html');
INSERT INTO `t_menu` VALUES ('19', '0', '参数管理', 'glyphicon glyphicon-list-alt', 'param/index.html');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `senddate` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `returnid` int(11) DEFAULT NULL,
  `ordernum` varchar(255) DEFAULT NULL,
  `createdate` char(19) DEFAULT NULL,
  `money` int(11) DEFAULT NULL COMMENT '֧',
  `rtncount` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - ',
  `address` varchar(255) DEFAULT NULL,
  `invoice` char(1) DEFAULT NULL COMMENT '0 - ',
  `invoictitle` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_16` (`returnid`) USING BTREE,
  KEY `FK_Reference_17` (`projectid`) USING BTREE,
  KEY `FK_Reference_18` (`memberid`) USING BTREE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`returnid`) REFERENCES `t_return` (`id`),
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `t_order_ibfk_3` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '1', '1', '1', '0928337caf494d3eb175291c83346650', '2019-07-22 17:06:00', '1020', '5', '0', '北京尚硅谷', '1', '尚硅谷公司444', '周一送货');
INSERT INTO `t_order` VALUES ('2', '1', '1', '1', '56415b630d304fb1bc13fb7a625053fd', '2019-07-22 17:06:00', '1020', '5', '0', '北京尚硅谷', '1', '尚硅谷公司444', '周一送货');
INSERT INTO `t_order` VALUES ('3', '1', '1', '1', '02800b6fb05244fabbfc28b3d9440540', '2019-07-23 09:50:41', '423', '2', '0', '上海尚硅谷', '1', '尚硅谷公司', 'xxx');
INSERT INTO `t_order` VALUES ('4', '1', '1', '1', '83c1d361801b4975808b340ab176e9f5', '2019-07-23 11:04:22', '1020', '5', '0', '北京尚硅谷', '1', '尚硅谷公司222', '周日送货');
INSERT INTO `t_order` VALUES ('5', '1', '1', '1', 'b6979a252b5b4cb790794e27f989d482', '2019-07-23 18:40:21', '224', '1', '0', '上海尚硅谷', '0', 'ss', '');
INSERT INTO `t_order` VALUES ('6', '1', '2', '4', '38f3522d1ef8457a96064eb296867ee9', '2019-07-23 18:40:37', '1990025', '10000', '0', '上海尚硅谷', '0', '', '');
INSERT INTO `t_order` VALUES ('7', '1', '1', '1', 'cf4e8e9d51db4803917aec51b8a56fac', '2019-07-23 18:40:56', '1020', '5', '0', '北京尚硅谷', '1', '尚硅谷公司', '最终上线');
INSERT INTO `t_order` VALUES ('8', '1', '1', '1', 'cec31361d108461aa094019c8230b6f1', '2019-07-23 18:41:43', '224', '1', '0', '北京尚硅谷', '0', '', '0.0');
INSERT INTO `t_order` VALUES ('9', '1', '1', '1', '7be5327749ee400d981a5b037463093c', '2019-07-23 18:42:07', '224', '1', '0', '上海尚硅谷', '1', 'ss', 'sss');
INSERT INTO `t_order` VALUES ('10', '1', '1', '3', 'e3ae7e46b3184c96b653fc40827d6f42', '2019-07-23 19:23:31', '2040', '5', '0', '深圳尚硅谷', '1', '', '是赶不上开发部分深刻改变');

-- ----------------------------
-- Table structure for t_param
-- ----------------------------
DROP TABLE IF EXISTS `t_param`;
CREATE TABLE `t_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', 'user', '用户模块', 'glyphicon glyphicon-user', '0');
INSERT INTO `t_permission` VALUES ('2', 'user:add', '新增', 'glyphicon glyphicon-plus', '1');
INSERT INTO `t_permission` VALUES ('3', 'user:delete', '删除', 'glyphicon glyphicon-remove', '1');
INSERT INTO `t_permission` VALUES ('4', 'user:update', '更新', 'glyphicon glyphicon-pencil', '1');
INSERT INTO `t_permission` VALUES ('5', 'user:get', '查询', 'glyphicon glyphicon-zoom-in', '1');
INSERT INTO `t_permission` VALUES ('6', 'user:assign:role', '授予角色', 'glyphicon glyphicon-user', '1');
INSERT INTO `t_permission` VALUES ('7', 'role', '角色模块', 'glyphicon glyphicon-heart', '0');
INSERT INTO `t_permission` VALUES ('8', 'role:add', '新增', 'glyphicon glyphicon-plus', '7');
INSERT INTO `t_permission` VALUES ('9', 'role:delete', '删除', 'glyphicon glyphicon-remove', '7');
INSERT INTO `t_permission` VALUES ('10', 'role:get', '查询', 'glyphicon glyphicon-zoom-in', '7');
INSERT INTO `t_permission` VALUES ('11', 'role:update', '修改', 'glyphicon glyphicon-pencil', '7');
INSERT INTO `t_permission` VALUES ('12', 'role:assign:permission', '授予权限', 'glyphicon glyphicon-user', '7');
INSERT INTO `t_permission` VALUES ('13', 'menu', '菜单模块', 'glyphicon glyphicon-th-list', '0');
INSERT INTO `t_permission` VALUES ('14', 'menu:add', '新增', 'glyphicon glyphicon-plus', '13');
INSERT INTO `t_permission` VALUES ('15', 'menu:delete', '删除', 'glyphicon glyphicon-remove', '13');
INSERT INTO `t_permission` VALUES ('16', 'menu:update', '修改', 'glyphicon glyphicon-pencil', '13');
INSERT INTO `t_permission` VALUES ('17', 'menu:get', '查询', 'glyphicon glyphicon-zoom-in', '13');
INSERT INTO `t_permission` VALUES ('18', 'menu:assign:permission', '授予权限', 'glyphicon glyphicon-user', '13');

-- ----------------------------
-- Table structure for t_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_permission_menu`;
CREATE TABLE `t_permission_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_10` (`menuid`) USING BTREE,
  KEY `FK_Reference_9` (`permissionid`) USING BTREE,
  CONSTRAINT `t_permission_menu_ibfk_1` FOREIGN KEY (`menuid`) REFERENCES `t_menu` (`id`),
  CONSTRAINT `t_permission_menu_ibfk_2` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission_menu
-- ----------------------------
INSERT INTO `t_permission_menu` VALUES ('8', '3', '7');
INSERT INTO `t_permission_menu` VALUES ('9', '3', '8');
INSERT INTO `t_permission_menu` VALUES ('10', '3', '9');
INSERT INTO `t_permission_menu` VALUES ('11', '3', '10');
INSERT INTO `t_permission_menu` VALUES ('12', '3', '11');
INSERT INTO `t_permission_menu` VALUES ('13', '3', '12');
INSERT INTO `t_permission_menu` VALUES ('14', '4', '7');
INSERT INTO `t_permission_menu` VALUES ('15', '4', '8');
INSERT INTO `t_permission_menu` VALUES ('16', '4', '9');
INSERT INTO `t_permission_menu` VALUES ('17', '4', '10');
INSERT INTO `t_permission_menu` VALUES ('18', '4', '11');
INSERT INTO `t_permission_menu` VALUES ('19', '4', '12');

-- ----------------------------
-- Table structure for t_permission_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_permission_resource`;
CREATE TABLE `t_permission_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_20` (`permissionid`) USING BTREE,
  KEY `FK_Reference_21` (`resourceid`) USING BTREE,
  CONSTRAINT `t_permission_resource_ibfk_1` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`),
  CONSTRAINT `t_permission_resource_ibfk_2` FOREIGN KEY (`resourceid`) REFERENCES `t_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission_resource
-- ----------------------------

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `money` bigint(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT '0 - ',
  `deploydate` char(10) DEFAULT NULL,
  `supportmoney` bigint(11) DEFAULT NULL COMMENT '֧',
  `supporter` int(11) DEFAULT NULL COMMENT '֧',
  `completion` int(3) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `createdate` char(19) DEFAULT NULL,
  `follower` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('1', '智能高清监控机器人', '可爱的造型，摄像安防远程互联的全能设计，让你随时随地守护您的家人，陪伴你的生活。', '300000', '30', '5', '2019-07-19', '0', '0', '0', '1', '2019-07-19 11:03:52', '100');
INSERT INTO `t_project` VALUES ('2', 'NEOKA智能手环', '要运动更要安全，这款、名为“蝶舞”的NEOKA-V9100智能运动手环为“安全运动而生”。', '300000', '30', '5', '2019-07-19', '0', '0', '0', '1', '2019-07-19 11:03:52', '0');
INSERT INTO `t_project` VALUES ('3', '驱蚊扣', '随处使用的驱蚊纽扣，\r\n解决夏季蚊虫问题。', '300000', '30', '5', '2019-07-19', '0', '0', '0', '1', '2019-07-19 11:03:52', '0');

-- ----------------------------
-- Table structure for t_project_images
-- ----------------------------
DROP TABLE IF EXISTS `t_project_images`;
CREATE TABLE `t_project_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `imgtype` tinyint(4) DEFAULT NULL COMMENT '0-头部图片 1-详情图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_images
-- ----------------------------
INSERT INTO `t_project_images` VALUES ('1', '1', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/48f6be4be7524054a4545ae8a8a9724f_p1.jpg', '0');
INSERT INTO `t_project_images` VALUES ('2', '1', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/0a33d77ee3e94bca84729d139802da11_product_detail_body.jpg', '1');
INSERT INTO `t_project_images` VALUES ('3', '2', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/8ae74e3afc4748f987ab3385da9f5b48_p2.jpg', '0');
INSERT INTO `t_project_images` VALUES ('4', '2', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/0a33d77ee3e94bca84729d139802da11_product_detail_body.jpg', '1');
INSERT INTO `t_project_images` VALUES ('5', '3', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/991113eda23e45f38620ddef858721d2_p3.png', '0');
INSERT INTO `t_project_images` VALUES ('6', '3', 'https://atcrowdfunding20190717.oss-cn-beijing.aliyuncs.com/pic/0a33d77ee3e94bca84729d139802da11_product_detail_body.jpg', '1');

-- ----------------------------
-- Table structure for t_project_initiator
-- ----------------------------
DROP TABLE IF EXISTS `t_project_initiator`;
CREATE TABLE `t_project_initiator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `selfintroduction` varchar(255) DEFAULT NULL,
  `detailselfintroduction` varchar(255) DEFAULT NULL,
  `telphone` varchar(13) DEFAULT NULL,
  `hotline` varchar(13) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_initiator
-- ----------------------------

-- ----------------------------
-- Table structure for t_project_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_project_tag`;
CREATE TABLE `t_project_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `tagid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_7` (`projectid`) USING BTREE,
  KEY `FK_Reference_8` (`tagid`) USING BTREE,
  CONSTRAINT `t_project_tag_ibfk_1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `t_project_tag_ibfk_2` FOREIGN KEY (`tagid`) REFERENCES `t_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_tag
-- ----------------------------
INSERT INTO `t_project_tag` VALUES ('1', '1', '2');
INSERT INTO `t_project_tag` VALUES ('2', '1', '6');
INSERT INTO `t_project_tag` VALUES ('3', '2', '1');
INSERT INTO `t_project_tag` VALUES ('4', '3', '2');

-- ----------------------------
-- Table structure for t_project_type
-- ----------------------------
DROP TABLE IF EXISTS `t_project_type`;
CREATE TABLE `t_project_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`projectid`) USING BTREE,
  KEY `FK_Reference_6` (`typeid`) USING BTREE,
  CONSTRAINT `t_project_type_ibfk_1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`),
  CONSTRAINT `t_project_type_ibfk_2` FOREIGN KEY (`typeid`) REFERENCES `t_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_type
-- ----------------------------
INSERT INTO `t_project_type` VALUES ('1', '1', '1');
INSERT INTO `t_project_type` VALUES ('2', '1', '3');
INSERT INTO `t_project_type` VALUES ('3', '2', '1');
INSERT INTO `t_project_type` VALUES ('4', '3', '1');

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `createat` varchar(19) DEFAULT NULL,
  `updateat` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------

-- ----------------------------
-- Table structure for t_return
-- ----------------------------
DROP TABLE IF EXISTS `t_return`;
CREATE TABLE `t_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `type` char(1) DEFAULT NULL COMMENT '0 - ʵ',
  `supportmoney` int(11) DEFAULT NULL COMMENT '֧',
  `content` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '0 Ϊ',
  `signalpurchase` int(11) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `freight` int(11) DEFAULT NULL,
  `invoice` char(1) DEFAULT NULL COMMENT '0 - ',
  `rtndate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_return
-- ----------------------------
INSERT INTO `t_return` VALUES ('1', '1', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('2', '1', '0', '299', '感谢您的支持，在众筹开始后，您将以299元的优惠价格获得“遇见彩虹?”智能插座一件（参考价345元）。', '1', '0', '2000', '0', '1', '30');
INSERT INTO `t_return` VALUES ('3', '1', '0', '399', '感谢您的支持，在众筹开始后，您将以399元的优惠价格获得“遇见彩虹?”智能插座一件（参考价545元）。', '1', '5', '2000', '45', '1', '30');
INSERT INTO `t_return` VALUES ('4', '2', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('5', '2', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('6', '2', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('7', '3', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('8', '3', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');
INSERT INTO `t_return` VALUES ('9', '3', '0', '199', '感谢您的支持，在众筹开始后，您将以199元的优惠价格获得“遇见彩虹?”智能插座一件（参考价245元）。', '1', '5', '2000', '25', '1', '30');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'PM - 项目经理');
INSERT INTO `t_role` VALUES ('2', 'SE - 软件工程师');
INSERT INTO `t_role` VALUES ('3', 'PG - 程序员');
INSERT INTO `t_role` VALUES ('4', 'TL - 组长');
INSERT INTO `t_role` VALUES ('5', 'GL - 组长');
INSERT INTO `t_role` VALUES ('6', 'QA - 品质保证');
INSERT INTO `t_role` VALUES ('7', 'QC - 品质控制');
INSERT INTO `t_role` VALUES ('8', 'SA - 软件架构师');
INSERT INTO `t_role` VALUES ('9', 'CMO / CMS - 配置管理员');
INSERT INTO `t_role` VALUES ('10', 'xxxx');
INSERT INTO `t_role` VALUES ('11', 'abc');
INSERT INTO `t_role` VALUES ('12', 'aaaaaaa');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_3` (`roleid`) USING BTREE,
  KEY `FK_Reference_4` (`permissionid`) USING BTREE,
  CONSTRAINT `t_role_permission_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`),
  CONSTRAINT `t_role_permission_ibfk_2` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('3', '2', '1');
INSERT INTO `t_role_permission` VALUES ('21', '1', '7');
INSERT INTO `t_role_permission` VALUES ('22', '1', '8');
INSERT INTO `t_role_permission` VALUES ('23', '1', '9');
INSERT INTO `t_role_permission` VALUES ('24', '1', '10');
INSERT INTO `t_role_permission` VALUES ('25', '1', '11');
INSERT INTO `t_role_permission` VALUES ('26', '1', '12');
INSERT INTO `t_role_permission` VALUES ('27', '1', '13');
INSERT INTO `t_role_permission` VALUES ('28', '1', '14');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('1', null, '颜色');
INSERT INTO `t_tag` VALUES ('2', '1', '红色');
INSERT INTO `t_tag` VALUES ('3', '1', '白色');
INSERT INTO `t_tag` VALUES ('4', null, '高度');
INSERT INTO `t_tag` VALUES ('5', '4', '1.2米');
INSERT INTO `t_tag` VALUES ('6', '4', '1.5米');

-- ----------------------------
-- Table structure for t_transaction
-- ----------------------------
DROP TABLE IF EXISTS `t_transaction`;
CREATE TABLE `t_transaction` (
  `id` int(11) NOT NULL,
  `ordersn` varchar(255) DEFAULT NULL,
  `paysn` varchar(255) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `paystate` tinyint(4) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `completiontime` varchar(19) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `createat` varchar(19) DEFAULT NULL,
  `updateat` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='֧';

-- ----------------------------
-- Records of t_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '科技类', null);
INSERT INTO `t_type` VALUES ('2', '农业类', null);
INSERT INTO `t_type` VALUES ('3', '设计类', null);
