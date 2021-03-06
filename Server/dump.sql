-- MySQL dump 10.16  Distrib 10.1.17-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: PLS
-- ------------------------------------------------------
-- Server version	10.1.17-MariaDB

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
-- Table structure for table `congestion_pricing`
--

DROP TABLE IF EXISTS `congestion_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congestion_pricing` (
  `priority` int(11) NOT NULL,
  `non_priority` int(11) NOT NULL,
  `dynamic_price` double NOT NULL,
  `static_price` double DEFAULT NULL,
  PRIMARY KEY (`priority`,`dynamic_price`,`non_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congestion_pricing`
--

LOCK TABLES `congestion_pricing` WRITE;
/*!40000 ALTER TABLE `congestion_pricing` DISABLE KEYS */;
INSERT INTO `congestion_pricing` VALUES (70,30,1.5,5);
/*!40000 ALTER TABLE `congestion_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_non_priority_congestion`
--

DROP TABLE IF EXISTS `current_non_priority_congestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_non_priority_congestion` (
  `congestion` double NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_non_priority_congestion`
--

LOCK TABLES `current_non_priority_congestion` WRITE;
/*!40000 ALTER TABLE `current_non_priority_congestion` DISABLE KEYS */;
INSERT INTO `current_non_priority_congestion` VALUES (3,'2016-10-09 10:02:48'),(3,'2016-10-09 10:03:44'),(3,'2016-10-09 10:04:46'),(3,'2016-10-09 10:05:45'),(3,'2016-10-09 10:06:44'),(3,'2016-10-09 10:07:44'),(3,'2016-10-09 10:08:44'),(3,'2016-10-09 10:09:45'),(3,'2016-10-09 10:10:48'),(3,'2016-10-09 10:11:45'),(3,'2016-10-09 10:12:51'),(3,'2016-10-09 10:13:51'),(3,'2016-10-09 10:14:45'),(3,'2016-10-09 10:15:49'),(3,'2016-10-09 10:16:46');
/*!40000 ALTER TABLE `current_non_priority_congestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `current_price`
--

DROP TABLE IF EXISTS `current_price`;
/*!50001 DROP VIEW IF EXISTS `current_price`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `current_price` (
  `dynamic_price` tinyint NOT NULL,
  `static_price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `current_priority_congestion`
--

DROP TABLE IF EXISTS `current_priority_congestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_priority_congestion` (
  `congestion` double NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_priority_congestion`
--

LOCK TABLES `current_priority_congestion` WRITE;
/*!40000 ALTER TABLE `current_priority_congestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_priority_congestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey`
--

DROP TABLE IF EXISTS `journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey` (
  `distance_travelled` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey`
--

LOCK TABLES `journey` WRITE;
/*!40000 ALTER TABLE `journey` DISABLE KEYS */;
INSERT INTO `journey` VALUES (0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111),(0.051111);
/*!40000 ALTER TABLE `journey` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `PLS`.`journey_AFTER_INSERT` AFTER INSERT ON `journey` FOR EACH ROW

BEGIN
IF NEW.distance_travelled = 0 THEN
	SELECT static_price *(5/60) INTO @journey_cost FROM current_price;
ELSE
	SELECT dynamic_price * NEW.distance_travelled INTO @journey_cost FROM current_price;
END IF;
UPDATE user SET current_journey_distance = current_journey_distance + NEW.distance_travelled;
UPDATE user SET current_journey_cost=current_journey_cost + @journey_cost;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `registration_number` int(11) NOT NULL,
  `in_priority_lane` blob,
  `mastercard_token` double DEFAULT NULL,
  `account_balance` double DEFAULT NULL,
  `current_journey_cost` double DEFAULT NULL,
  `current_journey_distance` double DEFAULT NULL,
  PRIMARY KEY (`registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1234,NULL,35563,0,2275,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `current_price`
--

/*!50001 DROP TABLE IF EXISTS `current_price`*/;
/*!50001 DROP VIEW IF EXISTS `current_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pls`.`current_price` AS select `pls`.`congestion_pricing`.`dynamic_price` AS `dynamic_price`,`pls`.`congestion_pricing`.`static_price` AS `static_price` from ((`pls`.`congestion_pricing` join `pls`.`current_priority_congestion` on(((round(((`pls`.`current_priority_congestion`.`congestion` / 5) + 0.5),0) * 5) = `pls`.`congestion_pricing`.`priority`))) join `pls`.`current_non_priority_congestion` on(((round(((`pls`.`current_non_priority_congestion`.`congestion` / 5) + 0.5),0) * 5) = `pls`.`congestion_pricing`.`non_priority`))) limit 1 */;
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

-- Dump completed on 2016-10-09 10:17:44
