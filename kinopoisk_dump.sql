-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: kinopoisk
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `award_list`
--

DROP TABLE IF EXISTS `award_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award_list` (
  `award_id` int unsigned NOT NULL AUTO_INCREMENT,
  `award_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_list`
--

LOCK TABLES `award_list` WRITE;
/*!40000 ALTER TABLE `award_list` DISABLE KEYS */;
INSERT INTO `award_list` VALUES (1,'Oscar'),(2,'Golden Globes'),(3,'BAFTA Awards'),(4,'Cèsar Awards'),(5,'Screen Actors Guild'),(6,'Ника'),(7,'Cannes Film Festival'),(8,'Berlin International Film Festival'),(9,'Venice Film Festival');
/*!40000 ALTER TABLE `award_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `movie_id` int unsigned NOT NULL,
  `award_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  CONSTRAINT `awards_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `movie_id` int unsigned NOT NULL,
  `genre_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (90,1),(93,2),(38,9),(67,9),(6,9),(81,9),(64,7),(62,1),(28,2),(84,9);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_list`
--

DROP TABLE IF EXISTS `genre_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_list` (
  `genre_id` int unsigned NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_list`
--

LOCK TABLES `genre_list` WRITE;
/*!40000 ALTER TABLE `genre_list` DISABLE KEYS */;
INSERT INTO `genre_list` VALUES (1,'Comedy'),(2,'Horror'),(3,'Sci-Fi'),(4,'Western'),(5,'Melodrama'),(6,'Musical'),(7,'Action'),(8,'Adventure'),(9,'Fantasy'),(10,'Thriller');
/*!40000 ALTER TABLE `genre_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `movie_id` int unsigned NOT NULL,
  `poster_link` varchar(255) DEFAULT NULL,
  `trailer_link` varchar(255) DEFAULT NULL,
  `picture_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'http://kinopoisk.ru/poster/1.jpg','http://kinopoisk.ru/trailer1.mp4','http://kinopoisk.ru/picture/1.jpg'),(2,'http://kinopoisk.ru/poster/2.jpg','http://kinopoisk.ru/trailer2.mp4','http://kinopoisk.ru/picture/2.jpg'),(3,'http://kinopoisk.ru/poster/3.jpg','http://kinopoisk.ru/trailer3.mp4','http://kinopoisk.ru/picture/3.jpg'),(4,'http://kinopoisk.ru/poster/4.jpg','http://kinopoisk.ru/trailer4.mp4','http://kinopoisk.ru/picture/4.jpg'),(5,'http://kinopoisk.ru/poster/5.jpg','http://kinopoisk.ru/trailer5.mp4','http://kinopoisk.ru/picture/5.jpg'),(6,'http://kinopoisk.ru/poster/6.jpg','http://kinopoisk.ru/trailer6.mp4','http://kinopoisk.ru/picture/6.jpg'),(7,'http://kinopoisk.ru/poster/7.jpg','http://kinopoisk.ru/trailer7.mp4','http://kinopoisk.ru/picture/7.jpg'),(8,'http://kinopoisk.ru/poster/8.jpg','http://kinopoisk.ru/trailer8.mp4','http://kinopoisk.ru/picture/8.jpg'),(9,'http://kinopoisk.ru/poster/9.jpg','http://kinopoisk.ru/trailer9.mp4','http://kinopoisk.ru/picture/9.jpg'),(10,'http://kinopoisk.ru/poster/10.jpg','http://kinopoisk.ru/trailer10.mp4','http://kinopoisk.ru/picture/10.jpg'),(11,'http://kinopoisk.ru/poster/11.jpg','http://kinopoisk.ru/trailer11.mp4','http://kinopoisk.ru/picture/11.jpg'),(12,'http://kinopoisk.ru/poster/12.jpg','http://kinopoisk.ru/trailer12.mp4','http://kinopoisk.ru/picture/12.jpg'),(13,'http://kinopoisk.ru/poster/13.jpg','http://kinopoisk.ru/trailer13.mp4','http://kinopoisk.ru/picture/13.jpg'),(14,'http://kinopoisk.ru/poster/14.jpg','http://kinopoisk.ru/trailer14.mp4','http://kinopoisk.ru/picture/14.jpg'),(15,'http://kinopoisk.ru/poster/15.jpg','http://kinopoisk.ru/trailer15.mp4','http://kinopoisk.ru/picture/15.jpg'),(16,'http://kinopoisk.ru/poster/16.jpg','http://kinopoisk.ru/trailer16.mp4','http://kinopoisk.ru/picture/16.jpg'),(17,'http://kinopoisk.ru/poster/17.jpg','http://kinopoisk.ru/trailer17.mp4','http://kinopoisk.ru/picture/17.jpg'),(18,'http://kinopoisk.ru/poster/18.jpg','http://kinopoisk.ru/trailer18.mp4','http://kinopoisk.ru/picture/18.jpg'),(19,'http://kinopoisk.ru/poster/19.jpg','http://kinopoisk.ru/trailer19.mp4','http://kinopoisk.ru/picture/19.jpg'),(20,'http://kinopoisk.ru/poster/20.jpg','http://kinopoisk.ru/trailer20.mp4','http://kinopoisk.ru/picture/20.jpg'),(21,'http://kinopoisk.ru/poster/21.jpg','http://kinopoisk.ru/trailer21.mp4','http://kinopoisk.ru/picture/21.jpg'),(22,'http://kinopoisk.ru/poster/22.jpg','http://kinopoisk.ru/trailer22.mp4','http://kinopoisk.ru/picture/22.jpg'),(23,'http://kinopoisk.ru/poster/23.jpg','http://kinopoisk.ru/trailer23.mp4','http://kinopoisk.ru/picture/23.jpg'),(24,'http://kinopoisk.ru/poster/24.jpg','http://kinopoisk.ru/trailer24.mp4','http://kinopoisk.ru/picture/24.jpg'),(25,'http://kinopoisk.ru/poster/25.jpg','http://kinopoisk.ru/trailer25.mp4','http://kinopoisk.ru/picture/25.jpg'),(26,'http://kinopoisk.ru/poster/26.jpg','http://kinopoisk.ru/trailer26.mp4','http://kinopoisk.ru/picture/26.jpg'),(27,'http://kinopoisk.ru/poster/27.jpg','http://kinopoisk.ru/trailer27.mp4','http://kinopoisk.ru/picture/27.jpg'),(28,'http://kinopoisk.ru/poster/28.jpg','http://kinopoisk.ru/trailer28.mp4','http://kinopoisk.ru/picture/28.jpg'),(29,'http://kinopoisk.ru/poster/29.jpg','http://kinopoisk.ru/trailer29.mp4','http://kinopoisk.ru/picture/29.jpg'),(30,'http://kinopoisk.ru/poster/30.jpg','http://kinopoisk.ru/trailer30.mp4','http://kinopoisk.ru/picture/30.jpg'),(31,'http://kinopoisk.ru/poster/31.jpg','http://kinopoisk.ru/trailer31.mp4','http://kinopoisk.ru/picture/31.jpg'),(32,'http://kinopoisk.ru/poster/32.jpg','http://kinopoisk.ru/trailer32.mp4','http://kinopoisk.ru/picture/32.jpg'),(33,'http://kinopoisk.ru/poster/33.jpg','http://kinopoisk.ru/trailer33.mp4','http://kinopoisk.ru/picture/33.jpg'),(34,'http://kinopoisk.ru/poster/34.jpg','http://kinopoisk.ru/trailer34.mp4','http://kinopoisk.ru/picture/34.jpg'),(35,'http://kinopoisk.ru/poster/35.jpg','http://kinopoisk.ru/trailer35.mp4','http://kinopoisk.ru/picture/35.jpg'),(36,'http://kinopoisk.ru/poster/36.jpg','http://kinopoisk.ru/trailer36.mp4','http://kinopoisk.ru/picture/36.jpg'),(37,'http://kinopoisk.ru/poster/37.jpg','http://kinopoisk.ru/trailer37.mp4','http://kinopoisk.ru/picture/37.jpg'),(38,'http://kinopoisk.ru/poster/38.jpg','http://kinopoisk.ru/trailer38.mp4','http://kinopoisk.ru/picture/38.jpg'),(39,'http://kinopoisk.ru/poster/39.jpg','http://kinopoisk.ru/trailer39.mp4','http://kinopoisk.ru/picture/39.jpg'),(40,'http://kinopoisk.ru/poster/40.jpg','http://kinopoisk.ru/trailer40.mp4','http://kinopoisk.ru/picture/40.jpg'),(41,'http://kinopoisk.ru/poster/41.jpg','http://kinopoisk.ru/trailer41.mp4','http://kinopoisk.ru/picture/41.jpg'),(42,'http://kinopoisk.ru/poster/42.jpg','http://kinopoisk.ru/trailer42.mp4','http://kinopoisk.ru/picture/42.jpg'),(43,'http://kinopoisk.ru/poster/43.jpg','http://kinopoisk.ru/trailer43.mp4','http://kinopoisk.ru/picture/43.jpg'),(44,'http://kinopoisk.ru/poster/44.jpg','http://kinopoisk.ru/trailer44.mp4','http://kinopoisk.ru/picture/44.jpg'),(45,'http://kinopoisk.ru/poster/45.jpg','http://kinopoisk.ru/trailer45.mp4','http://kinopoisk.ru/picture/45.jpg'),(46,'http://kinopoisk.ru/poster/46.jpg','http://kinopoisk.ru/trailer46.mp4','http://kinopoisk.ru/picture/46.jpg'),(47,'http://kinopoisk.ru/poster/47.jpg','http://kinopoisk.ru/trailer47.mp4','http://kinopoisk.ru/picture/47.jpg'),(48,'http://kinopoisk.ru/poster/48.jpg','http://kinopoisk.ru/trailer48.mp4','http://kinopoisk.ru/picture/48.jpg'),(49,'http://kinopoisk.ru/poster/49.jpg','http://kinopoisk.ru/trailer49.mp4','http://kinopoisk.ru/picture/49.jpg'),(50,'http://kinopoisk.ru/poster/50.jpg','http://kinopoisk.ru/trailer50.mp4','http://kinopoisk.ru/picture/50.jpg'),(51,'http://kinopoisk.ru/poster/51.jpg','http://kinopoisk.ru/trailer51.mp4','http://kinopoisk.ru/picture/51.jpg'),(52,'http://kinopoisk.ru/poster/52.jpg','http://kinopoisk.ru/trailer52.mp4','http://kinopoisk.ru/picture/52.jpg'),(53,'http://kinopoisk.ru/poster/53.jpg','http://kinopoisk.ru/trailer53.mp4','http://kinopoisk.ru/picture/53.jpg'),(54,'http://kinopoisk.ru/poster/54.jpg','http://kinopoisk.ru/trailer54.mp4','http://kinopoisk.ru/picture/54.jpg'),(55,'http://kinopoisk.ru/poster/55.jpg','http://kinopoisk.ru/trailer55.mp4','http://kinopoisk.ru/picture/55.jpg'),(56,'http://kinopoisk.ru/poster/56.jpg','http://kinopoisk.ru/trailer56.mp4','http://kinopoisk.ru/picture/56.jpg'),(57,'http://kinopoisk.ru/poster/57.jpg','http://kinopoisk.ru/trailer57.mp4','http://kinopoisk.ru/picture/57.jpg'),(58,'http://kinopoisk.ru/poster/58.jpg','http://kinopoisk.ru/trailer58.mp4','http://kinopoisk.ru/picture/58.jpg'),(59,'http://kinopoisk.ru/poster/59.jpg','http://kinopoisk.ru/trailer59.mp4','http://kinopoisk.ru/picture/59.jpg'),(60,'http://kinopoisk.ru/poster/60.jpg','http://kinopoisk.ru/trailer60.mp4','http://kinopoisk.ru/picture/60.jpg'),(61,'http://kinopoisk.ru/poster/61.jpg','http://kinopoisk.ru/trailer61.mp4','http://kinopoisk.ru/picture/61.jpg'),(62,'http://kinopoisk.ru/poster/62.jpg','http://kinopoisk.ru/trailer62.mp4','http://kinopoisk.ru/picture/62.jpg'),(63,'http://kinopoisk.ru/poster/63.jpg','http://kinopoisk.ru/trailer63.mp4','http://kinopoisk.ru/picture/63.jpg'),(64,'http://kinopoisk.ru/poster/64.jpg','http://kinopoisk.ru/trailer64.mp4','http://kinopoisk.ru/picture/64.jpg'),(65,'http://kinopoisk.ru/poster/65.jpg','http://kinopoisk.ru/trailer65.mp4','http://kinopoisk.ru/picture/65.jpg'),(66,'http://kinopoisk.ru/poster/66.jpg','http://kinopoisk.ru/trailer66.mp4','http://kinopoisk.ru/picture/66.jpg'),(67,'http://kinopoisk.ru/poster/67.jpg','http://kinopoisk.ru/trailer67.mp4','http://kinopoisk.ru/picture/67.jpg'),(68,'http://kinopoisk.ru/poster/68.jpg','http://kinopoisk.ru/trailer68.mp4','http://kinopoisk.ru/picture/68.jpg'),(69,'http://kinopoisk.ru/poster/69.jpg','http://kinopoisk.ru/trailer69.mp4','http://kinopoisk.ru/picture/69.jpg'),(70,'http://kinopoisk.ru/poster/70.jpg','http://kinopoisk.ru/trailer70.mp4','http://kinopoisk.ru/picture/70.jpg'),(71,'http://kinopoisk.ru/poster/71.jpg','http://kinopoisk.ru/trailer71.mp4','http://kinopoisk.ru/picture/71.jpg'),(72,'http://kinopoisk.ru/poster/72.jpg','http://kinopoisk.ru/trailer72.mp4','http://kinopoisk.ru/picture/72.jpg'),(73,'http://kinopoisk.ru/poster/73.jpg','http://kinopoisk.ru/trailer73.mp4','http://kinopoisk.ru/picture/73.jpg'),(74,'http://kinopoisk.ru/poster/74.jpg','http://kinopoisk.ru/trailer74.mp4','http://kinopoisk.ru/picture/74.jpg'),(75,'http://kinopoisk.ru/poster/75.jpg','http://kinopoisk.ru/trailer75.mp4','http://kinopoisk.ru/picture/75.jpg'),(76,'http://kinopoisk.ru/poster/76.jpg','http://kinopoisk.ru/trailer76.mp4','http://kinopoisk.ru/picture/76.jpg'),(77,'http://kinopoisk.ru/poster/77.jpg','http://kinopoisk.ru/trailer77.mp4','http://kinopoisk.ru/picture/77.jpg'),(78,'http://kinopoisk.ru/poster/78.jpg','http://kinopoisk.ru/trailer78.mp4','http://kinopoisk.ru/picture/78.jpg'),(79,'http://kinopoisk.ru/poster/79.jpg','http://kinopoisk.ru/trailer79.mp4','http://kinopoisk.ru/picture/79.jpg'),(80,'http://kinopoisk.ru/poster/80.jpg','http://kinopoisk.ru/trailer80.mp4','http://kinopoisk.ru/picture/80.jpg'),(81,'http://kinopoisk.ru/poster/81.jpg','http://kinopoisk.ru/trailer81.mp4','http://kinopoisk.ru/picture/81.jpg'),(82,'http://kinopoisk.ru/poster/82.jpg','http://kinopoisk.ru/trailer82.mp4','http://kinopoisk.ru/picture/82.jpg'),(83,'http://kinopoisk.ru/poster/83.jpg','http://kinopoisk.ru/trailer83.mp4','http://kinopoisk.ru/picture/83.jpg'),(84,'http://kinopoisk.ru/poster/84.jpg','http://kinopoisk.ru/trailer84.mp4','http://kinopoisk.ru/picture/84.jpg'),(85,'http://kinopoisk.ru/poster/85.jpg','http://kinopoisk.ru/trailer85.mp4','http://kinopoisk.ru/picture/85.jpg'),(86,'http://kinopoisk.ru/poster/86.jpg','http://kinopoisk.ru/trailer86.mp4','http://kinopoisk.ru/picture/86.jpg'),(87,'http://kinopoisk.ru/poster/87.jpg','http://kinopoisk.ru/trailer87.mp4','http://kinopoisk.ru/picture/87.jpg'),(88,'http://kinopoisk.ru/poster/88.jpg','http://kinopoisk.ru/trailer88.mp4','http://kinopoisk.ru/picture/88.jpg'),(89,'http://kinopoisk.ru/poster/89.jpg','http://kinopoisk.ru/trailer89.mp4','http://kinopoisk.ru/picture/89.jpg'),(90,'http://kinopoisk.ru/poster/90.jpg','http://kinopoisk.ru/trailer90.mp4','http://kinopoisk.ru/picture/90.jpg'),(91,'http://kinopoisk.ru/poster/91.jpg','http://kinopoisk.ru/trailer91.mp4','http://kinopoisk.ru/picture/91.jpg'),(92,'http://kinopoisk.ru/poster/92.jpg','http://kinopoisk.ru/trailer92.mp4','http://kinopoisk.ru/picture/92.jpg'),(93,'http://kinopoisk.ru/poster/93.jpg','http://kinopoisk.ru/trailer93.mp4','http://kinopoisk.ru/picture/93.jpg'),(94,'http://kinopoisk.ru/poster/94.jpg','http://kinopoisk.ru/trailer94.mp4','http://kinopoisk.ru/picture/94.jpg'),(95,'http://kinopoisk.ru/poster/95.jpg','http://kinopoisk.ru/trailer95.mp4','http://kinopoisk.ru/picture/95.jpg'),(96,'http://kinopoisk.ru/poster/96.jpg','http://kinopoisk.ru/trailer96.mp4','http://kinopoisk.ru/picture/96.jpg'),(97,'http://kinopoisk.ru/poster/97.jpg','http://kinopoisk.ru/trailer97.mp4','http://kinopoisk.ru/picture/97.jpg'),(98,'http://kinopoisk.ru/poster/98.jpg','http://kinopoisk.ru/trailer98.mp4','http://kinopoisk.ru/picture/98.jpg'),(99,'http://kinopoisk.ru/poster/99.jpg','http://kinopoisk.ru/trailer99.mp4','http://kinopoisk.ru/picture/99.jpg'),(100,'http://kinopoisk.ru/poster/100.jpg','http://kinopoisk.ru/trailer100.mp4','http://kinopoisk.ru/picture/100.jpg');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `money`
--

DROP TABLE IF EXISTS `money`;
/*!50001 DROP VIEW IF EXISTS `money`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `money` AS SELECT 
 1 AS `name`,
 1 AS `budget`,
 1 AS `grosses_usa`,
 1 AS `grosses_all`,
 1 AS `profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `moto` varchar(255) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `duration` smallint unsigned DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `grosses_usa` int DEFAULT NULL,
  `grosses_all` int DEFAULT NULL,
  `first_performance` date DEFAULT NULL,
  `first_performance_russia` date DEFAULT NULL,
  `tv_show` set('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Dolores voluptas nemo accusantium vel.','Aliquid doloremque perferendis qui recusandae praesentium ut.',1980,130,187962793,869018,68173,'2008-04-22','2005-10-12','1'),(2,'Molestias harum aut quidem nostrum.','Eaque nesciunt facilis amet excepturi optio.',2019,113,638627708,223214,483687,'1981-08-27','1977-02-04','1'),(3,'Perferendis sit maiores tempore quae velit consequuntur.','Consequuntur aut et officiis nihil laboriosam error.',2009,123,550684034,388756,784862,'2016-12-25','1973-10-20','0'),(4,'Ipsam ipsum est suscipit eum nihil.','Qui fuga quo et dolores est qui.',2018,155,40182354,536274,220716,'2010-12-16','2017-12-19','1'),(5,'Temporibus quia asperiores quia ab et sit.','Earum eius dolor modi veritatis consequuntur.',2018,121,298128346,602420,909256,'2014-02-19','1970-04-27',''),(6,'Recusandae quis est cum et.','Et iusto qui eos.',2011,162,589347127,254223,649562,'1974-05-09','1974-05-31','1'),(7,'Dolores totam labore et ipsam.','Totam aut natus est molestias sit.',1995,88,31234741,712585,254898,'1995-04-15','2007-09-05',''),(8,'Ipsam perferendis vitae voluptas.','Provident doloremque ad perferendis impedit.',1979,154,396957197,127892,661406,'1973-02-05','2012-06-21','0'),(9,'Dolor totam natus totam et aut.','Deserunt molestiae omnis facilis quisquam mollitia deleniti.',2019,121,131960756,435504,112882,'1977-03-11','1972-03-03','0'),(10,'Optio deserunt odit optio sit enim atque.','Quod eligendi vero quia omnis nulla.',1977,94,135533049,507545,146316,'2010-08-09','1979-11-25','');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_staff`
--

DROP TABLE IF EXISTS `movie_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_staff` (
  `staff_id` int unsigned NOT NULL,
  `movie_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_staff`
--

LOCK TABLES `movie_staff` WRITE;
/*!40000 ALTER TABLE `movie_staff` DISABLE KEYS */;
INSERT INTO `movie_staff` VALUES (76,18,2),(259,47,7),(42,20,2),(1,76,3),(154,42,6),(248,76,1),(65,47,6),(237,84,4),(200,19,6),(68,63,7);
/*!40000 ALTER TABLE `movie_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `movies_of_directors`
--

DROP TABLE IF EXISTS `movies_of_directors`;
/*!50001 DROP VIEW IF EXISTS `movies_of_directors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movies_of_directors` AS SELECT 
 1 AS `name`,
 1 AS `f_name`,
 1 AS `movie_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `movie_id` int unsigned NOT NULL,
  `kinopoisk_rating` float unsigned DEFAULT NULL,
  `imdb_rating` float unsigned DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,NULL,0.86),(2,NULL,0.22),(3,NULL,3.52),(4,NULL,1.91),(5,NULL,4.02),(6,NULL,4.34),(7,NULL,4.66),(8,NULL,0.3),(9,NULL,2.49),(10,NULL,1.55),(11,NULL,0.29),(12,NULL,1.78),(13,NULL,3.03),(14,NULL,4.81),(15,NULL,4.98),(16,NULL,0.47),(17,NULL,2.4),(18,NULL,0.6),(19,NULL,0.81),(20,NULL,2.24),(21,NULL,3.76),(22,NULL,2.09),(23,NULL,4.15),(24,NULL,4.51),(25,NULL,0.07),(26,NULL,1.83),(27,NULL,3.95),(28,NULL,4.27),(29,NULL,4.49),(30,NULL,4.64),(31,NULL,4.75),(32,NULL,4.81),(33,NULL,4.8),(34,NULL,4.57),(35,NULL,3.47),(36,NULL,3.63),(37,NULL,2.75),(38,NULL,2.86),(39,NULL,1.05),(40,NULL,1.65),(41,NULL,0.13),(42,NULL,0.68),(43,NULL,3.01),(44,NULL,3.02),(45,NULL,1.07),(46,NULL,1.29),(47,NULL,3.26),(48,NULL,2.4),(49,NULL,2.25),(50,NULL,4.02),(51,NULL,3.36),(52,NULL,4.75),(53,NULL,3.68),(54,NULL,4.16),(55,NULL,4.73),(56,NULL,1.17),(57,NULL,1.66),(58,NULL,4.82),(59,NULL,4.09),(60,NULL,0.99),(61,NULL,2.67),(62,NULL,0.39),(63,NULL,3.96),(64,NULL,3.6),(65,NULL,1.13),(66,NULL,4.87),(67,NULL,0.96),(68,NULL,0.17),(69,NULL,2.97),(70,NULL,4.36),(71,NULL,2.87),(72,NULL,1.26),(73,NULL,2.69),(74,NULL,4.68),(75,NULL,0.34),(76,NULL,2.67),(77,NULL,2.31),(78,NULL,3.56),(79,NULL,0.88),(80,NULL,3.69),(81,NULL,0.82),(82,NULL,3.03),(83,NULL,2.69),(84,NULL,4.35),(85,NULL,3.7),(86,NULL,0.45),(87,NULL,1.13),(88,NULL,4.31),(89,NULL,3.18),(90,NULL,2.94),(91,NULL,0.19),(92,NULL,2.12),(93,NULL,0.01),(94,NULL,3.72),(95,NULL,3.57),(96,NULL,1.68),(97,NULL,2.67),(98,NULL,3.33),(99,NULL,3.63),(100,NULL,3.18);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `movie_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `mark` tinyint unsigned DEFAULT NULL,
  `review_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (81,212,2,'Id laudantium delectus nemo est dolor aut consequatur.','SAID was, \'Why is a very humble tone, going down on the trumpet, and then turned to the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the Queen shouted at.'),(46,293,1,'Minus molestiae consequuntur quidem velit.','Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to.'),(60,293,1,'Et ipsa sequi quod aliquid.','Mock Turtle is.\' \'It\'s the thing at all. However, \'jury-men\' would have appeared to them to be an advantage,\' said Alice, seriously, \'I\'ll have nothing more to come, so she felt that it was.'),(13,201,5,'Assumenda praesentium impedit inventore nemo et qui.','MINE.\' The Queen turned angrily away from her as she swam about, trying to touch her. \'Poor little thing!\' said the Caterpillar took the cauldron of soup off the top of her sister, as well say,\'.'),(26,207,3,'Quos sequi nulla ullam velit.','There was nothing so VERY much out of the sort. Next came an angry tone, \'Why, Mary Ann, and be turned out of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle.'),(63,89,4,'Cumque et ducimus sapiente veritatis laudantium hic et non.','Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back and see after some executions I have dropped them, I wonder?\' Alice guessed in a sorrowful tone; \'at least there\'s no use in.'),(58,276,4,'Totam ducimus quis odio cum.','Dormouse turned out, and, by the soldiers, who of course was, how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was terribly.'),(74,127,1,'Quas suscipit voluptatem nostrum perspiciatis porro.','Gryphon: and Alice looked at her, and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice. \'Why not?\' said the others. \'Are their heads down and began staring at.'),(96,232,4,'Voluptatem quia ab possimus sunt.','But there seemed to be no chance of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not, could not think of nothing.'),(41,233,4,'Error vitae porro nihil deserunt et facilis.','Alice remained looking thoughtfully at the bottom of a water-well,\' said the Gryphon: \'I went to school in the direction in which the wretched Hatter trembled so, that Alice had not as yet had any.');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int unsigned NOT NULL,
  `ROLE` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'actor'),(4,'art director'),(7,'cameraman'),(5,'composer'),(3,'director'),(6,'editor'),(1,'star');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Urban','Bruen','1975-10-23','West Maribelberg',NULL,'f'),(2,'Garth','Moore','1983-04-10','Dixieborough',NULL,'m'),(3,'Jeffry','Cummings','2019-03-22','New Sheridanmouth',NULL,'f'),(4,'Jayce','Bayer','2019-04-08','Prohaskamouth',NULL,'f'),(5,'Hardy','Jacobi','2012-08-12','Ryanburgh',NULL,'f'),(6,'Donnell','Hand','1998-11-02','New Maverickland',NULL,'m'),(7,'Albin','Anderson','2018-06-08','Port Christaton',NULL,'f'),(8,'Kaleigh','Spinka','1998-03-13','O\'Connerton',NULL,'f'),(9,'Kennith','Effertz','1999-03-11','Schoenmouth',NULL,'m'),(10,'Chelsey','Goldner','1992-04-03','Nameport',NULL,'f');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `name` varchar(255) DEFAULT 'User',
  `f_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mallory54@gmail.com','Beau','Dicki','1985-02-11'),(2,'mayer.susana@purdygraham.info','Eduardo','Lueilwitz','1972-03-08'),(3,'cassidy07@parker.net','Damian','Senger','2009-12-23'),(4,'botsford.ruthie@kuhic.com','Henry','Aufderhar','2009-12-07'),(5,'berniece68@schulist.com','Harrison','Lubowitz','1981-09-13'),(6,'johnnie47@yahoo.com','Dylan','Anderson','1985-07-12'),(7,'wbosco@mills.net','Rico','Leannon','1978-12-21'),(8,'oberbrunner.dora@swift.com','Enrique','Fisher','2013-04-05'),(9,'czieme@sanford.org','Felipa','Botsford','2008-05-04'),(10,'qnader@bogisichweber.biz','Arianna','Wilkinson','1992-06-22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `money`
--

/*!50001 DROP VIEW IF EXISTS `money`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `money` AS select `movie`.`name` AS `name`,`movie`.`budget` AS `budget`,`movie`.`grosses_usa` AS `grosses_usa`,`movie`.`grosses_all` AS `grosses_all`,((`movie`.`grosses_usa` + `movie`.`grosses_all`) - `movie`.`budget`) AS `profit` from `movie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movies_of_directors`
--

/*!50001 DROP VIEW IF EXISTS `movies_of_directors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movies_of_directors` AS select `staff`.`name` AS `name`,`staff`.`f_name` AS `f_name`,`movie`.`name` AS `movie_name` from (((`staff` join `movie_staff` on((`staff`.`staff_id` = `movie_staff`.`staff_id`))) join `movie` on((`movie_staff`.`movie_id` = `movie`.`id`))) join `roles` on((`movie_staff`.`role_id` = `roles`.`role_id`))) where (`roles`.`ROLE` = 'director') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-13 19:21:23
