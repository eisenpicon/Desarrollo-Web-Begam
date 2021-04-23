-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: bdsys
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.28-MariaDB

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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Booking` (
  `CodBooking` varchar(100) NOT NULL,
  `CodDoctor` varchar(100) DEFAULT NULL,
  `Adate` date DEFAULT NULL,
  `Timing` varchar(50) DEFAULT NULL,
  `DateReg` date DEFAULT NULL,
  `UserReg` varchar(100) DEFAULT NULL,
  `DateMod` date DEFAULT NULL,
  `UserMod` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`CodBooking`),
  KEY `CodDoctor` (`CodDoctor`),
  CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`CodDoctor`) REFERENCES `Doctor` (`CodDoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `CodDoctor` varchar(100) NOT NULL,
  `NamesDoctor` varchar(100) DEFAULT NULL,
  `SurnamesDoctor` varchar(100) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `CodUserSis` varchar(100) DEFAULT NULL,
  `CodTipUser` varchar(100) DEFAULT NULL,
  `DateReg` date DEFAULT NULL,
  `UserReg` varchar(100) DEFAULT NULL,
  `DateMod` date DEFAULT NULL,
  `UserMod` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`CodDoctor`),
  KEY `CodUserSis` (`CodUserSis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `CodPatient` varchar(100) NOT NULL,
  `Heigth` decimal(10,0) DEFAULT NULL,
  `Weitht` decimal(10,0) DEFAULT NULL,
  `BloodGroup` varchar(10) DEFAULT NULL,
  `Bp` decimal(10,0) DEFAULT NULL,
  `Suger` decimal(10,0) DEFAULT NULL,
  `CodUserSis` varchar(100) DEFAULT NULL,
  `CodTipUser` varchar(100) DEFAULT NULL,
  `DateReg` date DEFAULT NULL,
  `UserReg` varchar(100) DEFAULT NULL,
  `DateMod` date DEFAULT NULL,
  `UserMod` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`CodPatient`),
  KEY `CodUserSis` (`CodUserSis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reports`
--

DROP TABLE IF EXISTS `Reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports` (
  `CodRegistry` varchar(100) NOT NULL,
  `CodPatient` varchar(100) DEFAULT NULL,
  `CodComplicants` varchar(100) DEFAULT NULL,
  `CodDoctor` varchar(100) DEFAULT NULL,
  `Prescription` varchar(100) DEFAULT NULL,
  `DateOfLastReport` date DEFAULT NULL,
  `DateReg` date DEFAULT NULL,
  `UserReg` varchar(100) DEFAULT NULL,
  `DateMod` date DEFAULT NULL,
  `UserMod` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`CodRegistry`),
  KEY `CodDoctor` (`CodDoctor`),
  KEY `CodPatient` (`CodPatient`),
  CONSTRAINT `Reports_ibfk_1` FOREIGN KEY (`CodDoctor`) REFERENCES `Doctor` (`CodDoctor`),
  CONSTRAINT `Reports_ibfk_2` FOREIGN KEY (`CodPatient`) REFERENCES `Patient` (`CodPatient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports`
--

LOCK TABLES `Reports` WRITE;
/*!40000 ALTER TABLE `Reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSis`
--

DROP TABLE IF EXISTS `UserSis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSis` (
  `CodUserSis` varchar(100) NOT NULL,
  `PassUserSis` varchar(100) DEFAULT NULL,
  `CodTipUser` varchar(100) DEFAULT NULL,
  `DateReg` date DEFAULT NULL,
  `UserReg` varchar(100) DEFAULT NULL,
  `DateMod` date DEFAULT NULL,
  `UserMod` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `IDEMPLEADO` int(11) DEFAULT NULL,
  `IDCARGO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodUserSis`),
  KEY `CodTipUser` (`CodTipUser`),
  KEY `UserSis_FK` (`IDEMPLEADO`),
  KEY `UserSis_FK_1` (`IDCARGO`),
  CONSTRAINT `UserSis_FK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `employee` (`IDEMPLEADO`),
  CONSTRAINT `UserSis_FK_1` FOREIGN KEY (`IDCARGO`) REFERENCES `cargo` (`IDCARGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSis`
--

LOCK TABLES `UserSis` WRITE;
/*!40000 ALTER TABLE `UserSis` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `IDCARGO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRECARGO` varchar(20) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IDCARGO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'ADMINISTRADOR',''),(2,'DOCTOR','');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `IDEMPLEADO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `TELEFONO` char(9) DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `TIPODOCUMENTO` char(1) DEFAULT NULL,
  `NUMERODOCUMENTO` char(11) DEFAULT NULL,
  `IDUSUARIO` int(11) DEFAULT NULL,
  `CodDoctor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IDEMPLEADO`),
  KEY `FK_EMPLEADO_USU` (`IDUSUARIO`),
  KEY `employee_FK` (`CodDoctor`),
  CONSTRAINT `employee_FK` FOREIGN KEY (`CodDoctor`) REFERENCES `Doctor` (`CodDoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOMBREUSUARIO` varchar(20) DEFAULT NULL,
  `CLAVE` varchar(10) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  `IDCARGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'GABRIEL','123','',1),(2,'OMAR','456','',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bdsys'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-23  0:55:24
