/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1qp70
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1qp70` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1qp70`;

/*Table structure for table `banjileixing` */

DROP TABLE IF EXISTS `banjileixing`;

CREATE TABLE `banjileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='班级类型';

/*Data for the table `banjileixing` */

insert  into `banjileixing`(`id`,`addtime`,`fenlei`) values (71,'2021-04-08 20:28:16','大三'),(72,'2021-04-08 20:28:16','分类2'),(73,'2021-04-08 20:28:16','分类3'),(74,'2021-04-08 20:28:16','分类4'),(75,'2021-04-08 20:28:16','分类5'),(76,'2021-04-08 20:28:16','分类6');

/*Table structure for table `biaoqianleixing` */

DROP TABLE IF EXISTS `biaoqianleixing`;

CREATE TABLE `biaoqianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='标签类型';

/*Data for the table `biaoqianleixing` */

insert  into `biaoqianleixing`(`id`,`addtime`,`leixing`) values (81,'2021-04-08 20:28:16','XX'),(82,'2021-04-08 20:28:16','类型2'),(83,'2021-04-08 20:28:16','类型3'),(84,'2021-04-08 20:28:16','类型4'),(85,'2021-04-08 20:28:16','类型5'),(86,'2021-04-08 20:28:16','类型6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1qp70/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1qp70/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1qp70/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885137629 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`,`tupian`) values (21,'2021-04-08 20:28:16','教师1','123456','教师姓名1','女','教导主任','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian1.jpg'),(22,'2021-04-08 20:28:16','教师2','123456','教师姓名2','男','职位2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian2.jpg'),(23,'2021-04-08 20:28:16','教师3','123456','教师姓名3','男','职位3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian3.jpg'),(24,'2021-04-08 20:28:16','教师4','123456','教师姓名4','男','职位4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian4.jpg'),(25,'2021-04-08 20:28:16','教师5','123456','教师姓名5','男','职位5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian5.jpg'),(26,'2021-04-08 20:28:16','教师6','123456','教师姓名6','男','职位6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm1qp70/upload/jiaoshi_tupian6.jpg'),(1617885137628,'2021-04-08 20:32:17','1','1','1','男','数学老师',NULL,NULL,NULL,NULL);

/*Table structure for table `kaoshichengji` */

DROP TABLE IF EXISTS `kaoshichengji`;

CREATE TABLE `kaoshichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ceshimingcheng` varchar(200) DEFAULT NULL COMMENT '测试名称',
  `zhengqueshu` int(11) DEFAULT NULL COMMENT '正确数',
  `kaoshichengji` int(11) DEFAULT NULL COMMENT '考试成绩',
  `paiming` int(11) DEFAULT NULL COMMENT '排名',
  `pingyu` longtext COMMENT '评语',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885240595 DEFAULT CHARSET=utf8 COMMENT='考试成绩';

/*Data for the table `kaoshichengji` */

insert  into `kaoshichengji`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`ceshimingcheng`,`zhengqueshu`,`kaoshichengji`,`paiming`,`pingyu`,`tupian`,`userid`) values (61,'2021-04-08 20:28:16','教师工号1','教师姓名1','学号1','姓名1','测试名称1',1,1,1,'评语1','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian1.jpg',1),(62,'2021-04-08 20:28:16','教师工号2','教师姓名2','学号2','姓名2','测试名称2',2,2,2,'评语2','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian2.jpg',2),(63,'2021-04-08 20:28:16','教师工号3','教师姓名3','学号3','姓名3','测试名称3',3,3,3,'评语3','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian3.jpg',3),(64,'2021-04-08 20:28:16','教师工号4','教师姓名4','学号4','姓名4','测试名称4',4,4,4,'评语4','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian4.jpg',4),(65,'2021-04-08 20:28:16','教师工号5','教师姓名5','学号5','姓名5','测试名称5',5,5,5,'评语5','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian5.jpg',5),(66,'2021-04-08 20:28:16','教师工号6','教师姓名6','学号6','姓名6','测试名称6',6,6,6,'评语6','http://localhost:8080/ssm1qp70/upload/kaoshichengji_tupian6.jpg',6),(1617885240594,'2021-04-08 20:34:00','1','1','1','1','XXX',60,85,3,'xxx','http://localhost:8080/ssm1qp70/upload/1617885236275.png',1617885137628);

