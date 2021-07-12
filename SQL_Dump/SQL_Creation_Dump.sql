CREATE DATABASE  IF NOT EXISTS `dw-2205-team4_salesorders`;
USE `dw-2205-team4_salesorders`;


-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dw-2205-team4_salesorders
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
-- Dumping data for table `customer_dim`
--

LOCK TABLES `customer_dim` WRITE;
/*!40000 ALTER TABLE `customer_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `junk_dim`
--

DROP TABLE IF EXISTS `junk_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `junk_dim` (
  `Junk_SK` int NOT NULL,
  `ShippingMethod` varchar(45) DEFAULT NULL,
  `OrderingMethod` varchar(45) DEFAULT NULL,
  `PaymentMethod` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Junk_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `junk_dim`
--

LOCK TABLES `junk_dim` WRITE;
/*!40000 ALTER TABLE `junk_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `junk_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdate_dim`
--

DROP TABLE IF EXISTS `orderdate_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdate_dim` (
  `OrderDate_SK` int NOT NULL,
  `Order_Year` year DEFAULT NULL,
  `Order_Quarter` int DEFAULT NULL,
  `Order_Month` int DEFAULT NULL,
  `Order_Week` int DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Order_Fiscal_Year` year DEFAULT NULL,
  `Order_Fiscal_Quarter` int DEFAULT NULL,
  `Order_Fiscal_Month` int DEFAULT NULL,
  `Order_Fiscal_Week` int DEFAULT NULL,
  PRIMARY KEY (`OrderDate_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdate_dim`
--

LOCK TABLES `orderdate_dim` WRITE;
/*!40000 ALTER TABLE `orderdate_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdate_dim` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `product_dim`
--

LOCK TABLES `product_dim` WRITE;
/*!40000 ALTER TABLE `product_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saledate_dim`
--

DROP TABLE IF EXISTS `saledate_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saledate_dim` (
  `SalesDate_SK` int NOT NULL,
  `SalesDate` date DEFAULT NULL,
  `Sales_Year` year DEFAULT NULL,
  `Sales_Quarter` int DEFAULT NULL,
  `Sales_Month` int DEFAULT NULL,
  `Sales_Week` int DEFAULT NULL,
  `Sales_Fiscal_Year` year DEFAULT NULL,
  `Sales_Fiscal_Quarter` int DEFAULT NULL,
  `Sales_Fiscal_Month` int DEFAULT NULL,
  `Sales_Fiscal_Week` int DEFAULT NULL,
  PRIMARY KEY (`SalesDate_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saledate_dim`
--

LOCK TABLES `saledate_dim` WRITE;
/*!40000 ALTER TABLE `saledate_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `saledate_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_fact`
--

DROP TABLE IF EXISTS `sales_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_fact` (
  `Customer_SK` int NOT NULL,
  `Product_SK` int NOT NULL,
  `OrderDate_SK` int NOT NULL,
  `SalesDate_SK` int NOT NULL,
  `Junk_SK` int NOT NULL,
  `InvoiceNumber(DD)` int DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Discounted` tinyint DEFAULT NULL,
  `Shipping_Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK`,`Product_SK`,`OrderDate_SK`,`SalesDate_SK`,`Junk_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_fact`
--

LOCK TABLES `sales_fact` WRITE;
/*!40000 ALTER TABLE `sales_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 18:55:47
