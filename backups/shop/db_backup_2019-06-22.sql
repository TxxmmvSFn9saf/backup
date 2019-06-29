-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: iva
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.19.04.1

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
-- Table structure for table `bracelets`
--

DROP TABLE IF EXISTS `bracelets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bracelets` (
  `bracelet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bracelet_name` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bracelet_price` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bracelet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bracelets`
--

LOCK TABLES `bracelets` WRITE;
/*!40000 ALTER TABLE `bracelets` DISABLE KEYS */;
INSERT INTO `bracelets` VALUES (2,'1102logo.ico','12000',0,'braclet',NULL,NULL);
/*!40000 ALTER TABLE `bracelets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'test','test','2019-02-15 16:39:54',NULL),(2,'a','a','2019-02-17 15:14:47',NULL),(3,'a','a','2019-02-17 16:28:41',NULL),(4,'saf','saf','2019-06-09 17:12:58',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earrings`
--

DROP TABLE IF EXISTS `earrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `earrings` (
  `earring_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `earring_name` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `earring_price` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`earring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earrings`
--

LOCK TABLES `earrings` WRITE;
/*!40000 ALTER TABLE `earrings` DISABLE KEYS */;
INSERT INTO `earrings` VALUES (2,'8484logo.png','0',1,'earing',NULL,NULL);
/*!40000 ALTER TABLE `earrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (22,'2014_10_12_000000_create_users_table',1),(23,'2014_10_12_100000_create_password_resets_table',1),(24,'2018_06_14_082724_create_rings_table',1),(25,'2018_06_14_090400_create_necklaces_table',1),(26,'2018_06_14_090454_create_earrings_table',1),(27,'2018_06_14_090610_create_bracelets_table',1),(28,'2019_02_17_194916_create_menus_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `necklaces`
--

DROP TABLE IF EXISTS `necklaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `necklaces` (
  `necklace_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `necklace_name` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `necklace_price` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`necklace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `necklaces`
--

LOCK TABLES `necklaces` WRITE;
/*!40000 ALTER TABLE `necklaces` DISABLE KEYS */;
INSERT INTO `necklaces` VALUES (2,'7554logo.ico','1222',1,'necklace',NULL,NULL);
/*!40000 ALTER TABLE `necklaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rings`
--

DROP TABLE IF EXISTS `rings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rings` (
  `ring_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ring_name` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ring_price` varchar(169) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rings`
--

LOCK TABLES `rings` WRITE;
/*!40000 ALTER TABLE `rings` DISABLE KEYS */;
INSERT INTO `rings` VALUES (5,'3293mfd-aura_3.jpg','30000',0,'.item div.item div.item div.item div.item div.item div.item div.item div',NULL,NULL),(7,'4936mfd-aura_3.jpg','022',0,'table-responsive-sm table-respo sa fsa saf nsive-smtable-responsive-smtable-responsive-smtable-responsive-smtable-responsive-sm  table-responsive-sm table-respo sa fsa saf nsive-smtable-responsive-smtable-responsive-smtable-responsive-smtable-responsive-sm',NULL,NULL),(8,'1822mfd-aura_3.jpg','1',0,'a',NULL,NULL),(9,'3958mfd-aura_3.jpg','0',1,'1',NULL,NULL),(10,'3486mfd-aura_3.jpg','0',0,'1',NULL,NULL),(11,'9860mfd-aura_3.jpg','0',0,'1',NULL,NULL),(12,'536mfd-aura_3.jpg','0',1,'1',NULL,NULL),(13,'6849logo.ico','0',0,'1',NULL,NULL),(14,'665logo.ico','0',0,'1',NULL,NULL),(15,'4040mfd-aura_3.jpg','0',0,'1',NULL,NULL),(16,'7593mfd-aura_3.jpg','0',0,'1',NULL,NULL),(17,'6709mfd-aura_3.jpg','0',1,'1',NULL,NULL),(18,'9674mfd-aura_3.jpg','0',0,'1',NULL,NULL);
/*!40000 ALTER TABLE `rings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'artur','smnnartur@gmail.com','$2y$10$MnLHzZNuom2ypuG.14oA4OnsPREq1c4apeWKJpDjsqIsszvCv2dTK',1,'FXPL9aqpw8bAlPjqc6qpB9aAwSUNzxJ04OxCFMWQzrhnRzsIzn9OE3oC8GQg','2019-02-21 15:32:23','2019-02-21 15:32:23');
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

-- Dump completed on 2019-06-22  0:00:05
