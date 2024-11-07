/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7b7gg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7b7gg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7b7gg`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (61,'2021-04-23 13:26:49','班级1');
insert  into `banji`(`id`,`addtime`,`banji`) values (62,'2021-04-23 13:26:49','班级2');
insert  into `banji`(`id`,`addtime`,`banji`) values (63,'2021-04-23 13:26:49','班级3');
insert  into `banji`(`id`,`addtime`,`banji`) values (64,'2021-04-23 13:26:49','班级4');
insert  into `banji`(`id`,`addtime`,`banji`) values (65,'2021-04-23 13:26:49','班级5');
insert  into `banji`(`id`,`addtime`,`banji`) values (66,'2021-04-23 13:26:49','班级6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7b7gg/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm7b7gg/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm7b7gg/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `daoshi` */

DROP TABLE IF EXISTS `daoshi`;

CREATE TABLE `daoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) NOT NULL COMMENT '导师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `daoshixingming` varchar(200) NOT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `daoshizu` varchar(200) DEFAULT NULL COMMENT '导师组',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `yanjiufangxiangjieshao` longtext COMMENT '研究方向介绍',
  `gerenjianjie` longtext COMMENT '个人简介',
  `xueshuchengguo` varchar(200) DEFAULT NULL COMMENT '学术成果',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoshizhanghao` (`daoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='导师';

/*Data for the table `daoshi` */

insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (21,'2021-04-23 13:26:49','导师1','123456','导师姓名1','男','职称1','13823888881','773890001@qq.com','导师组1','研究方向1','研究方向介绍1','个人简介1','学术成果1','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian1.jpg');
insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (22,'2021-04-23 13:26:49','导师2','123456','导师姓名2','男','职称2','13823888882','773890002@qq.com','导师组2','研究方向2','研究方向介绍2','个人简介2','学术成果2','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian2.jpg');
insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (23,'2021-04-23 13:26:49','导师3','123456','导师姓名3','男','职称3','13823888883','773890003@qq.com','导师组3','研究方向3','研究方向介绍3','个人简介3','学术成果3','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian3.jpg');
insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (24,'2021-04-23 13:26:49','导师4','123456','导师姓名4','男','职称4','13823888884','773890004@qq.com','导师组4','研究方向4','研究方向介绍4','个人简介4','学术成果4','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian4.jpg');
insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (25,'2021-04-23 13:26:49','导师5','123456','导师姓名5','男','职称5','13823888885','773890005@qq.com','导师组5','研究方向5','研究方向介绍5','个人简介5','学术成果5','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian5.jpg');
insert  into `daoshi`(`id`,`addtime`,`daoshizhanghao`,`mima`,`daoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`daoshizu`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`) values (26,'2021-04-23 13:26:49','导师6','123456','导师姓名6','男','职称6','13823888886','773890006@qq.com','导师组6','研究方向6','研究方向介绍6','个人简介6','学术成果6','http://localhost:8080/ssm7b7gg/upload/daoshi_zhaopian6.jpg');

/*Table structure for table `daoshixuanzeliebiao` */

DROP TABLE IF EXISTS `daoshixuanzeliebiao`;

