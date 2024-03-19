-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ropem
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'<h2 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 27px;\">Ropem Telcom – Your trusted telecommunications provider</h2><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 11px; margin-left: 0px; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 17px; text-align: start;\">Ropem Telcom LTD is a telecommunications company incorporated in Kenya with a view of partnering with Safaricom as a national distribution partner.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 11px; margin-left: 0px; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 17px; text-align: start;\">&nbsp;We are authorised Safaricom dealers dealing in Smartphones and Feature-phones, mobile accessories, phone repair services and general Safaricom Customer Care. Our objective is to become a leading telephony solutions provider and manage a successful distribution network in the country. Our focus on customer service, resource persons, strategic management solutions, and our focus on escalation and retention of both market share and presence make us the definitive distribution partner. With over 20 branches distributed countrywide we are definetely you one-stop shop for all things mobile phones.</p></h1>','uploads/custom-images/about-us-2022-09-22-04-39-05-2348.png',NULL,'2022-09-20 08:21:31','2024-03-18 23:48:34');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shipping` int NOT NULL DEFAULT '0',
  `default_billing` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `forget_password_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,1,'Admin','admin@gmail.com','uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg',NULL,'$2y$10$Gtc/CuE9RTk0HaCVeXyrGeEC/cFW9WXc9tc/EX2PwhRGAn3H9L59S','SiEEX3ycWy0dlgx2jW66MeSmtQZhmJX8egP1IHofh2ky8UZCW99Y6xHrtWqe',1,NULL,NULL,'2022-09-20 08:29:15');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_modals`
--

DROP TABLE IF EXISTS `announcement_modals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_modals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_modals`
--

LOCK TABLES `announcement_modals` WRITE;
/*!40000 ALTER TABLE `announcement_modals` DISABLE KEYS */;
INSERT INTO `announcement_modals` VALUES (1,1,'GET UP TO 75% OFF','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?','uploads/website-images/announcement-2022-11-19-12-33-21-4518.png',5,NULL,'2022-11-19 17:33:21');
/*!40000 ALTER TABLE `announcement_modals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_payments`
--

DROP TABLE IF EXISTS `bank_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_info` text COLLATE utf8mb4_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_payments`
--

LOCK TABLES `bank_payments` WRITE;
/*!40000 ALTER TABLE `bank_payments` DISABLE KEYS */;
INSERT INTO `bank_payments` VALUES (1,1,'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name',1,NULL,'2022-07-30 03:48:29');
/*!40000 ALTER TABLE `bank_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_images`
--

DROP TABLE IF EXISTS `banner_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_product_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_images`
--

LOCK TABLES `banner_images` WRITE;
/*!40000 ALTER TABLE `banner_images` DISABLE KEYS */;
INSERT INTO `banner_images` VALUES (13,NULL,NULL,'','uploads/website-images/banner-2022-06-13-12-45-14-6950.jpg','Login page',0,0,NULL,'2022-06-13 06:45:14',NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,'uploads/website-images/default-avatar-2022-11-18-12-03-30-6530.webp','Default Profile Image',0,0,NULL,'2022-11-18 05:03:30',NULL,NULL,NULL,NULL),(16,NULL,NULL,'#','uploads/website-images/Mega-menu-2024-03-19-07-35-40-4762.jpeg','Slider First',0,1,NULL,'2024-03-19 07:35:40','Samsung ZFold','S24','Fold','samsung'),(17,NULL,NULL,'link','uploads/website-images/Mega-menu-2024-03-19-07-39-04-9037.jpeg','Slider Second',0,1,NULL,'2024-03-19 07:39:04','Samsung Buds','Pro','Audio','samsung'),(18,NULL,NULL,'link','uploads/website-images/Mega-menu-2022-07-31-12-32-19-7306.jpg','Popular category sidebar banner',0,1,NULL,'2022-10-30 19:07:53',NULL,NULL,NULL,'electronics'),(19,NULL,NULL,'https://shopo-ecom.vercel.app/products?highlight=popular_category','uploads/website-images/Mega-menu-2024-03-19-12-55-04-4437.jpg','Two Column banner One',0,1,NULL,'2024-03-19 00:55:04','Wireless Audio','Buds','BUDS','accessories'),(20,NULL,NULL,'https://shopo-ecom.vercel.app/products?highlight=popular_category','uploads/website-images/Mega-menu-2022-10-27-01-43-27-5225.png','Two Column Banner two',0,1,NULL,'2022-10-30 19:08:04','Samsung','Smart Watch II','SMART WATCH','electronics'),(21,NULL,NULL,'https://shopo-ecom.vercel.app/products?highlight=popular_category','uploads/website-images/Mega-menu-2024-03-19-08-28-53-1393.png','Homepage Single banner one',0,1,NULL,'2024-03-19 08:28:53','LIPA POLEPOLE','Buy Now Pay Later option now available',NULL,'samsung'),(22,NULL,NULL,'https://shopo-ecom.vercel.app/single-product?slug=kospet-tank-t1-milstd-rugged-waterproof-smartwatch','uploads/website-images/Mega-menu-2024-03-19-08-29-43-7214.png','Homepage Single banner Two',0,1,NULL,'2024-03-19 08:29:43','Get the best deal here',NULL,NULL,'samsung'),(23,NULL,NULL,'https://shopo-ecom.vercel.app/products?category=game','uploads/website-images/Mega-menu-2022-10-27-01-44-55-7811.png','Megamenu banner',0,1,NULL,'2022-10-30 19:08:38','SMART WATCH','Samsung Smart Watch',NULL,'electronics'),(24,NULL,'#','#','uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png','Homepage flash sale sidebar banner',0,1,NULL,'2022-09-20 04:59:27',NULL,NULL,NULL,NULL),(25,NULL,NULL,'https://shopo-ecom.vercel.app/products?highlight=popular_category','uploads/website-images/Mega-menu-2024-03-19-08-28-10-9290.png','Shop page center banner',3,1,NULL,'2024-03-19 08:28:24','Get the best deal for Samsung',NULL,NULL,'samsung'),(26,'','','https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-','uploads/website-images/Mega-menu-2022-10-27-01-44-49-1623.png','Shop page sidebar banner',0,1,NULL,'2022-10-30 19:08:34','HEADSET','Beat wireless Headphone',NULL,'electronics'),(27,'Get our latest offer and news','by subscription','','uploads/website-images/banner-2024-03-19-08-49-54-1801.jpeg','Subscribe section banner',0,1,NULL,'2024-03-19 08:49:54',NULL,NULL,NULL,NULL),(28,NULL,NULL,'link','uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg','Featured category sidebar banner',0,1,NULL,'2022-06-14 05:26:56',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `banner_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biztech_sms`
--

DROP TABLE IF EXISTS `biztech_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biztech_sms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_register_sms` int NOT NULL DEFAULT '0',
  `enable_reset_pass_sms` int NOT NULL DEFAULT '0',
  `enable_order_confirmation_sms` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biztech_sms`
--

LOCK TABLES `biztech_sms` WRITE;
/*!40000 ALTER TABLE `biztech_sms` DISABLE KEYS */;
INSERT INTO `biztech_sms` VALUES (1,'UpB/QWgGqJSfHJLsZdMqulqwXtU6EzNGNiwI11EUl4o=','1a1b0bf0-07fd-402f-b1d2-15c99e130c8f','8809617609947',1,1,1,NULL,'2023-01-12 04:46:54');
/*!40000 ALTER TABLE `biztech_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (2,'Development','development',1,'2022-09-22 10:05:56','2024-03-18 22:00:14'),(3,'Guide','guide-',1,'2022-09-22 10:06:06','2022-09-22 10:06:06'),(4,'Inspiration','inspiration-',1,'2022-09-22 10:06:13','2022-09-22 10:06:13'),(5,'Latest News','latest-news',1,'2022-09-22 10:06:25','2022-09-22 10:06:25'),(6,'Revenue','revenue-',1,'2022-09-22 10:06:37','2022-09-22 10:06:37'),(7,'Start Up','start-up',1,'2022-09-22 10:06:48','2022-09-22 10:06:48'),(8,'Technology','technology',1,'2022-09-22 10:06:56','2022-09-22 10:06:56');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` VALUES (1,5,'Len Newton','fose@mailinator.com','Ratione deserunt lab',0,'2022-09-25 07:43:47','2022-09-25 07:43:47'),(2,6,'Lara Mason','nicuqovu@mailinator.com','Voluptatem facilis v',0,'2022-09-25 07:45:00','2022-09-25 07:45:00'),(3,5,'Abel Spencer','sicyxohore@mailinator.com','Molestiae totam magn',0,'2022-09-25 10:22:20','2022-09-25 10:22:20'),(4,6,'Hannah Nunez','hupymug@mailinator.com','Vel ea fugit ad duc',0,'2022-09-25 11:05:46','2022-09-25 11:05:46'),(5,2,'Dara Odom','caqo@mailinator.com','Ducimus doloremque',0,'2022-09-25 11:38:22','2022-09-25 11:38:22'),(6,2,'Boris David','jypiw@mailinator.com','Ipsum quam harum co',0,'2022-09-25 11:39:26','2022-09-25 11:39:26');
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `show_homepage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,1,'Business-to-consumer that involves selling fight products and services','businesstoconsumer-that-involves-selling-fight-products-and-services',2,'uploads/custom-images/blog--2022-09-22-04-09-44-5529.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',25,'Business-to-consumer that involves selling fight products and services','Business-to-consumer that involves selling fight products and services',1,1,'2022-09-22 10:09:44','2022-11-21 00:10:00'),(3,1,'Top 10 Best Professional Blogging Platforms for 2022','top-10-best-professional-blogging-platforms-for-2022',3,'uploads/custom-images/blog--2022-09-22-04-12-00-7502.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',20,'Top 10 Best Professional Blogging Platforms for 2022','Top 10 Best Professional Blogging Platforms for 2022',1,1,'2022-09-22 10:12:00','2022-11-02 21:59:02'),(4,1,'6 Best WordPress E-commerce Plugins for Online Stores in 2022','6-best-wordpress-ecommerce-plugins-for-online-stores-in-2022',5,'uploads/custom-images/blog--2022-09-22-04-13-57-7380.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',11,'6 Best WordPress E-commerce Plugins for Online Stores in 2022','6 Best WordPress E-commerce Plugins for Online Stores in 2022',1,1,'2022-09-22 10:13:57','2022-11-21 00:09:42'),(5,1,'15 Best WordPress Newspaper Themes to Look Out for in 2022','15-best-wordpress-newspaper-themes-to-look-out-for-in-2022',5,'uploads/custom-images/blog--2022-09-22-04-14-55-6716.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',40,'15 Best WordPress Newspaper Themes to Look Out for in 2022','15 Best WordPress Newspaper Themes to Look Out for in 2022',1,1,'2022-09-22 10:14:55','2022-11-02 21:59:00'),(6,1,'Must-Have WordPress Plugins for Ecommerce Websites in 2022','musthave-wordpress-plugins-for-ecommerce-websites-in-2022',4,'uploads/custom-images/blog--2022-09-22-04-15-55-3458.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',13,'Must-Have WordPress Plugins for Ecommerce Websites in 2022','Must-Have WordPress Plugins for Ecommerce Websites in 2022',1,0,'2022-09-22 10:15:55','2022-11-02 21:58:59'),(7,1,'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.','its-official-the-iphone-14-series-is-on-its-way-rumors-turned-out-to-be-true-the-goods-the-bads',2,'uploads/custom-images/blog--2022-09-22-04-18-09-8292.jpg','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>',20,'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.','It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.',1,1,'2022-09-22 10:18:09','2022-11-23 05:18:23');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Samsung','samsung','uploads/custom-images/samsung-2024-03-18-11-27-33-7707.png',1,'2022-09-20 07:16:12','2024-03-18 23:27:33'),(2,'Apple','apple','uploads/custom-images/apple-2024-03-18-10-40-07-9898.png',1,'2022-09-20 07:16:43','2024-03-19 04:25:39'),(3,'Oppo','oppo','uploads/custom-images/oppo-2024-03-18-10-40-17-3760.png',1,'2022-09-20 07:17:17','2024-03-18 22:40:17'),(4,'Techno','techno','uploads/custom-images/techno-2024-03-18-10-40-26-5222.png',1,'2022-09-20 07:17:29','2024-03-18 22:40:26'),(5,'Itel','itel','uploads/custom-images/itel-2024-03-18-10-41-01-3872.png',1,'2022-09-20 07:17:44','2024-03-18 22:41:02'),(6,'Infinix','infinix','uploads/custom-images/infinix-2024-03-18-10-40-53-6543.png',1,'2022-09-20 07:17:57','2024-03-18 22:40:53'),(13,'Xiaomi','xioami','uploads/custom-images/xiaomi-2024-03-18-11-16-03-6817.jpg',1,'2022-09-20 07:17:57','2024-03-18 23:16:03');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breadcrumb_images`
--

DROP TABLE IF EXISTS `breadcrumb_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breadcrumb_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breadcrumb_images`
--

