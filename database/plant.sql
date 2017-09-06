-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (armv7l)
--
-- Host: localhost    Database: plant
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

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
-- Table structure for table `m_plant`
--

DROP TABLE IF EXISTS `m_plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_plant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `genre` varchar(64) NOT NULL,
  `temp` tinyint(4) DEFAULT NULL,
  `humidity` tinyint(4) DEFAULT NULL,
  `luminous` tinyint(4) DEFAULT NULL,
  `SoilHumidity` tinyint(4) DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_plant`
--

LOCK TABLES `m_plant` WRITE;
/*!40000 ALTER TABLE `m_plant` DISABLE KEYS */;
INSERT INTO `m_plant` VALUES (1,'aico','mini tomato',NULL,NULL,NULL,NULL,'2017-08-15 13:27:17','2017-08-15 13:27:17',0);
/*!40000 ALTER TABLE `m_plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_plant_data`
--

DROP TABLE IF EXISTS `t_plant_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_plant_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlantId` tinyint(4) NOT NULL,
  `temp` tinyint(4) DEFAULT NULL,
  `humidity` tinyint(4) DEFAULT NULL,
  `luminous` tinyint(4) DEFAULT NULL,
  `SoilHumidity` tinyint(4) DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_plant_data`
--

LOCK TABLES `t_plant_data` WRITE;
/*!40000 ALTER TABLE `t_plant_data` DISABLE KEYS */;
INSERT INTO `t_plant_data` VALUES (1,1,0,0,0,0,'2017-08-02 17:04:52','2017-08-02 17:04:52',0),(2,1,25,80,NULL,NULL,'2017-08-02 18:00:06','2017-08-02 18:00:06',0),(3,1,25,80,NULL,NULL,'2017-08-02 19:00:06','2017-08-02 19:00:06',0),(4,1,25,80,NULL,NULL,'2017-08-02 20:00:06','2017-08-02 20:00:06',0),(5,1,26,92,NULL,NULL,'2017-08-02 20:56:05','2017-08-02 20:56:05',0),(6,1,30,66,NULL,NULL,'2017-08-02 21:00:06','2017-08-02 21:00:06',0),(7,1,30,63,NULL,NULL,'2017-08-02 22:00:06','2017-08-02 22:00:06',0),(8,1,25,70,NULL,NULL,'2017-08-02 23:00:06','2017-08-02 23:00:06',0),(9,1,25,83,NULL,NULL,'2017-08-03 00:00:06','2017-08-03 00:00:06',0),(10,1,25,83,NULL,NULL,'2017-08-03 01:00:06','2017-08-03 01:00:06',0),(11,1,25,83,NULL,NULL,'2017-08-03 02:00:06','2017-08-03 02:00:06',0),(12,1,25,86,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(13,1,0,0,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(14,1,25,83,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(15,1,25,83,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(16,1,25,83,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(17,1,25,82,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(18,1,25,80,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(19,1,25,78,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(20,1,25,78,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),(21,1,0,0,NULL,NULL,'2017-08-03 11:36:50','2017-08-03 11:36:51',0),(22,1,25,77,NULL,NULL,'2017-08-03 11:37:08','2017-08-03 11:37:08',0),(23,1,0,0,NULL,NULL,'2017-08-03 12:00:06','2017-08-03 12:00:06',0),(24,1,25,77,NULL,NULL,'2017-08-03 13:00:06','2017-08-03 13:00:06',0),(25,1,25,77,NULL,NULL,'2017-08-03 14:00:06','2017-08-03 14:00:06',0),(26,1,25,77,NULL,NULL,'2017-08-03 15:00:06','2017-08-03 15:00:06',0),(27,1,25,77,NULL,NULL,'2017-08-03 16:00:05','2017-08-03 16:00:05',0),(28,1,25,77,NULL,NULL,'2017-08-03 17:00:06','2017-08-03 17:00:06',0),(29,1,25,77,NULL,NULL,'2017-08-03 18:00:05','2017-08-03 18:00:05',0),(30,1,25,77,NULL,NULL,'2017-08-03 19:00:05','2017-08-03 19:00:05',0),(31,1,0,0,NULL,NULL,'2017-08-03 20:00:05','2017-08-03 20:00:05',0),(32,1,25,77,NULL,NULL,'2017-08-03 21:00:05','2017-08-03 21:00:05',0),(33,1,26,76,NULL,NULL,'2017-08-03 22:00:06','2017-08-03 22:00:06',0),(34,1,25,74,NULL,NULL,'2017-08-03 23:00:05','2017-08-03 23:00:05',0),(35,1,25,83,NULL,NULL,'2017-08-04 00:00:05','2017-08-04 00:00:05',0),(36,1,26,82,NULL,NULL,'2017-08-04 01:00:05','2017-08-04 01:00:05',0),(37,1,25,82,NULL,NULL,'2017-08-04 02:00:06','2017-08-04 02:00:06',0),(38,1,25,82,NULL,NULL,'2017-08-04 03:00:05','2017-08-04 03:00:05',0),(39,1,25,83,NULL,NULL,'2017-08-04 04:00:06','2017-08-04 04:00:06',0),(40,1,25,83,NULL,NULL,'2017-08-04 05:00:06','2017-08-04 05:00:06',0),(41,1,25,83,NULL,NULL,'2017-08-04 06:00:05','2017-08-04 06:00:05',0),(42,1,25,83,NULL,NULL,'2017-08-04 07:00:06','2017-08-04 07:00:06',0),(43,1,25,83,NULL,NULL,'2017-08-04 08:00:05','2017-08-04 08:00:05',0),(44,1,25,83,NULL,NULL,'2017-08-04 09:00:06','2017-08-04 09:00:06',0),(45,1,25,80,NULL,NULL,'2017-08-04 10:00:05','2017-08-04 10:00:05',0),(46,1,25,80,NULL,NULL,'2017-08-04 11:00:05','2017-08-04 11:00:05',0),(47,1,25,78,NULL,NULL,'2017-08-04 12:00:06','2017-08-04 12:00:06',0),(48,1,25,78,NULL,NULL,'2017-08-04 13:00:06','2017-08-04 13:00:06',0),(49,1,25,78,NULL,NULL,'2017-08-04 14:00:06','2017-08-04 14:00:06',0),(50,1,25,78,NULL,NULL,'2017-08-04 15:00:06','2017-08-04 15:00:06',0),(51,1,25,78,NULL,NULL,'2017-08-04 16:00:06','2017-08-04 16:00:06',0),(52,1,25,78,NULL,NULL,'2017-08-04 17:00:05','2017-08-04 17:00:05',0),(53,1,25,78,NULL,NULL,'2017-08-04 18:00:06','2017-08-04 18:00:06',0),(54,1,0,0,NULL,NULL,'2017-08-04 19:00:06','2017-08-04 19:00:06',0),(55,1,25,78,NULL,NULL,'2017-08-04 20:00:05','2017-08-04 20:00:05',0),(56,1,25,78,NULL,NULL,'2017-08-04 21:00:06','2017-08-04 21:00:06',0),(57,1,26,86,NULL,NULL,'2017-08-04 22:00:05','2017-08-04 22:00:05',0),(58,1,27,85,NULL,NULL,'2017-08-04 23:00:06','2017-08-04 23:00:06',0),(59,1,26,88,NULL,NULL,'2017-08-05 00:00:06','2017-08-05 00:00:06',0),(60,1,26,88,NULL,NULL,'2017-08-05 01:00:06','2017-08-05 01:00:06',0),(61,1,26,88,NULL,NULL,'2017-08-05 02:00:05','2017-08-05 02:00:05',0),(62,1,26,88,NULL,NULL,'2017-08-05 03:00:06','2017-08-05 03:00:06',0),(63,1,26,89,NULL,NULL,'2017-08-05 04:00:05','2017-08-05 04:00:05',0),(64,1,26,89,NULL,NULL,'2017-08-05 05:00:06','2017-08-05 05:00:06',0),(65,1,26,88,NULL,NULL,'2017-08-05 06:00:06','2017-08-05 06:00:06',0),(66,1,26,88,NULL,NULL,'2017-08-05 07:00:06','2017-08-05 07:00:06',0),(67,1,26,88,NULL,NULL,'2017-08-05 08:00:06','2017-08-05 08:00:06',0),(68,1,26,88,NULL,NULL,'2017-08-05 09:00:06','2017-08-05 09:00:07',0),(69,1,27,87,NULL,NULL,'2017-08-05 10:00:06','2017-08-05 10:00:06',0),(70,1,28,82,NULL,NULL,'2017-08-05 11:00:06','2017-08-05 11:00:06',0),(71,1,27,85,NULL,NULL,'2017-08-05 12:00:05','2017-08-05 12:00:06',0),(72,1,27,85,NULL,NULL,'2017-08-05 13:00:05','2017-08-05 13:00:05',0),(73,1,27,85,NULL,NULL,'2017-08-05 14:00:06','2017-08-05 14:00:06',0),(74,1,27,87,NULL,NULL,'2017-08-05 15:00:05','2017-08-05 15:00:05',0),(75,1,25,74,NULL,NULL,'2017-08-05 16:00:05','2017-08-05 16:00:06',0),(76,1,25,69,NULL,NULL,'2017-08-05 17:00:06','2017-08-05 17:00:06',0),(77,1,24,73,NULL,NULL,'2017-08-05 18:00:05','2017-08-05 18:00:05',0),(78,1,25,74,NULL,NULL,'2017-08-05 19:00:06','2017-08-05 19:00:06',0),(79,1,24,74,NULL,NULL,'2017-08-05 20:00:05','2017-08-05 20:00:05',0),(80,1,24,78,NULL,NULL,'2017-08-05 21:00:05','2017-08-05 21:00:05',0),(81,1,24,74,NULL,NULL,'2017-08-05 22:00:06','2017-08-05 22:00:06',0),(82,1,24,74,NULL,NULL,'2017-08-05 23:00:05','2017-08-05 23:00:05',0),(83,1,24,74,NULL,NULL,'2017-08-06 00:00:06','2017-08-06 00:00:06',0),(84,1,24,78,NULL,NULL,'2017-08-06 01:00:06','2017-08-06 01:00:06',0),(85,1,24,71,NULL,NULL,'2017-08-06 02:00:06','2017-08-06 02:00:06',0),(86,1,25,83,NULL,NULL,'2017-08-06 03:00:08','2017-08-06 03:00:08',0),(87,1,24,74,NULL,NULL,'2017-08-06 04:00:07','2017-08-06 04:00:07',0),(88,1,25,73,NULL,NULL,'2017-08-06 05:00:05','2017-08-06 05:00:06',0),(89,1,24,74,NULL,NULL,'2017-08-06 06:00:06','2017-08-06 06:00:06',0),(90,1,25,74,NULL,NULL,'2017-08-06 07:00:06','2017-08-06 07:00:06',0),(91,1,24,71,NULL,NULL,'2017-08-06 08:00:06','2017-08-06 08:00:06',0),(92,1,25,73,NULL,NULL,'2017-08-06 09:00:06','2017-08-06 09:00:06',0),(93,1,25,70,NULL,NULL,'2017-08-06 10:00:06','2017-08-06 10:00:06',0),(94,1,25,67,NULL,NULL,'2017-08-06 11:00:06','2017-08-06 11:00:06',0),(95,1,25,68,NULL,NULL,'2017-08-06 12:00:05','2017-08-06 12:00:05',0),(96,1,24,69,NULL,NULL,'2017-08-06 13:00:05','2017-08-06 13:00:05',0),(97,1,25,67,NULL,NULL,'2017-08-06 14:00:06','2017-08-06 14:00:06',0),(98,1,26,77,NULL,NULL,'2017-08-06 15:00:08','2017-08-06 15:00:08',0),(99,1,25,73,NULL,NULL,'2017-08-06 16:00:06','2017-08-06 16:00:06',0),(100,1,26,71,NULL,NULL,'2017-08-06 17:00:06','2017-08-06 17:00:06',0),(101,1,25,76,NULL,NULL,'2017-08-06 18:00:06','2017-08-06 18:00:06',0),(102,1,25,72,NULL,NULL,'2017-08-06 19:00:06','2017-08-06 19:00:06',0),(103,1,26,74,NULL,NULL,'2017-08-06 20:00:06','2017-08-06 20:00:06',0),(104,1,25,72,NULL,NULL,'2017-08-06 21:00:06','2017-08-06 21:00:06',0),(105,1,25,73,NULL,NULL,'2017-08-06 22:00:06','2017-08-06 22:00:06',0),(106,1,25,72,NULL,NULL,'2017-08-06 23:00:07','2017-08-06 23:00:07',0),(107,1,26,73,NULL,NULL,'2017-08-07 00:00:07','2017-08-07 00:00:07',0),(108,1,25,70,NULL,NULL,'2017-08-07 01:00:08','2017-08-07 01:00:08',0),(109,1,25,72,NULL,NULL,'2017-08-07 02:00:07','2017-08-07 02:00:07',0),(110,1,25,71,NULL,NULL,'2017-08-07 03:00:08','2017-08-07 03:00:08',0),(111,1,25,73,NULL,NULL,'2017-08-07 04:00:08','2017-08-07 04:00:08',0),(112,1,25,76,NULL,NULL,'2017-08-07 05:00:09','2017-08-07 05:00:09',0),(113,1,25,78,NULL,NULL,'2017-08-07 06:00:07','2017-08-07 06:00:07',0),(114,1,25,77,NULL,NULL,'2017-08-07 07:00:08','2017-08-07 07:00:08',0),(115,1,25,72,NULL,NULL,'2017-08-07 08:00:08','2017-08-07 08:00:08',0),(116,1,26,68,NULL,NULL,'2017-08-07 09:00:08','2017-08-07 09:00:08',0),(117,1,0,0,NULL,NULL,'2017-08-07 10:00:08','2017-08-07 10:00:08',0),(118,1,26,71,NULL,NULL,'2017-08-07 10:30:35','2017-08-07 10:30:35',0),(119,1,27,65,NULL,NULL,'2017-08-07 11:00:11','2017-08-07 11:00:11',0),(120,1,25,68,NULL,NULL,'2017-08-07 12:00:08','2017-08-07 12:00:08',0),(121,1,25,69,NULL,NULL,'2017-08-07 13:00:08','2017-08-07 13:00:08',0),(122,1,25,71,NULL,NULL,'2017-08-07 14:00:11','2017-08-07 14:00:11',0),(123,1,0,0,NULL,NULL,'2017-08-07 15:00:35','2017-08-07 15:00:40',0),(124,1,25,69,NULL,NULL,'2017-08-07 16:00:06','2017-08-07 16:00:06',0),(125,1,25,69,NULL,NULL,'2017-08-07 17:00:06','2017-08-07 17:00:06',0),(126,1,25,71,NULL,NULL,'2017-08-07 18:00:05','2017-08-07 18:00:05',0),(127,1,25,70,NULL,NULL,'2017-08-07 19:00:05','2017-08-07 19:00:05',0),(128,1,25,76,NULL,NULL,'2017-08-07 20:00:06','2017-08-07 20:00:06',0),(129,1,24,73,NULL,NULL,'2017-08-07 21:00:05','2017-08-07 21:00:05',0),(130,1,24,73,NULL,NULL,'2017-08-07 22:00:05','2017-08-07 22:00:06',0),(131,1,25,76,NULL,NULL,'2017-08-07 23:00:05','2017-08-07 23:00:05',0),(132,1,25,76,NULL,NULL,'2017-08-08 00:00:06','2017-08-08 00:00:06',0),(133,1,25,70,NULL,NULL,'2017-08-08 01:00:05','2017-08-08 01:00:05',0),(134,1,25,73,NULL,NULL,'2017-08-08 02:00:06','2017-08-08 02:00:06',0),(135,1,25,72,NULL,NULL,'2017-08-08 03:00:05','2017-08-08 03:00:05',0),(136,1,25,72,NULL,NULL,'2017-08-08 04:00:06','2017-08-08 04:00:06',0),(137,1,25,75,NULL,NULL,'2017-08-08 05:00:06','2017-08-08 05:00:06',0),(138,1,25,74,NULL,NULL,'2017-08-08 06:00:05','2017-08-08 06:00:05',0),(139,1,25,73,NULL,NULL,'2017-08-08 07:00:05','2017-08-08 07:00:05',0),(140,1,25,82,NULL,NULL,'2017-08-08 08:00:06','2017-08-08 08:00:06',0),(141,1,0,0,NULL,NULL,'2017-08-08 09:00:05','2017-08-08 09:00:05',0),(142,1,25,74,NULL,NULL,'2017-08-08 10:00:06','2017-08-08 10:00:06',0),(143,1,25,74,NULL,NULL,'2017-08-08 11:00:06','2017-08-08 11:00:06',0),(144,1,0,0,NULL,NULL,'2017-08-08 12:00:05','2017-08-08 12:00:05',0),(145,1,25,71,NULL,NULL,'2017-08-08 13:00:06','2017-08-08 13:00:06',0),(146,1,0,0,NULL,NULL,'2017-08-08 14:00:06','2017-08-08 14:00:06',0),(147,1,25,70,NULL,NULL,'2017-08-08 15:00:05','2017-08-08 15:00:05',0),(148,1,24,71,NULL,NULL,'2017-08-08 16:00:06','2017-08-08 16:00:06',0),(149,1,25,70,NULL,NULL,'2017-08-08 17:00:06','2017-08-08 17:00:06',0),(150,1,24,71,NULL,NULL,'2017-08-08 18:00:06','2017-08-08 18:00:06',0),(151,1,25,74,NULL,NULL,'2017-08-08 19:00:06','2017-08-08 19:00:06',0),(152,1,24,75,NULL,NULL,'2017-08-08 20:00:06','2017-08-08 20:00:06',0),(153,1,0,0,NULL,NULL,'2017-08-08 21:00:06','2017-08-08 21:00:06',0),(154,1,25,69,NULL,NULL,'2017-08-08 22:00:06','2017-08-08 22:00:06',0),(155,1,0,0,NULL,NULL,'2017-08-08 23:00:06','2017-08-08 23:00:06',0),(156,1,24,71,NULL,NULL,'2017-08-09 00:00:06','2017-08-09 00:00:06',0),(157,1,24,71,NULL,NULL,'2017-08-09 01:00:06','2017-08-09 01:00:06',0),(158,1,25,72,NULL,NULL,'2017-08-09 02:00:06','2017-08-09 02:00:06',0),(159,1,24,71,NULL,NULL,'2017-08-09 03:00:06','2017-08-09 03:00:06',0),(160,1,24,72,NULL,NULL,'2017-08-09 04:00:06','2017-08-09 04:00:06',0),(161,1,24,77,NULL,NULL,'2017-08-09 05:00:06','2017-08-09 05:00:06',0),(162,1,25,78,NULL,NULL,'2017-08-09 06:00:05','2017-08-09 06:00:05',0),(163,1,24,72,NULL,NULL,'2017-08-09 07:00:06','2017-08-09 07:00:06',0),(164,1,25,68,NULL,NULL,'2017-08-09 08:00:05','2017-08-09 08:00:05',0),(165,1,25,67,NULL,NULL,'2017-08-09 09:00:06','2017-08-09 09:00:06',0),(166,1,25,67,NULL,NULL,'2017-08-09 10:00:06','2017-08-09 10:00:06',0),(167,1,23,64,NULL,NULL,'2017-08-09 11:00:06','2017-08-09 11:00:06',0),(168,1,23,63,NULL,NULL,'2017-08-09 12:00:06','2017-08-09 12:00:06',0),(169,1,25,67,NULL,NULL,'2017-08-09 13:00:05','2017-08-09 13:00:05',0),(170,1,25,65,NULL,NULL,'2017-08-09 14:00:05','2017-08-09 14:00:05',0),(171,1,24,67,NULL,NULL,'2017-08-09 15:00:05','2017-08-09 15:00:05',0),(172,1,25,65,NULL,NULL,'2017-08-09 16:00:05','2017-08-09 16:00:05',0),(173,1,25,66,NULL,NULL,'2017-08-09 17:00:05','2017-08-09 17:00:05',0),(174,1,0,0,NULL,NULL,'2017-08-09 18:00:05','2017-08-09 18:00:05',0),(175,1,25,67,NULL,NULL,'2017-08-09 19:00:06','2017-08-09 19:00:06',0),(176,1,25,66,NULL,NULL,'2017-08-09 20:00:06','2017-08-09 20:00:06',0),(177,1,25,68,NULL,NULL,'2017-08-09 21:00:06','2017-08-09 21:00:06',0),(178,1,25,71,NULL,NULL,'2017-08-09 22:00:06','2017-08-09 22:00:06',0),(179,1,25,71,NULL,NULL,'2017-08-09 23:00:06','2017-08-09 23:00:06',0),(180,1,25,68,NULL,NULL,'2017-08-10 00:00:06','2017-08-10 00:00:06',0),(181,1,25,68,NULL,NULL,'2017-08-10 01:00:06','2017-08-10 01:00:06',0),(182,1,25,66,NULL,NULL,'2017-08-10 02:00:06','2017-08-10 02:00:06',0),(183,1,24,70,NULL,NULL,'2017-08-10 03:00:05','2017-08-10 03:00:05',0),(184,1,24,70,NULL,NULL,'2017-08-10 04:00:06','2017-08-10 04:00:06',0),(185,1,25,69,NULL,NULL,'2017-08-10 05:00:05','2017-08-10 05:00:05',0),(186,1,25,69,NULL,NULL,'2017-08-10 06:00:05','2017-08-10 06:00:05',0),(187,1,25,69,NULL,NULL,'2017-08-10 07:00:06','2017-08-10 07:00:06',0),(188,1,25,69,NULL,NULL,'2017-08-10 08:00:05','2017-08-10 08:00:05',0),(189,1,25,71,NULL,NULL,'2017-08-10 09:00:05','2017-08-10 09:00:05',0),(190,1,25,71,NULL,NULL,'2017-08-10 10:00:06','2017-08-10 10:00:06',0),(191,1,24,70,NULL,NULL,'2017-08-10 11:00:05','2017-08-10 11:00:05',0),(192,1,0,0,NULL,NULL,'2017-08-10 12:00:06','2017-08-10 12:00:06',0),(193,1,25,71,NULL,NULL,'2017-08-10 13:00:06','2017-08-10 13:00:06',0),(194,1,24,73,NULL,NULL,'2017-08-10 14:00:06','2017-08-10 14:00:06',0),(195,1,25,70,NULL,NULL,'2017-08-10 15:00:05','2017-08-10 15:00:05',0),(196,1,25,71,NULL,NULL,'2017-08-10 16:00:06','2017-08-10 16:00:06',0),(197,1,25,73,NULL,NULL,'2017-08-10 17:00:06','2017-08-10 17:00:06',0),(198,1,25,80,NULL,NULL,'2017-08-10 18:00:06','2017-08-10 18:00:06',0),(199,1,25,78,NULL,NULL,'2017-08-10 19:00:05','2017-08-10 19:00:06',0),(200,1,25,78,NULL,NULL,'2017-08-10 20:00:06','2017-08-10 20:00:06',0),(201,1,25,82,NULL,NULL,'2017-08-10 21:00:06','2017-08-10 21:00:06',0),(202,1,25,74,NULL,NULL,'2017-08-10 22:00:06','2017-08-10 22:00:06',0),(203,1,25,83,NULL,NULL,'2017-08-10 23:00:06','2017-08-10 23:00:06',0),(204,1,0,0,NULL,NULL,'2017-08-11 00:00:05','2017-08-11 00:00:05',0),(205,1,25,86,NULL,NULL,'2017-08-11 01:00:05','2017-08-11 01:00:06',0),(206,1,26,86,NULL,NULL,'2017-08-11 02:00:06','2017-08-11 02:00:06',0),(207,1,26,86,NULL,NULL,'2017-08-11 03:00:06','2017-08-11 03:00:06',0),(208,1,26,86,NULL,NULL,'2017-08-11 04:00:05','2017-08-11 04:00:05',0),(209,1,26,83,NULL,NULL,'2017-08-11 05:00:05','2017-08-11 05:00:05',0),(210,1,26,83,NULL,NULL,'2017-08-11 06:00:06','2017-08-11 06:00:06',0),(211,1,26,83,NULL,NULL,'2017-08-11 07:00:06','2017-08-11 07:00:06',0),(212,1,26,88,NULL,NULL,'2017-08-11 08:00:06','2017-08-11 08:00:06',0),(213,1,25,78,NULL,NULL,'2017-08-11 09:00:06','2017-08-11 09:00:06',0),(214,1,25,88,NULL,NULL,'2017-08-11 10:00:05','2017-08-11 10:00:05',0),(215,1,26,80,NULL,NULL,'2017-08-11 11:00:05','2017-08-11 11:00:05',0),(216,1,26,78,NULL,NULL,'2017-08-11 12:00:06','2017-08-11 12:00:06',0),(217,1,26,77,NULL,NULL,'2017-08-11 13:00:06','2017-08-11 13:00:06',0),(218,1,25,77,NULL,NULL,'2017-08-11 14:00:06','2017-08-11 14:00:06',0),(219,1,25,86,NULL,NULL,'2017-08-11 15:00:05','2017-08-11 15:00:06',0),(220,1,26,82,NULL,NULL,'2017-08-11 16:00:05','2017-08-11 16:00:05',0),(221,1,25,73,NULL,NULL,'2017-08-11 17:00:05','2017-08-11 17:00:05',0),(222,1,26,83,NULL,NULL,'2017-08-11 18:00:05','2017-08-11 18:00:05',0),(223,1,26,80,NULL,NULL,'2017-08-11 19:00:06','2017-08-11 19:00:06',0),(224,1,25,72,NULL,NULL,'2017-08-11 20:00:06','2017-08-11 20:00:06',0),(225,1,25,86,NULL,NULL,'2017-08-11 21:00:06','2017-08-11 21:00:06',0),(226,1,27,73,NULL,NULL,'2017-08-11 22:00:06','2017-08-11 22:00:06',0),(227,1,26,75,NULL,NULL,'2017-08-11 23:00:06','2017-08-11 23:00:06',0),(228,1,26,73,NULL,NULL,'2017-08-12 00:00:05','2017-08-12 00:00:05',0),(229,1,26,76,NULL,NULL,'2017-08-12 01:00:06','2017-08-12 01:00:06',0),(230,1,26,74,NULL,NULL,'2017-08-12 02:00:06','2017-08-12 02:00:06',0),(231,1,26,74,NULL,NULL,'2017-08-12 03:00:06','2017-08-12 03:00:06',0),(232,1,26,77,NULL,NULL,'2017-08-12 04:00:06','2017-08-12 04:00:06',0),(233,1,25,77,NULL,NULL,'2017-08-12 05:00:06','2017-08-12 05:00:06',0),(234,1,25,78,NULL,NULL,'2017-08-12 06:00:05','2017-08-12 06:00:05',0),(235,1,25,78,NULL,NULL,'2017-08-12 07:00:05','2017-08-12 07:00:05',0),(236,1,25,78,NULL,NULL,'2017-08-12 08:00:05','2017-08-12 08:00:05',0),(237,1,25,78,NULL,NULL,'2017-08-12 09:00:06','2017-08-12 09:00:06',0),(238,1,25,78,NULL,NULL,'2017-08-12 10:00:05','2017-08-12 10:00:05',0),(239,1,25,78,NULL,NULL,'2017-08-12 11:00:06','2017-08-12 11:00:06',0),(240,1,26,77,NULL,NULL,'2017-08-12 12:00:05','2017-08-12 12:00:05',0),(241,1,26,77,NULL,NULL,'2017-08-12 13:00:06','2017-08-12 13:00:06',0),(242,1,26,77,NULL,NULL,'2017-08-12 14:00:05','2017-08-12 14:00:05',0),(243,1,26,74,NULL,NULL,'2017-08-12 15:00:05','2017-08-12 15:00:05',0),(244,1,25,80,NULL,NULL,'2017-08-12 16:00:06','2017-08-12 16:00:06',0),(245,1,25,83,NULL,NULL,'2017-08-12 17:00:06','2017-08-12 17:00:06',0),(246,1,25,86,NULL,NULL,'2017-08-12 18:00:06','2017-08-12 18:00:06',0),(247,1,25,78,NULL,NULL,'2017-08-12 19:00:05','2017-08-12 19:00:05',0),(248,1,25,78,NULL,NULL,'2017-08-12 20:00:05','2017-08-12 20:00:05',0),(249,1,26,78,NULL,NULL,'2017-08-12 21:00:05','2017-08-12 21:00:05',0),(250,1,0,0,NULL,NULL,'2017-08-12 22:00:06','2017-08-12 22:00:06',0),(251,1,26,77,NULL,NULL,'2017-08-12 23:00:06','2017-08-12 23:00:06',0),(252,1,26,77,NULL,NULL,'2017-08-13 00:00:06','2017-08-13 00:00:06',0),(253,1,25,78,NULL,NULL,'2017-08-13 01:00:06','2017-08-13 01:00:06',0),(254,1,25,77,NULL,NULL,'2017-08-13 02:00:06','2017-08-13 02:00:06',0),(255,1,25,77,NULL,NULL,'2017-08-13 03:00:05','2017-08-13 03:00:05',0),(256,1,25,77,NULL,NULL,'2017-08-13 04:00:05','2017-08-13 04:00:06',0),(257,1,26,77,NULL,NULL,'2017-08-13 05:00:05','2017-08-13 05:00:05',0),(258,1,26,77,NULL,NULL,'2017-08-13 06:00:05','2017-08-13 06:00:05',0),(259,1,25,77,NULL,NULL,'2017-08-13 07:00:06','2017-08-13 07:00:06',0),(260,1,25,77,NULL,NULL,'2017-08-13 08:00:05','2017-08-13 08:00:05',0),(261,1,26,77,NULL,NULL,'2017-08-13 09:00:06','2017-08-13 09:00:06',0),(262,1,26,76,NULL,NULL,'2017-08-13 10:00:06','2017-08-13 10:00:06',0),(263,1,26,76,NULL,NULL,'2017-08-13 11:00:05','2017-08-13 11:00:05',0),(264,1,26,76,NULL,NULL,'2017-08-13 12:00:05','2017-08-13 12:00:05',0),(265,1,26,76,NULL,NULL,'2017-08-13 13:00:06','2017-08-13 13:00:06',0),(266,1,26,76,NULL,NULL,'2017-08-13 14:00:05','2017-08-13 14:00:06',0),(267,1,26,76,NULL,NULL,'2017-08-13 15:00:06','2017-08-13 15:00:06',0),(268,1,26,76,NULL,NULL,'2017-08-13 16:00:06','2017-08-13 16:00:06',0),(269,1,26,76,NULL,NULL,'2017-08-13 17:00:06','2017-08-13 17:00:06',0),(270,1,26,76,NULL,NULL,'2017-08-13 18:00:05','2017-08-13 18:00:05',0),(271,1,26,77,NULL,NULL,'2017-08-13 19:00:06','2017-08-13 19:00:06',0),(272,1,26,77,NULL,NULL,'2017-08-13 20:00:06','2017-08-13 20:00:06',0),(273,1,24,79,NULL,NULL,'2017-08-13 21:00:06','2017-08-13 21:00:06',0),(274,1,22,82,NULL,NULL,'2017-08-13 22:00:06','2017-08-13 22:00:06',0),(275,1,23,79,NULL,NULL,'2017-08-13 23:00:06','2017-08-13 23:00:06',0),(276,1,24,81,NULL,NULL,'2017-08-14 00:00:05','2017-08-14 00:00:05',0),(277,1,25,86,NULL,NULL,'2017-08-14 01:00:06','2017-08-14 01:00:06',0),(278,1,25,88,NULL,NULL,'2017-08-14 02:00:06','2017-08-14 02:00:06',0),(279,1,24,74,NULL,NULL,'2017-08-14 03:00:05','2017-08-14 03:00:06',0),(280,1,25,88,NULL,NULL,'2017-08-14 04:00:06','2017-08-14 04:00:06',0),(281,1,24,74,NULL,NULL,'2017-08-14 05:00:05','2017-08-14 05:00:05',0),(282,1,25,88,NULL,NULL,'2017-08-14 06:00:06','2017-08-14 06:00:06',0),(283,1,25,86,NULL,NULL,'2017-08-14 07:00:06','2017-08-14 07:00:06',0),(284,1,25,85,NULL,NULL,'2017-08-14 08:00:06','2017-08-14 08:00:06',0),(285,1,25,86,NULL,NULL,'2017-08-14 09:00:05','2017-08-14 09:00:05',0),(286,1,25,86,NULL,NULL,'2017-08-14 10:00:05','2017-08-14 10:00:05',0),(287,1,25,86,NULL,NULL,'2017-08-14 11:00:05','2017-08-14 11:00:05',0),(288,1,25,86,NULL,NULL,'2017-08-14 12:00:05','2017-08-14 12:00:05',0),(289,1,25,88,NULL,NULL,'2017-08-14 13:00:06','2017-08-14 13:00:06',0),(290,1,25,86,NULL,NULL,'2017-08-14 14:00:06','2017-08-14 14:00:06',0),(291,1,24,79,NULL,NULL,'2017-08-14 15:00:06','2017-08-14 15:00:06',0),(292,1,25,90,NULL,NULL,'2017-08-14 16:00:06','2017-08-14 16:00:06',0),(293,1,25,89,NULL,NULL,'2017-08-14 17:00:05','2017-08-14 17:00:05',0),(294,1,0,0,NULL,NULL,'2017-08-14 18:00:05','2017-08-14 18:00:05',0),(295,1,25,88,NULL,NULL,'2017-08-14 19:00:06','2017-08-14 19:00:06',0),(296,1,25,88,NULL,NULL,'2017-08-14 20:00:06','2017-08-14 20:00:06',0),(297,1,24,78,NULL,NULL,'2017-08-14 21:00:06','2017-08-14 21:00:06',0),(298,1,25,88,NULL,NULL,'2017-08-14 22:00:06','2017-08-14 22:00:06',0),(299,1,23,87,NULL,NULL,'2017-08-14 23:00:06','2017-08-14 23:00:06',0),(300,1,25,89,NULL,NULL,'2017-08-15 00:00:06','2017-08-15 00:00:06',0),(301,1,23,89,NULL,NULL,'2017-08-15 01:00:06','2017-08-15 01:00:06',0),(302,1,25,89,NULL,NULL,'2017-08-15 02:00:05','2017-08-15 02:00:05',0),(303,1,25,90,NULL,NULL,'2017-08-15 03:00:06','2017-08-15 03:00:06',0),(304,1,25,88,NULL,NULL,'2017-08-15 04:00:05','2017-08-15 04:00:05',0),(305,1,25,88,NULL,NULL,'2017-08-15 05:00:06','2017-08-15 05:00:06',0),(306,1,25,88,NULL,NULL,'2017-08-15 06:00:06','2017-08-15 06:00:06',0),(307,1,25,88,NULL,NULL,'2017-08-15 07:00:05','2017-08-15 07:00:05',0),(308,1,25,88,NULL,NULL,'2017-08-15 08:00:05','2017-08-15 08:00:05',0),(309,1,25,88,NULL,NULL,'2017-08-15 09:00:06','2017-08-15 09:00:06',0),(310,1,25,86,NULL,NULL,'2017-08-15 10:00:05','2017-08-15 10:00:05',0),(311,1,24,87,NULL,NULL,'2017-08-15 11:00:06','2017-08-15 11:00:06',0),(312,1,0,0,NULL,NULL,'2017-08-15 12:00:05','2017-08-15 12:00:05',0),(313,1,25,86,NULL,NULL,'2017-08-15 13:00:05','2017-08-15 13:00:05',0),(314,1,25,86,NULL,NULL,'2017-08-15 14:00:05','2017-08-15 14:00:05',0),(315,1,25,86,NULL,NULL,'2017-08-15 15:00:06','2017-08-15 15:00:06',0),(316,1,0,0,NULL,NULL,'2017-08-15 16:00:06','2017-08-15 16:00:06',0),(317,1,25,86,NULL,NULL,'2017-08-15 17:00:05','2017-08-15 17:00:05',0),(318,1,25,85,NULL,NULL,'2017-08-15 18:00:06','2017-08-15 18:00:06',0),(319,1,25,86,NULL,NULL,'2017-08-15 19:00:06','2017-08-15 19:00:06',0),(320,1,25,83,NULL,NULL,'2017-08-15 20:00:06','2017-08-15 20:00:06',0),(321,1,25,83,NULL,NULL,'2017-08-15 21:00:06','2017-08-15 21:00:06',0),(322,1,25,85,NULL,NULL,'2017-08-15 22:00:06','2017-08-15 22:00:06',0),(323,1,25,83,NULL,NULL,'2017-08-15 23:00:05','2017-08-15 23:00:05',0),(324,1,25,88,NULL,NULL,'2017-08-16 00:00:05','2017-08-16 00:00:05',0),(325,1,25,88,NULL,NULL,'2017-08-16 01:00:05','2017-08-16 01:00:05',0),(326,1,25,86,NULL,NULL,'2017-08-16 02:00:06','2017-08-16 02:00:06',0),(327,1,0,0,NULL,NULL,'2017-08-16 03:00:05','2017-08-16 03:00:05',0),(328,1,25,88,NULL,NULL,'2017-08-16 04:00:05','2017-08-16 04:00:05',0),(329,1,25,88,NULL,NULL,'2017-08-16 05:00:05','2017-08-16 05:00:05',0),(330,1,25,86,NULL,NULL,'2017-08-16 06:00:05','2017-08-16 06:00:05',0),(331,1,25,86,NULL,NULL,'2017-08-16 07:00:05','2017-08-16 07:00:05',0),(332,1,25,86,NULL,NULL,'2017-08-16 08:00:06','2017-08-16 08:00:06',0),(333,1,25,86,NULL,NULL,'2017-08-16 09:00:05','2017-08-16 09:00:05',0),(334,1,25,86,NULL,NULL,'2017-08-16 10:00:05','2017-08-16 10:00:05',0),(335,1,25,86,NULL,NULL,'2017-08-16 11:00:06','2017-08-16 11:00:06',0),(336,1,25,83,NULL,NULL,'2017-08-16 12:00:06','2017-08-16 12:00:06',0),(337,1,24,84,NULL,NULL,'2017-08-16 17:00:06','2017-08-16 17:00:06',0),(338,1,24,83,NULL,NULL,'2017-08-16 17:15:34','2017-08-16 17:15:34',0),(339,1,24,83,NULL,NULL,'2017-08-16 17:15:42','2017-08-16 17:15:42',0),(340,1,24,83,NULL,NULL,'2017-08-16 18:00:06','2017-08-16 18:00:06',0),(341,1,24,83,NULL,NULL,'2017-08-16 19:00:06','2017-08-16 19:00:06',0),(342,1,24,83,NULL,NULL,'2017-08-16 20:00:06','2017-08-16 20:00:06',0),(343,1,25,83,NULL,NULL,'2017-08-16 21:00:05','2017-08-16 21:00:05',0),(344,1,24,84,NULL,NULL,'2017-08-16 22:00:05','2017-08-16 22:00:05',0),(345,1,24,84,NULL,NULL,'2017-08-16 23:00:05','2017-08-16 23:00:05',0),(346,1,24,83,NULL,NULL,'2017-08-17 00:00:06','2017-08-17 00:00:06',0),(347,1,0,0,NULL,NULL,'2017-08-17 05:00:05','2017-08-17 05:00:05',0),(348,1,0,0,NULL,NULL,'2017-08-17 06:00:06','2017-08-17 06:00:06',0),(349,1,0,0,NULL,NULL,'2017-08-17 07:00:06','2017-08-17 07:00:06',0),(350,1,0,0,NULL,NULL,'2017-08-17 08:00:06','2017-08-17 08:00:06',0),(351,1,0,0,NULL,NULL,'2017-08-17 09:00:06','2017-08-17 09:00:06',0),(352,1,0,0,NULL,NULL,'2017-08-17 10:00:06','2017-08-17 10:00:06',0),(353,1,0,0,NULL,NULL,'2017-08-17 11:00:06','2017-08-17 11:00:06',0),(354,1,0,0,NULL,NULL,'2017-08-17 12:00:06','2017-08-17 12:00:06',0),(355,1,0,0,NULL,NULL,'2017-08-17 13:00:06','2017-08-17 13:00:06',0),(356,1,0,0,NULL,NULL,'2017-08-18 19:50:29','2017-08-18 19:50:29',0),(357,1,0,0,NULL,NULL,'2017-08-30 12:00:05','2017-08-30 12:00:05',0),(358,1,25,86,NULL,NULL,'2017-08-30 13:00:05','2017-08-30 13:00:05',0),(359,1,25,86,NULL,NULL,'2017-08-30 14:00:05','2017-08-30 14:00:05',0),(360,1,25,86,NULL,NULL,'2017-08-30 15:00:06','2017-08-30 15:00:06',0),(361,1,0,0,NULL,NULL,'2017-08-30 16:00:06','2017-08-30 16:00:06',0),(362,1,25,86,NULL,NULL,'2017-08-30 17:00:05','0000-00-00 00:00:00',0),(363,1,25,85,NULL,NULL,'2017-08-30 18:00:06','0000-00-00 00:00:00',0),(364,1,25,86,NULL,NULL,'2017-08-30 19:00:06','0000-00-00 00:00:00',0),(365,1,25,83,NULL,NULL,'2017-08-30 20:00:06','0000-00-00 00:00:00',0),(366,1,25,83,NULL,NULL,'2017-08-30 21:00:06','0000-00-00 00:00:00',0),(367,1,25,85,NULL,NULL,'2017-08-30 22:00:06','0000-00-00 00:00:00',0),(368,1,25,83,NULL,NULL,'2017-08-30 23:00:05','0000-00-00 00:00:00',0),(369,1,0,0,NULL,NULL,'2017-08-31 12:00:05','2017-08-31 12:00:05',0),(370,1,25,86,NULL,NULL,'2017-08-31 13:00:05','2017-08-31 13:00:05',0),(371,1,25,86,NULL,NULL,'2017-08-31 14:00:05','2017-08-31 14:00:05',0),(372,1,25,86,NULL,NULL,'2017-08-31 15:00:06','2017-08-31 15:00:06',0),(373,1,0,0,NULL,NULL,'2017-08-31 16:00:06','2017-08-31 16:00:06',0),(374,1,25,86,NULL,NULL,'2017-08-31 17:00:05','2017-08-31 17:00:05',0),(375,1,25,85,NULL,NULL,'2017-08-31 18:00:06','2017-08-31 18:00:06',0),(376,1,25,86,NULL,NULL,'2017-08-31 19:00:06','2017-08-31 19:00:06',0),(377,1,25,83,NULL,NULL,'2017-08-31 20:00:06','2017-08-31 20:00:06',0),(378,1,25,83,NULL,NULL,'2017-08-31 21:00:06','2017-08-31 21:00:06',0),(379,1,25,85,NULL,NULL,'2017-08-31 22:00:06','2017-08-31 22:00:06',0),(380,1,25,83,NULL,NULL,'2017-08-31 23:00:05','2017-08-31 23:00:05',0);
/*!40000 ALTER TABLE `t_plant_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'test1','2017-07-26','2017-07-26'),(2,'test2','2017-07-26','2017-07-26');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-06 23:25:34