/*Table structure for table `shijuanpiyue` */

DROP TABLE IF EXISTS `shijuanpiyue`;

CREATE TABLE `shijuanpiyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `dati` varchar(200) DEFAULT NULL COMMENT '答题',
  `pigai` varchar(200) DEFAULT NULL COMMENT '批改',
  `zhengquedaan` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885356858 DEFAULT CHARSET=utf8 COMMENT='试卷批阅';

/*Data for the table `shijuanpiyue` */

insert  into `shijuanpiyue`(`id`,`addtime`,`xuehao`,`xingming`,`jiaoshigonghao`,`jiaoshixingming`,`timu`,`dati`,`pigai`,`zhengquedaan`,`beizhu`,`tupian`,`userid`) values (51,'2021-04-08 20:28:16','学号1','姓名1','教师工号1','教师姓名1','题目1','答题1','√','正确答案1','备注1','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian1.jpg',1),(52,'2021-04-08 20:28:16','学号2','姓名2','教师工号2','教师姓名2','题目2','答题2','√','正确答案2','备注2','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian2.jpg',2),(53,'2021-04-08 20:28:16','学号3','姓名3','教师工号3','教师姓名3','题目3','答题3','√','正确答案3','备注3','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian3.jpg',3),(54,'2021-04-08 20:28:16','学号4','姓名4','教师工号4','教师姓名4','题目4','答题4','√','正确答案4','备注4','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian4.jpg',4),(55,'2021-04-08 20:28:16','学号5','姓名5','教师工号5','教师姓名5','题目5','答题5','√','正确答案5','备注5','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian5.jpg',5),(56,'2021-04-08 20:28:16','学号6','姓名6','教师工号6','教师姓名6','题目6','答题6','√','正确答案6','备注6','http://localhost:8080/ssm1qp70/upload/shijuanpiyue_tupian6.jpg',6),(1617885356857,'2021-04-08 20:35:56','1','1','','1','XXXXX','a','√','A','XXX','http://localhost:8080/ssm1qp70/upload/1617885191285.jpg',1617885137628);

/*Table structure for table `shiticeshi` */

DROP TABLE IF EXISTS `shiticeshi`;

CREATE TABLE `shiticeshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `timuleixing` varchar(200) DEFAULT NULL COMMENT '题目类型',
  `defen` int(11) DEFAULT NULL COMMENT '得分',
  `xuanxiang` varchar(200) DEFAULT NULL COMMENT '选项',
  `dati` varchar(200) DEFAULT NULL COMMENT '答题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885307294 DEFAULT CHARSET=utf8 COMMENT='试题测试';

/*Data for the table `shiticeshi` */

insert  into `shiticeshi`(`id`,`addtime`,`xuehao`,`xingming`,`timu`,`timuleixing`,`defen`,`xuanxiang`,`dati`,`tupian`,`userid`) values (41,'2021-04-08 20:28:16','学号1','姓名1','题目1','题目类型1',1,'选项1','答题1','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian1.jpg',1),(42,'2021-04-08 20:28:16','学号2','姓名2','题目2','题目类型2',2,'选项2','答题2','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian2.jpg',2),(43,'2021-04-08 20:28:16','学号3','姓名3','题目3','题目类型3',3,'选项3','答题3','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian3.jpg',3),(44,'2021-04-08 20:28:16','学号4','姓名4','题目4','题目类型4',4,'选项4','答题4','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian4.jpg',4),(45,'2021-04-08 20:28:16','学号5','姓名5','题目5','题目类型5',5,'选项5','答题5','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian5.jpg',5),(46,'2021-04-08 20:28:16','学号6','姓名6','题目6','题目类型6',6,'选项6','答题6','http://localhost:8080/ssm1qp70/upload/shiticeshi_tupian6.jpg',6),(1617885307293,'2021-04-08 20:35:07','1','1','XXXXX','选择题',10,'a.3   b.4  c.5  d.6','a','http://localhost:8080/ssm1qp70/upload/1617885191285.jpg',11);

