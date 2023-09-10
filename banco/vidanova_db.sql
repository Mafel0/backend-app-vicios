CREATE DATABASE  IF NOT EXISTS `vidanova_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vidanova_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vidanova_db
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `anotacoes`
--

DROP TABLE IF EXISTS `anotacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anotacoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `texto` varchar(250) NOT NULL,
  `data_anot` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anotacoes`
--

LOCK TABLES `anotacoes` WRITE;
/*!40000 ALTER TABLE `anotacoes` DISABLE KEYS */;
INSERT INTO `anotacoes` VALUES (1,1,'Hoje foi um dia difícil','2023/09/10 11:00:00');
/*!40000 ALTER TABLE `anotacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES (1,'Um dia'),(2,'2 dias'),(3,'4 dias'),(4,'Uma semana'),(5,'15 dias'),(6,'30 dias'),(7,'50 dias'),(8,'80 dias'),(9,'100 dias'),(10,'150 dias'),(11,'200 dias'),(12,'1 ano'),(13,'18 meses'),(14,'2 anos'),(15,'3 anos'),(16,'4 anos'),(17,'5 anos'),(18,'7 anos'),(19,'10 anos');
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_atingidas`
--

DROP TABLE IF EXISTS `metas_atingidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metas_atingidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_metas` int NOT NULL,
  `id_vicio_user` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_atingidas`
--

LOCK TABLES `metas_atingidas` WRITE;
/*!40000 ALTER TABLE `metas_atingidas` DISABLE KEYS */;
INSERT INTO `metas_atingidas` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `metas_atingidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivos`
--

DROP TABLE IF EXISTS `motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `texto` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivos`
--

LOCK TABLES `motivos` WRITE;
/*!40000 ALTER TABLE `motivos` DISABLE KEYS */;
INSERT INTO `motivos` VALUES (1,1,'Quero ser uma pessoa saúdavel');
/*!40000 ALTER TABLE `motivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recaidas`
--

DROP TABLE IF EXISTS `recaidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recaidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `data_rec` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recaidas`
--

LOCK TABLES `recaidas` WRITE;
/*!40000 ALTER TABLE `recaidas` DISABLE KEYS */;
INSERT INTO `recaidas` VALUES (1,1,'2023-09-10 14:00:00');
/*!40000 ALTER TABLE `recaidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vicios`
--

DROP TABLE IF EXISTS `vicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `icone` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vicios`
--

LOCK TABLES `vicios` WRITE;
/*!40000 ALTER TABLE `vicios` DISABLE KEYS */;
INSERT INTO `vicios` VALUES (1,'Fumar','aaa'),(2,'Álcool','aaa'),(3,'Drogas','aaa'),(4,'Doces','aaa'),(5,'Junk food','aaa'),(6,'Refrigerante','aaa'),(7,'Café','aaa'),(8,'Pornografia','aaa'),(9,'Apostas','aaa'),(10,'Videojogos','aaa'),(11,'Compras','aaa'),(12,'Erva','aaa'),(13,'Redes sociais','aaa'),(14,'Comprimidos','aaa'),(15,'Procrastinação','aaa'),(16,'Palavrões','aaa'),(17,'xxx','aaa');
/*!40000 ALTER TABLE `vicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vicios_do_user`
--

DROP TABLE IF EXISTS `vicios_do_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vicios_do_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vicio` int NOT NULL,
  `data_abs` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vicios_do_user`
--

LOCK TABLES `vicios_do_user` WRITE;
/*!40000 ALTER TABLE `vicios_do_user` DISABLE KEYS */;
INSERT INTO `vicios_do_user` VALUES (1,1,'2023-09-08 12:00:00');
/*!40000 ALTER TABLE `vicios_do_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 20:36:49
