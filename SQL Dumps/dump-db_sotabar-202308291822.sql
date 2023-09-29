-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sotabar
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `districts_id_index` (`regency_id`),
  CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queryku`
--

DROP TABLE IF EXISTS `queryku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queryku` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `query` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ref_jenis_usaha`
--

DROP TABLE IF EXISTS `ref_jenis_usaha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_jenis_usaha` (
  `usaha_id` int(2) NOT NULL AUTO_INCREMENT,
  `usaha_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usaha_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ref_jenis_yayasan`
--

DROP TABLE IF EXISTS `ref_jenis_yayasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_jenis_yayasan` (
  `yayasan_id` int(4) NOT NULL AUTO_INCREMENT,
  `yayasan_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`yayasan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regencies`
--

DROP TABLE IF EXISTS `regencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regencies_province_id_index` (`province_id`),
  CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_artikel`
--

DROP TABLE IF EXISTS `tbl_artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_group`
--

DROP TABLE IF EXISTS `tbl_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `dashboard` enum('Admin','User','Penduduk') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_kk`
--

DROP TABLE IF EXISTS `tbl_kk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kk` (
  `id_kk` int(11) NOT NULL AUTO_INCREMENT,
  `no_kk` varchar(30) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `dusun` int(11) DEFAULT NULL,
  `rt` int(11) DEFAULT NULL,
  `rw` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kk`),
  KEY `no_kk_key` (`no_kk`)
) ENGINE=InnoDB AUTO_INCREMENT=1452 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_kk_detail`
--

DROP TABLE IF EXISTS `tbl_kk_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kk_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kk` int(11) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `hub_keluarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `kk_detail_relation` (`id_kk`,`id_penduduk`,`hub_keluarga`)
) ENGINE=InnoDB AUTO_INCREMENT=4328 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_menu_kategori`
--

DROP TABLE IF EXISTS `tbl_menu_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_penduduk`
--

DROP TABLE IF EXISTS `tbl_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_penduduk` (
  `id_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `agama` int(11) DEFAULT NULL,
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` text DEFAULT NULL,
  `gol_darah` int(11) DEFAULT NULL,
  `status_nikah` int(11) DEFAULT 7,
  `hub_keluarga` varchar(2) DEFAULT NULL,
  `status_kb` varchar(100) DEFAULT NULL,
  `status_dtks` varchar(100) DEFAULT '2',
  `status_dpt` varchar(100) DEFAULT '2',
  `pendidikan` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `warga_negara` varchar(10) DEFAULT NULL,
  `no_paspor` varchar(30) DEFAULT NULL,
  `no_kitas` varchar(30) DEFAULT NULL,
  `nik_ayah` varchar(30) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nik_ibu` varchar(30) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `dusun` int(11) DEFAULT NULL,
  `rt` int(11) DEFAULT NULL,
  `rw` int(11) DEFAULT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_dasar` int(11) DEFAULT 1,
  `tgl_pindah_masuk` date DEFAULT NULL,
  `jenis_kb` int(11) DEFAULT NULL,
  `jenis_tambah` int(11) DEFAULT 1,
  `pendidikan_kk` int(11) DEFAULT NULL,
  `pekerjaan_kk` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `is_validate` tinyint(4) DEFAULT 0,
  `bantuan` varbinary(256) DEFAULT NULL,
  `status_bantuan` tinyint(4) DEFAULT NULL COMMENT '"" => "", "1" => "Program Keluarga Harapan (PKH)", "2" => "Bantuan pangan non Tunai (BPNT)", "3" => "Bantuan Sembako pangan (BSP)", "4" => "Bantuan Sosial Tunai (BST)", "5" => "Bantuan Langsung Tunai (BLT-DD)", "6" => "Bantuan UMKM", "7" => "Kartu Prakerja", "8" => "Bansos kabupaten/kota", "9" => "Subsidi Listrik"',
  PRIMARY KEY (`id_penduduk`),
  KEY `status_dasar_p` (`status_dasar`),
  KEY `nik_p` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=4330 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_penduduk_old`
--

DROP TABLE IF EXISTS `tbl_penduduk_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_penduduk_old` (
  `id_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL COMMENT '1: Pria, 2: Wanita',
  `agama` int(2) DEFAULT NULL COMMENT '1: Islam 2: Kristen Katolik 3: Kristen Protestan 4: Hindu 5: Buddha 6: Konghucu',
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gol_darah` int(2) DEFAULT NULL COMMENT '1: A 2: AB 3: O 4: B',
  `status_nikah` int(2) DEFAULT NULL COMMENT '1: Kawin 2: Belum Kawin 3: Janda 4: Duda',
  `hub_keluarga` int(2) DEFAULT NULL COMMENT '1: Kepala Keluarga 2: Suami 3: Istri 4: Anak Kandung 5: Anak Angkat 6: Pembantu',
  `status_kb` int(1) DEFAULT NULL COMMENT '1: PIL 2: IUD 3: Suntik 4: Kondom 5: Susuk KB',
  `status_dtks` int(1) DEFAULT NULL COMMENT '''''=>''Semua'',''1''=>''Ya'',''2''=>''Tidak''',
  `status_dpt` int(1) DEFAULT NULL COMMENT '''''=>''Semua'',''1''=>''Ya'',''2''=>''Tidak''',
  `pendidikan` int(2) DEFAULT NULL COMMENT '1: PAUD/TK, 2: SD/MI, 3: SMP/MTs, 4: SMA/MA, 5: D1, 6: D2, 7: D3, 8: D4, 9: S1, 10: S2, 11: S3, 12: Tidak Sekolah, 13: Belum Sekolah, 14: Pondok Pesantren,',
  `pekerjaan` int(2) DEFAULT NULL COMMENT '1: Karyawan Swasta, 2: ASN/PNS, 3: TNI/POLRI, 4: Wiraswasta/Pedagang, 5: Petani,',
  `warga_negara` varchar(10) DEFAULT NULL COMMENT 'WNI, WNA',
  `no_paspor` varchar(30) DEFAULT NULL,
  `no_kitas` varchar(30) DEFAULT NULL,
  `nik_ayah` varchar(30) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nik_ibu` varchar(30) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `dusun` int(2) DEFAULT NULL,
  `rt` int(2) DEFAULT NULL,
  `rw` int(2) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `status_dasar` int(2) DEFAULT 1,
  `tgl_pindah_masuk` date DEFAULT NULL,
  `jenis_kb` int(2) DEFAULT NULL COMMENT '1: PIL, 2: IUD, 3: Suntik, 4: Kondom, 5: Susuk KB,',
  `jenis_tambah` int(1) DEFAULT 1 COMMENT '''1''=>''Penduduk Lahir'',''2''=>''Penduduk Masuk''',
  `pendidikan_kk` int(2) DEFAULT NULL,
  `pekerjaan_kk` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `is_validate` tinyint(4) DEFAULT 0,
  `bantuan` varbinary(256) DEFAULT NULL,
  PRIMARY KEY (`id_penduduk`),
  KEY `nik_p` (`nik`),
  KEY `status_dasar_p` (`status_dasar`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_peraturan_desa`
--

DROP TABLE IF EXISTS `tbl_peraturan_desa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_peraturan_desa` (
  `peraturan_id` int(4) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `uraian_singkat` varchar(200) DEFAULT NULL,
  `file_peraturan` varchar(100) DEFAULT NULL,
  `jenis_peraturan` int(4) DEFAULT NULL,
  `no_peraturan` varchar(30) DEFAULT NULL,
  `tgl_ditetapkan` date DEFAULT NULL,
  `tgl_kesepakatan` date DEFAULT NULL,
  PRIMARY KEY (`peraturan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_peraturan_kades`
--

DROP TABLE IF EXISTS `tbl_peraturan_kades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_peraturan_kades` (
  `peraturan_id` int(4) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `uraian_singkat` varchar(200) DEFAULT NULL,
  `file_peraturan` varchar(100) DEFAULT NULL,
  `no_peraturan` varchar(30) DEFAULT NULL,
  `tgl_ditetapkan` date DEFAULT NULL,
  `tgl_kesepakatan` date DEFAULT NULL,
  PRIMARY KEY (`peraturan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_peristiwa_kematian`
--

DROP TABLE IF EXISTS `tbl_peristiwa_kematian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_peristiwa_kematian` (
  `id_peristiwa` int(11) NOT NULL AUTO_INCREMENT,
  `id_penduduk` int(11) DEFAULT NULL,
  `tgl_peristiwa` date DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `tmp_meninggal` varchar(100) DEFAULT NULL,
  `penyebab_kematian` int(2) DEFAULT NULL,
  `keterangan` tinytext DEFAULT NULL,
  PRIMARY KEY (`id_peristiwa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_peristiwa_pindah`
--

DROP TABLE IF EXISTS `tbl_peristiwa_pindah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_peristiwa_pindah` (
  `id_peristiwa` int(11) NOT NULL AUTO_INCREMENT,
  `id_penduduk` int(11) DEFAULT NULL,
  `tgl_peristiwa` date DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `tujuan_pindah` int(2) DEFAULT NULL,
  `alamat_tujuan` varchar(200) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_peristiwa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_profil_desa`
--

DROP TABLE IF EXISTS `tbl_profil_desa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_profil_desa` (
  `id_profil` int(2) NOT NULL AUTO_INCREMENT,
  `id_desa` char(10) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `kode_desa` varchar(20) DEFAULT NULL,
  `nama_kades` varchar(50) DEFAULT NULL,
  `nip_kades` varchar(30) DEFAULT NULL,
  `alamat_desa` varchar(200) DEFAULT NULL,
  `nip_camat` varchar(20) DEFAULT NULL,
  `nama_camat` varchar(100) DEFAULT NULL,
  `kode_kecamatan` varchar(30) DEFAULT NULL,
  `no_telp` varchar(30) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto_desa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_range_umur`
--

DROP TABLE IF EXISTS `tbl_range_umur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_range_umur` (
  `rangeId` int(2) NOT NULL AUTO_INCREMENT,
  `rangeNama` varchar(50) DEFAULT NULL,
  `rangeAwal` int(2) DEFAULT NULL,
  `rangeAkhir` int(2) DEFAULT NULL,
  PRIMARY KEY (`rangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_agama`
--

DROP TABLE IF EXISTS `tbl_ref_agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_agama` (
  `id_agama` int(2) NOT NULL AUTO_INCREMENT,
  `nama_agama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_dusun`
--

DROP TABLE IF EXISTS `tbl_ref_dusun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_dusun` (
  `dusun_id` int(2) NOT NULL AUTO_INCREMENT,
  `dusun_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dusun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_gol_darah`
--

DROP TABLE IF EXISTS `tbl_ref_gol_darah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_gol_darah` (
  `gol_id` int(2) NOT NULL AUTO_INCREMENT,
  `gol_nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_hub_keluarga`
--

DROP TABLE IF EXISTS `tbl_ref_hub_keluarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_hub_keluarga` (
  `hub_id` int(2) NOT NULL AUTO_INCREMENT,
  `hub_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`hub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_jenis_dokumen`
--

DROP TABLE IF EXISTS `tbl_ref_jenis_dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_jenis_dokumen` (
  `jenis_id` int(2) NOT NULL AUTO_INCREMENT,
  `jenis_nama` varchar(50) DEFAULT NULL,
  `folder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jenis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_jenis_peraturan`
--

DROP TABLE IF EXISTS `tbl_ref_jenis_peraturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_jenis_peraturan` (
  `jenisId` int(2) NOT NULL AUTO_INCREMENT,
  `jenisNama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`jenisId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_kb`
--

DROP TABLE IF EXISTS `tbl_ref_kb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_kb` (
  `kb_id` int(2) NOT NULL AUTO_INCREMENT,
  `kb_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_nikah`
--

DROP TABLE IF EXISTS `tbl_ref_nikah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_nikah` (
  `nikah_id` int(2) NOT NULL AUTO_INCREMENT,
  `nikah_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nikah_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_pejabat`
--

DROP TABLE IF EXISTS `tbl_ref_pejabat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_pejabat` (
  `id_pejabat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pejabat` varchar(255) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama_jabatan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pejabat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_pekerjaan`
--

DROP TABLE IF EXISTS `tbl_ref_pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_pekerjaan` (
  `pekerjaan_id` int(2) NOT NULL AUTO_INCREMENT,
  `pekerjaan_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pekerjaan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_pembantu_penghulu`
--

DROP TABLE IF EXISTS `tbl_ref_pembantu_penghulu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_pembantu_penghulu` (
  `pembantu_id` int(4) NOT NULL AUTO_INCREMENT,
  `pembantu_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pembantu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_pendidikan`
--

DROP TABLE IF EXISTS `tbl_ref_pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_pendidikan` (
  `pendidikan_id` int(2) NOT NULL AUTO_INCREMENT,
  `pendidikan_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pendidikan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_rt`
--

DROP TABLE IF EXISTS `tbl_ref_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_rt` (
  `rt_id` int(2) NOT NULL AUTO_INCREMENT,
  `rt_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_rw`
--

DROP TABLE IF EXISTS `tbl_ref_rw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_rw` (
  `rw_id` int(2) NOT NULL AUTO_INCREMENT,
  `rw_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_sebab_mati`
--

DROP TABLE IF EXISTS `tbl_ref_sebab_mati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_sebab_mati` (
  `id_sebab` int(2) NOT NULL AUTO_INCREMENT,
  `nama_sebab` varchar(30) DEFAULT NULL,
  KEY `id_sebab` (`id_sebab`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_status_dasar`
--

DROP TABLE IF EXISTS `tbl_ref_status_dasar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_status_dasar` (
  `status_id` int(1) NOT NULL AUTO_INCREMENT,
  `status_nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_status_dokumen`
--

DROP TABLE IF EXISTS `tbl_ref_status_dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_status_dokumen` (
  `status_id` int(2) NOT NULL AUTO_INCREMENT,
  `status_nama` varchar(30) DEFAULT NULL,
  `status_style` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ref_tujuan_pindah`
--

DROP TABLE IF EXISTS `tbl_ref_tujuan_pindah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ref_tujuan_pindah` (
  `tujuan_id` int(2) NOT NULL AUTO_INCREMENT,
  `tujuan_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tujuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_anak_angkat`
--

DROP TABLE IF EXISTS `tbl_suket_anak_angkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_anak_angkat` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `id_wali` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_bepergian`
--

DROP TABLE IF EXISTS `tbl_suket_bepergian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_bepergian` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `id_desa_tujuan` char(10) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_bepergian_anggota`
--

DROP TABLE IF EXISTS `tbl_suket_bepergian_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_bepergian_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suket_id` int(11) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_domisili`
--

DROP TABLE IF EXISTS `tbl_suket_domisili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_domisili` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_kelahiran`
--

DROP TABLE IF EXISTS `tbl_suket_kelahiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_kelahiran` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varbinary(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `nama_anak` varchar(50) DEFAULT NULL,
  `gender_anak` int(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `id_anak` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `id_ibu` int(11) DEFAULT NULL,
  `id_ayah` int(11) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_kelakuan_baik`
--

DROP TABLE IF EXISTS `tbl_suket_kelakuan_baik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_kelakuan_baik` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_kematian`
--

DROP TABLE IF EXISTS `tbl_suket_kematian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_kematian` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `tgl_peristiwa` date DEFAULT NULL,
  `sebab_wafat` int(2) DEFAULT NULL,
  `tempat_wafat` varchar(50) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_kematian_pasangan`
--

DROP TABLE IF EXISTS `tbl_suket_kematian_pasangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_kematian_pasangan` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `id_pasangan` int(11) DEFAULT NULL,
  `tgl_peristiwa` date DEFAULT NULL,
  `tempat_wafat` varchar(50) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_nikah`
--

DROP TABLE IF EXISTS `tbl_suket_nikah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_nikah` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `status_penduduk` varchar(10) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `nama_suami` varchar(100) DEFAULT NULL,
  `bin_suami` varchar(100) DEFAULT NULL,
  `pekerjaan_suami` int(11) DEFAULT NULL,
  `status_nikah_suami` varchar(10) DEFAULT NULL,
  `tmp_lahir_suami` varchar(50) DEFAULT NULL,
  `tgl_lahir_suami` date DEFAULT NULL,
  `warga_negara_suami` varchar(10) DEFAULT NULL,
  `agama_suami` int(11) DEFAULT NULL,
  `alamat_suami` varchar(100) DEFAULT NULL,
  `nik_istri` varchar(20) DEFAULT NULL,
  `nama_istri` varchar(100) DEFAULT NULL,
  `bin_istri` varchar(100) DEFAULT NULL,
  `pekerjaan_istri` int(11) DEFAULT NULL,
  `status_nikah_istri` varchar(10) DEFAULT NULL,
  `tmp_lahir_istri` varchar(50) DEFAULT NULL,
  `tgl_lahir_istri` date DEFAULT NULL,
  `warga_negara_istri` varchar(10) DEFAULT NULL,
  `agama_istri` int(11) DEFAULT NULL,
  `alamat_istri` varchar(100) DEFAULT NULL,
  `id_ayah` int(11) DEFAULT NULL,
  `id_ibu` int(11) DEFAULT NULL,
  `bin_ayah` varchar(100) DEFAULT NULL,
  `bin_ibu` varchar(100) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_pasangan`
--

DROP TABLE IF EXISTS `tbl_suket_pasangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_pasangan` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `id_pasangan` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_tidak_mampu`
--

DROP TABLE IF EXISTS `tbl_suket_tidak_mampu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_tidak_mampu` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_tidak_punya_ijazah`
--

DROP TABLE IF EXISTS `tbl_suket_tidak_punya_ijazah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_tidak_punya_ijazah` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `pembantu_penghulu` int(4) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_usaha`
--

DROP TABLE IF EXISTS `tbl_suket_usaha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_usaha` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `nama_usaha` varchar(50) DEFAULT NULL,
  `jenis_usaha` int(2) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `lama_usaha` int(4) DEFAULT NULL,
  `alamat_usaha` varchar(20) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_suket_yayasan`
--

DROP TABLE IF EXISTS `tbl_suket_yayasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_suket_yayasan` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` varchar(5) DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `nama_yayasan` varchar(50) DEFAULT NULL,
  `jenis_yayasan` int(2) DEFAULT NULL,
  `sk_kehakiman` varchar(50) DEFAULT NULL,
  `status_tanah` varchar(30) DEFAULT NULL,
  `telp_yayasan` varchar(30) DEFAULT NULL,
  `alamat_yayasan` varchar(100) DEFAULT NULL,
  `status_tte` int(2) DEFAULT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ttd_dokumen`
--

DROP TABLE IF EXISTS `tbl_ttd_dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ttd_dokumen` (
  `dokumen_id` int(11) NOT NULL AUTO_INCREMENT,
  `dokumen_id_penduduk` int(11) DEFAULT NULL,
  `dokumen_id_jenis` int(2) DEFAULT NULL,
  `dokumen_id_pejabat` int(11) DEFAULT NULL,
  `dokumen_filename` varchar(200) DEFAULT NULL,
  `dokumen_filename_signed` varchar(200) DEFAULT NULL,
  `dokumen_status` int(2) DEFAULT NULL,
  `dokumen_tgl_pengajuan` datetime DEFAULT NULL,
  `dokumen_tgl_pengesahan` datetime DEFAULT NULL,
  `dokumen_kord_x` decimal(10,2) DEFAULT NULL,
  `dokumen_kord_y` decimal(10,2) DEFAULT NULL,
  `dokumen_page` int(2) DEFAULT NULL,
  `dokumen_status_tte` int(1) DEFAULT 1 COMMENT '1 : aktif 2 : tidak aktif',
  `dokumen_status_tte_kecamatan` int(1) DEFAULT 0,
  PRIMARY KEY (`dokumen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_ttd_dokumen_log`
--

DROP TABLE IF EXISTS `tbl_ttd_dokumen_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ttd_dokumen_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_dokumen_id` int(11) DEFAULT NULL,
  `log_tanggal` datetime DEFAULT NULL,
  `log_pesan` text DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) DEFAULT NULL,
  `id_gerai` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_group` (`id_group`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `tbl_group` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user_log`
--

DROP TABLE IF EXISTS `tbl_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_userId` int(4) DEFAULT NULL,
  `log_username` varchar(50) DEFAULT NULL,
  `log_isi` varchar(100) DEFAULT NULL,
  `log_tanggal` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user_pejabat`
--

DROP TABLE IF EXISTS `tbl_user_pejabat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_pejabat` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pejabat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user_penduduk`
--

DROP TABLE IF EXISTS `tbl_user_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_penduduk` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `villages`
--

DROP TABLE IF EXISTS `villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villages` (
  `id` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `villages_district_id_index` (`district_id`),
  CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'db_sotabar'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 18:22:42
