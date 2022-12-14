-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: eval_cinema
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrators` (
  `administrator_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`administrator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (1,'Gunner','Rowth'),(2,'Nertie','Lintott'),(3,'Eal','Kyncl'),(4,'Brande','Brabbins'),(5,'Angelica','Whardley');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_price_id` (`price_id`),
  CONSTRAINT `fk_price_id` FOREIGN KEY (`price_id`) REFERENCES `pricing` (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Demetre','Ferry','dferry0@comcast.net','XrDlM79jsV4c',NULL),(2,'Heida','McGairl','hmcgairl1@cdc.gov','AngDqCKTlYpf',NULL),(3,'Queenie','Ughetti','qughetti2@theguardian.com','S92eGQf0Ei8',NULL),(4,'Rossy','Cousans','rcousans3@zdnet.com','YRsOmNb',NULL),(5,'Alfonso','Kilian','akilian4@bluehost.com','bilfXITXHCZ',NULL),(6,'Jeffrey','Herley','jherley5@fda.gov','EtyYXYGm',NULL),(7,'Ludwig','Hyde','lhyde6@wufoo.com','O7h8HI7E',NULL),(8,'Latia','French','lfrench7@4shared.com','kJEukasLl',NULL),(9,'Giuseppe','Foucher','gfoucher8@trellian.com','0FqZyE',NULL),(10,'Farly','Diter','fditer9@digg.com','8W6lzDqnAj',NULL),(11,'Jude','Gossart','jgossarta@phoca.cz','DHdXfIN4e',NULL),(12,'Doralin','MacNalley','dmacnalleyb@blogtalkradio.com','K8y3MQvCyzp',NULL),(13,'Hanson','Yarnall','hyarnallc@skyrock.com','o1CUREqY',NULL),(14,'Britt','Scarlett','bscarlettd@topsy.com','9jzCOFq',NULL),(15,'Tiffani','Lightwing','tlightwinge@cmu.edu','DhZtFw2r59',NULL),(16,'Egbert','Du Fray','edufrayf@shinystat.com','YrWkY4',NULL),(17,'Boniface','Puddan','bpuddang@utexas.edu','o7CXly',NULL),(18,'Wallace','Scutter','wscutterh@netvibes.com','IEbHqQH',NULL),(19,'Heddie','Duligall','hduligalli@jiathis.com','JipuuKc',NULL),(20,'Martainn','Yarranton','myarrantonj@blogger.com','L8s2JrSycI',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing` (
  `price_id` int NOT NULL AUTO_INCREMENT,
  `regular` varchar(30) DEFAULT NULL,
  `student` varchar(30) DEFAULT NULL,
  `less_than_14_years_old` varchar(30) DEFAULT NULL,
  `online_payment` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
INSERT INTO `pricing` VALUES (1,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(2,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(3,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(4,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(5,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(6,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(7,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(8,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(9,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(10,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(11,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(12,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(13,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(14,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(15,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(16,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(17,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(18,'Ôé¼15,00','Ôé¼10,00','$7.00',0),(19,'Ôé¼15,00','Ôé¼10,00','$7.00',1),(20,'Ôé¼15,00','Ôé¼10,00','$7.00',0);
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `number_of_place` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,180),(2,178),(3,158),(4,169),(5,169),(6,150),(7,187),(8,185),(9,175),(10,168),(11,190),(12,188),(13,186),(14,151),(15,200),(16,183),(17,176),(18,196),(19,162),(20,182);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showing`
--

DROP TABLE IF EXISTS `showing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showing` (
  `showing_id` int NOT NULL AUTO_INCREMENT,
  `movie` varchar(30) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`showing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showing`
--

LOCK TABLES `showing` WRITE;
/*!40000 ALTER TABLE `showing` DISABLE KEYS */;
INSERT INTO `showing` VALUES (1,'Pride of St. Louis, The','Drama'),(2,'Out of Balance: ExxonMobil\'s I','Documentary'),(3,'Mona and the Time of Burning L','Drama'),(4,'Blood Diamond','Action|Adventure|Crime|Drama|T'),(5,'Saint Joan','Drama'),(6,'Tall T, The','Western'),(7,'10.000 Km (Long Distance)','Drama|Romance'),(8,'Tamara','Fantasy|Horror|Thriller'),(9,'Unforgiven, The','Drama|Western'),(10,'Captain America: The Winter So','Action|Adventure|Sci-Fi|IMAX'),(11,'Creeping Flesh, The','Horror|Sci-Fi'),(12,'Dial M for Murder','Crime|Mystery|Thriller'),(13,'Beneath the Planet of the Apes','Action|Sci-Fi'),(14,'Christmas Carol, A','Drama|Fantasy'),(15,'My Brother\'s Wife (Mujer de mi','Drama'),(16,'Moscow on the Hudson','Comedy|Drama'),(17,'Sitting Pretty','Comedy'),(18,'Alice Doesn\'t Live Here Anymor','Drama|Romance'),(19,'Oh, Susanna!','Romance|Western'),(20,'Beneath the Darkness','Thriller');
/*!40000 ALTER TABLE `showing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showing_theaters`
--

DROP TABLE IF EXISTS `showing_theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showing_theaters` (
  `theater_id` int DEFAULT NULL,
  `showing_id` int DEFAULT NULL,
  `projection_date` varchar(30) DEFAULT NULL,
  KEY `fk_theater_id` (`theater_id`),
  KEY `fk_showing_id` (`showing_id`),
  CONSTRAINT `fk_showing_id` FOREIGN KEY (`showing_id`) REFERENCES `showing` (`showing_id`),
  CONSTRAINT `fk_theater_id` FOREIGN KEY (`theater_id`) REFERENCES `theaters` (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showing_theaters`
--

LOCK TABLES `showing_theaters` WRITE;
/*!40000 ALTER TABLE `showing_theaters` DISABLE KEYS */;
INSERT INTO `showing_theaters` VALUES (NULL,NULL,'3/21/2022'),(NULL,NULL,'3/18/2022'),(NULL,NULL,'8/19/2022'),(NULL,NULL,'4/24/2022'),(NULL,NULL,'7/27/2022'),(NULL,NULL,'11/30/2021'),(NULL,NULL,'9/23/2022'),(NULL,NULL,'5/5/2022'),(NULL,NULL,'9/23/2022'),(NULL,NULL,'2/17/2022'),(NULL,NULL,'3/18/2022'),(NULL,NULL,'8/11/2022'),(NULL,NULL,'10/26/2022'),(NULL,NULL,'1/20/2022'),(NULL,NULL,'2/14/2022'),(NULL,NULL,'7/26/2022'),(NULL,NULL,'5/1/2022'),(NULL,NULL,'7/8/2022'),(NULL,NULL,'10/16/2022'),(NULL,NULL,'11/17/2022');
/*!40000 ALTER TABLE `showing_theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaters` (
  `theater_id` int NOT NULL AUTO_INCREMENT,
  `adress` text,
  `administrator_id` int DEFAULT NULL,
  PRIMARY KEY (`theater_id`),
  KEY `fk_administrator_id` (`administrator_id`),
  CONSTRAINT `fk_administrator_id` FOREIGN KEY (`administrator_id`) REFERENCES `administrators` (`administrator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,'sed interdum venenatis turpis enim',NULL),(2,'pede ullamcorper augue a',NULL),(3,'nullam orci pede venenatis',NULL),(4,'felis sed interdum venenatis turpis',NULL),(5,'vestibulum sed magna at nunc',NULL);
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-01 11:32:48
