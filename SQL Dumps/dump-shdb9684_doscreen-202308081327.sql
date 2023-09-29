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
-- Table structure for table `master_keys`
--

DROP TABLE IF EXISTS `master_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_keys`
--

LOCK TABLES `master_keys` WRITE;
/*!40000 ALTER TABLE `master_keys` DISABLE KEYS */;
INSERT INTO `master_keys` VALUES (1,'button','mobile'),(2,'table_name','mobile'),(3,'doctor','web'),(4,'rumah_sakit','web'),(5,'deteksi_dini','web'),(6,'pemantauan','web'),(7,'custom_jawaban','web'),(8,'spesialisasi_dokter','web'),(9,'data_penyakit','web'),(10,'pengguna','web'),(11,'hak_akses','web'),(12,'dashboard','web'),(13,'bahasa','web'),(14,'ringkasan_deteksi_dini','web'),(15,'pengaturan','web'),(16,'aksi','web'),(17,'foto','web'),(18,'dibuat_oleh','web'),(19,'nama','web'),(20,'kategori','web'),(21,'ringkasan_pemantauan','web'),(22,'alamat','web'),(23,'waktu_dibuat','web'),(24,'video','web'),(25,'nilai','web'),(26,'kunci','web'),(27,'judul','web'),(28,'indikator','web'),(29,'btn_terapkan_bahasa_default','web'),(30,'btn_tambah_video','web'),(31,'btn_tambah_dokter','web'),(32,'btn_tambah_rumah_sakit','web'),(33,'spesialis','web'),(34,'nomor_hp','web');
/*!40000 ALTER TABLE `master_keys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-08 13:27:03
