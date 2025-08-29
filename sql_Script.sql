CREATE DATABASE  IF NOT EXISTS `silver` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `silver`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: silver
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountId` varchar(45) NOT NULL,
  `accountName` varchar(45) NOT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('A1001','Smith Enterprises'),('A1002','Johnson Family'),('A1003','Global Tech Solutions'),('A1004','Baker & Co.'),('A1005','Mountainview Realty'),('A1006','Lee\'s Cafe'),('A1007','Patel Enterprises'),('A1008','Green Thumb Inc.'),('A1009','Muller GmbH'),('A1010','Smith & Co. Ltd.'),('A1011','Lopez Enterprises'),('A1012','Chen Holdings'),('A1013','Brown Ltd.'),('A1014','Rossi Inc.'),('A1015','Silva Empreendimentos'),('A1016','Dubois SARL'),('A1017','Lee Electronics'),('A1018','Munoz & Partners'),('A1019','Tanaka Co.'),('A1020','Petersen Ltd.'),('A1021','Weber GmbH'),('A1022','Johansson AB'),('A1023','Moreno S.A.'),('A1024','Klein & Co.'),('A1025','van der Meer'),('A1026','Kim Ltd.'),('A1027','Andersen & Sons'),('A1028','Simon Holdings'),('A1029','Nguyen Enterprises'),('A1030','Rossi & Partners'),('ï»¿accountId','accountName');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_customertype`
--

