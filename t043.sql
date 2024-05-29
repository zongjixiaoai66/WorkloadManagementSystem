/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t043`;
CREATE DATABASE IF NOT EXISTS `t043` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t043`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootrpj39/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootrpj39/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootrpj39/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `fenleixinxi`;
CREATE TABLE IF NOT EXISTS `fenleixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='分类信息';

DELETE FROM `fenleixinxi`;
INSERT INTO `fenleixinxi` (`id`, `addtime`, `fenlei`) VALUES
	(21, '2021-03-28 03:10:16', '分类1'),
	(22, '2021-03-28 03:10:16', '分类2'),
	(23, '2021-03-28 03:10:16', '分类3'),
	(24, '2021-03-28 03:10:16', '分类4'),
	(25, '2021-03-28 03:10:16', '分类5'),
	(26, '2021-03-28 03:10:16', '分类6');

DROP TABLE IF EXISTS `gongzuoliang`;
CREATE TABLE IF NOT EXISTS `gongzuoliang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lilun` varchar(200) DEFAULT NULL COMMENT '理论',
  `shiyan` varchar(200) DEFAULT NULL COMMENT '实验',
  `shixi` longtext COMMENT '实习',
  `kechengxishu` varchar(200) DEFAULT NULL COMMENT '课程系数',
  `hebanshuliang` varchar(200) DEFAULT NULL COMMENT '合班数量',
  `hebanxishu` varchar(200) DEFAULT NULL COMMENT '合班系数',
  `zuoyezengliangxishu` varchar(200) DEFAULT NULL COMMENT '作业增量系数',
  `zuoyezengliang` varchar(200) DEFAULT NULL COMMENT '作业增量',
  `shiyanleixingxishu` varchar(200) DEFAULT NULL COMMENT '实验类型系数',
  `shixidiaozhengxishu` varchar(200) DEFAULT NULL COMMENT '实习调整系数',
  `dangliangxueshi` varchar(200) DEFAULT NULL COMMENT '当量学时',
  `beizhu` longtext COMMENT '备注',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tijiaoshijian` date DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616902557119 DEFAULT CHARSET=utf8mb3 COMMENT='工作量';

