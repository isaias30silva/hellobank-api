-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hellobank_db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tab_correntista`
--

DROP TABLE IF EXISTS `tab_correntista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_correntista` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conta_numero` bigint DEFAULT NULL,
  `conta_saldo` double DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_correntista`
--

LOCK TABLES `tab_correntista` WRITE;
/*!40000 ALTER TABLE `tab_correntista` DISABLE KEYS */;
INSERT INTO `tab_correntista` VALUES (1,985,2925.33,'12345678910','Isaias'),(2,1662408688760,660,'33344488875','Rosemberg');
/*!40000 ALTER TABLE `tab_correntista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_movimentacao`
--

DROP TABLE IF EXISTS `tab_movimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_movimentacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `id_conta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_movimentacao`
--

LOCK TABLES `tab_movimentacao` WRITE;
/*!40000 ALTER TABLE `tab_movimentacao` DISABLE KEYS */;
INSERT INTO `tab_movimentacao` VALUES (1,'2022-09-05 17:37:49.583879','Salario Mes','RECEITA',2500,2),(2,'2022-09-05 17:45:33.607628','Freelancer','RECEITA',1400,1),(3,'2022-09-05 17:56:36.984923','Freelancer','RECEITA',1400,1),(4,'2022-09-05 17:58:06.833674','PIX','RECEITA',330,2),(5,'2022-09-05 17:58:10.397407','PIX','RECEITA',330,2);
/*!40000 ALTER TABLE `tab_movimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hellobank_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05 18:17:11
