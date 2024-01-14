CREATE DATABASE  IF NOT EXISTS `user_journey_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `user_journey_data`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: user_journey_data
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `front_interactions`
--

DROP TABLE IF EXISTS `front_interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `front_interactions` (
  `visitor_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `event_source_url` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `event_destination_url` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_interactions`
--

LOCK TABLES `front_interactions` WRITE;
/*!40000 ALTER TABLE `front_interactions` DISABLE KEYS */;
INSERT INTO front_interactions VALUES (1379687,2819295,'https://365datascience.com/signup/','https://365datascience.com/signup/','2022-12-01 14:33:33','signup_password.click'),(476224,2819351,'https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','2022-12-01 14:33:34','login_password.click'),(1379697,2819334,'https://365datascience.com/checkout/?plan=annual','https://365datascience.com/checkout/?plan=annual','2022-12-01 14:33:36','checkout_annual_zip.click'),(1379687,2819295,'https://365datascience.com/signup/','https://365datascience.com/signup/','2022-12-01 14:33:38','signup_policy.click'),(1379697,2819334,'https://365datascience.com/checkout/?plan=annual','https://365datascience.com/checkout/?plan=annual','2022-12-01 14:33:38','checkout_annual_zip.click'),(1379687,2819295,'https://365datascience.com/signup/','https://365datascience.com/signup/','2022-12-01 14:33:41','signup_signup_button.click.success'),(476224,2819351,'https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','2022-12-01 14:33:47','login_login.click.success'),(1355125,2819358,'https://365datascience.com/login/?utm_medium=email&utm_source=infusionsoft&utm_campaign=free-plan-welcome-email-s2&utm_content=welcome-email&inf_contact_key=a5bb33a03c2153b8f331f3840c0bee55bb81b9ded3d8b3c1b80fc8cf5b3ba7c9','https://365datascience.com/login/?utm_medium=email&utm_source=infusionsoft&utm_campaign=free-plan-welcome-email-s2&utm_content=welcome-email&inf_contact_key=a5bb33a03c2153b8f331f3840c0bee55bb81b9ded3d8b3c1b80fc8cf5b3ba7c9','2022-12-01 14:33:53','login_google.click.success'),(1215761,2819347,'https://365datascience.com/login/','https://365datascience.com/login/','2022-12-01 14:33:56','login_google.click.success'),(1379720,2819363,'https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','https://365datascience.com/login/?redirectUrl=https%3A%2F%2Flearn.365datascience.com%2F','2022-12-01 14:34:05','login_google.click.success'),(438541,2819369,'https://365datascience.com/login/','https://365datascience.com/login/','2022-12-01 14:34:22','login_email.click'),(438541,2819369,'https://365datascience.com/login/','https://365datascience.com/login/','2022-12-01 14:34:23','login_password.click'),(1379683,2819290,'https://365datascience.com/login/','https://365datascience.com/login/','2022-12-01 14:34:25','login_login.click.success'),(1379568,2819373,'https://365datascience.com/checkout/?plan=annual','https://365datascience.com/checkout/?plan=annual','2022-12-01 14:34:34','checkout_annual_paypal.click'),(438541,2819369,'https://365datascience.com/login/','https://365datascience.com/login/','2022-12-01 14:34:40','login_login.click.success'),(1379568,2819373,'https://365datascience.com/checkout/?plan=annual','https://365datascience.com/checkout/?plan=annual','2022-12-01 14:34:50','checkout_annual_creditcard.click');
*!40000 ALTER TABLE `front_interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_visitors`
--

DROP TABLE IF EXISTS `front_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `front_visitors` (
  `visitor_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_visitors`
--

LOCK TABLES `front_visitors` WRITE;
/*!40000 ALTER TABLE `front_visitors` DISABLE KEYS */;
INSERT INTO front_visitors VALUES (1803660,239862),(1803670,464883),(1803698,NULL),(1803699,405018),(1803701,464885),(1803702,6011),(1803712,282504),(1803714,7521),(1803715,NULL),(1803718,462354),(1803732,494734),(1803734,274087),(1803738,NULL),(1803757,464888),(1803765,284625),(1803770,268380),(1803787,NULL),(1803798,464889),(1803803,NULL),(1803811,NULL),(1803823,265763),(1803826,464891),(1803847,384916),(1803857,NULL),(1803861,NULL),(1803864,387889),(1803882,454507),(1803884,464634),(1803891,230894),(1803893,283081),(1803894,NULL),(1803898,NULL),(1803905,NULL),(1803906,464302),(1803911,464928),(1803915,323219),(1803918,464893),(1803923,464892),(1803924,348913),(1803937,464892),(1803941,NULL),(1803947,465855),(1803954,454451),(1803956,464894),(1803959,338613),(1803968,458301),(1803969,464895),(1803978,284379),(1803991,323926),(1803996,NULL),(1804002,458301),(1804003,464897),(1804005,181065),(1804012,228749),(1804015,NULL),(1804029,NULL),(1804030,NULL),(1804032,345609),(1804033,143973),(1804042,465421),(1804045,NULL),(1804049,NULL),(1804064,318257),(1804087,161524),(1804089,280148),(1804113,147656),(1804117,465421);
/*!40000 ALTER TABLE `front_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_purchases`
--

DROP TABLE IF EXISTS `student_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_purchases` (
  `user_id` int DEFAULT NULL,
  `purchase_id` int DEFAULT NULL,
  `purchase_type` tinyint DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_purchases`
--

LOCK TABLES `student_purchases` WRITE;
/*!40000 ALTER TABLE `student_purchases` DISABLE KEYS */;
INSERT INTO `student_purchases` VALUES (520868,31387,0,36.00,'2023-05-10 06:43:02'),(520905,31388,0,44.64,'2023-05-10 08:26:25'),(495483,31392,0,15.23,'2023-05-10 14:00:54'),(520995,31393,0,36.00,'2023-05-10 14:12:11'),(334631,31394,0,28.73,'2023-05-10 15:41:20');
/*!40000 ALTER TABLE `student_purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

