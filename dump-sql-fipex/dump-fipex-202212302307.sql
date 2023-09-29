-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fipex
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
-- Table structure for table `badge_inventories`
--

DROP TABLE IF EXISTS `badge_inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badge_inventories` (
  `id` varchar(100) NOT NULL,
  `badge_type` enum('platinum','gold','silver') NOT NULL DEFAULT 'silver',
  `badge_count` int(10) NOT NULL DEFAULT 100,
  `exhibition_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `badge_inventories_user_id_foreign` (`user_id`),
  KEY `badge_inventories_exhibition_id_foreign` (`exhibition_id`),
  CONSTRAINT `badge_inventories_exhibition_id_foreign` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`),
  CONSTRAINT `badge_inventories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge_inventories`
--

LOCK TABLES `badge_inventories` WRITE;
/*!40000 ALTER TABLE `badge_inventories` DISABLE KEYS */;
INSERT INTO `badge_inventories` VALUES ('khjkhkjhkhkh','platinum',2,'126112641e841e4b4415','63ad1b11d96a8','2022-12-30 05:40:17','2022-12-30 21:47:58'),('1edee407f6ab4becb4f3','platinum',10,'126112641e841e4b4415','63aa54fc12969','2022-12-27 09:21:52','2022-12-30 13:58:35'),('4dda66cf1f5169c4a263','platinum',8,'126112641e841e4b4415','63af02b2af8e3','2022-12-27 09:21:00','2022-12-30 22:31:45'),('63ae20e1557eb','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:21:05','2022-12-30 10:13:00'),('63ae20e5bebae','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:21:09','2022-12-30 10:13:00'),('63ae215228a45','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:22:58','2022-12-30 10:13:00'),('asdsadasd','platinum',9,'126112641e841e4b4415','63ae235de42f6','2022-12-30 07:05:55','2022-12-30 21:06:17'),('e69f5b9edd6685b314f9','platinum',10,'126112641e841e4b4415','63aa54e7934cd','2022-12-27 09:20:59','2022-12-30 13:59:45'),('sdasd','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:18:27','2022-12-30 10:13:00'),('sdasdasdasd','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:18:36','2022-12-30 10:13:00'),('sdasdasdasdasdadasd','platinum',59,'126112641e841e4b4415','63aa54fc12969','2022-12-30 06:19:39','2022-12-30 10:13:00');
/*!40000 ALTER TABLE `badge_inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badges_collection`
--

DROP TABLE IF EXISTS `badges_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges_collection` (
  `id` varchar(100) NOT NULL,
  `badge_type` enum('platinum','gold','silver') NOT NULL,
  `comment` varchar(255) NOT NULL,
  `exhibition_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `badges_collection_exhibition_id_foreign` (`exhibition_id`),
  KEY `badges_collection_product_id_foreign` (`product_id`),
  KEY `badges_collection_user_id_foreign` (`user_id`),
  CONSTRAINT `badges_collection_exhibition_id_foreign` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`),
  CONSTRAINT `badges_collection_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `badges_collection_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges_collection`
--

LOCK TABLES `badges_collection` WRITE;
/*!40000 ALTER TABLE `badges_collection` DISABLE KEYS */;
INSERT INTO `badges_collection` VALUES ('63ae573cd60af','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:13:00','2022-12-30 19:03:14'),('63ae5800e1054','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:16:16','2022-12-30 19:03:14'),('63ae593c64db4','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:21:32','2022-12-30 19:03:14'),('63ae59591bfc1','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:22:01','2022-12-30 19:03:14'),('63ae595c8d74c','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:22:04','2022-12-30 19:03:14'),('63ae595d97c2a','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:22:05','2022-12-30 19:03:14'),('63ae595e93661','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:22:06','2022-12-30 19:03:14'),('63ae595f9f400','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-30 10:22:07','2022-12-30 19:03:14'),('63ae63087f13c','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63ae235de42f6','2022-12-30 11:03:20','2022-12-30 19:03:14'),('63ae630a482fa','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63ae235de42f6','2022-12-30 11:03:22','2022-12-30 19:03:14'),('63ae8c7b46682','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63ae235de42f6','2022-12-30 14:00:11','2022-12-30 19:03:14'),('63ae8ccc9cd71','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63ae235de42f6','2022-12-30 14:01:32','2022-12-30 19:03:14'),('63ae8d2f3ad32','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63ae235de42f6','2022-12-30 14:03:11','2022-12-30 19:03:14'),('63aed04790b88','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:49:27','2022-12-30 19:03:14'),('63aed0506f25d','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:49:36','2022-12-30 19:03:14'),('63aed143579ed','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:53:39','2022-12-30 19:03:14'),('63aed1467e84d','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:53:42','2022-12-30 19:03:14'),('63aed1477f1d0','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:53:43','2022-12-30 19:03:14'),('63aed148b7901','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:53:44','2022-12-30 19:03:14'),('63aed14ad9828','platinum','lorem ipsum keren sekali','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 18:53:46','2022-12-30 19:03:14'),('63aef0591f173','platinum','','126112641e841e4b4415','63adba9e08dcd','63ae235de42f6','2022-12-30 21:06:17','2022-12-30 21:06:17'),('63aef30d5002c','platinum','','126112641e841e4b4415','63adba9e08dcd','63ad1b11d96a8','2022-12-30 21:17:49','2022-12-30 21:17:49'),('63aef47714903','platinum','','126112641e841e4b4415','453361d8e08311df5745','63ad1b11d96a8','2022-12-30 21:23:51','2022-12-30 21:23:51'),('63aef4923ce61','platinum','','126112641e841e4b4415','63ad04dbdfb8c1.59259719','63ad1b11d96a8','2022-12-30 21:24:18','2022-12-30 21:24:18'),('63aef4a0d620d','platinum','','126112641e841e4b4415','63ae1e4165aac','63ad1b11d96a8','2022-12-30 21:24:32','2022-12-30 21:24:32'),('63aef4a91fc8e','platinum','','126112641e841e4b4415','63ae1e5962778','63ad1b11d96a8','2022-12-30 21:24:41','2022-12-30 21:24:41'),('63aef4d822583','platinum','','126112641e841e4b4415','prd63ad03e711d11','63ad1b11d96a8','2022-12-30 21:25:28','2022-12-30 21:25:28'),('63aef9f6a2378','platinum','','126112641e841e4b4415','ec7f7eed8678e1d66661','63ad1b11d96a8','2022-12-30 21:47:18','2022-12-30 21:47:18'),('63af041aaac70','platinum','','126112641e841e4b4415','ec7f7eed8678e1d66661','63af02b2af8e3','2022-12-30 22:30:34','2022-12-30 22:30:34'),('63af046163bf8','platinum','amazing ????','126112641e841e4b4415','63ae1e4165aac','63af02b2af8e3','2022-12-30 22:31:45','2022-12-30 22:31:45'),('asd','platinum','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-30 08:44:32','2022-12-30 19:03:14'),('asdasd','platinum','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-30 08:46:39','2022-12-30 19:03:14'),('asdasdasd','platinum','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-30 08:46:04','2022-12-30 19:03:14'),('asdsadsadasdasd','gold','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54fc12969','2022-12-27 20:23:02','2022-12-30 19:03:14'),('c4c731c369a36d2ec045','silver','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-27 09:19:54','2022-12-30 19:03:14'),('dgdfgdfgd','gold','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-27 20:29:02','2022-12-30 19:03:14'),('e804e827d5e79ebf2220','platinum','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-30 08:49:19','2022-12-30 19:03:14'),('fe29e10fc20192d78c9e','platinum','lorem ipsum keren sekali','126112641e841e4b4415','453361d8e08311df5745','63aa54e7934cd','2022-12-27 09:19:26','2022-12-30 19:03:14');
/*!40000 ALTER TABLE `badges_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` varchar(100) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `exhibition_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categories_exhibition_id_foreign` (`exhibition_id`),
  CONSTRAINT `categories_exhibition_id_foreign` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('df21ef424e0af66169a1','web programming','126112641e841e4b4415','2022-12-27 09:13:14','2022-12-27 09:13:14'),('e9da6faaef0bb8f63a21','UI x UX','126112641e841e4b4415','2022-12-27 09:13:30','2022-12-27 09:13:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitions`
--

DROP TABLE IF EXISTS `exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibitions` (
  `id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `scoring_start` datetime DEFAULT NULL,
  `scoring_end` datetime DEFAULT NULL,
  `register_start` datetime DEFAULT NULL,
  `register_end` datetime DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions`
--

LOCK TABLES `exhibitions` WRITE;
/*!40000 ALTER TABLE `exhibitions` DISABLE KEYS */;
INSERT INTO `exhibitions` VALUES ('126112641e841e4b4415','Ms.','officia','2018-03-29 13:34:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','https://janessa.name','2022-12-27 09:12:10','2022-12-27 09:12:10');
/*!40000 ALTER TABLE `exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_books`
--

DROP TABLE IF EXISTS `guest_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_books` (
  `id` varchar(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `exhibition_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `guest_books_user_id_foreign` (`user_id`),
  CONSTRAINT `guest_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_books`
--

LOCK TABLES `guest_books` WRITE;
/*!40000 ALTER TABLE `guest_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (200,'2022-04-23-115226','\\AddUser','default','App',1672107000,1),(201,'2022-12-13-145222','App\\Database\\Migrations\\Products','default','App',1672107001,1),(202,'2022-12-14-091647','App\\Database\\Migrations\\AddGuestBook','default','App',1672107001,1),(203,'2022-12-14-091837','App\\Database\\Migrations\\AddCategories','default','App',1672107002,1),(204,'2022-12-14-092212','App\\Database\\Migrations\\BadgesCollection','default','App',1672107003,1),(205,'2022-12-14-092726','App\\Database\\Migrations\\AddExhibitions','default','App',1672107004,1),(206,'2022-12-14-093555','App\\Database\\Migrations\\AddBadgeInventories','default','App',1672107005,1),(207,'2022-12-24-135010','App\\Database\\Migrations\\AddCategoriesAndForeignkey','default','App',1672107020,1),(208,'2022-12-24-135343','App\\Database\\Migrations\\AddBadgeCollectionWithForeignKey','default','App',1672107022,1),(209,'2022-12-25-041412','App\\Database\\Migrations\\AddProductAndFullyForeignKeys','default','App',1672107022,1),(210,'2022-12-25-041413','App\\Database\\Migrations\\AddProductThumbnails','default','App',1672107022,1),(211,'2022-12-25-042048','App\\Database\\Migrations\\BadgeCollectionsAndFullyForeignKeys','default','App',1672107022,1),(212,'2022-12-25-042049','App\\Database\\Migrations\\AddProductMembers','default','App',1672107022,1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_members`
--

DROP TABLE IF EXISTS `product_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_members` (
  `id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `product_members_product_id_foreign` (`product_id`),
  KEY `product_members_user_id_foreign` (`user_id`),
  CONSTRAINT `product_members_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_members`
--

LOCK TABLES `product_members` WRITE;
/*!40000 ALTER TABLE `product_members` DISABLE KEYS */;
INSERT INTO `product_members` VALUES ('254aec4d8a498d5b1d59','453361d8e08311df5745','63aa54e7934cd','2022-12-27 10:04:12','2022-12-27 10:04:12'),('3ea3c3828bd78ed28acc','453361d8e08311df5745','63aa54fc12969','2022-12-27 10:02:42','2022-12-27 10:02:42');
/*!40000 ALTER TABLE `product_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_thumbnails`
--

DROP TABLE IF EXISTS `product_thumbnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_thumbnails` (
  `id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `product_thumbnails_product_id_foreign` (`product_id`),
  CONSTRAINT `product_thumbnails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_thumbnails`
--

LOCK TABLES `product_thumbnails` WRITE;
/*!40000 ALTER TABLE `product_thumbnails` DISABLE KEYS */;
INSERT INTO `product_thumbnails` VALUES ('19bc253e2d4975225835','453361d8e08311df5745','data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20baseProfile%3D%22full%22%20width%3D%22undefined%22%20height%3D%22undefined%22%3E%3Crect%20width%3D%22100%25%22%20height%3D%22100%25%22%20f','2022-12-27 09:17:40','2022-12-27 09:17:40'),('205d20156c733ba22d7d','453361d8e08311df5745','data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20baseProfile%3D%22full%22%20width%3D%22undefined%22%20height%3D%22undefined%22%3E%3Crect%20width%3D%22100%25%22%20height%3D%22100%25%22%20f','2022-12-27 09:17:39','2022-12-27 09:17:39'),('b90659d2b8cf2ca0d751','453361d8e08311df5745','data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20baseProfile%3D%22full%22%20width%3D%22undefined%22%20height%3D%22undefined%22%3E%3Crect%20width%3D%22100%25%22%20height%3D%22100%25%22%20f','2022-12-27 09:17:35','2022-12-27 09:17:35');
/*!40000 ALTER TABLE `product_thumbnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total_points` int(11) unsigned NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `exhibition_id` varchar(100) NOT NULL,
  `author_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `products_author_id_foreign` (`author_id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_exhibition_id_foreign` (`exhibition_id`),
  CONSTRAINT `products_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_exhibition_id_foreign` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('','unique valie','this super apps',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-30 06:07:24','2022-12-30 06:07:24'),('453361d8e08311df5745','my website super cool','yes, this website cocok for cuaca cold, hehe',100,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-27 09:16:40','2022-12-29 23:11:56'),('63ad04dbdfb8c1.59259719','web design',NULL,0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-29 10:09:15','2022-12-29 13:37:58'),('63adba9e08dcd','unique name','this super apps',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-29 23:04:46','2022-12-29 23:04:46'),('63ae1e4165aac','unique asdvalie','this super apps',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-30 06:09:53','2022-12-30 06:09:53'),('63ae1e5962778','unique sdasdvalie','this super apps',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-30 06:10:17','2022-12-30 06:10:17'),('9b8b6996b1616a07f352','my name is beaty','this super apps',100,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-29 22:24:49','2022-12-29 22:24:49'),('ec7f7eed8678e1d66661','team name','this super apps',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-29 22:25:12','2022-12-29 22:25:12'),('prd63ad03e711d11','machine learning','update',0,'e9da6faaef0bb8f63a21','126112641e841e4b4415','63aa54fc12969','2022-12-29 10:05:11','2022-12-29 19:54:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_temporary` tinyint(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('63aa54e7934cd','zulkarnen@gmail.com','supersecret','zulkarnen',0,'/users/zulkarnen.jpg','i\'am work in Braun Inc','2022-12-27 09:13:59','2022-12-29 09:05:15'),('63aa54fc12969','hilda@gmail.com','$2y$10$hZeeWznPMlTHbRSU.mWDIeCzoKiyRI/eCusXaxynf7OYXmomyNCuG','hilda is',0,'/images/users/2912200-hildais.png','i\'am engginer, trust me anjay','2022-12-27 09:14:20','2022-12-29 22:39:29'),('63abe353c1668','asu@gmail.com','$2y$10$BG5AbHIYkkowFG9OpDM/ue.RD8zETTyG8J6l2Q66Vv2d2O3FwfLlS','test',0,NULL,NULL,'2022-12-28 13:33:55','2022-12-28 18:39:21'),('63ac0722b4e82','asdsad@gmail.com','$2y$10$9wDwUJOUeB97VJGss9IR0eNqOHuoON75ZqG9hvQpBJIIfmfgckNz6','maliq',0,NULL,NULL,'2022-12-28 16:06:42','2022-12-28 16:06:42'),('63ac076fcb722','nknkl@gmail.com','$2y$10$Y.OqmtNk06w7/d7IF4T75eXy.5MH90ozL2piK24swvnFMB4W9/sZW','maliq',0,NULL,NULL,'2022-12-28 16:07:59','2022-12-28 16:07:59'),('63ac082896feb','dfdsfsdfsd@gmail.com','$2y$10$bgdgd4hk16ce4yGaFaGKVuEX1RCpLLO69FnEir3gsVgbjF2JdVIwu','maliq',0,NULL,NULL,'2022-12-28 16:11:04','2022-12-28 16:11:04'),('63ac085d554d0','dfdsfsdfsda@gmail.com','$2y$10$TNapSnVsejmnstq2gYoJNu8/QK.LwH3FAzd20GDJNXg1OfOgcys0K','maliq',0,NULL,NULL,'2022-12-28 16:11:57','2022-12-28 16:11:57'),('63ac08892a94e','asdsadas@gmail.com','$2y$10$G0UFfbhjqr.6bm9jUCNh..1jWW2LhRG8crEen61hw9SM4UHHeYOp.','maliq',0,NULL,NULL,'2022-12-28 16:12:41','2022-12-28 16:12:41'),('63ac08b9385a8','asdas@gmail.com','$2y$10$uNeCI6cgWkrc5OchE97bmu4d1lU3rTQP1BuNDJ5OFjJidcOK1CmUe','maliq',0,NULL,NULL,'2022-12-28 16:13:29','2022-12-28 16:13:29'),('63ac08dc09edc','asdasasd@gmail.com','$2y$10$niqkDt5TI3NoYUCfS/Cl0.0VO7DqHAq5ArVkUmFWDMZ1OiEB.a0iO','maliq',0,NULL,NULL,'2022-12-28 16:14:04','2022-12-28 16:14:04'),('63ac08df53a23','asdasasds@gmail.com','$2y$10$YsFtzyRXnoTpXSGKBYvdtewEwdivu0NloIQ8G1LF23qI5ipl/3o6q','maliq',0,NULL,NULL,'2022-12-28 16:14:07','2022-12-28 16:14:07'),('63ac08fece166','asdasasdsa@gmail.com','$2y$10$torYCORtEapfcYgjzOfh4.NTK4dLZo7DYUA35W.1AJ0c0cmkUIgLO','maliq',0,NULL,NULL,'2022-12-28 16:14:38','2022-12-28 16:14:38'),('63ac0956270ce','asdasasdsasa@gmail.com','$2y$10$iiihcMPPtnaY0jCOIuBuTuS4RnThRU3vcqZTSk7An2NbvLHU6zbCu','maliq',0,NULL,NULL,'2022-12-28 16:16:06','2022-12-28 16:16:06'),('63ac0fc2631d0','mails@gmail.com','$2y$10$TpU/FoBoGUeiT8UC8oXwjOC1fCuDeRTTsJKSRTipnVpgEYZXUWgnm','maliq',0,NULL,NULL,'2022-12-28 16:43:30','2022-12-28 16:43:30'),('63acf3107b731','dzaki_m@gmail.com','$2y$10$AJ5QegqNyzp3Y84hqTBiJu.6DEYX/vFVoUpJLPw3dSLxaLVkL21VS','dzaki malik',0,NULL,'i\'am work in Leuschke Inc','2022-12-29 08:53:20','2022-12-29 09:09:02'),('63ad1b11d96a8','zul@gmail.com','$2y$10$3VIG/cQ4.3ylX37X9NMXOukIrJschdb5ZBx77dra7yHrtSZVauX4G','zul',0,NULL,NULL,'2022-12-29 11:44:01','2022-12-29 11:44:01'),('63ae235de42f6','test@gmail.com','$2y$10$1wF6CVdy8S8ZMe46E88T7Oj4h8RbjuBUEsgRyJYDJMpv4BDlOqxUi','test',0,NULL,'test bio Curabitur blandit tempus ardua ridiculus sed magna.','2022-12-30 06:31:42','2022-12-30 06:31:42'),('63af02b2af8e3','aku@gmail.com','$2y$10$nOLoCOjBRzcnwlMwfd/9yeM8zGGiwEXzMCm635WGgXuiAsEu.mM26','aku',0,NULL,'test bio Curabitur blandit tempus ardua ridiculus sed magna.','2022-12-30 22:24:34','2022-12-30 22:24:34'),('adasd','test@email','psw','zulkarne',1,NULL,NULL,'2022-12-30 06:54:03','2022-12-30 06:54:03'),('adsad','a@email','pasdasdadsw','zulkarne',1,NULL,NULL,'2022-12-30 07:05:40','2022-12-30 07:05:40'),('asdasdasd','asdasdasd@email','asdasdads','Zulkeurnanon',1,NULL,NULL,'2022-12-30 07:09:34','2022-12-30 07:09:34'),('asdasdasdasdasd','asdasdasdasd@email','asdasadas','Zulkasdsadasdeurnanon',1,NULL,NULL,'2022-12-30 07:10:11','2022-12-30 07:10:11'),('dc5b791109e30d2d1f9f','zulkarnen','password','',0,NULL,NULL,'2022-12-28 13:48:56','2022-12-28 13:48:56'),('primarykey','mysuperemail@email','newpassword','zulkarnen',1,NULL,NULL,'2022-12-30 07:08:49','2022-12-30 07:08:49'),('uniqajsdkjas','asd@email','dsa','ads',1,NULL,NULL,'2022-12-30 07:12:28','2022-12-30 07:12:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fipex'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-30 23:07:01
