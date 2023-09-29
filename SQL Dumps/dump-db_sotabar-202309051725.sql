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
INSERT INTO `tbl_menu` VALUES (1,1,'Penduduk','penduduk'),(2,1,'Keluarga','keluarga'),(7,4,'Group','master_group'),(8,4,'User','master_account'),(28,5,'Meninggal','peristiwa_meninggal'),(30,6,'Surat Tidak Mampu','surat_tidak_mampu'),(31,6,'Surat Kelahiran','surat_kelahiran'),(32,6,'Surat Anak Angkat','surat_anak_angkat'),(33,5,'Pindah Keluar','peristiwa_pindah'),(34,4,'Profil Desa','profil_desa'),(35,7,'Dokumen','dokumen_portal'),(36,8,'Log User','log_user'),(37,8,'Log Dokumen','log_dokumen'),(38,7,'Dokumen Penduduk','dokumen_penduduk'),(39,6,'Surat Kematian','surat_kematian'),(40,6,'Surat Pengantar SKCK','surat_kelakuan_baik'),(41,6,'Surat Usaha','surat_usaha'),(42,6,'Surat Domisili Yayasan','surat_yayasan'),(43,6,'Surat Domisili Penduduk','surat_domisili'),(44,6,'Surat Tidak Memiliki Ijazah','surat_ijazah'),(45,6,'Surat Bepergian','surat_bepergian'),(46,6,'Surat Suami Istri','surat_pasangan'),(47,6,'Surat Pengantar Nikah','surat_nikah'),(48,6,'Surat Kematian Pasangan','surat_kematian_pasangan'),(49,9,'Peraturan Desa','peraturan_desa'),(50,9,'Peraturan Kades','peraturan_kades'),(51,10,'Dokumen Kecamatan','dokumen_kecamatan'),(52,5,'Pindah Masuk','penduduk_masuk'),(53,5,'Lahir','penduduk_lahir'),(54,4,'No Surat','settings_surat');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
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
INSERT INTO `tbl_group_menu` VALUES (22,1,1),(23,1,2),(24,1,7),(25,1,8),(26,1,28),(27,1,33),(29,1,30),(30,1,31),(31,7,35),(32,1,36),(33,1,37),(36,8,38),(37,1,32),(38,1,39),(39,1,40),(40,1,42),(41,1,43),(42,1,44),(43,1,45),(44,1,46),(45,1,41),(46,1,47),(47,1,48),(48,1,49),(49,1,50),(50,1,51),(51,1,53),(52,1,52),(53,1,54);
/*!40000 ALTER TABLE `tbl_group_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05 17:25:56
