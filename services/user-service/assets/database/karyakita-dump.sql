-- MySQL dump 10.16  Distrib 10.1.40-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: karyakita_dev
-- ------------------------------------------------------
-- Server version	10.1.40-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alamat_order`
--

DROP TABLE IF EXISTS `alamat_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alamat_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamat_order`
--

LOCK TABLES `alamat_order` WRITE;
/*!40000 ALTER TABLE `alamat_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `alamat_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alamat_user`
--

DROP TABLE IF EXISTS `alamat_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alamat_user` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamat_user`
--

LOCK TABLES `alamat_user` WRITE;
/*!40000 ALTER TABLE `alamat_user` DISABLE KEYS */;
INSERT INTO `alamat_user` VALUES ('2019-01-02 00:00:00','2019-01-02 00:00:00',1,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',1),('2019-01-02 00:00:00','2019-01-02 00:00:00',2,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',22),('2019-01-02 00:00:00','2019-01-02 00:00:00',3,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',23),('2019-01-02 00:00:00','2019-01-02 00:00:00',4,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',25),('2019-01-02 00:00:00','2019-01-02 00:00:00',5,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',27),('2019-01-02 00:00:00','2019-01-02 00:00:00',6,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',28),('2019-01-02 00:00:00','2019-01-02 00:00:00',7,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',29),('2019-01-02 00:00:00','2019-01-02 00:00:00',8,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',30),('2019-01-02 00:00:00','2019-01-02 00:00:00',9,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',31),('2019-01-02 00:00:00','2019-01-02 00:00:00',10,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',32),('2019-01-02 00:00:00','2019-01-02 00:00:00',11,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',35),('2019-01-02 00:00:00','2019-01-02 00:00:00',12,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',36),('2019-01-02 00:00:00','2019-01-02 00:00:00',13,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',37),('2019-01-02 00:00:00','2019-01-02 00:00:00',14,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',40),('2019-01-02 00:00:00','2019-01-02 00:00:00',15,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',42),('2019-01-02 00:00:00','2019-01-02 00:00:00',16,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',43),('2019-01-02 00:00:00','2019-01-02 00:00:00',17,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',44),('2019-01-02 00:00:00','2019-01-02 00:00:00',18,'Sukololo','Surabaya','Jawa Timur','Gebang Wetan 23 b','60117',47),('2019-01-07 22:15:47','2019-01-07 22:15:47',19,'','','','','',48),('2019-01-08 04:30:11','2019-01-08 04:30:11',20,'','','','','',49),('2019-01-08 05:25:15','2019-01-08 05:25:15',21,'','','','','',51),('2019-01-08 06:44:28','2019-01-08 06:44:28',22,'','','','','',52),('2019-01-11 06:52:24','2019-01-11 06:52:24',23,'','','','','',53),('2019-01-30 06:50:40','2019-01-30 06:50:40',24,'','','','','',54);
/*!40000 ALTER TABLE `alamat_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive`
--

DROP TABLE IF EXISTS `archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext,
  `originalRecordId` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive`
--

LOCK TABLES `archive` WRITE;
/*!40000 ALTER TABLE `archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `is_from_sender` double DEFAULT NULL,
  `chat_header_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_header`
--

DROP TABLE IF EXISTS `chat_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_header` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelanggan_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_header`
--

LOCK TABLES `chat_header` WRITE;
/*!40000 ALTER TABLE `chat_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desainer`
--

DROP TABLE IF EXISTS `desainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desainer` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `subscriber` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desainer`
--

