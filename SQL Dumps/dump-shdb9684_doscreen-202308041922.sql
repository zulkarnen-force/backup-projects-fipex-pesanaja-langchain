-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: shdb9684_doscreen
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `languagesconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languagesconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languagesconfig`
--

LOCK TABLES `languagesconfig` WRITE;
/*!40000 ALTER TABLE `languagesconfig` DISABLE KEYS */;
INSERT INTO `languagesconfig` VALUES (1,'ind','web',0),(3,'asdsad','web',0),(4,'may','web',0),(5,'eng','web',1),(6,'ind','mobile',0),(7,'eng','mobile',0),(8,'may','mobile',1);
/*!40000 ALTER TABLE `languagesconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL DEFAULT 'website',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translate`
--

LOCK TABLES `translate` WRITE;
/*!40000 ALTER TABLE `translate` DISABLE KEYS */;
INSERT INTO `translate` VALUES (93,'mobile_body_title','asd','indonesia','mobile','263474782346782342','2023-07-28 15:59:33'),(94,'mobile_body_title','asdsad','indonesia','mobile','263474782346782342','2023-07-28 16:00:10'),(95,'mobile_body_heading','fsaddas','indonesia','mobile','263474782346782342','2023-07-28 16:01:59'),(96,'mobile_body_button','sdsa','indonesia','mobile','263474782346782342','2023-07-28 16:02:17'),(97,'mobile_close_button','asd','indonesia','mobile','263474782346782342','2023-07-29 00:42:23'),(98,'body_title','badan','indonesia','web','263474782346782342','2023-07-29 00:42:49'),(99,'body_heading','asdasd','indonesia','web','263474782346782342','2023-07-29 00:44:58'),(100,'close_button','close','english','web','263474782346782342','2023-07-29 00:47:51'),(101,'body_title','asdka ','spanish','web','263474782346782342','2023-07-29 00:48:03'),(102,'button','','','mobile','263474782346782342','2023-07-31 16:33:21'),(103,'button','','','mobile','263474782346782342','2023-07-31 16:33:23'),(104,'button','sad','','mobile','263474782346782342','2023-07-31 16:33:27'),(105,'button','asd','','mobile','263474782346782342','2023-07-31 16:33:29'),(106,'button','asd','','mobile','263474782346782342','2023-07-31 16:33:31'),(107,'button','asd','indonesia','mobile','263474782346782342','2023-07-31 16:36:28'),(108,'button','asd','may','mobile','263474782346782342','2023-07-31 16:38:59'),(109,'button','','indonesia','mobile','263474782346782342','2023-08-01 04:52:46'),(110,'button','Button','Indonesia','mobile','263474782346782342','2023-08-01 05:30:06'),(111,'button','Button','Indonesia','mobile','263474782346782342','2023-08-01 05:30:34'),(112,'button','sad','Indonesia','mobile','263474782346782342','2023-08-01 05:31:46'),(113,'button','Tombol','ind','mobile','263474782346782342','2023-08-01 05:32:03'),(114,'table_name','ASD','ind','mobile','263474782346782342','2023-08-01 05:32:07'),(115,'doctor','Dokter','ind','web','263474782346782342','2023-08-02 00:59:00'),(116,'doctor','Doctor','eng','web','263474782346782342','2023-08-02 00:59:11'),(117,'doctor','Dokter','may','web','263474782346782342','2023-08-02 00:59:34'),(118,'rumah_sakit','Hospital','eng','web','263474782346782342','2023-08-02 03:09:15'),(119,'deteksi_dini','Early Detection','eng','web','263474782346782342','2023-08-02 03:17:06'),(120,'pemantauan','Monitoring','eng','web','263474782346782342','2023-08-02 03:17:07'),(121,'custom_jawaban','Custom Answer','eng','web','263474782346782342','2023-08-02 03:17:24'),(122,'rumah_sakit','Hospital','may','web','263474782346782342','2023-08-02 03:41:56'),(123,'deteksi_dini','Pengesanan Awal','may','web','263474782346782342','2023-08-02 07:21:17'),(124,'pemantauan','Pemantauan','may','web','263474782346782342','2023-08-02 07:56:49'),(125,'custom_jawaban','Jawapan Tersuai','may','web','263474782346782342','2023-08-02 07:57:08'),(126,'rumah_sakit','Rumah Sakit','ind','web','263474782346782342','2023-08-02 08:43:52'),(127,'deteksi_dini','Deteksi Awal','ind','web','263474782346782342','2023-08-02 08:44:09'),(128,'pemantauan','Pemantauan','ind','web','263474782346782342','2023-08-02 08:44:22'),(129,'custom_jawaban','Kustomisasi Jawaban','ind','web','263474782346782342','2023-08-02 08:44:44'),(130,'spesialisasi_dokter','Doctor Specialization','eng','web','263474782346782342','2023-08-02 08:50:43'),(131,'data_penyakit','Disease Data','eng','web','263474782346782342','2023-08-02 08:51:12'),(132,'spesialisasi_dokter','Doktor Pakar','may','web','263474782346782342','2023-08-02 11:45:01'),(133,'spesialisasi_dokter','Spesialisasi Dokter','ind','web','263474782346782342','2023-08-02 11:45:26'),(134,'pengguna','User','eng','web','263474782346782342','2023-08-02 11:58:59'),(135,'data_penyakit','Data Penyakit','ind','web','263474782346782342','2023-08-02 14:36:40'),(136,'pengguna','Pengguna','ind','web','263474782346782342','2023-08-02 14:38:55'),(137,'hak_akses','','ind','web','263474782346782342','2023-08-02 14:39:00'),(138,'dashboard','Dashboard','eng','web','263474782346782342','2023-08-02 16:28:25'),(139,'pengaturan','Setting','eng','web','263474782346782342','2023-08-02 16:28:38'),(140,'bahasa','Language','eng','web','263474782346782342','2023-08-03 01:46:50'),(141,'ringkasan_deteksi_dini','Early Detection Summary','eng','web','263474782346782342','2023-08-03 02:58:35'),(142,'dashboard','Papan Pemuka','may','web','263474782346782342','2023-08-04 08:17:36'),(143,'ringkasan_deteksi_dini','Ringkasan Pengesanan Awal','may','web','263474782346782342','2023-08-04 08:19:32'),(144,'hak_akses','Access rights','eng','web','263474782346782342','2023-08-04 09:09:00'),(145,'aksi','Action','eng','web','263474782346782342','2023-08-04 09:12:28'),(146,'foto','Photo','eng','web','263474782346782342','2023-08-04 09:12:35'),(147,'dibuat_oleh','Created By','eng','web','263474782346782342','2023-08-04 09:12:43'),(148,'nama','Name','eng','web','263474782346782342','2023-08-04 09:12:48'),(149,'kategori','Category','eng','web','263474782346782342','2023-08-04 09:12:54'),(150,'ringkasan_pemantauan','Monitoring Summary','eng','web','263474782346782342','2023-08-04 09:18:20'),(151,'alamat','Address','eng','web','263474782346782342','2023-08-04 09:18:25'),(152,'waktu_dibuat','Created Date','eng','web','263474782346782342','2023-08-04 09:22:36'),(153,'video','Videos','eng','web','263474782346782342','2023-08-04 09:22:40'),(154,'nilai','Value','eng','web','263474782346782342','2023-08-04 09:47:29'),(155,'kunci','Key','eng','web','263474782346782342','2023-08-04 09:47:33');
/*!40000 ALTER TABLE `translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('ind','Indonesia'),('eng','English'),('may','Malaysia');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 19:22:02
