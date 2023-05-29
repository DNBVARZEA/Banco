CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `Autores_id` varchar(255) NOT NULL,
  PRIMARY KEY (`Autores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES ('  Machado de Assis'),(' Machado de Assis'),('Aluísio Azevedo'),('George Orwell'),('Graciliano Ramos'),('J.D. Salinger'),('J.K. Rowling'),('J.R.R. Tolkien'),('João Guimarães Rosa'),('John Green'),('Machado de Assis'),('Mário de Andrade'),('Rick Riordan');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoras` (
  `Editoras_id` varchar(255) NOT NULL,
  PRIMARY KEY (`Editoras_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES ('  Penguin Companhia'),(' Companhia Editora Nacional'),(' Intrínseca'),(' Penguin Companhia'),('Companhia das Letras'),('Companhia Editora Nacional'),('Intrínseca'),('Little, Brown and Company'),('Martin Claret'),('Martins Fontes'),('Nova Fronteira'),('Penguin Companhia'),('Rocco');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `livros_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `ano_publicacao` int DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`livros_id`),
  KEY `Autor` (`Autor`),
  KEY `Editora` (`Editora`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`Autor`) REFERENCES `autores` (`Autores_id`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`Editora`) REFERENCES `editoras` (`Editoras_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'A Culpa é das Estrelas','John Green','Intrínseca',2012,'978-85-8057-346-6'),(2,'Harry Potter e a Pedra Filosofal','J.K. Rowling','Rocco',1997,'978-85-3251-101-0'),(3,'O Senhor dos Anéis: A Sociedade do Anel','J.R.R. Tolkien','Martins Fontes',1954,'978-85-3360-314-9'),(4,'The Catcher in the Rye','J.D. Salinger','Little, Brown and Company',1951,'978-03-1676-948-8'),(5,'1984','George Orwell','Companhia Editora Nacional',1949,'978-85-2210-616-9'),(6,'Percy Jackson e o Ladrão de Raios','Rick Riordan','Intrínseca',2005,'978-85-9807-835-5'),(7,'Grande Sertão: Veredas','João Guimarães Rosa','Nova Fronteira',1956,'978-85-2092-325-1'),(8,'Memórias Póstumas de Brás Cubas','Machado de Assis','Companhia das Letras',1881,'978-85-3591-066-3'),(9,'Vidas Secas','Graciliano Ramos','Companhia Editora Nacional',1938,'978-85-7232-697-2'),(10,'O Alienista','Machado de Assis','Martin Claret',1882,'978-85-7232-742-9'),(11,'O Cortiço','Aluísio Azevedo','Penguin Companhia',1890,'978-85-7902-704-8'),(12,'Dom Casmurro','Machado de Assis','Penguin Companhia',1899,'978-85-8386-209-3'),(13,'Macunaíma','Mário de Andrade','Companhia Editora Nacional',1928,'978-85-0301-230-2');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 17:33:30
