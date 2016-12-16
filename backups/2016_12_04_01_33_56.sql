-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: conjuntoresidencial
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartamento` (
  `_id_apartamento` int(11) NOT NULL AUTO_INCREMENT,
  `_id_interior` int(11) NOT NULL,
  `_id_formulario_pro` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `valor_administracion` int(50) NOT NULL,
  PRIMARY KEY (`_id_apartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (1,9,1,'apartamento 101','Zona A',30000),(2,9,2,'apartamento 102','Zona A',30000),(3,9,3,'apartamento 103','Zona A',45000);
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloque`
--

DROP TABLE IF EXISTS `bloque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloque` (
  `_id_bloque` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`_id_bloque`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque`
--

LOCK TABLES `bloque` WRITE;
/*!40000 ALTER TABLE `bloque` DISABLE KEYS */;
INSERT INTO `bloque` VALUES (1,'bloque 1','Zona A');
/*!40000 ALTER TABLE `bloque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `_id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `con_contrasena` varchar(50) NOT NULL,
  `fec_nac` date NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `_id_empleados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `funcion` varchar(50) NOT NULL,
  PRIMARY KEY (`_id_empleados`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'maria emma','perez martinez',51236548,'3208796541','emma@gmail.com'),(2,'maria emma','perez martinez',51236548,'3208796541','emma@gmail.com'),(3,'Antonio','Garcia',51241632,'antony@yahoo.com','cotero'),(4,'Antonio','Garcia',52478965,'andrescotero@gmail.com','cotero');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `_id_eventos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `uploadedpreview` varchar(150) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `costo_evento` int(50) NOT NULL,
  `fecha_entrada` date NOT NULL,
  PRIMARY KEY (`_id_eventos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'evento1','img/preview/Penguins.jpg','evento 1',0,'2016-12-07'),(2,'evento2','img/preview/Lighthouse.jpg','evento 1',0,'2016-12-07'),(3,'evento3','img/preview/Jellyfish.jpg','evento de prueba',0,'2016-12-08'),(4,'evento 4','img/preview/whats-the-weirdest-creepypasta-page-youve-ever-r-2-17948-1452094065-2_dblbig.jpg','en este evento vamos a ver una prueba',20000,'2016-12-10');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_pagos`
--

DROP TABLE IF EXISTS `formulario_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulario_pagos` (
  `_id_formulario_pagos` int(11) NOT NULL AUTO_INCREMENT,
  `_id_apartamento` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `concepto` varchar(25) NOT NULL,
  `mes` date NOT NULL,
  `total_pagar` int(50) NOT NULL,
  PRIMARY KEY (`_id_formulario_pagos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_pagos`
--

LOCK TABLES `formulario_pagos` WRITE;
/*!40000 ALTER TABLE `formulario_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulario_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_pro`
--

DROP TABLE IF EXISTS `formulario_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulario_pro` (
  `_id_formulario_pro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`_id_formulario_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_pro`
--

LOCK TABLES `formulario_pro` WRITE;
/*!40000 ALTER TABLE `formulario_pro` DISABLE KEYS */;
INSERT INTO `formulario_pro` VALUES (1,'jimmy fernando ','Cantor Garcia',1000782057,2147483647,'jamzgarcia@misena.edu.co'),(2,'felipe ','sanchez',54789546,2147483647,'sanchezfe@hotmail.com'),(3,'andrea coloso','sanahoria',36458798,2147483647,'coloso@facebook.com'),(4,'wilmer','cabezas',1032458795,2147483647,'heads@gmail.com');
/*!40000 ALTER TABLE `formulario_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_res`
--

DROP TABLE IF EXISTS `formulario_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulario_res` (
  `_id_formulario_res` int(11) NOT NULL AUTO_INCREMENT,
  `_id_apartamento` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(12) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `funcion` varchar(15) NOT NULL,
  PRIMARY KEY (`_id_formulario_res`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_res`
--

LOCK TABLES `formulario_res` WRITE;
/*!40000 ALTER TABLE `formulario_res` DISABLE KEYS */;
INSERT INTO `formulario_res` VALUES (1,1,'emma ','gonzales',51241785,2147483647,'emma@gmail.com','Arrendatario'),(2,1,'marcerla','beltran',1003785411,2147483647,'marce@gmail.com','Arrendatario'),(3,2,'andres','cardenas',1003548796,2147483647,'cardenasandres01@gmail.co','Arrendatario'),(4,2,'andrea ','rios',51236487,2147483647,'andreasolorios@yahoo.com','Arrendatario'),(5,2,'felipe ','sanchez',54789546,2147483647,'sanchezfe@hotmail.com','Propietario'),(6,3,'andrea coloso','sanahoria',36458798,2147483647,'coloso@facebook.com','Propietario'),(7,3,'gilbert','cortes',1054878222,301654789,'gil@gil.com','Arrendatario'),(8,3,'hillary','clinton',1023569478,302548796,'hillary.clinton@usa.com','Arrendatario'),(9,0,'maria emma','perez martinez',21145566,2147483647,'emma@gmail.com','serviciosgenera'),(10,0,'maria emma','perez martinez',21145566,2147483647,'emma@gmail.com','serviciosgenera'),(11,0,'maria emma','perez martinez',21145566,2147483647,'emma@gmail.com','serviciosgenera'),(12,0,'maria emma','perez martinez',21145566,2147483647,'emma@gmail.com','serviciosgenera'),(13,0,'maria emma','perez martinez',21145566,2147483647,'emma@gmail.com','serviciosgenera'),(14,0,'maria emma','perez martinez',51689275,2147483647,'emma@gmail.com','serviciosgenera');
/*!40000 ALTER TABLE `formulario_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_vis`
--

DROP TABLE IF EXISTS `formulario_vis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulario_vis` (
  `_id_formulario_vis` int(11) NOT NULL AUTO_INCREMENT,
  `_id_apartamento` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `fecha_ingreso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`_id_formulario_vis`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_vis`
--

LOCK TABLES `formulario_vis` WRITE;
/*!40000 ALTER TABLE `formulario_vis` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulario_vis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interior`
--

DROP TABLE IF EXISTS `interior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interior` (
  `_id_interior` int(11) NOT NULL AUTO_INCREMENT,
  `_id_bloque` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`_id_interior`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interior`
--

LOCK TABLES `interior` WRITE;
/*!40000 ALTER TABLE `interior` DISABLE KEYS */;
INSERT INTO `interior` VALUES (9,1,'interior 1','Zona A');
/*!40000 ALTER TABLE `interior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) NOT NULL,
  `contrasena` varchar(220) NOT NULL,
  `rol` varchar(10) NOT NULL,
  PRIMARY KEY (`_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'jamzgarcia@misena.edu.co','$2y$10$Tgua0Ca1CTFmFtc2f00Sq.8Y9tuC2sjoH197jD252zXu3gmJYbfbS','admin'),(5,'jaaj@yahoo.com','$2y$10$JrkSlIsVYPyd/WjrX4jy8eLh0YEMF29dKrY31f2FO4B93BCmgWHwK','cliente'),(6,'jimmy@1234','$2y$10$96gN3uzDepNyF5XJiZJJEuKh.w8GxmW9R.vRYgAV9QC8tj7e/F2Iq','cliente'),(7,'asdas@asdsa','$2y$10$oAaJJlcu/lK2PJIZM3SiyekTaEjgdPZYoAc8R/ReT/8K3t2MflXke','cliente'),(8,'asdas@wqeqwe','$2y$10$dGY4NATDBkiYOj.BAMJf2eiLX1NOiOWYY7W7iI8Tgzo2hOxTJTRYS','cliente'),(9,'coloso@facebook.com','$2y$10$/LjKE8IVJhgk60AjWg.QouzPwD8cQr57edxZVkmt8Zw47OBEcDpKa','cliente'),(10,'guarda1@gmail.com','$2y$10$3fBTLaM.nSfRNAzAQYKnFeFRNX.5LOd8ek48eQ4ZN/p2VolpzMa/u','cliente'),(11,'guarda2@gmail.com','$2y$10$SBSy4.78pyF..MXJyFsyCOojnWOVYDlkgOc4Z/nMGCpil6rKyXURS','cliente'),(12,'ff@gmail.com','$2y$10$ZU/TWjMj7SCx4na2I4cgQueuVysnmZFwq.7NC5p1DAMoeUtAZPTsq','cliente'),(13,'ffr@gmail.com','$2y$10$zqrgW/wMoA0JdWxHtVbKqOHTlKae8AMgr5F0.fxU..IF3ehtXlWwC','guarda'),(14,'guarda3@gmail.com','$2y$10$qGkn09Kul7BfHyhv/dJnGO/i7bMeQZ1p0F.bFN7raWlkhtsBw0tBy','guarda');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-03 19:33:57