CREATE TABLE `daoshixuanzeliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `yanjiufangxiangjieshao` longtext COMMENT '研究方向介绍',
  `gerenjianjie` longtext COMMENT '个人简介',
  `xueshuchengguo` varchar(200) DEFAULT NULL COMMENT '学术成果',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='导师选择列表';

/*Data for the table `daoshixuanzeliebiao` */

insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (81,'2021-04-23 13:26:49','导师账号1','导师姓名1','性别1','职称1','邮箱1','研究方向1','研究方向介绍1','个人简介1','学术成果1','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian1.jpg','2021-04-23 13:26:49',1);
insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (82,'2021-04-23 13:26:49','导师账号2','导师姓名2','性别2','职称2','邮箱2','研究方向2','研究方向介绍2','个人简介2','学术成果2','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian2.jpg','2021-04-23 13:26:49',2);
insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (83,'2021-04-23 13:26:49','导师账号3','导师姓名3','性别3','职称3','邮箱3','研究方向3','研究方向介绍3','个人简介3','学术成果3','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian3.jpg','2021-04-23 13:26:49',3);
insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (84,'2021-04-23 13:26:49','导师账号4','导师姓名4','性别4','职称4','邮箱4','研究方向4','研究方向介绍4','个人简介4','学术成果4','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian4.jpg','2021-04-23 13:26:49',4);
insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (85,'2021-04-23 13:26:49','导师账号5','导师姓名5','性别5','职称5','邮箱5','研究方向5','研究方向介绍5','个人简介5','学术成果5','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian5.jpg','2021-04-23 13:26:49',5);
insert  into `daoshixuanzeliebiao`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`clicktime`,`clicknum`) values (86,'2021-04-23 13:26:49','导师账号6','导师姓名6','性别6','职称6','邮箱6','研究方向6','研究方向介绍6','个人简介6','学术成果6','http://localhost:8080/ssm7b7gg/upload/daoshixuanzeliebiao_zhaopian6.jpg','2021-04-23 13:26:49',6);

/*Table structure for table `daoshizu` */

DROP TABLE IF EXISTS `daoshizu`;

CREATE TABLE `daoshizu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizu` varchar(200) DEFAULT NULL COMMENT '导师组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='导师组';

/*Data for the table `daoshizu` */

insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (111,'2021-04-23 13:26:49','导师组1');
insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (112,'2021-04-23 13:26:49','导师组2');
insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (113,'2021-04-23 13:26:49','导师组3');
insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (114,'2021-04-23 13:26:49','导师组4');
insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (115,'2021-04-23 13:26:49','导师组5');
insert  into `daoshizu`(`id`,`addtime`,`daoshizu`) values (116,'2021-04-23 13:26:49','导师组6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='指导中心';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (171,'2021-04-23 13:26:49','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (172,'2021-04-23 13:26:49','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (173,'2021-04-23 13:26:49','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (174,'2021-04-23 13:26:49','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (175,'2021-04-23 13:26:49','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (176,'2021-04-23 13:26:49','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `laoshipingjia` */

DROP TABLE IF EXISTS `laoshipingjia`;

CREATE TABLE `laoshipingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `laoshipingjia` longtext COMMENT '老师评价',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='老师评价';

/*Data for the table `laoshipingjia` */

insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (151,'2021-04-23 13:26:49','导师账号1','导师姓名1','学期1','老师评价1','2021-04-23 13:26:49','学工号1','学生姓名1');
insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (152,'2021-04-23 13:26:49','导师账号2','导师姓名2','学期2','老师评价2','2021-04-23 13:26:49','学工号2','学生姓名2');
insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (153,'2021-04-23 13:26:49','导师账号3','导师姓名3','学期3','老师评价3','2021-04-23 13:26:49','学工号3','学生姓名3');
insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (154,'2021-04-23 13:26:49','导师账号4','导师姓名4','学期4','老师评价4','2021-04-23 13:26:49','学工号4','学生姓名4');
insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (155,'2021-04-23 13:26:49','导师账号5','导师姓名5','学期5','老师评价5','2021-04-23 13:26:49','学工号5','学生姓名5');
insert  into `laoshipingjia`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xueqi`,`laoshipingjia`,`pingjiashijian`,`xuegonghao`,`xueshengxingming`) values (156,'2021-04-23 13:26:49','导师账号6','导师姓名6','学期6','老师评价6','2021-04-23 13:26:49','学工号6','学生姓名6');

/*Table structure for table `nianji` */

DROP TABLE IF EXISTS `nianji`;

CREATE TABLE `nianji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='年级';

/*Data for the table `nianji` */

insert  into `nianji`(`id`,`addtime`,`nianji`) values (51,'2021-04-23 13:26:49','年级1');
insert  into `nianji`(`id`,`addtime`,`nianji`) values (52,'2021-04-23 13:26:49','年级2');
insert  into `nianji`(`id`,`addtime`,`nianji`) values (53,'2021-04-23 13:26:49','年级3');
insert  into `nianji`(`id`,`addtime`,`nianji`) values (54,'2021-04-23 13:26:49','年级4');
insert  into `nianji`(`id`,`addtime`,`nianji`) values (55,'2021-04-23 13:26:49','年级5');
insert  into `nianji`(`id`,`addtime`,`nianji`) values (56,'2021-04-23 13:26:49','年级6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-23 13:26:49');

/*Table structure for table `wodedaoshi` */

DROP TABLE IF EXISTS `wodedaoshi`;

CREATE TABLE `wodedaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `yanjiufangxiangjieshao` varchar(200) DEFAULT NULL COMMENT '研究方向介绍',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `xueshuchengguo` varchar(200) DEFAULT NULL COMMENT '学术成果',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhiyuanshunxu` varchar(200) DEFAULT NULL COMMENT '志愿顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='我的导师';