/*Table structure for table `shitixinxi` */

DROP TABLE IF EXISTS `shitixinxi`;

CREATE TABLE `shitixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `ceshimingcheng` varchar(200) DEFAULT NULL COMMENT '测试名称',
  `biaoqianleixing` varchar(200) DEFAULT NULL COMMENT '标签类型',
  `nandudengji` varchar(200) DEFAULT NULL COMMENT '难度等级',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `timuleixing` varchar(200) DEFAULT NULL COMMENT '题目类型',
  `defen` int(11) DEFAULT NULL COMMENT '得分',
  `xuanxiang` varchar(200) DEFAULT NULL COMMENT '选项',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885193714 DEFAULT CHARSET=utf8 COMMENT='试题信息';

/*Data for the table `shitixinxi` */

insert  into `shitixinxi`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`ceshimingcheng`,`biaoqianleixing`,`nandudengji`,`timu`,`timuleixing`,`defen`,`xuanxiang`,`tupian`) values (31,'2021-04-08 20:28:16','教师工号1','教师姓名1','测试名称1','标签类型1','A','题目1','填空题',1,'选项1','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian1.jpg'),(32,'2021-04-08 20:28:16','教师工号2','教师姓名2','测试名称2','标签类型2','A','题目2','填空题',2,'选项2','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian2.jpg'),(33,'2021-04-08 20:28:16','教师工号3','教师姓名3','测试名称3','标签类型3','A','题目3','填空题',3,'选项3','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian3.jpg'),(34,'2021-04-08 20:28:16','教师工号4','教师姓名4','测试名称4','标签类型4','A','题目4','填空题',4,'选项4','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian4.jpg'),(35,'2021-04-08 20:28:16','教师工号5','教师姓名5','测试名称5','标签类型5','A','题目5','填空题',5,'选项5','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian5.jpg'),(36,'2021-04-08 20:28:16','教师工号6','教师姓名6','测试名称6','标签类型6','A','题目6','填空题',6,'选项6','http://localhost:8080/ssm1qp70/upload/shitixinxi_tupian6.jpg'),(1617885193713,'2021-04-08 20:33:13','1','1','XXX','类型1','A','XXXXX','选择题',10,'a.3   b.4  c.5  d.6','http://localhost:8080/ssm1qp70/upload/1617885191285.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617885137628,'1','jiaoshi','教师','il4rll78xsg7pszgaj2qlt56p9phkeaj','2021-04-08 20:32:22','2021-04-08 21:35:40'),(2,11,'1','xuesheng','学生','2iwx5lj066676ix1f4rc9d7fyr6t0xim','2021-04-08 20:34:44','2021-04-08 21:34:44'),(3,1,'abo','users','管理员','gxs1czed70njynd2yfhwck0qko8hvmdx','2021-04-08 20:36:59','2021-04-08 21:38:55');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 20:28:16');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`banji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-08 20:28:16','1','1','1','女','分类1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-08 20:28:16','学生2','123456','姓名2','男','班级2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-08 20:28:16','学生3','123456','姓名3','男','班级3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-08 20:28:16','学生4','123456','姓名4','男','班级4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-08 20:28:16','学生5','123456','姓名5','男','班级5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-08 20:28:16','学生6','123456','姓名6','男','班级6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm1qp70/upload/xuesheng_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
