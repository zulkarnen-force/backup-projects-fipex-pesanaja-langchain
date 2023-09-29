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
INSERT INTO `no_surat_config` VALUES (1,1,'0326','401'),(2,2,'0100','472.11'),(3,3,'0002','472.31'),(4,4,'0001','472.12'),(5,5,'0000','733'),(6,6,'0003','510'),(7,7,'0000','642'),(8,8,'0000','471.1'),(9,9,'0000','833'),(10,10,'0000','472.41'),(11,11,'0000','479'),(12,12,'0000','472.12');
/*!40000 ALTER TABLE `no_surat_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penduduk_lahir`
--

DROP TABLE IF EXISTS `penduduk_lahir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penduduk_lahir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anak_id` int(11) NOT NULL,
  `ibu_id` int(11) DEFAULT NULL,
  `ayah_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penduduk_lahir`
--

LOCK TABLES `penduduk_lahir` WRITE;
/*!40000 ALTER TABLE `penduduk_lahir` DISABLE KEYS */;
INSERT INTO `penduduk_lahir` VALUES (3,4340,1,1,'2023-08-30','2023-08-30'),(4,4345,4,4,'2023-09-05','2023-09-05'),(5,4346,7,4,'2023-09-05','2023-09-05'),(6,4347,4,5,'2023-09-05','2023-09-05');
/*!40000 ALTER TABLE `penduduk_lahir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('27b7c048300c50efbd2b5aeba8ce49974dbc7e43','172.21.0.1',1693918785,_binary '__ci_last_regenerate|i:1693918780;isLogin|s:3:\"yes\";user_id|s:2:\"11\";id_group|s:1:\"1\";username|s:10:\"superadmin\";nama_group|s:13:\"Administrator\";id_gerai|N;display_name|s:10:\"superadmin\";'),('972c8d3bb3fa3292b2957492168547379aca06d7','172.21.0.1',1693919265,_binary '__ci_last_regenerate|i:1693919265;isLogin|s:3:\"yes\";user_id|s:2:\"11\";id_group|s:1:\"1\";username|s:10:\"superadmin\";nama_group|s:13:\"Administrator\";id_gerai|N;display_name|s:10:\"superadmin\";'),('c0ddf0f742edc0e2ae232040cd5f88f6a59cd05c','172.21.0.1',1693930637,_binary '__ci_last_regenerate|i:1693930637;isLogin|s:3:\"yes\";user_id|s:2:\"11\";id_group|s:1:\"1\";username|s:10:\"superadmin\";nama_group|s:13:\"Administrator\";id_gerai|N;display_name|s:10:\"superadmin\";param_search|N;param_nama|s:0:\"\";param_status_dasar|s:0:\"\";param_jenis_kelamin|s:0:\"\";param_agama|s:0:\"\";param_gol_darah|s:0:\"\";param_status_kb|s:0:\"\";param_hub_keluarga|s:0:\"\";param_status_nikah|s:0:\"\";param_status_dtks|s:0:\"\";param_status_dpt|s:0:\"\";param_pendidikan_kk|s:0:\"\";param_pekerjaan|s:0:\"\";param_warga_negara|s:0:\"\";param_dusun|s:1:\"1\";param_umur_dari|s:0:\"\";param_umur_sampai|s:0:\"\";is_validate|s:1:\"0\";has_kk|s:1:\"1\";'),('c2aeb135bf35846b5a76e6d0f00bd0d04e6b858b','172.21.0.1',1693921236,_binary '__ci_last_regenerate|i:1693921228;isLogin|s:3:\"yes\";user_id|s:2:\"11\";id_group|s:1:\"1\";username|s:10:\"superadmin\";nama_group|s:13:\"Administrator\";id_gerai|N;display_name|s:10:\"superadmin\";'),('d3ba75c71ad8d963b4e83cc3f7029fd3a663178e','172.21.0.1',1693918382,_binary '__ci_last_regenerate|i:1693918382;isLogin|s:3:\"yes\";user_id|s:2:\"11\";id_group|s:1:\"1\";username|s:10:\"superadmin\";nama_group|s:13:\"Administrator\";id_gerai|N;display_name|s:10:\"superadmin\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_group_menu`
--

DROP TABLE IF EXISTS `tbl_group_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_group_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_group` (`id_group`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `tbl_group_menu_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `tbl_group` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tbl_group_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `tbl_menu` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_group_menu`
--

LOCK TABLES `tbl_group_menu` WRITE;
/*!40000 ALTER TABLE `tbl_group_menu` DISABLE KEYS */;

/*!40000 ALTER TABLE `tbl_group_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daerah_asal`
--

DROP TABLE IF EXISTS `daerah_asal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daerah_asal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` char(10) DEFAULT NULL,
  `regency_id` char(10) DEFAULT NULL,
  `district_id` char(10) DEFAULT NULL,
  `village_id` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daerah_asal`
--

LOCK TABLES `daerah_asal` WRITE;
/*!40000 ALTER TABLE `daerah_asal` DISABLE KEYS */;
INSERT INTO `daerah_asal` VALUES (1,'14','1403','1403020','1403020004'),(2,'14','1405','1405020','1405020050'),(3,'12','1204','1204020','1204020005');
/*!40000 ALTER TABLE `daerah_asal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_menu_kategori` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` (id_kategori, nama, url)  VALUES  (10,'Dokumen Kecamatan','dokumen_kecamatan'),(5,'Pindah Masuk','penduduk_masuk'),(5,'Lahir','penduduk_lahir'),(4,'No Surat','settings_surat');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;
INSERT INTO `tbl_group_menu` (id_group, id_menu) VALUES  (1,53),(1,54),(1,55) ;
--
-- Table structure for table `penduduk_masuk`
--

DROP TABLE IF EXISTS `penduduk_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penduduk_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `daerah_asal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penduduk_masuk`
--

LOCK TABLES `penduduk_masuk` WRITE;
/*!40000 ALTER TABLE `penduduk_masuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `penduduk_masuk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05 23:24:27
