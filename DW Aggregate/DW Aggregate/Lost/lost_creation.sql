CREATE DATABASE  IF NOT EXISTS `dw-2205-team4_lostdimension` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dw-2205-team4_lostdimension`;
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dw-2205-team4_lostdimension
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `customer_dim`
--

DROP TABLE IF EXISTS `customer_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_dim` (
  `Customer_SK` int NOT NULL,
  `Customer_ID(NK)` int DEFAULT NULL,
  `Customer_Name` varchar(45) DEFAULT NULL,
  `Customer_Address1` varchar(45) DEFAULT NULL,
  `Customer_Address2` varchar(45) DEFAULT NULL,
  `Customer_City` varchar(45) DEFAULT NULL,
  `Customer_State` char(2) DEFAULT NULL,
  `Customer_Zip` varchar(5) DEFAULT NULL,
  `Customer_Type_ID` char(1) DEFAULT NULL,
  `Customer_Type_Name` varchar(45) DEFAULT NULL,
  `Customer_Division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_dim`
--

DROP TABLE IF EXISTS `product_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_dim` (
  `Product_SK` int NOT NULL,
  `Product_ID(NK)` int DEFAULT NULL,
  `Product_Description` varchar(45) DEFAULT NULL,
  `Price1` decimal(10,2) DEFAULT NULL,
  `Price2` decimal(10,2) DEFAULT NULL,
  `Unit_Cost` decimal(10,2) DEFAULT NULL,
  `ProductType_ID` varchar(45) DEFAULT NULL,
  `ProductType_Description` varchar(45) DEFAULT NULL,
  `BUID` varchar(45) DEFAULT NULL,
  `Business_Name` varchar(45) DEFAULT NULL,
  `Business_Unit_Abbreviation` varchar(45) DEFAULT NULL,
  `Supplier_Name` varchar(45) DEFAULT NULL,
  `Supplier_Address` varchar(45) DEFAULT NULL,
  `Supplier_State` varchar(45) DEFAULT NULL,
  `Supplier_Zip` varchar(45) DEFAULT NULL,
  `Product_Division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_fact_lost`
--

DROP TABLE IF EXISTS `sales_fact_lost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_fact_lost` (
  `Customer_SK` int NOT NULL,
  `Product_SK` int NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Shipping_Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`,`Product_SK`),
  KEY `fk_sales_fact_LOST_product_dim_idx` (`Product_SK`),
  CONSTRAINT `fk_sales_fact_LOST_customer_dim1` FOREIGN KEY (`Customer_SK`) REFERENCES `customer_dim` (`Customer_SK`),
  CONSTRAINT `fk_sales_fact_LOST_product_dim` FOREIGN KEY (`Product_SK`) REFERENCES `product_dim` (`Product_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 21:50:33