LOCK TABLES `desainer` WRITE;
/*!40000 ALTER TABLE `desainer` DISABLE KEYS */;
INSERT INTO `desainer` VALUES ('2018-10-06 15:16:50','2018-10-06 15:16:50',1,0,0,25),('2018-10-07 14:41:40','2018-10-07 14:41:40',2,0,0,29),('2018-10-30 07:43:37','2018-10-30 07:43:37',3,0,0,35),('2018-12-01 05:44:08','2018-12-01 05:44:08',4,0,0,36),('2018-12-03 02:40:00','2018-12-03 02:40:00',5,0,0,37);
/*!40000 ALTER TABLE `desainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_order`
--

DROP TABLE IF EXISTS `detail_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ukuran` varchar(255) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_order`
--

LOCK TABLES `detail_order` WRITE;
/*!40000 ALTER TABLE `detail_order` DISABLE KEYS */;
INSERT INTO `detail_order` VALUES ('2019-01-01 12:06:52','2019-01-01 12:06:52',1,'4r',0,0,'/images/order/custom/','1_Tue Jan 01 2019 12:06:51 GMT+0000 (UTC).png',62613,1),('2019-01-01 12:58:47','2019-01-01 12:58:47',2,'4r',0,0,'/images/order/custom/','2_Tue Jan 01 2019 12:58:47 GMT+0000 (UTC).png',62613,2),('2019-01-02 13:51:49','2019-01-02 13:51:49',3,'4R',0,0,'/images/order/direct/4/','4_Wed Jan 02 2019 13:51:49 GMT+0000 (UTC).png',0,4),('2019-01-02 13:53:39','2019-01-02 13:53:39',4,'A4',0,0,'/images/order/direct/5/','5_Wed Jan 02 2019 13:53:39 GMT+0000 (UTC).png',0,5),('2019-01-04 04:59:41','2019-01-04 04:59:41',5,'A4',0,0,'/images/order/direct/6/','6_Fri Jan 04 2019 04:59:41 GMT+0000 (UTC).png',0,6),('2019-01-04 09:14:10','2019-01-04 09:14:10',6,'A4',0,0,'/images/order/direct/7/','7_Fri Jan 04 2019 09:14:10 GMT+0000 (UTC).png',0,7),('2019-01-04 09:33:33','2019-01-04 09:33:33',7,'A4',0,0,'/images/order/direct/8/','8_Fri Jan 04 2019 09:33:33 GMT+0000 (UTC).png',0,8),('2019-01-04 09:35:43','2019-01-04 09:35:43',8,'A4',0,0,'/images/order/direct/9/','9_Fri Jan 04 2019 09:35:43 GMT+0000 (UTC).png',0,9),('2019-01-04 09:42:51','2019-01-04 09:42:51',9,'A4',0,0,'/images/order/direct/10/','10_Fri Jan 04 2019 09:42:51 GMT+0000 (UTC).png',0,10),('2019-01-04 09:46:14','2019-01-04 09:46:14',10,'A4',0,0,'/images/order/direct/11/','11_Fri Jan 04 2019 09:46:14 GMT+0000 (UTC).png',0,11),('2019-01-04 09:52:40','2019-01-04 09:52:40',11,'A4',0,0,'/images/order/direct/12/','12_Fri Jan 04 2019 09:52:40 GMT+0000 (UTC).png',0,12),('2019-01-04 09:57:26','2019-01-04 09:57:26',12,'A4',0,0,'/images/order/direct/13/','13_Fri Jan 04 2019 09:57:26 GMT+0000 (UTC).png',0,13),('2019-01-04 11:47:22','2019-01-04 11:47:22',13,'A4',0,0,'/images/order/direct/14/','14_Fri Jan 04 2019 11:47:22 GMT+0000 (UTC).png',0,14),('2019-01-04 16:24:01','2019-01-04 16:24:01',14,'A4',0,0,'/images/order/direct/15/','15_Fri Jan 04 2019 16:24:01 GMT+0000 (UTC).png',0,15),('2019-01-04 16:30:54','2019-01-04 16:30:54',15,'A4',0,0,'/images/order/direct/16/','16_Fri Jan 04 2019 16:30:54 GMT+0000 (UTC).png',0,16),('2019-01-05 08:51:54','2019-01-05 08:51:54',16,'A4',0,0,'/images/order/direct/17/','17_Sat Jan 05 2019 08:51:54 GMT+0000 (UTC).png',0,17),('2019-01-05 08:57:42','2019-01-05 08:57:42',17,'A4',0,0,'/images/order/direct/18/','18_Sat Jan 05 2019 08:57:42 GMT+0000 (UTC).png',0,18),('2019-01-05 08:59:46','2019-01-05 08:59:46',18,'A4',0,0,'/images/order/direct/19/','19_Sat Jan 05 2019 08:59:46 GMT+0000 (UTC).png',0,19),('2019-01-05 09:13:33','2019-01-05 09:13:33',19,'A4',0,0,'/images/order/direct/20/','20_Sat Jan 05 2019 09:13:33 GMT+0000 (UTC).png',0,20),('2019-01-05 09:23:40','2019-01-05 09:23:40',20,'A4',0,0,'/images/order/direct/21/','21_Sat Jan 05 2019 09:23:40 GMT+0000 (UTC).png',0,21),('2019-01-05 09:37:25','2019-01-05 09:37:25',21,'A4',0,0,'/images/order/direct/22/','22_Sat Jan 05 2019 09:37:25 GMT+0000 (UTC).png',0,22),('2019-01-05 09:38:58','2019-01-05 09:38:58',22,'4R',0,0,'/images/order/direct/23/','23_Sat Jan 05 2019 09:38:58 GMT+0000 (UTC).png',0,23),('2019-01-05 10:01:50','2019-01-05 10:01:50',23,'4R',0,0,'/images/order/direct/24/','24_Sat Jan 05 2019 10:01:50 GMT+0000 (UTC).png',0,24),('2019-01-05 10:03:27','2019-01-05 10:03:27',24,'4R',0,0,'/images/order/direct/25/','25_Sat Jan 05 2019 10:03:27 GMT+0000 (UTC).png',0,25),('2019-01-05 10:15:38','2019-01-05 10:15:38',25,'4R',0,0,'/images/order/direct/26/','26_Sat Jan 05 2019 10:15:38 GMT+0000 (UTC).png',0,26),('2019-01-05 10:21:35','2019-01-05 10:21:35',26,'A4',0,0,'/images/order/direct/27/','27_Sat Jan 05 2019 10:21:35 GMT+0000 (UTC).png',0,27),('2019-01-05 11:01:40','2019-01-05 11:01:40',27,'A4',0,0,'/images/order/direct/28/','28_Sat Jan 05 2019 11:01:40 GMT+0000 (UTC).png',0,28),('2019-01-05 11:21:36','2019-01-05 11:21:36',28,'A4',0,0,'/images/order/direct/29/','29_Sat Jan 05 2019 11:21:36 GMT+0000 (UTC).png',0,29),('2019-01-05 11:25:36','2019-01-05 11:25:36',29,'A4',0,0,'/images/order/direct/30/','30_Sat Jan 05 2019 11:25:36 GMT+0000 (UTC).png',0,30),('2019-01-05 11:30:24','2019-01-05 11:30:24',30,'A4',0,0,'/images/order/direct/31/','31_Sat Jan 05 2019 11:30:24 GMT+0000 (UTC).png',0,31),('2019-01-05 11:41:45','2019-01-05 11:41:45',31,'A4',0,0,'/images/order/direct/32/','32_Sat Jan 05 2019 11:41:45 GMT+0000 (UTC).png',0,32),('2019-01-05 11:42:30','2019-01-05 11:42:30',32,'A4',0,0,'/images/order/direct/33/','33_Sat Jan 05 2019 11:42:30 GMT+0000 (UTC).png',0,33),('2019-01-05 11:43:28','2019-01-05 11:43:28',33,'A4',0,0,'/images/order/direct/34/','34_Sat Jan 05 2019 11:43:28 GMT+0000 (UTC).png',0,34),('2019-01-05 11:43:54','2019-01-05 11:43:54',34,'A4',0,0,'/images/order/direct/35/','35_Sat Jan 05 2019 11:43:54 GMT+0000 (UTC).png',0,35),('2019-01-05 11:47:07','2019-01-05 11:47:07',35,'A4',0,0,'/images/order/direct/36/','36_Sat Jan 05 2019 11:47:07 GMT+0000 (UTC).png',0,36),('2019-01-05 11:59:11','2019-01-05 11:59:11',36,'A4',0,0,'/images/order/direct/37/','37_Sat Jan 05 2019 11:59:11 GMT+0000 (UTC).png',0,37),('2019-01-05 12:08:05','2019-01-05 12:08:05',37,'A4',0,0,'/images/order/direct/38/','38_Sat Jan 05 2019 12:08:05 GMT+0000 (UTC).png',0,38),('2019-01-05 12:46:31','2019-01-05 12:46:31',38,'A4',0,0,'/images/order/direct/39/','39_Sat Jan 05 2019 12:46:31 GMT+0000 (UTC).png',0,39),('2019-01-05 13:04:47','2019-01-05 13:04:47',39,'A4',0,0,'/images/order/direct/40/','40_Sat Jan 05 2019 13:04:47 GMT+0000 (UTC).png',0,40),('2019-01-05 13:07:52','2019-01-05 13:07:52',40,'A4',0,0,'/images/order/direct/41/','41_Sat Jan 05 2019 13:07:52 GMT+0000 (UTC).png',0,41),('2019-01-05 13:17:25','2019-01-05 13:17:25',41,'A4',0,0,'/images/order/direct/42/','42_Sat Jan 05 2019 13:17:25 GMT+0000 (UTC).png',0,42),('2019-01-05 13:20:54','2019-01-05 13:20:54',42,'A4',0,0,'/images/order/direct/43/','43_Sat Jan 05 2019 13:20:54 GMT+0000 (UTC).png',0,43),('2019-01-05 13:27:40','2019-01-05 13:27:40',43,'A4',0,0,'/images/order/direct/44/','44_Sat Jan 05 2019 13:27:40 GMT+0000 (UTC).png',0,44),('2019-01-05 13:28:49','2019-01-05 13:28:49',44,'A4',0,0,'/images/order/direct/45/','45_Sat Jan 05 2019 13:28:49 GMT+0000 (UTC).png',0,45),('2019-01-05 13:30:59','2019-01-05 13:30:59',45,'A4',0,0,'/images/order/direct/46/','46_Sat Jan 05 2019 13:30:59 GMT+0000 (UTC).png',0,46),('2019-01-05 13:44:42','2019-01-05 13:44:42',46,'A4',0,0,'/images/order/direct/47/','47_Sat Jan 05 2019 13:44:42 GMT+0000 (UTC).png',0,47),('2019-01-06 05:10:19','2019-01-06 05:10:19',47,'A4',0,0,'/images/order/direct/48/','48_Sun Jan 06 2019 05:10:19 GMT+0000 (UTC).png',0,48),('2019-01-06 06:02:45','2019-01-06 06:02:45',48,'A4',0,0,'/images/order/direct/49/','49_Sun Jan 06 2019 06:02:45 GMT+0000 (UTC).png',0,49),('2019-01-06 13:53:45','2019-01-06 13:53:45',49,'A4',0,0,'/images/order/direct/50/','50_Sun Jan 06 2019 13:53:45 GMT+0000 (UTC).png',0,50),('2019-01-07 18:24:50','2019-01-07 18:24:50',50,'A4',0,0,'/images/order/direct/51/','51_Mon Jan 07 2019 18:24:50 GMT+0000 (UTC).png',0,51),('2019-01-07 20:06:50','2019-01-07 20:06:50',51,'A4',0,0,'/images/order/direct/52/','52_Mon Jan 07 2019 20:06:50 GMT+0000 (UTC).png',0,52),('2019-01-07 20:13:07','2019-01-07 20:13:07',52,'A4',0,0,'/images/order/direct/53/','53_Mon Jan 07 2019 20:13:07 GMT+0000 (UTC).png',0,53),('2019-01-07 20:50:30','2019-01-07 20:50:30',53,'A4',0,0,'/images/order/direct/54/','54_Mon Jan 07 2019 20:50:30 GMT+0000 (UTC).png',0,54),('2019-01-07 21:30:05','2019-01-07 21:30:05',54,'A4',0,0,'/images/order/direct/55/','55_Mon Jan 07 2019 21:30:05 GMT+0000 (UTC).png',0,55),('2019-01-08 03:11:49','2019-01-08 03:11:49',55,'A4',0,0,'/images/order/direct/56/','56_Tue Jan 08 2019 03:11:49 GMT+0000 (UTC).png',0,56),('2019-01-08 03:12:21','2019-01-08 03:12:21',56,'A4',0,0,'/images/order/direct/57/','57_Tue Jan 08 2019 03:12:21 GMT+0000 (UTC).png',0,57),('2019-01-08 03:59:24','2019-01-08 03:59:24',57,'A4',0,0,'/images/order/direct/58/','58_Tue Jan 08 2019 03:59:24 GMT+0000 (UTC).png',0,58),('2019-01-08 06:46:35','2019-01-08 06:46:35',58,'A4',0,0,'/images/order/direct/59/','59_Tue Jan 08 2019 06:46:35 GMT+0000 (UTC).png',0,59);
/*!40000 ALTER TABLE `detail_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_pembayaran`
--

DROP TABLE IF EXISTS `detail_pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_pembayaran` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_rek` double DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bukti_bayar_path` varchar(255) DEFAULT NULL,
  `bukti_bayar_filename` varchar(255) DEFAULT NULL,
  `bukti_bayar_filesize` double DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_pembayaran`
--

LOCK TABLES `detail_pembayaran` WRITE;
/*!40000 ALTER TABLE `detail_pembayaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_pengiriman`
--

DROP TABLE IF EXISTS `detail_pengiriman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_pengiriman` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `via` varchar(255) DEFAULT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_pengiriman`
--

LOCK TABLES `detail_pengiriman` WRITE;
/*!40000 ALTER TABLE `detail_pengiriman` DISABLE KEYS */;
INSERT INTO `detail_pengiriman` VALUES ('2019-01-04 01:02:58','2019-01-04 01:02:58',1,'JNT','0','Sukolilo','Surabaya','Jawa Timur','Jl. Gebang Wetan No 23b','60117',1),('2019-01-05 07:57:50','2019-01-05 07:57:50',2,'JNT','0','Sukolilo','Surabaya','Jawa Timur','Jl. Gebang Wetan No 23b','60117',1),('2019-01-05 07:58:46','2019-01-05 07:58:46',3,'JNT','02','Sukolilo','Surabaya','Jawa Timur','Jl. Gebang Wetan No 23b','60117',1),('2019-01-05 10:06:22','2019-01-05 10:06:22',4,'JNT','02','Sukolilo','Surabaya','Jawa Timur','Jl. Gebang Wetan No 23b','60117',1),('2019-01-07 20:15:44','2019-01-07 20:15:44',5,'61111','Pilih Provinsi','Pilih Kecamatan','122','Pilih Pengiriman','Pilih Kabupaten','Tes',53),('2019-01-07 21:30:25','2019-01-07 21:30:25',6,'12','Pilih Provinsi','Pilih Kecamatan','','JNT','Pilih Kabupaten','Test',55),('2019-01-07 22:14:41','2019-01-07 22:14:41',7,'122','Pilih Provinsi','Pilih Kecamatan','','JNT','Pilih Kabupaten','Tes',1),('2019-01-08 03:00:40','2019-01-08 03:00:40',8,'65774','Jawa Timur','Pilih Kecamatan','','JNE','Sidoarjo','jalan bango',1),('2019-01-08 03:12:12','2019-01-08 03:12:12',9,'65145','Jawa Timur','Sukolilo','','JNE','Surabaya','jalan kampus',56),('2019-01-08 03:14:31','2019-01-08 03:14:31',10,'41515','Jawa Tengah','Sukolilo','','JNE','Surabaya','hshsh',1),('2019-01-08 03:55:36','2019-01-08 03:55:36',11,'63312','Pilih Provinsi','Pilih Kecamatan','','Pilih Pengiriman','Pilih Kabupaten','gebang lor',1),('2019-01-08 03:59:31','2019-01-08 03:59:31',12,'5788','Pilih Provinsi','Pilih Kecamatan','','Pilih Pengiriman','Pilih Kabupaten','ggjj',58),('2019-01-08 04:31:48','2019-01-08 04:31:48',13,'67162','Pilih Provinsi','Sukolilo','','JNE','Surabaya','Jalan gebang lor',1),('2019-01-08 06:47:08','2019-01-08 06:47:08',14,'61112','Jawa Timur','Sukolilo','','JNT','Sidoarjo','Jl. Raya its',59),('2019-01-08 07:35:03','2019-01-08 07:35:03',15,'60117','Jawa Timur','Sukolilo','','JNT','Surabaya','Jl its',1);
/*!40000 ALTER TABLE `detail_pengiriman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hasil_order`
--

DROP TABLE IF EXISTS `hasil_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasil_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah_revisi` double DEFAULT NULL,
  `status_revisi` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_order`
--

LOCK TABLES `hasil_order` WRITE;
/*!40000 ALTER TABLE `hasil_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasil_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_notifikasi`
--

DROP TABLE IF EXISTS `jenis_notifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_notifikasi` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_notifikasi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_notifikasi`
--

LOCK TABLES `jenis_notifikasi` WRITE;
/*!40000 ALTER TABLE `jenis_notifikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `jenis_notifikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_order`
--

DROP TABLE IF EXISTS `jenis_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_order`
--

LOCK TABLES `jenis_order` WRITE;
/*!40000 ALTER TABLE `jenis_order` DISABLE KEYS */;
INSERT INTO `jenis_order` VALUES (NULL,NULL,1,'Langsung'),(NULL,NULL,2,'Custom');
/*!40000 ALTER TABLE `jenis_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karya`
--

DROP TABLE IF EXISTS `karya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `jumlah_revisi` double DEFAULT NULL,
  `lama_pengerjaan` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `kategori_karya_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karya`
--

LOCK TABLES `karya` WRITE;
/*!40000 ALTER TABLE `karya` DISABLE KEYS */;
INSERT INTO `karya` VALUES ('2018-10-07 15:08:37','2018-10-07 15:08:37',1,'The Dancing Woman','Doodle Art gambar seorang wanita yang sedang menari',20000,3,5,'/images/karya/','The Dancing Woman_Sun Oct 07 2018 15:08:37 GMT+0000 (UTC).png',111947,1,1),('2018-10-07 15:11:52','2018-10-07 15:11:52',3,'The Owl','Doodle Art gambar seekor burung hantu ',20000,3,5,'/images/karya/','The Owl_Sun Oct 07 2018 15:11:51 GMT+0000 (UTC).png',122556,1,1),('2018-10-07 15:18:15','2018-10-07 15:18:15',4,'Houses','Doodle Art gambar bangunan-bangunan rumah',20000,3,5,'/images/karya/','Houses_Sun Oct 07 2018 15:18:14 GMT+0000 (UTC).png',121054,1,1),('2018-10-07 15:21:12','2018-10-07 15:21:12',5,'Al-Ikhlas','Kaligrafi dari surah Al-Ikhlas',20000,3,5,'/images/karya/','Al-Ikhlas_Sun Oct 07 2018 15:21:11 GMT+0000 (UTC).png',84477,2,1),('2018-10-07 15:22:21','2018-10-07 15:22:21',6,' Asmaul Husna','Kaligrafi dari  Asmaul Husna',20000,3,5,'/images/karya/',' Asmaul Husna_Sun Oct 07 2018 15:22:19 GMT+0000 (UTC).png',143118,2,1),('2018-10-07 15:23:58','2018-10-07 15:23:58',7,'Al-Qadr','Kaligrafi dari surah Al-Qadr',20000,3,5,'/images/karya/','Al-Qadr_Sun Oct 07 2018 15:23:56 GMT+0000 (UTC).png',95060,2,1),('2018-10-07 15:37:04','2018-10-07 15:37:04',8,'Mohammad Ali','Karikatur dari sosok petinju Mohammad Ali ',20000,3,5,'/images/karya/','Mohammad Ali_Sun Oct 07 2018 15:37:03 GMT+0000 (UTC).png',68882,3,1),('2018-10-07 15:37:40','2018-10-07 15:37:40',9,'Mr. Bean','Karikatur dari sosok Rowan Atkinson',20000,3,5,'/images/karya/','Mr. Bean_Sun Oct 07 2018 15:37:40 GMT+0000 (UTC).png',26572,1,1),('2018-10-07 15:41:01','2018-10-07 15:41:01',10,'Jackie Chan','Karikatur dari sosok Jackie Chan',20000,3,5,'/images/karya/','Jackie Chan_Sun Oct 07 2018 15:41:01 GMT+0000 (UTC).png',14525,3,1),('2018-10-07 15:44:47','2018-10-07 15:44:47',11,'Thank You','Lettering \"Thank You\"',20000,3,5,'/images/karya/','Thank You_Sun Oct 07 2018 15:44:47 GMT+0000 (UTC).png',31165,4,1),('2018-10-07 15:45:21','2018-10-07 15:45:21',12,'Motivation','Lettering Motivation',20000,0,5,'','Motivation_Sun Oct 07 2018 15:45:20 GMT+0000 (UTC).png',91659,4,1),('2018-10-07 15:45:49','2018-10-07 15:45:49',13,'Quotes','Lettering Quotes',20000,3,5,'/images/karya/','Quotes_Sun Oct 07 2018 15:45:49 GMT+0000 (UTC).png',124269,1,1),('2018-10-07 15:49:03','2018-10-07 15:49:03',15,'The Girl','Line art seorang gadis',20000,3,5,'/images/karya/','The Girl_Sun Oct 07 2018 15:49:03 GMT+0000 (UTC).png',38136,5,1),('2018-10-07 15:50:01','2018-10-07 15:50:01',16,'That Girl','Line art seorang gadis',20000,3,5,'/images/karya/','That Girl_Sun Oct 07 2018 15:50:01 GMT+0000 (UTC).png',45898,5,1),('2018-10-07 15:50:23','2018-10-07 15:50:23',17,'That Man','Line art seorang pria',20000,3,5,'/images/karya/','That Man_Sun Oct 07 2018 15:50:23 GMT+0000 (UTC).png',40851,5,1),('2018-10-07 15:51:53','2018-10-07 15:51:53',18,'Blue Woman','Mozaik seorang wanita',20000,3,5,'/images/karya/','Blue Woman_Sun Oct 07 2018 15:51:52 GMT+0000 (UTC).png',109909,6,1),('2018-10-07 15:54:46','2018-10-07 15:54:46',19,'A Couple','Mozaik sepasang burung',20000,3,5,'/images/karya/','A Couple_Sun Oct 07 2018 15:54:45 GMT+0000 (UTC).png',123506,9,1),('2018-10-07 15:56:33','2018-10-07 15:56:33',20,'Venice','Mozaik sungai Venesia di Itali',20000,3,5,'/images/karya/','Venice_Sun Oct 07 2018 15:56:32 GMT+0000 (UTC).png',127884,6,1),('2018-10-07 15:59:41','2018-10-07 15:59:41',21,'Centaur','Original karakter manusia kuda',20000,3,5,'/images/karya/','Centaur_Sun Oct 07 2018 15:59:41 GMT+0000 (UTC).png',91540,7,1),('2018-10-07 16:01:56','2018-10-07 16:01:56',22,'Archer','Original karakter gadis pemanah',20000,3,5,'/images/karya/','Archer_Sun Oct 07 2018 16:01:55 GMT+0000 (UTC).png',74396,7,1),('2018-10-07 16:04:09','2018-10-07 16:04:09',23,'Archer Man','Original karakter pria pemanah',20000,3,5,'/images/karya/','Archer Man_Sun Oct 07 2018 16:04:08 GMT+0000 (UTC).png',59933,7,1),('2018-10-07 16:05:34','2018-10-07 16:05:34',24,'The Forest','Paper cut hutan',20000,3,5,'/images/karya/','The Forest_Sun Oct 07 2018 16:05:33 GMT+0000 (UTC).png',31867,8,1),('2018-10-07 16:06:39','2018-10-07 16:06:39',25,'My Baby','Paper cut bayi dan kasih sayang orangtua',20000,3,5,'/images/karya/','My Baby_Sun Oct 07 2018 16:06:38 GMT+0000 (UTC).png',41341,8,1),('2018-10-07 16:07:22','2018-10-07 16:07:22',26,'Quotes','Paper cut kalimat quotes',20000,3,5,'/images/karya/','Quotes_Sun Oct 07 2018 16:07:20 GMT+0000 (UTC).png',145218,8,1),('2018-10-07 16:09:09','2018-10-07 16:09:09',27,'Umbrella Girl','Siluet gadis berpayung',20000,3,5,'/images/karya/','Umbrella Girl_Sun Oct 07 2018 16:09:09 GMT+0000 (UTC).png',17287,9,1),('2018-10-07 16:10:27','2018-10-07 16:10:27',28,'Umbrella Girl and The Dog','Siluet gadis berpayung dan anjingnya',20000,3,5,'/images/karya/','Umbrella Girl and The Dog_Sun Oct 07 2018 16:10:27 GMT+0000 (UTC).png',50885,NULL,1),('2018-10-07 16:11:00','2018-10-07 16:11:00',29,'Umbrella Girl and Rainy Day','Siluet gadis berpayung ditengah hujan',20000,3,5,'/images/karya/','Umbrella Girl and Rainy Day_Sun Oct 07 2018 16:11:00 GMT+0000 (UTC).png',50885,NULL,1),('2018-10-07 16:13:00','2018-10-07 16:13:00',30,'Pretty','Sketsa gadis cantik',20000,3,5,'/images/karya/','Pretty_Sun Oct 07 2018 16:12:59 GMT+0000 (UTC).png',67044,NULL,1),('2018-10-07 16:13:50','2018-10-07 16:13:50',31,'Fashion','Sketsa fashion terkini',20000,3,5,'/images/karya/','Fashion_Sun Oct 07 2018 16:13:50 GMT+0000 (UTC).png',80629,NULL,1),('2018-10-07 16:15:05','2018-10-07 16:15:05',32,'Gorgeous','Sketsa wanita cantik',20000,3,5,'/images/karya/','Gorgeous_Sun Oct 07 2018 16:15:05 GMT+0000 (UTC).png',68559,NULL,1),('2018-10-07 16:17:01','2018-10-07 16:17:01',33,'Johny Depp','Vector art johny depp',20000,3,5,'/images/karya/','Johny Depp_Sun Oct 07 2018 16:17:01 GMT+0000 (UTC).png',24380,NULL,1),('2018-10-07 16:18:03','2018-10-07 16:18:03',34,'Leonardo Dicaprio','Vector art leonardo dicaprio',20000,3,5,'/images/karya/','Leonardo Dicaprio_Sun Oct 07 2018 16:18:03 GMT+0000 (UTC).png',81372,NULL,1),('2018-10-07 16:20:34','2018-10-07 16:20:34',35,'Sad Girl','Vector art gadis yang bersedih',20000,3,5,'/images/karya/','Sad Girl_Sun Oct 07 2018 16:20:34 GMT+0000 (UTC).png',43822,NULL,1),('2018-10-07 16:21:52','2018-10-07 16:21:52',36,'David Beckham','WPAP david beckham',20000,3,5,'/images/karya/','David Beckham_Sun Oct 07 2018 16:21:50 GMT+0000 (UTC).png',33076,NULL,1),('2018-10-07 16:22:37','2018-10-07 16:22:37',37,'Harry Potter','WPAP harry potter',20000,3,5,'/images/karya/','Harry Potter_Sun Oct 07 2018 16:22:37 GMT+0000 (UTC).png',77159,12,1),('2018-10-07 16:26:38','2018-10-07 16:26:38',38,'Mesut Ozil','WPAP mesut ozil',20000,3,5,'/images/karya/','Mesut Ozil_Sun Oct 07 2018 16:26:37 GMT+0000 (UTC).png',79321,NULL,1),('2018-10-11 10:16:29','2018-10-11 10:16:29',39,'Mesut ozila','pemain bola joss',20000,3,5,'/assets/images/karya/','Mesut ozila_Thu Oct 11 2018 10:16:29 GMT+0000 (UTC).png',29317,NULL,1),('2018-10-22 02:33:35','2018-10-22 02:33:35',40,'Mesut ','pemain ',20000,3,5,'/images/karya/','Mesut _Mon Oct 22 2018 02:33:35 GMT+0000 (UTC).png',25854,NULL,1),('2018-10-23 13:40:02','2018-10-23 13:40:02',41,'Mesut ozila','pemain bola joss',20000,3,5,'/images/karya/','Mesut ozila_Tue Oct 23 2018 13:40:02 GMT+0000 (UTC).png',23393,NULL,1),('2018-10-23 13:51:30','2018-10-23 13:51:30',42,'Mesut ozila','pemain bola joss',20000,3,5,'/images/karya/','Mesut ozila_Tue Oct 23 2018 13:51:30 GMT+0000 (UTC).png',23393,1,1);
/*!40000 ALTER TABLE `karya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_karya`
--

DROP TABLE IF EXISTS `kategori_karya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_karya`
--

LOCK TABLES `kategori_karya` WRITE;
/*!40000 ALTER TABLE `kategori_karya` DISABLE KEYS */;
INSERT INTO `kategori_karya` VALUES ('2019-01-01 08:11:47','2019-01-01 08:11:47',1,'Line Art','/images/kategori_karya/','Line Art_Tue Jan 01 2019 08:11:47 GMT+0000 (UTC).png',2758),('2019-01-01 08:15:15','2019-01-01 08:15:15',2,'Original Character','/images/kategori_karya/','Original Character_Tue Jan 01 2019 08:15:15 GMT+0000 (UTC).png',4000),('2019-01-01 08:15:40','2019-01-01 08:15:40',3,'Sketch','/images/kategori_karya/','Sketch_Tue Jan 01 2019 08:15:40 GMT+0000 (UTC).png',2693),('2019-01-01 08:16:16','2019-01-01 08:16:16',4,'Kaligrafi','/images/kategori_karya/','Kaligrafi_Tue Jan 01 2019 08:16:16 GMT+0000 (UTC).png',2567),('2019-01-01 08:16:48','2019-01-01 08:16:48',5,'Karikatur','/images/kategori_karya/','Karikatur_Tue Jan 01 2019 08:16:48 GMT+0000 (UTC).png',2876),('2019-01-01 08:17:19','2019-01-01 08:17:19',6,'WPAP','/images/kategori_karya/','WPAP_Tue Jan 01 2019 08:17:19 GMT+0000 (UTC).png',5122),('2019-01-01 08:17:52','2019-01-01 08:17:52',7,'Siluet','/images/kategori_karya/','Siluet_Tue Jan 01 2019 08:17:52 GMT+0000 (UTC).png',1652),('2019-01-01 08:18:25','2019-01-01 08:18:25',8,'Lettering','/images/kategori_karya/','Lettering_Tue Jan 01 2019 08:18:25 GMT+0000 (UTC).png',5237),('2019-01-01 08:19:16','2019-01-01 08:19:16',9,'Mozaic Art','/images/kategori_karya/','Mozaic Art_Tue Jan 01 2019 08:19:16 GMT+0000 (UTC).png',4121),('2019-01-01 08:20:38','2019-01-01 08:20:38',10,'Pop Art','/images/kategori_karya/','Pop Art_Tue Jan 01 2019 08:20:38 GMT+0000 (UTC).png',2890),('2019-01-01 08:23:37','2019-01-01 08:23:37',11,'Vector Art','/images/kategori_karya/','Vector Art_Tue Jan 01 2019 08:23:37 GMT+0000 (UTC).png',4871),('2019-01-01 08:25:13','2019-01-01 08:25:13',12,'Paper Cut','/images/kategori_karya/','Paper Cut_Tue Jan 01 2019 08:25:13 GMT+0000 (UTC).png',5785);
/*!40000 ALTER TABLE `kategori_karya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifikasi`
--

DROP TABLE IF EXISTS `notifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifikasi` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `status` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `jenis_notifikasi_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifikasi`
--

LOCK TABLES `notifikasi` WRITE;
/*!40000 ALTER TABLE `notifikasi` DISABLE KEYS */;
INSERT INTO `notifikasi` VALUES (NULL,NULL,1,'2019-01-09 00:00:00','Pesanan anda diterima oleh Desainer Axel',NULL,1,1,1),(NULL,NULL,4,'2019-01-12 00:00:00','Pesanan Anda telah dikirim',NULL,2,1,23);
/*!40000 ALTER TABLE `notifikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opsi_order`
--

DROP TABLE IF EXISTS `opsi_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opsi_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opsi_order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opsi_order`
--

LOCK TABLES `opsi_order` WRITE;
/*!40000 ALTER TABLE `opsi_order` DISABLE KEYS */;
INSERT INTO `opsi_order` VALUES (NULL,NULL,1,'Bingkai'),(NULL,NULL,2,'Tanpa Bingkai');
/*!40000 ALTER TABLE `opsi_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catatan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `tanggal_deadline` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `is_accepted` double DEFAULT NULL,
  `status_bayar` double DEFAULT NULL,
  `status_diproses` double DEFAULT NULL,
  `status_selesai` double DEFAULT NULL,
  `status_dikirim` double DEFAULT NULL,
  `status_diterima` double DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL,
  `kategori_karya_id` int(11) DEFAULT NULL,
  `jenis_order_id` int(11) DEFAULT NULL,
  `opsi_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('2019-01-01 12:06:51','2019-01-01 12:06:51',1,'Test catatan',0,'2018-01-01',NULL,0,0,0,0,0,0,1,1,1,2,1),('2019-01-01 12:58:47','2019-01-01 12:58:47',2,'Test catatan 2',0,'2018-01-01',NULL,0,0,0,0,0,0,1,1,1,2,1),('2019-01-02 13:45:57','2019-01-02 13:45:57',3,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-02 13:51:49','2019-01-02 13:51:49',4,'Test catatan 5',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,1),('2019-01-02 13:53:39','2019-01-02 13:53:39',5,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 04:59:41','2019-01-04 04:59:41',6,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:14:10','2019-01-04 09:14:10',7,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:33:33','2019-01-04 09:33:33',8,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:35:43','2019-01-04 09:35:43',9,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:42:51','2019-01-04 09:42:51',10,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:46:14','2019-01-04 09:46:14',11,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:52:40','2019-01-04 09:52:40',12,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 09:57:26','2019-01-04 09:57:26',13,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-04 11:47:22','2019-01-04 11:47:22',14,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,12,1,2),('2019-01-04 16:24:01','2019-01-04 16:24:01',15,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-04 16:30:54','2019-01-04 16:30:54',16,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 08:51:54','2019-01-05 08:51:54',17,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 08:57:42','2019-01-05 08:57:42',18,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 08:59:46','2019-01-05 08:59:46',19,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 09:13:33','2019-01-05 09:13:33',20,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 09:23:40','2019-01-05 09:23:40',21,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 09:37:25','2019-01-05 09:37:25',22,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 09:38:58','2019-01-05 09:38:58',23,'Test catatan 5',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,1),('2019-01-05 10:01:50','2019-01-05 10:01:50',24,'Test catatan 5',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,1),('2019-01-05 10:03:27','2019-01-05 10:03:27',25,'Test catatan 5',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,1),('2019-01-05 10:15:38','2019-01-05 10:15:38',26,'Test catatan 5',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,1),('2019-01-05 10:21:35','2019-01-05 10:21:35',27,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,4,1,2),('2019-01-05 11:01:40','2019-01-05 11:01:40',28,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:21:36','2019-01-05 11:21:36',29,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:25:36','2019-01-05 11:25:36',30,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:30:24','2019-01-05 11:30:24',31,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:41:45','2019-01-05 11:41:45',32,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-05 11:42:30','2019-01-05 11:42:30',33,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:43:28','2019-01-05 11:43:28',34,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-05 11:43:54','2019-01-05 11:43:54',35,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-05 11:47:07','2019-01-05 11:47:07',36,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 11:59:11','2019-01-05 11:59:11',37,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 12:08:05','2019-01-05 12:08:05',38,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 12:46:31','2019-01-05 12:46:31',39,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:04:47','2019-01-05 13:04:47',40,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:07:52','2019-01-05 13:07:52',41,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:17:25','2019-01-05 13:17:25',42,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:20:54','2019-01-05 13:20:54',43,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:27:40','2019-01-05 13:27:40',44,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:28:49','2019-01-05 13:28:49',45,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:30:59','2019-01-05 13:30:59',46,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-05 13:44:42','2019-01-05 13:44:42',47,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-06 05:10:19','2019-01-06 05:10:19',48,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-06 06:02:45','2019-01-06 06:02:45',49,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,1,1,2),('2019-01-06 13:53:45','2019-01-06 13:53:45',50,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,1),('2019-01-07 18:24:50','2019-01-07 18:24:50',51,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-07 20:06:50','2019-01-07 20:06:50',52,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,1,1,2,1,2),('2019-01-07 20:13:07','2019-01-07 20:13:07',53,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,2,1,2),('2019-01-07 20:50:30','2019-01-07 20:50:30',54,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,4,1,2),('2019-01-07 21:30:05','2019-01-07 21:30:05',55,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,3,1,2),('2019-01-08 03:11:49','2019-01-08 03:11:49',56,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,2,1,2),('2019-01-08 03:12:21','2019-01-08 03:12:21',57,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,2,1,2),('2019-01-08 03:59:24','2019-01-08 03:59:24',58,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,23,1,1,1,2),('2019-01-08 06:46:35','2019-01-08 06:46:35',59,'',20000,'2019-01-01',NULL,0,0,0,0,0,0,52,1,1,1,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES ('2018-10-06 03:27:30','2018-10-06 03:27:30',1,23),('2018-10-07 09:19:01','2018-10-07 09:19:01',2,27),('2018-10-07 09:23:10','2018-10-07 09:23:10',3,28),('2018-10-07 23:11:03','2018-10-07 23:11:03',4,30),('2018-10-08 02:58:54','2018-10-08 02:58:54',5,31),('2018-10-08 02:59:59','2018-10-08 02:59:59',6,32),('2018-12-03 03:04:56','2018-12-03 03:04:56',7,40),('2018-12-13 12:31:53','2018-12-13 12:31:53',8,42),('2018-12-13 13:00:00','2018-12-13 13:00:00',9,43),('2018-12-24 10:19:47','2018-12-24 10:19:47',10,44),('2019-01-06 13:46:21','2019-01-06 13:46:21',11,47),('2019-01-07 22:15:47','2019-01-07 22:15:47',12,48),('2019-01-08 04:30:11','2019-01-08 04:30:11',13,49),('2019-01-08 05:25:15','2019-01-08 05:25:15',14,51),('2019-01-08 06:44:28','2019-01-08 06:44:28',15,52),('2019-01-11 06:52:24','2019-01-11 06:52:24',16,53),('2019-01-30 06:50:40','2019-01-30 06:50:40',17,54);
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan_rating`
--

DROP TABLE IF EXISTS `pelanggan_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan_rating` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` double DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan_rating`
--

LOCK TABLES `pelanggan_rating` WRITE;
/*!40000 ALTER TABLE `pelanggan_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` double DEFAULT NULL,
  `karya_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `karya_id` (`karya_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisi_order`
--

DROP TABLE IF EXISTS `revisi_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisi_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catatan_revisi` varchar(255) DEFAULT NULL,
  `tanggal_revisi` datetime DEFAULT NULL,
  `tanggal_deadline` datetime DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `hasil_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisi_order`
--

LOCK TABLES `revisi_order` WRITE;
/*!40000 ALTER TABLE `revisi_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisi_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukuran`
--

DROP TABLE IF EXISTS `ukuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ukuran` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ukuran` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukuran`
--

LOCK TABLES `ukuran` WRITE;
/*!40000 ALTER TABLE `ukuran` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukuran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukuran_karya`
--

DROP TABLE IF EXISTS `ukuran_karya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ukuran_karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ukuran` varchar(255) DEFAULT NULL,
  `harga_bingkai` double DEFAULT NULL,
  `karya_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukuran_karya`
--

LOCK TABLES `ukuran_karya` WRITE;
/*!40000 ALTER TABLE `ukuran_karya` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukuran_karya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulasan_produk`
--

DROP TABLE IF EXISTS `ulasan_produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ulasan_produk` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `konten` varchar(255) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `karya_id` int(11) DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulasan_produk`
--

LOCK TABLES `ulasan_produk` WRITE;
/*!40000 ALTER TABLE `ulasan_produk` DISABLE KEYS */;
/*!40000 ALTER TABLE `ulasan_produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2018-10-02 23:59:51','2018-10-02 23:59:51',1,'desainer1@karyakita.com','desainer1','$2b$10$NPnQX5ZWie1to1DGuuLY6eMCZZWUPjWXz.LvEW9r4g1HCuB37TygS','Asmi','1231231231',2),('2018-10-03 19:34:09','2018-10-03 19:34:09',22,'reza@gmail.com','apr','$2b$10$0n5HnRKdJot7gHF46HI0GeY8z4oVsJHDiWHpL7BKpfCwihdw6bgK6','reza','',3),('2018-10-06 03:27:30','2018-10-06 03:27:30',23,'fatin@gmail.com','fatin','$2b$10$ZnGfTdcmJZY1FR8pFfGmNu/0XNZIxN0DYWa5ZakwQwA6xjN0ExyFK','fatin','',3),('2018-10-06 15:16:50','2018-10-06 15:16:50',25,'desainer2@karyakita.com','desainer2','$2b$10$yebzU/DHnqE3Frgun1rLOe5bNtbZt.oavTcKeYuA8SwmNepbdtMpu','Surija','1231231231',2),('2018-10-07 09:19:01','2018-10-07 09:19:01',27,'alifakbar111@gmail.com','alifakbar111','$2b$10$y3Cy2OEDt4tq0tlloNQdFupZ4XRlCiJGwqIi5DYny0AgQA5Wyc5ri','alif akbar','',3),('2018-10-07 09:23:10','2018-10-07 09:23:10',28,'sheilaazizah11@gmail.com','sheilaazizh','$2b$10$ZW9Hjtd3N4B/6NfcI0JZDu9fM8xvSCfMErVXw64ejgiQWlOdpC4TO','sheila azizah','',3),('2018-10-07 14:41:40','2018-10-07 14:41:40',29,'desainer3@karyakita.com','desainer3','$2b$10$hLcFNTIZsD3alxI.kJ4d.eMqtFqaibkI8/XMVuyyFg55lvS8Lnx9K','Samenun','1231231231',2),('2018-10-07 23:11:03','2018-10-07 23:11:03',30,'fatinf@gmail.com','fatinn','$2b$10$8pLX03g3r5rIfSWBEyF1ZufKdX5kjZbEKiLX3XGNgcd8nub9.bWVm','fatinn','',3),('2018-10-08 02:58:54','2018-10-08 02:58:54',31,'fad@gmail.com','fad','$2b$10$GXtXMXVZbPmpbpgBtt9Jm.z3A1fv4jREQzMPAIQo87o5IeDBH87ku','fad','',3),('2018-10-08 02:59:59','2018-10-08 02:59:59',32,'alif111@gmail.com','alif111','$2b$10$hwhRnIFFY2CbN5efC1U2lOHeIc0NJmiZGVE.63wj0wHRZvq2Muuti','alif akbar','',3),('2018-10-30 07:43:37','2018-10-30 07:43:37',35,'rezaprillia@gmail.com','reza','$2b$10$4BgQEkQJ4haciKdBVWtzuO8nzg2MlVPlHgZKVKVl.93nOE0Lt9cnS','Reza Aprillia Arshanty','082233819293',2),('2018-12-01 05:44:08','2018-12-01 05:44:08',36,'maulidan.rasyid@gmail.com','maulidan.rasyid','$2b$10$cKrhB6iblpWGFhiR6g7zSe0a25rIxTAPuAXf8bCKuAtKPf.dEyeSu','Maulidan Rasyid','',2),('2018-12-03 02:39:59','2018-12-03 02:39:59',37,'cok@jancok.cok','jancok','$2b$10$9WhSFkyhZMh/XZeA/tqEsO282.Nkeg.eUuPeluqiM7iv.CYpz.Bfa','guskoro cok','',2),('2018-12-03 03:04:56','2018-12-03 03:04:56',40,'alifakbar@gmail.com','alifakbar','$2b$10$KrkTYnG24O0IYwUd4rcsQ.fUYRa77UVdTEj2aoEmotAkBs9QhBLWW','alif akbar','',3),('2018-12-13 12:31:53','2018-12-13 12:31:53',42,'admin@karyakita.com','admin','$2b$10$5j7QJd5cFO16OwLtPIYxaOV43RhOfYAb6z.gyyWrNaqtM51powYSO','admin','',3),('2018-12-13 13:00:00','2018-12-13 13:00:00',43,'alip@gmail.com','alip','$2b$10$L/D8VWyoXcVrkcmhEvvnPeOI4rVquUfF1Wj4fYyX1gEseJTsBhCZm','alip','',3),('2018-12-24 10:19:47','2018-12-24 10:19:47',44,'akbar@gmail.com','akbar','$2b$10$2rxpA2gdmzIpu1Xr.jaMnesYCaSZG60HOn4soRgGgKiLahVWfZTbS','akbar','',3),('2019-01-06 13:46:21','2019-01-06 13:46:21',47,'fadlifarham10@gmail.com','test','$2b$10$2iwi24z1HLqxM5JY7y.A7esS76HnEkY./msY1TjDmwsECmLy8dJ8q','test','',3),('2019-01-07 22:15:47','2019-01-07 22:15:47',48,'feriaprilio30@gmail.com','feri','$2b$10$O.Azd5bpS6C1gaeWrZwqPOToraqck2B7iVdPUlGzFI2k23KOX8tai','feri app','',3),('2019-01-08 04:30:11','2019-01-08 04:30:11',49,'aulia.aurumsari@gmail.com','aulia','$2b$10$flzw53PDrxKTgQ0ofq30auIiq5z2IXIL0yqKmdGJTNwSsB/fd/eVC','aulia','',3),('2019-01-08 04:44:26','2019-01-08 04:44:26',50,'guskoroa@yahoo.com','guskoro','$2b$10$eLBYwZ8wiKiEpvYRCX09HOgiAuxVodkMl.toRLMbA8HG4WYQqY/ia','Guskoro','',2),('2019-01-08 05:25:15','2019-01-08 05:25:15',51,'farhanmfap2604@gmail.com','hanz','$2b$10$oDrFh8goi.KzZJfn8B3qS.iJl.2OMi0q1kk.sN4xkF4CYAUFEAFPu','farhan','',3),('2019-01-08 06:44:28','2019-01-08 06:44:28',52,'nadhif@gmail.com','nadhif','$2b$10$PgaP9Y2Rpbvtt02LC914ge2BMq.KW5yZaeO8BMmqJi7fWxN4k9tk2','nadhif','',3),('2019-01-11 06:52:24','2019-01-11 06:52:24',53,'nasrullohmuhyiddin@gmail.com','nasruljr','$2b$10$cQbCfgAmPBPCr7UDNpj/Je44cpsCo04dVWQcfNgxGrdL0BLEdl8jC','nasrulloh muhyiddin','',3),('2019-01-30 06:50:40','2019-01-30 06:50:40',54,'efriza8@gmail.com ','efriza','$2b$10$mpf6aI03uGIk2NQJe49lj.g9wgW1TnOpNQnYAoGUKkzYnZaddCt.y','efriza','',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-23  4:13:25
