/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.11-log : Database - management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`management` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `management`;

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `managerId` int(11) NOT NULL AUTO_INCREMENT,
  `managerName` varchar(20) NOT NULL,
  `managerPwd` varchar(50) NOT NULL,
  `managerNumber` varchar(30) NOT NULL,
  PRIMARY KEY (`managerId`),
  UNIQUE KEY `managerNumber` (`managerNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `manager` */

insert  into `manager`(`managerId`,`managerName`,`managerPwd`,`managerNumber`) values (1,'李腊梅','e44b455ca13934ebb2906f3796b138f1','admin1'),(2,'白凡','e44b455ca13934ebb2906f3796b138f1','admin2'),(3,'韩苗苗','e44b455ca13934ebb2906f3796b138f1','admin3'),(4,'沈笑弦','e44b455ca13934ebb2906f3796b138f1','admin4'),(5,'金蕊丽','e44b455ca13934ebb2906f3796b138f1','admin5'),(6,'陈巩','e44b455ca13934ebb2906f3796b138f1','admin6'),(7,'智勇博','e44b455ca13934ebb2906f3796b138f1','admin7'),(8,'郭鑫','e44b455ca13934ebb2906f3796b138f1','admin8'),(9,'妓媛','e44b455ca13934ebb2906f3796b138f1','admin9');

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `userloginId` int(11) NOT NULL AUTO_INCREMENT,
  `userloginName` varchar(20) NOT NULL,
  `userloginPwd` varchar(100) NOT NULL,
  `userloginNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`userloginId`),
  UNIQUE KEY `userloginNumber` (`userloginNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `userlogin` */

insert  into `userlogin`(`userloginId`,`userloginName`,`userloginPwd`,`userloginNumber`) values (1,'李腊梅','e44b455ca13934ebb2906f3796b138f1','user1001'),(2,'白凡','e44b455ca13934ebb2906f3796b138f1','user1002'),(3,'韩苗苗','e44b455ca13934ebb2906f3796b138f1','user1003'),(4,'沈笑弦','e44b455ca13934ebb2906f3796b138f1','user1004'),(5,'金蕊丽','e44b455ca13934ebb2906f3796b138f1','user1005'),(6,'陈巩','e44b455ca13934ebb2906f3796b138f1','user1006'),(7,'智勇博','e44b455ca13934ebb2906f3796b138f1','user1007'),(8,'郭鑫','e44b455ca13934ebb2906f3796b138f1','user1008'),(9,'妓媛','e44b455ca13934ebb2906f3796b138f1','user1009');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `userNumber` varchar(50) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `userSex` enum('男','女') NOT NULL,
  `userTitle` varchar(30) DEFAULT NULL,
  `userformerDept` varchar(50) DEFAULT NULL,
  `usernowDept` varchar(50) DEFAULT NULL,
  `userSalary` decimal(9,2) DEFAULT NULL,
  `userTrain` varchar(30) DEFAULT NULL,
  `userReward` decimal(9,2) DEFAULT NULL,
  `userGrade` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userNumber` (`userNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`userId`,`userNumber`,`userName`,`userSex`,`userTitle`,`userformerDept`,`usernowDept`,`userSalary`,`userTrain`,`userReward`,`userGrade`) values (1,'user1001','李腊梅','女','总经理','行政部','企划部','5000.00','是','4400.00','89.00'),(2,'user1002','白凡','女','普通员工','设计部 ','设计部','4500.00','是','4500.00','84.00'),(3,'user1003','韩苗苗','女','副总监','销售部 ','设计部','4500.00','否','5550.00','94.00'),(4,'user1004','沈笑弦','女','普通员工','销售部 ','销售部','3000.00','否','3400.00','85.00'),(5,'user1005','金蕊丽','女','总经理','人事部 ','人事部','4000.00','是','990.00','90.00'),(6,'user1006','陈巩','男','总裁','行政部','设计部','5000.00','是','409.00','40.00'),(7,'user1007','智勇博','女','普通员工','人事部 ','人事部','4000.00','否','-500.00','85.00'),(8,'user1008','郭鑫','男','普通员工','销售部','销售部','3000.00','是','5590.00','94.00'),(9,'user1009','妓媛','女','普通员工','设计部 ','设计部','5000.00','是','3400.00','93.00'),(10,'user1010','李腊梅','女','总监','行政部','行政部','5000.00','是','4400.00','89.00'),(11,'user1011','妓媛','女','普通员工','设计部 ','设计部','5000.00','是','3400.00','93.00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
