CREATE DATABASE  IF NOT EXISTS `db_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_project`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: db_project
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
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `idCLient` int NOT NULL,
  `Cname` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  PRIMARY KEY (`idCLient`),
  UNIQUE KEY `idCLient_UNIQUE` (`idCLient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Heritage','NDDB House, A-3, Sector-1, Noida-201 301 U.P. India'),(2,'Jersey','1st Floor, Vijaya Bhavan, lalapet, Tarnaka, Hyderabad-500017, India.'),(3,'Hatsun','H.NO.2-10-1102, SBI, rode, opposite malkapoor, Jyothinagar, Karimnagar, Telangana 505001, India');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `idEmployees` varchar(45) NOT NULL,
  `EmpName` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmployees`),
  UNIQUE KEY `idEmployees_UNIQUE` (`idEmployees`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES ('E_01','Lakshmi Sree','H.no 34, Green castle, Kompally, Hyderabad','9010002999'),('E_02','Santosh Krishna','H.no 2-68, Shantinagar, Vanasthalipuram, Hyderabad','9866662181'),('E_03','Prasad Kesanagurthi','H.no 134, NGO Colony, Dilsukhnagar, Hyderabad','9866562121'),('E_04','Sandeep Marapaka','Flat.No 205, Mountain Heights, Kondapur, Hyderabad','7032812181'),('E_05','Bala Gopal','Building number 7, Rivervale cresent, Himayathnagar, Hyderabad','9550913552'),('E_06','Raju Goud','Villa number 73, Discovery Gardens, Padmaraonagar, Hyderabad','9032003617'),('E_07','Shiva Kumar','Flat. No T-11, Arihanth Escapade, Koti, Hyderabad','9032006502'),('E_08','Avinash Reddy','H.no 501, 5th lane, KPHB, Hyderabad','9032006504'),('E_09','Gouthami Singireddy','H.no 1223, Medibavi, Moghulpura, Hyderabad','9032006509'),('E_10','Shivani Mudiraj','NO. 821, Saketh homes, ECIL X ROAD, Hyderabad','9032007891');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `idProduct` varchar(45) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `MDate` date NOT NULL,
  PRIMARY KEY (`idProduct`),
  UNIQUE KEY `idProduct_UNIQUE` (`idProduct`),
  UNIQUE KEY `ProductName_UNIQUE` (`ProductName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('Butter_01','Butter_Salted',800,'2022-05-04'),('Butter_02','Butter_Unsalted',730,'2022-05-08'),('Butter_03','Butter_Nonfat',500,'2022-05-10'),('Milk_01','Milk@1%',880,'2022-05-21'),('Milk_02','Milk@2%',640,'2022-05-22'),('Milk_03','Milk@3%',420,'2022-05-19'),('Yougurt_01','Yogurt@1%',570,'2022-05-15'),('Yougurt_02','Yogurt@2%',340,'2022-05-20'),('Yougurt_03','Yogurt@3%',150,'2022-05-16');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product_Recieved`
--

DROP TABLE IF EXISTS `Product_Recieved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_Recieved` (
  `idClient` int NOT NULL,
  `idProduct` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `DateRecieved` date NOT NULL,
  PRIMARY KEY (`idClient`,`idProduct`),
  KEY `idProduct_FK_idx` (`idProduct`),
  CONSTRAINT `idClient` FOREIGN KEY (`idClient`) REFERENCES `Client` (`idCLient`),
  CONSTRAINT `idProduct` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_Recieved`
--

LOCK TABLES `Product_Recieved` WRITE;
/*!40000 ALTER TABLE `Product_Recieved` DISABLE KEYS */;
INSERT INTO `Product_Recieved` VALUES (1,'Butter_01',25,'2022-05-06'),(1,'Butter_02',265,'2022-05-11'),(1,'Butter_03',60,'2022-05-14'),(1,'milk_01',10,'2022-05-22'),(1,'milk_02',355,'2022-05-25'),(1,'milk_03',180,'2022-05-19'),(1,'Yougurt_01',80,'2022-05-18'),(1,'Yougurt_02',210,'2022-05-24'),(1,'Yougurt_03',190,'2022-05-18'),(2,'Butter_01',320,'2022-05-07'),(2,'Butter_03',340,'2022-05-15'),(2,'milk_02',285,'2022-05-22'),(2,'milk_03',420,'2022-05-22'),(2,'Yougurt_02',210,'2022-05-20'),(3,'Butter_01',200,'2022-05-10'),(3,'Butter_02',220,'2022-05-10'),(3,'Butter_03',300,'2022-05-05'),(3,'milk_01',35,'2022-05-23'),(3,'Yougurt_01',75,'2022-05-18');
/*!40000 ALTER TABLE `Product_Recieved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supervisor`
--

DROP TABLE IF EXISTS `Supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supervisor` (
  `SNo` int NOT NULL,
  `idEmployees` varchar(45) DEFAULT NULL,
  `idProduct` varchar(45) DEFAULT NULL,
  `idSource` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `idProduct_idx` (`idProduct`),
  KEY `idSource_idx` (`idSource`),
  KEY `employeeid_idx` (`idEmployees`),
  CONSTRAINT `employeeid` FOREIGN KEY (`idEmployees`) REFERENCES `Employees` (`idEmployees`),
  CONSTRAINT `idSource` FOREIGN KEY (`idSource`) REFERENCES `Supply_Sources` (`idSource`),
  CONSTRAINT `productid` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supervisor`
--

LOCK TABLES `Supervisor` WRITE;
/*!40000 ALTER TABLE `Supervisor` DISABLE KEYS */;
INSERT INTO `Supervisor` VALUES (1,'E_02','Butter_01',NULL),(2,'E_02','Butter_02',NULL),(3,'E_02','Butter_03',NULL),(4,'E_04','milk_01',NULL),(5,'E_04','milk_02',NULL),(6,'E_04','milk_03',NULL),(7,'E_06','Yougurt_01',NULL),(8,'E_06','Yougurt_02',NULL),(9,'E_06','Yougurt_03',NULL),(10,'E_08',NULL,'SS_01'),(11,'E_08',NULL,'SS_02'),(12,'E_08',NULL,'SS_03'),(13,'E_08',NULL,'SS_04'),(14,'E_08',NULL,'SS_05');
/*!40000 ALTER TABLE `Supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supply_Sources`
--

DROP TABLE IF EXISTS `Supply_Sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supply_Sources` (
  `idSource` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `QuantitySupplied` int NOT NULL,
  PRIMARY KEY (`idSource`),
  UNIQUE KEY `idSource_UNIQUE` (`idSource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supply_Sources`
--

LOCK TABLES `Supply_Sources` WRITE;
/*!40000 ALTER TABLE `Supply_Sources` DISABLE KEYS */;
INSERT INTO `Supply_Sources` VALUES ('SS_01','Venkateswara Dairy Farm','Opp. Vibgyor Annapurna Mess, Karimnagar, Telangana 505001, India',1000),('SS_02','Masquati Milk Suppliers','Raparthi Nagar, Bhuranpuram, Telangana 507001, India',1333),('SS_03','Vinayaka Milk Products','Street Number 1, South Lalaguda, Tarnaka, Hyderabad, Telangana 500007, India',850),('SS_04','Sreeraj Dairy Enterprises','Indira Nagar, Siddipet, Telangana 502114, India',2820),('SS_05','Pranitha Dairy Associates','5-6-60/2 Beside Sai Farms, Vijayawada, Andhra Pradesh 520001, India',1575);
/*!40000 ALTER TABLE `Supply_Sources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 16:30:46
