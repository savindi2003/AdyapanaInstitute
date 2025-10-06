-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: adyapana_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin1','123'),(2,'admin2','12345678');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_has_class_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `states` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_has_class_id` (`student_has_class_id`),
  CONSTRAINT `student_has_class_id` FOREIGN KEY (`student_has_class_id`) REFERENCES `student_has_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (1,2,'2023-07-06','present'),(12,5,'2023-07-07','present'),(13,5,'2023-07-09','present'),(14,2,'2023-07-11','present'),(15,5,'2023-07-11','present');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `no` int NOT NULL AUTO_INCREMENT,
  `class_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `sub_no` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_id` int DEFAULT NULL,
  `teacher_no` int DEFAULT NULL,
  `fees` double DEFAULT NULL,
  `hall_id` int DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `fk_class_subject1_idx` (`sub_no`),
  KEY `date_id` (`date_id`),
  KEY `teacher_no` (`teacher_no`),
  KEY `hall_id` (`hall_id`),
  CONSTRAINT `date_id` FOREIGN KEY (`date_id`) REFERENCES `date` (`id`),
  CONSTRAINT `fk_class_subject1` FOREIGN KEY (`sub_no`) REFERENCES `subject` (`sub_no`),
  CONSTRAINT `hall_id` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`),
  CONSTRAINT `teacher_no` FOREIGN KEY (`teacher_no`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'BIO11','07:00:00','12:00:00',1,'Biology-2025',2,1,2100,1),(2,'CHE48','13:00:00','18:00:00',1,'Chemistry-2024_EN',2,2,2400,2),(3,'PHY77','17:11:36','17:11:37',2,'Physics-2025',5,1,1500,3),(4,'AGRI1','07:00:00','12:00:00',1,'Agriculture-2025',2,1,3100,4),(5,'BIO21','16:15:40','16:15:41',1,'Biology-2024',3,1,2000,1),(6,'CHE45','15:13:22','17:13:23',2,'Chemistry-2025',5,NULL,2900,1),(7,'CHE71','23:57:29','23:57:30',2,'Chemistry-2024',5,NULL,3000,1),(9,'PHY66','17:35:19','17:35:19',3,'Physics-2024',4,NULL,2500,4);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
INSERT INTO `date` VALUES (1,'Monday'),(2,'Tuesday'),(3,'Wednesday'),(4,'Thursday'),(5,'Friday'),(6,'Saturday'),(7,'Sunday');
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall`
--

LOCK TABLES `hall` WRITE;
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT INTO `hall` VALUES (1,'Hall 01 A'),(2,'Hall 01 B'),(3,'Hall 02 A'),(4,'Hall 02 B');
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `class_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `month_id` int DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `student_id` (`student_id`),
  KEY `month_id` (`month_id`),
  CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`no`),
  CONSTRAINT `month_id` FOREIGN KEY (`month_id`) REFERENCES `month` (`id`),
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (69,2100,'2023-07-10',1,1,1,'2023'),(70,2400,'2023-07-10',2,1,1,'2023'),(79,2100,'2023-07-10',1,2,1,'2023'),(80,2100,'2023-07-10',1,1,5,'2023'),(81,2100,'2023-07-11',1,2,7,'2023'),(82,2100,'2023-07-11',1,2,8,'2023'),(83,2100,'2023-07-11',1,1,7,'2023'),(84,2400,'2023-07-11',2,1,7,'2023'),(85,2100,'2023-07-11',1,1,8,'2023'),(86,2900,'2023-07-13',6,1,1,'2023'),(87,2900,'2023-08-10',6,1,12,'2023'),(88,2100,'2024-05-25',1,1,5,'2024'),(89,2100,'2025-09-28',1,1,1,'2025'),(90,2900,'2025-09-28',6,1,2,'2025'),(91,2400,'2025-09-28',2,1,3,'2025');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES (1,'January'),(2,'February'),(3,'March'),(4,'April'),(5,'May'),(6,'June'),(7,'July'),(8,'August'),(9,'September'),(10,'October'),(11,'November'),(12,'Desember');
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Mr.'),(2,'Miss');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `s_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  KEY `gender_id` (`gender_id`),
  CONSTRAINT `gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Samadhi Perera','32/D,Malwatta Para , Gampaha','2005-07-11','2025','200233344890','KCC','samadhi123@gmail.com','0775566543',2),(2,'Samadji Disanayake','34/D,Benadic Road,Minuwangoda','2005-07-11','2025','200455667654','AMC','sajamali22@gmail.com','0766677654',2),(3,'Dilanka Silva','77/9 , Kalavana , Awvita','2004-07-11','2024','2005778843122','NCC','dilankasilva44@gmail.com','0776655432',2),(4,'Nisal Sachinthana','54/D,Halawatha,Mathale','2005-07-11','2025','200378888987','HCC','nisal@gmail.com','0778899876',1),(5,'Amalka Kulathunge','55/D/8, Koswatta , Rathmalana','2005-07-11','2025','200467788765','NGC','amalthakule@gmail.com','0778899876',2),(6,'Hiranya Vithanage','34/D/H , Bestian Road , Gampha','2005-07-11','2025','200566677897','Royal Collage','hiranya2005@gmail.com','0776655432',1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_has_class`
--

DROP TABLE IF EXISTS `student_has_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_has_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`student_id`),
  KEY `class_no` (`class_id`),
  CONSTRAINT `class_no` FOREIGN KEY (`class_id`) REFERENCES `class` (`no`),
  CONSTRAINT `stu_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_has_class`
--

LOCK TABLES `student_has_class` WRITE;
/*!40000 ALTER TABLE `student_has_class` DISABLE KEYS */;
INSERT INTO `student_has_class` VALUES (2,1,1),(5,2,1),(11,3,1),(12,1,2),(13,1,6);
/*!40000 ALTER TABLE `student_has_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `sub_no` int NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sub_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Sinhala medium',2000,'Bialogy'),(2,'English Medium',2500,'Chemistry'),(3,'Sinhala Medium',2600,'Physics'),(4,'Sinhala Medium',2400,'Combined Maths'),(5,'Sinhala Medium',1800,'Agriculture'),(6,'Sinhala Medium',2000,'Information Technology'),(7,'English Medium',1500,'General English'),(8,'Sinahala Medium',2000,'GIT');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `t_no` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `sub_id` int DEFAULT NULL,
  `states_id` int DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_id` (`sub_id`),
  KEY `states_id` (`states_id`),
  KEY `gender_no` (`gender_id`),
  CONSTRAINT `states_id` FOREIGN KEY (`states_id`) REFERENCES `states` (`id`),
  CONSTRAINT `sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Shamalee Perera','12AS',' 88 / Palliyapara , Mathara','shamayalee44589@gmail.com','0778877659',1,2,2),(2,'Hirusgan Madushanka','12GH','99A,Hawlok Pedesa , Mawanella','hirushan@gmail.com','0778877876',2,1,1),(4,'Malanee Saparamadhu','67yh','55/H,Araliya Mawatha ,Wattala','malanee2176@gmail.com','0786655655',1,1,2),(5,'Chandima Perera','13YH','23/D,Palliyapara,Watuvana','chandima444@gmail.com','0776655678',1,2,2),(6,'Pradeep Balasuriya','15GY','23/D,HalawathaPara,Matahelgala','pradeep@gmail.com','0768877654',4,1,1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 13:42:35
