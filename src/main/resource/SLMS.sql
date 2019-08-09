CREATE DATABASE  IF NOT EXISTS `slms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `slms`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: slms
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*==============================================================*/
/* Table: card                                                  */
/*==============================================================*/
create table card
(
   card_id              varchar(13) not null,
   card_balance         int(8),
   card_status          enum('未挂失','已挂失'),
   primary key (card_id)
);


LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('2017113629',200,'未挂失'),('2017113630',100,'未挂失'),('2017113631',120,'未挂失'),('2017113639',38,'未挂失');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

/*==============================================================*/
/* Table: dormitory                                             */
/*==============================================================*/
create table dormitory
(
   dor_id               varchar(32) not null,
   dor_fee              int(9),
   dor_full             enum('已满','未满'),
   primary key (dor_id)
);

LOCK TABLES `dormitory` WRITE;
/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
INSERT INTO `dormitory` VALUES ('XY06418',200,'已满'),('XY06537',200,'已满'),('XY05418',200,'已满'),('XN06418',200,'已满'),('XY06438',200,'未满');
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `class` (
  `class_id` varchar(32) NOT NULL,
  `class_major` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `class_grade` int(11) NOT NULL,
  `class_stu_num` char(12) DEFAULT NULL,
  `class_tea_num` char(12) DEFAULT NULL,
  `class_remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`),
  KEY `c_m_idx` (`class_major`),
  KEY `c_g_idx` (`class_grade`),
  CONSTRAINT `c_g` FOREIGN KEY (`class_grade`) REFERENCES `grade` (`grade_id`),
  CONSTRAINT `c_m` FOREIGN KEY (`class_major`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('0824d28fa0a711e991dd54ab3aa53988',4,'2017级信软学院1101',6,'','',''),('22223114ab6111e9976254ab3aa53988',9,'2017级信软学院1102',6,'','',''),('2d69671dab6111e9976254ab3aa53988',8,'2017级信软学院1103',4,'','',''),('4039c6fe91ca11e99f1554ab3aa53988',2,'2017级信软学院1003',6,NULL,NULL,'数信'),('437757baa0a611e991dd54ab3aa53988',1,'2017级信软学院1001',4,'2017221001003','100000000003',''),('48b48061ab6111e9976254ab3aa53988',10,'2016级信软学院1101',2,'','',''),('4da07558a0a711e991dd54ab3aa53988',4,'2015级信软学院1101',4,'','',''),('569b0b4cab6111e9976254ab3aa53988',11,'2014级信软学院1101',2,'','',''),('6382641aa0a711e991dd54ab3aa53988',6,'2013级信软学院1101',6,'','',''),('e7bea2f7a0a611e991dd54ab3aa53988',5,'2018级信软学院1101',4,'','',''),('6fe9c465a0a711e991dd54ab3aa53988',6,'2014级机械自动化1班',4,'','',''),('7bb58cc1a0a711e991dd54ab3aa53988',7,'2016级核能源1班',6,'','',''),('85e4be3ea0a711e991dd54ab3aa53988',7,'2014核能源1班',4,'','',''),('9ee003b5a0a611e991dd54ab3aa53988',1,'2012级计算机1班',2,'512000000002','',''),('bccf84aaa0a611e991dd54ab3aa53988',2,'2014级信安1班',4,'','',''),('c86fae77a0a611e991dd54ab3aa53988',3,'2014级软件1班',4,'','',''),('d6384ce7a0a611e991dd54ab3aa53988',5,'2016级新闻传播1班',6,'','',''),('e00d47d58ce811e98a0b54ab3aa53988',1,'2016级计算机1班',6,'516030910429','100000000001',NULL),('e7bea2f7a0a611e991dd54ab3aa53998',5,'2014级新闻传播1班',4,'','','');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `college` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(50) NOT NULL,
  `college_property` enum('工科','理科','文科') DEFAULT NULL,
  `college_tea_num` char(12) DEFAULT NULL,
  `college_remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`college_id`),
  UNIQUE KEY `college_name_UNIQUE` (`college_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'信息与软件工程学院','工科','100000000001',NULL),(2,'计算机学院','工科','100000000023',''),(3,'医学院','工科','100000000035',''),(4,'格拉斯哥学院','工科','100000000050',''),(5,'数学科学学院','理科','100000000060','');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `grade_stu_num` char(12) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `grade_tea_num` char(12) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `grade_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_name_UNIQUE` (`grade_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'2011级',NULL,NULL,NULL),(2,'2012级',NULL,NULL,NULL),(3,'2013级',NULL,NULL,NULL),(4,'2014级',NULL,NULL,NULL),(5,'2015级',NULL,NULL,NULL),(6,'2016级','516030910429',NULL,NULL),(7,'2017级',NULL,NULL,NULL),(8,'2018级',NULL,NULL,NULL),(9,'2019级',NULL,NULL,NULL),(10,'2020级',NULL,NULL,NULL);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `major` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_college` int(11) NOT NULL,
  `major_name` varchar(50) NOT NULL,
  `major_tea_num` char(12) DEFAULT NULL,
  `major_remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`major_id`),
  UNIQUE KEY `major_name_UNIQUE` (`major_name`),
  KEY `m_c_idx` (`major_college`),
  CONSTRAINT `m_c` FOREIGN KEY (`major_college`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,1,'计算机科学','100000000001',''),(2,1,'系统与技术','100000000002',''),(3,1,'软件工程','100000000016',''),(4,2,'嵌入式系统','100000000023',''),(5,2,'新闻传播系','100000000024',''),(6,3,'欠收拾系统','100000000035',''),(7,3,'能源与生活','100000000040',''),(8,5,'应用数学','100000000055',''),(9,5,'基础数学','100000000060','');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `stu_id` varchar(32) NOT NULL,
  `stu_class` varchar(32) NOT NULL,
  `stu_num` char(13) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_sex` enum('男','女') NOT NULL,
  `stu_birthday` date DEFAULT NULL,
  `stu_grade` int(11) NOT NULL,
  `stu_degree` enum('本科','硕士','博士') NOT NULL,
  `stu_phone` char(11) DEFAULT NULL,
  `stu_remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stu_num_UNIQUE` (`stu_num`),
  KEY `s_c_idx` (`stu_class`),
  KEY `s_g_idx` (`stu_grade`),
  CONSTRAINT `s_c` FOREIGN KEY (`stu_class`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `s_g` FOREIGN KEY (`stu_grade`) REFERENCES `grade` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--
LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('00b2bafea0b011e991dd54ab3aa53988','4039c6fe91ca11e99f1554ab3aa53988','2017221101025','麦尔旦','男','2000-01-21',7,'本科','',''),('050bed99ab6e11e9976254ab3aa53988','2d69671dab6111e9976254ab3aa53988','2017221101001','ljijcj','男','2000-03-09',7,'硕士','',''),('06c36f7ba0b411e991dd54ab3aa53988','4da07558a0a711e991dd54ab3aa53988','2017221101002','周树人','男','1998-01-21',4,'硕士','',''),('07bf6df0a0ad11e991dd54ab3aa53988','437757baa0a611e991dd54ab3aa53988','2017222333003','Mardan','男','2000-01-08',4,'硕士','',''),('08cf3c8cab7011e9976254ab3aa53988','569b0b4cab6111e9976254ab3aa53988','2019221101004','小五','男','2000-01-01',2,'博士','',''),('0aad7904a0b311e991dd54ab3aa53988','0824d28fa0a711e991dd54ab3aa53988','2020221101006','大佬6','女','2000-02-01',6,'本科','','');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `tea_id` varchar(32) NOT NULL,
  `tea_major` int(11) NOT NULL,
  `tea_num` char(12) NOT NULL,
  `tea_name` varchar(50) NOT NULL,
  `tea_sex` enum('男','女') NOT NULL,
  `tea_birthday` date DEFAULT NULL,
  `tea_title` int(11) NOT NULL,
  `tea_phone` varchar(11) DEFAULT NULL,
  `tea_remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`tea_id`),
  UNIQUE KEY `tea_num_UNIQUE` (`tea_num`),
  KEY `t_m_idx` (`tea_major`),
  KEY `t_t_idx` (`tea_title`),
  CONSTRAINT `t_m` FOREIGN KEY (`tea_major`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_t` FOREIGN KEY (`tea_title`) REFERENCES `title` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('055f59a6ab7411e9976254ab3aa53988',9,'100000000060','秦超','男','1995-01-01',1,'',''),('071086e6ab7311e9976254ab3aa53988',10,'100000000046','范家荣','男','1999-01-01',2,'',''),('08718354ab7211e9976254ab3aa53988',5,'100000000031','王艳艳','女','1980-01-01',1,'',''),('10ea9150ab7111e9976254ab3aa53988',2,'100000000014','齐翔','男','1980-01-01',3,'','');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `title` (
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `title_name_UNIQUE` (`title_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'教授',NULL),(2,'副教授',NULL),(3,'研究员',NULL),(4,'副研究员',NULL),(5,'高级工程师',NULL);
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(13) NOT NULL,
  `user_nickname` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_identity` enum('学生','教师','管理员') NOT NULL,
  `user_icon` varchar(500) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1adb593211b14216bcf9d009dd51cad2','2017221101025','Mardan','Z5OtYgV5ia7CSsBmWful8w==','学生','/static/custom/img/uploadUserIcon/user_default_icon.jpg','13086617863@126.com','13681864361'),('82d583c0b3cc4d6a87fd5460c87c0f05','1101','管理员1101','Z5OtYgV5ia7CSsBmWful8w==','管理员','/static/custom/img/uploadUserIcon/user_default_icon.jpg','1140655668@qq.com','13686864361'),('eddb5442a19d4d1186fda4bf45c65c99','100000000001','王艳艳','unv/emQ2LFaEzNvxHNznvA==','教师','/static/custom/img/uploadUserIcon/user_default_icon.jpg','201700000000@qq.com','12345678901');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'slms'
--

--
-- Dumping routines for database 'slms'
--
/*!50003 DROP PROCEDURE IF EXISTS `count_stu_percent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `count_stu_percent`(IN type_ varchar(50), IN college_name_ varchar(50), IN major_name_ varchar(50))
BEGIN
	case type_
		when 'allCollege' then
			select count(*) as total,c2.college_name as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id inner join college c2 on c2.college_id=m1.major_college group by c2.college_id;
		when 'majorUnderCollege' then
			select count(*) as total,m1.major_name as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id inner join college c2 on c2.college_id=m1.major_college and c2.college_name=college_name_ group by m1.major_id;
		when 'allMajor' then
			select count(*) as total,m1.major_name as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id group by m1.major_id;
		when 'classUnderMajor' then
			select count(*) as total,c1.class_name as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id and m1.major_name=major_name_ group by c1.class_id;
		when 'allClass' then
			select count(*) as total,c1.class_name as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id group by c1.class_id;
		when 'grade' then
			select count(*) as total,g1.grade_name as commonName from student s1 inner join grade g1 on s1.stu_grade=g1.grade_id group by g1.grade_id;
		when 'allCollegeByStuDegree' then
			select count(*) as total,s1.stu_degree as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id inner join college c2 on c2.college_id=m1.major_college and c2.college_name=college_name_ group by s1.stu_degree;
		when 'majorUnderCollegeByStuDegree' then
			select count(*) as total,s1.stu_degree as commonName from student s1 inner join class c1 on s1.stu_class=c1.class_id inner join major m1 on c1.class_major=m1.major_id and m1.major_name=major_name_ group by s1.stu_degree;
        when 'wholeSchoolByStuDegree' then
			select count(*) as total,s1.stu_degree as commonName from student s1 group by s1.stu_degree;
        else
			select 0 as total,'' as commonName;
    end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_tea_percent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_tea_percent`(IN type_ varchar(50), IN college_name_ varchar(50), IN major_name_ varchar(50))
begin
	case type_
		when 'allCollegeByTeaTitle' then
			select count(*) as total,t2.title_name as commonName from teacher t1 inner join title t2 on t1.tea_title=t2.title_id inner join major m1 on t1.tea_major=m1.major_id inner join college c1 on m1.major_college=c1.college_id and c1.college_name=college_name_ group by t1.tea_title;
		when 'wholeSchoolByTeaTitle' then
			select count(*) as total,t2.title_name as commonName from teacher t1 inner join title t2 on t1.tea_title=t2.title_id group by t1.tea_title;
		when 'allMajorByTeaTitle' then
			select count(*) as total,t2.title_name as commonName from teacher t1 inner join title t2 on t1.tea_title=t2.title_id inner join major m1 on t1.tea_major=m1.major_id and m1.major_name=major_name_ group by t1.tea_title;
        else
			select 0 as total,'' as commonName;
    end case;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25 17:18:09
