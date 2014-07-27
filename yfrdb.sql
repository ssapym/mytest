-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yfrdb
-- ------------------------------------------------------
-- Server version	5.5.37-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand_customer`
--

DROP TABLE IF EXISTS `brand_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_customer`
--

LOCK TABLES `brand_customer` WRITE;
/*!40000 ALTER TABLE `brand_customer` DISABLE KEYS */;
INSERT INTO `brand_customer` VALUES (1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,4,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `brand_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_info`
--

DROP TABLE IF EXISTS `brand_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` char(1) NOT NULL,
  `breakpoint` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `main_channel` varchar(255) NOT NULL,
  `price_low` int(11) NOT NULL,
  `price_high` int(11) NOT NULL,
  `daily_turnover` int(11) NOT NULL,
  `month_turnover` int(11) NOT NULL,
  `annually_turnover` int(11) NOT NULL,
  `need_position` tinyint(4) NOT NULL,
  `vi_spec` text NOT NULL,
  `packing_spec` text NOT NULL,
  `transport_spec` text NOT NULL,
  `inspector_analytics` varchar(255) NOT NULL,
  `yfr_analytics` varchar(255) NOT NULL,
  `company_addr` varchar(255) NOT NULL,
  `transport_addr` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_info`
--

LOCK TABLES `brand_info` WRITE;
/*!40000 ALTER TABLE `brand_info` DISABLE KEYS */;
INSERT INTO `brand_info` VALUES (1,'YFR','A','数据化设计','时尚女装','连衣裙','数据化设计',100,255,300000,3000000,300000000,1,'粉色、蓝色','内层蝴蝶结包裹，外层包装覆膜','顺丰速运','这是总监点评的测试数据','这是芙蓉点评的测试数据','广州番禺区','广州雅居乐','合作中','2014-07-12 20:50:51','2014-07-12 20:50:51'),(2,'OSR','A','数据化设计','大码女装','连衣裙','数据化设计',100,255,100000,1000000,100000000,1,'紫色','内层蝴蝶结包裹，外层包装覆膜','顺风速运','这是总监点评的测试数据','这是芙蓉点评的测试数据','北京朝阳区','北京朝阳区','合作中','2014-07-12 20:50:51','2014-07-12 20:50:51');
/*!40000 ALTER TABLE `brand_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitors_info`
--

DROP TABLE IF EXISTS `competitors_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitors_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitors_info`
--

LOCK TABLES `competitors_info` WRITE;
/*!40000 ALTER TABLE `competitors_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitors_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wechat` varchar(255) NOT NULL,
  `qq` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES (1,'崔轶','CTO','18611909152','dao@yufurong.com','puretears','724634904','2014-07-12 20:50:51','2014-07-12 20:50:51'),(2,'YFR','CEO','18664777657','yufurong@yufurong.com','YuFuRong2013','724634904','2014-07-12 20:50:51','2014-07-12 20:50:51'),(3,'郭洋','Architecture','18611909152','yang.guo@yufurong.com','ssapym','724634904','2014-07-12 20:50:51','2014-07-12 20:50:51'),(4,'朱昱','经理','18664777657','zhu00yu@163.com','Zhu00yu1','724634904','2014-07-12 20:50:51','2014-07-12 20:50:51');
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_style`
--

DROP TABLE IF EXISTS `hot_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hot_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hot_link` varchar(255) NOT NULL,
  `hot_count` int(11) NOT NULL,
  `hot_price` float(8,2) NOT NULL,
  `hot_pic_path` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_style`
--

LOCK TABLES `hot_style` WRITE;
/*!40000 ALTER TABLE `hot_style` DISABLE KEYS */;
INSERT INTO `hot_style` VALUES (1,'http://detail.tmall.com/item.htm?spm=a230r.1.14.1.eiAELF&id=38057720321',16900,19.90,'/public/assets/images/brand_name/1.jpg',1,'2014-07-12 20:50:51','2014-07-12 20:50:51'),(2,'http://detail.tmall.com/item.htm?spm=a230r.1.14.1.eiAELF&id=38057720321',16900,69.90,'/public/assets/images/brand_name/1.jpg',1,'2014-07-12 20:50:51','2014-07-12 20:50:51'),(3,'http://detail.tmall.com/item.htm?spm=a230r.1.14.1.eiAELF&id=38057720321',5000,25.00,'/public/assets/images/brand_name/1.jpg',2,'2014-07-12 20:50:51','2014-07-12 20:50:51'),(4,'http://detail.tmall.com/item.htm?spm=a230r.1.14.1.eiAELF&id=38057720321',2900,99.00,'/public/assets/images/brand_name/1.jpg',2,'2014-07-12 20:50:51','2014-07-12 20:50:51');
/*!40000 ALTER TABLE `hot_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_06_29_062123_create_users_table',1),('2014_07_05_015118_create_brand_info_table',1),('2014_07_05_093105_create_brand_customer_table',1),('2014_07_05_123941_create_customer_info_table',1),('2014_07_07_074713_create_shop_info_table',1),('2014_07_09_023036_create_hot_style_table',1),('2014_07_11_064800_create_competitors_info_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `uv_last_30` int(11) NOT NULL,
  `pv_last_30` int(11) NOT NULL,
  `sku_online` int(11) NOT NULL,
  `month_conversion_rate` float(8,2) NOT NULL,
  `annually_conversion_rate` float(8,2) NOT NULL,
  `depth_in_average` float(8,2) NOT NULL,
  `update_cycle` varchar(255) NOT NULL,
  `amount_per_update` int(11) NOT NULL,
  `spread_method` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
INSERT INTO `shop_info` VALUES (1,'玉芙蓉','http://www.yufurong.com',15000,90000,200,0.02,0.03,3.30,'每周2',20,'微信',1,'2014-07-12 20:50:51','2014-07-12 20:50:51'),(2,'WeTee','http://wetee.yufurong.com',15000,90000,200,0.02,0.03,3.30,'每周2',20,'微信',1,'2014-07-12 20:50:51','2014-07-12 20:50:51'),(3,'OOXX','http://ooxx.taobao.com',1500,9000,50,0.02,0.03,3.30,'每周2',5,'微信',2,'2014-07-12 20:50:51','2014-07-12 20:50:51');
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dao@yufurong.com','$2y$10$tqrPxGQqAEbbbmVvd2DErenHQCaX8JzPE64ibMC9Xnxgv3N/XOUYq','',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'yufurong@yufurong.com','$2y$10$f71V67H9kUuRIiWvTkVqHeXnDFkTY4ZlwQodgC6HYxwTyJgpv6Hjy','',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'ssapym@yufurong.com','$2y$10$yiFtpRutTyzgzHuk7wgND.dUtnJ5acxApV6o2I5Pcrmdz3S0uI09q','',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-27 22:05:22