LOCK TABLES `breadcrumb_images` WRITE;
/*!40000 ALTER TABLE `breadcrumb_images` DISABLE KEYS */;
INSERT INTO `breadcrumb_images` VALUES (1,'Brand Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg',NULL,'2022-02-11 09:19:03'),(2,'Cart Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg',NULL,'2022-02-11 09:19:16'),(3,'Campaign Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg',NULL,'2022-02-11 09:19:28'),(4,'FAQ page',1,'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg',NULL,'2022-02-11 09:19:40'),(5,'User Authentication',1,'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg',NULL,'2022-02-11 09:19:53'),(6,'Compare Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg',NULL,'2022-02-11 09:20:04'),(7,'Order Tracking Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg',NULL,'2022-02-11 09:20:18'),(8,'Vendor Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg',NULL,'2022-02-11 09:20:30'),(9,'Shop Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg',NULL,'2022-02-11 09:20:41'),(10,'Blog page',1,'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg',NULL,'2022-02-11 09:20:54'),(11,'Flash Deal Page',1,'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg',NULL,'2022-02-11 09:21:06');
/*!40000 ALTER TABLE `breadcrumb_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Apple','apple','fab fa-apple',0,'uploads/custom-images/apple-2024-03-18-10-04-36-5281.png','2022-09-20 05:16:25','2024-03-19 04:37:47'),(2,'Samsung','samsung','fab fa-android',1,'uploads/custom-images/samsung-2024-03-18-10-05-47-4376.png','2022-09-20 05:16:50','2024-03-18 22:05:47'),(3,'Tecno','techno','fas fa-mobile-alt',1,'uploads/custom-images/tecno-2024-03-18-10-09-14-9719.png','2022-09-20 05:17:43','2024-03-18 22:09:14'),(4,'Oppo','oppo','far fa-square',1,'uploads/custom-images/oppo-2024-03-18-10-07-55-8416.png','2022-09-20 05:24:47','2024-03-18 22:07:55'),(5,'Xiaomi','xiaomi','fab fa-mix',1,'uploads/custom-images/xiaomi-2024-03-18-10-11-17-1339.jpg','2022-09-20 05:26:13','2024-03-18 22:11:17'),(6,'Infinix','infinix','fas fa-info',1,'uploads/custom-images/infinix-2024-03-18-10-13-17-8583.png','2022-09-20 05:28:22','2024-03-18 22:13:18'),(7,'Itel','itel','fas fa-info-circle',1,'uploads/custom-images/itel-2024-03-18-10-16-55-1422.png','2022-09-20 05:35:28','2024-03-18 22:16:55'),(8,'Nokia','nokia','fas fa-mobile',1,'uploads/custom-images/nokia-2024-03-18-10-20-24-3578.jpeg','2022-09-20 05:38:38','2024-03-18 22:20:25'),(9,'OnePlus','oneplus','fas fa-plus',1,'uploads/custom-images/oneplus-2024-03-18-10-21-06-4326.jpg','2022-09-20 06:04:03','2024-03-18 22:21:06'),(10,'Realme','relame','fas fa-registered',1,'uploads/custom-images/realme-2024-03-18-10-23-41-4594.png','2022-09-20 06:05:41','2024-03-18 22:23:41'),(11,'Vivo','vivo','fas fa-chevron-down',1,'uploads/custom-images/vivo-2024-03-18-10-24-37-2705.png','2022-11-17 05:54:49','2024-03-18 22:24:37'),(12,'Google','google','fab fa-google',1,'uploads/custom-images/google-2024-03-18-10-25-47-9552.png','2022-09-20 05:38:38','2024-03-18 22:25:48'),(13,'Mobile Accessories','accessories','fab fa-amilia',1,'uploads/custom-images/mobile-accessories-2024-03-18-10-28-04-9811.png','2022-11-17 05:54:49','2024-03-18 22:28:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_categories`
--

DROP TABLE IF EXISTS `child_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_categories`
--

LOCK TABLES `child_categories` WRITE;
/*!40000 ALTER TABLE `child_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_state_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,2,'Lamu','lamu',1,'2022-01-30 09:29:19','2022-02-06 04:18:33'),(2,1,'Langata','langata',1,'2022-01-30 09:29:29','2022-02-06 04:20:30'),(4,2,'Tallahassee','tallahassee',1,'2022-02-06 04:18:49','2022-02-06 04:18:49'),(5,2,'Weston','weston',1,'2022-02-06 04:19:56','2022-02-06 04:19:56'),(6,1,'Kilimani','kilimani',1,'2022-02-06 04:21:08','2022-02-06 04:21:08'),(7,1,'Westlands','westlands',1,'2022-02-06 04:21:26','2022-02-06 04:21:26'),(8,2,'Thika','thika',1,'2022-02-06 04:22:21','2022-02-06 04:22:21'),(9,3,'Rongai','rongai',1,'2022-02-06 04:22:44','2022-02-06 04:22:44'),(10,3,'Nakuru','nakuru',1,'2022-02-06 04:23:12','2022-02-06 04:23:12'),(11,3,'Town','town',1,'2022-02-06 04:23:29','2022-07-31 02:52:47');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compare_products`
--

DROP TABLE IF EXISTS `compare_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compare_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compare_products`
--

LOCK TABLES `compare_products` WRITE;
/*!40000 ALTER TABLE `compare_products` DISABLE KEYS */;
INSERT INTO `compare_products` VALUES (17,7,37,'2022-10-27 09:42:54','2022-10-27 09:42:54'),(18,7,4,'2022-11-21 12:25:03','2022-11-21 12:25:03');
/*!40000 ALTER TABLE `compare_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (2,'Ibrahim Khalil','agent@gmail.com',NULL,'Subscribe Verification','tst','2022-10-29 17:55:18','2022-10-29 17:55:18'),(3,'John Doe','user@gmail.com',NULL,'Subscribe Verification','test','2022-10-29 19:07:00','2022-10-29 19:07:00');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_pages`
--

DROP TABLE IF EXISTS `contact_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_pages`
--

LOCK TABLES `contact_pages` WRITE;
/*!40000 ALTER TABLE `contact_pages` DISABLE KEYS */;
INSERT INTO `contact_pages` VALUES (1,'Contact Information','Ropem Telcom LTD is a telecommunications company incorporated in Kenya with a view of partnering with Safaricom as a national distribution partner. \r\n\r\nWe are authorised Safaricom dealers dealing in Smartphones and Feature-phones, mobile accessories, phone repair services and general Safaricom Customer Care. Our objective is to become a leading telephony solutions provider and manage a successful distribution network in the country. Our focus on customer service, resource persons, strategic management solutions, and our focus on escalation and retention of both market share and presence make us the definitive distribution partner. With over 20 branches distributed countrywide we are definetely you one-stop shop for all things mobile phones.','info@ropemtrends.com','Stanbank House Building, next to MR PRICE  PR8G+554 City Centre, Between Moi Avenue and, Tom Mboya St, Nairobi','0110036222','https://maps.google.com/maps?ll=-1.284381,36.825616&z=17&t=m&hl=en-US&gl=US&mapclient=embed&q=Stanbank%20House%20Nairobi','2022-09-22 11:08:24','2024-03-18 23:42:28');
/*!40000 ALTER TABLE `contact_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents`
--

DROP TABLE IF EXISTS `cookie_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '1',
  `border` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents`
--

LOCK TABLES `cookie_consents` WRITE;
/*!40000 ALTER TABLE `cookie_consents` DISABLE KEYS */;
INSERT INTO `cookie_consents` VALUES (1,1,'thin','normal','#184dec','#fafafa','#0a58d6','#fffceb','#222758','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.','More Info','Yes',NULL,NULL,'2022-02-13 08:06:04');
/*!40000 ALTER TABLE `cookie_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Kenya','kenya',1,'2022-01-30 09:28:28','2022-02-06 04:11:42');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_states`
--

DROP TABLE IF EXISTS `country_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_states`
--

LOCK TABLES `country_states` WRITE;
/*!40000 ALTER TABLE `country_states` DISABLE KEYS */;
INSERT INTO `country_states` VALUES (1,1,'Nakuru','nakuru',1,'2022-01-30 09:29:00','2022-02-06 04:14:28'),(2,1,'Mombasa','mombasa',1,'2022-01-30 09:29:07','2022-02-06 04:14:42'),(3,1,'Nairobi','nairobi',1,'2022-02-05 07:49:14','2022-02-06 04:15:09');
/*!40000 ALTER TABLE `country_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `min_purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'Happy New Year','newyear',1,10,100,'200','2025-12-10',2,1,'2022-11-16 02:18:50','2022-11-22 18:03:11');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'AFA','Afghan Afghani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'ALL','Albanian Lek','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'DZD','Algerian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'AOA','Angolan Kwanza','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'ARS','Argentine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'AMD','Armenian Dram','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'AWG','Aruban Florin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'AUD','Australian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'AZN','Azerbaijani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'BSD','Bahamian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'BHD','Bahraini Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'BDT','Bangladeshi Taka','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'BBD','Barbadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'BYR','Belarusian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'BEF','Belgian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'BZD','Belize Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'BMD','Bermudan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'BTN','Bhutanese Ngultrum','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'BTC','Bitcoin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'BOB','Bolivian Boliviano','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'BAM','Bosnia-Herzegovina Convertible Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'BWP','Botswanan Pula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'BRL','Brazilian Real','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'GBP','British Pound Sterling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'BND','Brunei Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'BGN','Bulgarian Lev','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'BIF','Burundian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'KHR','Cambodian Riel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'CAD','Canadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'CVE','Cape Verdean Escudo','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'KYD','Cayman Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'XOF','CFA Franc BCEAO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'XAF','CFA Franc BEAC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'XPF','CFP Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'CLP','Chilean Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'CNY','Chinese Yuan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'COP','Colombian Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'KMF','Comorian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'CDF','Congolese Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'CRC','Costa Rican ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'HRK','Croatian Kuna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'CUC','Cuban Convertible Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'CZK','Czech Republic Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'DKK','Danish Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'DJF','Djiboutian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'DOP','Dominican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'XCD','East Caribbean Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'EGP','Egyptian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'ERN','Eritrean Nakfa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'EEK','Estonian Kroon','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'ETB','Ethiopian Birr','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'EUR','Euro','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'FKP','Falkland Islands Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'FJD','Fijian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'GMD','Gambian Dalasi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'GEL','Georgian Lari','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'DEM','German Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'GHS','Ghanaian Cedi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'GIP','Gibraltar Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'GRD','Greek Drachma','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'GTQ','Guatemalan Quetzal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'GNF','Guinean Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'GYD','Guyanaese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'HTG','Haitian Gourde','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'HNL','Honduran Lempira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'HKD','Hong Kong Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'HUF','Hungarian Forint','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'ISK','Icelandic KrÃ³na','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'INR','Indian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'IDR','Indonesian Rupiah','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'IRR','Iranian Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'IQD','Iraqi Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'ILS','Israeli New Sheqel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'ITL','Italian Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'JMD','Jamaican Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'JPY','Japanese Yen','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'JOD','Jordanian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'KZT','Kazakhstani Tenge','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'KES','Kenyan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'KWD','Kuwaiti Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'KGS','Kyrgystani Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'LAK','Laotian Kip','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'LVL','Latvian Lats','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'LBP','Lebanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'LSL','Lesotho Loti','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'LRD','Liberian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'LYD','Libyan Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'LTL','Lithuanian Litas','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'MOP','Macanese Pataca','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'MKD','Macedonian Denar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'MGA','Malagasy Ariary','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'MWK','Malawian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'MYR','Malaysian Ringgit','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'MVR','Maldivian Rufiyaa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'MRO','Mauritanian Ouguiya','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'MUR','Mauritian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'MXN','Mexican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'MDL','Moldovan Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'MNT','Mongolian Tugrik','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'MAD','Moroccan Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'MZM','Mozambican Metical','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'MMK','Myanmar Kyat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'NAD','Namibian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'NPR','Nepalese Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'ANG','Netherlands Antillean Guilder','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'TWD','New Taiwan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'NZD','New Zealand Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'NIO','Nicaraguan CÃ³rdoba','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'NGN','Nigerian Naira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'KPW','North Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'NOK','Norwegian Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'OMR','Omani Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'PKR','Pakistani Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'PAB','Panamanian Balboa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'PGK','Papua New Guinean Kina','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'PYG','Paraguayan Guarani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'PEN','Peruvian Nuevo Sol','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'PHP','Philippine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'PLN','Polish Zloty','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'QAR','Qatari Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'RON','Romanian Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'RUB','Russian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'RWF','Rwandan Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'SVC','Salvadoran ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'WST','Samoan Tala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'SAR','Saudi Riyal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'RSD','Serbian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'SCR','Seychellois Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'SLL','Sierra Leonean Leone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'SGD','Singapore Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'SKK','Slovak Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'SBD','Solomon Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'SOS','Somali Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'ZAR','South African Rand','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'KRW','South Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'XDR','Special Drawing Rights','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'LKR','Sri Lankan Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'SHP','St. Helena Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'SDG','Sudanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'SRD','Surinamese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'SZL','Swazi Lilangeni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'SEK','Swedish Krona','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'CHF','Swiss Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'SYP','Syrian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'STD','São Tomé and Príncipe Dobra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'TJS','Tajikistani Somoni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'TZS','Tanzanian Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'THB','Thai Baht','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'TOP','Tongan pa\'anga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'TTD','Trinidad & Tobago Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'TND','Tunisian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'TRY','Turkish Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'TMT','Turkmenistani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'UGX','Ugandan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'UAH','Ukrainian Hryvnia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'AED','United Arab Emirates Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'UYU','Uruguayan Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'USD','US Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'UZS','Uzbekistan Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'VUV','Vanuatu Vatu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'VEF','Venezuelan BolÃ­var','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'VND','Vietnamese Dong','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'YER','Yemeni Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'ZMK','Zambian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_countries`
--

DROP TABLE IF EXISTS `currency_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_countries`
--

LOCK TABLES `currency_countries` WRITE;
/*!40000 ALTER TABLE `currency_countries` DISABLE KEYS */;
INSERT INTO `currency_countries` VALUES (1,'Andorra','AD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Afghanistan','AF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Åland Islands','AX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Albania','AL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Algeria','DZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'American Samoa','AS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Angola','AO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Anguilla','AI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Antarctica','AQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Antigua and Barbuda','AG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Argentina','AR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Armenia','AM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Aruba','AW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Australia','AU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Austria','AT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Azerbaijan','AZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Bahamas','BS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Bahrain','BH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Bangladesh','BD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Barbados','BB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Belarus','BY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Belgium','BE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Belize','BZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Benin','BJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Bermuda','BM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Bhutan','BT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Bolivia (Plurinational State of)','BO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Bonaire, Sint Eustatius and Saba','BQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Bosnia and Herzegovina','BA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Botswana','BW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Bouvet Island','BV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Brazil','BR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'British Indian Ocean Territory','IO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Brunei Darussalam','BN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Bulgaria','BG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Burkina Faso','BF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Burundi','BI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Cabo Verde','CV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Cambodia','KH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Cameroon','CM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Canada','CA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Cayman Islands','KY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Central African Republic','CF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Chad','TD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Chile','CL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'China','CN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Christmas Island','CX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Cocos (Keeling) Islands','CC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Colombia','CO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Comoros','KM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Congo','CG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Congo (Democratic Republic of the)','CD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Cook Islands','CK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Costa Rica','CR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Côte d\'Ivoire','CI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Croatia','HR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Cuba','CU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Curaçao','CW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Cyprus','CY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Czech Republic','CZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Denmark','DK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Djibouti','DJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Dominica','DM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Dominican Republic','DO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Ecuador','EC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Egypt','EG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'El Salvador','SV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Equatorial Guinea','GQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Eritrea','ER','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Estonia','EE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Ethiopia','ET','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Falkland Islands (Malvinas)','FK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Faroe Islands','FO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Fiji','FJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Finland','FI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'France','FR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'French Guiana','GF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'French Polynesia','PF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'French Southern Territories','TF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Gabon','GA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Gambia','GM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Georgia','GE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Germany','DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Ghana','GH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Gibraltar','GI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Greece','GR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Greenland','GL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Grenada','GD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Guadeloupe','GP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Guam','GU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Guatemala','GT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Guernsey','GG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Guinea','GN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Guinea-Bissau','GW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Guyana','GY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Haiti','HT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Heard Island and McDonald Islands','HM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Holy See','VA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'Honduras','HN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Hong Kong','HK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Hungary','HU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'Iceland','IS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'India','IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Indonesia','ID','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'Iran (Islamic Republic of)','IR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'Iraq','IQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'Ireland','IE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'Isle of Man','IM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'Israel','IL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'Italy','IT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'Jamaica','JM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'Japan','JP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'Jersey','JE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Jordan','JO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Kazakhstan','KZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Kenya','KE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Kiribati','KI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'Korea (Democratic People\'s Republic of)','KP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'Korea (Republic of)','KR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Kuwait','KW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Kyrgyzstan','KG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'Lao People\'s Democratic Republic','LA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Latvia','LV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'Lebanon','LB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'Lesotho','LS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'Liberia','LR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'Libya','LY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'Liechtenstein','LI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'Lithuania','LT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'Luxembourg','LU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'Macao','MO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'Macedonia (the former Yugoslav Republic of)','MK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'Madagascar','MG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'Malawi','MW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'Malaysia','MY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'Maldives','MV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'Mali','ML','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'Malta','MT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'Marshall Islands','MH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'Martinique','MQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'Mauritania','MR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'Mauritius','MU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'Mayotte','YT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'Mexico','MX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'Micronesia (Federated States of)','FM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'Moldova (Republic of)','MD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'Monaco','MC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'Mongolia','MN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'Montenegro','ME','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'Montserrat','MS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'Morocco','MA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'Mozambique','MZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'Myanmar','MM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'Namibia','NA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'Nauru','NR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'Nepal','NP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'Netherlands','NL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'New Caledonia','NC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'New Zealand','NZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'Nicaragua','NI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'Niger','NE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'Nigeria','NG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'Niue','NU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'Norfolk Island','NF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'Northern Mariana Islands','MP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'Norway','NO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'Oman','OM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'Pakistan','PK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'Palau','PW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'Palestine, State of','PS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'Panama','PA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'Papua New Guinea','PG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'Paraguay','PY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'Peru','PE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'Philippines','PH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'Pitcairn','PN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'Poland','PL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'Portugal','PT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'Puerto Rico','PR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'Qatar','QA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'Réunion','RE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'Romania','RO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Russian Federation','RU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'Rwanda','RW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'Saint Barthélemy','BL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'Saint Helena, Ascension and Tristan da Cunha','SH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'Saint Kitts and Nevis','KN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'Saint Lucia','LC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'Saint Martin (French part)','MF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'Saint Pierre and Miquelon','PM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'Saint Vincent and the Grenadines','VC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'Samoa','WS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'San Marino','SM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'Sao Tome and Principe','ST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'Saudi Arabia','SA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'Senegal','SN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'Serbia','RS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'Seychelles','SC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'Sierra Leone','SL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'Singapore','SG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'Sint Maarten (Dutch part)','SX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'Slovakia','SK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'Slovenia','SI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'Solomon Islands','SB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'Somalia','SO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'South Africa','ZA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'South Georgia and the South Sandwich Islands','GS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'South Sudan','SS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'Spain','ES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'Sri Lanka','LK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'Sudan','SD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'Suriname','SR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'Svalbard and Jan Mayen','SJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'Swaziland','SZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'Sweden','SE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'Switzerland','CH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'Syrian Arab Republic','SY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'Taiwan, Province of China','TW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'Tajikistan','TJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Tanzania, United Republic of','TZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'Thailand','TH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'Timor-Leste','TL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'Togo','TG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'Tokelau','TK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'Tonga','TO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'Trinidad and Tobago','TT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'Tunisia','TN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'Turkey','TR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'Turkmenistan','TM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'Turks and Caicos Islands','TC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'Tuvalu','TV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'Uganda','UG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'Ukraine','UA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'United Arab Emirates','AE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'United Kingdom of Great Britain and Northern Ireland','GB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'United States Minor Outlying Islands','UM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'United States of America','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'Uruguay','UY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'Uzbekistan','UZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,'Vanuatu','VU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,'Venezuela (Bolivarian Republic of)','VE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,'Viet Nam','VN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,'Virgin Islands (British)','VG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,'Virgin Islands (U.S.)','VI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,'Wallis and Futuna','WF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,'Western Sahara','EH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,'Yemen','YE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,'Zambia','ZM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,'Zimbabwe','ZW','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currency_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages`
--

LOCK TABLES `custom_pages` WRITE;
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_paginations`
--

DROP TABLE IF EXISTS `custom_paginations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_paginations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_paginations`
--

LOCK TABLES `custom_paginations` WRITE;
/*!40000 ALTER TABLE `custom_paginations` DISABLE KEYS */;
INSERT INTO `custom_paginations` VALUES (1,'Blog Page',4,NULL,'2022-11-18 02:19:18'),(2,'Product Page',12,NULL,'2022-11-18 02:22:39'),(3,'Brand Page',10,NULL,'2022-06-11 11:13:13'),(4,'Blog Comment',4,NULL,'2022-06-11 11:13:13'),(5,'Product Review',8,NULL,'2022-06-11 11:13:13'),(6,'Seller page',8,NULL,'2022-06-11 11:13:13');
/*!40000 ALTER TABLE `custom_paginations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_man_reviews`
--

DROP TABLE IF EXISTS `delivery_man_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` int NOT NULL,
  `user_id` int NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man_reviews`
--

LOCK TABLES `delivery_man_reviews` WRITE;
/*!40000 ALTER TABLE `delivery_man_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_man_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_man_withdraw_methods`
--

DROP TABLE IF EXISTS `delivery_man_withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man_withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man_withdraw_methods`
--

LOCK TABLES `delivery_man_withdraw_methods` WRITE;
/*!40000 ALTER TABLE `delivery_man_withdraw_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_man_withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_man_withdraws`
--

DROP TABLE IF EXISTS `delivery_man_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` int NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man_withdraws`
--

LOCK TABLES `delivery_man_withdraws` WRITE;
/*!40000 ALTER TABLE `delivery_man_withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_man_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_men` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `man_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `man_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idn_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idn_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idn_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_men_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_messages`
--

DROP TABLE IF EXISTS `delivery_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_messages`
--

LOCK TABLES `delivery_messages` WRITE;
/*!40000 ALTER TABLE `delivery_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_configurations`
--

DROP TABLE IF EXISTS `email_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_configurations`
--

LOCK TABLES `email_configurations` WRITE;
/*!40000 ALTER TABLE `email_configurations` DISABLE KEYS */;
INSERT INTO `email_configurations` VALUES (1,2,'quomodosoft.online','465','inflanar@quomodosoft.online','inflanar@quomodosoft.online','R5wUj!-Z1TYR','tls',NULL,'2024-02-06 19:57:32');
/*!40000 ALTER TABLE `email_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Password Reset','Password Reset','<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>',NULL,'2022-06-11 10:43:01'),(2,'Contact Email','Contact Email','<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>',NULL,'2021-12-10 23:44:34'),(3,'Subscribe Notification','Subscribe Notification','<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>',NULL,'2021-12-10 23:44:53'),(4,'User Verification','User Verification','<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>',NULL,'2021-12-10 23:45:25'),(5,'Seller Withdraw','Seller Withdraw Approval','<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>',NULL,'2021-12-26 03:24:45'),(6,'Order Successfully','Order Successfully','<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>',NULL,'2022-01-10 21:37:03'),(7,'Seller Request Approved','Seller Request Approved','<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>',NULL,'2022-02-05 08:59:34');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_pages`
--

DROP TABLE IF EXISTS `error_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_pages`
--

LOCK TABLES `error_pages` WRITE;
/*!40000 ALTER TABLE `error_pages` DISABLE KEYS */;
INSERT INTO `error_pages` VALUES (1,'404 page','404.jpg','test header','Go to Home',NULL,'2022-09-20 08:24:13'),(2,'500 Error','500.jpg','That Page Doesn\'t Exist!','Go to Home',NULL,'2021-12-06 09:46:52'),(3,'505 Error','505.jpg','That Page Doesn\'t Exist!','Go to Home',NULL,'2021-12-06 09:46:57');
/*!40000 ALTER TABLE `error_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_comments`
--

DROP TABLE IF EXISTS `facebook_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_comments`
--

LOCK TABLES `facebook_comments` WRITE;
/*!40000 ALTER TABLE `facebook_comments` DISABLE KEYS */;
INSERT INTO `facebook_comments` VALUES (1,'test',1,NULL,'2022-06-11 11:07:29');
/*!40000 ALTER TABLE `facebook_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_pixels`
--

DROP TABLE IF EXISTS `facebook_pixels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_pixels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_pixels`
--

LOCK TABLES `facebook_pixels` WRITE;
/*!40000 ALTER TABLE `facebook_pixels` DISABLE KEYS */;
INSERT INTO `facebook_pixels` VALUES (1,1,'fsdf45sdf4sdf',NULL,'2022-06-11 11:17:42');
/*!40000 ALTER TABLE `facebook_pixels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (2,'how to download wordpress','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown&nbsp;</p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">',1,'2022-09-22 13:27:39','2022-09-22 13:27:39'),(3,'how to download elementor','<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>',1,'2022-09-22 13:28:08','2022-09-22 13:28:08'),(4,'how to download app','<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>',1,'2022-09-22 13:28:20','2022-09-22 13:28:20'),(5,'how to download IOS app','<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>',1,'2022-09-22 13:28:36','2022-09-22 13:28:36');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_categories`
--

DROP TABLE IF EXISTS `featured_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featured_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_categories`
--

LOCK TABLES `featured_categories` WRITE;
/*!40000 ALTER TABLE `featured_categories` DISABLE KEYS */;
INSERT INTO `featured_categories` VALUES (4,2,'2024-03-19 01:13:15','2024-03-19 01:13:15');
/*!40000 ALTER TABLE `featured_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sale_products`
--

DROP TABLE IF EXISTS `flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sale_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sale_products`
--

LOCK TABLES `flash_sale_products` WRITE;
/*!40000 ALTER TABLE `flash_sale_products` DISABLE KEYS */;
INSERT INTO `flash_sale_products` VALUES (8,65,1,'2024-03-19 03:28:41','2024-03-19 03:28:41');
/*!40000 ALTER TABLE `flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sales`
--

DROP TABLE IF EXISTS `flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flashsale_page_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sales`
--

LOCK TABLES `flash_sales` WRITE;
/*!40000 ALTER TABLE `flash_sales` DISABLE KEYS */;
INSERT INTO `flash_sales` VALUES (1,'EASTER SALE! Flash Sale','uploads/website-images/flash_sale--2024-03-19-08-26-09-4956.png','uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png','2024-04-02 06:11:00',10,1,NULL,'2024-03-19 08:26:09');
/*!40000 ALTER TABLE `flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flutterwaves`
--

DROP TABLE IF EXISTS `flutterwaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flutterwaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flutterwaves`
--

LOCK TABLES `flutterwaves` WRITE;
/*!40000 ALTER TABLE `flutterwaves` DISABLE KEYS */;
INSERT INTO `flutterwaves` VALUES (1,'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X','FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X',417.35,'NG','NGN','Ecommerce','uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg',1,NULL,'2024-02-06 20:41:47',4);
/*!40000 ALTER TABLE `flutterwaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_links`
--

DROP TABLE IF EXISTS `footer_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_links`
--

LOCK TABLES `footer_links` WRITE;
/*!40000 ALTER TABLE `footer_links` DISABLE KEYS */;
INSERT INTO `footer_links` VALUES (1,'1','/about','About Us','2022-09-20 08:19:02','2022-11-17 23:48:53'),(2,'1','/terms-condition','Terms Condition','2022-09-20 08:19:15','2022-11-17 23:48:57'),(3,'1','/products?highlight=best_product','Best Products','2022-09-20 08:19:24','2022-11-17 23:50:38'),(4,'2','/blogs','Blog','2022-09-20 08:19:38','2022-11-17 23:49:16'),(5,'2','/products','shop','2022-09-20 08:19:46','2024-03-19 07:05:31'),(6,'2','/faq','Support','2022-09-20 08:19:52','2022-11-17 23:49:30'),(7,'3','/about','About Us','2022-09-20 08:20:05','2022-11-17 23:49:38'),(8,'3','/products?highlight=popular_category','Popular Category','2022-09-20 08:20:11','2022-11-17 23:49:48'),(9,'3','/contact','Contact Us','2022-09-20 08:20:19','2022-11-17 23:49:56');
/*!40000 ALTER TABLE `footer_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_social_links`
--

DROP TABLE IF EXISTS `footer_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_social_links`
--

LOCK TABLES `footer_social_links` WRITE;
/*!40000 ALTER TABLE `footer_social_links` DISABLE KEYS */;
INSERT INTO `footer_social_links` VALUES (1,'https://www.facebook.com/','fab fa-facebook-f','2022-09-20 08:18:12','2022-09-20 08:18:12'),(2,'https://twitter.com','fab fa-twitter','2022-09-20 08:18:29','2024-03-19 07:05:57'),(3,'https://linkedin.com/','fab fa-linkedin','2022-09-20 08:18:43','2022-09-20 08:18:43');
/*!40000 ALTER TABLE `footer_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_us` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers`
--

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` VALUES (1,'Ropem Telcom LTD is a telecommunications company incorporated in Kenya with a view of partnering with Safaricom as a national distribution partner.','+254110036222','abdur.rohman2003@gmail.com','Stanbank House Building, next to MR PRICE  PR8G+554 City Centre, Between Moi Avenue and, Tom Mboya St, Nairobi','Feature','General Links','Helpful','©2024 Ropem All rights reserved','uploads/website-images/payment-card-2022-09-26-12-59-29-8933.png',NULL,'2024-03-18 23:49:34');
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_analytics`
--

DROP TABLE IF EXISTS `google_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `analytic_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_analytics`
--

LOCK TABLES `google_analytics` WRITE;
/*!40000 ALTER TABLE `google_analytics` DISABLE KEYS */;
INSERT INTO `google_analytics` VALUES (1,'5248-fd-5fds',1,NULL,'2022-06-11 11:10:27');
/*!40000 ALTER TABLE `google_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_recaptchas`
--

DROP TABLE IF EXISTS `google_recaptchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_recaptchas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_recaptchas`
--

LOCK TABLES `google_recaptchas` WRITE;
/*!40000 ALTER TABLE `google_recaptchas` DISABLE KEYS */;
INSERT INTO `google_recaptchas` VALUES (1,'test','test',1,NULL,'2022-06-11 11:05:35');
/*!40000 ALTER TABLE `google_recaptchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_one_visibilities`
--

DROP TABLE IF EXISTS `home_page_one_visibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page_one_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `default_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `qty` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_one_visibilities`
--

LOCK TABLES `home_page_one_visibilities` WRITE;
/*!40000 ALTER TABLE `home_page_one_visibilities` DISABLE KEYS */;
INSERT INTO `home_page_one_visibilities` VALUES (1,'Slider','Slider',1,6,NULL,'2022-06-14 06:30:37'),(2,'Our Service','Our Service',1,6,NULL,'2022-06-14 06:29:47'),(4,'Popular Category','Popular Categories',1,24,NULL,'2022-06-14 06:29:47'),(5,'Brand','Our Brand',1,12,NULL,'2022-06-14 06:29:47'),(6,'Top Rated Product','Top Rated Product',1,16,NULL,'2022-06-14 06:29:47'),(7,'Best Seller','Best Sellers',1,8,NULL,'2022-06-14 06:29:47'),(8,'Featured Product','Featured Products',1,15,NULL,'2022-06-14 06:29:47'),(9,'New Arrival','New Arrival',1,19,NULL,'2022-06-14 06:29:47'),(10,'Best Product','Best Product',1,16,NULL,'2022-06-14 06:29:47');
/*!40000 ALTER TABLE `home_page_one_visibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instamojo_payments`
--

DROP TABLE IF EXISTS `instamojo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instamojo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `account_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instamojo_payments`
--

LOCK TABLES `instamojo_payments` WRITE;
/*!40000 ALTER TABLE `instamojo_payments` DISABLE KEYS */;
INSERT INTO `instamojo_payments` VALUES (1,'test_5f4a2c9a58ef216f8a1a688910f','test_994252ada69ce7b3d282b9941c2','74.66','Sandbox',1,NULL,'2024-02-07 15:37:24',3);
/*!40000 ALTER TABLE `instamojo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `stock_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (2,12,'230','2023-01-12 09:36:10','2023-01-12 09:36:10'),(3,12,'555','2023-01-12 09:36:16','2023-01-12 09:36:16'),(6,13,'100','2023-01-12 09:59:48','2023-01-12 09:59:48'),(7,13,'50','2023-01-12 10:00:36','2023-01-12 10:00:36'),(8,13,'80','2023-01-12 10:00:39','2023-01-12 10:00:39'),(10,36,'10','2023-01-12 10:24:07','2023-01-12 10:24:07'),(11,37,'100','2023-01-12 10:25:21','2023-01-12 10:25:21'),(12,37,'800','2023-01-12 10:25:28','2023-01-12 10:25:28');
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintainance_texts`
--

DROP TABLE IF EXISTS `maintainance_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintainance_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintainance_texts`
--

LOCK TABLES `maintainance_texts` WRITE;
/*!40000 ALTER TABLE `maintainance_texts` DISABLE KEYS */;
INSERT INTO `maintainance_texts` VALUES (1,0,'uploads/website-images/maintainance-mode-2022-09-20-02-13-54-5890.png','We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.',NULL,'2022-09-20 08:44:39');
/*!40000 ALTER TABLE `maintainance_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mega_menu_categories`
--

DROP TABLE IF EXISTS `mega_menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mega_menu_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mega_menu_categories`
--

LOCK TABLES `mega_menu_categories` WRITE;
/*!40000 ALTER TABLE `mega_menu_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_categories` VALUES (1,1,0,1,'2022-09-20 07:06:01','2024-03-19 03:59:31'),(2,2,0,2,'2022-09-20 07:07:39','2024-03-19 03:59:31'),(3,3,0,3,'2022-09-20 07:11:07','2024-03-19 03:59:32');
/*!40000 ALTER TABLE `mega_menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mega_menu_sub_categories`
--

DROP TABLE IF EXISTS `mega_menu_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mega_menu_category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mega_menu_sub_categories`
--

LOCK TABLES `mega_menu_sub_categories` WRITE;
/*!40000 ALTER TABLE `mega_menu_sub_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_sub_categories` VALUES (10,1,21,1,1,'2024-03-19 03:15:11','2024-03-19 03:15:11');
/*!40000 ALTER TABLE `mega_menu_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_visibilities`
--

DROP TABLE IF EXISTS `menu_visibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_visibilities`
--

LOCK TABLES `menu_visibilities` WRITE;
/*!40000 ALTER TABLE `menu_visibilities` DISABLE KEYS */;
INSERT INTO `menu_visibilities` VALUES (1,'Home',1,NULL,'2022-01-23 20:05:32'),(2,'Shop',1,NULL,'2022-01-23 20:05:31'),(3,'Mega Menu',1,NULL,'2022-01-16 20:51:23'),(4,'Sellers',0,NULL,'2022-01-16 20:52:31'),(5,'Blog',1,NULL,'2022-01-16 20:52:32'),(6,'Campaign',0,NULL,'2022-01-16 20:52:33'),(7,'Pages',1,NULL,'2022-01-16 20:52:34'),(8,'About us',1,NULL,'2022-01-16 20:57:27'),(9,'Contact Us',1,NULL,'2022-01-16 20:57:28'),(10,'Checkout',1,NULL,'2022-01-16 20:57:29'),(11,'Brand',1,NULL,'2022-01-16 20:57:25'),(12,'FAQ',1,NULL,'2022-01-16 20:57:26'),(13,'Privacy Policy',1,NULL,'2022-01-16 20:57:23'),(14,'Terms and Conditions',1,NULL,'2022-01-16 20:57:22'),(15,'Track Order',1,NULL,'2022-01-16 20:52:29'),(16,'Flash Deal',1,NULL,'2022-01-16 20:52:28'),(17,'My Account',1,NULL,'2022-01-16 20:04:54'),(18,'Login/Register',1,NULL,'2022-01-16 20:04:47'),(19,'Shopping Cart',1,NULL,'2022-01-16 20:09:28'),(20,'Compare',1,NULL,'2022-01-16 20:37:54'),(21,'Wishlist',1,NULL,'2022-01-16 20:37:55'),(22,'Topbar Phone',1,NULL,'2022-01-16 20:02:07'),(23,'Menu Phone',1,NULL,'2022-01-16 20:08:00'),(24,'Categories',1,NULL,'2022-01-16 23:52:39'),(25,'Search',1,NULL,'2022-01-16 20:37:56');
/*!40000 ALTER TABLE `menu_visibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `product_id` int NOT NULL DEFAULT '0',
  `customer_read_msg` int NOT NULL DEFAULT '0',
  `seller_read_msg` int NOT NULL,
  `send_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,7,4,'this is test message',14,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(2,7,4,'Hi, are you there ?',0,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(3,7,4,'Yes there. please tell me how can I help',0,1,1,'seller','2022-12-19 15:36:56','2022-12-19 15:36:56'),(4,7,9,'this is test message',0,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(5,7,9,'Hi, are you there ?',0,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(6,7,9,'Yes there. please tell me how can I help',0,0,1,'seller','2022-12-19 15:36:56','2022-12-19 15:36:56'),(7,7,8,'this is test message',0,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(8,7,8,'Hi, are you there ?',0,1,0,'customer','2022-12-19 15:36:56','2022-12-19 15:36:56'),(9,7,8,'Yes there. please tell me how can I help',0,0,1,'seller','2022-12-19 15:36:56','2022-12-19 15:36:56'),(10,7,8,'It\'s available now. You can buy it',0,0,1,'seller','2022-12-19 15:36:56','2022-12-19 15:36:56'),(11,7,8,'It\'s available now. You can buy it',0,0,1,'seller','2022-12-19 15:36:56','2022-12-19 15:36:56'),(12,7,4,'Hello seller',0,1,0,'customer','2022-12-20 14:15:11','2022-12-20 14:15:11'),(13,7,4,'Hello seller',0,1,0,'customer','2022-12-20 14:23:32','2022-12-20 14:23:32'),(14,7,4,'Hello seller',0,1,0,'customer','2022-12-20 14:24:52','2022-12-20 14:24:52'),(15,7,4,'Hello seller',14,1,0,'customer','2022-12-20 14:25:32','2022-12-20 14:25:32'),(16,7,4,'Hello seller',14,1,0,'customer','2022-12-20 14:26:26','2022-12-20 14:26:26'),(17,7,4,'Hello seller',0,1,0,'customer','2022-12-28 04:51:26','2022-12-28 04:51:26'),(18,7,12,'Hello seller',0,1,1,'customer','2022-12-28 05:48:16','2023-01-24 12:20:49'),(19,7,12,'Are you there  ?',0,1,1,'customer','2022-12-28 05:54:09','2023-01-24 12:20:49'),(20,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 05:54:17','2023-01-24 12:20:49'),(21,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 09:02:08','2023-01-24 12:20:49'),(22,15,12,'Is it available ?',0,1,1,'customer','2022-12-28 09:02:08','2022-12-29 15:27:22'),(23,7,12,'Hello seller',0,0,1,'seller','2022-12-28 05:48:16','2023-01-24 12:20:49'),(24,7,12,'Are you there  ?',0,0,1,'seller','2022-12-28 05:54:09','2023-01-24 12:20:49'),(25,7,12,'Is it available ?',0,0,1,'seller','2022-12-28 05:54:17','2023-01-24 12:20:49'),(26,7,12,'Is it available ?',0,0,1,'seller','2022-12-28 09:02:08','2023-01-24 12:20:49'),(27,7,12,'Hello seller',0,1,1,'customer','2022-12-28 05:48:16','2023-01-24 12:20:49'),(28,7,12,'Are you there  ?',0,1,1,'customer','2022-12-28 05:54:09','2023-01-24 12:20:49'),(29,7,12,'Hi Joe',0,0,1,'seller','2022-12-28 11:21:26','2023-01-24 12:20:49'),(30,7,12,'do you want to purchase this ?',0,0,1,'seller','2022-12-28 11:24:49','2023-01-24 12:20:49'),(31,7,12,'How many item do you want ?',0,0,1,'seller','2022-12-28 11:26:17','2023-01-24 12:20:49'),(32,7,12,'where is ur location ?',0,0,1,'seller','2022-12-28 11:26:40','2023-01-24 12:20:49'),(33,7,12,'please share your phone number',0,0,1,'seller','2022-12-28 11:28:02','2023-01-24 12:20:49'),(34,15,12,'Yes available',0,0,1,'seller','2022-12-28 11:44:26','2022-12-29 15:27:22'),(35,15,12,'want to purchase ?',0,0,1,'seller','2022-12-28 11:44:35','2022-12-29 15:27:22'),(36,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 11:59:51','2023-01-24 12:20:49'),(37,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 12:00:49','2023-01-24 12:20:49'),(38,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 12:08:35','2023-01-24 12:20:49'),(39,7,12,'Is it available ?',0,1,1,'customer','2022-12-28 12:18:44','2023-01-24 12:20:49'),(40,7,12,'Is it available ?',0,1,1,'customer','2022-12-29 03:15:15','2023-01-24 12:20:49'),(41,7,12,'Is it available ?',0,1,1,'customer','2022-12-29 03:48:04','2023-01-24 12:20:49'),(42,7,12,'Is it available ?',0,1,1,'customer','2022-12-29 03:54:26','2023-01-24 12:20:49'),(43,7,12,'This is new message',0,1,1,'customer','2022-12-29 03:59:51','2023-01-24 12:20:49'),(44,7,12,'This is new message',0,1,1,'customer','2022-12-29 04:07:02','2023-01-24 12:20:49'),(45,7,12,'This is new message',0,1,1,'customer','2022-12-29 04:10:56','2023-01-24 12:20:49'),(46,7,12,'Yes I am here',0,0,1,'seller','2022-12-29 04:11:21','2023-01-24 12:20:49'),(47,7,12,'please tell me',0,0,1,'seller','2022-12-29 04:11:30','2023-01-24 12:20:49'),(48,7,12,'This is new message',0,1,1,'customer','2022-12-29 04:12:25','2023-01-24 12:20:49'),(49,7,12,'Hi',0,0,1,'seller','2022-12-29 04:12:59','2023-01-24 12:20:49'),(50,7,12,'How can I help you?',0,0,1,'seller','2022-12-29 04:13:09','2023-01-24 12:20:49'),(51,7,12,'This is new message',0,1,1,'customer','2022-12-29 04:13:43','2023-01-24 12:20:49'),(52,7,12,'This is new message',0,1,1,'customer','2022-12-29 04:13:56','2023-01-24 12:20:49'),(53,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 04:18:05','2023-01-24 12:20:49'),(54,7,12,'test 2',0,0,1,'seller','2022-12-29 04:18:16','2023-01-24 12:20:49'),(55,7,12,'test 3',0,0,1,'seller','2022-12-29 04:18:28','2023-01-24 12:20:49'),(56,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 04:18:42','2023-01-24 12:20:49'),(57,15,12,'tst',0,0,1,'seller','2022-12-29 04:19:21','2022-12-29 15:27:22'),(58,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:36:46','2023-01-24 12:20:49'),(59,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:38:31','2023-01-24 12:20:49'),(60,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:39:35','2023-01-24 12:20:49'),(61,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:41:40','2023-01-24 12:20:49'),(62,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:43:49','2023-01-24 12:20:49'),(63,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:44:27','2023-01-24 12:20:49'),(64,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:44:55','2023-01-24 12:20:49'),(65,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:48:32','2023-01-24 12:20:49'),(66,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:49:33','2023-01-24 12:20:49'),(67,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:54:45','2023-01-24 12:20:49'),(68,7,12,'this is message',0,0,1,'seller','2022-12-29 05:56:21','2023-01-24 12:20:49'),(69,7,12,'test msg',0,0,1,'seller','2022-12-29 05:56:29','2023-01-24 12:20:49'),(70,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:56:47','2023-01-24 12:20:49'),(71,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:56:59','2023-01-24 12:20:49'),(72,7,12,'test 2',0,0,1,'seller','2022-12-29 05:58:14','2023-01-24 12:20:49'),(73,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 05:58:25','2023-01-24 12:20:49'),(74,7,12,'nice msg',0,0,1,'seller','2022-12-29 06:02:37','2023-01-24 12:20:49'),(75,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:02:54','2023-01-24 12:20:49'),(76,7,12,'working',0,0,1,'seller','2022-12-29 06:07:03','2023-01-24 12:20:49'),(77,7,12,'again working',0,0,1,'seller','2022-12-29 06:07:11','2023-01-24 12:20:49'),(78,7,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:07:33','2023-01-24 12:20:49'),(79,7,12,'hello bro',0,0,1,'seller','2022-12-29 06:28:02','2023-01-24 12:20:49'),(80,5,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:36:03','2023-01-17 05:10:08'),(81,6,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:37:06','2023-01-17 04:37:43'),(82,6,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:39:04','2023-01-17 04:37:43'),(83,7,12,'hi',0,0,1,'seller','2022-12-29 06:39:29','2023-01-24 12:20:49'),(84,9,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:41:03','2023-01-24 12:19:27'),(85,6,12,'hello',0,0,1,'seller','2022-12-29 06:41:47','2023-01-17 04:37:43'),(86,9,12,'This is new message 2',0,1,1,'customer','2022-12-29 06:57:59','2023-01-24 12:19:27'),(87,9,12,'hi',0,0,1,'seller','2022-12-29 07:11:32','2023-01-24 12:19:27'),(88,9,12,'hello',0,0,1,'seller','2022-12-29 07:11:34','2023-01-24 12:19:27'),(89,7,12,'hello',0,0,1,'seller','2022-12-29 07:11:53','2023-01-24 12:20:49'),(90,9,12,'This is new message 2',0,1,1,'customer','2022-12-29 07:21:22','2023-01-24 12:19:27'),(91,9,12,'This is new message 2',0,1,1,'customer','2022-12-29 07:23:18','2023-01-24 12:19:27'),(92,9,12,'This is new message 2',0,1,1,'customer','2022-12-29 07:24:19','2023-01-24 12:19:27'),(93,9,12,'This is new message 20',0,1,1,'customer','2022-12-29 07:26:45','2023-01-24 12:19:27'),(94,9,12,'This is new message 20',0,1,1,'customer','2022-12-29 07:31:45','2023-01-24 12:19:27'),(95,9,12,'This is new message 20',0,1,1,'customer','2022-12-29 07:33:30','2023-01-24 12:19:27'),(96,9,12,'This is new message 25',0,1,1,'customer','2022-12-29 07:34:05','2023-01-24 12:19:27'),(97,9,12,'before 26',0,0,1,'seller','2022-12-29 07:35:50','2023-01-24 12:19:27'),(98,9,12,'This is new message 26',0,1,1,'customer','2022-12-29 07:36:05','2023-01-24 12:19:27'),(99,9,12,'This is new message 27',0,1,1,'customer','2022-12-29 07:40:07','2023-01-24 12:19:27'),(100,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 07:41:11','2023-01-24 12:19:27'),(101,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 07:43:31','2023-01-24 12:19:27'),(102,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 07:43:53','2023-01-24 12:19:27'),(103,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 07:49:11','2023-01-24 12:19:27'),(104,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 08:46:02','2023-01-24 12:19:27'),(105,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 08:46:14','2023-01-24 12:19:27'),(106,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:08:19','2023-01-24 12:19:27'),(107,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:12:13','2023-01-24 12:19:27'),(108,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:13:47','2023-01-24 12:19:27'),(109,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:16:07','2023-01-24 12:19:27'),(110,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:16:55','2023-01-24 12:19:27'),(111,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:17:34','2023-01-24 12:19:27'),(112,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:20:04','2023-01-24 12:19:27'),(113,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:24:51','2023-01-24 12:19:27'),(114,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:34:40','2023-01-24 12:19:27'),(115,9,12,'This is new message 28',0,1,1,'customer','2022-12-29 09:36:07','2023-01-24 12:19:27'),(116,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:36:38','2023-01-24 12:19:27'),(117,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:40:34','2023-01-24 12:19:27'),(118,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:45:10','2023-01-24 12:19:27'),(119,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:45:37','2023-01-24 12:19:27'),(120,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:45:54','2023-01-24 12:19:27'),(121,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:46:52','2023-01-24 12:19:27'),(122,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:48:02','2023-01-24 12:19:27'),(123,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:49:20','2023-01-24 12:19:27'),(124,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:49:44','2023-01-24 12:19:27'),(125,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:50:01','2023-01-24 12:19:27'),(126,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:54:25','2023-01-24 12:19:27'),(127,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:55:51','2023-01-24 12:19:27'),(128,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:56:33','2023-01-24 12:19:27'),(129,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:57:30','2023-01-24 12:19:27'),(130,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 09:59:41','2023-01-24 12:19:27'),(131,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 10:03:54','2023-01-24 12:19:27'),(132,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 10:06:31','2023-01-24 12:19:27'),(133,9,12,'This is new message 50',0,1,1,'customer','2022-12-29 10:07:17','2023-01-24 12:19:27'),(134,9,12,'This is new message 52',0,1,1,'customer','2022-12-29 10:08:16','2023-01-24 12:19:27'),(135,9,12,'Hi',0,0,1,'seller','2022-12-29 10:08:43','2023-01-24 12:19:27'),(136,9,12,'hello',0,0,1,'seller','2022-12-29 10:08:46','2023-01-24 12:19:27'),(137,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:09:50','2023-01-24 12:19:27'),(138,9,12,'h',0,0,1,'seller','2022-12-29 10:10:39','2023-01-24 12:19:27'),(139,9,12,'hello',0,0,1,'seller','2022-12-29 10:10:41','2023-01-24 12:19:27'),(140,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:10:56','2023-01-24 12:19:27'),(141,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:11:38','2023-01-24 12:19:27'),(142,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:12:59','2023-01-24 12:19:27'),(143,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:15:02','2023-01-24 12:19:27'),(144,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:15:48','2023-01-24 12:19:27'),(145,9,12,'This is new message 53',0,1,1,'customer','2022-12-29 10:16:15','2023-01-24 12:19:27'),(146,9,12,'This is new message 55',0,1,1,'customer','2022-12-29 10:17:13','2023-01-24 12:19:27'),(147,9,12,'hello developer',0,0,1,'seller','2022-12-29 10:18:21','2023-01-24 12:19:27'),(148,9,12,'This is new message 55',0,1,1,'customer','2022-12-29 10:18:35','2023-01-24 12:19:27'),(149,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:18:54','2023-01-24 12:19:27'),(150,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:23:55','2023-01-24 12:19:27'),(151,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:26:04','2023-01-24 12:19:27'),(152,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:27:57','2023-01-24 12:19:27'),(153,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:35:41','2023-01-24 12:19:27'),(154,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:36:03','2023-01-24 12:19:27'),(155,9,12,'hello joe',0,0,1,'seller','2022-12-29 10:36:19','2023-01-24 12:19:27'),(156,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:36:37','2023-01-24 12:19:27'),(157,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:38:33','2023-01-24 12:19:27'),(158,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:38:54','2023-01-24 12:19:27'),(159,9,12,'before check',0,0,1,'seller','2022-12-29 10:39:16','2023-01-24 12:19:27'),(160,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:40:23','2023-01-24 12:19:27'),(161,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:53:21','2023-01-24 12:19:27'),(162,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:55:19','2023-01-24 12:19:27'),(163,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:55:36','2023-01-24 12:19:27'),(164,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:56:47','2023-01-24 12:19:27'),(165,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:57:58','2023-01-24 12:19:27'),(166,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 10:59:50','2023-01-24 12:19:27'),(167,9,12,'hello checkeer',0,0,1,'seller','2022-12-29 11:04:21','2023-01-24 12:19:27'),(168,9,12,'This is new message 56',0,1,1,'customer','2022-12-29 11:05:25','2023-01-24 12:19:27'),(169,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:08:01','2023-01-24 12:20:49'),(170,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:08:39','2023-01-24 12:20:49'),(171,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:09:12','2023-01-24 12:20:49'),(172,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:09:41','2023-01-24 12:20:49'),(173,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:10:19','2023-01-24 12:20:49'),(174,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:10:29','2023-01-24 12:20:49'),(175,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:10:47','2023-01-24 12:20:49'),(176,7,12,'Hello user',0,0,1,'seller','2022-12-29 11:17:09','2023-01-24 12:20:49'),(177,7,12,'test msg',0,0,1,'seller','2022-12-29 11:17:37','2023-01-24 12:20:49'),(178,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:25:59','2023-01-24 12:20:49'),(179,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:30:09','2023-01-24 12:20:49'),(180,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:41:02','2023-01-24 12:20:49'),(181,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:47:27','2023-01-24 12:20:49'),(182,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:49:10','2023-01-24 12:20:49'),(183,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:49:15','2023-01-24 12:20:49'),(184,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:50:09','2023-01-24 12:20:49'),(185,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:51:35','2023-01-24 12:20:49'),(186,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:51:53','2023-01-24 12:20:49'),(187,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:52:20','2023-01-24 12:20:49'),(188,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:54:53','2023-01-24 12:20:49'),(189,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:55:00','2023-01-24 12:20:49'),(190,7,12,'this is nice comment',0,0,1,'seller','2022-12-29 11:56:53','2023-01-24 12:20:49'),(191,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 11:57:06','2023-01-24 12:20:49'),(192,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:00:17','2023-01-24 12:20:49'),(193,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:00:29','2023-01-24 12:20:49'),(194,7,12,'after 70',0,0,1,'seller','2022-12-29 12:00:44','2023-01-24 12:20:49'),(195,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:01:06','2023-01-24 12:20:49'),(196,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:06:54','2023-01-24 12:20:49'),(197,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:07:42','2023-01-24 12:20:49'),(198,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:11:08','2023-01-24 12:20:49'),(199,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:11:29','2023-01-24 12:20:49'),(200,7,12,'This is new message 70',0,1,1,'customer','2022-12-29 12:11:42','2023-01-24 12:20:49'),(201,7,12,'nice product',0,0,1,'seller','2022-12-29 12:11:55','2023-01-24 12:20:49'),(202,7,12,'This is new message 90',0,1,1,'customer','2022-12-29 12:12:07','2023-01-24 12:20:49'),(203,15,12,'test msg',0,0,1,'seller','2022-12-29 12:14:45','2022-12-29 15:27:22'),(204,7,12,'another msg',0,0,1,'seller','2022-12-29 12:14:55','2023-01-24 12:20:49'),(205,7,12,'This is new message 90',0,1,1,'customer','2022-12-29 12:15:10','2023-01-24 12:20:49'),(206,7,12,'This is new message 91',0,1,1,'customer','2022-12-29 12:15:34','2023-01-24 12:20:49'),(207,7,12,'it is available, you can buy it',0,0,1,'seller','2022-12-29 12:16:01','2023-01-24 12:20:49'),(208,7,12,'How much it?',0,1,1,'customer','2022-12-29 12:16:21','2023-01-24 12:20:49'),(209,7,12,'How much it?',0,1,1,'customer','2022-12-29 12:17:20','2023-01-24 12:20:49'),(210,9,12,'hello customer',0,0,1,'seller','2022-12-29 12:17:32','2023-01-24 12:19:27'),(211,5,12,'are u there ?',0,0,1,'seller','2022-12-29 12:17:42','2023-01-17 05:10:08'),(212,7,12,'Only 500BDT',0,0,1,'seller','2022-12-29 12:17:56','2023-01-24 12:20:49'),(213,7,12,'I want to buy 40 piece',0,1,1,'customer','2022-12-29 12:18:26','2023-01-24 12:20:49'),(214,7,12,'where is ur location ?',0,0,1,'seller','2022-12-29 12:19:25','2023-01-24 12:20:49'),(215,7,12,'Khansama, dinapur',0,1,1,'customer','2022-12-29 12:20:23','2023-01-24 12:20:49'),(216,7,12,'ok Let me check',0,0,1,'seller','2022-12-29 12:20:37','2023-01-24 12:20:49'),(217,7,12,'any update ?',0,1,1,'customer','2022-12-29 12:20:57','2023-01-24 12:20:49'),(218,7,12,'hellow',0,1,1,'customer','2022-12-29 12:21:45','2023-01-24 12:20:49'),(219,7,12,'hellow 101',0,1,1,'customer','2022-12-29 15:27:09','2023-01-24 12:20:49'),(220,7,12,'hellow 101',0,1,1,'customer','2022-12-29 15:27:37','2023-01-24 12:20:49'),(221,7,12,'hlw 102',0,0,1,'seller','2022-12-29 15:28:02','2023-01-24 12:20:49'),(222,7,12,'hellow 101',0,1,1,'customer','2022-12-29 15:28:14','2023-01-24 12:20:49'),(223,7,12,'hellow 103',0,1,1,'customer','2022-12-29 15:28:43','2023-01-24 12:20:49'),(224,7,12,'hellow 1034',0,1,1,'customer','2022-12-29 15:29:01','2023-01-24 12:20:49'),(225,9,12,'Hi',0,0,1,'seller','2023-01-12 10:06:11','2023-01-24 12:19:27'),(226,9,12,'55',0,0,1,'seller','2023-01-12 10:09:34','2023-01-24 12:19:27'),(227,9,12,'Hello',0,0,1,'seller','2023-01-12 10:15:05','2023-01-24 12:19:27'),(228,9,12,'hi',0,0,1,'seller','2023-01-17 03:16:02','2023-01-24 12:19:27'),(229,7,12,'this is test msg',0,0,1,'seller','2023-01-17 03:16:42','2023-01-24 12:20:49'),(230,7,12,'This is new message 56',0,1,1,'customer','2023-01-17 04:14:37','2023-01-24 12:20:49'),(231,7,12,'This is new message 56',0,1,1,'customer','2023-01-17 04:15:05','2023-01-24 12:20:49'),(232,9,12,'We will inform about it',0,0,1,'seller','2023-01-17 04:15:29','2023-01-24 12:19:27'),(233,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:15:42','2023-01-24 12:20:49'),(234,7,12,'ki obostha bhai',0,0,1,'seller','2023-01-17 04:16:00','2023-01-24 12:20:49'),(235,5,12,'hello bro',0,0,1,'seller','2023-01-17 04:16:09','2023-01-17 05:10:08'),(236,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:16:22','2023-01-24 12:20:49'),(237,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:27:40','2023-01-24 12:20:49'),(238,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:32:39','2023-01-24 12:20:49'),(239,9,12,'hello mr.',0,0,1,'seller','2023-01-17 04:37:35','2023-01-24 12:19:27'),(240,6,12,'ki obostha',0,0,1,'seller','2023-01-17 04:37:49','2023-01-17 04:37:49'),(241,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:38:06','2023-01-24 12:20:49'),(242,7,12,'This is new message 57',0,1,1,'customer','2023-01-17 04:44:01','2023-01-24 12:20:49'),(243,7,12,'hello bro',0,0,1,'seller','2023-01-17 04:44:42','2023-01-24 12:20:49'),(244,7,12,'ki bostha bhai',0,1,1,'customer','2023-01-17 04:45:08','2023-01-24 12:20:49'),(245,7,12,'ki bostha bhai',0,1,1,'customer','2023-01-17 04:46:42','2023-01-24 12:20:49'),(246,7,12,'kothay ?',0,1,1,'customer','2023-01-17 04:47:08','2023-01-24 12:20:49'),(247,7,12,'basay',0,0,1,'seller','2023-01-17 04:47:15','2023-01-24 12:20:49'),(248,7,12,'kothay ?',14,1,1,'customer','2023-01-17 04:50:30','2023-01-24 12:20:49'),(249,7,12,'kothay ?',0,1,1,'customer','2023-01-17 04:53:08','2023-01-24 12:20:49'),(250,7,12,'kothay ?',0,1,1,'customer','2023-01-17 04:53:39','2023-01-24 12:20:49'),(251,7,12,'order er ki obostha ?',0,1,1,'customer','2023-01-17 04:54:34','2023-01-24 12:20:49'),(252,7,12,'order er ki obostha ?',0,1,1,'customer','2023-01-17 04:57:21','2023-01-24 12:20:49'),(253,5,12,'vai kothay ?',0,0,1,'seller','2023-01-17 05:10:14','2023-01-17 05:10:14');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_11_30_035230_create_admins_table',2),(6,'2021_11_30_065435_create_email_configurations_table',3),(7,'2021_11_30_065508_create_email_templates_table',3),(8,'2021_12_01_035206_create_categories_table',4),(9,'2021_12_01_035220_create_sub_categories_table',4),(10,'2021_12_01_035231_create_child_categories_table',4),(11,'2021_12_01_035735_create_brands_table',4),(12,'2021_12_02_055907_create_product_taxes_table',5),(13,'2021_12_02_083742_create_return_policies_table',6),(14,'2021_12_02_084030_create_product_specification_keys_table',6),(15,'2021_12_03_093645_create_products_table',7),(16,'2021_12_03_101949_create_product_galleries_table',7),(17,'2021_12_04_053018_create_product_specifications_table',8),(18,'2021_12_06_045447_create_services_table',9),(19,'2021_12_06_054423_create_about_us_table',10),(20,'2021_12_06_055028_create_custom_pages_table',10),(21,'2021_12_07_030532_create_terms_and_conditions_table',11),(22,'2021_12_07_035810_create_blog_categories_table',12),(23,'2021_12_07_035822_create_blogs_table',12),(24,'2021_12_07_040749_create_popular_posts_table',12),(25,'2021_12_07_061613_create_blog_comments_table',13),(26,'2021_12_07_081832_create_product_variants_table',14),(27,'2021_12_07_081858_create_product_variant_items_table',14),(28,'2021_12_08_125540_create_campaigns_table',15),(29,'2021_12_08_130025_create_campaign_products_table',15),(30,'2021_12_09_095158_create_contact_messages_table',16),(31,'2021_12_09_095220_create_subscribers_table',16),(32,'2021_12_09_124226_create_settings_table',17),(33,'2021_12_11_022207_create_cookie_consents_table',18),(34,'2021_12_11_025358_create_google_recaptchas_table',19),(35,'2021_12_11_025449_create_facebook_comments_table',19),(36,'2021_12_11_025556_create_tawk_chats_table',19),(37,'2021_12_11_025618_create_google_analytics_table',19),(38,'2021_12_11_025712_create_custom_paginations_table',19),(39,'2021_12_11_083503_create_faqs_table',20),(40,'2021_12_11_094707_create_currencies_table',21),(41,'2021_12_13_085612_create_product_reviews_table',22),(42,'2021_12_13_090609_create_product_review_galleries_table',22),(43,'2021_12_13_101056_create_error_pages_table',23),(44,'2021_12_13_102725_create_maintainance_texts_table',24),(45,'2021_12_13_110144_create_subscribe_modals_table',25),(46,'2021_12_13_111140_create_announcement_modals_table',26),(47,'2021_12_13_132626_create_countries_table',27),(48,'2021_12_13_132909_create_country_states_table',27),(49,'2021_12_13_132935_create_cities_table',27),(50,'2021_12_14_032937_create_social_login_information_table',28),(51,'2021_12_14_042928_create_facebook_pixels_table',29),(52,'2021_12_14_054908_create_paypal_payments_table',30),(53,'2021_12_14_054922_create_stripe_payments_table',30),(54,'2021_12_14_054939_create_razorpay_payments_table',30),(55,'2021_12_14_055252_create_bank_payments_table',30),(56,'2021_12_14_084759_create_vendors_table',31),(57,'2021_12_14_090013_create_vendor_social_links_table',31),(58,'2021_12_15_095059_create_wholesells_table',32),(59,'2021_12_16_071213_create_seller_mail_logs_table',33),(60,'2021_12_21_093939_create_mega_menu_categories_table',34),(61,'2021_12_21_093958_create_mega_menu_sub_categories_table',34),(62,'2021_12_22_034106_create_banner_images_table',35),(63,'2021_12_22_044839_create_sliders_table',36),(64,'2021_12_22_081311_create_popular_categories_table',37),(65,'2021_12_23_021844_create_three_column_categories_table',38),(66,'2021_12_23_033230_create_shipping_methods_table',39),(67,'2021_12_23_065722_create_paystack_and_mollies_table',40),(68,'2021_12_23_085225_create_withdraw_methods_table',41),(71,'2021_12_25_172918_create_seller_withdraws_table',42),(74,'2021_12_25_200413_create_product_reports_table',43),(75,'2021_12_25_200707_create_product_report_images_table',44),(79,'2021_12_26_052326_create_billing_addresses_table',45),(80,'2021_12_26_053952_create_shipping_addresses_table',45),(81,'2021_12_26_054841_create_orders_table',45),(82,'2021_12_26_164912_create_order_addresses_table',45),(83,'2021_12_26_165705_create_order_products_table',45),(84,'2021_12_26_170803_create_order_product_variants_table',45),(87,'2021_12_28_163200_create_coupons_table',46),(88,'2021_12_28_192057_create_contact_pages_table',47),(89,'2021_12_28_200846_create_breadcrumb_images_table',48),(90,'2021_12_30_032959_create_flutterwaves_table',49),(91,'2021_12_30_034716_create_footers_table',50),(92,'2021_12_30_035201_create_footer_links_table',50),(93,'2021_12_30_035247_create_footer_social_links_table',50),(95,'2021_12_30_061157_create_home_page_one_visibilities_table',51),(96,'2022_01_11_103950_create_wishlists_table',52),(97,'2022_01_12_070110_create_shop_pages_table',53),(99,'2022_01_12_080218_create_seo_settings_table',54),(100,'2022_01_17_012111_create_menu_visibilities_table',55),(101,'2022_01_17_122016_create_instamojo_payments_table',56),(102,'2022_01_29_055523_create_messages_table',57),(103,'2022_01_29_122621_create_pusher_credentails_table',58),(104,'2022_04_27_083907_create_shopping_carts_table',59),(105,'2022_04_27_084235_create_shopping_cart_variants_table',59),(106,'2022_06_11_095338_create_testimonials_table',60),(107,'2022_06_13_053409_create_flash_sales_table',61),(108,'2022_06_13_053644_create_flash_sale_products_table',62),(109,'2022_06_14_102451_create_shippings_table',63),(112,'2022_06_19_073137_create_addresses_table',64),(113,'2022_06_19_093939_create_compare_products_table',65),(114,'2022_07_27_101723_create_featured_categories_table',66),(116,'2023_01_11_104754_create_twilio_sms_table',67),(117,'2023_01_11_112644_create_sms_templates_table',68),(118,'2023_01_12_043648_create_biztech_sms_table',69),(119,'2023_01_12_090356_create_inventories_table',70),(120,'2023_02_12_064832_create_myfatoorah_payments_table',71),(121,'2023_02_01_091048_create_delivery_men_table',72),(122,'2023_02_15_094731_create_delivery_man_withdraw_methods_table',72),(123,'2023_02_16_023738_create_delivery_man_withdraws_table',72),(124,'2023_02_16_091215_create_order_amounts_table',72),(125,'2023_02_18_110336_create_delivery_man_reviews_table',72),(126,'2023_02_20_101257_create_delivery_messages_table',72),(127,'2023_07_17_042611_add_user_id_to_shopping_cart_variants',72),(128,'2023_07_17_043209_add_version_number_to_settings',72),(129,'2023_10_09_122324_add_tax_to_settings',73),(130,'2024_01_24_055730_create_multi_currencies_table',73),(131,'2024_01_25_041519_add_currency_id_to_paypal_payments_table',74),(132,'2024_01_25_041706_add_currency_id_to_stripe_payments_table',74),(133,'2024_01_25_041730_add_currency_id_to_razorpay_payments_table',74),(134,'2024_01_25_041807_add_currency_id_to_paystack_and_mollies_table',74),(135,'2024_01_25_041833_add_currency_id_to_flutterwaves_table',74),(136,'2024_01_25_041906_add_currency_id_to_instamojo_payments_table',74),(137,'2024_01_25_041954_add_currency_id_to_myfatoorah_payments_table',74),(138,'2024_01_25_042239_add_currency_id_to_sslcommerz_payments_table',74),(139,'2024_01_25_063603_add_currency_id_to_settings_table',75);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multi_currencies`
--

DROP TABLE IF EXISTS `multi_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multi_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multi_currencies`
--

LOCK TABLES `multi_currencies` WRITE;
/*!40000 ALTER TABLE `multi_currencies` DISABLE KEYS */;
INSERT INTO `multi_currencies` VALUES (1,'KES','KES','KES','Ksh','Yes',1,'right',1,'2024-01-24 06:30:47','2024-02-06 15:33:53');
/*!40000 ALTER TABLE `multi_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfatoorah_payments`
--

DROP TABLE IF EXISTS `myfatoorah_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfatoorah_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `account_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfatoorah_payments`
--

LOCK TABLES `myfatoorah_payments` WRITE;
/*!40000 ALTER TABLE `myfatoorah_payments` DISABLE KEYS */;
INSERT INTO `myfatoorah_payments` VALUES (1,1,'sandbox','KWT','0.31','rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL',NULL,'2024-02-06 21:43:51',1);
/*!40000 ALTER TABLE `myfatoorah_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_addresses`
--

DROP TABLE IF EXISTS `order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_addresses`
--

LOCK TABLES `order_addresses` WRITE;
/*!40000 ALTER TABLE `order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_amounts`
--

DROP TABLE IF EXISTS `order_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_amounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` int NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_amounts`
--

LOCK TABLES `order_amounts` WRITE;
/*!40000 ALTER TABLE `order_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_variants`
--

DROP TABLE IF EXISTS `order_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_variants`
--

LOCK TABLES `order_product_variants` WRITE;
/*!40000 ALTER TABLE `order_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int NOT NULL DEFAULT '0',
  `payment_approval_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `coupon_coast` double NOT NULL DEFAULT '0',
  `order_status` int NOT NULL DEFAULT '0',
  `order_approval_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_completed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_declined_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` int NOT NULL DEFAULT '0',
  `additional_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `paymongo_payments`
--

DROP TABLE IF EXISTS `paymongo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymongo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymongo_payments`
--

LOCK TABLES `paymongo_payments` WRITE;
/*!40000 ALTER TABLE `paymongo_payments` DISABLE KEYS */;
INSERT INTO `paymongo_payments` VALUES (1,'sk_test_TUwj85sA6XTn7nHzmP23dg36','pk_test_z9xACSbhH2EuxVdFaxuY8Waf',1,55.07,'PH','PHP','62c01dbd46dc01656757693.jpg',NULL,'2022-07-03 10:06:24');
/*!40000 ALTER TABLE `paymongo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payments`
--

DROP TABLE IF EXISTS `paypal_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci,
  `secret_id` text COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_payments`
--

LOCK TABLES `paypal_payments` WRITE;
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
INSERT INTO `paypal_payments` VALUES (1,1,'sandbox','AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy','EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn','US','USD',1,NULL,'2024-02-06 21:25:02',5);
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paystack_and_mollies`
--

DROP TABLE IF EXISTS `paystack_and_mollies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paystack_and_mollies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mollie_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_status` int NOT NULL DEFAULT '0',
  `mollie_country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paystack_and_mollies`
--

LOCK TABLES `paystack_and_mollies` WRITE;
/*!40000 ALTER TABLE `paystack_and_mollies` DISABLE KEYS */;
INSERT INTO `paystack_and_mollies` VALUES (1,'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q',1,1.27,'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38','sk_test_77cb93329abbdc18104466e694c9f720a7d69c97',417.35,1,'CA','CAD','NG','NGN',NULL,'2024-02-06 21:33:00',5);
/*!40000 ALTER TABLE `paystack_and_mollies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `popular_categories`
--

DROP TABLE IF EXISTS `popular_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_categories`
--

LOCK TABLES `popular_categories` WRITE;
/*!40000 ALTER TABLE `popular_categories` DISABLE KEYS */;
INSERT INTO `popular_categories` VALUES (3,2,'2022-09-20 07:15:11','2022-09-20 07:15:11'),(4,3,'2024-03-18 22:30:39','2024-03-18 22:30:39'),(5,4,'2024-03-18 22:30:55','2024-03-18 22:30:55'),(6,6,'2024-03-18 22:31:27','2024-03-18 22:31:27'),(7,7,'2024-03-18 22:31:41','2024-03-18 22:31:41');
/*!40000 ALTER TABLE `popular_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popular_posts`
--

DROP TABLE IF EXISTS `popular_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_posts`
--

LOCK TABLES `popular_posts` WRITE;
/*!40000 ALTER TABLE `popular_posts` DISABLE KEYS */;
INSERT INTO `popular_posts` VALUES (1,2,1,'2022-09-22 10:19:05','2022-09-22 10:19:05'),(2,5,1,'2022-09-22 10:19:08','2022-09-22 10:19:08'),(3,4,1,'2022-09-22 10:19:10','2022-09-22 10:19:10'),(4,3,1,'2022-09-22 10:19:22','2022-09-22 10:19:22');
/*!40000 ALTER TABLE `popular_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_galleries`
--

LOCK TABLES `product_galleries` WRITE;
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reports`
--

DROP TABLE IF EXISTS `product_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reports`
--

LOCK TABLES `product_reports` WRITE;
/*!40000 ALTER TABLE `product_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_vendor_id` int NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specification_keys`
--

DROP TABLE IF EXISTS `product_specification_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specification_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specification_keys`
--

LOCK TABLES `product_specification_keys` WRITE;
/*!40000 ALTER TABLE `product_specification_keys` DISABLE KEYS */;
INSERT INTO `product_specification_keys` VALUES (1,'Color',0,'2022-11-22 01:33:29','2024-03-19 00:19:04'),(2,'RAM',0,'2024-03-18 22:56:57','2024-03-19 00:19:07'),(3,'STORAGE',0,'2024-03-18 22:59:42','2024-03-19 00:19:06');
/*!40000 ALTER TABLE `product_specification_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specifications`
--

DROP TABLE IF EXISTS `product_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_specification_key_id` int NOT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specifications`
--

LOCK TABLES `product_specifications` WRITE;
/*!40000 ALTER TABLE `product_specifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_items`
--

DROP TABLE IF EXISTS `product_variant_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `product_variant_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_items`
--

LOCK TABLES `product_variant_items` WRITE;
/*!40000 ALTER TABLE `product_variant_items` DISABLE KEYS */;
INSERT INTO `product_variant_items` VALUES (6,7,'RAM',53,'128GB',0,1,0,'2024-03-18 23:14:37','2024-03-18 23:14:37'),(7,7,'RAM',53,'256GB',0,1,0,'2024-03-18 23:15:12','2024-03-18 23:15:12'),(8,8,'Color',53,'Black',0,1,0,'2024-03-18 23:19:35','2024-03-18 23:19:35');
/*!40000 ALTER TABLE `product_variant_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (5,53,'Storage',1,'2023-01-04 02:48:16','2023-01-05 08:47:58'),(7,53,'RAM',1,'2024-03-18 23:13:48','2024-03-18 23:13:48'),(8,53,'Color',1,'2024-03-18 23:19:04','2024-03-18 23:19:04');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL DEFAULT '0',
  `child_category_id` int NOT NULL DEFAULT '0',
  `brand_id` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sold_qty` int NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `show_homepage` tinyint NOT NULL DEFAULT '0',
  `is_undefine` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `new_product` tinyint NOT NULL DEFAULT '0',
  `is_top` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_specification` int NOT NULL DEFAULT '1',
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (53,'Redmi 12','Redmi 12','redmi-12','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,5,0,0,13,97,'198.00 grams',0,'Redmi 12 Specifications in Kenya\r\nRAM: 8GB\r\nInternal Storage: 128GB, 256GB\r\nBattery: 5,000 mAh, 18W\r\nMain camera: 50 MP + 8 MP+ 2 MP\r\nFront camera: 5MP\r\nDisplay: 6.71 inch, IPS LCD, 90Hz\r\nProcessor: Mediatek Helio G88\r\nConnectivity: Dual sim, 3G, 4G, VoLTE, Wi-Fi\r\nColors: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver\r\nOS: Android 13, MIUI 14','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','redmi-12','redmi-12,redmi',23500,NULL,NULL,0,1,0,0,1,0,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(56,'Samsung Galaxy A71','Samsung Galaxy A71','samsung-galaxy-a71','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A71','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a71','samsung-galaxy-a71',44000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(57,'Samsung Galaxy A51','Samsung Galaxy A51','samsung-galaxy-a51','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A51','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a51','samsung-galaxy-a51',41000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(58,'Samsung Galaxy A52','Samsung Galaxy A52','samsung-galaxy-a52','uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-09-26-12-12-12-9319',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A52','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a52','samsung-galaxy-a52',38000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(59,'Samsung Galaxy A50','Samsung Galaxy A50','samsung-galaxy-a50','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A50','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a50','samsung-galaxy-a50',35000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(60,'Samsung Galaxy A70','Samsung Galaxy A70','samsung-galaxy-a70','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A70','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a70','samsung-galaxy-a70',32000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(61,'Samsung Galaxy A32','Samsung Galaxy A32','samsung-galaxy-a32','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A32','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a32','samsung-galaxy-a32',29000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(62,'Samsung Galaxy A21s','Samsung Galaxy A21s','samsung-galaxy-a21s','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A21s','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a21s','samsung-galaxy-a21s',26000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(63,'Samsung Galaxy A31','Samsung Galaxy A31','samsung-galaxy-a31','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A31','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a31','samsung-galaxy-a31',23000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(64,'Samsung Galaxy A20','Samsung Galaxy A20','samsung-galaxy-a20','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A20','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a20','samsung-galaxy-a20',20000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21'),(65,'Samsung Galaxy A12','Samsung Galaxy A12','samsung-galaxy-a12','uploads/custom-images/redmi-12-2024-03-18-11-10-49-4355.png',0,2,0,0,1,97,'198.00 grams',0,'Samsung Galaxy A12','<h3 style=\"font-family: &quot;Open Sans&quot;; line-height: 1.5; color: rgb(23, 24, 26); margin-top: 22px; margin-bottom: 11px; font-size: 23px;\">Redmi 12 Specifications in Kenya</h3><ul style=\"margin-bottom: 11px; padding: 0px; list-style: none; color: rgb(35, 35, 35); font-family: &quot;Open Sans&quot;; font-size: 13px;\"><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">RAM</strong>: 8GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Internal Storage</strong>: 128GB, 256GB</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Battery</strong>: 5,000 mAh, 18W</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Main camera</strong>: 50 MP + 8 MP+ 2 MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Front camera</strong>: 5MP</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Display</strong>: 6.71 inch, IPS LCD, 90Hz</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Processor</strong>: Mediatek Helio G88</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Connectivity</strong>: Dual sim, 3G, 4G, VoLTE, Wi-Fi</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">Colors</strong>: Midnight Black, Sky Blue, Polar Silver, Moonstone Silver</li><li style=\"position: relative; color: rgb(119, 119, 119); padding-left: 10px !important;\"><strong style=\"font-weight: bold;\">OS</strong>: Android 13, MIUI 14</li></ul>',NULL,'phones','samsung-galaxy-a12','samsung-galaxy-a12',17000,NULL,NULL,0,1,1,1,1,1,1,0,1,'2023-12-27 01:41:31','2024-03-18 23:33:21');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pusher_credentails`
--

DROP TABLE IF EXISTS `pusher_credentails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pusher_credentails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_cluster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pusher_credentails`
--

LOCK TABLES `pusher_credentails` WRITE;
/*!40000 ALTER TABLE `pusher_credentails` DISABLE KEYS */;
INSERT INTO `pusher_credentails` VALUES (1,'1569059','f3a19752d50b8d5afe04','3ef27a781572b5ea3b92','ap2',NULL,'2023-03-19 09:19:40');
/*!40000 ALTER TABLE `pusher_credentails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razorpay_payments`
--

DROP TABLE IF EXISTS `razorpay_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razorpay_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `secret_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razorpay_payments`
--

LOCK TABLES `razorpay_payments` WRITE;
/*!40000 ALTER TABLE `razorpay_payments` DISABLE KEYS */;
INSERT INTO `razorpay_payments` VALUES (1,1,'Ecommerce',74.66,'IN','INR','This is description','uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png','#2d15e5','rzp_test_K7CipNQYyyMPiS','zSBmNMorJrirOrnDrbOd1ALO',NULL,'2024-02-07 15:35:20',3);
/*!40000 ALTER TABLE `razorpay_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_mail_logs`
--

DROP TABLE IF EXISTS `seller_mail_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_mail_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_mail_logs`
--

LOCK TABLES `seller_mail_logs` WRITE;
/*!40000 ALTER TABLE `seller_mail_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_mail_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_withdraws`
--

DROP TABLE IF EXISTS `seller_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `approved_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_withdraws`
--

LOCK TABLES `seller_withdraws` WRITE;
/*!40000 ALTER TABLE `seller_withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_settings`
--

DROP TABLE IF EXISTS `seo_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seo_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` text COLLATE utf8mb4_unicode_ci,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_settings`
--

LOCK TABLES `seo_settings` WRITE;
/*!40000 ALTER TABLE `seo_settings` DISABLE KEYS */;
INSERT INTO `seo_settings` VALUES (1,'Home Page','Home - Welcome to Ropem','Save Big',NULL,'2024-03-18 19:37:42'),(2,'About Us','About Us - Ecommerce','About Us',NULL,'2022-02-07 02:39:59'),(3,'Contact Us','Contact Us - Ecommerce','Contact Us',NULL,'2022-01-12 02:21:46'),(5,'Seller Page','Our Seller - Ecommerce','Seller Page',NULL,'2022-02-07 02:40:16'),(6,'Blog','Blog - Ecommerce','Blog',NULL,'2022-02-07 02:40:23'),(8,'Flash Deal','Flash Deal - Ecommerce','Flash Deal',NULL,'2022-02-07 02:40:43'),(9,'Shop Page','Shop Page - Ecommerce','Shop Page',NULL,'2022-02-07 02:40:50');
/*!40000 ALTER TABLE `seo_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Country Wide Shipping','fas fa-shipping-fast','Country Shipping on Payment',1,'2022-09-20 08:07:40','2024-03-18 23:50:28'),(2,'Return Policy','fas fa-chevron-circle-left','24 Hours Return Policy',1,'2022-09-20 08:08:44','2022-09-20 08:08:44'),(3,'Secured Payment','fab fa-cc-amazon-pay','Secure Card Payments',1,'2022-09-20 08:09:50','2022-09-20 08:09:50'),(4,'Best Quality','fas fa-check-circle','Best Quality Products',1,'2022-09-20 08:10:27','2022-09-22 04:24:58');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_user_register` int NOT NULL DEFAULT '1',
  `phone_number_required` int NOT NULL DEFAULT '1',
  `default_phone_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_multivendor` int NOT NULL DEFAULT '1',
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `text_direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_lg_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_progressbar` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_condition` longtext COLLATE utf8mb4_unicode_ci,
  `popular_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int NOT NULL DEFAULT '9',
  `frontend_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_category_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_section_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `empty_cart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empty_wishlist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_password_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `become_seller_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `become_seller_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `current_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.8',
  `tax` double NOT NULL DEFAULT '0',
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,'uploads/website-images/logo-2024-03-18-07-28-54-2572.png','uploads/website-images/favicon-2024-03-18-07-57-54-5104.png','admin@ropem.co.ke',1,1,'KE',0,1,0,'ltr','Africa/Nairobi','Ropem','Rp','123-854-7896','contact@gmail.com','4','$',1,0,'#60a703','#10300d','<p><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><b>“Terms and Conditions</b>”&nbsp;means these “General Terms and Conditions for the Sale of Products or Services”, together with any modifications or additional provisions specifically stated in Seller’s final quotation or specifically agreed upon by Seller in writing.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">2. Delivery and Shipping Terms.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(a) For shipments that do not involve export Seller shall deliver Products to Buyer F.O.B. shipping point. For export shipments, Seller shall deliver Products to Buyer EXW Seller’s facility or warehouse (Incoterms 2010). Buyer shall pay all delivery costs and charges or pay Seller’s standard shipping charges plus handling. Partial deliveries are permitted. Seller may deliver Products in advance of the delivery schedule. Delivery times are approximate and are dependent upon prompt receipt by Seller of all information necessary to proceed with the work without interruption. If Products delivered do not correspond in quantity, type or price to those itemized in the shipping invoice or documentation, Buyer shall so notify Seller within ten (10) days after receipt.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(b) For shipments that do not involve export, title to Products shall pass to Buyer upon delivery in accordance with Section 2(a). For export shipments from a Seller facility or warehouse outside the U.S., title shall pass to Buyer upon delivery in accordance with Section 2(a). For shipments from the U.S. to another country, title shall pass to Buyer immediately after each item departs from the territorial land, seas and overlying airspace of the U.S. The 1982 United Nations Convention of the law of the Sea shall apply to determine the U.S. territorial seas. For all other shipments, title to Products shall pass to Buyer the earlier of (i) the port of export immediately after Products have been cleared for export or (ii) immediately after each item departs from the territorial land, seas and overlying airspace of the sending country. When Buyer arranges the export shipment, Buyer will provide Seller evidence of exportation acceptable to the relevant tax and custom authorities.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(c) Risk of loss shall pass to Buyer upon delivery pursuant to Section 2(a), except that for export shipments from the U.S., risk of loss shall transfer to Buyer upon title passage.</span><br></p>','Popular Category',9,'http://localhost:3000','uploads/website-images/popular-cat-banner-2024-03-18-10-49-50-4499.jpg','uploads/website-images/featured-cat-banner-2024-03-19-05-50-46-1111.jpg','[{\"key\":\"Trending_Category\",\"default\":\"Trending Category\",\"custom\":\"Shop by Category\"},{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Shop_by_Brand\",\"default\":\"Shop by Brand\",\"custom\":\"Shop by Brand\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]','uploads/website-images/empty_cart-2022-11-17-11-10-20-7795.png','uploads/website-images/empty_wishlist-2022-11-17-11-23-16-9350.png','uploads/website-images/change_password_image-2022-11-17-11-26-36-3416.png','uploads/website-images/become_seller_avatar-2022-11-17-11-38-55-7934.png','uploads/website-images/become_seller_banner-2022-11-17-11-41-53-5886.png','uploads/website-images/login_image-2022-11-17-11-07-21-2774.png','uploads/website-images/error_page-2022-11-17-11-27-36-6180.png',NULL,'2024-03-19 06:49:54','3.8',16,1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `shipping_rule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (1,0,'free shipping','base_on_price',0,'1','100','2022-09-21 05:49:45','2022-09-21 05:49:45'),(2,0,'Product Price (1-2000)','base_on_price',20,'0','2000','2022-11-18 02:36:09','2024-03-18 21:30:18');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_pages`
--

DROP TABLE IF EXISTS `shop_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `filter_price_range` double NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pages`
--

LOCK TABLES `shop_pages` WRITE;
/*!40000 ALTER TABLE `shop_pages` DISABLE KEYS */;
INSERT INTO `shop_pages` VALUES (1,'Up To','70% Off','Galaxy Series','Galaxy Series','uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg','product','Discover now',1,5000,NULL,'2022-09-20 08:07:01');
/*!40000 ALTER TABLE `shop_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_variants`
--

DROP TABLE IF EXISTS `shopping_cart_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shopping_cart_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `variant_item_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_variants`
--

LOCK TABLES `shopping_cart_variants` WRITE;
/*!40000 ALTER TABLE `shopping_cart_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_carts`
--

DROP TABLE IF EXISTS `shopping_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_carts`
--

LOCK TABLES `shopping_carts` WRITE;
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'New release','Samsung Galaxy S24','Powered by AI','uploads/custom-images/slider-2024-03-19-08-26-54-8094.png',1,1,NULL,'samsung-galaxy-a70','2022-09-20 03:55:57','2024-03-19 08:26:54'),(2,'New release','Galaxy Z','Fold5','uploads/custom-images/slider-2024-03-19-05-09-22-7007.jpg',0,2,NULL,'samsung-galaxy-a31','2022-09-20 03:57:41','2024-03-19 05:19:32'),(3,'New release','Galaxy Buds2','Pro','uploads/custom-images/slider-2024-03-19-05-11-24-5340.jpeg',1,3,NULL,'samsung-galaxy-a20','2022-09-20 03:58:20','2024-03-19 05:11:24');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_templates`
--

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,'User Verification',NULL,'Dear {{user_name}},\r\n\r\nCongratulations! Your Account has been created successfully. Please copy and past and Active your Account. Your OTP code is {{otp_code}}',NULL,'2023-01-11 12:07:47'),(2,'Password Reset',NULL,'Dear {{name}},\r\n\r\nDo you want to reset your password? Please Copy and past this code. Your OTP Code is {{otp_code}}',NULL,'2023-01-12 03:52:23'),(3,'Order Successfully',NULL,'Hi {{user_name}},\r\n\r\nThanks for your new order. Your order id has been submited .\r\nOrder Id : {{order_id}},',NULL,'2023-01-11 11:43:08');
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_login_information`
--

DROP TABLE IF EXISTS `social_login_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_login_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_facebook` int NOT NULL DEFAULT '0',
  `facebook_client_id` text COLLATE utf8mb4_unicode_ci,
  `facebook_secret_id` text COLLATE utf8mb4_unicode_ci,
  `is_gmail` int NOT NULL DEFAULT '0',
  `gmail_client_id` text COLLATE utf8mb4_unicode_ci,
  `gmail_secret_id` text COLLATE utf8mb4_unicode_ci,
  `facebook_redirect_url` text COLLATE utf8mb4_unicode_ci,
  `gmail_redirect_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_login_information`
--

LOCK TABLES `social_login_information` WRITE;
/*!40000 ALTER TABLE `social_login_information` DISABLE KEYS */;
INSERT INTO `social_login_information` VALUES (1,0,'343rer','fsdfa',0,'334dsfs','fdsf343','link','link',NULL,'2022-06-11 11:16:26');
/*!40000 ALTER TABLE `social_login_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sslcommerz_payments`
--

DROP TABLE IF EXISTS `sslcommerz_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sslcommerz_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sslcommerz_payments`
--

LOCK TABLES `sslcommerz_payments` WRITE;
/*!40000 ALTER TABLE `sslcommerz_payments` DISABLE KEYS */;
INSERT INTO `sslcommerz_payments` VALUES (1,'wsus628f03bb09670','wsus628f03bb09670@ssl','sandbox','80','BD','BDT',1,NULL,'2024-02-06 20:03:44',2);
/*!40000 ALTER TABLE `sslcommerz_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `currency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
INSERT INTO `stripe_payments` VALUES (1,1,'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5','sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV',NULL,'2024-03-19 03:21:19','US','USD',1,1);
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (10,13,'Phone Case','phone-case',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(11,13,'Screen Protector','screen-protector',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(12,13,'Portable Charger (Power Bank)','portable-charger',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(13,13,'Wireless Charger','wireless-charger',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(14,13,'Bluetooth Headphones or Earbuds','bluetooth-headphones-earbuds',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(15,13,'Phone Mount for Car','phone-mount-car',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(16,13,'Selfie Stick','selfie-stick',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(17,13,'PopSocket or Phone Grip','popsocket-phone-grip',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(18,13,'Smartwatch','smartwatch',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(19,13,'Bluetooth Speaker','bluetooth-speaker',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(20,13,'Earbuds','ear-buds',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(21,1,'iPhone','iphone',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(22,1,'iPad','ipad',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(23,1,'Mac','mac',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(24,1,'Apple Watch','apple-watch',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(25,1,'Apple TV','apple-tv',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(26,1,'HomePod','homepod',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(27,1,'AirPods','airpods',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(28,1,'Accessories','accessories',1,'2024-03-19 02:48:32','2024-03-19 02:48:32'),(29,1,'Apple Services','apple-services',1,'2024-03-19 02:48:32','2024-03-19 02:48:32');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified_token` text COLLATE utf8mb4_unicode_ci,
  `is_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'admin@gmail.com',0,'568771',0,'2022-09-21 05:03:38','2022-09-21 05:03:38'),(2,'abdur.rohman2003@gmail.com',0,'458560',0,'2022-09-21 05:03:47','2022-09-21 05:03:47'),(3,'admin@brandmarrow.com.bd',0,'298058',0,'2022-09-21 05:03:59','2022-09-21 05:03:59'),(4,'abdur_rohman2003@yahoo.com',0,'978651',0,'2022-09-21 07:06:47','2022-09-21 07:06:47'),(5,'h@h.com',0,'863244',0,'2022-09-22 10:18:38','2022-09-22 10:18:38'),(6,'Mollitia rerum omnis',0,'637112',0,'2022-09-23 06:01:01','2022-09-23 06:01:01'),(7,'supuhib@mailinator.com',0,'184076',0,'2022-09-23 06:01:08','2022-09-23 06:01:08'),(8,'abc@gmail.com',0,'635442',0,'2022-10-29 17:11:29','2022-10-29 17:11:29'),(9,'user2@gmail.com',0,'455377',0,'2022-10-29 17:15:48','2022-10-29 17:15:48'),(10,'patient@gmail.com',0,'477354',0,'2022-10-29 17:18:54','2022-10-29 17:18:54'),(11,'user64@gmail.com',0,'583716',0,'2022-10-29 17:25:26','2022-10-29 17:25:26'),(12,'user@gmail.com',0,'802435',0,'2022-10-29 19:06:22','2022-10-29 19:06:22'),(13,'samad1122@gmail.com',0,'733410',0,'2022-10-31 21:28:20','2022-10-31 21:28:20'),(14,'muhammadhammadkhan17@gamil.com',0,'418556',0,'2022-10-31 21:28:39','2022-10-31 21:28:39'),(15,'fazigamingyt1@gmail.com',0,'475241',0,'2022-11-20 20:56:35','2022-11-20 20:56:35'),(16,'azmatbukhari879@gmail.com',0,'753841',0,'2022-11-22 13:42:37','2022-11-22 13:42:37');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tawk_chats`
--

DROP TABLE IF EXISTS `tawk_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tawk_chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chat_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tawk_chats`
--

LOCK TABLES `tawk_chats` WRITE;
/*!40000 ALTER TABLE `tawk_chats` DISABLE KEYS */;
INSERT INTO `tawk_chats` VALUES (1,'link','612dc781d6e7610a49b2d444','1fedd6l9m',1,NULL,'2022-11-16 01:41:06');
/*!40000 ALTER TABLE `tawk_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_and_conditions`
--

DROP TABLE IF EXISTS `terms_and_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `terms_and_condition` longtext COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_and_conditions`
--

LOCK TABLES `terms_and_conditions` WRITE;
/*!40000 ALTER TABLE `terms_and_conditions` DISABLE KEYS */;
INSERT INTO `terms_and_conditions` VALUES (1,'<p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Welcome to&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>!</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These terms and conditions outline the rules and regulations for the use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Website, located at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company\'s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We employ the use of cookies. By accessing&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, you agreed to use cookies in agreement with the&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Privacy Policy.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">License</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Unless otherwise stated,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;and/or its licensors own the intellectual property rights for all material on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. All intellectual property rights are reserved. You may access this from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You must not:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Republish material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Redistribute content from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This Agreement shall begin on the date hereof.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You warrant and represent that:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You hereby grant&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Hyperlinking to our Content</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Government agencies;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Search engines;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">News organizations;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">commonly-known consumer and/or business information sources;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">dot.com community sites;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">associations or other groups representing charities;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">online directory distributors;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">internet portals;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">accounting, law and consulting firms; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">educational institutions and trade associations.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>; and (d) the link is in the context of general resource information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of our corporate name; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of the uniform resource locator being linked to; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">No use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">iFrames</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Content Liability</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Reservation of Rights</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Removal of links from our website</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Disclaimer</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for death or personal injury;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>','<h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">Privacy Policy for&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span></h2><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">At&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, accessible at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;and how we use it.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at&nbsp;<span class=\"highlight preview_email_address\" style=\"background: rgb(255, 255, 238);\">Email@Website.com</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This privacy policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. This policy is not applicable to any information collected offline or via channels other than this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Consent</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Information we collect</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">How we use your information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We use the information we collect in various ways, including to:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Provide, operate, and maintain our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Improve, personalize, and expand our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Understand and analyze how you use our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Develop new products, services, features, and functionality</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Send you emails</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Find and prevent fraud</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Log Files</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies and Web Beacons</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Like any other website,&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;uses ‘cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">DoubleClick DART Cookie</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL –&nbsp;<a href=\"https://policies.google.com/technologies/ads\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(93, 136, 179);\">https://policies.google.com/technologies/ads</a>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><p style=\"margin: 1em 0px;\">Google</p><p style=\"margin: 1em 0px;\"><a href=\"https://policies.google.com/technologies/ads\" rel=\"noopener noreferrer\" style=\"color: rgb(93, 136, 179);\">https://policies.google.com/technologies/ads</a></p></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Advertising Partners Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Note that&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;has no access to or control over these cookies that are used by third-party advertisers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Third-Party Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">CCPA Privacy Policy (Do Not Sell My Personal Information)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">GDPR Privacy Policy (Data Protection Rights)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Children\'s Information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>','2022-09-20 08:23:13','2022-09-20 08:23:43');
/*!40000 ALTER TABLE `terms_and_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (2,'John Doe','CEO','uploads/custom-images/john-doe-20220922033955.png','5','As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.',1,NULL,'2022-09-22 09:39:55'),(3,'Michael','CEO','uploads/custom-images/ibrahim-khalil-20220922034002.png','5','Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.',1,'2022-07-31 10:57:20','2022-09-25 09:10:18'),(5,'James Robert','CEO','uploads/custom-images/james-robert-20220925031227.png','5','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English',1,'2022-09-25 09:12:27','2022-09-25 09:12:27'),(6,'Mary 	Patricia','CEO','uploads/custom-images/mary-patricia-20220925031348.png','5','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English',1,'2022-09-25 09:13:48','2022-09-25 09:13:48');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `three_column_categories`
--

DROP TABLE IF EXISTS `three_column_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `three_column_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `three_column_categories`
--

LOCK TABLES `three_column_categories` WRITE;
/*!40000 ALTER TABLE `three_column_categories` DISABLE KEYS */;
INSERT INTO `three_column_categories` VALUES (1,1,0,0,2,0,0,5,0,0,NULL,'2022-02-07 03:59:38');
/*!40000 ALTER TABLE `three_column_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twilio_sms`
--

DROP TABLE IF EXISTS `twilio_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twilio_sms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_sid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_register_sms` int NOT NULL DEFAULT '0',
  `enable_reset_pass_sms` int NOT NULL DEFAULT '0',
  `enable_order_confirmation_sms` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twilio_sms`
--

LOCK TABLES `twilio_sms` WRITE;
/*!40000 ALTER TABLE `twilio_sms` DISABLE KEYS */;
INSERT INTO `twilio_sms` VALUES (1,'AC3551cb38008dc7c6560db2909d58d01b','001e56dc322d3eb0be477376f969b79c','+17266008587',1,1,1,NULL,'2023-01-11 11:50:59');
/*!40000 ALTER TABLE `twilio_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` int NOT NULL DEFAULT '0',
  `verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abdur1 Rohman1','facik91345@pahed.com',NULL,'$2y$10$1fb1W./8xpgma9gJo/nGIu8eGxqoULkt8cKsCBLBcZwQJ/yS81/sW',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'973589',0,1,'2022-09-20 10:04:42','2022-09-20 10:04:42'),(2,'John Do','meyaj42636@pahed.com',NULL,'$2y$10$PCusAOjlo72nk4dfE9mJl.AQ/i9BBjczfwYqhRxtudDGQzoV4U2Ki',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'846418',0,1,'2022-09-21 05:25:34','2022-09-21 05:25:34'),(3,'John Do','piway67338@geekjun.com',NULL,'$2y$10$MWP/Jt4d1Sz0U6NrOPZcSutWhIuAb3eeV4Erw82YP7ja32Qjl8LQC',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'191269',0,1,'2022-09-21 05:26:32','2022-09-21 05:26:32'),(4,'Autumn Decker Dean','jipof28122@orlydns.com',NULL,'$2y$10$B3aOUPcMKFQUKR9af/taSei07iAEaiT2TaaWaofuM4cMuspsIffH.','Ou5C4kwC0iMZ7K2nAP7m2mZulHnXvIhz5j3VAaWNxboVpCbwFcUVPpPP8DXX',NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-09-21 05:33:41','2022-09-21 05:39:16'),(5,'s s','marohman74@gmail.com',NULL,'$2y$10$fLfrcsXAEO4Ppl.RzHEj2ObbdSBKKgy8XC3kPDIjE/Fqp.yRnCqea',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/s-s-2022-09-22-10-19-00-8064.jpg','+881682825123',0,0,0,NULL,'qww',0,NULL,1,1,'2022-09-21 05:40:21','2022-11-21 14:18:05'),(6,'nayeem','mrnayeem75@gmail.com',NULL,'$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/nayeem-2022-09-21-10-02-25-6264.jpg','+88123456789',4,7,10,NULL,'catsle',0,NULL,1,1,'2022-09-21 06:48:34','2022-09-21 16:02:25'),(7,'Amaya Hendrix','user@gmail.com',NULL,'$2y$10$P1z8Sadw7fev4VG2ulNJSuHlJM0YinHx2J9v/nEkOYvthiFrhsbFm','mRefqwR5PgXqWONQGu50sgbTfRLQG5GeJzbzAnl8h3MG6V9CukevqI2w3SCA',NULL,1,NULL,NULL,NULL,NULL,'+8801310118550',2,NULL,NULL,'2100','Dhaka,bangladesh',0,NULL,1,1,'2022-09-21 07:08:27','2023-01-05 02:31:11'),(8,'Harding Rosa','fegig12897@ploneix.com',NULL,'$2y$10$.Z7BHjmwrhswRQA1/SDRUubKwZDTtFU8GK9ZGbkxprsMCDWBycSXC',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-09-21 07:11:54','2022-09-21 07:12:14'),(9,'Nasim Horne','wokij22557@geekjun.com',NULL,'$2y$10$fSYHi6.oqhxsPYKZA1aASOA3YbujGYabkkoE/w/G3kKBoSRqzO2TG',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-09-21 07:17:37','2022-09-21 07:18:01'),(10,'Xaviera Barnes','rokayo4006@pahed.com',NULL,'$2y$10$W0ffeYoOKWHml0SiziQ7uuB0WjbSkf3hbNuuwwmNi5ZFxD/ybSD4W',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-09-21 07:21:41','2022-09-21 07:22:03'),(11,'Kelsey Conrad','Habbriyi',NULL,'$2y$10$6mUC3rwW9E42jqilivcw0unRzFcE/BK/6a8GbxpQXF8GIe1Gd8VVW',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'604590',0,1,'2022-09-21 07:24:58','2022-11-21 10:47:07'),(12,'Kelsey Conrad','seller@gmail.com',NULL,'$2y$10$LZJN3KNzoF6wZFyO0AvaYeyKnf7j51qGfjFWIj5nfq5czpVnCSWaa',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/kelsey-conrad-2022-12-28-04-55-51-8312.jpg','123-874-8948',0,0,0,NULL,'California, USA',0,NULL,1,1,'2022-09-21 07:26:08','2022-12-28 10:55:52'),(14,'Moses Haynes Short','cacixi5247@corylan.com',NULL,'$2y$10$SjifGqNkcVvFPhQuDFe8iebZ1KGkDpsRywLbCc3.mGA2rfp.3lO0.',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-10-27 08:33:02','2022-10-27 08:33:14'),(15,'Jason Mcneil','mehoke2377@sopulit.com',NULL,'$2y$10$Dpk9fNCaMpK4XI4OfdrRVO4cWPXR3DeIj1wg3CLqavI60UZP1Xdti',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,NULL,1,1,'2022-11-18 15:13:08','2022-11-23 01:07:48'),(16,'Test Test','test@gmail.con',NULL,'$2y$10$N35xuiQ2nWwntEwfeTbPHe9eFsskk4C/xx.Z8hc0hhmkbvlo95rEi',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'976621',0,1,'2022-11-22 06:16:45','2022-11-22 06:16:45'),(17,'suraj c','s@g.com',NULL,'$2y$10$/ya3vIvGKDW3MDZxFfB39uvYYCJD20fX7jUg52FX6fBks2ZHkVsum',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'522603',0,1,'2022-11-23 01:45:44','2022-11-23 01:45:44'),(25,'Junaid Siddik','junaid123@gmail.com',NULL,'$2y$10$s8nWdFuM6SLU1USA9oMmtOj4x7KF1UzGmwocn.15A3cH.Hg4gybv6',NULL,NULL,0,NULL,NULL,NULL,NULL,'+8801310118550',0,0,0,NULL,NULL,0,'104905',0,1,'2023-01-12 04:59:32','2023-01-12 04:59:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_social_links`
--

DROP TABLE IF EXISTS `vendor_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_social_links`
--

LOCK TABLES `vendor_social_links` WRITE;
/*!40000 ALTER TABLE `vendor_social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `top_rated` int NOT NULL DEFAULT '0',
  `verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `greeting_msg` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,4,0,'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png','uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png','01792166627','jipof28122@orlydns.com','Shopno BD','shopno-bd','10.00AM','10.00PM','Dhaka,Bangladesh','Shopno BD','Shopno BD',1,0,0,NULL,0,'Welcome to Shopno BD','2022-09-21 05:58:14','2022-09-21 05:58:32'),(2,7,0,'uploads/custom-images/seller-banner-2022-09-21-01-10-12-1265.png','uploads/custom-images/seller-logo-2022-09-21-01-10-12-2682.png','01792166627','hijigov511@pahed.com','Eecoms Shop','eecoms-shop','10.00AM','10.00AM','Dhaka,Bangladesh','Eecoms Shop','Eecoms Shop',1,0,0,NULL,0,'Welcome to Eecoms Shop','2022-09-21 07:10:12','2023-01-05 04:34:28'),(3,8,0,'uploads/custom-images/seller-banner-2022-09-21-01-16-13-9611.png','uploads/custom-images/seller-logo-2022-09-21-01-16-13-5847.png','01792166627','fegig12897@ploneix.com','Fusion X','fusion-x','10.00AM','10.00PM','Dhaka,Bangladesh','Fusion X','Fusion X',1,0,0,NULL,0,'Welcome to Fusion X','2022-09-21 07:16:13','2022-09-21 07:16:18'),(4,9,0,'uploads/custom-images/seller-banner-2022-09-21-01-19-19-5022.png','uploads/custom-images/seller-logo-2022-09-21-01-19-19-3916.png','01792166627','wokij22557@geekjun.com','Rikayi Rox','rikayi-rox','10.00AM','10.00PM','Dhaka,Bangladesh','Rikayi Rox','Rikayi Rox',1,0,0,NULL,0,'Welcome to Rikayi Rox','2022-09-21 07:19:19','2022-09-21 07:19:24'),(5,10,0,'uploads/custom-images/seller-banner-2022-09-21-01-22-55-5481.png','uploads/custom-images/seller-logo-2022-09-21-01-22-55-6660.png','01792166627','rokayo4006@pahed.com','Habbriyi','habbriyi','10.00AM','10.00PM','Dhaka,Bangladesh','Habbriyi','Habbriyi',1,0,0,NULL,0,'Welcome to Habbriyi','2022-09-21 07:22:55','2022-09-21 07:23:06'),(6,12,0,'uploads/custom-images/seller-banner-2022-09-21-01-30-45-9893.png','uploads/custom-images/seller-logo-2022-09-21-01-30-46-9044.png','01792166627','tofor67338@geekjun.com','Rayhans','rayhans','10.00AM','10.00PM','Dhaka,Bangladesh','Rayhans','Rayhans',1,0,0,NULL,0,'Welcome to Rayhans','2022-09-21 07:30:46','2022-09-21 07:30:53');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (3,5,4,'2022-09-21 17:31:07','2022-09-21 17:31:07');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19  9:12:02
