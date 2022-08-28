-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: burger_boss
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss.hamburguesas2`
--

DROP TABLE IF EXISTS `burger_boss.hamburguesas2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss.hamburguesas2` (
  `burger_boss.hamburguesas2` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`burger_boss.hamburguesas2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss.hamburguesas2`
--

LOCK TABLES `burger_boss.hamburguesas2` WRITE;
/*!40000 ALTER TABLE `burger_boss.hamburguesas2` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss.hamburguesas2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_burger_boss`
--

DROP TABLE IF EXISTS `burger_boss_burger_boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_burger_boss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `ubicacion` longtext NOT NULL,
  `telefono` int NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `CI` int DEFAULT NULL,
  `inicial_del_numero_de_telefono` varchar(150) DEFAULT '0414',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_burger_boss`
--

LOCK TABLES `burger_boss_burger_boss` WRITE;
/*!40000 ALTER TABLE `burger_boss_burger_boss` DISABLE KEYS */;
INSERT INTO `burger_boss_burger_boss` VALUES (1,'Pedro','Koz','por acá.',85,'algo@hotmail.com',456465,NULL),(2,'Lisa','Mena','por acá XDD.',45467,'dasdadsa@hotmail.com',424554,NULL),(3,'Daniel','Mendez','ubicación.',54565456,'dasdasdas@hotmail.com',4544,NULL),(4,'Dayana','Mendez','ubicado por acá.',48949,'dayana@hotmail.com',7979,NULL),(5,'Tereza','Parra','por acá.',45857,'terezaeza@hotmail.com',45465,NULL),(6,'Tereza','Parra','por acá.',45857,'terezaeza@hotmail.com',45465,NULL),(7,'Luisa','Pérez','por acá',553456,'luisaisaa@hotmail.com',54564,NULL),(8,'dadas','adad','sdasd',456544,'daas@hotmail.com',454545,NULL),(9,'sdad','asdasd','dasdadsda',5645645,'asdas@hotmail.com',5454,NULL),(10,'wdada','asdasd','asdasasd',2456645,'dfddfs@hotmail.com',45456,NULL),(11,'asdas','dasdasd','asdasd',456456,'dasdasdsda@hotmail.com',645654,NULL),(12,'holaaaaa','asdasds','asdasda',5745646,'hola@hotmail.com',545664,NULL),(13,'Luis','Gomez','por aca toy.',49889,'gomez@hotmail.com',5465,NULL),(14,'Roxana','Larez','por acá.',87789,'Roxanaa@hotmail.com',49878,NULL),(15,'Cualquiera','jum jum jum no sé','estoy por acá XD.',21231,'nose@hotmail.com',1115531,NULL),(16,'Susana','perez','por acá.',45465,'Susanita@hotmial.com',45646,NULL),(17,'Carmen','Ramos','Estoy por acá.',7898,'carmen@hotmail.com',8489,NULL),(18,'adasdsa','adad','adadasdas',545646,'dasdasda@dadas.com',5465,NULL),(19,'fsdfd','sdfsdfs','fadasdada',4565,'ddasda@asdds.com',5456456,NULL),(20,'klasdjakls','adadas','dasddasd',456456,'adaasd@asdasdas.com',54564,NULL),(21,'dsadd','asdas','dasdasd',45645,'dasasd@daasdsdas.com',4564564,NULL),(22,'sadas','dasd','asdasdsd',4564,'adasasd@dadasd.com',54564,NULL),(23,'sadas','dasd','asdasdsd',4564,'adasasd@dadasd.com',54564,NULL),(24,'asdasd','asdasdasd','asdasdasd',456456,'4565645@weqwe.com',4545,NULL),(25,'asdasd','asdadas','asdasdas',456,'adasdas@asdasd.com',564554,NULL),(26,'adasdasd','dasdasdas','dadasd',45456,'asasasd@addas.com',5545454,NULL),(27,'adasdasd','dasdasdas','dadasd',45456,'asasasd@addas.com',5545454,NULL),(28,'sdfsdf','dsfsdf','sdfsdf',56456,'sdas@dasdas.com',456456,NULL),(29,'fsdfds','sdfsd','dasasdadas',4156456,'asdaasdas@gmail.com',7897,NULL),(30,'fsdfds','sdfsd','dasasdadas',4156456,'asdaasdas@gmail.com',7897,NULL),(31,'dsfsdf','sdfsdf','sdfsdfsdf',24132,'sdfsfsd@asdas.com',5456,NULL),(32,'dadasd','asdasd','sdasdas',54564564,'dasasads@dasds.com',45545,NULL),(33,'Jesús','Cristo','en tu corazón Belén.',2757570,'cristolinto@hotmail.com',45465,'414'),(34,'dasdsa','adasd','adasdasd',5456,'asdadas@dsadas.com',4546,'414'),(35,'fdfgd','dadasd','dasdasdasdas',5654,'addsad@hotmail.com',5456,'414'),(36,'fghfgh','dasdad','asdasdas',4546,'asdda@dasdasd.com',456456,'414'),(37,'asdsdad','asdasd','dasdasd',54564,'asdads@sdasda.com',454654,'414'),(38,'ffgdg','saSA','ASasS',5456,'asass@dad.com',54564,'414'),(39,'sadds','asdasd','sdadas',5456,'dasdaad@dasdas.com',54564,'414'),(40,'dasdasd','dasdasd','asddasdasd',546,'asddad@sdasd.com',54564,'414'),(41,'sdasd','sadasd','adsd',54564,'dadasd@dad.com',45454,'414'),(42,'dasddas','asdadas','dasdadas',4564,'asdasd@dasds.com',545456,'414'),(43,'asdasd','asdasd','asdasds',45646,'asdadas@dasdsa.com',4564,'414'),(44,'ddasdad','asdad','asdadadsa',1231,'asdad@saas.com',54564,'414'),(45,'asdasd','sdasd','asdasdas',454,'addasd@asdad.com',54564,'414'),(46,'Joao','Pinto','Cracas',1409373,'joaopintotovar2000@gmail.com',27342468,'424'),(47,'Kevin','Hernandez','Caracas sucre el marques',1415827,'Kevin.henrandez@correo.unimet.edu.ve',25736710,'414'),(48,'sdasdas','asdasdas','asdasdasd',45646,'asdasdd@dasdsad.com',54564,'414'),(49,'dadas','asdasdas','asdasdasdasd',5465,'asdasd@dasdas.com',54654,'414'),(50,'adadasd','asdasd','asdasdad',545456,'edasds@sdasad.com',4545645,'414'),(51,'adasd','asdasds','asdasdasd',54564,'asdadsa@sdasds.com',545646,'414'),(52,'fsfsdfsd','fsfsd','fdsfsdf',564564,'dffdsf@asdad.com',54654564,'414'),(53,'asdad','dasdasd','asdasdasdasd',54564,'asdasdads@dasdasd.com',554564,'414'),(54,'asdad','dasdasd','asdasdasdasd',54564,'asdasdads@dasdasd.com',554564,'414'),(55,'asdad','asdad','sdadadad',54546,'asadas@dasdsa.com',454564,'414'),(56,'asdasd','asdad','asdasdas',4123123,'dasdasd@dasddas.com',456456,'424'),(57,'sdasdasd','dasdad','asdasdasdad',44564,'dasdasd@dasdas.com',45456,'414'),(58,'asdsd','asdasd','asdadas',4645654,'dasas@asdasd.copkm',56456,'414'),(59,'dfsdfsd','sdfsdfsd','sdfsdfsdfsdf',46456456,'dasdadads@asdasd.com',56456,'414'),(60,'dsfsdfd','sfsdfd','dsfsfsd',645645,'sdfsdf@dadas.com',54564,'414'),(61,'ssdad','asdasd','asdasd',546645,'sdfsdf@sadasd.com',123,'414');
/*!40000 ALTER TABLE `burger_boss_burger_boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_extra`
--

DROP TABLE IF EXISTS `burger_boss_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_extra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `costo` double NOT NULL,
  `categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_extra`
--

LOCK TABLES `burger_boss_extra` WRITE;
/*!40000 ALTER TABLE `burger_boss_extra` DISABLE KEYS */;
INSERT INTO `burger_boss_extra` VALUES (20,'Refresco de Cola','Rico refresco de cola y burbujeante',2,'bebida'),(21,'Refresco de Naranja','Refresco con sabor cool para un Burger Boss Cool :D',2,'bebida'),(22,'Refresco de Limón','Un sabor cítrico solo para valentes',2,'bebida'),(23,'Papas fritas','Ricas y grasosas como te gustan :)',1.5,'guarnicion'),(24,'Aros de Cebolla','Anillos para los tórtolos fans de la comida.',2,'guarnicion'),(25,'Curly Fries','Enredaditas y onduladitas para una experiencia única.',2,'guarnicion'),(26,'Helado de vainilla','Rico helado de vainilla para encantar a tu paladar',2,'postre'),(27,'Helado de Chocolate','15 de cada 10 personas aman el chocolate, una excelente oportunidad para elegir este sabor.',2,'postre'),(28,'Helado de Fresa','Un sabor rico, delicioso y cool para un Burger Boss que le gustan los postres cool :D',2,'postre');
/*!40000 ALTER TABLE `burger_boss_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_extra_pedidos`
--

DROP TABLE IF EXISTS `burger_boss_extra_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_extra_pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `extra_id` int NOT NULL,
  `tabla_extra_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Burger_Boss_extra_pedidos_extra_id_tabla_extra_id_3e2d428c_uniq` (`extra_id`,`tabla_extra_id`),
  KEY `Burger_Boss_extra_pe_tabla_extra_id_c64ce435_fk_Burger_Bo` (`tabla_extra_id`),
  CONSTRAINT `Burger_Boss_extra_pe_extra_id_54912777_fk_Burger_Bo` FOREIGN KEY (`extra_id`) REFERENCES `burger_boss_extra` (`id`),
  CONSTRAINT `Burger_Boss_extra_pe_tabla_extra_id_c64ce435_fk_Burger_Bo` FOREIGN KEY (`tabla_extra_id`) REFERENCES `burger_boss_tabla_extra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_extra_pedidos`
--

LOCK TABLES `burger_boss_extra_pedidos` WRITE;
/*!40000 ALTER TABLE `burger_boss_extra_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_extra_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_hamburguesa`
--

DROP TABLE IF EXISTS `burger_boss_hamburguesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_hamburguesa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pan` varchar(150) DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_hamburguesa`
--

LOCK TABLES `burger_boss_hamburguesa` WRITE;
/*!40000 ALTER TABLE `burger_boss_hamburguesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_hamburguesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_pedido`
--

DROP TABLE IF EXISTS `burger_boss_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aros_de_cebolla` int NOT NULL,
  `BBQ` int NOT NULL,
  `curly_fries` int NOT NULL,
  `helado_de_chocolate` int NOT NULL,
  `helado_de_fresa` int NOT NULL,
  `helado_de_vainilla` int NOT NULL,
  `ketchup` int NOT NULL,
  `papas_fritas` int NOT NULL,
  `refresco_de_cola` int NOT NULL,
  `refresco_de_limón` int NOT NULL,
  `refresco_de_naranja` int NOT NULL,
  `carne` int NOT NULL,
  `lechuga` int NOT NULL,
  `mayonesa` int NOT NULL,
  `mostaza` int NOT NULL,
  `pollo` int NOT NULL,
  `queso` int NOT NULL,
  `telefono` int NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_pedido`
--

LOCK TABLES `burger_boss_pedido` WRITE;
/*!40000 ALTER TABLE `burger_boss_pedido` DISABLE KEYS */;
INSERT INTO `burger_boss_pedido` VALUES (1,0,1,0,0,0,1,1,1,1,0,0,3,2,1,1,0,3,1,'Navas','Dina','Entregado'),(2,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,45,'XDD','XD','Entregado'),(3,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,4,45,'ok','Hola','Entregado');
/*!40000 ALTER TABLE `burger_boss_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_pedido2`
--

DROP TABLE IF EXISTS `burger_boss_pedido2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_pedido2` (
  `numero_de_pedido` int NOT NULL AUTO_INCREMENT,
  `Burger_Boss_id` int DEFAULT NULL,
  `extras_id` int DEFAULT NULL,
  `hamburguesas_id` int DEFAULT NULL,
  `estado` varchar(150) DEFAULT 'nuevo',
  `bebida` varchar(150) DEFAULT NULL,
  `guarnicion` varchar(150) DEFAULT NULL,
  `postre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`numero_de_pedido`),
  KEY `Burger_Boss_pedido2_Burger_Boss_id_8ac08974_fk_Burger_Bo` (`Burger_Boss_id`),
  KEY `Burger_Boss_pedido2_extras_id_d149ad99_fk_Burger_Boss_extra_id` (`extras_id`),
  KEY `Burger_Boss_pedido2_hamburguesas_id_636b7e73_fk_Burger_Bo` (`hamburguesas_id`),
  CONSTRAINT `Burger_Boss_pedido2_Burger_Boss_id_8ac08974_fk_Burger_Bo` FOREIGN KEY (`Burger_Boss_id`) REFERENCES `burger_boss_burger_boss` (`id`),
  CONSTRAINT `Burger_Boss_pedido2_extras_id_d149ad99_fk_Burger_Boss_extra_id` FOREIGN KEY (`extras_id`) REFERENCES `burger_boss_extra` (`id`),
  CONSTRAINT `Burger_Boss_pedido2_hamburguesas_id_636b7e73_fk_Burger_Bo` FOREIGN KEY (`hamburguesas_id`) REFERENCES `hamburguesas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_pedido2`
--

LOCK TABLES `burger_boss_pedido2` WRITE;
/*!40000 ALTER TABLE `burger_boss_pedido2` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_pedido2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_tabla_extra`
--

DROP TABLE IF EXISTS `burger_boss_tabla_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_tabla_extra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `extra_tabla` varchar(150) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_tabla_extra`
--

LOCK TABLES `burger_boss_tabla_extra` WRITE;
/*!40000 ALTER TABLE `burger_boss_tabla_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_tabla_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_tabla_ingrediente`
--

DROP TABLE IF EXISTS `burger_boss_tabla_ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_tabla_ingrediente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `extra_tabla` varchar(150) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_tabla_ingrediente`
--

LOCK TABLES `burger_boss_tabla_ingrediente` WRITE;
/*!40000 ALTER TABLE `burger_boss_tabla_ingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_tabla_ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_boss_tabla_producto`
--

DROP TABLE IF EXISTS `burger_boss_tabla_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `burger_boss_tabla_producto` (
  `cantidad` int NOT NULL,
  `hamburguesa` int DEFAULT NULL,
  `producto` int DEFAULT NULL,
  KEY `hamburguesa` (`hamburguesa`),
  KEY `producto` (`producto`),
  CONSTRAINT `burger_boss_tabla_producto_ibfk_1` FOREIGN KEY (`hamburguesa`) REFERENCES `hamburugesitaas` (`id`),
  CONSTRAINT `burger_boss_tabla_producto_ibfk_2` FOREIGN KEY (`hamburguesa`) REFERENCES `hamburugesitaas` (`id`),
  CONSTRAINT `burger_boss_tabla_producto_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_boss_tabla_producto`
--

LOCK TABLES `burger_boss_tabla_producto` WRITE;
/*!40000 ALTER TABLE `burger_boss_tabla_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `burger_boss_tabla_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_cliente`
--

DROP TABLE IF EXISTS `cplus_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cedula` int NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `apellido` varchar(500) NOT NULL,
  `monedasVIP` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_cliente`
--

LOCK TABLES `cplus_cliente` WRITE;
/*!40000 ALTER TABLE `cplus_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_entrada`
--

DROP TABLE IF EXISTS `cplus_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_entrada` (
  `id` int NOT NULL AUTO_INCREMENT,
  `precio` int NOT NULL,
  `descuento` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `funcion_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cplus_entrada_cliente_id_0f4383cf_fk_cplus_cliente_id` (`cliente_id`),
  KEY `cplus_entrada_funcion_id_fdeb40b6_fk_cplus_funcion_id` (`funcion_id`),
  CONSTRAINT `cplus_entrada_cliente_id_0f4383cf_fk_cplus_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cplus_cliente` (`id`),
  CONSTRAINT `cplus_entrada_funcion_id_fdeb40b6_fk_cplus_funcion_id` FOREIGN KEY (`funcion_id`) REFERENCES `cplus_funcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_entrada`
--

LOCK TABLES `cplus_entrada` WRITE;
/*!40000 ALTER TABLE `cplus_entrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_funcion`
--

DROP TABLE IF EXISTS `cplus_funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_funcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `pelicula_id` int DEFAULT NULL,
  `sala_id` int DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cplus_funcion_pelicula_id_d93a3cef_fk_cplus_pelicula_id` (`pelicula_id`),
  KEY `cplus_funcion_sala_id_625e9ff6_fk_cplus_sala_id` (`sala_id`),
  KEY `cplus_funcion_sucursal_id_a65cf7f2_fk_cplus_sucursal_id` (`sucursal_id`),
  CONSTRAINT `cplus_funcion_pelicula_id_d93a3cef_fk_cplus_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `cplus_pelicula` (`id`),
  CONSTRAINT `cplus_funcion_sala_id_625e9ff6_fk_cplus_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `cplus_sala` (`id`),
  CONSTRAINT `cplus_funcion_sucursal_id_a65cf7f2_fk_cplus_sucursal_id` FOREIGN KEY (`sucursal_id`) REFERENCES `cplus_sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_funcion`
--

LOCK TABLES `cplus_funcion` WRITE;
/*!40000 ALTER TABLE `cplus_funcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_funcion2`
--

DROP TABLE IF EXISTS `cplus_funcion2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_funcion2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `Sala_id` int DEFAULT NULL,
  `pelicula_id` int DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cplus_funcion2_Sala_id_5debf175_fk_cplus_sala_id` (`Sala_id`),
  KEY `cplus_funcion2_pelicula_id_9a928019_fk_cplus_pelicula_id` (`pelicula_id`),
  KEY `cplus_funcion2_sucursal_id_06b45850_fk_cplus_sucursal_id` (`sucursal_id`),
  CONSTRAINT `cplus_funcion2_pelicula_id_9a928019_fk_cplus_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `cplus_pelicula` (`id`),
  CONSTRAINT `cplus_funcion2_Sala_id_5debf175_fk_cplus_sala_id` FOREIGN KEY (`Sala_id`) REFERENCES `cplus_sala` (`id`),
  CONSTRAINT `cplus_funcion2_sucursal_id_06b45850_fk_cplus_sucursal_id` FOREIGN KEY (`sucursal_id`) REFERENCES `cplus_sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_funcion2`
--

LOCK TABLES `cplus_funcion2` WRITE;
/*!40000 ALTER TABLE `cplus_funcion2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_funcion2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_pelicula`
--

DROP TABLE IF EXISTS `cplus_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_pelicula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `enCartelera` tinyint(1) NOT NULL,
  `genero` varchar(500) NOT NULL,
  `duración` varchar(500) NOT NULL,
  `nacionalidad` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_pelicula`
--

LOCK TABLES `cplus_pelicula` WRITE;
/*!40000 ALTER TABLE `cplus_pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_producto`
--

DROP TABLE IF EXISTS `cplus_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(500) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cplus_producto_cliente_id_376871d7_fk_cplus_cliente_id` (`cliente_id`),
  CONSTRAINT `cplus_producto_cliente_id_376871d7_fk_cplus_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cplus_cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_producto`
--

LOCK TABLES `cplus_producto` WRITE;
/*!40000 ALTER TABLE `cplus_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_productovip`
--

DROP TABLE IF EXISTS `cplus_productovip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_productovip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(500) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cplus_productovip_cliente_id_ce635dbf_fk_cplus_cliente_id` (`cliente_id`),
  CONSTRAINT `cplus_productovip_cliente_id_ce635dbf_fk_cplus_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cplus_cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_productovip`
--

LOCK TABLES `cplus_productovip` WRITE;
/*!40000 ALTER TABLE `cplus_productovip` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_productovip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_sala`
--

DROP TABLE IF EXISTS `cplus_sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_sala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AsientosDisponibles` int NOT NULL,
  `AsientosOcupados` int NOT NULL,
  `NumeroDeAsientos` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_sala`
--

LOCK TABLES `cplus_sala` WRITE;
/*!40000 ALTER TABLE `cplus_sala` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cplus_sucursal`
--

DROP TABLE IF EXISTS `cplus_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cplus_sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cplus_sucursal`
--

LOCK TABLES `cplus_sucursal` WRITE;
/*!40000 ALTER TABLE `cplus_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `cplus_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Burger_Boss','0001_initial','2021-10-18 22:40:39.431683'),(2,'Burger_Boss','0002_auto_20211013_1537','2021-10-18 22:40:39.509688'),(3,'Burger_Boss','0003_burger_boss_email','2021-10-18 22:40:39.837706'),(4,'Burger_Boss','0004_auto_20211013_1614','2021-10-18 22:40:39.864708'),(5,'Burger_Boss','0005_auto_20211013_1615','2021-10-18 22:40:39.869708'),(6,'Burger_Boss','0006_guarnicion_postre_refresco','2021-10-18 22:40:40.299733'),(7,'Burger_Boss','0007_hamburguesa_ingrediente_pedido','2021-10-18 22:40:41.579806'),(8,'Burger_Boss','0008_auto_20211013_2008','2021-10-18 22:40:41.589807'),(9,'Burger_Boss','0009_auto_20211013_2009','2021-10-18 22:40:41.598807'),(10,'Burger_Boss','0010_auto_20211015_2011','2021-10-18 22:40:42.230843'),(11,'contenttypes','0001_initial','2021-10-18 22:40:42.513859'),(12,'auth','0001_initial','2021-10-18 22:40:43.318905'),(13,'admin','0001_initial','2021-10-18 22:40:50.800333'),(14,'admin','0002_logentry_remove_auto_add','2021-10-18 22:40:53.982515'),(15,'admin','0003_logentry_add_action_flag_choices','2021-10-18 22:40:54.089521'),(16,'contenttypes','0002_remove_content_type_name','2021-10-18 22:40:55.019575'),(17,'auth','0002_alter_permission_name_max_length','2021-10-18 22:40:55.485601'),(18,'auth','0003_alter_user_email_max_length','2021-10-18 22:40:55.640610'),(19,'auth','0004_alter_user_username_opts','2021-10-18 22:40:55.665612'),(20,'auth','0005_alter_user_last_login_null','2021-10-18 22:40:55.901625'),(21,'auth','0006_require_contenttypes_0002','2021-10-18 22:40:55.905625'),(22,'auth','0007_alter_validators_add_error_messages','2021-10-18 22:40:55.921626'),(23,'auth','0008_alter_user_username_max_length','2021-10-18 22:40:56.535661'),(24,'auth','0009_alter_user_last_name_max_length','2021-10-18 22:40:56.981687'),(25,'auth','0010_alter_group_name_max_length','2021-10-18 22:40:57.086693'),(26,'auth','0011_update_proxy_permissions','2021-10-18 22:40:57.108694'),(27,'cplus','0001_initial','2021-10-18 22:41:00.697899'),(28,'Burger_Boss','0011_pedido','2021-10-18 23:23:53.736977'),(29,'Burger_Boss','0012_auto_20211018_1935','2021-10-18 23:36:34.337428'),(30,'Burger_Boss','0013_pedido_telefono','2021-10-19 16:34:02.731472'),(31,'Burger_Boss','0014_auto_20211019_1243','2021-10-19 16:43:06.669584'),(32,'Burger_Boss','0015_producto_descripcion','2021-10-21 03:29:33.012130'),(33,'Burger_Boss','0016_auto_20211020_2334','2021-10-21 03:34:06.698784'),(34,'Burger_Boss','0017_auto_20211021_0054','2021-10-21 04:54:32.299793'),(35,'Burger_Boss','0018_auto_20211021_0056','2021-10-21 04:56:58.832174'),(36,'Burger_Boss','0019_auto_20211021_0058','2021-10-21 04:58:27.613252'),(37,'Burger_Boss','0020_pedido_estado','2021-10-21 05:07:30.326293'),(38,'Burger_Boss','0021_auto_20211102_1828','2021-11-02 22:31:26.068465'),(39,'Burger_Boss','0022_auto_20211102_1834','2021-11-02 22:34:56.433497'),(40,'Burger_Boss','0023_auto_20211102_1848','2021-11-02 22:48:33.435227'),(41,'Burger_Boss','0024_auto_20211102_1853','2021-11-02 22:53:44.220003'),(42,'Burger_Boss','0025_auto_20211102_1903','2021-11-02 23:03:15.302667'),(43,'Burger_Boss','0026_tabla_extra_cantidad','2021-11-02 23:04:52.037200'),(44,'Burger_Boss','0027_auto_20211102_1918','2021-11-02 23:19:05.884037'),(45,'Burger_Boss','0028_auto_20211102_1944','2021-11-02 23:44:31.416293'),(46,'Burger_Boss','0029_auto_20211102_1948','2021-11-02 23:49:38.636865'),(47,'Burger_Boss','0030_auto_20211102_2219','2021-11-03 02:19:52.620360'),(48,'Burger_Boss','0031_auto_20211103_1719','2021-11-03 21:20:14.131500'),(49,'Burger_Boss','0032_auto_20211103_1720','2021-11-03 21:20:16.720648'),(50,'Burger_Boss','0033_auto_20211103_1727','2021-11-03 21:27:39.699985'),(51,'Burger_Boss','0034_auto_20211103_2133','2021-11-04 01:33:22.273686'),(52,'Burger_Boss','0035_auto_20211103_2157','2021-11-04 01:57:17.727789'),(53,'Burger_Boss','0036_auto_20211104_1352','2021-11-04 17:52:31.228145'),(54,'Burger_Boss','0037_auto_20211104_1903','2021-11-04 23:04:14.534526'),(55,'Burger_Boss','0038_auto_20211104_1920','2021-11-04 23:21:05.197333'),(56,'Burger_Boss','0039_auto_20211104_1925','2021-11-04 23:26:04.760467'),(57,'Burger_Boss','0040_auto_20211104_1928','2021-11-04 23:28:30.439799'),(58,'Burger_Boss','0041_auto_20211104_1933','2021-11-04 23:33:09.437757'),(59,'Burger_Boss','0042_auto_20211104_1934','2021-11-04 23:34:50.527539'),(60,'Burger_Boss','0023_auto_20211107_2325','2021-11-08 03:28:10.812095'),(61,'Burger_Boss','0002_auto_20211108_1001','2021-11-08 14:01:33.176568'),(62,'Burger_Boss','0003_auto_20211108_1122','2021-11-08 15:23:18.294247'),(63,'Burger_Boss','0004_auto_20211108_1123','2021-11-08 15:24:22.818937');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamburguesa`
--

DROP TABLE IF EXISTS `hamburguesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hamburguesa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pan` varchar(150) DEFAULT NULL,
  `carne` varchar(150) DEFAULT NULL,
  `queso` varchar(150) DEFAULT NULL,
  `ingrediente` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamburguesa`
--

LOCK TABLES `hamburguesa` WRITE;
/*!40000 ALTER TABLE `hamburguesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `hamburguesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamburguesa_ingrediente`
--

DROP TABLE IF EXISTS `hamburguesa_ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hamburguesa_ingrediente` (
  `hamburguesa` int DEFAULT NULL,
  `ingrediente` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  KEY `hamburguesa` (`hamburguesa`),
  KEY `ingrediente` (`ingrediente`),
  CONSTRAINT `hamburguesa_ingrediente_ibfk_1` FOREIGN KEY (`hamburguesa`) REFERENCES `hamburugesitaas` (`id`),
  CONSTRAINT `hamburguesa_ingrediente_ibfk_2` FOREIGN KEY (`ingrediente`) REFERENCES `ingredientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamburguesa_ingrediente`
--

LOCK TABLES `hamburguesa_ingrediente` WRITE;
/*!40000 ALTER TABLE `hamburguesa_ingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `hamburguesa_ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamburugesitaas`
--

DROP TABLE IF EXISTS `hamburugesitaas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hamburugesitaas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pan` varchar(150) DEFAULT 'normal',
  `carne` int DEFAULT NULL,
  `queso` int DEFAULT NULL,
  `ingrediente` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carne` (`carne`),
  KEY `queso` (`queso`),
  CONSTRAINT `hamburugesitaas_ibfk_1` FOREIGN KEY (`carne`) REFERENCES `producto` (`id`),
  CONSTRAINT `hamburugesitaas_ibfk_2` FOREIGN KEY (`queso`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamburugesitaas`
--

LOCK TABLES `hamburugesitaas` WRITE;
/*!40000 ALTER TABLE `hamburugesitaas` DISABLE KEYS */;
/*!40000 ALTER TABLE `hamburugesitaas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ingredientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Tomate','Fresco y de alta calidad',1),(2,'Lechuga','Fresca y saludable',1.5),(3,'Pepinillos','Aciditos para darle a tu hamburguesa un sabor más interesante',1),(4,'Cebolla','Si la cortas te puede hacer llorar, pero no te preocupes, Burger Boss puede hacer este trabajo por ti.',1.25),(5,'Champiñones','Deliciosos y divertidos :D',4),(6,'Tocineta','¿Qué mejor que una cheeseburguer? ¡una cheeseburger con tocineta claro!',3);
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `costo` double NOT NULL,
  `descripcion` longtext NOT NULL,
  `categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (21,'Queso americano',2,'Rico queso americano :D','queso'),(22,'Carne',2,'Jugosa y deliciosa carne para tu hamburguesa','carne'),(23,'Pollo',2,'Rico pollo para acompañar tu hamburguesa :D','carne'),(24,'Pescado',2.5,'Proveniente del mar y cocinado en su punto.','carne'),(25,'Ricota',1.5,'Rici queso ricota para tu hamburguesa','queso'),(26,'Cerdo',3,'Jugosa carne de cerdo para tu hamburguesa','carne'),(27,'Carne de Queso cheesar',4,'Rica carne que cuando la muerdes se le sale todo el queso para deleitar a tu paladar','carne');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-27 23:19:14