DROP TABLE IF EXISTS `c_customertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_customertype` (
  `c_customerTypeId` int NOT NULL,
  `customerTypeCode` varchar(10) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  PRIMARY KEY (`c_customerTypeId`),
  KEY `customerTypeCode` (`customerTypeCode`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `c_customertype_ibfk_1` FOREIGN KEY (`customerTypeCode`) REFERENCES `customertype` (`customerTypeCode`),
  CONSTRAINT `c_customertype_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_customertype`
--

LOCK TABLES `c_customertype` WRITE;
/*!40000 ALTER TABLE `c_customertype` DISABLE KEYS */;
INSERT INTO `c_customertype` VALUES (1,'P',10000),(2,'N',10000),(3,'P',10001),(4,'P',10002),(5,'P',10003),(6,'S',10008),(7,'S',10008),(8,'N',10009),(9,'P',10009),(10,'P',10010),(11,'P',10012),(12,'S',10012),(13,'N',10012),(14,'P',10013),(15,'P',10014),(16,'P',10015),(17,'P',10016),(18,'P',10017),(19,'P',10018),(20,'P',10019),(21,'P',10020),(22,'P',10021),(23,'P',10022),(24,'P',10023),(25,'BS',15001),(26,'P',15002),(27,'S',15002),(28,'BS',15003),(29,'BS',15004),(30,'BS',15005),(31,'BS',15006),(32,'BS',15007),(33,'BS',15008),(34,'BS',15009),(35,'BS',15010),(36,'BS',15011),(37,'BS',15012),(38,'BS',15013),(39,'BS',15014),(40,'BS',15015),(41,'BS',15016),(42,'BS',15017),(43,'BS',15018),(44,'BS',15019),(45,'BS',15020),(46,'BS',15021),(47,'BS',15022),(48,'BS',15023),(49,'BS',15024),(50,'P',15025),(51,'BS',15026),(52,'BS',15027),(53,'BS',15028),(54,'BS',15029),(55,'BS',15030),(56,'P',150031),(57,'S',150031),(58,'P',150032),(59,'P',150033);
/*!40000 ALTER TABLE `c_customertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `channelId` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`channelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (101,'AOL','AOL specific email','2000-04-03','2004-10-14','Suspended'),(102,'Email','HTML based email','2001-03-02',NULL,'Active'),(103,'HV Call','High value customer call','2003-08-18','2004-03-14','Suspended'),(104,'Post','Postal correspondence','2000-09-09',NULL,'Active'),(105,'RSS','RSS feed','2003-04-06',NULL,'Active'),(106,'Telephone','Call center','2004-08-16',NULL,'Active');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerId` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `buildingNumber` varchar(255) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `personalPhone` varchar(30) DEFAULT NULL,
  `workPhone` varchar(30) DEFAULT NULL,
  `occupation_Code` int DEFAULT NULL,
  `incomeId` int DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL,
  `statusCode` varchar(5) DEFAULT NULL,
  `permissionCode` varchar(20) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  KEY `postalCode` (`postalCode`),
  KEY `statusCode` (`statusCode`),
  KEY `occupation_Code` (`occupation_Code`),
  KEY `permissionCode` (`permissionCode`),
  KEY `incomeId` (`incomeId`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`postalCode`) REFERENCES `postalcode` (`postalCode`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`statusCode`) REFERENCES `customerstatus` (`statusCode`),
  CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`occupation_Code`) REFERENCES `occupation` (`occupation_code`),
  CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`permissionCode`) REFERENCES `permission` (`permissionCode`),
  CONSTRAINT `customer_ibfk_5` FOREIGN KEY (`incomeId`) REFERENCES `incomerange` (`incomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1000,'John Doe','M',NULL,NULL,'123 Elm St','Apt 4B','62701',NULL,NULL,NULL,NULL,'2024-08-01',NULL,NULL,NULL),(10000,'Jamar Cherise','M','jamar.cherise@domainname61','1958-03-10','8 StreetName915','Address938','10010','+1-212-555-1234','+1-212-555-8234',26,10,'1999-01-26','S','A','2024-10-16'),(10001,'Claudine Charlie','M','claudine.charlie@domainname403','1987-10-19','1 StreetName57','Address743','28012','+34-91-551-2989','+34-91-555-6789',9,3,'1999-01-26','A','A','2024-10-16'),(10002,'Paolina Clothilde','M','paolina.clothilde@domainname613','1987-12-23','47 StreetName998','Address112','20121','+39-02-555-9876','+39-02-566-5467',74,11,'1999-01-26','C','A','2024-10-16'),(10003,'Yutong Li','F','yli888@domainname602','1983-01-09','44 StreetName512','Address816','100000','+86-138-5555-1234','+86-10-5555-1234',19,7,'1999-01-26','A','A','2024-10-16'),(10008,'Angele Carnation','F','angele.carnation@domainname639','1975-01-02','72 StreetName565','Address57','3292','+27-11-555-6789',NULL,60,9,'1999-01-26','A','A','2024-10-16'),(10009,'Chloe Nicoletta','M','chloe.nicoletta@domainname683','1978-12-08','43 StreetName142','Address149','2158','+61-2-5555-1234',NULL,59,5,'1999-01-26','A','A','2024-10-16'),(10010,'Nicolina Luigia','F','nicolina.luigia@domainname688','1937-03-21','63 StreetName219','Address206','5385','+33-1-5555-6789','+33-1-5555-1123',46,5,'1999-01-26','S','A','2024-10-16'),(10012,'Deni Hudd','M','deni.hudd@domainname252','1969-10-02','21 StreetName131','Address286','80331',NULL,'+49-89-555-9876',59,9,'1999-01-26','A','A','2024-10-16'),(10013,'Bernardine Avril','O','bernardine.avril@domainname442','1951-08-27','18 StreetName389','Address875','90001','+1-310-555-4321',NULL,34,9,'1999-01-26','C','A','2024-10-16'),(10014,'Roger Miles','M','roger.miles@domainname502','1965-07-14','102 StreetName','Address542','2115','6175551234',NULL,141,7,'2001-06-01','A','A','2024-10-16'),(10015,'Sylvia Jordan','F','sylvia.jordan@domainname345','1980-04-29','211 StreetName','Address111','60616','+1-415-555-6789','3125558765',131,5,'2002-07-15','S','B','2024-10-16'),(10016,'Johnathan Reyes','M','johnathan.reyes@domainname784','1990-11-22','324 StreetName','Address305','M5A 1A1','4165553344',NULL,1,5,'2003-02-20','A','A','2024-10-16'),(10017,'Lucia Martinez','F','lucia.martinez@domainname611','1967-08-30','567 StreetName','Address459','28001','+34-91-554-1425',NULL,121,5,'2004-11-09','S','A','2024-10-16'),(10018,'Philip White','M','philip.white@domainname290','1982-01-19','678 StreetName','Address222','SW1A 1AA','2079460000',NULL,21,4,'2005-03-25','A','B','2024-10-16'),(10019,'Amira Khan','F','amira.khan@domainname824','1985-12-11','789 StreetName','Address387','1','9715552345',NULL,12,7,'2006-09-05','S','A','2024-10-16'),(10020,'Tara Lee','F','tara.lee@domainname983','1972-06-03','890 StreetName','Address921','90001','3105554321',NULL,103,11,'2007-04-17','A','B','2024-10-16'),(10021,'Eduardo Gonzalez','M','eduardo.gonzalez@domainname354','1978-10-09','101 StreetName','Address843','1000','5411559876',NULL,8,5,'2008-08-22','S','A','2024-10-16'),(10022,'Isabelle Dupont',NULL,'isabelle.dupont@domainname444','1991-02-16','345 StreetName','Address678','69000','478556789',NULL,54,3,'2009-11-14','A','A','2024-10-16'),(10023,'Neil Armstrong','M','neil.armstrong@domainname678','1964-05-25','456 StreetName','Address222','77001','7135556789',NULL,111,6,'2010-06-30','S','B','2024-10-16'),(15001,'John Smith','M','john.smith@example.com','1980-01-15','123 Elm St','Suite 456','62701','+1-217-555-1234',NULL,NULL,14,'2020-08-21','A','A','2024-10-16'),(15002,'Emily Johnson','F','johnsonfamily@example.com','1992-03-22','456 Oak Rd','Apt 789','1834','+1-413-555-5678',NULL,14,NULL,'2020-08-21','A','A','2024-10-16'),(15003,'Michael Brown','M','michael.brown@example.com','1985-07-08','789 Pine Ave','Floor 3','94043',NULL,'+1-650-555-9876',NULL,NULL,'2020-08-21','A','A','2024-10-16'),(15004,'Jessica Davis','F','jessica.davis@example.com','1978-09-13','321 Maple St','P.O. Box 123','10001','+1-212-555-4321',NULL,NULL,NULL,'2020-08-21','A','A','2024-10-16'),(15005,'David Wilson','M','david.wilson@example.com','1983-05-19','654 Birch Blvd','Suite 200','80301',NULL,'+1-303-555-6789',NULL,NULL,'2020-08-21','A','A','2024-10-16'),(15006,'Sarah Lee','F','sarah.lee@example.com','1990-11-30','987 Cedar St',NULL,'97201','+1-503-555-3456',NULL,NULL,NULL,'2020-08-21','A','A','2024-10-16'),(15007,'Chris Patel','M','chris.patel@example.com','1988-06-25','135 Spruce Dr',NULL,'98101','+1-206-555-7890',NULL,NULL,NULL,'2020-08-22','A','A','2024-10-16'),(15008,'Lisa Miller',NULL,'lisa.miller@example.com','1984-12-11','246 Fir Ln','Unit 10','80203',NULL,'+1-720-555-4567',NULL,NULL,'2020-08-22','A','A','2024-10-16'),(15009,'Hans MÃ¼ller','M','hans.mueller@example.com','1975-10-02','HauptstraÃŸe 15',NULL,'10115','+49-30-555-1234',NULL,NULL,NULL,'2020-08-22','A','A','2024-10-16'),(15010,'Elizabeth Brown','F','elizabeth.brown@example.com','1982-04-20','10 Downing St',NULL,'SW1A 2AA',NULL,'+44-20-7946-958',NULL,NULL,'2020-08-23','A','A','2024-10-16'),(15011,'Alejandro Gomez','M','alejandro.gomez@example.com','1993-08-16','44 Avenida de la Paz','Suite 1501','28001','+34-91-555-7890',NULL,NULL,NULL,'2020-08-23','A','A','2024-10-16'),(15012,'Mei Chen','F','mei.chen@example.com','1987-02-14','88 Nanjing Rd W','5th Floor','200000',NULL,'+86-21-555-1234',NULL,NULL,'2020-08-23','A','A','2024-10-16'),(15013,'John Roberts','O','john.roberts@example.com','1991-07-24','22 King St','3rd Floor',NULL,'+61-2-5555-1234',NULL,NULL,NULL,'2020-08-24','A','A','2024-10-16'),(15014,'Maria Rossi','F','maria.rossi@example.com','1986-12-05','Via Roma 10',NULL,'100','+39-6-555-6789',NULL,NULL,NULL,'2020-08-24','A','A','2024-10-16'),(15015,'Carlos Silva','M','carlos.silva@example.com','1995-03-30','Rua das Flores 20','Apt 404','01234-567','+55-11-5555-4321',NULL,NULL,NULL,'2020-08-25','A','A','2024-10-16'),(15016,'Claire Dubois','F','claire.dubois@example.com','1984-11-03','14 Rue de Rivoli',NULL,'75001',NULL,'+33-1-555-1234',NULL,NULL,'2020-08-25','A','A','2024-10-16'),(15017,'Jiho Kim','M','jiho.kim@example.com','1990-09-09','345 Seoul St','Suite 200','4520','+82-2-555-6789',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15018,'Sophie Dupont','F','sophie.dupont@example.com','1989-06-17','12 Av. de la LibertÃ©',NULL,'1234',NULL,'+352-20-555-1234',NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15019,'Taro Yamamoto','M','taro.yamamoto@example.com','1992-01-23','7-5-3 Roppongi',NULL,'106-0032','+81-3-5555-1234',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15020,'Anna Johansson','F','anna.johansson@example.com','1987-10-11','22 StrandvÃ¤gen','Apt 101','114 45','+46-8-555-6789',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15021,'Matthias Weber','M','matthias.weber@example.com','1981-04-27','SchillerstraÃŸe 25',NULL,'80336',NULL,'+49-89-555-6789',NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15022,'Ingrid Lund','F','ingrid.lund@example.com','1994-08-22','Drottninggatan 32',NULL,'411 14','+46-31-555-7890',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15023,'Diego Moreno','M','diego.moreno@example.com','1989-05-30','Avenida Libertador 123','5th Floor','C1001 AAF',NULL,'+54-11-5555-1234',NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15024,'Nadia Tan','F','nadia.tan@example.com','1991-12-15','56 Jalan Bukit Bintang',NULL,'55100','+60-3-555-1234',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15025,'Emma van der Meer','F','emma.vandermeer@example.com','1983-07-19','22 Keizersgracht','Apt 3B','1016 DR',NULL,'+31-20-555-6789',NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15026,'Thao Nguyen','F','thao.nguyen@example.com','1993-09-30','100 Ho Chi Minh Blvd','4th Floor','700000','+84-28-555-1234',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15027,'Samuel Petersen','M','samuel.petersen@example.com','1986-11-04','77 Cato St','Suite 101',NULL,'+27-11-555-6789',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15028,'Akira Tanaka','M','akira.tanaka@example.com','1988-12-12','6-1-1 Nishi-Shinjuku',NULL,'160-0023','+81-3-555-6789',NULL,NULL,NULL,'2020-08-26','A','A','2024-10-16'),(15029,'Linh Nguyen','F','linh.nguyen@example.com','1992-02-28','45 Le Lai','Apt 202','700000',NULL,'+84-28-555-6789',NULL,NULL,'2020-08-27','A','A','2024-10-16'),(15030,'Luca Rossi','M','luca.rossi@example.com','1983-06-20','Via Nazionale 22',NULL,'20124','+39-2-555-1234',NULL,NULL,NULL,'2020-08-27','A','A','2024-10-16'),(150031,'Mark Johnson','M','johnsonfamily@example.com','1991-03-31','456 Oak Rd','Apt 789','1834','+1-413-555-5678',NULL,NULL,NULL,'2020-08-27','A','A','2024-10-16'),(150032,'Pieter van der Meer','M','p.vandermeer@example.com','1983-03-13','22 Keizersgracht','Apt 3B','1016 DR',NULL,NULL,NULL,NULL,'2020-08-27','A','A','2024-10-16'),(150033,'Greta van der Meer','F','g.vandermeer@example.com','2004-12-14','22 Keizersgracht','Apt 3B','1016 DR',NULL,NULL,NULL,NULL,'2020-08-27','A','A','2024-10-16');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraccount`
--

DROP TABLE IF EXISTS `customeraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraccount` (
  `customerAccountId` int NOT NULL,
  `accountId` varchar(20) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  PRIMARY KEY (`customerAccountId`),
  KEY `customerId` (`customerId`),
  KEY `accountId` (`accountId`),
  CONSTRAINT `customeraccount_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `customeraccount_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraccount`
--

LOCK TABLES `customeraccount` WRITE;
/*!40000 ALTER TABLE `customeraccount` DISABLE KEYS */;
INSERT INTO `customeraccount` VALUES (1,'A1001',15001),(2,'A1002',15002),(3,'A1003',15003),(4,'A1004',15004),(5,'A1005',15005),(6,'A1006',15006),(7,'A1007',15007),(8,'A1008',15008),(9,'A1009',15009),(10,'A1010',15010),(11,'A1011',15011),(12,'A1012',15012),(13,'A1013',15013),(14,'A1014',15014),(15,'A1015',15015),(16,'A1016',15016),(17,'A1017',15017),(18,'A1018',15018),(19,'A1019',15019),(20,'A1020',15020),(21,'A1021',15021),(22,'A1022',15022),(23,'A1023',15023),(24,'A1024',15024),(25,'A1025',15025),(26,'A1026',15026),(27,'A1027',15027),(28,'A1028',15028),(29,'A1029',15029),(30,'A1030',15030),(31,'A1002',150031),(32,'A1025',150032),(33,'A1025',150033);
/*!40000 ALTER TABLE `customeraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerinterest`
--

DROP TABLE IF EXISTS `customerinterest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinterest` (
  `customerInterestId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `interestId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customerInterestId`),
  KEY `customerId` (`customerId`),
  KEY `interestId` (`interestId`),
  CONSTRAINT `customerinterest_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `customerinterest_ibfk_2` FOREIGN KEY (`interestId`) REFERENCES `interest` (`interestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinterest`
--

LOCK TABLES `customerinterest` WRITE;
/*!40000 ALTER TABLE `customerinterest` DISABLE KEYS */;
INSERT INTO `customerinterest` VALUES (1,10000,'B11'),(2,10001,'D1'),(3,10002,'F6'),(4,10003,'B17'),(5,10008,'F4'),(6,10009,'M7'),(7,10010,'M1'),(8,10012,'F3'),(9,10013,'B3'),(10,10014,'B1'),(11,10015,'F5'),(12,10016,'B22'),(13,10017,'B1'),(14,10018,'M2'),(15,10019,'B24'),(16,10020,'B25'),(17,10021,'F5'),(18,10022,'B6'),(19,10023,'B21'),(20,15002,'B1'),(21,10000,'B14'),(22,10001,'M8'),(23,10002,'B8'),(24,10003,'B20'),(25,10008,'B15'),(26,10009,'B18'),(27,10010,'B7'),(28,10012,'B13'),(29,10013,'M4'),(30,10014,'F5'),(31,10015,'B6'),(32,10016,'F8'),(33,10017,'B6'),(34,10018,'B20'),(35,10019,'B20'),(36,10020,'F3'),(37,10021,'B22'),(38,10022,'B20'),(39,10023,'D2'),(40,15002,'B20'),(41,10000,'F3'),(42,10001,'F5'),(43,10002,'M3'),(44,10003,NULL),(45,10008,'B7'),(46,10009,'B2'),(47,10010,'M9'),(48,10012,'B18'),(49,10013,'F7'),(50,10014,'B20'),(51,10015,'B25'),(52,10016,'B20'),(53,10017,'B20'),(54,10018,'F5'),(55,10019,'B23'),(56,10020,'M2'),(57,10021,'B1'),(58,10022,'B1'),(59,10023,'B1'),(60,15002,NULL);
/*!40000 ALTER TABLE `customerinterest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpoint`
--

DROP TABLE IF EXISTS `customerpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpoint` (
  `pointsId` int NOT NULL DEFAULT '0',
  `customerId` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pointsId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `customerpoint_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpoint`
--

LOCK TABLES `customerpoint` WRITE;
/*!40000 ALTER TABLE `customerpoint` DISABLE KEYS */;
INSERT INTO `customerpoint` VALUES (1,10015,510,'2024-10-16 00:25:46'),(2,10009,690,'2024-10-16 00:25:46'),(3,10010,588,'2024-10-16 00:25:46'),(5,10012,230,'2024-10-16 00:25:46'),(6,10013,210,'2024-10-16 00:25:46'),(7,10014,560,'2024-10-16 00:25:46'),(8,15001,310,'2024-10-16 00:35:58');
/*!40000 ALTER TABLE `customerpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpreferredchannel`
--

DROP TABLE IF EXISTS `customerpreferredchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpreferredchannel` (
  `customerPreferredChannelId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `channelId` int DEFAULT NULL,
  PRIMARY KEY (`customerPreferredChannelId`),
  KEY `customerId` (`customerId`),
  KEY `channelId` (`channelId`),
  CONSTRAINT `customerpreferredchannel_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `customerpreferredchannel_ibfk_2` FOREIGN KEY (`channelId`) REFERENCES `channel` (`channelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpreferredchannel`
--

LOCK TABLES `customerpreferredchannel` WRITE;
/*!40000 ALTER TABLE `customerpreferredchannel` DISABLE KEYS */;
INSERT INTO `customerpreferredchannel` VALUES (1,10000,102),(2,10001,102),(3,10002,102),(4,10003,102),(5,10008,102),(6,10009,102),(7,10010,102),(8,10012,102),(9,10013,102),(10,10014,102),(11,10015,106),(12,10016,102),(13,10017,102),(14,10018,106),(15,10019,106),(16,10020,102),(17,10021,102),(18,10022,106),(19,10023,106),(20,15001,102),(21,15002,102),(22,15003,102),(23,15004,102),(24,15005,102),(25,15006,102),(26,15007,102),(27,15008,102),(28,15009,102),(29,15010,102),(30,15011,102),(31,15012,102),(32,15013,102),(33,15014,102),(34,15015,102),(35,15016,102),(36,15017,102),(37,15018,102),(38,15019,102),(39,15020,102),(40,15021,102),(41,15022,102),(42,15023,102),(43,15024,102),(44,15025,102),(45,15026,102),(46,15027,102),(47,15028,102),(48,15029,102),(49,15030,102),(50,150031,102),(51,150032,102),(52,150033,102),(53,10000,106),(54,10001,106),(55,10002,106),(56,10003,106),(57,10008,106),(58,10009,106),(59,10010,106),(60,10012,106),(61,10013,106),(62,10014,106),(63,10015,102),(64,10016,106),(65,10017,104),(66,10018,102),(67,10019,102),(68,10020,104),(69,10021,106),(70,10022,102),(71,10023,102),(72,15001,104),(73,15002,104),(74,15003,104),(75,15004,104),(76,15005,104),(77,15006,104),(78,15007,104),(79,15008,104),(80,15009,104),(81,15010,104),(82,15011,104),(83,15012,104),(84,15013,104),(85,15014,104),(86,15015,104),(87,15016,104),(88,15017,104),(89,15018,104),(90,15019,104),(91,15020,104),(92,15021,104),(93,15022,104),(94,15023,104),(95,15024,104),(96,15025,104),(97,15026,104),(98,15027,104),(99,15028,104),(100,15029,104),(101,15030,104),(102,150031,104),(103,150032,104),(104,150033,104);
/*!40000 ALTER TABLE `customerpreferredchannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerstatus`
--

DROP TABLE IF EXISTS `customerstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerstatus` (
  `statusCode` varchar(5) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerstatus`
--

LOCK TABLES `customerstatus` WRITE;
/*!40000 ALTER TABLE `customerstatus` DISABLE KEYS */;
INSERT INTO `customerstatus` VALUES ('',''),('A','Active'),('C','Closed'),('OH','On Hold'),('S','Suspended');
/*!40000 ALTER TABLE `customerstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customertype`
--

DROP TABLE IF EXISTS `customertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customertype` (
  `customerTypeCode` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerTypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertype`
--

LOCK TABLES `customertype` WRITE;
/*!40000 ALTER TABLE `customertype` DISABLE KEYS */;
INSERT INTO `customertype` VALUES ('',''),('BS','Business Subscriber'),('ï»¿customerTypeCode','description'),('N','Newsletter'),('P','Purchaser'),('S','Subscriber');
/*!40000 ALTER TABLE `customertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custorder`
--

DROP TABLE IF EXISTS `custorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custorder` (
  `orderId` int NOT NULL,
  `storeId` varchar(20) DEFAULT NULL,
  `storeName` varchar(100) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `currencyId` varchar(10) DEFAULT NULL,
  `saleAdjustmentCode1` varchar(10) DEFAULT NULL,
  `saleAdjustmentCode2` varchar(10) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `orderAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `storeId` (`storeId`,`storeName`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `custorder_ibfk_1` FOREIGN KEY (`storeId`, `storeName`) REFERENCES `store` (`storeId`, `storeName`),
  CONSTRAINT `custorder_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custorder`
--

LOCK TABLES `custorder` WRITE;
/*!40000 ALTER TABLE `custorder` DISABLE KEYS */;
INSERT INTO `custorder` VALUES (1001,'S001','Online Store US 1','2024-08-01',1000,'USD','ADJ001','ADJ002','2024-08-01',30.99),(1002,'S001','Online Store AU 1','2024-08-01',10009,'AUD','ADJ003','ADJ005','2024-08-02',68.97),(1003,'S001','Online Store FR 1','2024-08-01',10010,'EUR','ADJ005',NULL,'2024-08-03',58.75),(1004,'S001','Online Store DE 1','2024-08-01',10012,'AUD','ADJ007','ADJ008','2024-08-04',22.99),(1005,'S001','Online Store US 1','2024-08-01',10013,'USD','ADJ001','ADJ004','2024-08-05',20.99),(1006,'S002','Store US 1','2024-08-01',10014,'USD','ADJ001',NULL,'2024-08-01',56.00);
/*!40000 ALTER TABLE `custorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_order_insert` AFTER INSERT ON `custorder` FOR EACH ROW BEGIN
DECLARE newPoints INT DEFAULT 0;
SET newPoints = NEW.orderAmount * 10;

UPDATE customerPoint
SET points = points + newPoints, updateDate = NOW()
WHERE customerId = NEW.customerId;

IF ROW_COUNT() = 0 THEN
INSERT INTO customerPoint (customerId, points, updateDate)
VALUES (NEW.customerId, newPoints, NOW());
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `archive_order_before_update` BEFORE UPDATE ON `custorder` FOR EACH ROW BEGIN
    INSERT INTO custOrder_history (
        orderId, storeId, storeName, orderDate, customerId, currencyId,
        saleAdjustmentCode1, saleAdjustmentCode2, updateDate, orderAmount
    )
    VALUES (
        OLD.orderId, OLD.storeId, OLD.storeName, OLD.orderDate, OLD.customerId, OLD.currencyId,
        OLD.saleAdjustmentCode1, OLD.saleAdjustmentCode2, OLD.updateDate, OLD.orderAmount
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `custorder_history`
--

DROP TABLE IF EXISTS `custorder_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custorder_history` (
  `orderId` int NOT NULL,
  `storeId` varchar(20) DEFAULT NULL,
  `storeName` varchar(100) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `currencyId` varchar(10) DEFAULT NULL,
  `saleAdjustmentCode1` varchar(10) DEFAULT NULL,
  `saleAdjustmentCode2` varchar(10) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `orderAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  CONSTRAINT `custorder_history_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `custorder` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custorder_history`
--

LOCK TABLES `custorder_history` WRITE;
/*!40000 ALTER TABLE `custorder_history` DISABLE KEYS */;
INSERT INTO `custorder_history` VALUES (1003,'S001','Online Store FR 1','2024-08-01',10010,'EUR','ADJ005','','2024-08-03',58.75),(1006,'S002','Store US 1','2024-08-01',10014,'USD','ADJ001','','2024-08-01',56.00);
/*!40000 ALTER TABLE `custorder_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custorderproduct`
--

DROP TABLE IF EXISTS `custorderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custorderproduct` (
  `custorderProductId` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `productId` varchar(10) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `orderQty` int DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`custorderProductId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`,`effectiveDate`),
  CONSTRAINT `custorderproduct_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `custorder` (`orderId`),
  CONSTRAINT `custorderproduct_ibfk_2` FOREIGN KEY (`productId`, `effectiveDate`) REFERENCES `product` (`productId`, `effectiveDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custorderproduct`
--

LOCK TABLES `custorderproduct` WRITE;
/*!40000 ALTER TABLE `custorderproduct` DISABLE KEYS */;
INSERT INTO `custorderproduct` VALUES (10000,1001,'M001','2024-08-01',1,20.99),(10001,1001,'M002','2024-08-01',1,10.00),(10002,1002,'A002','2024-08-01',3,22.99),(10003,1003,'A002','2024-08-01',5,11.75),(10004,1004,'A002','2024-08-01',1,22.99),(10005,1005,'F002','2024-08-01',1,20.99),(10006,1006,'M001','2024-08-01',1,20.00),(10007,1006,'F001','2024-08-01',1,21.00),(10008,1006,'F002','2024-08-01',1,15.00);
/*!40000 ALTER TABLE `custorderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `deliveryId` int NOT NULL,
  `custorderProductId` int DEFAULT NULL,
  `deliveryType` varchar(20) DEFAULT NULL,
  `deliveryName` varchar(100) DEFAULT NULL,
  `deliveryAddressLine1` varchar(255) DEFAULT NULL,
  `deliveryAddressLine2` varchar(255) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `deliveryInstructions` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  KEY `postalCode` (`postalCode`),
  KEY `custorderProductId` (`custorderProductId`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`postalCode`) REFERENCES `postalcode` (`postalCode`),
  CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`custorderProductId`) REFERENCES `custorderproduct` (`custorderProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,10000,'Standard','John Doe','123 Elm St','Apt 4B','62701','Leave at front door','confirmed order','2024-08-01'),(2,10001,'Standard','Jamar Cherise','8 StreetName915','Address938','10010','digital delivery','confirmed order','2024-08-01'),(3,10002,'Express','Chloe Nicoletta','43 StreetName142','Address149','2158','Ring the bell','on route','2024-08-02'),(4,10003,'Standard','Nicolina Luigia','63 StreetName219','Address206','5385','Call before delivery','cancelled','2024-08-03'),(5,10004,'Standard','Deni Hudd','21 StreetName131','Address286','80331','Refund requested','returned','2024-08-04');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division` (
  `divisionId` int NOT NULL,
  `division` varchar(30) NOT NULL,
  `divisionName` varchar(100) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`divisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'AM','Americas','US'),(2,'EMEA','Europe','DE'),(3,'EMEA','Europe','FR '),(4,'EMEA','Europe','UK'),(5,'EMEA','Europe','ES'),(6,'AA','Australasia','AU '),(7,'EMEA','Europe','IT '),(8,'EMEA','Africa','ZA'),(9,'AS ','Asia','CN'),(10,'AS','Asia','IN '),(11,'EMEA','Middle East',NULL),(12,'O','Online Business',NULL);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomerange`
--

DROP TABLE IF EXISTS `incomerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incomerange` (
  `incomeId` int NOT NULL,
  `minIncome` int DEFAULT NULL,
  `maxIncome` int DEFAULT NULL,
  PRIMARY KEY (`incomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomerange`
--

LOCK TABLES `incomerange` WRITE;
/*!40000 ALTER TABLE `incomerange` DISABLE KEYS */;
INSERT INTO `incomerange` VALUES (1,0,19999),(2,20000,39999),(3,40000,59999),(4,60000,79999),(5,80000,99999),(6,100000,119999),(7,120000,139999),(8,140000,159999),(9,160000,179999),(10,180000,199999),(11,200000,219999),(12,220000,239999),(13,240000,259999),(14,260000,279999),(15,280000,299999),(16,300000,1000000);
/*!40000 ALTER TABLE `incomerange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest` (
  `interestId` varchar(10) NOT NULL,
  `interestName` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `interestGroup` varchar(20) DEFAULT NULL,
  `associatedProductType` varchar(50) DEFAULT NULL,
  `relatedInterest` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`interestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES ('','',NULL,NULL,NULL,NULL),('B1','Business','Interest in business or finance (business)','Business','Business Books','Finance'),('B10','Funny stuff','Interest in funny stuff or cartoon (traditional)','Traditional','Comedy Books','Cartoon'),('B11','Gardening','Interest in gardening or diy (household)','Household','Gardening Books','DIY'),('B12','Health Care','Interest in health care or hr (household)','Household','Health Books','HR'),('B13','HR','Interest in hr or finance (business)','Business','HR Books','Finance'),('B14','Language','Interest in language or self dev (oriental)','Oriental','Language Books','Self Development'),('B15','Management','Interest in management or business (business)','Business','Management Bk','Business'),('B16','Politics','Interest in politics or management (traditional)','Traditional','Politics Books','Management'),('B17','Romance','Interest in romance or drama (romantic)','Romantic','Romance Books','Drama'),('B18','Science','Interest in science or college (scientific)','Scientific','Science Books','College'),('B19','Self Development','Interest in self development or mgt (business)','Business','Self Dev Books','Management'),('B2','Children','Interest in children or family movies (family)','Family','Childrens Books','Family Movies'),('B20','Travel','Interest in travel or oriental music (active)','Active','Travel Books','Oriental Music'),('B21','aviation',NULL,NULL,NULL,NULL),('B22','Technology',NULL,NULL,NULL,NULL),('B23','Culture',NULL,NULL,NULL,NULL),('B24','Shopping',NULL,NULL,NULL,NULL),('B25','Art',NULL,NULL,NULL,NULL),('B3','Church','Interest in church or instrumental (traditional)','Traditional','Religion Books','Instrumental'),('B4','College','Interest in college or science (logical)','Logical','Textbook Books','Science'),('B5','Computer','Interest in computer or science (scientific)','Scientific','IT Books','Science'),('B6','Cooking','Interest in cooking or gardening (household)','Household','Cooking Books','Gardening'),('B7','DIY','Interest in diy or gardening (household)','Household','DIY Books','Gardening'),('B8','Fiction','Interest in fiction or adventure (active)','Active','Fiction Books','Adventure'),('B9','Finance','Interest in finance or business (business)','Business','Finance Books','Business'),('D1','Factual','Interest in factual or science (scientific)','Scientific','Documentary ','Science'),('D2','Space Exploration',NULL,NULL,NULL,NULL),('F1','Adventure','Interest in adventure or sport (active)','Active','Action Films','Sport'),('F2','Cartoon','Interest in cartoon or children (family)','Family','Cartoon Films','Children'),('F3','Drama','Interest in drama or romance (traditional)','Traditional','Drama Films','Romance'),('F4','Family Movies','Interest in family movies or children (family)','Family','Family Films','Children'),('F5','Sport','Interest in sport or adventure (active)','Active','Sport Films','Adventure'),('F6','Thriller','Interest in thriller or funny stuff (active)','Active','Horror Films','Funny stuff'),('F7','Trains','Interest in trains or adventure (scientific)','Scientific','Engineering Bk','Adventure'),('F8','Gaming',NULL,NULL,NULL,NULL),('M1','Blues','Interest in blues or jazz (classy)','Classy','Blues Music','Jazz'),('M10','Rock','Interest in rock or heavy metal  (active)','Active','Rock Music','Heavy metal '),('M2','Classic','Interest in classic or instrumental (traditional)','Traditional','Classical Music','Instrumental'),('M3','Dance','Interest in dance or modern music (active)','Active','Dance Music','Modern Music'),('M4','Heavy metal ','Interest in heavy metal  or rock (active)','Active','Heavy metal ','Rock'),('M5','Instrumental','Interest in instrumental or classic (traditional)','Traditional','Instrumental Ms','Classic'),('M6','Jazz','Interest in jazz or blues (classy)','Classy','Jazz Music','Blues'),('M7','Modern Music','Interest in modern music or dance (modern)','Modern','Hip hop Music','Dance'),('M8','Oriental Music','Interest in oriental music or travel (oriental)','Oriental','Indie Music','Travel'),('M9','Pop Music','Interest in pop music or dance (active)','Active','Pop Music','Dance');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occupation` (
  `occupation_code` int NOT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`occupation_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES (1,'Software Engineer','Develops and maintains software applications.','Technology'),(2,'Data Scientist','Analyzes and interprets complex data.','Technology'),(3,'Web Developer','Designs and creates websites.','Technology'),(4,'Systems Analyst','Analyzes and improves IT systems.','Technology'),(5,'Network Administrator','Manages and supports computer networks.','Technology'),(6,'Cybersecurity Analyst','Protects systems from cybersecurity threats.','Technology'),(7,'IT Project Manager','Oversees IT projects from start to finish.','Technology'),(8,'Database Administrator','Manages and maintains databases.','Technology'),(9,'UX/UI Designer','Enhances user experience and interface design.','Technology'),(10,'Cloud Engineer','Manages cloud computing infrastructure.','Technology'),(11,'Accountant','Prepares and examines financial records.','Finance'),(12,'Financial Analyst','Evaluates financial data to support decisions.','Finance'),(13,'Auditor','Examines and verifies financial records.','Finance'),(14,'Investment Banker','Provides financial services and advice.','Finance'),(15,'Tax Advisor','Assists with tax planning and compliance.','Finance'),(16,'Actuary','Analyzes financial risks using mathematics.','Finance'),(17,'Insurance Underwriter','Assesses risks and determines insurance terms.','Finance'),(18,'Loan Officer','Evaluates and authorizes loans.','Finance'),(19,'Budget Analyst','Analyzes budgetary data and provides advice.','Finance'),(20,'Payroll Specialist','Manages employee payroll and benefits.','Finance'),(21,'Marketing Manager','Oversees marketing strategies and campaigns.','Marketing'),(22,'Brand Manager','Develops and maintains brand identity.','Marketing'),(23,'Market Research Analyst','Conducts research to understand market trends.','Marketing'),(24,'Social Media Manager','Manages social media accounts and strategies.','Marketing'),(25,'Public Relations Specialist','Manages and improves public image.','Marketing'),(26,'Advertising Manager','Oversees advertising campaigns and strategies.','Marketing'),(27,'Content Creator','Develops content for marketing and media.','Marketing'),(28,'SEO Specialist','Optimizes website content for search engines.','Marketing'),(29,'Event Coordinator','Plans and executes events and functions.','Marketing'),(30,'Sales Representative','Sells products and services to customers.','Sales'),(31,'Account Executive','Manages client accounts and sales.','Sales'),(32,'Sales Manager','Oversees sales team and strategies.','Sales'),(33,'Business Development Manager','Identifies and develops new business opportunities.','Sales'),(34,'Regional Sales Manager','Manages sales in a specific region.','Sales'),(35,'Inside Sales Representative','Handles sales from within the company.','Sales'),(36,'Outside Sales Representative','Sells products and services in the field.','Sales'),(37,'Retail Sales Associate','Assists customers and manages sales transactions.','Sales'),(38,'Territory Sales Manager','Manages sales within a specific territory.','Sales'),(39,'Sales Engineer','Provides technical support for sales.','Sales'),(40,'Customer Service Representative','Handles customer inquiries and issues.','Customer Service'),(41,'Call Center Agent','Provides support and handles calls from customers.','Customer Service'),(42,'Technical Support Specialist','Assists with technical issues and support.','Customer Service'),(43,'Help Desk Technician','Provides technical support and troubleshooting.','Customer Service'),(44,'Customer Support Manager','Manages customer support teams and processes.','Customer Service'),(45,'Account Manager','Manages customer accounts and relations.','Customer Service'),(46,'Service Coordinator','Oversees service delivery and customer satisfaction.','Customer Service'),(47,'Client Relations Specialist','Maintains and enhances client relationships.','Customer Service'),(48,'Customer Experience Manager','Improves overall customer experience.','Customer Service'),(49,'Receptionist','Manages front desk and visitor interactions.','Administration'),(50,'Executive Assistant','Provides administrative support to executives.','Administration'),(51,'Office Manager','Oversees office operations and staff.','Administration'),(52,'Administrative Assistant','Provides general administrative support.','Administration'),(53,'Data Entry Clerk','Enters and manages data in computer systems.','Administration'),(54,'Executive Secretary','Manages executive schedules and communications.','Administration'),(55,'Personal Assistant','Provides personal and administrative support.','Administration'),(56,'Project Coordinator','Assists with project management and coordination.','Administration'),(57,'HR Manager','Oversees human resources functions and staff.','Human Resources'),(58,'Recruiter','Manages recruitment and hiring processes.','Human Resources'),(59,'HR Specialist','Handles HR policies and employee relations.','Human Resources'),(60,'Training Coordinator','Manages employee training programs.','Human Resources'),(61,'Compensation Analyst','Analyzes and manages employee compensation.','Human Resources'),(62,'Benefits Coordinator','Administers employee benefits programs.','Human Resources'),(63,'Employee Relations Manager','Manages employee relations and conflict resolution.','Human Resources'),(64,'HR Generalist','Handles a variety of HR functions and tasks.','Human Resources'),(65,'Organizational Development Specialist','Develops and implements organizational strategies.','Human Resources'),(66,'Operations Manager','Oversees daily operations and processes.','Operations'),(67,'Supply Chain Manager','Manages and optimizes supply chain processes.','Operations'),(68,'Logistics Coordinator','Manages logistics and transportation operations.','Operations'),(69,'Facilities Manager','Oversees maintenance and operations of facilities.','Operations'),(70,'Quality Control Analyst','Ensures quality standards are met in processes.','Operations'),(71,'Production Manager','Oversees production processes and staff.','Operations'),(72,'Inventory Manager','Manages inventory levels and stock control.','Operations'),(73,'Process Improvement Specialist','Identifies and implements process improvements.','Operations'),(74,'Warehouse Manager','Manages warehouse operations and staff.','Operations'),(75,'Risk Manager','Identifies and manages organizational risks.','Risk Management'),(76,'Compliance Officer','Ensures compliance with regulations and laws.','Risk Management'),(77,'Safety Coordinator','Oversees safety programs and compliance.','Risk Management'),(78,'Internal Auditor','Conducts internal audits to assess controls.','Risk Management'),(79,'Fraud Investigator','Investigates fraudulent activities and claims.','Risk Management'),(80,'Environmental Health and Safety Specialist','Manages environmental and safety regulations.','Risk Management'),(81,'Legal Counsel','Provides legal advice and representation.','Legal'),(82,'Paralegal','Assists lawyers with legal research and documentation.','Legal'),(83,'Compliance Analyst','Ensures adherence to regulatory requirements.','Legal'),(84,'Contract Manager','Manages contracts and agreements.','Legal'),(85,'Corporate Lawyer','Handles corporate legal matters and transactions.','Legal'),(86,'Legal Secretary','Provides administrative support to legal professionals.','Legal'),(87,'Litigation Support Specialist','Assists with preparation and management of legal cases.','Legal'),(88,'Legal Assistant','Supports attorneys with legal tasks and paperwork.','Legal'),(89,'Estate Planner','Assists with estate planning and management.','Legal'),(90,'Research Scientist','Conducts scientific research and experiments.','Science'),(91,'Biologist','Studies living organisms and their environments.','Science'),(92,'Chemist','Analyzes substances and compounds.','Science'),(93,'Physicist','Studies physical phenomena and laws.','Science'),(94,'Environmental Scientist','Studies and addresses environmental issues.','Science'),(95,'Laboratory Technician','Conducts laboratory tests and experiments.','Science'),(96,'Microbiologist','Studies microorganisms and their effects.','Science'),(97,'Geologist','Studies the Earth and its processes.','Science'),(98,'Astronomer','Studies celestial objects and phenomena.','Science'),(99,'Medical Researcher','Conducts research to advance medical knowledge.','Science'),(100,'Clinical Psychologist','Provides psychological assessment and therapy.','Healthcare'),(101,'Registered Nurse','Provides patient care and support.','Healthcare'),(102,'General Practioner','Diagnoses and treats medical conditions.','Healthcare'),(103,'Surgeon','Performs surgeries to treat injuries and diseases.','Healthcare'),(104,'Pharmacist','Dispenses medications and offers advice on usage.','Healthcare'),(105,'Physiotherapist','Helps patients recover mobility and function.','Healthcare'),(106,'Radiologic Technologist','Operates imaging equipment for diagnostics.','Healthcare'),(107,'Clinical Laboratory Technician','Conducts laboratory tests and analyses.','Healthcare'),(108,'Psychiatrist','Provides treatment for mental health conditions.','Healthcare'),(109,'Occupational Therapist','Assists patients in improving daily living skills.','Healthcare'),(110,'Speech Therapist','Helps patients with speech and communication disorders.','Healthcare'),(111,'Dietitian','Provides dietary advice and nutrition planning.','Healthcare'),(112,'Anesthesiologist','Administers anesthesia during surgeries.','Healthcare'),(113,'Nurse Practitioner','Provides advanced patient care and diagnosis.','Healthcare'),(114,'Medical Assistant','Supports doctors with patient care and administrative tasks.','Healthcare'),(115,'Surgeonâ€™s Assistant','Assists during surgical procedures.','Healthcare'),(116,'Emergency Medical Technician (EMT)','Provides emergency medical care and transport.','Healthcare'),(117,'Healthcare Administrator','Manages healthcare facilities and staff.','Healthcare'),(118,'Geriatrician','Specializes in the care of elderly patients.','Healthcare'),(119,'Cardiologist','Specializes in heart-related conditions.','Healthcare'),(120,'Pediatrician','Provides medical care for children.','Healthcare'),(121,'School Teacher','Educates and instructs students in various subjects.','Education'),(122,'University Professor','Teaches at the university level and conducts research.','Education'),(123,'Educational Consultant','Provides advice on educational strategies and planning.','Education'),(124,'School Counselor','Supports students with academic and personal issues.','Education'),(125,'Principal','Manages school operations and staff.','Education'),(126,'Special Education Teacher','Teaches students with special needs.','Education'),(127,'Librarian','Manages library resources and assists patrons.','Education'),(128,'Instructional Designer','Develops educational programs and materials.','Education'),(129,'Early Childhood Educator','Teaches and cares for young children.','Education'),(130,'Academic Advisor','Assists students with academic planning and course selection.','Education'),(131,'Homemaker','Manages household chores and family care.','Homemaker'),(132,'Stay-at-Home Parent','Provides full-time care and support to family members.','Homemaker'),(133,'Childcare Provider','Cares for children in a home or daycare setting.','Homemaker'),(134,'Family Caregiver','Assists family members with personal and medical care.','Homemaker'),(135,'Domestic Engineer','Manages and coordinates household operations.','Homemaker'),(136,'Household Manager','Oversees daily household tasks and activities.','Homecare'),(137,'Personal Chef','Prepares meals and manages dietary needs for a family.','Homecare'),(138,'Home Organizer','Helps organize and declutter living spaces.','Homecare'),(139,'Nanny','Provides childcare and household support.','Homecare'),(140,'Home Health Aide','Assists with daily living activities for those with health issues.','Homecare'),(141,'Architect',NULL,NULL);
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `packageId` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `packageType` varchar(10) DEFAULT NULL,
  `packagePrice` decimal(10,2) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'20 in 100','Play any 100 items and download any 20 items','GM',9.99,'2024-10-15 23:45:59'),(2,'3 in 1 books','Download or play any books and 25 other items','SM',8.99,'2024-10-15 23:45:59'),(3,'3 in 1 films','Download or play any film and 25 other items','SM',14.99,'2024-10-15 23:45:59'),(4,'3 in 1 music','Download or play any music and 25 other items','SM',7.99,'2024-10-15 23:45:59'),(5,'Basic','Download any 50 items a month, play anything unlimited','GM',19.99,'2024-10-15 23:45:59'),(6,'Book 123','Unlimited download or play any audio books','ST',6.99,'2024-10-15 23:45:59'),(7,'Books Together','Download or play any 50 items each for two people','TG',8.99,'2024-10-15 23:45:59'),(8,'Films 123','Unlimited download or play any films','ST',12.99,'2024-10-15 23:45:59'),(9,'Films Together','Download or play any 50 items each for two people','TG',16.99,'2024-10-15 23:45:59'),(10,'Free 3 Weeks Trial','Download or play anything for 3 weeks for free','TP',0.00,'2024-10-15 23:45:59'),(11,'Get Entertained','Unlimited download or play any entertainment items','SM',15.99,'2024-10-15 23:45:59'),(12,'Get You Back','Unlimited download or play anything, 6 months contract','RT',14.99,'2024-10-15 23:45:59'),(13,'Get Your Books Back','Unlimited download or play any books, 6 months contract','RT',14.99,'2024-10-15 23:45:59'),(14,'Get Your Films Back','Unlimited download or play any films, 6 months contract','RT',14.99,'2024-10-15 23:45:59'),(15,'Get Your Music Back','Unlimited download or play any music, 6 months contract','RT',14.99,'2024-10-15 23:45:59'),(16,'Music 123','Unlimited download or play any music','ST',5.99,'2024-10-15 23:45:59'),(17,'Music Together','Download or play any 50 items each for two people','TG',7.99,'2024-10-15 23:45:59'),(18,'New Subscriber','Download or play anything for 3 months introductory package','TP',19.99,'2024-10-15 23:45:59'),(19,'Premium','Download any 100 items a month, play anything unlimited','GM',24.99,'2024-10-15 23:45:59'),(20,'Stay Informed','Unlimited download or play any information items','SM',5.99,'2024-10-15 23:45:59'),(21,'Together Basic','Download or play any 50 items each for two people','TG',29.99,'2024-10-15 23:45:59'),(22,'Together Premium','Download or play any 100 items each for two people','TG',34.99,'2024-10-15 23:45:59'),(23,'Together Ultra','Download or play any 200 items each for two people','TG',39.99,'2024-10-15 23:45:59'),(24,'Ultra','Download any 200 items a month, pay anything unlimited','GM',29.99,'2024-10-15 23:45:59'),(25,'Enterprise Basic','Internal Use of classic playlist per site','EP',1000.00,'2024-10-15 23:45:59'),(26,'Enterprise Basic Web','Selection of music for use on enterprise web sites','EW',2000.00,'2024-10-15 23:45:59');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `permissionCode` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permissionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES ('',''),('A','Silver Harmonics Sound Group'),('B','Third Party');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postalcode`
--

DROP TABLE IF EXISTS `postalcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postalcode` (
  `postalCode` varchar(10) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`postalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postalcode`
--

LOCK TABLES `postalcode` WRITE;
/*!40000 ALTER TABLE `postalcode` DISABLE KEYS */;
INSERT INTO `postalcode` VALUES ('','','',''),('00000','Dubai','Dubai','UAE'),('00100','RM','Rome','Italy'),('01234-567','SP','SÃ£o Paulo','Brazil'),('01301','MA','Greenfield','United States'),('1000','Ciudad Autónoma de Buenos Aires','Buenos Aires','Argentina'),('100000','BJ','Beijing','China'),('10001','NY','New York','United States'),('10010','NY','New York','United States'),('10115','BE','Berlin','Germany'),('1016 DR','NH','Amsterdam','Netherlands'),('106-0032','TK','Tokyo','Japan'),('110001','DL','New Delhi','India'),('1111',NULL,'Luxembourg City','Luxembourg'),('114 45','AB','Stockholm','Sweden'),('160-0023','TK','Tokyo','Japan'),('2000','NSW','Sydney','Australia'),('200000','SH','Shanghai','China'),('200001','SH','Shanghai','China'),('20100','MI','Milan','Italy'),('20121','Lombardia','Milan','Italy'),('20124','MI','Milan','Italy'),('2115','MA','Boston','United States'),('2129','GP','Johannesberg','South Africa'),('2158','NSW','Sydney','Australia'),('28001','M','Madrid','Spain'),('28012',NULL,'Madrid','Spain'),('3000','VIC','Melbourne','Australia'),('4000','QLD','Brisbane','Australia'),('411 14','O','Gothenburg','Sweden'),('4520','Seoul Special City','Seoul','South Korea'),('5385',NULL,'Paris','France'),('55100','WP','Kuala Lumpur','Malaysia'),('560001','KA','Bangalore','India'),('60616','IL','Chicago','United States'),('62701','IL','Springfield','United States'),('69000','Auvergne-Rhône-Alpes','Lyon','France'),('69001','Auvergne-Rhône-Alpes','Lyon','France'),('700000','SG','Ho Chi Minh City','Vietnam'),('75001','IDF','Paris','France'),('77001','TX','Houston','United States'),('8001','WC','Cape Town','South Africa'),('80203','CO','Denver','United States'),('80301','CO','Boulder','United States'),('80331','BY','Munich','Germany'),('80336','BY','Munich','Germany'),('90001','CA','Los Angeles','United States'),('94043','CA','Silicon Valley','United States'),('97201','OR','Portland','United States'),('98101','WA','Seattle','United States'),('C1001 AAF','Ciudad Autónoma de Buenos Aires','Buenos Aires','Argentina'),('M1 1AE','ENG','Manchester','United Kingdom'),('M5A 1A1','ON','Toronto','Canada'),('SW1A 1AA','ENG','London','United Kingdom'),('SW1A 2AA','ENG','London','UK');
/*!40000 ALTER TABLE `postalcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` varchar(10) NOT NULL,
  `effectiveDate` date NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `artistCode` varchar(10) DEFAULT NULL,
  `productTypeCode` varchar(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `format` varchar(20) DEFAULT NULL,
  `broadcastConsent` varchar(20) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `updateDate` date NOT NULL,
  PRIMARY KEY (`productId`,`effectiveDate`),
  KEY `productTypeCode` (`productTypeCode`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productTypeCode`) REFERENCES `producttype` (`productTypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('A001','2024-08-01','Adventure book for adults','Lost in Time','Time Traveler\'s Tale','AD01','BL','Active','MP3','external',20.00,7.00,'2024-10-16'),('A002','2024-08-01','Management audiobook','Leading Teams','Team Leadership','MG01','BM','Active','CD','internal',22.99,9.99,'2024-10-16'),('A003','2024-08-01','Self-development guide','The Growth Mindset','Personal Development','SD01','BN','Active','Digital','not available',18.00,6.00,'2024-10-16'),('F001','2024-08-01','Western film collection','Wild West Adventure','Cowboy Saga','WW01','AW','Active','DVD','external',30.00,10.00,'2024-10-16'),('F002','2024-08-01','Comedy film series','Laugh Out Loud','Funny Moments','CO01','AX','Active','Blu-ray','internal',25.00,12.00,'2024-10-16'),('F003','2024-08-01','Horror film release','Scary Nights','Fright Fest','HO01','AY','Active','Digital','not available',18.00,8.00,'2024-10-16'),('M001','2024-08-01','Classical music album','Symphony No. 5','Beethoven Symphony','BE01','AA','Active','CD','external',25.00,15.50,'2024-10-16'),('M002','2024-08-01','Dance music collection','Dance Hits 2024','Various Artists','DA01','AB','Active','Digital','internal',15.00,5.25,'2024-10-16'),('M003','2024-08-01','Jazz music compilation','Smooth Jazz Essentials','Various Artists','JA01','AC','Active','Vinyl','not available',35.00,20.00,'2024-10-16'),('M004','2015-06-15','Classical music collection','Great Masters','Beethoven & Mozart','CL01','AA','Inactive','CD','external',30.00,18.00,'2024-10-16'),('M005','2015-10-20','Rock music hits','Rock Legends','Classic Rock Hits','RL01','AE','Withdrawn','Vinyl','internal',40.00,25.00,'2024-10-16');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttype` (
  `productTypeCode` varchar(5) NOT NULL,
  `productType` varchar(50) DEFAULT NULL,
  `productCategory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`productTypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES ('','',''),('AA','Classical Music','Music'),('AB','Dance Music','Music'),('AC','Jazz Music','Music'),('AD','Blues Music','Music'),('AE','Rock Music','Music'),('AF','Childrens Music','Music'),('AG','Soundtracks','Music'),('AH','Specialist Msc','Music'),('AI','Pop Music','Music'),('AJ','Spoken Word','Music'),('AK','Urban Music','Music'),('AL','Traditional Msc','Music'),('AM','Instrumental Ms','Music'),('AN','A cappella Msc','Music'),('AO','Hip hop Music','Music'),('AP','Punk Music','Music'),('AQ','Techno Music','Music'),('AR','Heavy metal ','Music'),('AS','Indie Music','Music'),('AT','Rumba Music','Music'),('AU','Reggae Music','Music'),('AV','Swing Music','Music'),('AW','Western Films','Films'),('AX','Comedy Films','Films'),('AY','Horror Films','Films'),('AZ','Drama Films','Films'),('BA','Sport Films','Films'),('BB','Documentary ','Films'),('BC','Cartoon Films','Films'),('BD','Childrens Films','Films'),('BE','Oriental Films','Films'),('BF','Action Films','Films'),('BG','New Release F','Films'),('BH','Family Films','Films'),('BI','Travel Films','Films'),('BJ','Science Films','Films'),('BK','Religion Films','Films'),('BL','Adventure Books','Audio Books'),('BM','Management Bk','Audio Books'),('BN','Self Dev Books','Audio Books'),('BO','Finance Books','Audio Books'),('BP','IT Books','Audio Books'),('BQ','Horror Books','Audio Books'),('BR','Action Books','Audio Books'),('BS','Childrens Books','Audio Books'),('BT','Traditional Bk','Audio Books'),('BU','Travel Books','Audio Books'),('BV','Comedy Books','Audio Books'),('BW','Politics Books','Audio Books'),('BX','Science Books','Audio Books'),('BY','Religion Books','Audio Books'),('BZ','Culture Books','Audio Books'),('CA','Gardening Books','Audio Books'),('CC','DIY Books','Audio Books'),('CD','Psychology Bk','Audio Books'),('CE','Industry Books','Audio Books'),('CF','Textbook Books','Audio Books'),('CG','Language Books','Audio Books'),('CH','Fiction Books','Audio Books'),('CI','Romance Books','Audio Books'),('CJ','Cooking Books','Audio Books'),('CK','Health Books','Audio Books'),('CL','Engineering Bk','Audio Books'),('CM','HR Books','Audio Books'),('CN','Business Books','Audio Books');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `storeId` varchar(10) NOT NULL,
  `storeName` varchar(100) NOT NULL,
  `storeType` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `divisionId` int DEFAULT NULL,
  `marketSectorName` varchar(50) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  PRIMARY KEY (`storeId`,`storeName`),
  KEY `divisionId` (`divisionId`),
  KEY `postalCode` (`postalCode`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`divisionId`) REFERENCES `division` (`divisionId`),
  CONSTRAINT `store_ibfk_2` FOREIGN KEY (`postalCode`) REFERENCES `postalcode` (`postalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('S001','Online Store AU 1','Online','AU ',NULL,NULL,NULL,'+61-2-12345678','www.shsau1.com',6,'online e-commerce','2024-10-16'),('S001','Online Store CN 1','Online','CN',NULL,NULL,NULL,'+86-21-12345678','www.shscn1.com',9,'online e-commerce','2024-10-16'),('S001','Online Store DE 1','Online','DE',NULL,NULL,NULL,'+49-30-1234567','www.shsde1.com',2,'online e-commerce','2024-10-16'),('S001','Online Store ES 1','Online','ES',NULL,NULL,NULL,'+34-91-1234567','www.shssp1.com',5,'online e-commerce','2024-10-16'),('S001','Online Store FR 1','Online','FR ',NULL,NULL,NULL,'+33-1-23456789','www.shsfr1.com',3,'online e-commerce','2024-10-16'),('S001','Online Store IN 1','Online','IN ',NULL,NULL,NULL,'+91-22-12345678','www.shsin1.com',10,'online e-commerce','2024-10-16'),('S001','Online Store IT 1','Online','IT ',NULL,NULL,NULL,'+39-6-12345678','www.shsit1.com',7,'online e-commerce','2024-10-16'),('S001','Online Store UK 1','Online','UK',NULL,NULL,NULL,'+44-20-79460000','www.shsuk1.com',4,'online e-commerce','2024-10-16'),('S001','Online Store US 1','Online','US',NULL,NULL,NULL,'+1-800-123-4567','www.shsus1.com',1,'online e-commerce','2024-10-16'),('S001','Online Store ZA 1','Online','ZA',NULL,NULL,NULL,'+27-11-1234567','www.shsza1.com',8,'online e-commerce','2024-10-16'),('S002','Store AU 1','Full Outlet','AU','303 George St',NULL,'2000','+61-2-55550000','www.shsstoreau1.com',6,'retail','2024-10-16'),('S002','Store CN 1','Full Outlet','CN','606 Wangfujing','1st Floor','100000','+86-10-55555555','www.shsstorecn1.com',9,'retail','2024-10-16'),('S002','Store DE 1','Mini Outlet','DE','456 Hauptstrasse','Floor 2','10115','+49-30-55550000','www.shsstorede1.com',2,'retail','2024-10-16'),('S002','Store ES 1','Full Outlet','ES','202 Calle Mayor','3rd Floor','28001','+34-91-5555555','www.shsstorees1.com',5,'retail','2024-10-16'),('S002','Store FR 1','Full Outlet','FR','789 Rue de Rivoli',NULL,'75001','+33-1-55555555','www.shsstorefr1.com',3,'retail','2024-10-16'),('S002','Store IN 1','Mini Outlet','IN','707 Connaught Pl',NULL,'110001','+91-11-55555555','www.shsstorein1.com',10,'retail','2024-10-16'),('S002','Store IT 1','Full Outlet','IT','404 Via Roma','Suite 10','100','+39-06-55555555','www.shsstoreit1.com',7,'retail','2024-10-16'),('S002','Store UK 1','Full Outlet','UK','101 High St',NULL,'SW1A 1AA','+44-20-55550000','www.shsstoreuk1.com',4,'retail','2024-10-16'),('S002','Store US 1','Physical','US','123 Main St','Suite 100','10001','+1-212-555-0001','www.2us1.com',1,'retail','2024-10-16'),('S002','Store ZA 1','Full Outlet','ZA','505 Main Rd',NULL,'2000','+27-11-5555000','www.shsstoreza1.com',8,'retail','2024-10-16'),('S003','Store AU 2','Full Outlet','AU','404 Pitt St',NULL,'3000','+61-3-55550000','www.shsstoreau2.com',6,'retail','2024-10-16'),('S003','Store CN 2','Full Outlet','CN','707 Nanjing Rd',NULL,'200001','+86-21-55555555','www.shsstorecn2.com',9,'retail','2024-10-16'),('S003','Store DE 2','Full Outlet','DE','567 Bahnhofstrasse',NULL,'80331','+49-89-55560000','www.shsstorede2.com',2,'retail','2024-10-16'),('S003','Store ES 2','Full Outlet','ES','303 Gran Via',NULL,'8001','+34-93-5555555','www.shsstorees2.com',5,'retail','2024-10-16'),('S003','Store FR 2','Full Outlet','FR','890 Avenue des Ch1ps-Elysees',NULL,'69001','+33-4-55555555','www.shsstorefr2.com',3,'retail','2024-10-16'),('S003','Store IN 2','Full Outlet','IN','808 MG Road',NULL,'560001','+91-80-55555555','www.shsstorein2.com',10,'retail','2024-10-16'),('S003','Store IT 2','Full Outlet','IT','505 Via del Corso',NULL,'20100','+39-02-55555555','www.shsstoreit2.com',7,'retail','2024-10-16'),('S003','Store UK 2','Full Outlet','UK','202 Oxford St',NULL,'M1 1AE','+44-161-5555000','www.shsstoreuk2.com',4,'retail','2024-10-16'),('S003','Store US 2','Full Outlet','US','123 Elm St','Suite 200','90001','+1-310-555-0002','www.shsstoreus2.com',1,'retail','2024-10-16'),('S003','Store ZA 2','Mini Outlet','ZA','606 Church St',NULL,'8001','+27-21-5555000','www.shsstoreza2.com',8,'retail','2024-10-16'),('S004','Store AU 3','Full Outlet','AU','1092 Queen Street',NULL,'4000','+61-7-3424-2322','www.shsstoreau3.com',6,'retail','2024-10-16');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `subscriptionId` varchar(10) NOT NULL,
  `storeId` varchar(10) DEFAULT NULL,
  `storeName` varchar(100) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `accountId` varchar(20) DEFAULT NULL,
  `currencyCode` varchar(10) DEFAULT NULL,
  `packageId` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `subscriptionQty` int DEFAULT NULL,
  `unitPricePaid` decimal(10,2) DEFAULT NULL,
  `renewalType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  KEY `storeId` (`storeId`,`storeName`),
  KEY `customerId` (`customerId`),
  KEY `accountId` (`accountId`),
  KEY `packageId` (`packageId`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`storeId`, `storeName`) REFERENCES `store` (`storeId`, `storeName`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `subscription_ibfk_3` FOREIGN KEY (`accountId`) REFERENCES `account` (`accountId`),
  CONSTRAINT `subscription_ibfk_4` FOREIGN KEY (`packageId`) REFERENCES `package` (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES ('S2003','S001','Online Store US 1','2022-01-01','2024-12-31',15001,'A1001','USD',25,'Active',6,1000.00,'yearly'),('S2004','S001','Online Store AU 1','2022-01-01','2024-12-31',15013,'A1013','AUD',25,'Active',20,900.00,'quarterly'),('S2005','S001','Online Store US 1','2022-01-01','2023-12-31',15006,'A1006','USD',25,'Inactive',10,1000.00,'yearly'),('S2006','S002','Store AU 1','2022-01-03','2024-12-31',15013,'A1013','AUD',26,'Active',1,2000.00,'yearly');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-17 23:44:52
