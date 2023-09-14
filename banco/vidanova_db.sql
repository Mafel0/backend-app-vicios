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
  `texto` varchar(250) NOT NULL,
  `data_anot` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anotacoes`
--

LOCK TABLES `anotacoes` WRITE;
/*!40000 ALTER TABLE `anotacoes` DISABLE KEYS */;
INSERT INTO `anotacoes` VALUES (1,'Hoje foi um dia difícil','2023-09-10 11:00:00'),(3,'Cada dia me sinto mais mentalmente saudável','2023-09-14 10:00:00');
/*!40000 ALTER TABLE `anotacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anotacoes_user`
--

DROP TABLE IF EXISTS `anotacoes_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anotacoes_user` (
  `id_juncao_vicio_anot` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `id_anotacoes` int NOT NULL,
  PRIMARY KEY (`id_juncao_vicio_anot`),
  KEY `fk_vicio_user_idx` (`id_vicio_user`),
  KEY `fk_anotacoes_idx` (`id_anotacoes`),
  CONSTRAINT `fk_anotacoes` FOREIGN KEY (`id_anotacoes`) REFERENCES `anotacoes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_vicio_user_anotacoes` FOREIGN KEY (`id_vicio_user`) REFERENCES `vicios_do_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anotacoes_user`
--

LOCK TABLES `anotacoes_user` WRITE;
/*!40000 ALTER TABLE `anotacoes_user` DISABLE KEYS */;
INSERT INTO `anotacoes_user` VALUES (1,1,1),(3,1,3);
/*!40000 ALTER TABLE `anotacoes_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivos`
--

DROP TABLE IF EXISTS `motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivos`
--

LOCK TABLES `motivos` WRITE;
/*!40000 ALTER TABLE `motivos` DISABLE KEYS */;
INSERT INTO `motivos` VALUES (1,'Quero ser uma pessoa saúdavel'),(2,'Eu quero me tornar um exemplo para os meus amigos e família, e sei que eu vou conseguir!'),(3,'Isso é pecado');
/*!40000 ALTER TABLE `motivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivos_user`
--

DROP TABLE IF EXISTS `motivos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivos_user` (
  `id_juncao_vicio_mot` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `id_motivos` int NOT NULL,
  PRIMARY KEY (`id_juncao_vicio_mot`),
  KEY `fk_vicio_user_idx` (`id_vicio_user`),
  KEY `fk_motivos_idx` (`id_motivos`),
  CONSTRAINT `fk_motivos` FOREIGN KEY (`id_motivos`) REFERENCES `motivos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_vicio_user_motivos` FOREIGN KEY (`id_vicio_user`) REFERENCES `vicios_do_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivos_user`
--

LOCK TABLES `motivos_user` WRITE;
/*!40000 ALTER TABLE `motivos_user` DISABLE KEYS */;
INSERT INTO `motivos_user` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `motivos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recaidas`
--

DROP TABLE IF EXISTS `recaidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recaidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_rec` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recaidas`
--

LOCK TABLES `recaidas` WRITE;
/*!40000 ALTER TABLE `recaidas` DISABLE KEYS */;
INSERT INTO `recaidas` VALUES (1,'2023-09-10 14:00:00'),(2,'2023-09-12 12:00:00');
/*!40000 ALTER TABLE `recaidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recaidas_user`
--

DROP TABLE IF EXISTS `recaidas_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recaidas_user` (
  `id_juncao_vicio_rec` int NOT NULL AUTO_INCREMENT,
  `id_vicio_user` int NOT NULL,
  `id_recaidas` int NOT NULL,
  PRIMARY KEY (`id_juncao_vicio_rec`),
  KEY `fk_vicio_user_recaidas_idx` (`id_vicio_user`),
  KEY `fk_recaidas_idx` (`id_recaidas`),
  CONSTRAINT `fk_recaidas` FOREIGN KEY (`id_recaidas`) REFERENCES `recaidas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_vicio_user_recaidas` FOREIGN KEY (`id_vicio_user`) REFERENCES `vicios_do_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recaidas_user`
--

LOCK TABLES `recaidas_user` WRITE;
/*!40000 ALTER TABLE `recaidas_user` DISABLE KEYS */;
INSERT INTO `recaidas_user` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `recaidas_user` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `fk_vicio_idx` (`id_vicio`),
  CONSTRAINT `fk_vicio` FOREIGN KEY (`id_vicio`) REFERENCES `vicios` (`id`)
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

-- Dump completed on 2023-09-14 12:50:11
