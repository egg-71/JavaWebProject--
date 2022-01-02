/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.23 : Database - property_management_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`property_management_system` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `property_management_system`;

/*Table structure for table `tb_fee` */

DROP TABLE IF EXISTS `tb_fee`;

CREATE TABLE `tb_fee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feename` varchar(20) DEFAULT NULL,
  `manager` varchar(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `more` varchar(50) DEFAULT NULL,
  `feetype` varchar(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `tb_fee` */

insert  into `tb_fee`(`id`,`feename`,`manager`,`price`,`more`,`feetype`) values (37,'维护费12.26','蒋馨云',8956,'公共设施维护更新费用','维护费'),(41,'垃圾费','包晓瑜',556,'','清洁费'),(42,'垃圾费','张文献',1230,'无','清洁费');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`password`,`name`,`age`,`sex`,`phone`,`type`) values (1,'123','包晓瑜',35,'女','18076590071','管理员'),(24,'123','朱楚楚',NULL,NULL,'108@qq.com',NULL),(25,'456','朱少华',NULL,NULL,'108@qq.com',NULL);

/*Table structure for table `tb_usermessage` */

DROP TABLE IF EXISTS `tb_usermessage`;

CREATE TABLE `tb_usermessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `tb_usermessage` */

insert  into `tb_usermessage`(`id`,`name`,`age`,`phone`,`address`,`type`) values (1,'朱楚楚',20,'18810558710','校内四号楼316','业主'),(16,'赵雨晴',21,'18810558710','789','业主'),(25,'包晓瑜',21,'18810556945','校内四号楼316','业主'),(26,'李栋旭',40,'18888888888','韩国首尔麻辣鸡街121号','业主'),(27,'朱少华',19,'18810558710','赛欧321','业主'),(28,'朱楚楚',21,'18810556945','258','管理员'),(29,'朱少华',20,'18810556945','赛欧123','业主');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