DELETE FROM `gongzuoliang`;
INSERT INTO `gongzuoliang` (`id`, `addtime`, `lilun`, `shiyan`, `shixi`, `kechengxishu`, `hebanshuliang`, `hebanxishu`, `zuoyezengliangxishu`, `zuoyezengliang`, `shiyanleixingxishu`, `shixidiaozhengxishu`, `dangliangxueshi`, `beizhu`, `jiaoshigonghao`, `jiaoshixingming`, `tijiaoshijian`) VALUES
	(41, '2021-03-28 03:10:16', '理论1', '实验1', '实习1', '课程系数1', '合班数量1', '合班系数1', '作业增量系数1', '作业增量1', '实验类型系数1', '实习调整系数1', '当量学时1', '备注1', '1', '教师姓名1', '2021-03-28'),
	(42, '2021-03-28 03:10:16', '理论2', '实验2', '实习2', '课程系数2', '合班数量2', '合班系数2', '作业增量系数2', '作业增量2', '实验类型系数2', '实习调整系数2', '当量学时2', '备注2', '教师工号2', '教师姓名2', '2021-03-28'),
	(43, '2021-03-28 03:10:16', '理论3', '实验3', '实习3', '课程系数3', '合班数量3', '合班系数3', '作业增量系数3', '作业增量3', '实验类型系数3', '实习调整系数3', '当量学时3', '备注3', '教师工号3', '教师姓名3', '2021-03-28'),
	(44, '2021-03-28 03:10:16', '理论4', '实验4', '实习4', '课程系数4', '合班数量4', '合班系数4', '作业增量系数4', '作业增量4', '实验类型系数4', '实习调整系数4', '当量学时4', '备注4', '教师工号4', '教师姓名4', '2021-03-28'),
	(45, '2021-03-28 03:10:16', '理论5', '实验5', '实习5', '课程系数5', '合班数量5', '合班系数5', '作业增量系数5', '作业增量5', '实验类型系数5', '实习调整系数5', '当量学时5', '备注5', '教师工号5', '教师姓名5', '2021-03-28'),
	(46, '2021-03-28 03:10:16', '理论6', '实验6', '实习6', '课程系数6', '合班数量6', '合班系数6', '作业增量系数6', '作业增量6', '实验类型系数6', '实习调整系数6', '当量学时6', '备注6', '教师工号6', '教师姓名6', '2021-03-28');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `jiaoshigonghao`, `mima`, `jiaoshixingming`, `xingbie`, `zhaopian`, `zhicheng`, `lianxidianhua`, `jiaoshiyouxiang`) VALUES
	(11, '2021-03-28 03:10:16', '教师1', '123456', '教师姓名1', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian1.jpg', '高级讲师', '13823888881', '773890001@qq.com'),
	(12, '2021-03-28 03:10:16', '教师2', '123456', '教师姓名2', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian2.jpg', '高级讲师', '13823888882', '773890002@qq.com'),
	(13, '2021-03-28 03:10:16', '教师3', '123456', '教师姓名3', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian3.jpg', '高级讲师', '13823888883', '773890003@qq.com'),
	(14, '2021-03-28 03:10:16', '教师4', '123456', '教师姓名4', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian4.jpg', '高级讲师', '13823888884', '773890004@qq.com'),
	(15, '2021-03-28 03:10:16', '教师5', '123456', '教师姓名5', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian5.jpg', '高级讲师', '13823888885', '773890005@qq.com'),
	(16, '2021-03-28 03:10:16', '教师6', '123456', '教师姓名6', '男', 'http://localhost:8080/springbootrpj39/upload/jiaoshi_zhaopian6.jpg', '高级讲师', '13823888886', '773890006@qq.com');

DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE IF NOT EXISTS `kechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `jiaoxuedidian` varchar(200) DEFAULT NULL COMMENT '教学地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

DELETE FROM `kechengxinxi`;
INSERT INTO `kechengxinxi` (`id`, `addtime`, `kechengbianhao`, `kechengmingcheng`, `shangkeshijian`, `jiaoxuedidian`, `tupian`, `jiaoshigonghao`, `jiaoshixingming`, `kechengjieshao`, `fabushijian`) VALUES
	(31, '2021-03-28 03:10:16', '课程编号1', '课程名称1', '上课时间1', '教学地点1', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian1.jpg', '教师工号1', '教师姓名1', '课程介绍1', '2021-03-28'),
	(32, '2021-03-28 03:10:16', '课程编号2', '课程名称2', '上课时间2', '教学地点2', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian2.jpg', '教师工号2', '教师姓名2', '课程介绍2', '2021-03-28'),
	(33, '2021-03-28 03:10:16', '课程编号3', '课程名称3', '上课时间3', '教学地点3', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian3.jpg', '教师工号3', '教师姓名3', '课程介绍3', '2021-03-28'),
	(34, '2021-03-28 03:10:16', '课程编号4', '课程名称4', '上课时间4', '教学地点4', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian4.jpg', '教师工号4', '教师姓名4', '课程介绍4', '2021-03-28'),
	(35, '2021-03-28 03:10:16', '课程编号5', '课程名称5', '上课时间5', '教学地点5', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian5.jpg', '教师工号5', '教师姓名5', '课程介绍5', '2021-03-28'),
	(36, '2021-03-28 03:10:16', '课程编号6', '课程名称6', '上课时间6', '教学地点6', 'http://localhost:8080/springbootrpj39/upload/kechengxinxi_tupian6.jpg', '教师工号6', '教师姓名6', '课程介绍6', '2021-03-28');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(51, '2021-03-28 03:10:16', '标题1', '简介1', 'http://localhost:8080/springbootrpj39/upload/news_picture1.jpg', '内容1'),
	(52, '2021-03-28 03:10:16', '标题2', '简介2', 'http://localhost:8080/springbootrpj39/upload/news_picture2.jpg', '内容2'),
	(53, '2021-03-28 03:10:16', '标题3', '简介3', 'http://localhost:8080/springbootrpj39/upload/news_picture3.jpg', '内容3'),
	(54, '2021-03-28 03:10:16', '标题4', '简介4', 'http://localhost:8080/springbootrpj39/upload/news_picture4.jpg', '内容4'),
	(55, '2021-03-28 03:10:16', '标题5', '简介5', 'http://localhost:8080/springbootrpj39/upload/news_picture5.jpg', '内容5'),
	(56, '2021-03-28 03:10:16', '标题6', '简介6', 'http://localhost:8080/springbootrpj39/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'qitys3d2ruvmjec4u1gheo0rsi430d1t', '2021-03-28 03:32:23', '2024-01-13 09:57:14'),
	(2, 11, '1', 'jiaoshi', '教师', 'm8eadm7f6aehipueynpl54lphl3aqouj', '2021-03-28 03:34:08', '2024-01-13 09:57:58');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-28 03:10:17');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
