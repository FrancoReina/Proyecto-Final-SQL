CREATE DATABASE  IF NOT EXISTS `gyg_fiacas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gyg_fiacas`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gyg_fiacas
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `ID_Envio` int NOT NULL AUTO_INCREMENT,
  `ID_Pedido` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Envio`),
  KEY `FK_Pedido` (`ID_Pedido`),
  CONSTRAINT `FK_Pedido` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,1,'Privado','Enviado'),(2,2,'Privado','Pendiente'),(3,3,'Privado','Pendiente'),(4,4,'Privado','Pendiente'),(5,5,'Privado','Pendiente'),(6,6,'Privado','Pendiente'),(7,7,'Privado','Pendiente'),(8,8,'Privado','Pendiente'),(9,9,'Retira','Pendiente'),(10,10,'Retira','Pendiente'),(11,11,'Retira','Pendiente'),(12,12,'Correo','Pendiente'),(13,13,'Correo','Enviado'),(14,14,'Correo','Enviado'),(15,15,'Correo','Enviado');
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pedido`
--

DROP TABLE IF EXISTS `log_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pedido` (
  `ID_Log` int NOT NULL AUTO_INCREMENT,
  `ID_Pedido` int DEFAULT NULL,
  `Accion` varchar(250) DEFAULT NULL,
  `Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Log`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pedido`
--

LOCK TABLES `log_pedido` WRITE;
/*!40000 ALTER TABLE `log_pedido` DISABLE KEYS */;
INSERT INTO `log_pedido` VALUES (1,0,'Nuevo pedido creado','2023-07-01 18:40:45');
/*!40000 ALTER TABLE `log_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_usuario`
--

DROP TABLE IF EXISTS `log_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_usuario` (
  `ID_Log` int NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int DEFAULT NULL,
  `Accion` varchar(50) DEFAULT NULL,
  `Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Log`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_usuario`
--

LOCK TABLES `log_usuario` WRITE;
/*!40000 ALTER TABLE `log_usuario` DISABLE KEYS */;
INSERT INTO `log_usuario` VALUES (1,1,'Usuario eliminado','2023-07-01 18:40:45');
/*!40000 ALTER TABLE `log_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_Pedido` int NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int NOT NULL,
  `ID_Producto` int NOT NULL,
  `Total` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`),
  KEY `FK_Usuario` (`ID_Usuario`),
  KEY `FK_Producto` (`ID_Producto`),
  CONSTRAINT `FK_Producto` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`ID_Producto`),
  CONSTRAINT `FK_Usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,1,179990,'2023-05-05'),(2,2,2,229995,'2023-05-06'),(3,3,3,177998,'2023-05-07'),(4,4,4,95992,'2023-05-08'),(5,5,5,89985,'2023-05-09'),(6,6,6,134997,'2023-05-10'),(7,7,7,83993,'2023-05-11'),(8,8,8,251996,'2023-05-12'),(9,9,9,123999,'2023-05-13'),(10,10,10,117998,'2023-05-14'),(11,11,11,69980,'2023-05-15'),(12,12,12,39990,'2023-05-16'),(13,13,13,149994,'2023-05-17'),(14,14,14,83988,'2023-05-18'),(15,15,15,56997,'2023-05-19'),(16,1,2,150,'2023-05-22'),(17,1,2,100,'2023-05-22');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Trigger_Before_Pedido` BEFORE INSERT ON `pedido` FOR EACH ROW BEGIN
    INSERT INTO Log_Pedido (ID_Pedido, Accion) VALUES (NEW.ID_Pedido, 'Nuevo pedido creado');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_Producto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio` int NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`ID_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Pantalla LED 32\"','Pantalla LED 32\" marca Samsung',17999,10),(2,'Celular Samsung A52','Celular Samsung A52 color negro',45999,5),(3,'Notebook HP 15\"','Notebook HP 15\" Core i5 8GB RAM',88999,2),(4,'Smartwatch Fitbit','Smartwatch Fitbit modelo Versa 2',11999,8),(5,'Auriculares Sony','Auriculares Sony inalÃ¡mbricos',5999,15),(6,'CÃ¡mara Canon EOS','CÃ¡mara Canon EOS 1500D',44999,3),(7,'Impresora HP','Impresora HP multifunciÃ³n',11999,7),(8,'Consola Xbox Series S','Consola Xbox Series S',62999,4),(9,'Heladera Whirlpool','Heladera Whirlpool no frost 400L',123999,1),(10,'Bicicleta MTB','Bicicleta MTB rodado 29\"',58999,2),(11,'Parrilla elÃ©ctrica','Parrilla elÃ©ctrica con regulador de temperatura',3499,20),(12,'Teclado Gamer','Teclado Gamer RGB mecÃ¡nico',3999,10),(13,'Monitor 27\"','Monitor LED 27\" 1080p',24999,6),(14,'Licuadora Philips','Licuadora Philips 800W',6999,12),(15,'Aspiradora Samsung','Aspiradora Samsung sin bolsa',18999,3),(16,'TV','TV 65 NEOQLED',500000,5);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `ID_Tarjeta` int NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Numero` varchar(50) NOT NULL,
  `Codigo_Seguridad` int DEFAULT NULL,
  `Fecha_Vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`ID_Tarjeta`),
  KEY `FK_Tarjeta_Usuario` (`ID_Usuario`),
  CONSTRAINT `FK_Tarjeta_Usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,1,'Visa','4539565875312675',123,'2023-05-05'),(2,2,'Mastercard','4539565875312676',456,'2023-05-06'),(3,3,'Visa','4539565875312677',789,'2023-05-07'),(4,4,'American Express','4539565875312678',321,'2023-05-08'),(5,5,'Visa','4539565875312679',987,'2023-05-09'),(6,6,'Mastercard','4539565875312680',654,'2023-05-10'),(7,7,'Visa','4539565875312681',345,'2023-05-11'),(8,8,'American Express','4539565875312682',789,'2023-05-12'),(9,9,'Mastercard','4539565875312683',456,'2023-05-13'),(10,10,'Visa','4539565875312684',123,'2023-05-14'),(11,11,'Mastercard','4539565875312685',321,'2023-05-15'),(12,12,'Visa','4539565875312686',789,'2023-05-16'),(13,13,'American Express','4539565875312687',456,'2023-05-17'),(14,14,'Visa','4539565875312688',987,'2023-05-18'),(15,15,'Mastercard','4539565875312689',123,'2023-05-19');
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID_Usuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Direccion` varchar(250) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'Mateo','Fernandez','mateo.fernandez@gmail.com','Calle Corrientes 5678 Cordoba','3515555678'),(3,'Valentina','Gonzalez','valentina.gonzalez@gmail.com','Calle Belgrano 910 Rosario','3415559101'),(4,'Tomas','Rodriguez','tomas.rodriguez@gmail.com','Av. 9 de Julio 1212 Mendoza','2615551212'),(5,'Camila','Perez','camila.perez@gmail.com','Calle Maipu 3434 San Juan','2645553434'),(6,'Agustin','Gomez','agustin.gomez@gmail.com','Calle San Martin 5656 Tucuman','3815555656'),(7,'Martina','Diaz','martina.diaz@gmail.com','Av. Pueyrredon 7878 Buenos Aires','115557878'),(8,'Santiago','Ortiz','santiago.ortiz@gmail.com','Calle Alvear 9090 Mendoza','2615559090'),(9,'Sofia','Castro','sofia.castro@gmail.com','Calle San Juan 1111 Rosario','3415551111'),(10,'Thiago','Luna','thiago.luna@gmail.com','Calle San Luis 2222 Neuquen','2995552222'),(11,'Lucia','Cabrera','lucia.cabrera@gmail.com','Calle Cordoba 3333 Buenos Aires','115553333'),(12,'Agustin','Flores','agustin.flores@gmail.com','Calle Santa Fe 4444 Santa Fe','3425554444'),(13,'Martina','Martinez','martina.martinez@gmail.com','Calle San Martin 5555 Cordoba','3515555555'),(14,'Joaquin','Sanchez','joaquin.sanchez@gmail.com','Calle Tucuman 6666 San Miguel de Tucuman','3815556666'),(15,'Victoria','Romero','victoria.romero@gmail.com','Calle Buenos Aires 7777 Buenos Aires','115557777'),(16,'Franco','Reina','franco.reina@gmail.com','av. Santa Fe 1234 Buenos Aires','1141257895');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Trigger_After_Usuario` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
    -- Registrar la acción en el log --
    INSERT INTO Log_Usuario (ID_Usuario, Accion) VALUES (OLD.ID_Usuario, 'Usuario eliminado');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vistaenvios`
--

DROP TABLE IF EXISTS `vistaenvios`;
/*!50001 DROP VIEW IF EXISTS `vistaenvios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaenvios` AS SELECT 
 1 AS `ID_Envio`,
 1 AS `ID_Pedido`,
 1 AS `Tipo`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistapedidos`
--

DROP TABLE IF EXISTS `vistapedidos`;
/*!50001 DROP VIEW IF EXISTS `vistapedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistapedidos` AS SELECT 
 1 AS `ID_Pedido`,
 1 AS `ID_Usuario`,
 1 AS `ID_Producto`,
 1 AS `Total`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproductos`
--

DROP TABLE IF EXISTS `vistaproductos`;
/*!50001 DROP VIEW IF EXISTS `vistaproductos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproductos` AS SELECT 
 1 AS `ID_Producto`,
 1 AS `Nombre`,
 1 AS `Descripcion`,
 1 AS `Precio`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistatarjetas`
--

DROP TABLE IF EXISTS `vistatarjetas`;
/*!50001 DROP VIEW IF EXISTS `vistatarjetas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistatarjetas` AS SELECT 
 1 AS `ID_Tarjeta`,
 1 AS `ID_Usuario`,
 1 AS `Tipo`,
 1 AS `Numero`,
 1 AS `Codigo_Seguridad`,
 1 AS `Fecha_Vencimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistausuarios`
--

DROP TABLE IF EXISTS `vistausuarios`;
/*!50001 DROP VIEW IF EXISTS `vistausuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistausuarios` AS SELECT 
 1 AS `ID_Usuario`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Email`,
 1 AS `Telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gyg_fiacas'
--

--
-- Dumping routines for database 'gyg_fiacas'
--
/*!50003 DROP FUNCTION IF EXISTS `buscar_descripcion_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_descripcion_producto`(descripcion_buscar VARCHAR(255)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE descripciones_encontradas TEXT;
    SELECT GROUP_CONCAT(Descripcion SEPARATOR ', ') INTO descripciones_encontradas FROM Producto WHERE Descripcion LIKE CONCAT('%', descripcion_buscar, '%');
    RETURN descripciones_encontradas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `buscar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_usuario`(nombre_buscar VARCHAR(255)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nombres_encontrados TEXT;
    SELECT GROUP_CONCAT(Nombre SEPARATOR ', ') INTO nombres_encontrados FROM Usuario WHERE Nombre LIKE CONCAT('%', nombre_buscar, '%');
    RETURN nombres_encontrados;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Agregar_Pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_Pedido`(
    IN p_ID_Usuario INT,
    IN p_ID_Producto INT,
    IN p_Total INT,
    IN p_Fecha DATE
)
BEGIN
    INSERT INTO Pedido (ID_Usuario, ID_Producto, Total, Fecha)
    VALUES (p_ID_Usuario, p_ID_Producto, p_Total, p_Fecha);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Usuarios_Por_Apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Usuarios_Por_Apellido`(
    IN p_Apellido VARCHAR(100),
    OUT p_Resultado TEXT
)
BEGIN
    SELECT CONCAT(Nombre, ' ', Apellido) INTO p_Resultado
    FROM Usuario
    WHERE Apellido = p_Apellido;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vistaenvios`
--

/*!50001 DROP VIEW IF EXISTS `vistaenvios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaenvios` AS select `envio`.`ID_Envio` AS `ID_Envio`,`envio`.`ID_Pedido` AS `ID_Pedido`,`envio`.`Tipo` AS `Tipo`,`envio`.`Estado` AS `Estado` from `envio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistapedidos`
--

/*!50001 DROP VIEW IF EXISTS `vistapedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistapedidos` AS select `pedido`.`ID_Pedido` AS `ID_Pedido`,`pedido`.`ID_Usuario` AS `ID_Usuario`,`pedido`.`ID_Producto` AS `ID_Producto`,`pedido`.`Total` AS `Total`,`pedido`.`Fecha` AS `Fecha` from `pedido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproductos`
--

/*!50001 DROP VIEW IF EXISTS `vistaproductos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproductos` AS select `producto`.`ID_Producto` AS `ID_Producto`,`producto`.`Nombre` AS `Nombre`,`producto`.`Descripcion` AS `Descripcion`,`producto`.`Precio` AS `Precio`,`producto`.`Cantidad` AS `Cantidad` from `producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistatarjetas`
--

/*!50001 DROP VIEW IF EXISTS `vistatarjetas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistatarjetas` AS select `tarjeta`.`ID_Tarjeta` AS `ID_Tarjeta`,`tarjeta`.`ID_Usuario` AS `ID_Usuario`,`tarjeta`.`Tipo` AS `Tipo`,`tarjeta`.`Numero` AS `Numero`,`tarjeta`.`Codigo_Seguridad` AS `Codigo_Seguridad`,`tarjeta`.`Fecha_Vencimiento` AS `Fecha_Vencimiento` from `tarjeta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistausuarios`
--

/*!50001 DROP VIEW IF EXISTS `vistausuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistausuarios` AS select `usuario`.`ID_Usuario` AS `ID_Usuario`,`usuario`.`Nombre` AS `Nombre`,`usuario`.`Apellido` AS `Apellido`,`usuario`.`Email` AS `Email`,`usuario`.`Telefono` AS `Telefono` from `usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01 15:50:17
