-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: lab_test2
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `Student_ID` text,
  `Module_ID` text,
  `CW_Grade` int DEFAULT NULL,
  `Exam_Grade` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('20211020','M00F05',65,70),('20211020','M13F07',55,62),('20211020','M10F04',67,77),('20211020','M12F01',45,61),('20212203','M12F03',39,53),('20212203','M14F08',37,55),('20212203','M12F01',61,56),('20208912','M14F08',71,64),('20208912','M17F09',54,70),('20208912','M10F04',57,46),('20208912','M12F01',66,73),('20213498','M00F05',58,63),('20213498','M13F07',54,70),('20213498','M16F02',52,55),('20201987','M12F01',51,53),('20201987','M12F03',47,50),('20201987','M14F08',55,65),('20201987','M17F09',53,68),('20201987','M10F04',72,58),('20212235','M14F08',55,58),('20212235','M16F02',83,77),('20212235','M17F09',71,67),('20212235','M10F04',45,66),('20212235','M00F05',59,50),('20211237','M13F07',48,72),('20211237','M00F05',50,62),('20211237','M16F02',81,68);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `Module_ID` text,
  `Title` text,
  `Lecturer` text,
  `CW_Weight` float DEFAULT NULL,
  `Exam_Weight` float DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `Semester` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES ('M12F01','Applied Statistics','20181667',0.2,0.8,2019,'Autumn'),('M12F03','Machinle Learning','20121787',0.5,0.5,2019,'Spring'),('M14F08','Generalised Regression Models','20179090',0.25,0.75,2019,'Autumn'),('M16F02','Accounting','20181667',0.2,0.8,2018,'Autumn'),('M17F09','Data at Scale','20167889',0.3,0.7,2019,'Autumn'),('M10F04','Business Analytics','20167889',0.4,0.6,2019,'Autumn'),('M13F07','Consumer Behaviour and Analytics','20129080',0.1,0.9,2019,'Spring'),('M00F05','Management Theories','20131888',0,1,2018,'Spring');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` text,
  `First_Name` text,
  `Last_Name` text,
  `Gender` text,
  `Department` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('20121787','Cocoa','Williams','Female','FoSE'),('20181667','Chris','Stuart','Male','FoB'),('20131888','Anderson','Sun','Male','FHSS'),('20129080','Maria','Wolters','Female','FoB'),('20167889','Xuebi','He','Female','FoB'),('20179090','Liwu','Song','Female','FoSE');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Student_ID` text,
  `First_Name` text,
  `Last_Name` text,
  `Gender` text,
  `DoB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('20211020','Bob','Li','Male','1996-01-31'),('20212203','Zetian','Zhang','Female','1997-08-23'),('20208912','Meili','Wang','Female','1996-09-22'),('20213498','Jasmine','Wang','Female','1995-04-17'),('20201987','Jack','Cai','Male','1996-05-25'),('20212235','Kaixin','Hao','Male','1996-09-11'),('20211237','Ma','Luo','Male','1994-09-11');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 15:29:42
