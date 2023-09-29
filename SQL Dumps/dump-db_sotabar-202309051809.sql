-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sotabar
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.39-MariaDB-1:10.3.39+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `no_surat_config`
--

DROP TABLE IF EXISTS `no_surat_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `no_surat_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dokumen_id` int(11) NOT NULL,
  `no_urut` varchar(30) DEFAULT NULL,
  `kode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`,`dokumen_id`),
  KEY `jenis_dokumen` (`dokumen_id`),
  CONSTRAINT `jenis_dokumen` FOREIGN KEY (`dokumen_id`) REFERENCES `tbl_ref_jenis_dokumen` (`jenis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_surat_config`
--

LOCK TABLES `no_surat_config` WRITE;
/*!40000 ALTER TABLE `no_surat_config` DISABLE KEYS */;
INSERT INTO `no_surat_config` VALUES (1,1,'0325','401'),(2,2,'0100','472.11'),(3,3,'0002','472.31'),(4,4,'0001','472.12'),(5,5,'0000','733'),(6,6,'0003','510'),(7,7,'0000','642'),(8,8,'0000','471.1'),(9,9,'0000','833'),(10,10,'0000','472.41'),(11,11,'0000','479'),(12,12,'0000','472.12');
/*!40000 ALTER TABLE `no_surat_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05 18:09:40
