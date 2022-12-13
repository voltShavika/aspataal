-- MySQL dump 10.13
--
-- Host: localhost    Database: aspataal
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Hospital`
--

DROP TABLE IF EXISTS `Hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hospital` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hospital`
--

LOCK TABLES `Hospital` WRITE;
/*!40000 ALTER TABLE `Hospital` DISABLE KEYS */;
INSERT INTO `Hospital` VALUES (1,'Apollo Hospitals'),(2,'Jawaharlal Nehru Medical College and Hospital'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(4,'AIIMS - All India Institute Of Medical Science');
/*!40000 ALTER TABLE `Hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `psychiatrist_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `Psychiatrist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Vipin','vipin.hsingh@gmail.com','C-131 New Ashok','+918744873335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',1),(2,'Vipin Singh','vipin.hsingh@gmail.com','C-131 New Ashok','+918744873355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',2),(3,'Ankur Singh','ankur.hsingh@gmail.com','C-131 New Ashok','+918744873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',2),(4,'Shavika Mittal','ankur.hsingh@gmail.com','C-131 New Ashok','+918756565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',2),(5,'Shavika Gupta','shavika619@gmail.com','C-131 New Ashok','+918756565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',2),(6,'Sarita Gupta','sarita@gmail.com','C-171 New Ashok','+918756565698','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',5),(7,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',2),(8,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',3),(9,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',4),(10,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',4),(11,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',4),(12,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',4),(13,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',5),(14,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',5),(15,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',6),(16,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',6),(17,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',6),(18,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',8),(19,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',9),(20,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',9),(21,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',10),(22,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',12),(23,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',12),(24,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',11),(25,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',14),(26,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',15),(27,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',17),(28,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',18),(29,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',18),(30,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',15),(31,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',6),(32,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',12),(33,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',10),(34,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',10),(35,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',5),(36,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',2),(37,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',20),(38,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',19),(39,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',19),(40,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',19),(41,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',1),(42,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',2),(43,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',2),(44,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',13),(45,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',4),(46,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',14),(47,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',9),(48,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',9),(49,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',8),(50,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',8),(51,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',5),(52,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',4),(53,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',14),(54,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',20),(55,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',20),(56,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',13),(57,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',6),(58,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',6),(59,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',3),(60,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',3),(61,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',8),(62,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',12),(63,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',11),(64,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',18),(65,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',15),(66,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',15),(67,'Laptop','laptop@gmail.com','Surya nagar','+918744856335','/public/50177d87-a5c1-45af-bb7e-f56e84eb0b9eprofile.png','Tests@1234',14),(68,'Akriti','akriti912@gmail.com','C-131 Moti nagar','+918746573355','/public/6524a740-214b-42d4-bffc-896a76a49461profile.png','Tests@1234',17),(69,'Ankur Singh','amkur@gmail.com','C-131 hilston','+919844873355','/public/fdea0a14-1128-40ed-b4da-696fd8a67d36profile.png','Tests@1234',16),(70,'Shavika Mittal','shavika619@gmail.com','Noida sector 72','+917856565656','/public/eda6247f-2b90-48e7-a3e3-dee81c5ca82d00000portrait_00000_burst20191215140622099.jpg','Tests@1234',16),(71,'Shavika Gupta','shavika619@gmail.com','New delhi sarojni','+919996565656','/public/7d8d2b92-09b1-4502-b53f-d7bc04cedd9b00000portrait_00000_burst20191215140622099.jpg','Tests@1234',10),(72,'Sarita Gupta','sarita@gmail.com','kalindi kunj bihari','+918756565000','/public/9f8ee32e-4279-420f-b28c-99299f0343e500000portrait_00000_burst20191215140622099.jpg','Tests@1234',10);
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Psychiatrist`
--

DROP TABLE IF EXISTS `Psychiatrist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Psychiatrist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hospital_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrist_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `Hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Psychiatrist`
--

LOCK TABLES `Psychiatrist` WRITE;
/*!40000 ALTER TABLE `Psychiatrist` DISABLE KEYS */;
INSERT INTO `Psychiatrist` VALUES (1,'Vipin Chaudhary',1),(2,'Shavika Mittal',1),(3,'Rakesh Gupta',1),(4,'Nitin Gupta',1),(5,'Monu',1),(6,'Mukesh Singh ',2),(7,'Shavika Gupta',2),(8,'Arti Radhakrishnan',2),(9,'Swati Jha',2),(10,'Shrishti Gupta',2),(11,'Monu Singh',3),(12,'Vipin Singh',3),(13,'Arav Mithril',3),(14,'Sauron',3),(15,'Hallbrand Great',3),(16,'Galadriel Elf',4),(17,'Legolas Elf',4),(18,'Laptop Wire',4),(19,'Some Name',4),(20,'Atharv',4);
/*!40000 ALTER TABLE `Psychiatrist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 15:16:55
