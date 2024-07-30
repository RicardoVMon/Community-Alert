CREATE DATABASE  IF NOT EXISTS `communityalert` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `communityalert`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: communityalert
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `cantones`
--

DROP TABLE IF EXISTS `cantones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cantones` (
  `id_canton` int(11) NOT NULL,
  `nombre_canton` varchar(50) NOT NULL,
  `banner` varchar(255) DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_canton`),
  KEY `fk_cantones_provincias` (`id_provincia`),
  CONSTRAINT `fk_cantones_provincias` FOREIGN KEY (`id_provincia`) REFERENCES `provincias` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantones`
--

LOCK TABLES `cantones` WRITE;
/*!40000 ALTER TABLE `cantones` DISABLE KEYS */;
INSERT INTO `cantones` VALUES (1,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(2,'Escazú','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(3,'Desamparados','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(4,'Puriscal','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(5,'Tarrazú','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(6,'Aserrí','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(7,'Mora','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(8,'Goicoechea','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(9,'Santa Ana','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(10,'Alajuelita','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(11,'Vázquez De Coronado','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(12,'Acosta','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(13,'Tibás','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(14,'Moravia','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(15,'Montes De Oca','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(16,'Turrubares','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(17,'Dota','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(18,'Curridabat','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(19,'Pérez Zeledón','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(20,'León Cortés Castro','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',1),(21,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(22,'San Ramón','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(23,'Grecia','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(24,'San Mateo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(25,'Atenas','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(26,'Naranjo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(27,'Palmares','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(28,'Poás','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(29,'Orotina','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(30,'San Carlos','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(31,'Zarcero','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(32,'Sarchí','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(33,'Upala','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(34,'Los Chiles','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(35,'Guatuso','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(36,'Río Cuarto','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',2),(37,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(38,'Paraíso','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(39,'La Unión','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(40,'Jiménez','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(41,'Turrialba','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(42,'Alvarado','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(43,'Oreamuno','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(44,'El Guarco','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',3),(45,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(46,'Barva','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(47,'Santo Domingo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(48,'Santa Barbara','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(49,'San Rafael','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(50,'San Isidro','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(51,'Belén','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(52,'Flores','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(53,'San Pablo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(54,'Sarapiquí','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',4),(55,'Liberia','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(56,'Nicoya','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(57,'Santa Cruz','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(58,'Bagaces','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(59,'Carrillo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(60,'Cañas','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(61,'Abangares','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(62,'Tilarán','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(63,'Nandayure','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(64,'La Cruz','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(65,'Hojancha','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',5),(66,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(67,'Esparza','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(68,'Buenos Aires','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(69,'Montes De Oro','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(70,'Osa','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(71,'Quepos','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(72,'Golfito','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(73,'Coto Brus','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(74,'Parrita','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(75,'Corredores','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(76,'Garabito','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',6),(77,'Central','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7),(78,'Pococí','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7),(79,'Siquirres','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7),(80,'Talamanca','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7),(81,'Matina','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7),(82,'Guácimo','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',7);
/*!40000 ALTER TABLE `cantones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriapublicacion`
--

DROP TABLE IF EXISTS `categoriapublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriapublicacion` (
  `id_categoria_publicacion` int(11) NOT NULL,
  `nombre_categoria_publicacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriapublicacion`
--

LOCK TABLES `categoriapublicacion` WRITE;
/*!40000 ALTER TABLE `categoriapublicacion` DISABLE KEYS */;
INSERT INTO `categoriapublicacion` VALUES (1,'Prueba'),(2,'Terremoto');
/*!40000 ALTER TABLE `categoriapublicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` text NOT NULL,
  `fecha` datetime NOT NULL,
  `id_publicacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentarios_publicaciones` (`id_publicacion`),
  KEY `fk_comentarios_usuarios` (`id_usuario`),
  CONSTRAINT `fk_comentarios_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_comentarios_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distritos`
--

DROP TABLE IF EXISTS `distritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distritos` (
  `id_distrito` int(11) NOT NULL,
  `nombre_distrito` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `banner` varchar(255) NOT NULL DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  `icono` varchar(255) DEFAULT NULL,
  `id_canton` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_distrito`,`nombre_distrito`,`banner`),
  KEY `fk_distritos_cantones` (`id_canton`),
  CONSTRAINT `fk_distritos_cantones` FOREIGN KEY (`id_canton`) REFERENCES `cantones` (`id_canton`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distritos`
--

LOCK TABLES `distritos` WRITE;
/*!40000 ALTER TABLE `distritos` DISABLE KEYS */;
INSERT INTO `distritos` VALUES (1,'Carmen',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(2,'Merced',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(3,'Hospital',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(4,'Catedral',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(5,'Zapote',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(6,'San Francisco De Dos Rios',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(7,'Uruca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(8,'Mata Redonda',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(9,'Pavas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(10,'Hatillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(11,'San Sebastián',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,1),(12,'Escazú',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,2),(13,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,2),(14,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,2),(15,'Desamparados',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(16,'San Miguel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(17,'San Juan De Dios',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(18,'San Rafael Arriba',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(19,'San Rafael Abajo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(20,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(21,'Frailes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(22,'Patarra',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(23,'San Cristobal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(24,'Rosario',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(25,'Damas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(26,'Gravilias',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(27,'Los Guido',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,3),(28,'Santiago',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(29,'Mercedes Sur',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(30,'Barbacoas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(31,'Grifo Alto',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(32,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(33,'Candelarita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(34,'Desamparaditos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(35,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(36,'Chires',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,4),(37,'San Marcos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,5),(38,'San Lorenzo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,5),(39,'San Carlos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,5),(40,'Aserrí',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(41,'Tarbaca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(42,'Vuelta De Jorco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(43,'San Gabriel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(44,'Legua',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(45,'Monterrey',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(46,'Salitrillos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,6),(47,'Colón',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(48,'Guayabo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(49,'Tabarcia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(50,'Piedras Negras',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(51,'Picagres',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(52,'Jaris',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,7),(53,'Guadalupe',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(54,'San Francisco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(55,'Calle Blancos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(56,'Mata De Platano',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(57,'Ipís',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(58,'Rancho Redondo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(59,'Purral',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,8),(60,'Santa Ana',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(61,'Salitral',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(62,'Pozos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(63,'Uruca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(64,'Piedades',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(65,'Brasil',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,9),(66,'Alajuelita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,10),(67,'San Josecito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,10),(68,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,10),(69,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,10),(70,'San Felipe',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,10),(71,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,11),(72,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,11),(73,'Dulce Nombre De Jesus',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,11),(74,'Patalillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,11),(75,'Cascajal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,11),(76,'San Ignacio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,12),(77,'Guaitil',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,12),(78,'Palmichal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,12),(79,'Cangrejal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,12),(80,'Sabanillas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,12),(81,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,13),(82,'Cinco Esquinas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,13),(83,'Anselmo Llorente',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,13),(84,'Leon Xiii',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,13),(85,'Colima',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,13),(86,'San Vicente',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,14),(87,'San Jeronimo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,14),(88,'La Trinidad',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,14),(89,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,15),(90,'Sabanilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,15),(91,'Mercedes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,15),(92,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,15),(93,'San Pablo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,16),(94,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,16),(95,'San Juan De Mata',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,16),(96,'San Luis',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,16),(97,'Carara',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,16),(98,'Santa María',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,17),(99,'Jardin',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,17),(100,'Copey',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,17),(101,'Curridabat',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,18),(102,'Granadilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,18),(103,'Sanchez',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,18),(104,'Tirrases',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,18),(105,'San Isidro De El General',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(106,'El General',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(107,'Daniel Flores',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(108,'Rivas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(109,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(110,'Platanares',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(111,'Pejibaye',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(112,'Cajon',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(113,'Baru',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(114,'Rio Nuevo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(115,'Páramo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,19),(116,'San Pablo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(117,'San Andres',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(118,'Llano Bonito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(119,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(120,'Santa Cruz',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(121,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,20),(122,'Alajuela',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(123,'San José',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(124,'Carrizal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(125,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(126,'Guácima',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(127,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(128,'Sabanilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(129,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(130,'Rio Segundo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(131,'Desamparados',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(132,'Turrucares',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(133,'Tambor',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(134,'Garita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(135,'Sarapiquí',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,21),(136,'San Ramón',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(137,'Santiago',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(138,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(139,'Piedades Norte',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(140,'Piedades Sur',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(141,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(142,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(143,'Angeles',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(144,'Alfaro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(145,'Volio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(146,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(147,'Zapotal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(148,'Peñas Blancas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(149,'San Lorenzo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,22),(150,'Grecia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(151,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(152,'San José',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(153,'San Roque',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(154,'Tacares',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(155,'Rio Cuarto',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(156,'Puente De Piedra',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(157,'Bolivar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,23),(158,'San Mateo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,24),(159,'Desmonte',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,24),(160,'Jesús María',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,24),(161,'Labrador',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,24),(162,'Atenas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(163,'Jesús',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(164,'Mercedes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(165,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(166,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(167,'San José',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(168,'Santa Eulalia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(169,'Escobal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,25),(170,'Naranjo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(171,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(172,'San Miguel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(173,'Palmitos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(174,'El Rosario',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(175,'San José',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(176,'Cirrí Sur',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(177,'San Jerónimo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,26),(178,'Palmares',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(179,'Zaragoza',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(180,'Buenos Aires',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(181,'Santiago',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(182,'Candelaria',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(183,'Esquipulas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(184,'La Granja',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,27),(185,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,28),(186,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,28),(187,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,28),(188,'Carrillos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,28),(189,'Sabana Redonda',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,28),(190,'Orotina',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,29),(191,'El Mastate',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,29),(192,'Hacienda Vieja',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,29),(193,'Coyolar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,29),(194,'La Ceiba',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,29),(195,'Quesada',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(196,'Florencia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(197,'Buenavista',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(198,'Aguas Zarcas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(199,'Venecia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(200,'Pital',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(201,'La Fortuna',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(202,'La Tigra',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(203,'La Palmera',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(204,'Venado',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(205,'Cutris',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(206,'Monterrey',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(207,'Pocosol',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,30),(208,'Zarcero',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(209,'Laguna',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(210,'Tapesco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(211,'Guadalupe',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(212,'Palmira',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(213,'Zapote',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(214,'Brisas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,31),(215,'Sarchí Norte',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,32),(216,'Sarchí Sur',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,32),(217,'Toro Amarillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,32),(218,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,32),(219,'Rodriguez',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,32),(220,'Upala',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(221,'Aguas Claras',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(222,'San José o Pizote',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(223,'Bijagua',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(224,'Delicias',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(225,'Dos Rios',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(226,'Yolillal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(227,'Canalete',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,33),(228,'Los Chiles',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,34),(229,'Caño Negro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,34),(230,'El Amparo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,34),(231,'San Jorge',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,34),(232,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,35),(233,'Buenavista',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,35),(234,'Cote',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,35),(235,'Katira',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,35),(236,'Río Cuarto',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,36),(237,'Santa Rita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,36),(238,'Santa Isabel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,36),(239,'Oriental',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(240,'Occidental',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(241,'Carmen',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(242,'San Nicolás',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(243,'Aguacaliente o San Francisco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(244,'Guadalupe o Arenilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(245,'Corralillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(246,'Tierra Blanca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(247,'Dulce Nombre',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(248,'Llano Grande',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(249,'Quebradilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,37),(250,'Paraiso',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,38),(251,'Santiago',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,38),(252,'Orosi',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,38),(253,'Cachí',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,38),(254,'Llanos de Santa Lucía',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,38),(255,'Tres Rios',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(256,'San Diego',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(257,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(258,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(259,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(260,'Dulce Nombre',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(261,'San Ramón',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(262,'Rio Azul',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,39),(263,'Juan Viñas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,40),(264,'Tucurrique',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,40),(265,'Pejibaye',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,40),(266,'Turrialba',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(267,'La Suiza',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(268,'Peralta',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(269,'Santa Cruz',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(270,'Santa Teresita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(271,'Pavones',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(272,'Tuis',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(273,'Tayutic',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(274,'Santa Rosa',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(275,'Tres Equis',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(276,'La Isabel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(277,'Chirripó',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,41),(278,'Pacayas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,42),(279,'Cervantes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,42),(280,'Capellades',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,42),(281,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,43),(282,'Cot',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,43),(283,'Potrero Cerrado',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,43),(284,'Cipreses',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,43),(285,'Santa Rosa',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,43),(286,'El Tejar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,44),(287,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,44),(288,'Tobosi',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,44),(289,'Patio De Agua',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,44),(290,'Heredia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,45),(291,'Mercedes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,45),(292,'San Francisco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,45),(293,'Ulloa',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,45),(294,'Varablanca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,45),(295,'Barva',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(296,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(297,'San Pablo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(298,'San Roque',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(299,'Santa Lucía',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(300,'San José de la Montaña','La mejor comunidad de Barva!','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,46),(301,'Santo Domingo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(302,'San Vicente',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(303,'San Miguel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(304,'Paracito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(305,'Santo Tomás',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(306,'Santa Rosa',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(307,'Tures',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(308,'Para',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,47),(309,'Santa Bárbara',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(310,'San Pedro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(311,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(312,'Jesús',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(313,'Santo Domingo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(314,'Puraba',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,48),(315,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,49),(316,'San Josecito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,49),(317,'Santiago',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,49),(318,'Los Ángeles',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,49),(319,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,49),(320,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,50),(321,'San José',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,50),(322,'Concepción',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,50),(323,'San Francisco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,50),(324,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,51),(325,'La Ribera',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,51),(326,'La Asuncion',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,51),(327,'San Joaquín',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,52),(328,'Barrantes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,52),(329,'Llorente',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,52),(330,'San Pablo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,53),(331,'Rincon De Sabanilla',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,53),(332,'Puerto Viejo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,54),(333,'La Virgen',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,54),(334,'Las Horquetas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,54),(335,'Llanuras Del Gaspar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,54),(336,'Cureña',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,54),(337,'Liberia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,55),(338,'Nacascolo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,55),(339,'Cañas Dulces',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,55),(340,'Mayorga',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,55),(341,'Curubande',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,55),(342,'Nicoya',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(343,'Mansión',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(344,'San Antonio',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(345,'Quebrada Honda',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(346,'Sámara',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(347,'Nosara',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(348,'Belén De Nosarita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,56),(349,'Santa Cruz',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(350,'Bolson',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(351,'Veintisiete de Abril',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(352,'Tempate',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(353,'Cartagena',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(354,'Cuajiniquil',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(355,'Diria',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(356,'Cabo Velas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(357,'Tamarindo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,57),(358,'Bagaces',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,58),(359,'La Fortuna',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,58),(360,'Mogote',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,58),(361,'Rio Naranjo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,58),(362,'Filadelfia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,59),(363,'Palmira',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,59),(364,'Sardinal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,59),(365,'Belen',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,59),(366,'Cañas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,60),(367,'Palmira',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,60),(368,'San Miguel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,60),(369,'Bebedero',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,60),(370,'Porozal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,60),(371,'Las Juntas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,61),(372,'Sierra',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,61),(373,'San Juan',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,61),(374,'Colorado',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,61),(375,'Tilarán',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(376,'Quebrada Grande',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(377,'Tronadora',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(378,'Santa Rosa',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(379,'Líbano',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(380,'Tierras Morenas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(381,'Arenal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(382,'Cabeceras',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,62),(383,'Carmona',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(384,'Santa Rita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(385,'Zapotal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(386,'San Pablo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(387,'Porvenir',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(388,'Bejuco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,63),(389,'La Cruz',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,64),(390,'Santa Cecilia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,64),(391,'La Garita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,64),(392,'Santa Elena',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,64),(393,'Hojancha',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,65),(394,'Monte Romo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,65),(395,'Puerto Carrillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,65),(396,'Huacas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,65),(397,'Puntarenas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(398,'Pitahaya',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(399,'Chomes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(400,'Lepanto',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(401,'Paquera',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(402,'Manzanillo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(403,'Guacimal',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(404,'Barranca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(405,'Monte Verde',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(406,'Isla Del Coco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(407,'Cóbano',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(408,'Chacarita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(409,'Chira',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(410,'Acapulco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(411,'El Roble',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(412,'Arancibia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,66),(413,'Espíritu Santo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(414,'San Juan Grande',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(415,'Macacona',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(416,'San Rafael',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(417,'San Jerónimo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(418,'Caldera',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,67),(419,'Buenos Aires',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(420,'Volcán',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(421,'Potrero Grande',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(422,'Boruca',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(423,'Pilas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(424,'Colinas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(425,'Changuena',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(426,'Biolley',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(427,'Brunka',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,68),(428,'Miramar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,69),(429,'La Unión',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,69),(430,'San Isidro',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,69),(431,'Puerto Cortés',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(432,'Palmar',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(433,'Sierpe',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(434,'Bahía Ballena',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(435,'Piedras Blancas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(436,'Bahía Drake',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,70),(437,'Quepos',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,71),(438,'Savegre',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,71),(439,'Naranjito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,71),(440,'Golfito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,72),(441,'Puerto Jiménez',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,72),(442,'Guaycara',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,72),(443,'Pavón',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,72),(444,'San Vito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,73),(445,'Sabalito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,73),(446,'Aguabuena',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,73),(447,'Limoncito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,73),(448,'Pittier',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,73),(449,'Parrita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,74),(450,'Corredor',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,75),(451,'La Cuesta',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,75),(452,'Canoas',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,75),(453,'Laurel',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,75),(454,'Jacó',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,76),(455,'Tárcoles',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,76),(456,'Limón',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,77),(457,'Valle La Estrella',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,77),(458,'Rio Blanco',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,77),(459,'Matama',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,77),(460,'Guapiles',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(461,'Jiménez',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(462,'Rita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(463,'Roxana',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(464,'Cariari',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(465,'Colorado',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(466,'La Colonia',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,78),(467,'Siquirres',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(468,'Pacuarito',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(469,'Florida',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(470,'Germania',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(471,'El Cairo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(472,'Alegría',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,79),(473,'Bratsi',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,80),(474,'Sixaola',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,80),(475,'Cahuita',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,80),(476,'Telire',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,80),(477,'Matina',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,81),(478,'Batán',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,81),(479,'Carrandi',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,81),(480,'Guácimo',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,82),(481,'Mercedes',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,82),(482,'Pocora',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,82),(483,'Rio Jiménez',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,82),(484,'Duacari',NULL,'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',NULL,82);
/*!40000 ALTER TABLE `distritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro'),(4,'No decir');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_publicacion`),
  KEY `fk_likes_publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_likes_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_likes_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `id_provincia` int(11) NOT NULL,
  `nombre_provincia` varchar(50) NOT NULL,
  `banner` varchar(255) DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'San José','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(2,'Alajuela','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(3,'Cartago','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(4,'Heredia','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(5,'Guanacaste','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(6,'Puntarenas','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop'),(7,'Limón','https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicaciones` (
  `id_publicacion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria_publicacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `fk_publicaciones_usuarios` (`id_usuario`),
  KEY `fk_publicaciones_categoria` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_categoria` FOREIGN KEY (`id_categoria_publicacion`) REFERENCES `categoriapublicacion` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,'Inundación en el centro de SJM','Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae similique architecto harum ea veniam voluptatem suscipit necessitatibus velit dolorem, tenetur, illo dolorum repellendus. Aliquid, nihil odio. Nam, reprehenderit tempore illo quis mollitia libero qui rem ullam facilis sint tenetur, exercitationem ducimus? Aut facilis quo molestias iure alias voluptate unde eaque!','2028-11-03',9,1),(2,'Prueba','Prueba','2024-07-25',9,1),(3,'ACCIDENTE SOCORRO','Nos acabamos de accidentar en la plaza central, por favor llamen al 911','2024-07-25',9,1),(4,'Prueba','Prueba','2024-07-25',14,1),(5,'PRUEBA2','PRUEBA2','2024-07-25',14,1),(6,'PRUEBA3','PRUEBA3','2024-07-25',14,1),(7,'PRUEBA4','PRUEBA4','2024-07-25',14,1),(9,'PRUEBA5','PRUEBA5','2024-07-25',14,1),(10,'PRUEBA POCORA','PRUEBA POCORA','2024-07-25',11,1),(11,'SOY RICARDO Y CREE UNA NOTICIA EN BARVA','Prueba','2024-07-26',9,1),(12,'PRUEBA6','6','2024-07-26',9,1),(21,'PRUEBA','PRUEBA','2024-07-26',9,1),(22,'prueba','comunidad','2024-07-26',9,1),(23,'prueba','prueba','2024-07-26',9,1),(24,'1','2','2024-07-26',9,1),(25,'Q','R','2024-07-26',9,1),(26,'1','2222222222222222222','2024-07-26',9,1),(27,'qqqqqqqqqq','rrrrrrrrrrr','2024-07-26',9,1),(28,'4','4','2024-07-26',9,1),(29,'12312312','123123123','2024-07-26',9,1),(30,'DEFINITIVO','DEFINITIVO','2024-07-26',9,1),(31,'123','123','2024-07-26',15,1),(32,'PRUEBA RAPIDA','RAPIDA','2024-07-26',9,1),(33,'pruebacomn','pruebacomn','2024-07-26',9,1),(34,'123123','12312321','2024-07-26',9,1),(35,'4513312','413123','2024-07-26',9,1),(36,'titulo','terremoto','2024-07-26',9,2),(37,'412312312313','5123123123','2024-07-26',9,2),(38,'faffafaf','fafafaf','2024-07-26',9,1),(39,'PRUEBA NUEVA','ESTOY PROBANDO','2024-07-26',9,2),(40,'PRUEBA RAPIDA','RAPIDIN','2024-07-26',9,1),(41,'ESTA PASANDO UN TERREMOTO','AYUDA','2024-07-26',9,2),(42,'RAPIDA','POST RAPIDO','2024-07-26',9,1),(43,'PRUEBA NUEVA','PRUEBA NUEVA','2024-07-28',9,1),(44,'TERREMOTO','COMO LA CANCION','2024-07-28',9,2),(45,'PRUEBA RAPIDA','SE CAE LA CASA','2024-07-28',9,2),(46,'PRUEBA SANTA LUCIA','SANTA LUCIAAAAA','2024-07-28',17,2),(47,'PRUEBA NUEVA 10','..........','2024-07-29',9,1),(48,'PRUEBA DESPUES MERGE','MERGEEEE','2024-07-29',9,2),(49,'PRUEBA EN DEV','DEVVVVV','2024-07-29',18,2),(50,'PRUEBA EN DEV 2','DEV','2024-07-29',18,1),(51,'Prueba Merge','teeest','2024-07-30',9,2),(53,'Test despues de cambiar rutas','aaa','2024-07-30',9,1);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `nombre_rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Usuario');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_distrito`
--

DROP TABLE IF EXISTS `usuario_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_distrito` (
  `id_usuario` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `fecha_seguimiento` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`,`id_distrito`),
  KEY `fk_usuario` (`id_usuario`),
  KEY `fk_distrito` (`id_distrito`),
  CONSTRAINT `fk_usuario_distrito_distritos` FOREIGN KEY (`id_distrito`) REFERENCES `distritos` (`id_distrito`),
  CONSTRAINT `fk_usuario_distrito_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_distrito`
--

LOCK TABLES `usuario_distrito` WRITE;
/*!40000 ALTER TABLE `usuario_distrito` DISABLE KEYS */;
INSERT INTO `usuario_distrito` VALUES (9,299,'2024-07-26'),(9,300,'2024-07-28'),(9,482,'2024-07-25'),(15,216,'2024-07-26'),(15,300,'2024-07-26'),(16,301,'2024-07-28'),(17,299,'2024-07-28'),(17,300,'2024-07-28'),(18,295,'2024-07-29'),(18,300,'2024-07-29');
/*!40000 ALTER TABLE `usuario_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(9) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `descripcion` text DEFAULT 'Estoy usando Community Alert!',
  `icono` varchar(255) NOT NULL,
  `fecha_ingreso` datetime NOT NULL DEFAULT current_timestamp(),
  `id_role` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuarios_roles` (`id_role`),
  KEY `fk_usuarios_distritos` (`id_distrito`),
  KEY `fk_usuarios_genero` (`id_genero`),
  CONSTRAINT `fk_usuarios_genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (9,'402620226','RICARDO AARON VARGAS MONTERO','ricardovm2803@gmail.com',1,'123','HOLAA','https://static.vecteezy.com/system/resources/previews/007/409/979/non_2x/people-icon-design-avatar-icon-person-icons-people-icons-are-set-in-trendy-flat-style-user-icon-set-vector.jpg','2024-07-25 11:44:38',2,300,_binary ''),(10,'401230123','HILDA MARIA VILLALOBOS VILLALOBOS','hilda@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 11:44:38',2,5,_binary ''),(11,'401670123','ERICK RICARDO QUIROS GUTIERREZ','Erick@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 11:44:38',2,482,_binary ''),(12,'402620227','JOSE DAVID PEREZ SOLIS','david@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 11:45:13',2,325,_binary ''),(13,'402620228','VALERIA ALFARO VARGAS','valeria@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 14:55:24',2,252,_binary ''),(14,'401540677','RONY GERARDO AGUILAR GOMEZ','rony@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 19:19:51',2,295,_binary ''),(15,'401670876','RANDY ALBERTO MORA FONSECA','randy@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-26 16:16:44',2,216,_binary ''),(16,'401760123','MARIANNELA MATARRITA SOTO','mari@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-28 22:53:56',2,301,_binary ''),(17,'401230242','YAMILETH DEL CARMEN GONZALEZ SOTO','yami',1,'123','Estoy usando Community Alert!','','2024-07-28 22:55:24',2,299,_binary ''),(18,'402300855','FIORELLA HERNANDEZ MIRANDA','test@example.us',2,'123','Estoy usando Community Alert!','','2024-07-29 12:46:26',2,295,_binary ''),(19,'117310079','JESUS DANIEL VEGA MARVEZ','jvega10079@ufide.ac.cr',1,'123','Estoy usando Community Alert!','https://static.vecteezy.com/system/resources/previews/007/409/979/non_2x/people-icon-design-avatar-icon-person-icons-people-icons-are-set-in-trendy-flat-style-user-icon-set-vector.jpg','2024-07-25 11:55:14',1,122,_binary '');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'communityalert'
--

--
-- Dumping routines for database 'communityalert'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizarComunidadAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarComunidadAdmin`(`pId` int(11), `pDescripcion` text, `pBanner` varchar(225), `pIcono` varchar(225))
BEGIN
UPDATE communityalert.distritos
	SET 
    descripcion = IF(pDescripcion != '', pDescripcion, descripcion),
	banner = IF(pBanner != '', pBanner, banner),
	icono = IF(pIcono != '', pIcono, icono)
	WHERE id_distrito = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarEstadoUsuarioAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarEstadoUsuarioAdmin`(`pId` int(11))
BEGIN
    UPDATE communityalert.usuarios
    SET estado = NOT estado 
    WHERE id_usuario = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarIdDistrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarIdDistrito`()
BEGIN

	SELECT  id_distrito, nombre_distrito
	FROM 	`communityalert`.`distritos`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarIdGenero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarIdGenero`()
BEGIN

	SELECT  id_genero, nombre_genero
	FROM 	`communityalert`.`generos`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuario`(`pId_usuario` INT)
BEGIN

	SELECT  `id_usuario`,
			`cedula`,
			`nombre_usuario`,
			`email`,
			`id_genero`,
            U.`descripcion`,
            U.`icono`,
			U.`id_distrito`,
            R.`nombre_distrito`
	FROM 	`communityalert`.`usuarios` U
    INNER JOIN `communityalert`.`distritos` R ON U.id_distrito = R.id_distrito
    WHERE `id_usuario` = `pId_usuario`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuarioComentarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuarioComentarios`(pId_usuario INT)
BEGIN

    SELECT COUNT(*) 'cantidad'
    FROM comentarios
    WHERE id_usuario = pId_usuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuarioPosts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuarioPosts`(pId_usuario INT)
BEGIN

    SELECT COUNT(*) 'cantidad'
    FROM publicaciones
    WHERE id_usuario = pId_usuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dejarDeSeguirComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dejarDeSeguirComunidad`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
		DELETE FROM communityalert.usuario_distrito
        WHERE id_usuario = pIdUsuario
        AND id_distrito = pIdComunidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditarPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarPerfil`(`pId_usuario` int,`pCedula` varchar(9), `pNombre_usuario` varchar(50),
					`pEmail` varchar(50),`pGenero` INT, `pDescripcion` varchar(50), `pIcono` varchar(255), `pId_distrito` int)
BEGIN

	UPDATE 	usuarios
    SET 	cedula = `pCedula`,
			nombre_usuario = `pNombre_usuario`,
            email = `pEmail`,
            id_genero = `pGenero`,
			descripcion = `pDescripcion`,
			icono = `pIcono`,
			id_distrito = `pId_distrito`
	WHERE 	id_usuario = `pId_usuario`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarComentarioPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarComentarioPublicacionAdmin`(`pId` int(11))
BEGIN
	DELETE FROM communityalert.comentarios
    WHERE id_comentario = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPublicacionAdmin`(`pId` int(11))
BEGIN
	DELETE FROM communityalert.comentarios 
    WHERE id_publicacion = pId;
    
	DELETE FROM communityalert.publicaciones 
    WHERE id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `loginUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginUsuario`(`pCedula` varchar(9), `pPassword` varchar(50))
BEGIN
		SELECT u.id_usuario, u.nombre_usuario, u.email, u.descripcion, u.icono, u.fecha_ingreso, u.id_distrito, d.nombre_distrito, u.id_role
        FROM communityalert.usuarios u
        INNER JOIN communityalert.distritos d ON u.id_distrito = d.id_distrito
        WHERE u.cedula = pCedula
        AND u.password = pPassword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCantones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCantones`(`pIdProvincia` int(11))
BEGIN
	SELECT * FROM communityalert.cantones
    WHERE id_provincia = `pIdProvincia`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCategorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCategorias`()
BEGIN
    SELECT id_categoria_publicacion, nombre_categoria_publicacion
    FROM communityalert.categoriapublicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCedula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCedula`(`pCedula` varchar(9))
BEGIN
		SELECT cedula
        FROM communityalert.usuarios
        WHERE cedula = pCedula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComentariosPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComentariosPublicacionAdmin`(`pId` int(11))
BEGIN
	SELECT c.id_publicacion, c.id_comentario, c.contenido, c.fecha, u.nombre_usuario, u.icono
    FROM communityalert.comentarios c
    JOIN communityalert.usuarios u
    ON c.id_usuario = u.id_usuario
    WHERE id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadAdmin`(`pId` int(11))
BEGIN

	SELECT id_distrito, nombre_distrito, descripcion, banner, icono
    FROM communityalert.distritos
    WHERE id_distrito = pId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadesAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadesAdmin`()
BEGIN
SELECT d.id_distrito, p.nombre_provincia, c.nombre_canton, d.nombre_distrito, COUNT(u.id_usuario) As cantidadUsuarios
FROM communityalert.provincias p 
JOIN communityalert.cantones c ON p.id_provincia = c.id_provincia
JOIN communityalert.distritos d ON c.id_canton = d.id_canton
LEFT JOIN communityalert.usuarios u ON u.id_distrito = d.id_distrito
GROUP BY p.nombre_provincia, c.nombre_canton, d.nombre_distrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadesSeguidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadesSeguidas`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
		SELECT * FROM communityalert.usuario_distrito
        WHERE id_usuario = pIdUsuario
        AND id_distrito = pIdComunidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerDistritos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerDistritos`(`pIdCanton` int(11))
BEGIN
	SELECT * FROM communityalert.distritos
    WHERE id_canton = `pIdCanton`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerIdDistrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerIdDistrito`(`pNombreProvincia` varchar(50), `pNombreCanton` varchar(50), `pNombreDistrito` varchar(50))
BEGIN
	SELECT id_distrito
	FROM communityalert.distritos d
	INNER JOIN communityalert.cantones c ON d.id_canton = c.id_canton
    INNER JOIN communityalert.provincias p ON c.id_provincia = p.id_provincia
    WHERE p.nombre_provincia = pNombreProvincia
    AND c.nombre_canton = pNombreCanton
    AND d.nombre_distrito = pNombreDistrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerInformacionComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerInformacionComunidad`(`pIdComunidad` int(11))
BEGIN
		SELECT nombre_distrito, descripcion, banner, icono
        FROM communityalert.distritos
        WHERE id_distrito = `pIdComunidad`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerNombreProvinciaCanton` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerNombreProvinciaCanton`(IN p_IdDistrito int)
BEGIN
	SELECT nombre_provincia, nombre_canton
    FROM distritos d
    INNER JOIN cantones c ON c.id_canton = d.id_canton
    INNER JOIN provincias p ON p.id_provincia = c.id_provincia
    WHERE d.id_distrito = p_IdDistrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerNoticia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerNoticia`(`pIdPublicacion` int(11))
BEGIN
    SELECT A.*, U.nombre_usuario, U.icono, c.nombre_categoria_publicacion
	FROM usuarios U
	INNER JOIN publicaciones A ON A.id_usuario = U.id_usuario
    INNER JOIN communityalert.categoriapublicacion c ON A.id_categoria_publicacion = c.id_categoria_publicacion
	WHERE A.id_publicacion = pIdPublicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerNoticiaSegunContenido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerNoticiaSegunContenido`(
	IN ptitulo VARCHAR(70),
    IN pcontenido VARCHAR(255),
    IN pusuario INT,
    IN pcategoria INT
)
BEGIN
	SELECT id_publicacion
    FROM communityalert.publicaciones
    WHERE titulo = ptitulo
    AND contenido = pcontenido
    AND id_usuario = pusuario
    AND id_categoria_publicacion = pcategoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPostsComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPostsComunidad`(`pIdComunidad` int(11))
BEGIN
		SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, c.nombre_categoria_publicacion, u.nombre_usuario, u.icono
		FROM communityalert.publicaciones p
		INNER JOIN communityalert.usuarios u ON u.id_usuario = p.id_usuario
		INNER JOIN communityalert.categoriapublicacion c ON c.id_categoria_publicacion = p.id_categoria_publicacion
		WHERE u.id_distrito = `pIdComunidad`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPostsComunidadesSeguidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPostsComunidadesSeguidas`(`pIdUsuario` int (11))
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, u.nombre_usuario, c.nombre_categoria_publicacion, u.icono, ud.id_distrito
	FROM communityalert.publicaciones p
	INNER JOIN communityalert.usuarios u ON p.id_usuario = u.id_usuario
	INNER JOIN communityalert.usuario_distrito ud ON ud.id_distrito = u.id_distrito
	INNER JOIN communityalert.categoriapublicacion c ON p.id_categoria_publicacion = c.id_categoria_publicacion
	WHERE ud.id_usuario = pIdUsuario
	ORDER BY p.fecha ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerProvincias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerProvincias`()
BEGIN
		SELECT *
        FROM communityalert.provincias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPublicacionAdmin`(`pId` int(11))
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, u.nombre_usuario, u.icono
    FROM usuarios u JOIN publicaciones p ON u.id_usuario = p.id_usuario
    WHERE p.id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPublicacionesAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPublicacionesAdmin`()
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, COUNT(c.id_comentario) AS cantidadComentarios, cp.nombre_categoria_publicacion AS categoria
    FROM communityalert.publicaciones p
    LEFT JOIN communityalert.comentarios c
    ON p.id_publicacion = c.id_publicacion
    LEFT JOIN categoriapublicacion cp
    ON cp.id_categoria_publicacion = p.id_categoria_publicacion
    GROUP BY p.id_publicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerSeguidoresYFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerSeguidoresYFecha`(IN p_IdDistrito int)
BEGIN
    
    SELECT DATE(NOW()) as fecha, COUNT(*) as seguidores FROM usuario_distrito
    WHERE id_distrito = p_IdDistrito;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerUsuariosAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUsuariosAdmin`()
BEGIN
SELECT 
        u.estado, 
        u.id_usuario, 
        u.cedula, 
        u.nombre_usuario, 
        d.nombre_distrito,
        (SELECT COUNT(p.id_publicacion) 
         FROM communityalert.publicaciones p 
         WHERE p.id_usuario = u.id_usuario) AS cantidadPosts,
        (SELECT COUNT(DISTINCT c.id_comentario) 
         FROM communityalert.comentarios c 
         WHERE c.id_usuario = u.id_usuario) AS cantidadComentarios
    FROM 
        communityalert.usuarios u 
    JOIN 
        communityalert.distritos d ON u.id_distrito = d.id_distrito
    GROUP BY 
        u.estado, 
        u.id_usuario, 
        u.cedula, 
        u.nombre_usuario, 
        d.nombre_distrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PublicarNoticia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PublicarNoticia`(
    IN ptitulo VARCHAR(70),
    IN pcontenido VARCHAR(255),
    IN pusuario INT,
    IN pcategoria INT
)
BEGIN
    -- Insertar la información en la tabla publicaciones
    INSERT INTO publicaciones (titulo, contenido, fecha, id_usuario, id_categoria_publicacion)
    VALUES (ptitulo, pcontenido, DATE(NOW()), pusuario, pcategoria);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrarUsuario`(
				`pCedula` varchar(9), 
				`pNombre` varchar(50), 
                `pApellidos` varchar(50), 
                `pCorreo` varchar(50), 
                `pGenero` INT, 
                `pContrasennia` varchar(50), 
                `pDistrito` varchar(50))
BEGIN
			
	INSERT INTO communityalert.usuarios (`cedula`, `nombre_usuario`, `email`, `id_genero`, `password` ,`id_role`, `id_distrito`)
	VALUES (`pCedula`, CONCAT(`pNombre`, ' ', `pApellidos`), `pCorreo`, `pGenero`, `pContrasennia`, 2, `pDistrito`);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `seguirComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `seguirComunidad`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
	INSERT INTO communityalert.usuario_distrito (id_usuario, id_distrito, fecha_seguimiento)
    VALUES (`pIdUsuario`, `pIdComunidad`, DATE(NOW()));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-30  1:18:12