/*Data for the table `wodedaoshi` */

insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (91,'2021-04-23 13:26:49','导师账号1','导师姓名1','性别1','职称1','邮箱1','研究方向1','研究方向介绍1','个人简介1','学术成果1','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian1.jpg','学工号1','学生姓名1','第一志愿');
insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (92,'2021-04-23 13:26:49','导师账号2','导师姓名2','性别2','职称2','邮箱2','研究方向2','研究方向介绍2','个人简介2','学术成果2','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian2.jpg','学工号2','学生姓名2','第一志愿');
insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (93,'2021-04-23 13:26:49','导师账号3','导师姓名3','性别3','职称3','邮箱3','研究方向3','研究方向介绍3','个人简介3','学术成果3','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian3.jpg','学工号3','学生姓名3','第一志愿');
insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (94,'2021-04-23 13:26:49','导师账号4','导师姓名4','性别4','职称4','邮箱4','研究方向4','研究方向介绍4','个人简介4','学术成果4','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian4.jpg','学工号4','学生姓名4','第一志愿');
insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (95,'2021-04-23 13:26:49','导师账号5','导师姓名5','性别5','职称5','邮箱5','研究方向5','研究方向介绍5','个人简介5','学术成果5','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian5.jpg','学工号5','学生姓名5','第一志愿');
insert  into `wodedaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (96,'2021-04-23 13:26:49','导师账号6','导师姓名6','性别6','职称6','邮箱6','研究方向6','研究方向介绍6','个人简介6','学术成果6','http://localhost:8080/ssm7b7gg/upload/wodedaoshi_zhaopian6.jpg','学工号6','学生姓名6','第一志愿');

/*Table structure for table `wodexuesheng` */

DROP TABLE IF EXISTS `wodexuesheng`;

CREATE TABLE `wodexuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `yanjiufangxiangjieshao` varchar(200) DEFAULT NULL COMMENT '研究方向介绍',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `xueshuchengguo` varchar(200) DEFAULT NULL COMMENT '学术成果',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhiyuanshunxu` varchar(200) DEFAULT NULL COMMENT '志愿顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='我的学生';

/*Data for the table `wodexuesheng` */

insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (131,'2021-04-23 13:26:49','导师账号1','导师姓名1','男','职称1','邮箱1','研究方向1','研究方向介绍1','个人简介1','学术成果1','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian1.jpg','学工号1','学生姓名1','第一志愿');
insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (132,'2021-04-23 13:26:49','导师账号2','导师姓名2','男','职称2','邮箱2','研究方向2','研究方向介绍2','个人简介2','学术成果2','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian2.jpg','学工号2','学生姓名2','第一志愿');
insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (133,'2021-04-23 13:26:49','导师账号3','导师姓名3','男','职称3','邮箱3','研究方向3','研究方向介绍3','个人简介3','学术成果3','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian3.jpg','学工号3','学生姓名3','第一志愿');
insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (134,'2021-04-23 13:26:49','导师账号4','导师姓名4','男','职称4','邮箱4','研究方向4','研究方向介绍4','个人简介4','学术成果4','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian4.jpg','学工号4','学生姓名4','第一志愿');
insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (135,'2021-04-23 13:26:49','导师账号5','导师姓名5','男','职称5','邮箱5','研究方向5','研究方向介绍5','个人简介5','学术成果5','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian5.jpg','学工号5','学生姓名5','第一志愿');
insert  into `wodexuesheng`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`) values (136,'2021-04-23 13:26:49','导师账号6','导师姓名6','男','职称6','邮箱6','研究方向6','研究方向介绍6','个人简介6','学术成果6','http://localhost:8080/ssm7b7gg/upload/wodexuesheng_zhaopian6.jpg','学工号6','学生姓名6','第一志愿');

/*Table structure for table `xueqi` */

DROP TABLE IF EXISTS `xueqi`;

