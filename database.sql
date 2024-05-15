-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'cvhsaa7fn5lAHI0XfHFAbGokMnnB7pb2',1,'2024-01-06 08:21:57','2024-01-06 08:21:57','2024-01-06 08:21:57'),(2,2,'QvQkS5sxRKklf0YbObNgYNHm4SZhvEt7',1,'2024-01-06 08:21:57','2024-01-06 08:21:57','2024-01-06 08:21:57');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-01-06 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(2,'Top Slider Image 2','2029-01-06 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(3,'Homepage middle 1','2029-01-06 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(4,'Homepage middle 2','2029-01-06 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(5,'Homepage middle 3','2029-01-06 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(6,'Homepage big 1','2029-01-06 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(7,'Homepage bottom small','2029-01-06 00:00:00','not_set','NNKSYAV7JR0K','promotion/7.jpg','/products',0,7,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(8,'Product sidebar','2029-01-06 00:00:00','product-sidebar','OYMSZ6KTMY3A','promotion/8.jpg','/products',0,8,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL),(9,'Homepage big 2','2029-01-06 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Et excepturi suscipit consequuntur totam sed placeat repudiandae. Iusto sit delectus libero voluptas. Omnis quis libero autem dolor. Numquam ipsum placeat qui earum et consequuntur.','published',2,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(2,'Fashion',0,'Voluptate ullam rerum id nihil architecto similique quam. Ducimus qui quisquam nihil delectus molestiae. Ratione quisquam est consequatur quae minus suscipit molestiae aliquam.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(3,'Electronic',0,'Qui eos sint enim ipsum. Ipsa ea qui necessitatibus quo non nostrum. Officiis omnis soluta officia beatae placeat vero aut. Distinctio non sed non laborum.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(4,'Commercial',0,'Aut iusto fugit sit molestiae dolore est. Velit cum sint id magnam blanditiis vitae. Fugiat dolor ut non eaque. Vero officiis odio quidem iste quasi eius quo.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Mikel Reynolds','xkirlin@example.com','(872) 653-7558','8113 Alexis Extension Suite 842\nBashirianfort, NH 61125','Error nihil voluptatum omnis accusantium.','Tempora consequatur veritatis a ratione sint mollitia ipsum optio. Enim minus cum quos cupiditate similique soluta. Itaque harum natus accusantium corrupti sit. Animi quia in tempore qui nemo neque aliquid. Molestiae et aut in. Impedit asperiores eum animi. Vel sapiente et voluptatem amet. Corrupti ipsam cum voluptas necessitatibus. Iusto laborum id incidunt ut maiores. Quam deserunt ut id sit reprehenderit consectetur nemo. Nam natus perspiciatis quibusdam iure natus.','unread','2024-01-06 08:21:56','2024-01-06 08:21:56'),(2,'Harmony Beatty III','myron.ryan@example.com','1-317-722-6861','2019 Eliseo Union\nAdelbertburgh, NC 53415','Quidem quae repellat nemo et eaque ut.','Sint voluptas labore unde sapiente dolore. Reprehenderit nostrum quas rerum. Dicta aut atque adipisci. Eos et accusamus praesentium laboriosam distinctio. Dolorem incidunt qui tenetur. Consequatur dolores iure ipsum rerum est. Dolorum officia quo culpa provident quia. Quaerat omnis soluta fugit eaque. Quibusdam totam vel explicabo non consequatur illo ipsa. Minus consequuntur minima hic fugit.','unread','2024-01-06 08:21:56','2024-01-06 08:21:56'),(3,'Neva Oberbrunner','heaney.parker@example.com','+1-386-747-3218','1591 Raynor Alley Apt. 610\nRaynorville, AR 20213','Quo deserunt qui alias ducimus.','Modi velit distinctio sit debitis accusantium enim. Dolores velit ab quia asperiores laudantium quia et voluptatem. Facilis veniam et adipisci officia est voluptate totam. Voluptatem nulla vel et accusantium dolorem velit iure. Illum deleniti est qui nihil ab sit itaque et. Commodi debitis doloremque voluptate quia voluptatem ab id ducimus. Culpa voluptates sed pariatur iusto. Eos est omnis et dignissimos. Expedita enim dolorem sint et similique ea occaecati quia. Quas occaecati quas eum rerum.','read','2024-01-06 08:21:56','2024-01-06 08:21:56'),(4,'Albina Howell','leonard28@example.net','+1-828-986-6885','668 Kovacek Fort Suite 953\nReynoldsfort, KY 60490','Ut qui dolorem dignissimos consectetur quia.','Eveniet at tempora at non et beatae illo. Quia a excepturi recusandae rerum repellendus est provident. Aperiam mollitia eveniet quidem omnis sequi a. Sit commodi sit ut quam id. Omnis fuga cum sed. Temporibus pariatur et inventore ullam incidunt dolorem. Quis omnis ut ex at. Fugit numquam vero sit molestiae. Eum sapiente impedit itaque modi. Atque eveniet nostrum rerum. Et ipsam dolorem atque sint et perferendis eum est.','read','2024-01-06 08:21:56','2024-01-06 08:21:56'),(5,'Cordia Sipes','weimann.granville@example.net','1-575-979-9123','132 Luella Point\nPort Emmettport, RI 36607','Consectetur et porro eum rem deserunt illum est.','Et sed sunt labore qui. Aut adipisci aliquam ab qui quis accusamus sit. Quisquam omnis a eos sint molestiae voluptas recusandae. Ipsum nihil impedit et sapiente sapiente eaque. Neque ut sunt amet ut. Laudantium rerum tempore sint animi. Qui sit odio distinctio quis rem dicta omnis. Minus deserunt earum qui ab enim odit. A magnam reprehenderit expedita magnam ut ut tenetur. Dolor sed ipsa dignissimos sit modi voluptate. Ipsam doloribus a optio facilis pariatur.','unread','2024-01-06 08:21:56','2024-01-06 08:21:56'),(6,'Dr. Alivia Douglas Jr.','romaguera.jadon@example.org','1-502-214-9180','3381 Koepp Square Apt. 566\nLake Kirsten, NJ 75090','Iure rerum alias beatae eligendi.','Minima deleniti impedit beatae ipsam. Fugit omnis neque id. Quis sed facilis vitae nobis. Nihil voluptatem mollitia ut. Maiores beatae qui qui. Aut ex aut maxime id autem minus dolores soluta. Voluptatem ut ab et expedita quibusdam non. Sit dignissimos dolor quia molestiae debitis. Aspernatur reiciendis expedita eos aut rerum ut. In doloremque quia earum accusantium aliquid iure. Error molestiae sit qui ut.','read','2024-01-06 08:21:56','2024-01-06 08:21:56'),(7,'Prof. Chauncey Sanford','bauch.terry@example.net','+1 (845) 304-5459','7911 Grady Row\nSpencerville, KY 92484','Sed inventore in id deleniti.','Officiis ad quo et eos numquam ipsa. Dicta dolores eaque dolores dolorum optio. Et odio omnis illum et laborum nemo. Ipsum ab ut repellendus expedita placeat vel necessitatibus. Temporibus excepturi id velit necessitatibus enim maiores ipsam. Consequatur at voluptatum itaque qui eligendi aut aut voluptates. Ipsum consequuntur magni dolor ipsa quasi nesciunt et.','read','2024-01-06 08:21:56','2024-01-06 08:21:56'),(8,'Carli Schroeder','rodriguez.rafael@example.com','762.230.3656','268 Strosin Terrace Suite 349\nLewstad, OK 93277-0891','Dolores aut et non.','Ut rerum amet voluptate maiores laudantium consequatur ut. Debitis illo in nesciunt deserunt ea. Saepe in eos laborum id natus reprehenderit repellendus impedit. Fuga nihil sunt voluptatibus non aspernatur. Ipsum saepe fugit libero quaerat quisquam cumque odit. Quisquam odio rerum culpa cumque quae at. Provident consequatur quidem qui et provident suscipit quasi dolorem.','unread','2024-01-06 08:21:56','2024-01-06 08:21:56'),(9,'Jerome Oberbrunner IV','koss.kiarra@example.com','+1-661-973-0179','6702 Maggio Prairie\nArthurbury, MS 88346-1042','Harum recusandae veritatis laborum.','Laboriosam consequatur nemo dolorem placeat nesciunt culpa esse. Possimus fuga ipsam qui omnis. Dolores quis sunt nisi. Eligendi nihil itaque tenetur facere maxime totam. Facere odit perspiciatis impedit dignissimos voluptas. Temporibus voluptatem aut dolores aliquid doloribus et ut. Placeat et consectetur iusto ducimus consequatur ea accusantium. Aperiam voluptate modi voluptas magni magnam placeat aut.','read','2024-01-06 08:21:56','2024-01-06 08:21:56'),(10,'Vena Larson','leanne73@example.com','402-673-1953','249 Oberbrunner Burgs\nSouth Queenview, DC 34610-0172','Ex aperiam et laudantium ea ipsa.','Et corporis maiores quia ut quis optio qui. Amet laudantium voluptatem nihil ut quia rerum. Voluptatibus rerum minima ut tenetur. Omnis velit et debitis vitae autem atque corrupti non. Nihil eum nesciunt ipsum quam non saepe quis. Praesentium quae odit magni quidem magni. Vel exercitationem repellendus aliquam quisquam. Error doloribus aut placeat et et.','unread','2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2024-01-06 08:21:47','2024-01-06 08:21:47');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(2,'EUR','€',0,2,1,0,0.84,'2024-01-06 08:21:47','2024-01-06 08:21:47'),(3,'VND','₫',0,0,2,0,23203,'2024-01-06 08:21:47','2024-01-06 08:21:47');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Celia Quitzon','customer@botble.com','+18456080002','ML','Oregon','West Joesphtown','234 Emie Stravenue',1,1,'2024-01-06 08:21:54','2024-01-06 08:21:54','41906-3999'),(2,'Celia Quitzon','customer@botble.com','+14237689571','MW','Alabama','West Zolaburgh','8681 Jaskolski Burg',1,0,'2024-01-06 08:21:54','2024-01-06 08:21:54','81730-2409'),(3,'Bernie Spencer','vendor@botble.com','+13418065232','KR','Wyoming','Johnhaven','5512 Koss Neck',2,1,'2024-01-06 08:21:54','2024-01-06 08:21:54','04791-0439'),(4,'Bernie Spencer','vendor@botble.com','+15746740831','TN','North Carolina','Port Reidview','25794 Lonie Track Suite 101',2,0,'2024-01-06 08:21:54','2024-01-06 08:21:54','11655-5866'),(5,'Prof. Hester Glover DVM','mara.lang@example.net','+14153180816','EG','Mississippi','Hammestown','31563 Glover View',3,1,'2024-01-06 08:21:54','2024-01-06 08:21:54','66924'),(6,'Dr. Fletcher Legros DVM','pcrooks@example.net','+19477509259','PM','Mississippi','West Karliburgh','447 Antwan Freeway',4,1,'2024-01-06 08:21:55','2024-01-06 08:21:55','09908-7440'),(7,'Mr. Abdullah Cruickshank I','warren67@example.org','+13603870897','BY','Oklahoma','South Kimberly','68894 Mills Burg Apt. 371',5,1,'2024-01-06 08:21:55','2024-01-06 08:21:55','06221'),(8,'Leif Russel','rossie.kub@example.org','+18137424330','CG','Oregon','North Sallieborough','9343 Homenick Light',6,1,'2024-01-06 08:21:55','2024-01-06 08:21:55','07458'),(9,'Prof. Maye Marvin','ngerlach@example.com','+19195802198','AU','Massachusetts','Port Morgan','4863 Audreanne Meadows Apt. 759',7,1,'2024-01-06 08:21:55','2024-01-06 08:21:55','46647'),(10,'Kaley Mosciski','dmarvin@example.org','+14589477359','PT','District of Columbia','New Sylvesterberg','512 Parker Mission Suite 155',8,1,'2024-01-06 08:21:56','2024-01-06 08:21:56','15295'),(11,'Dr. Abraham Gaylord','moen.kenneth@example.com','+19033261781','BJ','Tennessee','Loweview','552 Turner Mill',9,1,'2024-01-06 08:21:56','2024-01-06 08:21:56','44705'),(12,'Mrs. Carolyne Tromp I','melvina.krajcik@example.com','+12528537124','IQ','Montana','Port Catharineview','923 Jayne Isle Apt. 444',10,1,'2024-01-06 08:21:56','2024-01-06 08:21:56','22775-6361');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Celia Quitzon','customer@botble.com','$2y$12$HpWJZmcsZD9DuDeVEdmvIealHNKbp4mtwQquNImU/rA/XnnmqP4S.','customers/2.jpg','1979-12-20','+18639837910',NULL,'2024-01-06 08:21:54','2024-01-06 08:21:54','2024-01-06 15:21:54',NULL,'activated',NULL,0,NULL),(2,'Bernie Spencer','vendor@botble.com','$2y$12$RACMeWQlLDBtlCMK3osfcul9o0nFd9294/wQCSdfN7/5xKG6TeUnS','customers/2.jpg','1995-12-22','+16236784522',NULL,'2024-01-06 08:21:54','2024-01-06 08:22:00','2024-01-06 15:21:54',NULL,'activated',NULL,1,'2024-01-06 15:22:00'),(3,'Prof. Hester Glover DVM','mara.lang@example.net','$2y$12$Nzdk351kLYWO4Fn6C2ENROisYrD2rh/zv3P76O1s3E7VmMaN3tQnG','customers/1.jpg','1989-12-20','+15408563131',NULL,'2024-01-06 08:21:54','2024-01-06 08:21:54','2024-01-06 15:21:54',NULL,'activated',NULL,0,NULL),(4,'Dr. Fletcher Legros DVM','pcrooks@example.net','$2y$12$xs7sm2pv5gTEKfxt7AZCBu9PCASTcCA16jYAXBkKEyeMzpRCI2lfq','customers/2.jpg','1994-12-12','+15859773570',NULL,'2024-01-06 08:21:54','2024-01-06 08:22:01','2024-01-06 15:21:55',NULL,'activated',NULL,1,'2024-01-06 15:22:01'),(5,'Mr. Abdullah Cruickshank I','warren67@example.org','$2y$12$Kj4jh1NNwvxLTRbgpXqOf.TL/2jnAaXxgdX10u8b1GgoFDnsE9LLe','customers/3.jpg','2003-12-29','+16038202859',NULL,'2024-01-06 08:21:55','2024-01-06 08:22:01','2024-01-06 15:21:55',NULL,'activated',NULL,1,'2024-01-06 15:22:01'),(6,'Leif Russel','rossie.kub@example.org','$2y$12$VLf77YVHr14xacUjxgrWXe1mG3Ix1HGAfed3QrY0VGQ1Lw.SkSrte','customers/4.jpg','1986-12-08','+14703686345',NULL,'2024-01-06 08:21:55','2024-01-06 08:21:55','2024-01-06 15:21:55',NULL,'activated',NULL,0,NULL),(7,'Prof. Maye Marvin','ngerlach@example.com','$2y$12$v45VE/49.E7EaAY3YJ5h1uQTxZX0an5mpwYOTQmsobyhTrW5N/Ejy','customers/5.jpg','1985-12-24','+12349682568',NULL,'2024-01-06 08:21:55','2024-01-06 08:22:01','2024-01-06 15:21:55',NULL,'activated',NULL,1,'2024-01-06 15:22:01'),(8,'Kaley Mosciski','dmarvin@example.org','$2y$12$gVEuv0SEd7JHc.Pd1FU/juBWnZfMQj7DHkeUE51d0fmGO3k1npqRC','customers/6.jpg','2002-12-09','+15346275028',NULL,'2024-01-06 08:21:56','2024-01-06 08:22:02','2024-01-06 15:21:56',NULL,'activated',NULL,1,'2024-01-06 15:22:02'),(9,'Dr. Abraham Gaylord','moen.kenneth@example.com','$2y$12$VQ.lsl3cZXVa8NUzY8VndeqgEXd5EuD0nMlMdqpETjna6b7kgfAya','customers/7.jpg','1994-12-18','+18207873469',NULL,'2024-01-06 08:21:56','2024-01-06 08:21:56','2024-01-06 15:21:56',NULL,'activated',NULL,0,NULL),(10,'Mrs. Carolyne Tromp I','melvina.krajcik@example.com','$2y$12$dzfwhu7U6v4hTUa4U9fw0OiNQba.G4nW/qMqdVS1fJ.DHTOCQax3y','customers/8.jpg','2004-01-01','+17313241995',NULL,'2024-01-06 08:21:56','2024-01-06 08:22:02','2024-01-06 15:21:56',NULL,'activated',NULL,1,'2024-01-06 15:22:02');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,59.385,13,2),(1,2,16.2,18,4),(1,3,7.4,16,1),(1,4,330.6732,15,2),(1,5,717.12,7,1),(1,6,231.12,10,4),(1,7,215.46,20,3),(1,8,752.5386,6,4),(1,9,315.88,18,5),(1,10,532.59,9,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-02-05 00:00:00','published','2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(1,2,'2 Year',10,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(1,3,'3 Year',20,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(2,4,'4GB',0,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(2,5,'8GB',10,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(2,6,'16GB',20,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(3,7,'Core i5',0,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(3,8,'Core i7',10,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(3,9,'Core i9',20,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(4,10,'128GB',0,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(4,11,'256GB',10,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(4,12,'512GB',20,9999,0,'2024-01-06 08:22:00','2024-01-06 08:22:00');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-06 08:22:00','2024-01-06 08:22:00'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-01-06 08:22:00','2024-01-06 08:22:00');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',25,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',2,80.25,160.50,0.00,0.00,160.50,'[]','2024-01-06 08:22:03','2024-01-06 08:22:03'),(2,2,'Botble\\Ecommerce\\Models\\Product',35,'Smart Watch External (Digital)',NULL,'products/5.jpg',2,864.00,1728.00,0.00,0.00,1728.00,'[]','2024-01-06 08:22:03','2024-01-06 08:22:03'),(3,3,'Botble\\Ecommerce\\Models\\Product',92,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-2.jpg',2,1200.00,2400.00,0.00,0.00,2400.00,'[]','2024-01-06 08:22:03','2024-01-06 08:22:03'),(4,4,'Botble\\Ecommerce\\Models\\Product',32,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'[]','2024-01-06 08:22:03','2024-01-06 08:22:03'),(5,5,'Botble\\Ecommerce\\Models\\Product',86,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22.jpg',1,404.00,404.00,0.00,0.00,404.00,'[]','2024-01-06 08:22:03','2024-01-06 08:22:03'),(6,6,'Botble\\Ecommerce\\Models\\Product',92,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-2.jpg',2,1200.00,2400.00,0.00,0.00,2400.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(7,7,'Botble\\Ecommerce\\Models\\Product',65,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',3,553.00,1659.00,0.00,0.00,1659.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(8,7,'Botble\\Ecommerce\\Models\\Product',72,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-1.jpg',3,547.00,1641.00,0.00,0.00,1641.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(9,8,'Botble\\Ecommerce\\Models\\Product',88,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',1,404.00,404.00,0.00,0.00,404.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(10,9,'Botble\\Ecommerce\\Models\\Product',90,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23.jpg',2,1200.00,2400.00,0.00,0.00,2400.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(11,10,'Botble\\Ecommerce\\Models\\Product',33,'Red &amp; Black Headphone',NULL,'products/4.jpg',1,517.00,517.00,0.00,0.00,517.00,'[]','2024-01-06 08:22:04','2024-01-06 08:22:04'),(12,11,'Botble\\Ecommerce\\Models\\Product',46,'Smart Televisions',NULL,'products/8-2.jpg',3,1133.00,3399.00,0.00,0.00,3399.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(13,12,'Botble\\Ecommerce\\Models\\Product',31,'Smart Watches',NULL,'products/2-3.jpg',1,40.50,40.50,0.00,0.00,40.50,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(14,12,'Botble\\Ecommerce\\Models\\Product',80,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-1.jpg',1,894.00,894.00,0.00,0.00,894.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(15,13,'Botble\\Ecommerce\\Models\\Product',45,'Smart Televisions',NULL,'products/8-1.jpg',2,1133.00,2266.00,0.00,0.00,2266.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(16,14,'Botble\\Ecommerce\\Models\\Product',50,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-1.jpg',3,1299.00,3897.00,0.00,0.00,3897.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(17,15,'Botble\\Ecommerce\\Models\\Product',39,'Nikon HD camera',NULL,'products/6.jpg',3,428.00,1284.00,0.00,0.00,1284.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(18,15,'Botble\\Ecommerce\\Models\\Product',68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',3,562.00,1686.00,0.00,0.00,1686.00,'[]','2024-01-06 08:22:05','2024-01-06 08:22:05'),(19,16,'Botble\\Ecommerce\\Models\\Product',87,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',1,404.00,404.00,0.00,0.00,404.00,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(20,17,'Botble\\Ecommerce\\Models\\Product',41,'Audio Equipment',NULL,'products/7.jpg',3,513.00,1539.00,0.00,0.00,1539.00,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(21,18,'Botble\\Ecommerce\\Models\\Product',71,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',3,547.00,1641.00,0.00,0.00,1641.00,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(22,19,'Botble\\Ecommerce\\Models\\Product',87,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',2,404.00,808.00,0.00,0.00,808.00,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(23,20,'Botble\\Ecommerce\\Models\\Product',27,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',1,80.25,80.25,0.00,0.00,80.25,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(24,21,'Botble\\Ecommerce\\Models\\Product',64,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',2,600.00,1200.00,0.00,0.00,1200.00,'[]','2024-01-06 08:22:06','2024-01-06 08:22:06'),(25,22,'Botble\\Ecommerce\\Models\\Product',88,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',3,404.00,1212.00,0.00,0.00,1212.00,'[]','2024-01-06 08:22:07','2024-01-06 08:22:07'),(26,23,'Botble\\Ecommerce\\Models\\Product',42,'Audio Equipment',NULL,'products/7.jpg',3,513.00,1539.00,0.00,0.00,1539.00,'[]','2024-01-06 08:22:07','2024-01-06 08:22:07'),(27,24,'Botble\\Ecommerce\\Models\\Product',87,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',3,404.00,1212.00,0.00,0.00,1212.00,'[]','2024-01-06 08:22:07','2024-01-06 08:22:07'),(28,25,'Botble\\Ecommerce\\Models\\Product',52,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',1,1283.00,1283.00,0.00,0.00,1283.00,'[]','2024-01-06 08:22:07','2024-01-06 08:22:07'),(29,26,'Botble\\Ecommerce\\Models\\Product',73,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-2.jpg',1,547.00,547.00,0.00,0.00,547.00,'[]','2024-01-06 08:22:07','2024-01-06 08:22:07'),(30,27,'Botble\\Ecommerce\\Models\\Product',32,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(31,28,'Botble\\Ecommerce\\Models\\Product',76,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18.jpg',1,1044.00,1044.00,0.00,0.00,1044.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(32,29,'Botble\\Ecommerce\\Models\\Product',86,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22.jpg',1,404.00,404.00,0.00,0.00,404.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(33,30,'Botble\\Ecommerce\\Models\\Product',80,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-1.jpg',2,894.00,1788.00,0.00,0.00,1788.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(34,30,'Botble\\Ecommerce\\Models\\Product',87,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',1,404.00,404.00,0.00,0.00,404.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(35,31,'Botble\\Ecommerce\\Models\\Product',24,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',3,80.25,240.75,0.00,0.00,240.75,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(36,32,'Botble\\Ecommerce\\Models\\Product',47,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',1,596.00,596.00,0.00,0.00,596.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(37,32,'Botble\\Ecommerce\\Models\\Product',91,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-1.jpg',2,1200.00,2400.00,0.00,0.00,2400.00,'[]','2024-01-06 08:22:08','2024-01-06 08:22:08'),(38,33,'Botble\\Ecommerce\\Models\\Product',61,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',2,600.00,1200.00,0.00,0.00,1200.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(39,34,'Botble\\Ecommerce\\Models\\Product',42,'Audio Equipment',NULL,'products/7.jpg',3,513.00,1539.00,0.00,0.00,1539.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(40,34,'Botble\\Ecommerce\\Models\\Product',47,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',1,596.00,596.00,0.00,0.00,596.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(41,35,'Botble\\Ecommerce\\Models\\Product',87,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',3,404.00,1212.00,0.00,0.00,1212.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(42,36,'Botble\\Ecommerce\\Models\\Product',39,'Nikon HD camera',NULL,'products/6.jpg',1,428.00,428.00,0.00,0.00,428.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(43,37,'Botble\\Ecommerce\\Models\\Product',62,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',3,600.00,1800.00,0.00,0.00,1800.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(44,38,'Botble\\Ecommerce\\Models\\Product',53,'Xbox One Wireless Controller Black Color',NULL,'products/11-1.jpg',3,1283.00,3849.00,0.00,0.00,3849.00,'[]','2024-01-06 08:22:09','2024-01-06 08:22:09'),(45,39,'Botble\\Ecommerce\\Models\\Product',65,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',3,553.00,1659.00,0.00,0.00,1659.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(46,40,'Botble\\Ecommerce\\Models\\Product',76,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18.jpg',1,1044.00,1044.00,0.00,0.00,1044.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(47,41,'Botble\\Ecommerce\\Models\\Product',26,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',2,80.25,160.50,0.00,0.00,160.50,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(48,42,'Botble\\Ecommerce\\Models\\Product',51,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-2.jpg',1,1299.00,1299.00,0.00,0.00,1299.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(49,42,'Botble\\Ecommerce\\Models\\Product',58,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',3,558.00,1674.00,0.00,0.00,1674.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(50,42,'Botble\\Ecommerce\\Models\\Product',70,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',1,562.00,562.00,0.00,0.00,562.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(51,43,'Botble\\Ecommerce\\Models\\Product',45,'Smart Televisions',NULL,'products/8-1.jpg',1,1133.00,1133.00,0.00,0.00,1133.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(52,43,'Botble\\Ecommerce\\Models\\Product',46,'Smart Televisions',NULL,'products/8-2.jpg',1,1133.00,1133.00,0.00,0.00,1133.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(53,44,'Botble\\Ecommerce\\Models\\Product',89,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-3.jpg',2,404.00,808.00,0.00,0.00,808.00,'[]','2024-01-06 08:22:10','2024-01-06 08:22:10'),(54,45,'Botble\\Ecommerce\\Models\\Product',50,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-1.jpg',1,1299.00,1299.00,0.00,0.00,1299.00,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11'),(55,46,'Botble\\Ecommerce\\Models\\Product',83,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21-1.jpg',3,926.00,2778.00,0.00,0.00,2778.00,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11'),(56,47,'Botble\\Ecommerce\\Models\\Product',89,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-3.jpg',3,404.00,1212.00,0.00,0.00,1212.00,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11'),(57,48,'Botble\\Ecommerce\\Models\\Product',24,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',2,80.25,160.50,0.00,0.00,160.50,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11'),(58,49,'Botble\\Ecommerce\\Models\\Product',51,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-2.jpg',1,1299.00,1299.00,0.00,0.00,1299.00,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11'),(59,49,'Botble\\Ecommerce\\Models\\Product',90,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23.jpg',2,1200.00,2400.00,0.00,0.00,2400.00,'[]','2024-01-06 08:22:11','2024-01-06 08:22:11');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,160.50,0.00,0.00,0.00,NULL,'',NULL,NULL,160.50,NULL,1,'pending',NULL,'2023-12-25 16:22:02','2024-01-06 08:22:03'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,1728.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1728.00,NULL,2,'pending',NULL,'2023-12-25 16:22:03','2024-01-06 08:22:03'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,2400.00,0.00,0.00,0.00,'1','default',NULL,NULL,2400.00,NULL,3,'completed','2024-01-06 08:22:03','2023-12-27 08:22:03','2024-01-06 08:22:03'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,40.00,0.00,0.00,0.00,'1','default',NULL,NULL,40.00,NULL,4,'completed','2024-01-06 08:22:03','2024-01-04 18:22:03','2024-01-06 08:22:03'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,404.00,0.00,0.00,0.00,'1','default',NULL,NULL,404.00,NULL,5,'completed','2024-01-06 08:22:03','2023-12-26 06:22:03','2024-01-06 08:22:03'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,2400.00,0.00,0.00,0.00,'1','default',NULL,NULL,2400.00,NULL,6,'pending',NULL,'2023-12-24 16:22:04','2024-01-06 08:22:04'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,3300.00,0.00,0.00,0.00,'1','default',NULL,NULL,3300.00,NULL,7,'completed','2024-01-06 08:22:04','2023-12-23 20:22:04','2024-01-06 08:22:04'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,404.00,0.00,0.00,0.00,'1','default',NULL,NULL,404.00,NULL,8,'pending',NULL,'2023-12-22 08:22:04','2024-01-06 08:22:04'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,2400.00,0.00,0.00,0.00,'1','default',NULL,NULL,2400.00,NULL,9,'completed','2024-01-06 08:22:04','2023-12-29 20:22:04','2024-01-06 08:22:04'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,517.00,0.00,0.00,0.00,'1','default',NULL,NULL,517.00,NULL,10,'completed','2024-01-06 08:22:04','2024-01-02 02:22:04','2024-01-06 08:22:04'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,3399.00,0.00,0.00,0.00,'1','default',NULL,NULL,3399.00,NULL,11,'completed','2024-01-06 08:22:05','2024-01-02 02:22:05','2024-01-06 08:22:05'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,934.50,0.00,0.00,0.00,'1','default',NULL,NULL,934.50,NULL,12,'completed','2024-01-06 08:22:05','2023-12-30 16:22:05','2024-01-06 08:22:05'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,2266.00,0.00,0.00,0.00,'1','default',NULL,NULL,2266.00,NULL,13,'completed','2024-01-06 08:22:05','2023-12-29 08:22:05','2024-01-06 08:22:05'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,3897.00,0.00,0.00,0.00,'1','default',NULL,NULL,3897.00,NULL,14,'completed','2024-01-06 08:22:05','2023-12-28 00:22:05','2024-01-06 08:22:05'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Leif Russel','',NULL,'rossie.kub@example.org','+18137424330','9343 Homenick Light, North Sallieborough, Oregon, CG',NULL,2970.00,0.00,0.00,0.00,'1','default',NULL,NULL,2970.00,NULL,15,'pending',NULL,'2023-12-27 08:22:05','2024-01-06 08:22:05'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Leif Russel','',NULL,'rossie.kub@example.org','+18137424330','9343 Homenick Light, North Sallieborough, Oregon, CG',NULL,404.00,0.00,0.00,0.00,'1','default',NULL,NULL,404.00,NULL,16,'completed','2024-01-06 08:22:06','2023-12-27 08:22:06','2024-01-06 08:22:06'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1539.00,0.00,0.00,0.00,'1','default',NULL,NULL,1539.00,NULL,17,'pending',NULL,'2024-01-02 20:22:06','2024-01-06 08:22:06'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1641.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1641.00,NULL,18,'completed','2024-01-06 08:22:06','2023-12-29 04:22:06','2024-01-06 08:22:06'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,808.00,0.00,0.00,0.00,'1','default',NULL,NULL,808.00,NULL,19,'completed','2024-01-06 08:22:06','2023-12-25 16:22:06','2024-01-06 08:22:06'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,80.25,0.00,0.00,0.00,NULL,'',NULL,NULL,80.25,NULL,20,'completed','2024-01-06 08:22:06','2024-01-05 06:22:06','2024-01-06 08:22:06'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1200.00,0.00,0.00,0.00,'1','default',NULL,NULL,1200.00,NULL,21,'pending',NULL,'2024-01-03 02:22:06','2024-01-06 08:22:06'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1212.00,0.00,0.00,0.00,'1','default',NULL,NULL,1212.00,NULL,22,'completed','2024-01-06 08:22:07','2023-12-28 16:22:07','2024-01-06 08:22:07'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1539.00,0.00,0.00,0.00,'1','default',NULL,NULL,1539.00,NULL,23,'pending',NULL,'2023-12-29 08:22:07','2024-01-06 08:22:07'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1212.00,0.00,0.00,0.00,'1','default',NULL,NULL,1212.00,NULL,24,'completed','2024-01-06 08:22:07','2023-12-31 08:22:07','2024-01-06 08:22:07'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1283.00,0.00,0.00,0.00,'1','default',NULL,NULL,1283.00,NULL,25,'completed','2024-01-06 08:22:07','2023-12-28 04:22:07','2024-01-06 08:22:07'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,547.00,0.00,0.00,0.00,NULL,'',NULL,NULL,547.00,NULL,26,'pending',NULL,'2024-01-05 10:22:07','2024-01-06 08:22:07'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,40.00,0.00,0.00,0.00,'1','default',NULL,NULL,40.00,NULL,27,'pending',NULL,'2024-01-03 00:22:08','2024-01-06 08:22:08'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1044.00,0.00,0.00,0.00,'1','default',NULL,NULL,1044.00,NULL,28,'completed','2024-01-06 08:22:08','2024-01-03 20:22:08','2024-01-06 08:22:08'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,404.00,0.00,0.00,0.00,'1','default',NULL,NULL,404.00,NULL,29,'pending',NULL,'2023-12-29 20:22:08','2024-01-06 08:22:08'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,2192.00,0.00,0.00,0.00,'1','default',NULL,NULL,2192.00,NULL,30,'completed','2024-01-06 08:22:08','2023-12-29 20:22:08','2024-01-06 08:22:08'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,240.75,0.00,0.00,0.00,NULL,'',NULL,NULL,240.75,NULL,31,'completed','2024-01-06 08:22:08','2024-01-05 16:22:08','2024-01-06 08:22:08'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,2996.00,0.00,0.00,0.00,'1','default',NULL,NULL,2996.00,NULL,32,'completed','2024-01-06 08:22:08','2023-12-31 08:22:08','2024-01-06 08:22:08'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1200.00,0.00,0.00,0.00,'1','default',NULL,NULL,1200.00,NULL,33,'completed','2024-01-06 08:22:09','2024-01-03 00:22:09','2024-01-06 08:22:09'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,2135.00,0.00,0.00,0.00,'1','default',NULL,NULL,2135.00,NULL,34,'completed','2024-01-06 08:22:09','2024-01-03 10:22:09','2024-01-06 08:22:09'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Dr. Abraham Gaylord','',NULL,'moen.kenneth@example.com','+19033261781','552 Turner Mill, Loweview, Tennessee, BJ',NULL,1212.00,0.00,0.00,0.00,'1','default',NULL,NULL,1212.00,NULL,35,'completed','2024-01-06 08:22:09','2023-12-31 12:22:09','2024-01-06 08:22:09'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,428.00,0.00,0.00,0.00,'1','default',NULL,NULL,428.00,NULL,36,'completed','2024-01-06 08:22:09','2024-01-05 20:22:09','2024-01-06 08:22:09'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,1800.00,0.00,0.00,0.00,'1','default',NULL,NULL,1800.00,NULL,37,'completed','2024-01-06 08:22:09','2024-01-02 20:22:09','2024-01-06 08:22:09'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Leif Russel','',NULL,'rossie.kub@example.org','+18137424330','9343 Homenick Light, North Sallieborough, Oregon, CG',NULL,3849.00,0.00,0.00,0.00,'1','default',NULL,NULL,3849.00,NULL,38,'completed','2024-01-06 08:22:09','2024-01-05 22:22:09','2024-01-06 08:22:09'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Leif Russel','',NULL,'rossie.kub@example.org','+18137424330','9343 Homenick Light, North Sallieborough, Oregon, CG',NULL,1659.00,0.00,0.00,0.00,'1','default',NULL,NULL,1659.00,NULL,39,'completed','2024-01-06 08:22:10','2024-01-04 16:22:10','2024-01-06 08:22:10'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Leif Russel','',NULL,'rossie.kub@example.org','+18137424330','9343 Homenick Light, North Sallieborough, Oregon, CG',NULL,1044.00,0.00,0.00,0.00,'1','default',NULL,NULL,1044.00,NULL,40,'completed','2024-01-06 08:22:10','2024-01-05 02:22:10','2024-01-06 08:22:10'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,160.50,0.00,0.00,0.00,NULL,'',NULL,NULL,160.50,NULL,41,'pending',NULL,'2024-01-05 16:22:10','2024-01-06 08:22:10'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Prof. Hester Glover DVM','',NULL,'mara.lang@example.net','+14153180816','31563 Glover View, Hammestown, Mississippi, EG',NULL,3535.00,0.00,0.00,0.00,'1','default',NULL,NULL,3535.00,NULL,42,'completed','2024-01-06 08:22:10','2024-01-03 00:22:10','2024-01-06 08:22:10'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,2266.00,0.00,0.00,0.00,'1','default',NULL,NULL,2266.00,NULL,43,'completed','2024-01-06 08:22:10','2024-01-04 02:22:10','2024-01-06 08:22:10'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,808.00,0.00,0.00,0.00,'1','default',NULL,NULL,808.00,NULL,44,'completed','2024-01-06 08:22:10','2024-01-05 20:22:10','2024-01-06 08:22:10'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1299.00,0.00,0.00,0.00,'1','default',NULL,NULL,1299.00,NULL,45,'pending',NULL,'2024-01-05 04:22:11','2024-01-06 08:22:11'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,2778.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2778.00,NULL,46,'pending',NULL,'2024-01-05 20:22:11','2024-01-06 08:22:11'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,1212.00,0.00,0.00,0.00,'1','default',NULL,NULL,1212.00,NULL,47,'pending',NULL,'2024-01-05 00:22:11','2024-01-06 08:22:11'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,160.50,0.00,0.00,0.00,NULL,'',NULL,NULL,160.50,NULL,48,'completed','2024-01-06 08:22:11','2024-01-06 04:22:11','2024-01-06 08:22:11'),(49,'Botble\\Ecommerce\\Models\\Order',49,'INV-49','Celia Quitzon','',NULL,'customer@botble.com','+18456080002','234 Emie Stravenue, West Joesphtown, Oregon, ML',NULL,3699.00,0.00,0.00,0.00,'1','default',NULL,NULL,3699.00,NULL,49,'completed','2024-01-06 08:22:11','2024-01-05 22:22:11','2024-01-06 08:22:11');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',1,'66924','shipping_address'),(2,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',2,'66924','shipping_address'),(3,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',3,'66924','shipping_address'),(4,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',4,'44705','shipping_address'),(5,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',5,'44705','shipping_address'),(6,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',6,'44705','shipping_address'),(7,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',7,'41906-3999','shipping_address'),(8,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',8,'41906-3999','shipping_address'),(9,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',9,'41906-3999','shipping_address'),(10,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',10,'66924','shipping_address'),(11,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',11,'66924','shipping_address'),(12,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',12,'41906-3999','shipping_address'),(13,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',13,'41906-3999','shipping_address'),(14,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',14,'41906-3999','shipping_address'),(15,'Leif Russel','+18137424330','rossie.kub@example.org','CG','Oregon','North Sallieborough','9343 Homenick Light',15,'07458','shipping_address'),(16,'Leif Russel','+18137424330','rossie.kub@example.org','CG','Oregon','North Sallieborough','9343 Homenick Light',16,'07458','shipping_address'),(17,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',17,'44705','shipping_address'),(18,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',18,'44705','shipping_address'),(19,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',19,'44705','shipping_address'),(20,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',20,'41906-3999','shipping_address'),(21,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',21,'41906-3999','shipping_address'),(22,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',22,'41906-3999','shipping_address'),(23,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',23,'44705','shipping_address'),(24,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',24,'44705','shipping_address'),(25,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',25,'41906-3999','shipping_address'),(26,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',26,'41906-3999','shipping_address'),(27,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',27,'41906-3999','shipping_address'),(28,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',28,'41906-3999','shipping_address'),(29,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',29,'41906-3999','shipping_address'),(30,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',30,'41906-3999','shipping_address'),(31,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',31,'44705','shipping_address'),(32,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',32,'44705','shipping_address'),(33,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',33,'44705','shipping_address'),(34,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',34,'44705','shipping_address'),(35,'Dr. Abraham Gaylord','+19033261781','moen.kenneth@example.com','BJ','Tennessee','Loweview','552 Turner Mill',35,'44705','shipping_address'),(36,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',36,'66924','shipping_address'),(37,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',37,'66924','shipping_address'),(38,'Leif Russel','+18137424330','rossie.kub@example.org','CG','Oregon','North Sallieborough','9343 Homenick Light',38,'07458','shipping_address'),(39,'Leif Russel','+18137424330','rossie.kub@example.org','CG','Oregon','North Sallieborough','9343 Homenick Light',39,'07458','shipping_address'),(40,'Leif Russel','+18137424330','rossie.kub@example.org','CG','Oregon','North Sallieborough','9343 Homenick Light',40,'07458','shipping_address'),(41,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',41,'66924','shipping_address'),(42,'Prof. Hester Glover DVM','+14153180816','mara.lang@example.net','EG','Mississippi','Hammestown','31563 Glover View',42,'66924','shipping_address'),(43,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',43,'41906-3999','shipping_address'),(44,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',44,'41906-3999','shipping_address'),(45,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',45,'41906-3999','shipping_address'),(46,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',46,'41906-3999','shipping_address'),(47,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',47,'41906-3999','shipping_address'),(48,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',48,'41906-3999','shipping_address'),(49,'Celia Quitzon','+18456080002','customer@botble.com','ML','Oregon','West Joesphtown','234 Emie Stravenue',49,'41906-3999','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-12-25 16:22:02','2023-12-25 16:22:02'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-12-25 16:22:02','2023-12-25 16:22:02'),(3,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-12-25 16:22:03','2023-12-25 16:22:03'),(4,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-12-25 16:22:03','2023-12-25 16:22:03'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-12-27 08:22:03','2023-12-27 08:22:03'),(6,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-12-27 08:22:03','2023-12-27 08:22:03'),(7,'confirm_payment','Payment was confirmed (amount $2,400.00) by %user_name%',0,3,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(8,'create_shipment','Created shipment for order',0,3,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-01-04 18:22:03','2024-01-04 18:22:03'),(10,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-01-04 18:22:03','2024-01-04 18:22:03'),(11,'confirm_payment','Payment was confirmed (amount $40.00) by %user_name%',0,4,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(12,'create_shipment','Created shipment for order',0,4,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(13,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-12-26 06:22:03','2023-12-26 06:22:03'),(15,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-12-26 06:22:03','2023-12-26 06:22:03'),(16,'confirm_payment','Payment was confirmed (amount $404.00) by %user_name%',0,5,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03'),(17,'create_shipment','Created shipment for order',0,5,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-12-24 16:22:04','2023-12-24 16:22:04'),(20,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-12-24 16:22:04','2023-12-24 16:22:04'),(21,'create_shipment','Created shipment for order',0,6,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-12-23 20:22:04','2023-12-23 20:22:04'),(23,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-12-23 20:22:04','2023-12-23 20:22:04'),(24,'confirm_payment','Payment was confirmed (amount $3,300.00) by %user_name%',0,7,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(25,'create_shipment','Created shipment for order',0,7,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-12-22 08:22:04','2023-12-22 08:22:04'),(28,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-12-22 08:22:04','2023-12-22 08:22:04'),(29,'create_shipment','Created shipment for order',0,8,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-12-29 20:22:04','2023-12-29 20:22:04'),(31,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-12-29 20:22:04','2023-12-29 20:22:04'),(32,'confirm_payment','Payment was confirmed (amount $2,400.00) by %user_name%',0,9,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(33,'create_shipment','Created shipment for order',0,9,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-01-02 02:22:04','2024-01-02 02:22:04'),(35,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-01-02 02:22:04','2024-01-02 02:22:04'),(36,'confirm_payment','Payment was confirmed (amount $517.00) by %user_name%',0,10,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04'),(37,'create_shipment','Created shipment for order',0,10,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-01-02 02:22:05','2024-01-02 02:22:05'),(40,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-01-02 02:22:05','2024-01-02 02:22:05'),(41,'confirm_payment','Payment was confirmed (amount $3,399.00) by %user_name%',0,11,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(42,'create_shipment','Created shipment for order',0,11,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-12-30 16:22:05','2023-12-30 16:22:05'),(45,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-12-30 16:22:05','2023-12-30 16:22:05'),(46,'confirm_payment','Payment was confirmed (amount $934.50) by %user_name%',0,12,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(47,'create_shipment','Created shipment for order',0,12,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-12-29 08:22:05','2023-12-29 08:22:05'),(50,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-12-29 08:22:05','2023-12-29 08:22:05'),(51,'confirm_payment','Payment was confirmed (amount $2,266.00) by %user_name%',0,13,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(52,'create_shipment','Created shipment for order',0,13,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-12-28 00:22:05','2023-12-28 00:22:05'),(55,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-12-28 00:22:05','2023-12-28 00:22:05'),(56,'confirm_payment','Payment was confirmed (amount $3,897.00) by %user_name%',0,14,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(57,'create_shipment','Created shipment for order',0,14,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-12-27 08:22:05','2023-12-27 08:22:05'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-12-27 08:22:05','2023-12-27 08:22:05'),(61,'create_shipment','Created shipment for order',0,15,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-12-27 08:22:06','2023-12-27 08:22:06'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-12-27 08:22:06','2023-12-27 08:22:06'),(65,'confirm_payment','Payment was confirmed (amount $404.00) by %user_name%',0,16,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-01-02 20:22:06','2024-01-02 20:22:06'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-01-02 20:22:06','2024-01-02 20:22:06'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-12-29 04:22:06','2023-12-29 04:22:06'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-12-29 04:22:06','2023-12-29 04:22:06'),(74,'confirm_payment','Payment was confirmed (amount $1,641.00) by %user_name%',0,18,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(75,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,18,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-12-25 16:22:06','2023-12-25 16:22:06'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-12-25 16:22:06','2023-12-25 16:22:06'),(78,'confirm_payment','Payment was confirmed (amount $808.00) by %user_name%',0,19,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(79,'create_shipment','Created shipment for order',0,19,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-01-05 06:22:06','2024-01-05 06:22:06'),(81,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-01-05 06:22:06','2024-01-05 06:22:06'),(82,'confirm_payment','Payment was confirmed (amount $80.25) by %user_name%',0,20,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(83,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,20,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-01-03 02:22:06','2024-01-03 02:22:06'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-01-03 02:22:06','2024-01-03 02:22:06'),(86,'create_shipment','Created shipment for order',0,21,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-12-28 16:22:07','2023-12-28 16:22:07'),(88,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-12-28 16:22:07','2023-12-28 16:22:07'),(89,'confirm_payment','Payment was confirmed (amount $1,212.00) by %user_name%',0,22,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(90,'create_shipment','Created shipment for order',0,22,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-12-29 08:22:07','2023-12-29 08:22:07'),(93,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-12-29 08:22:07','2023-12-29 08:22:07'),(94,'create_shipment','Created shipment for order',0,23,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-12-31 08:22:07','2023-12-31 08:22:07'),(96,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-12-31 08:22:07','2023-12-31 08:22:07'),(97,'confirm_payment','Payment was confirmed (amount $1,212.00) by %user_name%',0,24,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(98,'create_shipment','Created shipment for order',0,24,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-12-28 04:22:07','2023-12-28 04:22:07'),(101,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-12-28 04:22:07','2023-12-28 04:22:07'),(102,'confirm_payment','Payment was confirmed (amount $1,283.00) by %user_name%',0,25,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(103,'create_shipment','Created shipment for order',0,25,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-01-05 10:22:07','2024-01-05 10:22:07'),(105,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-01-05 10:22:07','2024-01-05 10:22:07'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-01-03 00:22:08','2024-01-03 00:22:08'),(107,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-01-03 00:22:08','2024-01-03 00:22:08'),(108,'create_shipment','Created shipment for order',0,27,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-01-03 20:22:08','2024-01-03 20:22:08'),(111,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-01-03 20:22:08','2024-01-03 20:22:08'),(112,'confirm_payment','Payment was confirmed (amount $1,044.00) by %user_name%',0,28,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(113,'create_shipment','Created shipment for order',0,28,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-12-29 20:22:08','2023-12-29 20:22:08'),(115,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-12-29 20:22:08','2023-12-29 20:22:08'),(116,'create_shipment','Created shipment for order',0,29,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(117,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-12-29 20:22:08','2023-12-29 20:22:08'),(119,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-12-29 20:22:08','2023-12-29 20:22:08'),(120,'confirm_payment','Payment was confirmed (amount $2,192.00) by %user_name%',0,30,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(121,'create_shipment','Created shipment for order',0,30,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(122,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(123,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-01-05 16:22:08','2024-01-05 16:22:08'),(124,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-01-05 16:22:08','2024-01-05 16:22:08'),(125,'confirm_payment','Payment was confirmed (amount $240.75) by %user_name%',0,31,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(126,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,31,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-12-31 08:22:08','2023-12-31 08:22:08'),(128,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-12-31 08:22:08','2023-12-31 08:22:08'),(129,'confirm_payment','Payment was confirmed (amount $2,996.00) by %user_name%',0,32,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08'),(130,'create_shipment','Created shipment for order',0,32,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-01-03 00:22:09','2024-01-03 00:22:09'),(132,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-01-03 00:22:09','2024-01-03 00:22:09'),(133,'confirm_payment','Payment was confirmed (amount $1,200.00) by %user_name%',0,33,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(134,'create_shipment','Created shipment for order',0,33,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-01-03 10:22:09','2024-01-03 10:22:09'),(136,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-01-03 10:22:09','2024-01-03 10:22:09'),(137,'confirm_payment','Payment was confirmed (amount $2,135.00) by %user_name%',0,34,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(138,'create_shipment','Created shipment for order',0,34,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-12-31 12:22:09','2023-12-31 12:22:09'),(141,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-12-31 12:22:09','2023-12-31 12:22:09'),(142,'confirm_payment','Payment was confirmed (amount $1,212.00) by %user_name%',0,35,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(143,'create_shipment','Created shipment for order',0,35,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(144,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-01-05 20:22:09','2024-01-05 20:22:09'),(146,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-01-05 20:22:09','2024-01-05 20:22:09'),(147,'confirm_payment','Payment was confirmed (amount $428.00) by %user_name%',0,36,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(148,'create_shipment','Created shipment for order',0,36,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(149,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-01-02 20:22:09','2024-01-02 20:22:09'),(151,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-01-02 20:22:09','2024-01-02 20:22:09'),(152,'confirm_payment','Payment was confirmed (amount $1,800.00) by %user_name%',0,37,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(153,'create_shipment','Created shipment for order',0,37,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-01-05 22:22:09','2024-01-05 22:22:09'),(156,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-01-05 22:22:09','2024-01-05 22:22:09'),(157,'confirm_payment','Payment was confirmed (amount $3,849.00) by %user_name%',0,38,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09'),(158,'create_shipment','Created shipment for order',0,38,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-01-04 16:22:10','2024-01-04 16:22:10'),(160,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-01-04 16:22:10','2024-01-04 16:22:10'),(161,'confirm_payment','Payment was confirmed (amount $1,659.00) by %user_name%',0,39,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(162,'create_shipment','Created shipment for order',0,39,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(163,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-01-05 02:22:10','2024-01-05 02:22:10'),(165,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-01-05 02:22:10','2024-01-05 02:22:10'),(166,'confirm_payment','Payment was confirmed (amount $1,044.00) by %user_name%',0,40,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(167,'create_shipment','Created shipment for order',0,40,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-01-05 16:22:10','2024-01-05 16:22:10'),(169,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-01-05 16:22:10','2024-01-05 16:22:10'),(170,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-01-03 00:22:10','2024-01-03 00:22:10'),(171,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-01-03 00:22:10','2024-01-03 00:22:10'),(172,'confirm_payment','Payment was confirmed (amount $3,535.00) by %user_name%',0,42,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(173,'create_shipment','Created shipment for order',0,42,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(174,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-01-04 02:22:10','2024-01-04 02:22:10'),(175,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-01-04 02:22:10','2024-01-04 02:22:10'),(176,'confirm_payment','Payment was confirmed (amount $2,266.00) by %user_name%',0,43,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(177,'create_shipment','Created shipment for order',0,43,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(178,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-01-05 20:22:10','2024-01-05 20:22:10'),(180,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-01-05 20:22:10','2024-01-05 20:22:10'),(181,'confirm_payment','Payment was confirmed (amount $808.00) by %user_name%',0,44,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10'),(182,'create_shipment','Created shipment for order',0,44,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(183,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-01-05 04:22:11','2024-01-05 04:22:11'),(185,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-01-05 04:22:11','2024-01-05 04:22:11'),(186,'create_shipment','Created shipment for order',0,45,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(187,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(188,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-01-05 20:22:11','2024-01-05 20:22:11'),(189,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-01-05 20:22:11','2024-01-05 20:22:11'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-01-05 00:22:11','2024-01-05 00:22:11'),(191,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-01-05 00:22:11','2024-01-05 00:22:11'),(192,'create_shipment','Created shipment for order',0,47,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(193,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2024-01-06 04:22:11','2024-01-06 04:22:11'),(194,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2024-01-06 04:22:11','2024-01-06 04:22:11'),(195,'confirm_payment','Payment was confirmed (amount $160.50) by %user_name%',0,48,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(196,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,48,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(197,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2024-01-05 22:22:11','2024-01-05 22:22:11'),(198,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2024-01-05 22:22:11','2024-01-05 22:22:11'),(199,'confirm_payment','Payment was confirmed (amount $3,699.00) by %user_name%',0,49,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(200,'create_shipment','Created shipment for order',0,49,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(201,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(202,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11'),(203,'update_status','Order confirmed by %user_name%',0,5,NULL,'2024-01-06 08:22:12','2024-01-06 08:22:12'),(204,'update_status','Order confirmed by %user_name%',0,7,NULL,'2024-01-06 08:22:13','2024-01-06 08:22:13'),(205,'update_status','Order confirmed by %user_name%',0,10,NULL,'2024-01-06 08:22:13','2024-01-06 08:22:13'),(206,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-01-06 08:22:14','2024-01-06 08:22:14'),(207,'update_status','Order confirmed by %user_name%',0,12,NULL,'2024-01-06 08:22:14','2024-01-06 08:22:14'),(208,'update_status','Order confirmed by %user_name%',0,13,NULL,'2024-01-06 08:22:15','2024-01-06 08:22:15'),(209,'update_status','Order confirmed by %user_name%',0,14,NULL,'2024-01-06 08:22:15','2024-01-06 08:22:15'),(210,'update_status','Order confirmed by %user_name%',0,16,NULL,'2024-01-06 08:22:16','2024-01-06 08:22:16'),(211,'update_status','Order confirmed by %user_name%',0,22,NULL,'2024-01-06 08:22:16','2024-01-06 08:22:16'),(212,'update_status','Order confirmed by %user_name%',0,24,NULL,'2024-01-06 08:22:17','2024-01-06 08:22:17'),(213,'update_status','Order confirmed by %user_name%',0,30,NULL,'2024-01-06 08:22:17','2024-01-06 08:22:17'),(214,'update_status','Order confirmed by %user_name%',0,34,NULL,'2024-01-06 08:22:18','2024-01-06 08:22:18'),(215,'update_status','Order confirmed by %user_name%',0,35,NULL,'2024-01-06 08:22:18','2024-01-06 08:22:18'),(216,'update_status','Order confirmed by %user_name%',0,36,NULL,'2024-01-06 08:22:19','2024-01-06 08:22:19'),(217,'update_status','Order confirmed by %user_name%',0,37,NULL,'2024-01-06 08:22:20','2024-01-06 08:22:20'),(218,'update_status','Order confirmed by %user_name%',0,39,NULL,'2024-01-06 08:22:20','2024-01-06 08:22:20'),(219,'update_status','Order confirmed by %user_name%',0,43,NULL,'2024-01-06 08:22:21','2024-01-06 08:22:21'),(220,'update_status','Order confirmed by %user_name%',0,44,NULL,'2024-01-06 08:22:21','2024-01-06 08:22:21'),(221,'update_status','Order confirmed by %user_name%',0,49,NULL,'2024-01-06 08:22:22','2024-01-06 08:22:22');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',1258.00,0,'2024-01-06 08:22:02','2024-01-06 08:22:02','digital',1,NULL),(2,2,2,864.00,0.00,'[]',NULL,35,'Smart Watch External (Digital)','products/5.jpg',1602.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','digital',1,NULL),(3,3,2,1200.00,0.00,'[]',NULL,92,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1188.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','physical',0,NULL),(4,4,2,20.00,0.00,'[]',NULL,32,'Beat Headphone','products/3.jpg',1202.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','physical',0,NULL),(5,5,1,404.00,0.00,'[]',NULL,86,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',510.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','physical',0,NULL),(6,6,2,1200.00,0.00,'[]',NULL,92,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1188.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','physical',0,NULL),(7,7,3,553.00,0.00,'[]',NULL,65,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1626.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','physical',0,NULL),(8,7,3,547.00,0.00,'[]',NULL,72,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-1.jpg',2301.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','digital',1,NULL),(9,8,1,404.00,0.00,'[]',NULL,88,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',510.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','physical',0,NULL),(10,9,2,1200.00,0.00,'[]',NULL,90,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1188.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','physical',0,NULL),(11,10,1,517.00,0.00,'[]',NULL,33,'Red & Black Headphone','products/4.jpg',584.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','physical',0,NULL),(12,11,3,1133.00,0.00,'[]',NULL,46,'Smart Televisions','products/8-2.jpg',1722.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(13,12,1,40.50,0.00,'[]',NULL,31,'Smart Watches','products/2-3.jpg',530.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(14,12,1,894.00,0.00,'[]',NULL,80,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',822.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(15,13,2,1133.00,0.00,'[]',NULL,45,'Smart Televisions','products/8-1.jpg',1148.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(16,14,3,1299.00,0.00,'[]',NULL,50,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',2031.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(17,15,3,428.00,0.00,'[]',NULL,39,'Nikon HD camera','products/6.jpg',1977.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(18,15,3,562.00,0.00,'[]',NULL,68,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1989.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','physical',0,NULL),(19,16,1,404.00,0.00,'[]',NULL,87,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',510.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','physical',0,NULL),(20,17,3,513.00,0.00,'[]',NULL,41,'Audio Equipment','products/7.jpg',1770.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','physical',0,NULL),(21,18,3,547.00,0.00,'[]',NULL,71,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',2301.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','digital',7,NULL),(22,19,2,404.00,0.00,'[]',NULL,87,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1020.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','physical',0,NULL),(23,20,1,80.25,0.00,'[]',NULL,27,'Dual Camera 20MP (Digital)','products/1.jpg',629.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','digital',0,NULL),(24,21,2,600.00,0.00,'[]',NULL,64,'B&O Play Mini Bluetooth Speaker','products/14.jpg',1710.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','physical',0,NULL),(25,22,3,404.00,0.00,'[]',NULL,88,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1530.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','physical',0,NULL),(26,23,3,513.00,0.00,'[]',NULL,42,'Audio Equipment','products/7.jpg',1770.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','physical',0,NULL),(27,24,3,404.00,0.00,'[]',NULL,87,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1530.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','physical',0,NULL),(28,25,1,1283.00,0.00,'[]',NULL,52,'Xbox One Wireless Controller Black Color','products/11.jpg',703.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','physical',0,NULL),(29,26,1,547.00,0.00,'[]',NULL,73,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-2.jpg',767.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','digital',5,NULL),(30,27,2,20.00,0.00,'[]',NULL,32,'Beat Headphone','products/3.jpg',1202.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(31,28,1,1044.00,0.00,'[]',NULL,76,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',862.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(32,29,1,404.00,0.00,'[]',NULL,86,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',510.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(33,30,2,894.00,0.00,'[]',NULL,80,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',1644.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(34,30,1,404.00,0.00,'[]',NULL,87,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',510.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(35,31,3,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1887.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','digital',5,NULL),(36,32,1,596.00,0.00,'[]',NULL,47,'Samsung Smart Phone (Digital)','products/9.jpg',662.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','digital',5,NULL),(37,32,2,1200.00,0.00,'[]',NULL,91,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',1188.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','physical',0,NULL),(38,33,2,600.00,0.00,'[]',NULL,61,'B&O Play Mini Bluetooth Speaker','products/14.jpg',1710.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(39,34,3,513.00,0.00,'[]',NULL,42,'Audio Equipment','products/7.jpg',1770.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(40,34,1,596.00,0.00,'[]',NULL,47,'Samsung Smart Phone (Digital)','products/9.jpg',662.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','digital',5,NULL),(41,35,3,404.00,0.00,'[]',NULL,87,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1530.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(42,36,1,428.00,0.00,'[]',NULL,39,'Nikon HD camera','products/6.jpg',659.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(43,37,3,600.00,0.00,'[]',NULL,62,'B&O Play Mini Bluetooth Speaker','products/14.jpg',2565.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(44,38,3,1283.00,0.00,'[]',NULL,53,'Xbox One Wireless Controller Black Color','products/11-1.jpg',2109.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','physical',0,NULL),(45,39,3,553.00,0.00,'[]',NULL,65,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',1626.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(46,40,1,1044.00,0.00,'[]',NULL,76,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',862.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(47,41,2,80.25,0.00,'[]',NULL,26,'Dual Camera 20MP (Digital)','products/1.jpg',1258.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','digital',3,NULL),(48,42,1,1299.00,0.00,'[]',NULL,51,'Herschel Leather Duffle Bag In Brown Color','products/10-2.jpg',677.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(49,42,3,558.00,0.00,'[]',NULL,58,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',2595.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','digital',9,NULL),(50,42,1,562.00,0.00,'[]',NULL,70,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',663.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(51,43,1,1133.00,0.00,'[]',NULL,45,'Smart Televisions','products/8-1.jpg',574.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(52,43,1,1133.00,0.00,'[]',NULL,46,'Smart Televisions','products/8-2.jpg',574.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(53,44,2,404.00,0.00,'[]',NULL,89,'Baxter Care Hair Kit For Bearded Mens','products/22-3.jpg',1020.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','physical',0,NULL),(54,45,1,1299.00,0.00,'[]',NULL,50,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',677.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','physical',0,NULL),(55,46,3,926.00,0.00,'[]',NULL,83,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',1851.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','digital',7,NULL),(56,47,3,404.00,0.00,'[]',NULL,89,'Baxter Care Hair Kit For Bearded Mens','products/22-3.jpg',1530.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','physical',0,NULL),(57,48,2,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1258.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','digital',10,NULL),(58,49,1,1299.00,0.00,'[]',NULL,51,'Herschel Leather Duffle Bag In Brown Color','products/10-2.jpg',677.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','physical',0,NULL),(59,49,2,1200.00,0.00,'[]',NULL,90,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1188.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',3,NULL,'','pending',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,NULL,'pxN0bXOpx2Z9mHX4alVPbaF0NGkzf',1,'2023-12-25 16:22:02','2024-01-06 08:22:02',4),(2,'#10000002',3,NULL,'','pending',1728.00,0.00,0.00,NULL,NULL,0.00,1728.00,1,NULL,1,NULL,'XiFY9JbfYgP4pdZNX1OZ9EHUb4fyQ',2,'2023-12-25 16:22:03','2024-01-06 08:22:03',1),(3,'#10000003',3,'1','default','pending',2400.00,0.00,0.00,NULL,NULL,0.00,2400.00,1,NULL,1,NULL,'fTLCkC9hVe9SR1PCbCg7w4W33wkCx',3,'2023-12-27 08:22:03','2024-01-06 08:22:03',3),(4,'#10000004',9,'1','default','completed',40.00,0.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'2024-01-06 08:22:11','HrliNMPmwy82Uuu3qn64Yf8AVyM7u',4,'2024-01-04 18:22:03','2024-01-06 08:22:11',6),(5,'#10000005',9,'1','default','completed',404.00,0.00,0.00,NULL,NULL,0.00,404.00,1,NULL,1,'2024-01-06 08:22:12','UQXAIGU0WXN9aEaylWyjKCpu25yb6',5,'2023-12-26 06:22:03','2024-01-06 08:22:12',1),(6,'#10000006',9,'1','default','pending',2400.00,0.00,0.00,NULL,NULL,0.00,2400.00,1,NULL,1,NULL,'JP2xABSEVXUEKLOHitlWBrBw7239N',6,'2023-12-24 16:22:04','2024-01-06 08:22:04',3),(7,'#10000007',1,'1','default','completed',3300.00,0.00,0.00,NULL,NULL,0.00,3300.00,1,NULL,1,'2024-01-06 08:22:13','8tY94v9YaDddZY10gjLEkjIOKxAUW',7,'2023-12-23 20:22:04','2024-01-06 08:22:13',6),(8,'#10000008',1,'1','default','pending',404.00,0.00,0.00,NULL,NULL,0.00,404.00,1,NULL,1,NULL,'5p4GPvawKuvqBhaP9UkDOWhRT4dWj',8,'2023-12-22 08:22:04','2024-01-06 08:22:04',1),(9,'#10000009',1,'1','default','pending',2400.00,0.00,0.00,NULL,NULL,0.00,2400.00,1,NULL,1,NULL,'F5PeRWRmUHPdjOrEjZhHDRnzUZHfK',9,'2023-12-29 20:22:04','2024-01-06 08:22:04',3),(10,'#10000010',3,'1','default','completed',517.00,0.00,0.00,NULL,NULL,0.00,517.00,1,NULL,1,'2024-01-06 08:22:13','lDbFxNjndJZ5OY00sSKQYBpO1gV7G',10,'2024-01-02 02:22:04','2024-01-06 08:22:13',2),(11,'#10000011',3,'1','default','completed',3399.00,0.00,0.00,NULL,NULL,0.00,3399.00,1,NULL,1,'2024-01-06 08:22:14','a1ZNH7tDGtUrlRXWwLy8bb29i878W',11,'2024-01-02 02:22:05','2024-01-06 08:22:14',4),(12,'#10000012',1,'1','default','completed',934.50,0.00,0.00,NULL,NULL,0.00,934.50,1,NULL,1,'2024-01-06 08:22:14','oa2B7csGsIwC5cbbGGUhR1805Tfud',12,'2023-12-30 16:22:05','2024-01-06 08:22:14',1),(13,'#10000013',1,'1','default','completed',2266.00,0.00,0.00,NULL,NULL,0.00,2266.00,1,NULL,1,'2024-01-06 08:22:15','4OQwG6nWu0356Edj2sYSdzSnsYKQz',13,'2023-12-29 08:22:05','2024-01-06 08:22:15',4),(14,'#10000014',1,'1','default','completed',3897.00,0.00,0.00,NULL,NULL,0.00,3897.00,1,NULL,1,'2024-01-06 08:22:15','1rlKd1RQEKPNM6TCRdwXjI0RFkMV2',14,'2023-12-28 00:22:05','2024-01-06 08:22:15',3),(15,'#10000015',6,'1','default','completed',2970.00,0.00,0.00,NULL,NULL,0.00,2970.00,1,NULL,1,'2024-01-06 08:22:06','2vDodX76LrfwRf4j1KZSEGEbYTxO5',15,'2023-12-27 08:22:05','2024-01-06 08:22:06',3),(16,'#10000016',6,'1','default','completed',404.00,0.00,0.00,NULL,NULL,0.00,404.00,1,NULL,1,'2024-01-06 08:22:16','umPc5MsczcbakUxAip6UaA7T2Lpp3',16,'2023-12-27 08:22:06','2024-01-06 08:22:16',1),(17,'#10000017',9,'1','default','completed',1539.00,0.00,0.00,NULL,NULL,0.00,1539.00,1,NULL,1,'2024-01-06 08:22:06','74iS1AattYVef0rP9eOCqNrQs0H6x',17,'2024-01-02 20:22:06','2024-01-06 08:22:06',3),(18,'#10000018',9,NULL,'','completed',1641.00,0.00,0.00,NULL,NULL,0.00,1641.00,1,NULL,1,'2024-01-06 08:22:06','dnHzbcR0SOwHgBAI1ua8NgnrBlmQl',18,'2023-12-29 04:22:06','2024-01-06 08:22:06',6),(19,'#10000019',9,'1','default','pending',808.00,0.00,0.00,NULL,NULL,0.00,808.00,1,NULL,1,NULL,'dLWY1QFynzC4HG6VW9HjaZpaUXOWx',19,'2023-12-25 16:22:06','2024-01-06 08:22:06',1),(20,'#10000020',1,NULL,'','completed',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'2024-01-06 08:22:06','oruFBj7aiFCjoUGQ0yZrIRFr3Xiqc',20,'2024-01-05 06:22:06','2024-01-06 08:22:06',4),(21,'#10000021',1,'1','default','pending',1200.00,0.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,NULL,'mCbNPrUvP3ZIuSEja6OeltZXs1Ywd',21,'2024-01-03 02:22:06','2024-01-06 08:22:06',6),(22,'#10000022',1,'1','default','completed',1212.00,0.00,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,'2024-01-06 08:22:16','D75l2BE1fdKzOr5mLOQwtd02pQXtV',22,'2023-12-28 16:22:07','2024-01-06 08:22:16',1),(23,'#10000023',9,'1','default','pending',1539.00,0.00,0.00,NULL,NULL,0.00,1539.00,1,NULL,1,NULL,'kFiG3x1MhiSeRABTlTzs64vf2ISW0',23,'2023-12-29 08:22:07','2024-01-06 08:22:07',3),(24,'#10000024',9,'1','default','completed',1212.00,0.00,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,'2024-01-06 08:22:17','FwhoHeRcAwoBWR0rObk5UPxvfoSXf',24,'2023-12-31 08:22:07','2024-01-06 08:22:17',1),(25,'#10000025',1,'1','default','pending',1283.00,0.00,0.00,NULL,NULL,0.00,1283.00,1,NULL,1,NULL,'PsKtzKWrVdqFeaxLmR68cO4V0CJ1o',25,'2023-12-28 04:22:07','2024-01-06 08:22:07',3),(26,'#10000026',1,NULL,'','pending',547.00,0.00,0.00,NULL,NULL,0.00,547.00,1,NULL,1,NULL,'c5ouVvmX2jXAUXRAphCvZkdAwZLJ0',26,'2024-01-05 10:22:07','2024-01-06 08:22:07',6),(27,'#10000027',1,'1','default','completed',40.00,0.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'2024-01-06 08:22:08','AMZwFhKrz0i2sK5l5Jx8qnSl7u3zX',27,'2024-01-03 00:22:08','2024-01-06 08:22:08',6),(28,'#10000028',1,'1','default','pending',1044.00,0.00,0.00,NULL,NULL,0.00,1044.00,1,NULL,1,NULL,'DDNRSYzoxbVEMSGJpB0d0dcrqDsba',28,'2024-01-03 20:22:08','2024-01-06 08:22:08',4),(29,'#10000029',1,'1','default','completed',404.00,0.00,0.00,NULL,NULL,0.00,404.00,1,NULL,1,'2024-01-06 08:22:08','62vo2oJccSF1ZPuyhHMWReqAH68Sq',29,'2023-12-29 20:22:08','2024-01-06 08:22:08',1),(30,'#10000030',1,'1','default','completed',2192.00,0.00,0.00,NULL,NULL,0.00,2192.00,1,NULL,1,'2024-01-06 08:22:17','VI6LHAEjEZHM61ZrPjmir4BuoGvHn',30,'2023-12-29 20:22:08','2024-01-06 08:22:17',1),(31,'#10000031',9,NULL,'','completed',240.75,0.00,0.00,NULL,NULL,0.00,240.75,1,NULL,1,'2024-01-06 08:22:08','ooaRuiaBlJ9630locA6Z2yMYqRF9a',31,'2024-01-05 16:22:08','2024-01-06 08:22:08',4),(32,'#10000032',9,'1','default','pending',2996.00,0.00,0.00,NULL,NULL,0.00,2996.00,1,NULL,1,NULL,'wkU1QXUwwFfedOMqLGxFmK07uRa87',32,'2023-12-31 08:22:08','2024-01-06 08:22:08',3),(33,'#10000033',9,'1','default','pending',1200.00,0.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,NULL,'Jcs7VWI6dF5oHXOB02lB9fSOop9a1',33,'2024-01-03 00:22:09','2024-01-06 08:22:09',6),(34,'#10000034',9,'1','default','completed',2135.00,0.00,0.00,NULL,NULL,0.00,2135.00,1,NULL,1,'2024-01-06 08:22:18','0HOEkNw81lITuNeRYRHxzlqaEAqHS',34,'2024-01-03 10:22:09','2024-01-06 08:22:18',3),(35,'#10000035',9,'1','default','completed',1212.00,0.00,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,'2024-01-06 08:22:18','WchX9bjFLo7R5zpGpMSs3a1MJRZ2V',35,'2023-12-31 12:22:09','2024-01-06 08:22:18',1),(36,'#10000036',3,'1','default','completed',428.00,0.00,0.00,NULL,NULL,0.00,428.00,1,NULL,1,'2024-01-06 08:22:19','RCYHXV0SoFtnWdaQ8v51ZogpZ71wU',36,'2024-01-05 20:22:09','2024-01-06 08:22:19',3),(37,'#10000037',3,'1','default','completed',1800.00,0.00,0.00,NULL,NULL,0.00,1800.00,1,NULL,1,'2024-01-06 08:22:20','NCw4k198H0wCUxW2dWHwf1ca2sQEN',37,'2024-01-02 20:22:09','2024-01-06 08:22:20',6),(38,'#10000038',6,'1','default','pending',3849.00,0.00,0.00,NULL,NULL,0.00,3849.00,1,NULL,1,NULL,'BLLzOEFLjPzWpaJ06meK5Rr7Wlkjh',38,'2024-01-05 22:22:09','2024-01-06 08:22:09',3),(39,'#10000039',6,'1','default','completed',1659.00,0.00,0.00,NULL,NULL,0.00,1659.00,1,NULL,1,'2024-01-06 08:22:20','paa2nAIhPmUUrM59HHpIZhxMR6Jwy',39,'2024-01-04 16:22:10','2024-01-06 08:22:20',6),(40,'#10000040',6,'1','default','pending',1044.00,0.00,0.00,NULL,NULL,0.00,1044.00,1,NULL,1,NULL,'B75JXPRKQmj9j9uKGUtBf9LhSiALZ',40,'2024-01-05 02:22:10','2024-01-06 08:22:10',4),(41,'#10000041',3,NULL,'','pending',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,NULL,'o4Ji88ZYJU78j0ahcY0bXmqY2ttcM',41,'2024-01-05 16:22:10','2024-01-06 08:22:10',4),(42,'#10000042',3,'1','default','pending',3535.00,0.00,0.00,NULL,NULL,0.00,3535.00,1,NULL,1,NULL,'A3ISUc69MTanYprnE9d8SATaozJi2',42,'2024-01-03 00:22:10','2024-01-06 08:22:10',3),(43,'#10000043',1,'1','default','completed',2266.00,0.00,0.00,NULL,NULL,0.00,2266.00,1,NULL,1,'2024-01-06 08:22:21','rz74M2hsAeSKUdafDKmfgqjGoABhw',43,'2024-01-04 02:22:10','2024-01-06 08:22:21',4),(44,'#10000044',1,'1','default','completed',808.00,0.00,0.00,NULL,NULL,0.00,808.00,1,NULL,1,'2024-01-06 08:22:21','hR4JfF6PjTVc2yL8HcTkb4Zla7KfQ',44,'2024-01-05 20:22:10','2024-01-06 08:22:21',1),(45,'#10000045',1,'1','default','completed',1299.00,0.00,0.00,NULL,NULL,0.00,1299.00,1,NULL,1,'2024-01-06 08:22:11','ws7lfx0GXJCI0wlpva24HpgKewcIm',45,'2024-01-05 04:22:11','2024-01-06 08:22:11',3),(46,'#10000046',1,NULL,'','pending',2778.00,0.00,0.00,NULL,NULL,0.00,2778.00,1,NULL,1,NULL,'BL6bIVqxcIyTLqB4vjOqD8JOjWfu9',46,'2024-01-05 20:22:11','2024-01-06 08:22:11',6),(47,'#10000047',1,'1','default','pending',1212.00,0.00,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,NULL,'HDJh6Qo3CmKLvjI4P1Z8eNt3opbcw',47,'2024-01-05 00:22:11','2024-01-06 08:22:11',1),(48,'#10000048',1,NULL,'','completed',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'2024-01-06 08:22:11','AhXY2Jnd8qM17uoWVYuqqORU3ld29',48,'2024-01-06 04:22:11','2024-01-06 08:22:11',4),(49,'#10000049',1,'1','default','completed',3699.00,0.00,0.00,NULL,NULL,0.00,3699.00,1,NULL,1,'2024-01-06 08:22:22','DbHQWUKQBFYy6v4tUlEQryuGCZpKg',49,'2024-01-05 22:22:11','2024-01-06 08:22:22',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-01-06 08:21:53','2024-01-06 08:21:53',0),(2,'Size','size','text',1,1,1,'published',1,'2024-01-06 08:21:53','2024-01-06 08:21:53',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(6,2,'S','s',NULL,NULL,1,1,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(7,2,'M','m',NULL,NULL,0,2,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(8,2,'L','l',NULL,NULL,0,3,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-01-06 08:21:53','2024-01-06 08:21:53'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-01-06 08:21:53','2024-01-06 08:21:53');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (2,9),(2,18),(3,6),(3,23),(4,7),(5,16),(6,1),(7,1),(7,21),(8,5),(9,3),(9,12),(10,8),(10,19),(11,17),(12,5),(13,3),(13,14),(14,2),(14,19),(15,3),(15,8),(15,9),(16,7),(16,17),(17,5),(17,11),(17,12),(17,22),(18,15),(19,1),(19,11),(19,13),(19,21),(20,16),(20,20),(20,22),(21,10),(21,16),(21,18),(22,10),(22,15),(23,5),(23,11),(23,17),(24,2),(24,6),(25,1),(25,16),(25,23),(26,9),(26,10),(26,21),(27,9),(28,20),(28,22),(29,4),(29,12),(29,22),(30,11),(30,20),(31,2),(31,14),(31,17),(31,19),(32,13),(32,19),(33,4),(33,23),(34,6),(34,14),(35,2),(35,3),(35,4),(35,8),(35,15),(36,6),(36,10),(36,13),(36,15),(36,21),(37,12),(37,13),(37,14),(37,18),(37,20),(37,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,3),(1,4),(1,5),(1,8),(1,13),(1,14),(1,15),(1,17),(1,21),(1,23),(2,2),(2,7),(2,11),(2,16),(2,18),(3,6),(3,9),(3,10),(3,12),(3,19),(3,20),(3,22);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-01-06 08:21:48','2024-01-06 08:21:48',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-01-06 08:21:48','2024-01-06 08:21:48',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-01-06 08:21:48','2024-01-06 08:21:48',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,4,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,10,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,4,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(6,2,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,4,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,15,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(10,3,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,16,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,16,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,8,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(14,4,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,15,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(22,1,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,7,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(4,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(5,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(6,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(7,35,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(8,35,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(9,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(10,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(11,36,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(12,36,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(13,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(14,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(15,37,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(16,37,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(17,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(18,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(19,47,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(20,48,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(21,48,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(22,48,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(23,58,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(24,58,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(25,59,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(26,59,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(27,60,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(28,60,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(29,71,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(30,71,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(31,71,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(32,71,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:52\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:52','2024-01-06 08:21:52'),(33,72,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(34,72,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(35,72,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(36,72,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(37,73,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(38,73,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(39,73,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(40,73,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(41,74,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(42,74,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(43,74,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(44,74,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(45,75,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(46,75,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(47,75,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(48,75,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(49,82,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(50,82,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(51,82,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(52,83,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(53,83,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(54,83,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(55,84,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(56,84,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(57,84,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(58,85,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(59,85,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53'),(60,85,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-06 15:21:53\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-01-06 08:21:53','2024-01-06 08:21:53');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(1,21),(2,3),(2,12),(2,18),(3,6),(3,15);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2024-01-06 08:21:48','2024-01-06 08:21:48'),(2,'New','#00c9a7','published','2024-01-06 08:21:48','2024-01-06 08:21:48'),(3,'Sale','#fe9931','published','2024-01-06 08:21:48','2024-01-06 08:21:48');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,5),(1,6),(2,5),(2,6),(3,1),(3,3),(3,6),(4,1),(4,4),(4,6),(5,4),(5,6),(6,1),(6,4),(6,6),(7,1),(7,6),(8,1),(8,3),(8,4),(9,1),(9,2),(9,4),(10,2),(10,3),(11,2),(11,3),(11,6),(12,1),(12,2),(12,5),(13,5),(13,6),(14,1),(14,2),(14,5),(15,1),(15,2),(15,6),(16,1),(16,5),(16,6),(17,2),(17,4),(17,6),(18,1),(18,3),(19,3),(19,4),(19,5),(20,2),(20,3),(20,5),(21,2),(21,5),(22,1),(22,2),(22,5),(23,1),(23,2);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(2,'Mobile',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(3,'Iphone',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(4,'Printer',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(5,'Office',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(6,'IT',NULL,'published','2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(23,1,12),(31,1,16),(37,1,19),(49,1,25),(57,1,29),(77,1,39),(79,1,40),(103,1,52),(111,1,56),(115,1,58),(131,1,66),(9,2,5),(25,2,13),(43,2,22),(45,2,23),(51,2,26),(63,2,32),(65,2,33),(69,2,35),(75,2,38),(83,2,42),(89,2,45),(91,2,46),(107,2,54),(109,2,55),(113,2,57),(125,2,63),(137,2,69),(13,3,7),(19,3,10),(35,3,18),(41,3,21),(47,3,24),(53,3,27),(55,3,28),(61,3,31),(71,3,36),(93,3,47),(101,3,51),(105,3,53),(123,3,62),(1,4,1),(3,4,2),(11,4,6),(17,4,9),(21,4,11),(27,4,14),(29,4,15),(67,4,34),(81,4,41),(85,4,43),(87,4,44),(97,4,49),(119,4,60),(121,4,61),(127,4,64),(129,4,65),(133,4,67),(135,4,68),(5,5,3),(15,5,8),(33,5,17),(39,5,20),(59,5,30),(73,5,37),(95,5,48),(99,5,50),(117,5,59),(8,6,4),(22,6,11),(24,6,12),(44,6,22),(50,6,25),(54,6,27),(56,6,28),(58,6,29),(60,6,30),(68,6,34),(70,6,35),(82,6,41),(84,6,42),(86,6,43),(88,6,44),(94,6,47),(102,6,51),(112,6,56),(138,6,69),(4,7,2),(18,7,9),(20,7,10),(28,7,14),(38,7,19),(62,7,31),(80,7,40),(90,7,45),(98,7,49),(104,7,52),(118,7,59),(12,8,6),(26,8,13),(32,8,16),(34,8,17),(42,8,21),(46,8,23),(52,8,26),(64,8,32),(76,8,38),(108,8,54),(114,8,57),(116,8,58),(120,8,60),(124,8,62),(128,8,64),(132,8,66),(2,9,1),(6,9,3),(40,9,20),(48,9,24),(66,9,33),(72,9,36),(92,9,46),(100,9,50),(106,9,53),(122,9,61),(126,9,63),(136,9,68),(10,10,5),(14,10,7),(16,10,8),(30,10,15),(36,10,18),(74,10,37),(78,10,39),(96,10,48),(110,10,55),(130,10,65),(134,10,67);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,1,0),(5,28,2,1),(6,29,2,0),(7,30,2,0),(8,31,2,0),(9,32,3,1),(10,33,4,1),(11,34,4,0),(12,35,5,1),(13,36,5,0),(14,37,5,0),(15,38,6,1),(16,39,6,0),(17,40,6,0),(18,41,7,1),(19,42,7,0),(20,43,7,0),(21,44,8,1),(22,45,8,0),(23,46,8,0),(24,47,9,1),(25,48,9,0),(26,49,10,1),(27,50,10,0),(28,51,10,0),(29,52,11,1),(30,53,11,0),(31,54,11,0),(32,55,12,1),(33,56,12,0),(34,57,12,0),(35,58,13,1),(36,59,13,0),(37,60,13,0),(38,61,14,1),(39,62,14,0),(40,63,14,0),(41,64,14,0),(42,65,15,1),(43,66,15,0),(44,67,16,1),(45,68,16,0),(46,69,16,0),(47,70,16,0),(48,71,17,1),(49,72,17,0),(50,73,17,0),(51,74,17,0),(52,75,17,0),(53,76,18,1),(54,77,18,0),(55,78,19,1),(56,79,20,1),(57,80,20,0),(58,81,20,0),(59,82,21,1),(60,83,21,0),(61,84,21,0),(62,85,21,0),(63,86,22,1),(64,87,22,0),(65,88,22,0),(66,89,22,0),(67,90,23,1),(68,91,23,0),(69,92,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-01-06',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-185-A0',0,17,0,1,1,4,0,0,80.25,NULL,NULL,NULL,15.00,19.00,16.00,629.00,NULL,88100,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-165-A0',0,18,0,1,1,7,0,0,40.5,NULL,NULL,NULL,17.00,13.00,17.00,530.00,NULL,174589,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-179-A0',0,13,0,1,1,1,0,0,20,NULL,NULL,NULL,20.00,11.00,18.00,601.00,NULL,9098,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-107-A0',0,16,0,1,1,2,0,0,517,403.26,NULL,NULL,12.00,19.00,10.00,584.00,NULL,191498,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-143-A0',0,20,0,1,1,1,0,0,864,NULL,NULL,NULL,11.00,13.00,10.00,801.00,NULL,113818,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-100-A0',0,11,0,1,1,4,0,0,428,NULL,NULL,NULL,20.00,15.00,14.00,659.00,NULL,18388,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-113-A0',0,14,0,1,1,2,0,0,513,NULL,NULL,NULL,10.00,11.00,17.00,590.00,NULL,55644,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-102-A0',0,17,0,1,1,7,0,0,1133,929.06,NULL,NULL,13.00,12.00,16.00,574.00,NULL,175181,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-117-A0',0,19,0,1,1,5,0,0,596,NULL,NULL,NULL,20.00,18.00,17.00,662.00,NULL,98326,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-105-A0',0,14,0,1,0,1,0,0,1299,NULL,NULL,NULL,13.00,20.00,20.00,677.00,NULL,107499,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-193-A0',0,11,0,1,0,6,0,0,1283,NULL,NULL,NULL,19.00,12.00,13.00,703.00,NULL,109199,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-142-A0',0,15,0,1,0,7,0,0,600,498,NULL,NULL,12.00,13.00,20.00,588.00,NULL,162903,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-187-A0',0,15,0,1,0,7,0,0,558,NULL,NULL,NULL,13.00,19.00,13.00,865.00,NULL,146025,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-146-A0',0,18,0,1,0,4,0,0,600,NULL,NULL,NULL,12.00,19.00,11.00,855.00,NULL,148760,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-200-A0',0,11,0,1,0,7,0,0,553,NULL,NULL,NULL,20.00,10.00,14.00,542.00,NULL,178796,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-199-A0',0,20,0,1,0,6,0,0,562,449.6,NULL,NULL,17.00,19.00,12.00,663.00,NULL,115002,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-193-A0',0,18,0,1,0,2,0,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,147211,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,6,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-134-A0',0,19,0,1,0,5,0,0,1044,NULL,NULL,NULL,10.00,19.00,13.00,862.00,NULL,198734,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-154-A0',0,10,0,1,0,2,0,0,973,NULL,NULL,NULL,19.00,19.00,12.00,567.00,NULL,26377,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-195-A0',0,18,0,1,0,6,0,0,894,661.56,NULL,NULL,20.00,12.00,18.00,822.00,NULL,39692,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-119-A0',0,20,0,1,0,1,0,0,926,NULL,NULL,NULL,11.00,14.00,14.00,617.00,NULL,102361,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,6,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-116-A0',0,17,0,1,0,3,0,0,404,NULL,NULL,NULL,10.00,19.00,12.00,510.00,NULL,177960,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-142-A0',0,14,0,1,0,1,0,0,1200,NULL,NULL,NULL,12.00,17.00,15.00,594.00,NULL,116447,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0',0,17,0,1,0,4,1,0,80.25,NULL,NULL,NULL,15.00,19.00,16.00,629.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0-A1',0,17,0,1,0,4,1,0,80.25,NULL,NULL,NULL,15.00,19.00,16.00,629.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0-A2',0,17,0,1,0,4,1,0,80.25,NULL,NULL,NULL,15.00,19.00,16.00,629.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(27,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0-A3',0,17,0,1,0,4,1,0,80.25,NULL,NULL,NULL,15.00,19.00,16.00,629.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-165-A0',0,18,0,1,0,7,1,0,40.5,NULL,NULL,NULL,17.00,13.00,17.00,530.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-165-A0-A1',0,18,0,1,0,7,1,0,40.5,NULL,NULL,NULL,17.00,13.00,17.00,530.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-165-A0-A2',0,18,0,1,0,7,1,0,40.5,NULL,NULL,NULL,17.00,13.00,17.00,530.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]','SW-165-A0-A3',0,18,0,1,0,7,1,0,40.5,NULL,NULL,NULL,17.00,13.00,17.00,530.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-179-A0',0,13,0,1,0,1,1,0,20,NULL,NULL,NULL,20.00,11.00,18.00,601.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-107-A0',0,16,0,1,0,2,1,0,517,403.26,NULL,NULL,12.00,19.00,10.00,584.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-107-A0-A1',0,16,0,1,0,2,1,0,517,408.43,NULL,NULL,12.00,19.00,10.00,584.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-143-A0',0,20,0,1,0,1,1,0,864,NULL,NULL,NULL,11.00,13.00,10.00,801.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(36,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-143-A0-A1',0,20,0,1,0,1,1,0,864,NULL,NULL,NULL,11.00,13.00,10.00,801.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(37,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-143-A0-A2',0,20,0,1,0,1,1,0,864,NULL,NULL,NULL,11.00,13.00,10.00,801.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(38,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-100-A0',0,11,0,1,0,4,1,0,428,NULL,NULL,NULL,20.00,15.00,14.00,659.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-100-A0-A1',0,11,0,1,0,4,1,0,428,NULL,NULL,NULL,20.00,15.00,14.00,659.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-100-A0-A2',0,11,0,1,0,4,1,0,428,NULL,NULL,NULL,20.00,15.00,14.00,659.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-113-A0',0,14,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,11.00,17.00,590.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-113-A0-A1',0,14,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,11.00,17.00,590.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-113-A0-A2',0,14,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,11.00,17.00,590.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-102-A0',0,17,0,1,0,7,1,0,1133,929.06,NULL,NULL,13.00,12.00,16.00,574.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-102-A0-A1',0,17,0,1,0,7,1,0,1133,872.41,NULL,NULL,13.00,12.00,16.00,574.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-102-A0-A2',0,17,0,1,0,7,1,0,1133,940.39,NULL,NULL,13.00,12.00,16.00,574.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(47,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-117-A0',0,19,0,1,0,5,1,0,596,NULL,NULL,NULL,20.00,18.00,17.00,662.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(48,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-117-A0-A1',0,19,0,1,0,5,1,0,596,NULL,NULL,NULL,20.00,18.00,17.00,662.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(49,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-105-A0',0,14,0,1,0,1,1,0,1299,NULL,NULL,NULL,13.00,20.00,20.00,677.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-105-A0-A1',0,14,0,1,0,1,1,0,1299,NULL,NULL,NULL,13.00,20.00,20.00,677.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-105-A0-A2',0,14,0,1,0,1,1,0,1299,NULL,NULL,NULL,13.00,20.00,20.00,677.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-193-A0',0,11,0,1,0,6,1,0,1283,NULL,NULL,NULL,19.00,12.00,13.00,703.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-193-A0-A1',0,11,0,1,0,6,1,0,1283,NULL,NULL,NULL,19.00,12.00,13.00,703.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-193-A0-A2',0,11,0,1,0,6,1,0,1283,NULL,NULL,NULL,19.00,12.00,13.00,703.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-142-A0',0,15,0,1,0,7,1,0,600,498,NULL,NULL,12.00,13.00,20.00,588.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-142-A0-A1',0,15,0,1,0,7,1,0,600,474,NULL,NULL,12.00,13.00,20.00,588.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(57,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-142-A0-A2',0,15,0,1,0,7,1,0,600,522,NULL,NULL,12.00,13.00,20.00,588.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(58,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-187-A0',0,15,0,1,0,7,1,0,558,NULL,NULL,NULL,13.00,19.00,13.00,865.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(59,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-187-A0-A1',0,15,0,1,0,7,1,0,558,NULL,NULL,NULL,13.00,19.00,13.00,865.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(60,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-187-A0-A2',0,15,0,1,0,7,1,0,558,NULL,NULL,NULL,13.00,19.00,13.00,865.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(61,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-146-A0',0,18,0,1,0,4,1,0,600,NULL,NULL,NULL,12.00,19.00,11.00,855.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-146-A0-A1',0,18,0,1,0,4,1,0,600,NULL,NULL,NULL,12.00,19.00,11.00,855.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-146-A0-A2',0,18,0,1,0,4,1,0,600,NULL,NULL,NULL,12.00,19.00,11.00,855.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-146-A0-A3',0,18,0,1,0,4,1,0,600,NULL,NULL,NULL,12.00,19.00,11.00,855.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-200-A0',0,11,0,1,0,7,1,0,553,NULL,NULL,NULL,20.00,10.00,14.00,542.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-200-A0-A1',0,11,0,1,0,7,1,0,553,NULL,NULL,NULL,20.00,10.00,14.00,542.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(67,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-199-A0',0,20,0,1,0,6,1,0,562,449.6,NULL,NULL,17.00,19.00,12.00,663.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-199-A0-A1',0,20,0,1,0,6,1,0,562,505.8,NULL,NULL,17.00,19.00,12.00,663.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-199-A0-A2',0,20,0,1,0,6,1,0,562,494.56,NULL,NULL,17.00,19.00,12.00,663.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-199-A0-A3',0,20,0,1,0,6,1,0,562,449.6,NULL,NULL,17.00,19.00,12.00,663.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-193-A0',0,18,0,1,0,2,1,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,0,'2024-01-06 08:21:52','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(72,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-193-A0-A1',0,18,0,1,0,2,1,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(73,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-193-A0-A2',0,18,0,1,0,2,1,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(74,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-3.jpg\"]','SW-193-A0-A3',0,18,0,1,0,2,1,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(75,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-193-A0-A4',0,18,0,1,0,2,1,0,547,NULL,NULL,NULL,19.00,18.00,19.00,767.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(76,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-134-A0',0,19,0,1,0,5,1,0,1044,NULL,NULL,NULL,10.00,19.00,13.00,862.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(77,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-134-A0-A1',0,19,0,1,0,5,1,0,1044,NULL,NULL,NULL,10.00,19.00,13.00,862.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-154-A0',0,10,0,1,0,2,1,0,973,NULL,NULL,NULL,19.00,19.00,12.00,567.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-195-A0',0,18,0,1,0,6,1,0,894,661.56,NULL,NULL,20.00,12.00,18.00,822.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-195-A0-A1',0,18,0,1,0,6,1,0,894,795.66,NULL,NULL,20.00,12.00,18.00,822.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(81,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-195-A0-A2',0,18,0,1,0,6,1,0,894,697.32,NULL,NULL,20.00,12.00,18.00,822.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(82,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-119-A0',0,20,0,1,0,1,1,0,926,NULL,NULL,NULL,11.00,14.00,14.00,617.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(83,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-119-A0-A1',0,20,0,1,0,1,1,0,926,NULL,NULL,NULL,11.00,14.00,14.00,617.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(84,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-119-A0-A2',0,20,0,1,0,1,1,0,926,NULL,NULL,NULL,11.00,14.00,14.00,617.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(85,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-119-A0-A3',0,20,0,1,0,1,1,0,926,NULL,NULL,NULL,11.00,14.00,14.00,617.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(86,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-116-A0',0,17,0,1,0,3,1,0,404,NULL,NULL,NULL,10.00,19.00,12.00,510.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(87,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-116-A0-A1',0,17,0,1,0,3,1,0,404,NULL,NULL,NULL,10.00,19.00,12.00,510.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(88,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-116-A0-A2',0,17,0,1,0,3,1,0,404,NULL,NULL,NULL,10.00,19.00,12.00,510.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(89,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-3.jpg\"]','SW-116-A0-A3',0,17,0,1,0,3,1,0,404,NULL,NULL,NULL,10.00,19.00,12.00,510.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(90,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-142-A0',0,14,0,1,0,1,1,0,1200,NULL,NULL,NULL,12.00,17.00,15.00,594.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(91,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-142-A0-A1',0,14,0,1,0,1,1,0,1200,NULL,NULL,NULL,12.00,17.00,15.00,594.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(92,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-142-A0-A2',0,14,0,1,0,1,1,0,1200,NULL,NULL,NULL,12.00,17.00,15.00,594.00,NULL,0,'2024-01-06 08:21:53','2024-01-06 08:22:02','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,10,1,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/12.jpg\",\"products\\/17-3.jpg\",\"products\\/23.jpg\"]'),(2,2,19,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10.jpg\",\"products\\/16.jpg\",\"products\\/21-1.jpg\"]'),(3,1,16,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\",\"products\\/11-2.jpg\",\"products\\/12-2.jpg\"]'),(4,4,18,1.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\"]'),(5,3,14,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-3.jpg\"]'),(6,1,5,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/14.jpg\",\"products\\/17-1.jpg\",\"products\\/23.jpg\"]'),(7,5,20,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-3.jpg\",\"products\\/19-2.jpg\"]'),(8,5,21,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/8-1.jpg\",\"products\\/20-3.jpg\"]'),(9,3,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\"]'),(10,9,1,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13-1.jpg\",\"products\\/22-3.jpg\",\"products\\/23-1.jpg\"]'),(11,6,8,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/16.jpg\"]'),(13,7,11,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-2.jpg\",\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/17.jpg\"]'),(14,2,20,5.00,'Best ecommerce CMS online store!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18-2.jpg\",\"products\\/22.jpg\"]'),(15,1,17,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/20.jpg\"]'),(16,4,6,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\"]'),(17,3,15,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-1.jpg\"]'),(18,8,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10.jpg\"]'),(19,3,7,2.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/15-1.jpg\"]'),(20,10,8,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18-2.jpg\"]'),(21,7,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23.jpg\"]'),(22,7,8,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\",\"products\\/5-2.jpg\",\"products\\/8-3.jpg\",\"products\\/23-2.jpg\"]'),(23,10,20,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13.jpg\",\"products\\/20-1.jpg\",\"products\\/20-3.jpg\"]'),(24,1,22,4.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-1.jpg\",\"products\\/20-3.jpg\"]'),(25,10,10,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/19.jpg\"]'),(26,9,2,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23-2.jpg\"]'),(27,10,6,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-1.jpg\"]'),(28,9,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-1.jpg\",\"products\\/20-3.jpg\"]'),(29,1,18,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10.jpg\",\"products\\/13-1.jpg\",\"products\\/21-2.jpg\"]'),(30,2,22,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21.jpg\"]'),(31,5,14,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18-1.jpg\"]'),(32,8,16,5.00,'Best ecommerce CMS online store!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23-3.jpg\"]'),(35,8,14,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-2.jpg\",\"products\\/22-2.jpg\"]'),(36,5,23,2.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/22-1.jpg\"]'),(37,3,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\",\"products\\/13-1.jpg\",\"products\\/21-2.jpg\"]'),(38,6,11,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21.jpg\",\"products\\/22-3.jpg\"]'),(39,2,1,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-1.jpg\",\"products\\/22-1.jpg\"]'),(42,4,8,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-3.jpg\",\"products\\/13.jpg\",\"products\\/16.jpg\",\"products\\/21-1.jpg\"]'),(43,9,9,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11.jpg\",\"products\\/12-2.jpg\"]'),(44,6,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\",\"products\\/8-3.jpg\",\"products\\/20-3.jpg\"]'),(45,10,15,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\",\"products\\/18-3.jpg\"]'),(46,5,3,5.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\"]'),(47,1,8,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\",\"products\\/12-2.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]'),(48,8,17,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-2.jpg\",\"products\\/21-1.jpg\"]'),(49,5,2,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-1.jpg\",\"products\\/8-3.jpg\",\"products\\/20-1.jpg\",\"products\\/21-2.jpg\"]'),(50,1,12,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9.jpg\"]'),(51,6,16,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9.jpg\",\"products\\/20-1.jpg\"]'),(53,4,13,3.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/11.jpg\",\"products\\/17.jpg\"]'),(54,8,6,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8.jpg\"]'),(55,10,14,1.00,'Best ecommerce CMS online store!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\",\"products\\/13-1.jpg\"]'),(56,7,13,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5.jpg\",\"products\\/10-2.jpg\",\"products\\/11.jpg\"]'),(57,8,21,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-2.jpg\",\"products\\/20-1.jpg\",\"products\\/21-2.jpg\"]'),(60,9,23,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-3.jpg\",\"products\\/12-3.jpg\",\"products\\/16.jpg\"]'),(61,9,15,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-1.jpg\",\"products\\/14.jpg\"]'),(63,5,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/12-2.jpg\"]'),(64,3,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-1.jpg\",\"products\\/18-2.jpg\"]'),(66,9,4,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/11-1.jpg\",\"products\\/18.jpg\"]'),(69,10,22,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/22-1.jpg\",\"products\\/23-3.jpg\"]'),(70,4,9,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/22.jpg\"]'),(72,5,15,4.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10.jpg\",\"products\\/15.jpg\",\"products\\/23.jpg\"]'),(74,10,4,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/12-3.jpg\",\"products\\/19-2.jpg\"]'),(75,6,5,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/12-2.jpg\",\"products\\/17.jpg\",\"products\\/20-3.jpg\"]'),(78,4,16,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11.jpg\",\"products\\/20-3.jpg\"]'),(80,2,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-1.jpg\",\"products\\/22-1.jpg\"]'),(81,10,3,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\"]'),(82,8,22,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\"]'),(83,3,9,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12.jpg\"]'),(84,3,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/7.jpg\",\"products\\/19-3.jpg\",\"products\\/23.jpg\"]'),(85,8,8,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18-3.jpg\"]'),(86,3,10,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/11-2.jpg\",\"products\\/12-2.jpg\"]'),(88,4,23,4.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-1.jpg\",\"products\\/19-3.jpg\",\"products\\/20-3.jpg\",\"products\\/21-2.jpg\"]'),(89,6,23,2.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/9-2.jpg\",\"products\\/22-3.jpg\",\"products\\/23.jpg\"]'),(91,4,1,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/17-3.jpg\",\"products\\/23-1.jpg\"]'),(92,2,15,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5.jpg\",\"products\\/8-3.jpg\"]'),(93,7,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23-1.jpg\"]'),(94,6,18,2.00,'Best ecommerce CMS online store!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/16.jpg\",\"products\\/17-1.jpg\",\"products\\/23-1.jpg\"]'),(97,5,9,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\",\"products\\/18-2.jpg\"]'),(98,10,2,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-2.jpg\",\"products\\/20.jpg\"]'),(99,8,1,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/23-1.jpg\",\"products\\/23-3.jpg\"]'),(101,3,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\",\"products\\/14.jpg\"]'),(102,2,14,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5.jpg\",\"products\\/8-3.jpg\",\"products\\/9-1.jpg\",\"products\\/13.jpg\"]'),(104,4,5,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\"]'),(105,4,10,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17.jpg\",\"products\\/19-2.jpg\",\"products\\/22-1.jpg\",\"products\\/22-3.jpg\"]'),(107,6,20,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13.jpg\",\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/19-2.jpg\"]'),(111,9,18,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/23-3.jpg\"]'),(113,1,14,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-1.jpg\",\"products\\/11.jpg\",\"products\\/18-1.jpg\",\"products\\/22.jpg\"]'),(116,8,20,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/15.jpg\"]'),(117,2,6,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/22-3.jpg\",\"products\\/23-2.jpg\"]'),(119,9,21,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/19-2.jpg\"]'),(121,3,13,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\",\"products\\/20-3.jpg\",\"products\\/22-1.jpg\"]'),(122,3,6,5.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-3.jpg\",\"products\\/19-3.jpg\"]'),(123,5,13,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/20-1.jpg\",\"products\\/23-2.jpg\"]'),(124,6,7,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/18-1.jpg\"]'),(126,5,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-1.jpg\",\"products\\/12.jpg\",\"products\\/21.jpg\"]'),(127,2,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(129,5,12,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\",\"products\\/17-1.jpg\",\"products\\/20-3.jpg\",\"products\\/22-3.jpg\"]'),(130,6,15,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\"]'),(131,10,5,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18.jpg\"]'),(132,2,2,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-2.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(133,6,9,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21.jpg\"]'),(134,8,12,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\",\"products\\/15-1.jpg\",\"products\\/18-1.jpg\"]'),(135,7,7,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]'),(136,7,23,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/20-1.jpg\"]'),(137,9,7,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13-1.jpg\",\"products\\/20-2.jpg\"]'),(140,9,10,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2.jpg\",\"products\\/9-1.jpg\",\"products\\/13-1.jpg\"]'),(142,6,2,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12.jpg\",\"products\\/20-3.jpg\"]'),(144,4,4,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-3.jpg\",\"products\\/20.jpg\",\"products\\/23-3.jpg\"]'),(145,10,11,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\",\"products\\/19-2.jpg\",\"products\\/22.jpg\",\"products\\/23-3.jpg\"]'),(146,9,17,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\"]'),(148,9,14,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/15.jpg\",\"products\\/17-2.jpg\"]'),(149,3,17,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/15.jpg\"]'),(150,6,22,5.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\",\"products\\/18-3.jpg\",\"products\\/22.jpg\"]'),(152,2,4,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-3.jpg\"]'),(155,8,15,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13.jpg\",\"products\\/19.jpg\"]'),(156,3,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\"]'),(159,5,19,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-1.jpg\"]'),(161,1,13,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/14.jpg\",\"products\\/17-1.jpg\",\"products\\/19-2.jpg\",\"products\\/22-3.jpg\"]'),(162,9,3,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9.jpg\",\"products\\/11.jpg\"]'),(166,4,21,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\",\"products\\/11-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-2.jpg\"]'),(169,10,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/19-3.jpg\"]'),(170,9,13,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/14.jpg\",\"products\\/19-2.jpg\",\"products\\/21-2.jpg\"]'),(171,10,21,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/15-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\",\"products\\/23-2.jpg\"]'),(173,2,17,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-1.jpg\",\"products\\/19-3.jpg\",\"products\\/22-3.jpg\"]'),(176,4,19,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\",\"products\\/15-1.jpg\"]'),(178,6,14,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(179,5,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-3.jpg\",\"products\\/9.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(181,6,3,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\",\"products\\/8-3.jpg\",\"products\\/21-2.jpg\",\"products\\/22-2.jpg\"]'),(184,1,21,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17-3.jpg\"]'),(185,7,2,5.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\",\"products\\/4-3.jpg\",\"products\\/20.jpg\",\"products\\/22-1.jpg\"]'),(186,2,21,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/14.jpg\"]'),(189,10,18,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-3.jpg\"]'),(190,7,4,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\",\"products\\/12.jpg\",\"products\\/17-3.jpg\",\"products\\/19-2.jpg\"]'),(194,9,11,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-2.jpg\",\"products\\/18-1.jpg\",\"products\\/23.jpg\"]'),(195,1,6,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-1.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\"]'),(196,3,21,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/17.jpg\"]'),(198,2,18,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/20-3.jpg\"]'),(200,5,11,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\"]'),(201,10,13,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\",\"products\\/8-3.jpg\",\"products\\/11.jpg\"]'),(202,9,12,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18.jpg\"]'),(203,3,23,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/20-3.jpg\"]'),(204,2,5,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-1.jpg\"]'),(210,10,7,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/12-2.jpg\",\"products\\/15-1.jpg\",\"products\\/21-2.jpg\"]'),(213,5,1,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-2.jpg\"]'),(214,3,18,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\"]'),(215,9,22,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/9-2.jpg\",\"products\\/10-1.jpg\"]'),(216,2,8,1.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9.jpg\"]'),(219,1,20,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\"]'),(220,8,23,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23-2.jpg\"]'),(224,7,10,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\",\"products\\/23-2.jpg\"]'),(225,2,7,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11.jpg\"]'),(227,5,4,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-2.jpg\",\"products\\/20.jpg\",\"products\\/23-2.jpg\"]'),(228,6,12,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/12-3.jpg\",\"products\\/14.jpg\",\"products\\/23.jpg\"]'),(232,2,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/22.jpg\"]'),(234,7,22,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\",\"products\\/21-2.jpg\"]'),(235,1,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-3.jpg\",\"products\\/18-1.jpg\"]'),(238,10,16,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/2.jpg\"]'),(239,6,19,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10.jpg\",\"products\\/11-3.jpg\",\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(243,4,17,1.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-3.jpg\"]'),(244,9,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/19-1.jpg\",\"products\\/22-3.jpg\"]'),(247,7,3,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/10.jpg\",\"products\\/14.jpg\"]'),(248,7,14,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-1.jpg\",\"products\\/20-2.jpg\"]'),(251,10,12,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/19-1.jpg\",\"products\\/20-3.jpg\"]'),(259,1,4,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/3.jpg\",\"products\\/13-1.jpg\",\"products\\/19-1.jpg\",\"products\\/20-2.jpg\"]'),(263,5,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9.jpg\",\"products\\/17-3.jpg\",\"products\\/23.jpg\"]'),(267,2,10,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/18-2.jpg\",\"products\\/22-2.jpg\",\"products\\/22.jpg\"]'),(268,6,10,5.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-2.jpg\",\"products\\/5.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]'),(279,9,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\"]'),(282,7,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\"]'),(288,5,17,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12.jpg\",\"products\\/20-3.jpg\",\"products\\/22.jpg\"]'),(296,6,1,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18-3.jpg\",\"products\\/22-3.jpg\"]'),(298,3,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/8.jpg\",\"products\\/10-2.jpg\"]'),(307,7,5,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/22-3.jpg\"]'),(309,7,17,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-2.jpg\"]'),(336,8,2,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-1.jpg\",\"products\\/19-3.jpg\",\"products\\/22-2.jpg\",\"products\\/23-1.jpg\"]'),(350,3,20,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/16.jpg\"]'),(351,1,19,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/22-1.jpg\"]'),(354,4,15,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\",\"products\\/5.jpg\",\"products\\/17-1.jpg\"]'),(355,8,9,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13.jpg\",\"products\\/14.jpg\"]'),(356,1,3,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-2.jpg\"]'),(358,4,2,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/17-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(361,8,5,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\",\"products\\/9-2.jpg\",\"products\\/22.jpg\"]'),(384,2,12,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-2.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),(395,3,3,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/21-1.jpg\"]'),(397,8,10,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\"]'),(400,8,4,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-3.jpg\"]'),(402,4,14,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/19-1.jpg\",\"products\\/22-2.jpg\"]'),(404,9,16,2.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\",\"products\\/5-1.jpg\",\"products\\/11-3.jpg\"]'),(409,1,1,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/1.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/17-2.jpg\"]'),(415,4,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/17-2.jpg\",\"products\\/22.jpg\"]'),(420,1,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\"]'),(423,4,7,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/10-2.jpg\",\"products\\/17-1.jpg\"]'),(428,4,12,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21-1.jpg\",\"products\\/23-1.jpg\",\"products\\/23-3.jpg\"]'),(437,5,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/21-1.jpg\"]'),(443,7,21,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/15-1.jpg\",\"products\\/17-3.jpg\",\"products\\/18-2.jpg\"]'),(447,7,1,3.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/14.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(450,6,6,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-2.jpg\",\"products\\/22-2.jpg\"]'),(451,2,11,5.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23-1.jpg\"]'),(459,8,11,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-1.jpg\",\"products\\/12-2.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(469,7,9,4.00,'Clean & perfect source code','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11.jpg\",\"products\\/19-2.jpg\",\"products\\/19.jpg\",\"products\\/21-1.jpg\"]'),(470,3,11,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/12-1.jpg\"]'),(472,1,9,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/16.jpg\"]'),(486,1,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\",\"products\\/23-2.jpg\"]'),(506,7,16,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-3.jpg\",\"products\\/23-3.jpg\"]'),(507,6,17,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\",\"products\\/13-1.jpg\",\"products\\/21-2.jpg\"]'),(511,8,19,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/13.jpg\",\"products\\/15-1.jpg\",\"products\\/23-3.jpg\"]'),(522,3,4,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/2-2.jpg\",\"products\\/2.jpg\",\"products\\/18.jpg\"]'),(527,8,18,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\"]'),(545,8,13,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/22.jpg\"]'),(553,8,3,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-2.jpg\",\"products\\/18.jpg\",\"products\\/23.jpg\"]'),(567,9,19,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\"]'),(570,4,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8-2.jpg\",\"products\\/12-1.jpg\",\"products\\/21.jpg\"]'),(578,9,6,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/14.jpg\",\"products\\/18-2.jpg\",\"products\\/21-2.jpg\"]'),(588,7,18,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/8.jpg\"]'),(593,2,23,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/23.jpg\"]'),(594,1,2,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-1.jpg\",\"products\\/9.jpg\",\"products\\/14.jpg\"]'),(616,2,3,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/11-2.jpg\",\"products\\/17.jpg\"]'),(662,5,7,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/10-1.jpg\"]'),(671,4,11,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\",\"products\\/17-1.jpg\"]'),(687,1,7,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-2.jpg\",\"products\\/8.jpg\",\"products\\/10-2.jpg\",\"products\\/22.jpg\"]'),(691,10,23,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/12-2.jpg\"]'),(700,3,22,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/8-1.jpg\",\"products\\/13.jpg\",\"products\\/23-2.jpg\"]'),(707,7,20,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-3.jpg\",\"products\\/17-3.jpg\",\"products\\/21.jpg\"]'),(786,7,19,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/5-3.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\",\"products\\/23-2.jpg\"]'),(788,6,21,3.00,'Good app, good backup service and support. Good documentation.','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/6.jpg\",\"products\\/10-1.jpg\",\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(842,4,3,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-06 08:21:56','2024-01-06 08:21:56','[\"products\\/4-1.jpg\",\"products\\/11-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,3,'2023-12-27 08:22:03','2023-12-27 08:22:03','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,3,'2024-01-04 16:22:03','2024-01-06 08:22:03','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,4,'2024-01-04 18:22:03','2024-01-04 18:22:03','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,4,'2024-01-04 18:22:03','2024-01-06 08:22:03','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,4,'2024-01-06 08:22:03','2024-01-06 08:22:03','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,5,'2023-12-26 06:22:03','2023-12-26 06:22:03','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,5,'2024-01-04 18:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,5,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,6,'2023-12-24 16:22:04','2023-12-24 16:22:04','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,6,'2024-01-04 18:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,7,'2023-12-23 20:22:04','2023-12-23 20:22:04','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,7,'2024-01-04 20:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,7,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,8,'2023-12-22 08:22:04','2023-12-22 08:22:04','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,8,'2024-01-04 20:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,9,'2023-12-29 20:22:04','2023-12-29 20:22:04','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,9,'2024-01-04 20:22:04','2024-01-06 08:22:04','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,8,10,'2024-01-02 02:22:04','2024-01-02 02:22:04','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,10,'2024-01-04 22:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,10,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,9,11,'2024-01-02 02:22:05','2024-01-02 02:22:05','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,11,'2024-01-04 22:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,11,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,12,'2023-12-30 16:22:05','2023-12-30 16:22:05','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,12,'2024-01-05 00:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,12,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,13,'2023-12-29 08:22:05','2023-12-29 08:22:05','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,13,'2024-01-05 00:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,13,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,14,'2023-12-28 00:22:05','2023-12-28 00:22:05','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,14,'2024-01-05 00:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,14,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,15,'2023-12-27 08:22:05','2023-12-27 08:22:05','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,15,'2024-01-05 02:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,15,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,14,16,'2023-12-27 08:22:06','2023-12-27 08:22:06','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,16,'2024-01-05 02:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,16,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,17,'2024-01-02 20:22:06','2024-01-02 20:22:06','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,17,'2024-01-05 04:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(41,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,17,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,17,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,16,19,'2023-12-25 16:22:06','2023-12-25 16:22:06','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,19,'2024-01-05 04:22:06','2024-01-06 08:22:06','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,17,21,'2024-01-03 02:22:06','2024-01-03 02:22:06','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,21,'2024-01-05 06:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(47,'create_from_order','Shipping was created from order %order_id%',0,18,22,'2023-12-28 16:22:07','2023-12-28 16:22:07','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,22,'2024-01-05 06:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,22,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(50,'create_from_order','Shipping was created from order %order_id%',0,19,23,'2023-12-29 08:22:07','2023-12-29 08:22:07','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,23,'2024-01-05 08:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(52,'create_from_order','Shipping was created from order %order_id%',0,20,24,'2023-12-31 08:22:07','2023-12-31 08:22:07','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,24,'2024-01-05 08:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(54,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,24,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(55,'create_from_order','Shipping was created from order %order_id%',0,21,25,'2023-12-28 04:22:07','2023-12-28 04:22:07','Botble\\ACL\\Models\\User'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,25,'2024-01-05 10:22:07','2024-01-06 08:22:07','Botble\\ACL\\Models\\User'),(57,'create_from_order','Shipping was created from order %order_id%',0,22,27,'2024-01-03 00:22:08','2024-01-03 00:22:08','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,27,'2024-01-05 12:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(59,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,22,27,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,27,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,23,28,'2024-01-03 20:22:08','2024-01-03 20:22:08','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,28,'2024-01-05 12:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(63,'create_from_order','Shipping was created from order %order_id%',0,24,29,'2023-12-29 20:22:08','2023-12-29 20:22:08','Botble\\ACL\\Models\\User'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,29,'2024-01-05 12:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(65,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,24,29,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,29,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(67,'create_from_order','Shipping was created from order %order_id%',0,25,30,'2023-12-29 20:22:08','2023-12-29 20:22:08','Botble\\ACL\\Models\\User'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,30,'2024-01-05 14:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,30,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,26,32,'2023-12-31 08:22:08','2023-12-31 08:22:08','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,32,'2024-01-05 16:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(72,'create_from_order','Shipping was created from order %order_id%',0,27,33,'2024-01-03 00:22:09','2024-01-03 00:22:09','Botble\\ACL\\Models\\User'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,33,'2024-01-05 16:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(74,'create_from_order','Shipping was created from order %order_id%',0,28,34,'2024-01-03 10:22:09','2024-01-03 10:22:09','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,34,'2024-01-05 18:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,34,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(77,'create_from_order','Shipping was created from order %order_id%',0,29,35,'2023-12-31 12:22:09','2023-12-31 12:22:09','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,35,'2024-01-05 18:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,35,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(80,'create_from_order','Shipping was created from order %order_id%',0,30,36,'2024-01-05 20:22:09','2024-01-05 20:22:09','Botble\\ACL\\Models\\User'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,36,'2024-01-05 20:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,36,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(83,'create_from_order','Shipping was created from order %order_id%',0,31,37,'2024-01-02 20:22:09','2024-01-02 20:22:09','Botble\\ACL\\Models\\User'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,37,'2024-01-05 20:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,37,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\ACL\\Models\\User'),(86,'create_from_order','Shipping was created from order %order_id%',0,32,38,'2024-01-05 22:22:09','2024-01-05 22:22:09','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,38,'2024-01-05 22:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(88,'create_from_order','Shipping was created from order %order_id%',0,33,39,'2024-01-04 16:22:10','2024-01-04 16:22:10','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,39,'2024-01-05 22:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,39,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(91,'create_from_order','Shipping was created from order %order_id%',0,34,40,'2024-01-05 02:22:10','2024-01-05 02:22:10','Botble\\ACL\\Models\\User'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,40,'2024-01-05 22:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(93,'create_from_order','Shipping was created from order %order_id%',0,35,42,'2024-01-03 00:22:10','2024-01-03 00:22:10','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,42,'2024-01-06 00:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,36,43,'2024-01-04 02:22:10','2024-01-04 02:22:10','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,43,'2024-01-06 02:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,43,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\ACL\\Models\\User'),(98,'create_from_order','Shipping was created from order %order_id%',0,37,44,'2024-01-05 20:22:10','2024-01-05 20:22:10','Botble\\ACL\\Models\\User'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,44,'2024-01-06 02:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,44,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(101,'create_from_order','Shipping was created from order %order_id%',0,38,45,'2024-01-05 04:22:11','2024-01-05 04:22:11','Botble\\ACL\\Models\\User'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,45,'2024-01-06 04:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(103,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,38,45,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,45,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(105,'create_from_order','Shipping was created from order %order_id%',0,39,47,'2024-01-05 00:22:11','2024-01-05 00:22:11','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,47,'2024-01-06 04:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(107,'create_from_order','Shipping was created from order %order_id%',0,40,49,'2024-01-05 22:22:11','2024-01-05 22:22:11','Botble\\ACL\\Models\\User'),(108,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,49,'2024-01-06 06:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,49,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,3,NULL,1188.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','JJD003034372','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-09 15:22:03',NULL,NULL,NULL),(2,4,NULL,1202.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:03','2024-01-06 08:22:03','JJD0065183673','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-13 15:22:03','2024-01-06 15:22:03',NULL,NULL),(3,5,NULL,510.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','JJD0020245011','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-14 15:22:04','2024-01-06 15:22:04',NULL,NULL),(4,6,NULL,1188.00,NULL,NULL,'','approved',2400.00,'pending','pending',0.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','JJD0045731774','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-10 15:22:04',NULL,NULL,NULL),(5,7,NULL,3927.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','JJD0071887114','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-07 15:22:04','2024-01-06 15:22:04',NULL,NULL),(6,8,NULL,510.00,NULL,NULL,'','approved',404.00,'pending','pending',0.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','JJD0069110156','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-10 15:22:04',NULL,NULL,NULL),(7,9,NULL,1188.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:04','2024-01-06 08:22:04','JJD0079043386','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:04',NULL,NULL,NULL),(8,10,NULL,584.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','JJD001755036','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-13 15:22:05','2024-01-06 15:22:05',NULL,NULL),(9,11,NULL,1722.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','JJD0075954716','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-11 15:22:05','2024-01-06 15:22:05',NULL,NULL),(10,12,NULL,1352.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','JJD0010549833','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-15 15:22:05','2024-01-06 15:22:05',NULL,NULL),(11,13,NULL,1148.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','JJD0028366331','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-12 15:22:05','2024-01-06 15:22:05',NULL,NULL),(12,14,NULL,2031.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:05','2024-01-06 08:22:05','JJD0045468981','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:05','2024-01-06 15:22:05',NULL,NULL),(13,15,NULL,3966.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','JJD0013118898','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-14 15:22:06','2024-01-06 15:22:06',NULL,NULL),(14,16,NULL,510.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','JJD0074553500','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-14 15:22:06','2024-01-06 15:22:06',NULL,NULL),(15,17,NULL,1770.00,NULL,NULL,'','delivered',1539.00,'completed','pending',0.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','JJD0059817290','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-13 15:22:06','2024-01-06 15:22:06',NULL,NULL),(16,19,NULL,1020.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:06','2024-01-06 08:22:06','JJD0025336429','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-07 15:22:06',NULL,NULL,NULL),(17,21,NULL,1710.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','JJD0065273502','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:07',NULL,NULL,NULL),(18,22,NULL,1530.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','JJD0028239062','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-09 15:22:07','2024-01-06 15:22:07',NULL,NULL),(19,23,NULL,1770.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','JJD0087851846','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-09 15:22:07',NULL,NULL,NULL),(20,24,NULL,1530.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','JJD0061881332','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-09 15:22:07','2024-01-06 15:22:07',NULL,NULL),(21,25,NULL,703.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:07','2024-01-06 08:22:07','JJD004705276','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-16 15:22:07',NULL,NULL,NULL),(22,27,NULL,1202.00,NULL,NULL,'','delivered',40.00,'completed','pending',0.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','JJD0099212255','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-12 15:22:08','2024-01-06 15:22:08',NULL,NULL),(23,28,NULL,862.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','JJD0032550170','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:08',NULL,NULL,NULL),(24,29,NULL,510.00,NULL,NULL,'','delivered',404.00,'completed','pending',0.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','JJD0058306422','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-15 15:22:08','2024-01-06 15:22:08',NULL,NULL),(25,30,NULL,2154.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:08','2024-01-06 08:22:08','JJD0057735927','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-16 15:22:08','2024-01-06 15:22:08',NULL,NULL),(26,32,NULL,1850.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD006834298','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:09',NULL,NULL,NULL),(27,33,NULL,1710.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD009922311','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-07 15:22:09',NULL,NULL,NULL),(28,34,NULL,2432.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD0011053207','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-13 15:22:09','2024-01-06 15:22:09',NULL,NULL),(29,35,NULL,1530.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD0014112298','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-16 15:22:09','2024-01-06 15:22:09',NULL,NULL),(30,36,NULL,659.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD0026789934','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:09','2024-01-06 15:22:09',NULL,NULL),(31,37,NULL,2565.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:09','2024-01-06 08:22:09','JJD0096078918','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-12 15:22:09','2024-01-06 15:22:09',NULL,NULL),(32,38,NULL,2109.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','JJD002849379','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:10',NULL,NULL,NULL),(33,39,NULL,1626.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','JJD0015179034','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-13 15:22:10','2024-01-06 15:22:10',NULL,NULL),(34,40,NULL,862.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','JJD0072902800','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-10 15:22:10',NULL,NULL,NULL),(35,42,NULL,3935.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','JJD0017962446','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-10 15:22:10',NULL,NULL,NULL),(36,43,NULL,1148.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:10','2024-01-06 08:22:10','JJD0037393153','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-07 15:22:10','2024-01-06 15:22:10',NULL,NULL),(37,44,NULL,1020.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','JJD0064794449','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-09 15:22:11','2024-01-06 15:22:11',NULL,NULL),(38,45,NULL,677.00,NULL,NULL,'','delivered',1299.00,'completed','pending',0.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','JJD0024542459','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-08 15:22:11','2024-01-06 15:22:11',NULL,NULL),(39,47,NULL,1530.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','JJD0019962259','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-12 15:22:11',NULL,NULL,NULL),(40,49,NULL,1865.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-06 08:22:11','2024-01-06 08:22:11','JJD0015280906','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-12 15:22:11','2024-01-06 15:22:11',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-01-06 08:21:59','2024-01-06 08:21:59');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(2,'None',0.000000,2,'published','2024-01-06 08:21:56','2024-01-06 08:21:56'),(3,'Import Tax',15.000000,3,'published','2024-01-06 08:21:56','2024-01-06 08:21:56');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(2,'PAYMENT',1,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-01-06 08:21:59','2024-01-06 08:21:59');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','b3db761bc3b868fc63f77500d3df482d',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','b00da888ff20bc575eef85f22863024a',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','25ac043d38b5de6b4c61d1435c7e49f2',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','24d392a16bc56796a6a86687ed477b89',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','fcccde8c2d135c219ba4d8f78f264c2b',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','4b2bdad9caaee35d9409af0b6d22aac4',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1592,'brands/1.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(2,0,'2','2',1,'image/jpeg',1592,'brands/2.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(3,0,'3','3',1,'image/jpeg',1592,'brands/3.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(4,0,'4','4',1,'image/jpeg',1592,'brands/4.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(5,0,'5','5',1,'image/jpeg',1592,'brands/5.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(6,0,'6','6',1,'image/jpeg',1592,'brands/6.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(7,0,'7','7',1,'image/jpeg',1592,'brands/7.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(8,0,'1','1',2,'image/jpeg',9730,'product-categories/1.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(9,0,'2','2',2,'image/jpeg',9730,'product-categories/2.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(10,0,'3','3',2,'image/jpeg',9730,'product-categories/3.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(11,0,'4','4',2,'image/jpeg',9730,'product-categories/4.jpg','[]','2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(12,0,'5','5',2,'image/jpeg',9730,'product-categories/5.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(13,0,'6','6',2,'image/jpeg',9730,'product-categories/6.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(14,0,'7','7',2,'image/jpeg',9730,'product-categories/7.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(15,0,'8','8',2,'image/jpeg',9730,'product-categories/8.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(16,0,'1','1',3,'image/jpeg',9730,'products/1.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(17,0,'10-1','10-1',3,'image/jpeg',9730,'products/10-1.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(18,0,'10-2','10-2',3,'image/jpeg',9730,'products/10-2.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(19,0,'10','10',3,'image/jpeg',9730,'products/10.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(20,0,'11-1','11-1',3,'image/jpeg',9730,'products/11-1.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(21,0,'11-2','11-2',3,'image/jpeg',9730,'products/11-2.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(22,0,'11-3','11-3',3,'image/jpeg',9730,'products/11-3.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(23,0,'11','11',3,'image/jpeg',9730,'products/11.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(24,0,'12-1','12-1',3,'image/jpeg',9730,'products/12-1.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(25,0,'12-2','12-2',3,'image/jpeg',9730,'products/12-2.jpg','[]','2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(26,0,'12-3','12-3',3,'image/jpeg',9730,'products/12-3.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(27,0,'12','12',3,'image/jpeg',9730,'products/12.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(28,0,'13-1','13-1',3,'image/jpeg',9730,'products/13-1.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(29,0,'13','13',3,'image/jpeg',9730,'products/13.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(30,0,'14','14',3,'image/jpeg',9730,'products/14.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(31,0,'15-1','15-1',3,'image/jpeg',9730,'products/15-1.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(32,0,'15','15',3,'image/jpeg',9730,'products/15.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(33,0,'16','16',3,'image/jpeg',9730,'products/16.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(34,0,'17-1','17-1',3,'image/jpeg',9730,'products/17-1.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(35,0,'17-2','17-2',3,'image/jpeg',9730,'products/17-2.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(36,0,'17-3','17-3',3,'image/jpeg',9730,'products/17-3.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(37,0,'17','17',3,'image/jpeg',9730,'products/17.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(38,0,'18-1','18-1',3,'image/jpeg',9730,'products/18-1.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(39,0,'18-2','18-2',3,'image/jpeg',9730,'products/18-2.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(40,0,'18-3','18-3',3,'image/jpeg',9730,'products/18-3.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(41,0,'18','18',3,'image/jpeg',9730,'products/18.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(42,0,'19-1','19-1',3,'image/jpeg',9730,'products/19-1.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(43,0,'19-2','19-2',3,'image/jpeg',9730,'products/19-2.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(44,0,'19-3','19-3',3,'image/jpeg',9730,'products/19-3.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(45,0,'19','19',3,'image/jpeg',9730,'products/19.jpg','[]','2024-01-06 08:21:49','2024-01-06 08:21:49',NULL),(46,0,'2-1','2-1',3,'image/jpeg',9730,'products/2-1.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(47,0,'2-2','2-2',3,'image/jpeg',9730,'products/2-2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(48,0,'2-3','2-3',3,'image/jpeg',9730,'products/2-3.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(49,0,'2','2',3,'image/jpeg',9730,'products/2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(50,0,'20-1','20-1',3,'image/jpeg',9730,'products/20-1.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(51,0,'20-2','20-2',3,'image/jpeg',9730,'products/20-2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(52,0,'20-3','20-3',3,'image/jpeg',9730,'products/20-3.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(53,0,'20','20',3,'image/jpeg',9730,'products/20.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(54,0,'21-1','21-1',3,'image/jpeg',9730,'products/21-1.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(55,0,'21-2','21-2',3,'image/jpeg',9730,'products/21-2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(56,0,'21','21',3,'image/jpeg',9730,'products/21.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(57,0,'22-1','22-1',3,'image/jpeg',9730,'products/22-1.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(58,0,'22-2','22-2',3,'image/jpeg',9730,'products/22-2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(59,0,'22-3','22-3',3,'image/jpeg',9730,'products/22-3.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(60,0,'22','22',3,'image/jpeg',9730,'products/22.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(61,0,'23-1','23-1',3,'image/jpeg',9730,'products/23-1.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(62,0,'23-2','23-2',3,'image/jpeg',9730,'products/23-2.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(63,0,'23-3','23-3',3,'image/jpeg',9730,'products/23-3.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(64,0,'23','23',3,'image/jpeg',9730,'products/23.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(65,0,'3','3',3,'image/jpeg',9730,'products/3.jpg','[]','2024-01-06 08:21:50','2024-01-06 08:21:50',NULL),(66,0,'4-1','4-1',3,'image/jpeg',9730,'products/4-1.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(67,0,'4-2','4-2',3,'image/jpeg',9730,'products/4-2.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(68,0,'4-3','4-3',3,'image/jpeg',9730,'products/4-3.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(69,0,'4','4',3,'image/jpeg',9730,'products/4.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(70,0,'5-1','5-1',3,'image/jpeg',9730,'products/5-1.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(71,0,'5-2','5-2',3,'image/jpeg',9730,'products/5-2.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(72,0,'5-3','5-3',3,'image/jpeg',9730,'products/5-3.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(73,0,'5','5',3,'image/jpeg',9730,'products/5.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(74,0,'6','6',3,'image/jpeg',9730,'products/6.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(75,0,'7','7',3,'image/jpeg',9730,'products/7.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(76,0,'8-1','8-1',3,'image/jpeg',9730,'products/8-1.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(77,0,'8-2','8-2',3,'image/jpeg',9730,'products/8-2.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(78,0,'8-3','8-3',3,'image/jpeg',9730,'products/8-3.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(79,0,'8','8',3,'image/jpeg',9730,'products/8.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(80,0,'9-1','9-1',3,'image/jpeg',9730,'products/9-1.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(81,0,'9-2','9-2',3,'image/jpeg',9730,'products/9-2.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(82,0,'9','9',3,'image/jpeg',9730,'products/9.jpg','[]','2024-01-06 08:21:51','2024-01-06 08:21:51',NULL),(83,0,'1','1',4,'image/jpeg',9730,'customers/1.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(84,0,'10','10',4,'image/jpeg',9730,'customers/10.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(85,0,'2','2',4,'image/jpeg',9730,'customers/2.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(86,0,'3','3',4,'image/jpeg',9730,'customers/3.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(87,0,'4','4',4,'image/jpeg',9730,'customers/4.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(88,0,'5','5',4,'image/jpeg',9730,'customers/5.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(89,0,'6','6',4,'image/jpeg',9730,'customers/6.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(90,0,'7','7',4,'image/jpeg',9730,'customers/7.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(91,0,'8','8',4,'image/jpeg',9730,'customers/8.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(92,0,'9','9',4,'image/jpeg',9730,'customers/9.jpg','[]','2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(93,0,'1','1',5,'image/jpeg',9730,'news/1.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(94,0,'10','10',5,'image/jpeg',9730,'news/10.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(95,0,'11','11',5,'image/jpeg',9730,'news/11.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(96,0,'2','2',5,'image/jpeg',9730,'news/2.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(97,0,'3','3',5,'image/jpeg',9730,'news/3.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(98,0,'4','4',5,'image/jpeg',9730,'news/4.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(99,0,'5','5',5,'image/jpeg',9730,'news/5.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(100,0,'6','6',5,'image/jpeg',9730,'news/6.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(101,0,'7','7',5,'image/jpeg',9730,'news/7.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(102,0,'8','8',5,'image/jpeg',9730,'news/8.jpg','[]','2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(103,0,'9','9',5,'image/jpeg',9730,'news/9.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',8795,'sliders/1-lg.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(105,0,'1-md','1-md',6,'image/jpeg',8795,'sliders/1-md.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',8795,'sliders/1-sm.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',8795,'sliders/2-lg.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(108,0,'2-md','2-md',6,'image/jpeg',8795,'sliders/2-md.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',8795,'sliders/2-sm.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',8795,'sliders/3-lg.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(111,0,'3-md','3-md',6,'image/jpeg',8795,'sliders/3-md.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',8795,'sliders/3-sm.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(113,0,'1','1',7,'image/jpeg',3592,'promotion/1.jpg','[]','2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(114,0,'2','2',7,'image/jpeg',3592,'promotion/2.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(115,0,'3','3',7,'image/jpeg',5370,'promotion/3.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(116,0,'4','4',7,'image/jpeg',5370,'promotion/4.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(117,0,'5','5',7,'image/jpeg',5370,'promotion/5.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(118,0,'6','6',7,'image/jpeg',5370,'promotion/6.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(119,0,'7','7',7,'image/jpeg',5370,'promotion/7.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(120,0,'8','8',7,'image/jpeg',5370,'promotion/8.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(121,0,'9','9',7,'image/jpeg',5370,'promotion/9.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(122,0,'app','app',8,'image/png',8634,'general/app.png','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(124,0,'favicon','favicon',8,'image/png',1925,'general/favicon.png','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(126,0,'logo-light','logo-light',8,'image/png',783,'general/logo-light.png','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(127,0,'logo','logo',8,'image/png',793,'general/logo.png','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',9745,'general/newsletter.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(134,0,'1','1',9,'image/png',3482,'stores/1.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(135,0,'10','10',9,'image/png',1675,'stores/10.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(136,0,'11','11',9,'image/png',1857,'stores/11.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(137,0,'12','12',9,'image/png',2046,'stores/12.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(138,0,'13','13',9,'image/png',1597,'stores/13.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(139,0,'14','14',9,'image/png',1649,'stores/14.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(140,0,'15','15',9,'image/png',2120,'stores/15.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(141,0,'16','16',9,'image/png',2556,'stores/16.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(142,0,'17','17',9,'image/png',2631,'stores/17.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(143,0,'2','2',9,'image/png',3369,'stores/2.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(144,0,'3','3',9,'image/png',3044,'stores/3.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(145,0,'4','4',9,'image/png',3096,'stores/4.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(146,0,'5','5',9,'image/png',3607,'stores/5.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(147,0,'6','6',9,'image/png',3778,'stores/6.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(148,0,'7','7',9,'image/png',1566,'stores/7.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(149,0,'8','8',9,'image/png',1773,'stores/8.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL),(150,0,'9','9',9,'image/png',1671,'stores/9.png','[]','2024-01-06 08:22:00','2024-01-06 08:22:00',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-01-06 08:21:47','2024-01-06 08:21:47',NULL),(3,0,'products',NULL,'products',0,'2024-01-06 08:21:48','2024-01-06 08:21:48',NULL),(4,0,'customers',NULL,'customers',0,'2024-01-06 08:21:53','2024-01-06 08:21:53',NULL),(5,0,'news',NULL,'news',0,'2024-01-06 08:21:57','2024-01-06 08:21:57',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(7,0,'promotion',NULL,'promotion',0,'2024-01-06 08:21:58','2024-01-06 08:21:58',NULL),(8,0,'general',NULL,'general',0,'2024-01-06 08:21:59','2024-01-06 08:21:59',NULL),(9,0,'stores',NULL,'stores',0,'2024-01-06 08:22:00','2024-01-06 08:22:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-01-06 08:21:59','2024-01-06 08:21:59');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2024-01-06 08:21:59','2024-01-06 08:21:59');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(2,'Quick links','quick-links','published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(3,'Company','company','published','2024-01-06 08:21:59','2024-01-06 08:21:59'),(4,'Business','business','published','2024-01-06 08:21:59','2024-01-06 08:21:59');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-06 08:21:48','2024-01-06 08:21:48'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-01-06 08:21:52','2024-01-06 08:21:52'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_06_100448_change_random_hash_for_media',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2020_11_18_150916_ads_create_ads_table',2),(35,'2021_12_02_035301_add_ads_translations_table',2),(36,'2023_04_17_062645_add_open_in_new_tab',2),(37,'2023_11_07_023805_add_tablet_mobile_image',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2015_06_18_033822_create_blog_table',4),(41,'2021_02_16_092633_remove_default_value_for_author_type',4),(42,'2021_12_03_030600_create_blog_translations',4),(43,'2022_04_19_113923_add_index_to_table_posts',4),(44,'2023_08_29_074620_make_column_author_id_nullable',4),(45,'2016_06_17_091537_create_contacts_table',5),(46,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(47,'2020_03_05_041139_create_ecommerce_tables',6),(48,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(49,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(50,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(51,'2021_02_18_073505_update_table_ec_reviews',6),(52,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(53,'2021_03_10_025153_change_column_tax_amount',6),(54,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(55,'2021_04_28_074008_ecommerce_create_product_label_table',6),(56,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(57,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(58,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(59,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(60,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(61,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(62,'2021_11_23_071403_correct_languages_for_product_variations',6),(63,'2021_11_28_031808_add_product_tags_translations',6),(64,'2021_12_01_031123_add_featured_image_to_ec_products',6),(65,'2022_01_01_033107_update_table_ec_shipments',6),(66,'2022_02_16_042457_improve_product_attribute_sets',6),(67,'2022_03_22_075758_correct_product_name',6),(68,'2022_04_19_113334_add_index_to_ec_products',6),(69,'2022_04_28_144405_remove_unused_table',6),(70,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(71,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(72,'2022_06_16_095633_add_index_to_some_tables',6),(73,'2022_06_30_035148_create_order_referrals_table',6),(74,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(75,'2022_08_14_032836_create_ec_order_returns_table',6),(76,'2022_08_14_033554_create_ec_order_return_items_table',6),(77,'2022_08_15_040324_add_billing_address',6),(78,'2022_08_30_091114_support_digital_products_table',6),(79,'2022_09_13_095744_create_options_table',6),(80,'2022_09_13_104347_create_option_value_table',6),(81,'2022_10_05_163518_alter_table_ec_order_product',6),(82,'2022_10_12_041517_create_invoices_table',6),(83,'2022_10_12_142226_update_orders_table',6),(84,'2022_10_13_024916_update_table_order_returns',6),(85,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(86,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(87,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(88,'2022_11_19_041643_add_ec_tax_product_table',6),(89,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(90,'2022_12_17_041532_fix_address_in_order_invoice',6),(91,'2022_12_26_070329_create_ec_product_views_table',6),(92,'2023_01_04_033051_fix_product_categories',6),(93,'2023_01_09_050400_add_ec_global_options_translations_table',6),(94,'2023_01_10_093754_add_missing_option_value_id',6),(95,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(96,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(97,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(98,'2023_02_27_095752_remove_duplicate_reviews',6),(99,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(100,'2023_04_21_082427_create_ec_product_categorizables_table',6),(101,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(102,'2023_05_17_025812_fix_invoice_issue',6),(103,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(104,'2023_05_27_144611_fix_exchange_rate_setting',6),(105,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(106,'2023_06_30_042512_create_ec_order_tax_information_table',6),(107,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(108,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(109,'2023_08_15_064505_create_ec_tax_rules_table',6),(110,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(111,'2023_08_22_094114_drop_unique_for_barcode',6),(112,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(113,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(114,'2023_09_19_024955_create_discount_product_categories_table',6),(115,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(116,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(117,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(118,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(119,'2023_12_25_040604_ec_create_review_replies_table',6),(120,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(121,'2018_07_09_221238_create_faq_table',7),(122,'2021_12_03_082134_create_faq_translations',7),(123,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(124,'2016_10_03_032336_create_languages_table',8),(125,'2023_09_14_022423_add_index_for_language_table',8),(126,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(127,'2021_12_03_075608_create_page_translations',9),(128,'2023_07_06_011444_create_slug_translations_table',9),(129,'2019_11_18_061011_create_country_table',10),(130,'2021_12_03_084118_create_location_translations',10),(131,'2021_12_03_094518_migrate_old_location_data',10),(132,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(133,'2022_01_16_085908_improve_plugin_location',10),(134,'2022_08_04_052122_delete_location_backup_tables',10),(135,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(136,'2023_07_26_041451_add_more_columns_to_location_table',10),(137,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(138,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(139,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(140,'2021_07_06_030002_create_marketplace_table',11),(141,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(142,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(143,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(144,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(145,'2021_12_06_031304_update_table_mp_customer_revenues',11),(146,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(147,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(148,'2022_11_02_071413_add_more_info_for_store',11),(149,'2022_11_02_080444_add_tax_info',11),(150,'2023_02_01_062030_add_store_translations',11),(151,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(152,'2023_02_17_023648_fix_store_prefix',11),(153,'2017_10_24_154832_create_newsletter_table',12),(154,'2017_05_18_080441_create_payment_tables',13),(155,'2021_03_27_144913_add_customer_type_into_table_payments',13),(156,'2021_05_24_034720_make_column_currency_nullable',13),(157,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(158,'2021_10_19_020859_update_metadata_field',13),(159,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(160,'2022_07_07_153354_update_charge_id_in_table_payments',13),(161,'2017_07_11_140018_create_simple_slider_table',14),(162,'2016_10_07_193005_create_translations_table',15),(163,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,4,40.00,0.00,40.00,0.00,'USD',NULL,'2024-01-03 00:22:11','2024-01-03 00:22:11',0,'add-amount'),(2,2,5,404.00,0.00,404.00,0.00,'USD',NULL,'2024-01-05 08:22:12','2024-01-05 08:22:12',0,'add-amount'),(3,10,7,3300.00,0.00,3300.00,40.00,'USD',NULL,'2024-01-01 16:22:13','2024-01-01 16:22:13',0,'add-amount'),(4,4,10,517.00,0.00,517.00,0.00,'USD',NULL,'2024-01-03 14:22:13','2024-01-03 14:22:13',0,'add-amount'),(5,7,11,3399.00,0.00,3399.00,0.00,'USD',NULL,'2024-01-01 08:22:14','2024-01-01 08:22:14',0,'add-amount'),(6,2,12,934.50,0.00,934.50,404.00,'USD',NULL,'2023-12-26 12:22:14','2023-12-26 12:22:14',0,'add-amount'),(7,7,13,2266.00,0.00,2266.00,3399.00,'USD',NULL,'2023-12-28 00:22:15','2023-12-28 00:22:15',0,'add-amount'),(8,5,14,3897.00,0.00,3897.00,0.00,'USD',NULL,'2023-12-29 20:22:15','2023-12-29 20:22:15',0,'add-amount'),(9,2,16,404.00,0.00,404.00,1338.50,'USD',NULL,'2023-12-30 06:22:16','2023-12-30 06:22:16',0,'add-amount'),(10,2,22,1212.00,0.00,1212.00,1742.50,'USD',NULL,'2023-12-29 16:22:16','2023-12-29 16:22:16',0,'add-amount'),(11,2,24,1212.00,0.00,1212.00,2954.50,'USD',NULL,'2024-01-02 04:22:17','2024-01-02 04:22:17',0,'add-amount'),(12,2,30,2192.00,0.00,2192.00,4166.50,'USD',NULL,'2023-12-24 10:22:17','2023-12-24 10:22:17',0,'add-amount'),(13,5,34,2135.00,0.00,2135.00,3897.00,'USD',NULL,'2023-12-19 20:22:18','2023-12-19 20:22:18',0,'add-amount'),(14,2,35,1212.00,0.00,1212.00,6358.50,'USD',NULL,'2023-12-31 08:22:19','2023-12-31 08:22:19',0,'add-amount'),(15,5,36,428.00,0.00,428.00,6032.00,'USD',NULL,'2023-12-25 00:22:19','2023-12-25 00:22:19',0,'add-amount'),(16,10,37,1800.00,0.00,1800.00,3340.00,'USD',NULL,'2023-12-18 08:22:20','2023-12-18 08:22:20',0,'add-amount'),(17,10,39,1659.00,0.00,1659.00,5140.00,'USD',NULL,'2024-01-03 00:22:20','2024-01-03 00:22:20',0,'add-amount'),(18,7,43,2266.00,0.00,2266.00,5665.00,'USD',NULL,'2023-12-11 16:22:21','2023-12-11 16:22:21',0,'add-amount'),(19,2,44,808.00,0.00,808.00,7570.50,'USD',NULL,'2023-12-18 14:22:21','2023-12-18 14:22:21',0,'add-amount'),(20,5,49,3699.00,0.00,3699.00,6460.00,'USD',NULL,'2023-12-08 04:22:22','2023-12-08 04:22:22',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,2320.00,8378.50,'USD','','{\"name\":\"Kathryne Lind\",\"number\":\"+12144067291\",\"full_name\":\"Blaise Johns\",\"description\":\"Elvis Ondricka\"}',NULL,0,'pending',NULL,'2024-01-06 08:22:22','2024-01-06 08:22:22',NULL),(2,2,0.00,283.00,6058.50,'USD','','{\"name\":\"Kathryne Lind\",\"number\":\"+12144067291\",\"full_name\":\"Blaise Johns\",\"description\":\"Elvis Ondricka\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:23','2024-01-06 08:22:23',NULL),(3,2,0.00,209.00,5775.50,'USD','','{\"name\":\"Kathryne Lind\",\"number\":\"+12144067291\",\"full_name\":\"Blaise Johns\",\"description\":\"Elvis Ondricka\"}',NULL,0,'processing',NULL,'2024-01-06 08:22:23','2024-01-06 08:22:23',NULL),(4,2,0.00,105.00,5566.50,'USD','','{\"name\":\"Kathryne Lind\",\"number\":\"+12144067291\",\"full_name\":\"Blaise Johns\",\"description\":\"Elvis Ondricka\"}',NULL,0,'pending',NULL,'2024-01-06 08:22:24','2024-01-06 08:22:24',NULL),(5,4,0.00,159.00,517.00,'USD','','{\"name\":\"Lula Pfeffer V\",\"number\":\"+19525725643\",\"full_name\":\"Lexi Turner\",\"description\":\"Dr. Geraldine Spinka V\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:24','2024-01-06 08:22:24',NULL),(6,4,0.00,86.00,358.00,'USD','','{\"name\":\"Lula Pfeffer V\",\"number\":\"+19525725643\",\"full_name\":\"Lexi Turner\",\"description\":\"Dr. Geraldine Spinka V\"}',NULL,0,'processing',NULL,'2024-01-06 08:22:25','2024-01-06 08:22:25',NULL),(7,5,0.00,1562.00,10159.00,'USD','','{\"name\":\"Amya Pagac\",\"number\":\"+17792239090\",\"full_name\":\"Dr. Kameron Goodwin\",\"description\":\"Miss Lyla Gorczany\"}',NULL,0,'processing',NULL,'2024-01-06 08:22:25','2024-01-06 08:22:25',NULL),(8,5,0.00,1589.00,8597.00,'USD','','{\"name\":\"Amya Pagac\",\"number\":\"+17792239090\",\"full_name\":\"Dr. Kameron Goodwin\",\"description\":\"Miss Lyla Gorczany\"}',NULL,0,'pending',NULL,'2024-01-06 08:22:26','2024-01-06 08:22:26',NULL),(9,5,0.00,1117.00,7008.00,'USD','','{\"name\":\"Amya Pagac\",\"number\":\"+17792239090\",\"full_name\":\"Dr. Kameron Goodwin\",\"description\":\"Miss Lyla Gorczany\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:26','2024-01-06 08:22:26',NULL),(10,7,0.00,1958.00,7931.00,'USD','','{\"name\":\"Jazlyn Cassin\",\"number\":\"+15098101049\",\"full_name\":\"Dr. Maegan Schimmel\",\"description\":\"Dr. Flavio Lind\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:27','2024-01-06 08:22:27',NULL),(11,7,0.00,1234.00,5973.00,'USD','','{\"name\":\"Jazlyn Cassin\",\"number\":\"+15098101049\",\"full_name\":\"Dr. Maegan Schimmel\",\"description\":\"Dr. Flavio Lind\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:27','2024-01-06 08:22:27',NULL),(12,7,0.00,1383.00,4739.00,'USD','','{\"name\":\"Jazlyn Cassin\",\"number\":\"+15098101049\",\"full_name\":\"Dr. Maegan Schimmel\",\"description\":\"Dr. Flavio Lind\"}',NULL,0,'pending',NULL,'2024-01-06 08:22:28','2024-01-06 08:22:28',NULL),(13,10,0.00,2016.00,6799.00,'USD','','{\"name\":\"Deontae Beer\",\"number\":\"+16123841242\",\"full_name\":\"Dr. Evan Moore\",\"description\":\"Nash Windler\"}',NULL,0,'completed',NULL,'2024-01-06 08:22:28','2024-01-06 08:22:28',NULL),(14,10,0.00,1050.00,4783.00,'USD','','{\"name\":\"Deontae Beer\",\"number\":\"+16123841242\",\"full_name\":\"Dr. Evan Moore\",\"description\":\"Nash Windler\"}',NULL,0,'pending',NULL,'2024-01-06 08:22:29','2024-01-06 08:22:29',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','dfeil@example.org','+19365668191','197 Joy Forge Suite 931','TT','Arkansas','East Minnie',2,'stores/1.png','Quaerat et et fuga nihil excepturi.','Molestiae quasi cumque perferendis qui ut. Libero culpa laborum modi accusamus. Corporis iste commodi quisquam sit aperiam.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL),(2,'Global Office','tiara78@example.com','+19895288587','89428 Blick Mission Suite 992','LT','Washington','New Julianport',4,'stores/2.png','Omnis quasi a dolor consequatur.','Error quam voluptatibus aut labore aperiam ad. Cum nulla sint culpa veritatis nihil non. Deleniti nemo magni facere. Aliquid hic et quos.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL),(3,'Young Shop','fpredovic@example.net','+14805203279','726 Julia Glens Apt. 973','BG','Texas','Ryannfort',5,'stores/3.png','Molestias eius sed tenetur.','Qui aliquid possimus laboriosam ad. Amet distinctio porro autem eligendi. Expedita voluptatem illo fugit non harum.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL),(4,'Global Store','rubye85@example.net','+18476197476','7126 Summer Bridge Apt. 061','DO','Pennsylvania','Welchburgh',7,'stores/4.png','Quis perspiciatis debitis porro non.','Cumque voluptatem odit ut non pariatur qui. Laudantium eum ut ipsum quibusdam quis itaque. Sit voluptates dolorem quis iusto vel inventore.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL),(5,'Robert’s Store','cordia26@example.com','+19255701792','827 Bode Neck','CC','South Dakota','North Gracetown',8,'stores/5.png','Quas facere quo culpa incidunt nostrum maxime.','Corporis quisquam tempore non at incidunt non. Occaecati architecto quos reprehenderit ipsum a ratione. Sint dolor omnis dicta dolorem animi.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL),(6,'Stouffer','kuhlman.porter@example.org','+15028541103','164 Roman Island','CD','Alabama','Steuberborough',10,'stores/6.png','Vel et autem optio ea illo expedita.','Dolores consequuntur nobis illum commodi. Numquam esse officiis officiis odio doloribus nam.','published',NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,5461.50,0.00,8378.50,'$2y$12$34FeSaA0.mxdR93IfyfHQ.3dKZ2Wmcb/BlpUOGNSDMZbLpwvrnjC2','{\"name\":\"Kathryne Lind\",\"number\":\"+12144067291\",\"full_name\":\"Blaise Johns\",\"description\":\"Elvis Ondricka\"}','2024-01-06 08:22:01','2024-01-06 08:22:24','bank_transfer',NULL),(2,4,272.00,0.00,517.00,'$2y$12$e9vHXT04iv2XmATpPPD7Oewu/OMxph6LaZrKiE1XERSxcFE9vD3u6','{\"name\":\"Lula Pfeffer V\",\"number\":\"+19525725643\",\"full_name\":\"Lexi Turner\",\"description\":\"Dr. Geraldine Spinka V\"}','2024-01-06 08:22:01','2024-01-06 08:22:25','bank_transfer',NULL),(3,5,5891.00,0.00,10159.00,'$2y$12$Cx2DoZ0kU.LsIjVB4LMGQuVAbmvUrIschTpL9TkMogkKisNfvVTXi','{\"name\":\"Amya Pagac\",\"number\":\"+17792239090\",\"full_name\":\"Dr. Kameron Goodwin\",\"description\":\"Miss Lyla Gorczany\"}','2024-01-06 08:22:01','2024-01-06 08:22:27','bank_transfer',NULL),(4,7,3356.00,0.00,7931.00,'$2y$12$mMllIzslTfBrFDrJG6owQ.LkC7AEu.WggTa/rw0oZe6Z6hIa5shM6','{\"name\":\"Jazlyn Cassin\",\"number\":\"+15098101049\",\"full_name\":\"Dr. Maegan Schimmel\",\"description\":\"Dr. Flavio Lind\"}','2024-01-06 08:22:02','2024-01-06 08:22:28','bank_transfer',NULL),(5,8,0.00,0.00,0.00,'$2y$12$UbIT7UugrX.jf6huVlbNHuQtOXlSJ1tQ6Fv8qtOLuZJhLvKUyNOpm','{\"name\":\"Demarcus Torp\",\"number\":\"+12405301671\",\"full_name\":\"Cullen Lind\",\"description\":\"Alexanne Wiegand\"}','2024-01-06 08:22:02','2024-01-06 08:22:02','bank_transfer',NULL),(6,10,3733.00,0.00,6799.00,'$2y$12$5radbcu2xJr8fuwCmeKbROyZ3es0OIi.FKkKv4.hJoZvkatg53neq','{\"name\":\"Deontae Beer\",\"number\":\"+16123841242\",\"full_name\":\"Dr. Evan Moore\",\"description\":\"Nash Windler\"}','2024-01-06 08:22:02','2024-01-06 08:22:29','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(2,'About us','<p>Alice, \'a great girl like you,\' (she might well say that \"I see what I say--that\'s the same thing a bit!\' said the Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' So they got thrown out to the garden with one finger; and the Queen\'s absence, and were resting in the pool, \'and she sits purring so nicely by the Queen jumped up in such a fall as this, I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the.</p><p>VERY remarkable in that; nor did Alice think it was,\' he said. \'Fifteenth,\' said the Dormouse: \'not in that soup!\' Alice said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it was,\' the March Hare. \'It was much pleasanter at home,\' thought poor Alice, that she did not like the look of it appeared. \'I don\'t much care where--\' said Alice. \'What IS the fun?\' said Alice. \'Nothing WHATEVER?\' persisted the King. The next witness was the first question, you know.\' \'Who is.</p><p>King said to Alice; and Alice heard the Queen furiously, throwing an inkstand at the end.\' \'If you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very politely, \'for I never knew whether it would be quite absurd for her to wink with one of the water, and seemed not to lie down upon her: she gave one sharp kick, and waited to see a little glass box that was trickling down his cheeks, he went on \'And how did you do lessons?\' said Alice, \'I\'ve often.</p><p>Oh, my dear Dinah! I wonder if I shall be punished for it flashed across her mind that she might as well say,\' added the Gryphon, sighing in his turn; and both creatures hid their faces in their mouths; and the Queen ordering off her head!\' Alice glanced rather anxiously at the door--I do wish they COULD! I\'m sure she\'s the best cat in the last time she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be removed,\'.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(3,'Terms Of Use','<p>She took down a large mushroom growing near her, she began, rather timidly, as she heard it before,\' said the King; and the poor little thing was waving its tail when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began nibbling at the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Dormouse, after thinking a minute or two she walked down the chimney!\' \'Oh! So Bill\'s got the.</p><p>March Hare. \'He denies it,\' said the Dormouse, who was peeping anxiously into its mouth again, and did not like to go through next walking about at the thought that it might tell her something about the same tone, exactly as if nothing had happened. \'How am I then? Tell me that first, and then dipped suddenly down, so suddenly that Alice said; but was dreadfully puzzled by the end of the Lobster Quadrille?\' the Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter hurriedly left.</p><p>Mock Turtle replied, counting off the fire, stirring a large mushroom growing near her, she began, in a melancholy air, and, after folding his arms and legs in all my life!\' Just as she went on. \'I do,\' Alice hastily replied; \'at least--at least I mean what I could shut up like a thunderstorm. \'A fine day, your Majesty!\' the soldiers shouted in reply. \'Idiot!\' said the King. \'Nearly two miles high,\' added the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me at.</p><p>Alice, in a low voice. \'Not at first, perhaps,\' said the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. \'Never!\' said the Cat. \'--so long as you might do very well without--Maybe it\'s always pepper that had fluttered down from the trees upon her knee, and looking at everything about her, to pass away the time. Alice had learnt several things of this elegant thimble\'; and, when it had some kind of authority among them, called out, \'Sit down, all of them even when they liked, so.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(4,'Terms &amp; Conditions','<p>Oh dear! I wish I could shut up like a wild beast, screamed \'Off with her head!\' Alice glanced rather anxiously at the Lizard as she had found her head on her hand, and Alice thought she might as well look and see that the meeting adjourn, for the rest were quite dry again, the Dodo could not tell whether they were playing the Queen left off, quite out of the Gryphon, and, taking Alice by the way, and the two creatures got so much into the garden at once; but, alas for poor Alice! when she had.</p><p>Mouse splashed his way through the little magic bottle had now had its full effect, and she did not answer, so Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out that one of the creature, but on the second verse of the month is it?\' he said. \'Fifteenth,\' said the Caterpillar. \'Is that all?\' said Alice, \'and if it had lost something; and she went back to yesterday, because I was going to dive in among the leaves, which she had read about them in books, and.</p><p>Gryphon. \'--you advance twice--\' \'Each with a sigh: \'he taught Laughing and Grief, they used to know. Let me see--how IS it to annoy, Because he knows it teases.\' CHORUS. (In which the cook was leaning over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury, who instantly made a rush at Alice the moment he was gone, and, by the Queen said severely \'Who is this?\' She said the White Rabbit: it was a different person then.\' \'Explain all that,\' he said in a natural way again. \'I.</p><p>There could be no chance of getting up and said, very gravely, \'I think, you ought to be a comfort, one way--never to be sure; but I think that there was no use in talking to him,\' the Mock Turtle with a bound into the court, \'Bring me the truth: did you manage to do this, so that they couldn\'t get them out again. Suddenly she came rather late, and the White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'If it had some kind of authority over Alice. \'Stand up and.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(5,'Refund Policy','<p>Alice said nothing: she had made the whole party look so grave that she wanted much to know, but the cook and the executioner ran wildly up and down in a tone of great relief. \'Call the first sentence in her life; it was just in time to see it pop down a large mustard-mine near here. And the moral of that dark hall, and close to her in such a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, sighing in his note-book, cackled out \'Silence!\' and read as.</p><p>And mentioned me to him: She gave me a pair of boots every Christmas.\' And she kept on good terms with him, he\'d do almost anything you liked with the birds hurried off to the table to measure herself by it, and finding it very much,\' said Alice, as the White Rabbit, jumping up in spite of all her knowledge of history, Alice had no pictures or conversations in it, \'and what is the use of a candle is like after the candle is blown out, for she thought, \'till its ears have come, or at least one.</p><p>YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook till his eyes were getting extremely small for a minute or two sobs choked his voice. \'Same as if he wasn\'t one?\' Alice asked. \'We called him Tortoise because he was in the air. Even the Duchess said after a fashion, and this was his first speech. \'You should learn not to be talking in a very deep well. Either the well was very hot, she kept tossing the baby was howling so.</p><p>I\'m sure I don\'t care which happens!\' She ate a little worried. \'Just about as much right,\' said the King: \'leave out that it might end, you know,\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Write that down,\' the King and Queen of Hearts, and I never knew so much into the sky. Twinkle, twinkle--\"\' Here the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the King very decidedly, and the Gryphon replied very gravely. \'What else have.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(10,'Affiliate','<p>Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice got up in a trembling voice to a day-school, too,\' said Alice; \'but a grin without a great deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin lessons: you\'d only have to beat them off, and she ran out of sight, he said do. Alice looked up, and began whistling. \'Oh, there\'s no meaning in it.\' The jury all brightened up again.).</p><p>You know the meaning of it altogether; but after a fashion, and this Alice thought the poor little thing was to twist it up into a graceful zigzag, and was going off into a cucumber-frame, or something of the Lobster Quadrille, that she was near enough to drive one crazy!\' The Footman seemed to be in a very difficult game indeed. The players all played at once without waiting for turns, quarrelling all the first position in dancing.\' Alice said; \'there\'s a large kitchen, which was lit up by a.</p><p>Majesty,\' said Two, in a very decided tone: \'tell her something about the crumbs,\' said the Hatter, with an M--\' \'Why with an M--\' \'Why with an important air, \'are you all ready? This is the same thing a Lobster Quadrille The Mock Turtle went on growing, and very neatly and simply arranged; the only difficulty was, that you had been running half an hour or so, and giving it something out of the court. \'What do you want to go with the distant sobs of the lefthand bit of stick, and made a.</p><p>Dodo replied very solemnly. Alice was rather glad there WAS no one listening, this time, sat down a very little! Besides, SHE\'S she, and I\'m sure I have none, Why, I wouldn\'t be in Bill\'s place for a minute, nurse! But I\'ve got to?\' (Alice had been found and handed back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a pair of gloves and a long way. So she sat still just as she could, \'If you can\'t think! And oh, I wish you wouldn\'t.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(11,'Career','<p>While the Panther were sharing a pie--\' [later editions continued as follows When the sands are all dry, he is gay as a lark, And will talk in contemptuous tones of the ground--and I should be free of them hit her in a melancholy air, and, after waiting till she was surprised to find that her flamingo was gone across to the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be sure, this generally happens when you come to the Cheshire Cat: now I shall have some fun now!\' thought.</p><p>I think that will be much the same as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Duchess; \'I never thought about it,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a sorrowful tone, \'I\'m afraid I don\'t take this child away with me,\' thought Alice, and, after folding his arms and legs in all my life, never!\' They had a bone in his turn; and both creatures hid their faces in their.</p><p>I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the King: \'leave out that one of the hall: in fact she was beginning to grow up again! Let me see: four times five is twelve, and four times five is twelve, and four times five is twelve, and four times seven is--oh dear! I wish I hadn\'t drunk quite so much!\' said Alice, who felt very lonely and low-spirited. In a little hot tea upon its nose. The Dormouse slowly opened his eyes. He looked anxiously at.</p><p>Just as she wandered about in all their simple sorrows, and find a pleasure in all my limbs very supple By the use of a dance is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of such a pleasant temper, and thought to herself, \'if one only knew how to begin.\' He looked anxiously at the stick, and made another rush at the bottom of the cakes, and was going to begin with,\' said the Rabbit in a long, low hall, which was the fan and gloves--that is, if I must, I must,\'.</p>',1,NULL,'default',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'BTXDZP53QM','bank_transfer',NULL,160.50,1,'pending','confirm',3,NULL,NULL,'2024-01-06 08:22:02','2024-01-06 08:22:02','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'ABDDR1U7YY','bank_transfer',NULL,1728.00,2,'pending','confirm',3,NULL,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'1JG9U2AFQT','sslcommerz',NULL,2400.00,3,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'LKVE5BDVNX','paypal',NULL,40.00,4,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'WO7XSCZZHJ','paypal',NULL,404.00,5,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:03','2024-01-06 08:22:03','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'VYCMBJUPNA','cod',NULL,2400.00,6,'pending','confirm',9,NULL,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'PQWRQAOU2S','stripe',NULL,3300.00,7,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'QPWOXYFKFJ','cod',NULL,404.00,8,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'ZLQETIYVL5','paypal',NULL,2400.00,9,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'DGVWP85RSQ','mollie',NULL,517.00,10,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:04','2024-01-06 08:22:04','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'MVC78DZCSS','stripe',NULL,3399.00,11,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'OHUUKOKYMX','razorpay',NULL,934.50,12,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'RMG6HAPNPK','stripe',NULL,2266.00,13,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'W4UEGEXUXG','stripe',NULL,3897.00,14,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'CYHFH8NAS3','bank_transfer',NULL,2970.00,15,'pending','confirm',6,NULL,NULL,'2024-01-06 08:22:05','2024-01-06 08:22:05','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'SRCSXFKKQT','stripe',NULL,404.00,16,'completed','confirm',6,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'41FDJMLJHQ','cod',NULL,1539.00,17,'pending','confirm',9,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'FAL9EXTXQK','sslcommerz',NULL,1641.00,18,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'HFHEBHWZU6','sslcommerz',NULL,808.00,19,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'A7OS2GKKYK','paystack',NULL,80.25,20,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'3FUIQSCMEJ','bank_transfer',NULL,1200.00,21,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:06','2024-01-06 08:22:06','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'T29GGZUC15','mollie',NULL,1212.00,22,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'LN3ZDP50LG','bank_transfer',NULL,1539.00,23,'pending','confirm',9,NULL,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'TMEY4RDY6G','stripe',NULL,1212.00,24,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'B59YLRWBQH','stripe',NULL,1283.00,25,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'EP6NWPHC9H','bank_transfer',NULL,547.00,26,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:07','2024-01-06 08:22:07','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'TJMTGXD4KG','cod',NULL,40.00,27,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'UB34LBC95N','razorpay',NULL,1044.00,28,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'UGVHJ2GS0N','cod',NULL,404.00,29,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'YSMNOUUAFI','paypal',NULL,2192.00,30,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'AIOLFUUCLU','stripe',NULL,240.75,31,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'CWHTRBN256','stripe',NULL,2996.00,32,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:08','2024-01-06 08:22:08','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'PFMEXCISZL','razorpay',NULL,1200.00,33,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'GSEH8BG71T','razorpay',NULL,2135.00,34,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'79JCKLSQAH','mollie',NULL,1212.00,35,'completed','confirm',9,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'VBE1AEQJQW','razorpay',NULL,428.00,36,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'Y7P1YKJGNG','sslcommerz',NULL,1800.00,37,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'XJIZHRHQ3X','sslcommerz',NULL,3849.00,38,'completed','confirm',6,NULL,NULL,'2024-01-06 08:22:09','2024-01-06 08:22:09','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'VWCBCOWK4F','sslcommerz',NULL,1659.00,39,'completed','confirm',6,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'47R3OZJA8Q','razorpay',NULL,1044.00,40,'completed','confirm',6,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'GKBMZBIRHF','bank_transfer',NULL,160.50,41,'pending','confirm',3,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'AHCG0DQY1K','sslcommerz',NULL,3535.00,42,'completed','confirm',3,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'8BJAWMYDUA','mollie',NULL,2266.00,43,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'T89NGEDNM3','paypal',NULL,808.00,44,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:10','2024-01-06 08:22:10','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'8ZNRNF9KEO','cod',NULL,1299.00,45,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'QQILZITX5G','cod',NULL,2778.00,46,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'LSTAGI8LUH','bank_transfer',NULL,1212.00,47,'pending','confirm',1,NULL,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'B2LJES8WS9','stripe',NULL,160.50,48,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'AMEKFFGDXB','paystack',NULL,3699.00,49,'completed','confirm',1,NULL,NULL,'2024-01-06 08:22:11','2024-01-06 08:22:11','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(2,2),(3,2),(2,3),(4,3),(2,4),(3,4),(2,5),(4,5),(1,6),(3,6),(2,7),(3,7),(2,8),(4,8),(2,9),(4,9),(2,10),(4,10),(2,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1485,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1640,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/3.jpg',185,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1567,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2496,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2377,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/7.jpg',685,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1991,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1250,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1956,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1573,NULL,'2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-01-06 08:21:57','2024-01-06 08:21:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-01-06 08:22:00'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-01-06 08:22:00'),(8,'language_hide_default','1',NULL,'2024-01-06 08:22:00'),(9,'language_switcher_display','dropdown',NULL,'2024-01-06 08:22:00'),(10,'language_display','all',NULL,'2024-01-06 08:22:00'),(11,'language_hide_languages','[]',NULL,'2024-01-06 08:22:00'),(12,'simple_slider_using_assets','0',NULL,NULL),(13,'media_random_hash','e1b6955fcc37d60dd9cd80dd0e6f7919',NULL,'2024-01-06 08:22:00'),(14,'payment_cod_status','1',NULL,'2024-01-06 08:22:00'),(15,'payment_bank_transfer_status','1',NULL,'2024-01-06 08:22:00'),(16,'theme','martfury',NULL,'2024-01-06 08:22:00'),(17,'show_admin_bar','1',NULL,'2024-01-06 08:22:00'),(18,'admin_favicon','general/favicon.png',NULL,'2024-01-06 08:22:00'),(19,'admin_logo','general/logo-light.png',NULL,'2024-01-06 08:22:00'),(20,'permalink-botble-blog-models-post','blog',NULL,'2024-01-06 08:22:00'),(21,'permalink-botble-blog-models-category','blog',NULL,'2024-01-06 08:22:00'),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-01-06 08:22:00'),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-01-06 08:22:00'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-01-06 08:22:00'),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-01-06 08:22:00'),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-01-06 08:22:00'),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-01-06 08:22:00'),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-01-06 08:22:00'),(29,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-01-06 08:22:00'),(30,'ecommerce_product_sku_format','MF-2443-[%S]',NULL,'2024-01-06 08:22:00'),(31,'ecommerce_store_name','Martfury',NULL,NULL),(32,'ecommerce_store_phone','1800979769',NULL,NULL),(33,'ecommerce_store_address','502 New Street',NULL,NULL),(34,'ecommerce_store_state','Brighton VIC',NULL,NULL),(35,'ecommerce_store_city','Brighton VIC',NULL,NULL),(36,'ecommerce_store_country','AU',NULL,NULL),(37,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(38,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(39,'theme-martfury-copyright','© 2024 MartFury. All Rights Reserved.',NULL,NULL),(40,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(41,'theme-martfury-logo','general/logo.png',NULL,NULL),(42,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(43,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(44,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(45,'theme-martfury-email','contact@martfury.co',NULL,NULL),(46,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(47,'theme-martfury-homepage_id','1',NULL,NULL),(48,'theme-martfury-blog_page_id','6',NULL,NULL),(49,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(50,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(51,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(52,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(53,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(54,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(55,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(56,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(57,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(58,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(59,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(60,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(61,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(62,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(64,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(65,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(66,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(67,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(68,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(69,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(71,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(72,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(73,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(74,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(75,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(76,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(77,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(78,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(79,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(80,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(81,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(82,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(83,'theme-martfury-primary_font','Work Sans',NULL,NULL),(84,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(85,'theme-martfury-social-name-1','Facebook',NULL,NULL),(86,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(87,'theme-martfury-social-icon-1','fab fa-facebook',NULL,NULL),(88,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(89,'theme-martfury-social-name-2','Twitter',NULL,NULL),(90,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(91,'theme-martfury-social-icon-2','fab fa-twitter',NULL,NULL),(92,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(93,'theme-martfury-social-name-3','Instagram',NULL,NULL),(94,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(95,'theme-martfury-social-icon-3','fab fa-instagram',NULL,NULL),(96,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(97,'theme-martfury-social-name-4','Youtube',NULL,NULL),(98,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(99,'theme-martfury-social-icon-4','fab fa-youtube',NULL,NULL),(100,'theme-martfury-social-color-4','#FF0000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2024-01-06 08:21:58','2024-01-06 08:21:58'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-06 08:21:47','2024-01-06 08:21:47'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-06 08:21:48','2024-01-06 08:21:48'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:22:29'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:21:52','2024-01-06 08:21:52'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-06 08:21:56','2024-01-06 08:21:56'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-01-06 08:21:58','2024-01-06 08:21:58'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-01-06 08:21:58','2024-01-06 08:21:58'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-01-06 08:21:58','2024-01-06 08:21:58'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-01-06 08:21:58','2024-01-06 08:21:58'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-01-06 08:21:58','2024-01-06 08:21:58'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-01-06 08:21:58','2024-01-06 08:21:59'),(94,'home',1,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(104,'career',11,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-01-06 08:21:58','2024-01-06 08:21:58'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-01-06 08:22:02','2024-01-06 08:22:02'),(112,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(113,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(114,'dual-camera-20mp-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(115,'dual-camera-20mp-digital',27,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(116,'smart-watches',28,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(117,'smart-watches',29,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(118,'smart-watches',30,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(119,'smart-watches',31,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:29','2024-01-06 08:22:29'),(120,'beat-headphone',32,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(121,'red-black-headphone',33,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(122,'red-black-headphone',34,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(123,'smart-watch-external-digital',35,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(124,'smart-watch-external-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(125,'smart-watch-external-digital',37,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(126,'nikon-hd-camera',38,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(127,'nikon-hd-camera',39,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(128,'nikon-hd-camera',40,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(129,'audio-equipment',41,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(130,'audio-equipment',42,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(131,'audio-equipment',43,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(132,'smart-televisions',44,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(133,'smart-televisions',45,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(134,'smart-televisions',46,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(135,'samsung-smart-phone-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(136,'samsung-smart-phone-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(137,'herschel-leather-duffle-bag-in-brown-color',49,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(138,'herschel-leather-duffle-bag-in-brown-color',50,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(139,'herschel-leather-duffle-bag-in-brown-color',51,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(140,'xbox-one-wireless-controller-black-color',52,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(141,'xbox-one-wireless-controller-black-color',53,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(142,'xbox-one-wireless-controller-black-color',54,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(143,'epsion-plaster-printer',55,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(144,'epsion-plaster-printer',56,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(145,'epsion-plaster-printer',57,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(146,'sound-intone-i65-earphone-white-version-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(147,'sound-intone-i65-earphone-white-version-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(148,'sound-intone-i65-earphone-white-version-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(149,'bo-play-mini-bluetooth-speaker',61,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(150,'bo-play-mini-bluetooth-speaker',62,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(151,'bo-play-mini-bluetooth-speaker',63,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(152,'bo-play-mini-bluetooth-speaker',64,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(153,'apple-macbook-air-retina-133-inch-laptop',65,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(154,'apple-macbook-air-retina-133-inch-laptop',66,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(155,'apple-macbook-air-retina-12-inch-laptop',67,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(156,'apple-macbook-air-retina-12-inch-laptop',68,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(157,'apple-macbook-air-retina-12-inch-laptop',69,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(158,'apple-macbook-air-retina-12-inch-laptop',70,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(159,'samsung-gear-vr-virtual-reality-headset-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(160,'samsung-gear-vr-virtual-reality-headset-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(161,'samsung-gear-vr-virtual-reality-headset-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(162,'samsung-gear-vr-virtual-reality-headset-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(163,'samsung-gear-vr-virtual-reality-headset-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(164,'aveeno-moisturizing-body-shower-450ml',76,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(165,'aveeno-moisturizing-body-shower-450ml',77,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(166,'nyx-beauty-couton-pallete-makeup-12',78,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(167,'nyx-beauty-couton-pallete-makeup-12',79,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(168,'nyx-beauty-couton-pallete-makeup-12',80,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(169,'nyx-beauty-couton-pallete-makeup-12',81,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(170,'mvmth-classical-leather-watch-in-black-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(171,'mvmth-classical-leather-watch-in-black-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(172,'mvmth-classical-leather-watch-in-black-digital',84,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(173,'mvmth-classical-leather-watch-in-black-digital',85,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(174,'baxter-care-hair-kit-for-bearded-mens',86,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(175,'baxter-care-hair-kit-for-bearded-mens',87,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(176,'baxter-care-hair-kit-for-bearded-mens',88,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(177,'baxter-care-hair-kit-for-bearded-mens',89,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(178,'ciate-palemore-lipstick-bold-red-color',90,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(179,'ciate-palemore-lipstick-bold-red-color',91,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30'),(180,'ciate-palemore-lipstick-bold-red-color',92,'Botble\\Ecommerce\\Models\\Product','products','2024-01-06 08:22:30','2024-01-06 08:22:30');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2024-01-06 08:21:58','2024-01-06 08:21:58'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2024-01-06 08:21:58','2024-01-06 08:21:58');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jay.kessler@lindgren.org',NULL,'$2y$12$cajrLjR.YeaFtQfzx2Q5rOOwraKCWritxBnmZPVaSoMF/y.LSG2bO',NULL,'2024-01-06 08:21:57','2024-01-06 08:21:57','Pearl','Hickle','botble',NULL,1,1,NULL,NULL),(2,'manuela23@kerluke.biz',NULL,'$2y$12$rOTpzwUQ7QlaTNBXwYpMhuCF/JATUlvcrOPwl/eIVKOhpQFP/NRMu',NULL,'2024-01-06 08:21:57','2024-01-06 08:21:57','Jayde','Jakubowski','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-01-06 08:22:00','2024-01-06 08:22:00'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-01-06 08:22:00','2024-01-06 08:22:00');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06 22:22:31