CREATE TABLE `xueqi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学期';

/*Data for the table `xueqi` */

insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (71,'2021-04-23 13:26:49','学期1');
insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (72,'2021-04-23 13:26:49','学期2');
insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (73,'2021-04-23 13:26:49','学期3');
insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (74,'2021-04-23 13:26:49','学期4');
insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (75,'2021-04-23 13:26:49','学期5');
insert  into `xueqi`(`id`,`addtime`,`xueqi`) values (76,'2021-04-23 13:26:49','学期6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuegonghao` varchar(200) NOT NULL COMMENT '学工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gerenjianjie` longtext COMMENT '个人简介',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuegonghao` (`xuegonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (11,'2021-04-23 13:26:49','学生1','123456','学生姓名1','男','学院1','专业1','年级1','班级1','773890001@qq.com','13823888881','个人简介1','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (12,'2021-04-23 13:26:49','学生2','123456','学生姓名2','男','学院2','专业2','年级2','班级2','773890002@qq.com','13823888882','个人简介2','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (13,'2021-04-23 13:26:49','学生3','123456','学生姓名3','男','学院3','专业3','年级3','班级3','773890003@qq.com','13823888883','个人简介3','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (14,'2021-04-23 13:26:49','学生4','123456','学生姓名4','男','学院4','专业4','年级4','班级4','773890004@qq.com','13823888884','个人简介4','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (15,'2021-04-23 13:26:49','学生5','123456','学生姓名5','男','学院5','专业5','年级5','班级5','773890005@qq.com','13823888885','个人简介5','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuegonghao`,`mima`,`xueshengxingming`,`xingbie`,`xueyuan`,`zhuanye`,`nianji`,`banji`,`youxiang`,`shouji`,`gerenjianjie`,`zhaopian`) values (16,'2021-04-23 13:26:49','学生6','123456','学生姓名6','男','学院6','专业6','年级6','班级6','773890006@qq.com','13823888886','个人简介6','http://localhost:8080/ssm7b7gg/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueshengchengji` varchar(200) DEFAULT NULL COMMENT '学生成绩',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `lurushijian` datetime DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (161,'2021-04-23 13:26:49','学工号1','学生姓名1','学生成绩1','导师账号1','导师姓名1','2021-04-23 13:26:49');
insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (162,'2021-04-23 13:26:49','学工号2','学生姓名2','学生成绩2','导师账号2','导师姓名2','2021-04-23 13:26:49');
insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (163,'2021-04-23 13:26:49','学工号3','学生姓名3','学生成绩3','导师账号3','导师姓名3','2021-04-23 13:26:49');
insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (164,'2021-04-23 13:26:49','学工号4','学生姓名4','学生成绩4','导师账号4','导师姓名4','2021-04-23 13:26:49');
insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (165,'2021-04-23 13:26:49','学工号5','学生姓名5','学生成绩5','导师账号5','导师姓名5','2021-04-23 13:26:49');
insert  into `xueshengchengji`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueshengchengji`,`daoshizhanghao`,`daoshixingming`,`lurushijian`) values (166,'2021-04-23 13:26:49','学工号6','学生姓名6','学生成绩6','导师账号6','导师姓名6','2021-04-23 13:26:49');

/*Table structure for table `xueshengpingjia` */

DROP TABLE IF EXISTS `xueshengpingjia`;

CREATE TABLE `xueshengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xueshengpingjia` longtext COMMENT '学生评价',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='学生评价';

/*Data for the table `xueshengpingjia` */

insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (141,'2021-04-23 13:26:49','学工号1','学生姓名1','学期1','学生评价1','2021-04-23 13:26:49','导师账号1','导师姓名1');
insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (142,'2021-04-23 13:26:49','学工号2','学生姓名2','学期2','学生评价2','2021-04-23 13:26:49','导师账号2','导师姓名2');
insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (143,'2021-04-23 13:26:49','学工号3','学生姓名3','学期3','学生评价3','2021-04-23 13:26:49','导师账号3','导师姓名3');
insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (144,'2021-04-23 13:26:49','学工号4','学生姓名4','学期4','学生评价4','2021-04-23 13:26:49','导师账号4','导师姓名4');
insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (145,'2021-04-23 13:26:49','学工号5','学生姓名5','学期5','学生评价5','2021-04-23 13:26:49','导师账号5','导师姓名5');
insert  into `xueshengpingjia`(`id`,`addtime`,`xuegonghao`,`xueshengxingming`,`xueqi`,`xueshengpingjia`,`pingjiashijian`,`daoshizhanghao`,`daoshixingming`) values (146,'2021-04-23 13:26:49','学工号6','学生姓名6','学期6','学生评价6','2021-04-23 13:26:49','导师账号6','导师姓名6');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学院';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (31,'2021-04-23 13:26:49','学院1');
insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (32,'2021-04-23 13:26:49','学院2');
insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (33,'2021-04-23 13:26:49','学院3');
insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (34,'2021-04-23 13:26:49','学院4');
insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (35,'2021-04-23 13:26:49','学院5');
insert  into `xueyuan`(`id`,`addtime`,`xueyuan`) values (36,'2021-04-23 13:26:49','学院6');

/*Table structure for table `yanjiufangxiang` */

DROP TABLE IF EXISTS `yanjiufangxiang`;

CREATE TABLE `yanjiufangxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='研究方向';

/*Data for the table `yanjiufangxiang` */

insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (121,'2021-04-23 13:26:49','研究方向1');
insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (122,'2021-04-23 13:26:49','研究方向2');
insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (123,'2021-04-23 13:26:49','研究方向3');
insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (124,'2021-04-23 13:26:49','研究方向4');
insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (125,'2021-04-23 13:26:49','研究方向5');
insert  into `yanjiufangxiang`(`id`,`addtime`,`yanjiufangxiang`) values (126,'2021-04-23 13:26:49','研究方向6');

/*Table structure for table `yixuandaoshi` */

DROP TABLE IF EXISTS `yixuandaoshi`;

CREATE TABLE `yixuandaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoshizhanghao` varchar(200) DEFAULT NULL COMMENT '导师账号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yanjiufangxiang` varchar(200) DEFAULT NULL COMMENT '研究方向',
  `yanjiufangxiangjieshao` varchar(200) DEFAULT NULL COMMENT '研究方向介绍',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `xueshuchengguo` varchar(200) DEFAULT NULL COMMENT '学术成果',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuegonghao` varchar(200) DEFAULT NULL COMMENT '学工号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhiyuanshunxu` varchar(200) DEFAULT NULL COMMENT '志愿顺序',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='已选导师';

/*Data for the table `yixuandaoshi` */

insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (101,'2021-04-23 13:26:49','导师账号1','导师姓名1','男','职称1','邮箱1','研究方向1','研究方向介绍1','个人简介1','学术成果1','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian1.jpg','学工号1','学生姓名1','第一志愿','是','');
insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (102,'2021-04-23 13:26:49','导师账号2','导师姓名2','男','职称2','邮箱2','研究方向2','研究方向介绍2','个人简介2','学术成果2','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian2.jpg','学工号2','学生姓名2','第一志愿','是','');
insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (103,'2021-04-23 13:26:49','导师账号3','导师姓名3','男','职称3','邮箱3','研究方向3','研究方向介绍3','个人简介3','学术成果3','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian3.jpg','学工号3','学生姓名3','第一志愿','是','');
insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (104,'2021-04-23 13:26:49','导师账号4','导师姓名4','男','职称4','邮箱4','研究方向4','研究方向介绍4','个人简介4','学术成果4','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian4.jpg','学工号4','学生姓名4','第一志愿','是','');
insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (105,'2021-04-23 13:26:49','导师账号5','导师姓名5','男','职称5','邮箱5','研究方向5','研究方向介绍5','个人简介5','学术成果5','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian5.jpg','学工号5','学生姓名5','第一志愿','是','');
insert  into `yixuandaoshi`(`id`,`addtime`,`daoshizhanghao`,`daoshixingming`,`xingbie`,`zhicheng`,`youxiang`,`yanjiufangxiang`,`yanjiufangxiangjieshao`,`gerenjianjie`,`xueshuchengguo`,`zhaopian`,`xuegonghao`,`xueshengxingming`,`zhiyuanshunxu`,`sfsh`,`shhf`) values (106,'2021-04-23 13:26:49','导师账号6','导师姓名6','男','职称6','邮箱6','研究方向6','研究方向介绍6','个人简介6','学术成果6','http://localhost:8080/ssm7b7gg/upload/yixuandaoshi_zhaopian6.jpg','学工号6','学生姓名6','第一志愿','是','');

/*Table structure for table `zhuanye` */

DROP TABLE IF EXISTS `zhuanye`;

CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='专业';

/*Data for the table `zhuanye` */

insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (41,'2021-04-23 13:26:49','专业1');
insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (42,'2021-04-23 13:26:49','专业2');
insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (43,'2021-04-23 13:26:49','专业3');
insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (44,'2021-04-23 13:26:49','专业4');
insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (45,'2021-04-23 13:26:49','专业5');
insert  into `zhuanye`(`id`,`addtime`,`zhuanye`) values (46,'2021-04-23 13:26:49','专业6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
