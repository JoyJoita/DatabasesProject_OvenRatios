-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: book_boutique
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `book_genres`
--

DROP TABLE IF EXISTS `book_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genres` (
  `book_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`genre_id`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genres`
--

LOCK TABLES `book_genres` WRITE;
/*!40000 ALTER TABLE `book_genres` DISABLE KEYS */;
INSERT INTO `book_genres` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(16,1),(17,1),(18,1),(19,1),(24,1),(27,1),(9,2),(10,2),(13,3),(29,3),(13,4),(20,4),(25,4),(26,4),(11,5),(14,5),(11,6),(12,6),(1,7),(2,7),(5,7),(6,7),(9,7),(10,7),(22,7),(23,7),(26,7),(12,8),(14,8),(15,8),(28,9),(37,9),(38,9),(3,10),(4,10),(15,10),(16,10),(17,10),(18,10),(19,10),(27,10),(30,11),(31,11),(32,11),(31,12),(39,12),(40,12),(31,13),(32,13),(33,13),(35,13),(36,13),(20,14),(21,14),(22,14),(23,14),(32,14),(34,14),(17,21),(18,21),(29,22),(27,23),(30,24),(31,25),(26,26);
/*!40000 ALTER TABLE `book_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_series`
--

DROP TABLE IF EXISTS `book_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_series` (
  `series_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_series`
--

LOCK TABLES `book_series` WRITE;
/*!40000 ALTER TABLE `book_series` DISABLE KEYS */;
INSERT INTO `book_series` VALUES (1,'Harry Potter'),(2,'The Lord of the Rings'),(3,'Percy Jackson & The Olympians'),(4,'A Song of Ice and Fire'),(5,'The Hunger Games'),(6,'The Chronicles of Narnia'),(7,'The Wheel of Time'),(8,'Sherlock Holmes'),(9,'Discworld'),(10,'His Dark Materials'),(11,'Divergent'),(12,'Maze Runner'),(13,'The Inheritance Cycle'),(14,'The Dark Tower'),(15,'Miss Peregrine’s Home for Peculiar Children'),(16,'Sapiens Series');
/*!40000 ALTER TABLE `book_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_stock`
--

DROP TABLE IF EXISTS `book_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_stock` (
  `stock_id` int NOT NULL,
  `book_id` int NOT NULL,
  `location_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`stock_id`),
  UNIQUE KEY `book_id` (`book_id`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_stock`
--

LOCK TABLES `book_stock` WRITE;
/*!40000 ALTER TABLE `book_stock` DISABLE KEYS */;
INSERT INTO `book_stock` VALUES (101,1,1,50),(102,2,1,30),(103,3,1,20),(104,16,1,25),(105,18,2,15),(106,21,2,20),(107,22,2,10),(108,23,3,18),(109,25,3,30),(110,37,2,65),(111,38,3,80),(112,39,3,50),(113,40,4,90),(114,31,5,30),(115,32,5,40),(116,33,5,35),(117,34,5,45),(118,35,5,50),(119,1,2,30),(120,1,3,20),(121,1,4,45),(123,1,5,33),(124,4,2,22),(125,5,4,98),(126,6,3,76),(127,7,1,60),(128,8,2,40),(129,9,2,67),(130,10,2,87);
/*!40000 ALTER TABLE `book_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `author_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `isbn` char(13) NOT NULL,
  `release_date` date NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `series_id` int DEFAULT NULL,
  `language` enum('English','Spanish','Arabic','French','Japanese','Chinese') DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Harry Potter and the Sorcerer\'s Stone','Rowling, J.K.','9780590353403','1997-06-26',10.99,1,'English'),(2,'Harry Potter and the Chamber of Secrets','Rowling, J.K.','9780439064873','1998-07-02',11.99,1,'English'),(3,'The Fellowship of the Ring','Tolkien, J.R.R.','9780618260274','1954-07-29',15.50,2,'English'),(4,'The Two Towers','Tolkien, J.R.R.','9780618260281','1954-11-11',16.25,2,'English'),(5,'The Lightning Thief','Riordan, Rick','9780786847913','2005-07-01',9.75,3,'English'),(6,'The Sea of Monsters','Riordan, Rick','9780786856878','2006-04-01',10.25,3,'English'),(7,'A Game of Thrones','Martin, George R.R.','9780553801471','1996-08-01',12.50,4,'English'),(8,'A Clash of Kings','Martin, George R.R.','9780553806957','1999-02-01',13.00,4,'English'),(9,'The Hunger Games','Collins, Suzanne','9780439023481','2008-09-14',10.50,5,'English'),(10,'Catching Fire','Collins, Suzanne','9780439023498','2009-09-01',11.00,5,'English'),(11,'Pride and Prejudice','Austen, Jane','9780141439518','1813-01-28',8.99,NULL,'English'),(12,'To Kill a Mockingbird','Lee, Harper','9780061120084','1960-07-11',12.75,NULL,'English'),(13,'The Silent Patient','Michaelides, Alex','9781250301697','2019-02-05',13.50,NULL,'English'),(14,'The Love Hypothesis','Hazelwood, Ali','9781984802844','2021-09-14',14.00,NULL,'English'),(15,'El Principito','Saint-Exupéry, Antoine de','9780156013730','1943-04-06',9.50,NULL,'Spanish'),(16,'The Lion, the Witch and the Wardrobe','Lewis, C.S.','9780064471046','1950-10-16',8.99,6,'English'),(17,'Prince Caspian','Lewis, C.S.','9780064471053','1951-10-15',9.25,6,'English'),(18,'The Eye of the World','Jordan, Robert','9780812511819','1990-01-15',10.99,7,'English'),(19,'The Great Hunt','Jordan, Robert','9780812517729','1990-11-15',11.50,7,'English'),(20,'The Final Empire','Sanderson, Brandon','9780765311788','2006-07-25',13.75,NULL,'English'),(21,'Divergent','Roth, Veronica','9780062024022','2011-04-25',10.99,11,'English'),(22,'Insurgent','Roth, Veronica','9780062024046','2012-05-01',11.50,11,'English'),(23,'The Maze Runner','Dashner, James','9780385737951','2009-10-06',9.99,12,'English'),(24,'The Scorch Trials','Dashner, James','9780385738767','2010-09-28',10.50,12,'English'),(25,'Eragon','Paolini, Christopher','9780375826696','2002-08-26',12.25,13,'English'),(26,'The Gunslinger','King, Stephen','9780451210843','1982-06-10',11.99,14,'English'),(27,'Library of Souls','Riggs, Ransom','9781594748400','2015-09-22',12.75,15,'English'),(28,'The Hobbit','Tolkien, J.R.R.','9780345339683','1937-09-21',13.99,2,'English'),(29,'1985: The Big Brotherening','Orwell, George','9780451524936','1949-06-08',9.99,NULL,'English'),(30,'The Great Gatsby','Fitzgerald, F. Scott','9780743273565','1925-04-10',10.99,NULL,'English'),(31,'Brave New World','Huxley, Aldous','9780060850524','1932-08-31',14.50,NULL,'English'),(32,'The Catcher in the Rye','Salinger, J.D.','9780316769488','1951-07-16',11.75,NULL,'English'),(33,'Moby Dick','Melville, Herman','9781503280786','1851-10-18',12.25,NULL,'English'),(34,'The Shining','King, Stephen','9780307743657','1977-01-28',15.00,NULL,'English'),(35,'The Girl on the Train','Hawkins, Paula','9781594633669','2015-01-13',14.25,NULL,'English'),(36,'Sapiens: A Brief History of Humankind','Harari, Yuval Noah','9780062316097','2015-02-10',18.99,16,'English'),(37,'Educated','Westover, Tara','9780399590504','2018-02-20',16.00,NULL,'English'),(38,'1984','Orwell, George','9780451524935','1949-06-08',9.50,NULL,'English'),(39,'Becoming','Obama, Michelle','9781524763138','2018-11-13',16.99,NULL,'English'),(40,'Sapiens','Harari, Yuval Noah','9780062316097','2011-09-04',18.99,16,'English'),(41,'Meditations','Aurelius, Marcus','9780140449334','0180-01-01',8.50,NULL,'English'),(42,'The Alchemist','Coelho, Paulo','9780061122415','1988-01-01',9.99,NULL,'English');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `rewards_points` int DEFAULT '0',
  `balance` decimal(6,2) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,50,25.50,'123-456-7890','alice.smith@email.com','Alice Smith'),(2,120,75.20,'987-654-3210','bob.johnson@email.net','Bob Johnson'),(3,10,5.00,'555-123-4567','charlie.brown@email.org','Charlie Brown'),(4,80,60.00,'321-654-9870','dana.white@email.com','Dana White'),(5,30,18.25,'444-555-6666','emily.green@email.org','Emily Green'),(6,100,35.75,'222-333-4444','frank.moore@email.net','Frank Moore'),(7,25,12.00,'666-777-8888','gina.black@email.io','Gina Black'),(8,60,45.50,'111-222-3333','henry.ford@email.com','Henry Ford'),(9,40,22.15,'777-888-9999','isla.north@email.com','Isla North'),(10,45,28.75,'111-333-5555','jack.daniels@email.com','Jack Daniels'),(11,95,50.00,'222-444-6666','kelly.monroe@email.net','Kelly Monroe'),(12,120,77.10,'333-555-7777','liam.woods@email.org','Liam Woods'),(13,15,10.00,'444-666-8888','mia.carter@email.com','Mia Carter'),(14,60,35.20,'555-777-9999','nathan.drake@email.com','Nathan Drake'),(15,25,18.90,'666-888-0000','olivia.benson@email.net','Olivia Benson'),(16,5,2.50,'777-000-1111','patrick.star@email.org','Patrick Star'),(17,70,42.30,'888-111-2222','quinn.harper@email.com','Quinn Harper'),(18,80,55.15,'999-222-3333','rachel.adams@email.net','Rachel Adams'),(19,35,20.45,'000-333-4444','samuel.green@email.org','Samuel Green'),(20,100,60.00,'123-321-4567','tina.turner@email.com','Tina Turner'),(21,40,22.10,'234-432-5678','ulysses.grant@email.net','Ulysses Grant'),(22,90,48.25,'345-543-6789','violet.summers@email.org','Violet Summers'),(23,10,5.00,'456-654-7890','wesley.chase@email.com','Wesley Chase'),(24,55,30.80,'567-765-8901','xena.foster@email.net','Xena Foster'),(25,65,38.00,'678-876-9012','yasmin.blake@email.org','Yasmin Blake');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hourly_rate` decimal(6,2) NOT NULL,
  `location` int NOT NULL,
  `is_manager` tinyint(1) NOT NULL,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `employees_chk_1` CHECK ((`hourly_rate` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John',NULL,'Doe',15.00,1,1),(2,'Jane','Marie','Smith',12.50,1,0),(3,'Emily',NULL,'Clark',14.25,2,0),(4,'George','H.','Adams',13.00,2,0),(5,'Hannah',NULL,'Lee',13.50,2,1),(6,'Ivan','M.','King',12.75,3,1),(7,'Ethan',NULL,'Brooks',13.50,4,0),(8,'Nora','Anne','Lopez',12.75,4,0),(9,'Carlos',NULL,'Ramirez',14.00,4,1),(10,'Priya','K.','Sharma',12.25,2,0),(11,'Leo',NULL,'Nguyen',13.00,5,1),(12,'Hannah',NULL,'Kim',11.75,3,0),(13,'Isabella',NULL,'Cruz',12.00,1,0),(14,'Mason','Lee','Anderson',12.50,1,0),(15,'Zoe',NULL,'Martinez',11.90,1,0),(16,'Avery','James','Patel',12.30,1,0),(17,'Sophie',NULL,'Diaz',11.75,5,0),(18,'Jaden',NULL,'White',13.10,5,0),(19,'Luna',NULL,'Garcia',12.60,3,0),(20,'Miles','Aaron','Baker',13.00,5,0),(21,'Chloe',NULL,'Robinson',12.40,4,0),(22,'Ryan','Lee','Gonzalez',12.50,1,0),(23,'Ella',NULL,'Reyes',11.90,2,0),(24,'David','Sam','Cook',13.00,3,0),(25,'Grace','Marie','Thompson',12.80,4,0),(26,'Owen','T.','Clark',13.20,5,0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Fantasy'),(2,'Science Fiction'),(3,'Mystery'),(4,'Thriller'),(5,'Romance'),(6,'Historical Fiction'),(7,'Young Adult'),(8,'Contemporary'),(9,'Horror'),(10,'Adventure'),(11,'Non-Fiction'),(12,'Biography'),(13,'Classic Literature'),(14,'Dystopian'),(15,'Drama'),(16,'Self-Help'),(17,'Science'),(18,'Poetry'),(19,'Crime'),(20,'Philosophy'),(21,'Comedy'),(22,'Memoir'),(23,'Travel'),(24,'Psychology'),(25,'Business'),(26,'Graphic Novel');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address_line_1` varchar(1000) NOT NULL,
  `address_line_2` varchar(1000) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` char(2) NOT NULL,
  `postal_code` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `sq_ft` int NOT NULL,
  `landmark_location` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `manager` int NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Main Street Store','123 Main St',NULL,'Anytown','CA','90210','5551112222',2000,'Near the park',1),(2,'Downtown Branch','456 Broadway Ave','Floor 2','Bigcity','NY','10001','5552223333',2500,'Next to the theater',5),(3,'Uptown Store','789 Hill Rd',NULL,'Greenville','TX','75401','5553334444',1800,'Opposite City Library',6),(4,'Eastside Branch','456 Elm St',NULL,'Eastville','NY','10001','5552223333',1500,'Next to Eastville Library',9),(5,'Lakeside Bookshop','789 Lake Rd','Suite 10','Laketown','TX','73301','5553334444',1800,'Opposite Lakeside Mall',11);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_contents`
--

DROP TABLE IF EXISTS `order_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_contents` (
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_id`,`book_id`),
  CONSTRAINT `order_contents_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_contents`
--

LOCK TABLES `order_contents` WRITE;
/*!40000 ALTER TABLE `order_contents` DISABLE KEYS */;
INSERT INTO `order_contents` VALUES (1,1,1),(1,2,1),(2,3,1),(2,5,1),(3,9,1),(4,4,1),(5,6,1),(5,11,1),(6,7,1),(6,16,1),(6,20,1),(7,3,1),(7,10,1),(7,21,1),(8,14,1),(8,22,1),(9,5,2),(9,23,1),(10,2,1),(10,24,1),(11,11,1),(11,25,1),(12,12,2),(12,26,1),(12,27,1),(13,6,1),(13,28,1),(13,29,1),(14,1,1),(14,4,1),(14,30,1),(15,9,1),(15,13,1),(16,15,1),(17,8,1),(18,12,1),(19,14,1),(20,1,1),(21,2,1),(22,16,1),(23,6,1),(24,5,1),(25,7,1);
/*!40000 ALTER TABLE `order_contents` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_book_stock` AFTER INSERT ON `order_contents` FOR EACH ROW BEGIN 
  UPDATE book_stock
  SET quantity = quantity - NEW.quantity
  WHERE book_id = NEW.book_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  `total_cost` decimal(7,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-04-01',21.98),(2,2,'2025-04-03',30.50),(3,1,'2025-04-05',10.50),(4,3,'2025-04-06',16.25),(5,2,'2025-04-07',25.74),(6,4,'2025-04-08',17.98),(7,5,'2025-04-09',25.00),(8,6,'2025-04-10',28.49),(9,7,'2025-04-11',18.99),(10,8,'2025-04-12',12.25),(11,9,'2025-04-13',20.00),(12,10,'2025-04-14',22.50),(13,11,'2025-04-08',18.99),(14,12,'2025-04-08',27.50),(15,13,'2025-04-09',14.99),(16,14,'2025-04-09',35.00),(17,15,'2025-04-10',22.75),(18,16,'2025-04-10',19.99),(19,17,'2025-04-11',12.50),(20,18,'2025-04-11',29.98),(21,19,'2025-04-12',26.00),(22,20,'2025-04-12',41.49),(23,1,'2025-04-13',13.25),(24,2,'2025-04-14',19.49),(25,13,'2025-04-15',22.30),(26,13,'2025-04-16',17.50),(27,16,'2025-04-17',11.99),(28,19,'2025-04-17',12.50),(29,25,'2025-04-18',33.75),(30,25,'2025-04-19',21.60),(31,5,'2025-04-19',25.00),(32,15,'2025-04-20',20.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'book_boutique'
--
/*!50003 DROP PROCEDURE IF EXISTS `p_book_percent_markdown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_book_percent_markdown`(IN book_id_param INT, IN percent_down_param DECIMAL(5,2))
BEGIN
	UPDATE books
    SET price = ROUND(price * ((100 - percent_down_param) / 100), 2)
    WHERE book_id = book_id_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_checkForOrderOrphans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_checkForOrderOrphans`()
    DETERMINISTIC
BEGIN
	DROP VIEW IF EXISTS order_orphan_view;
	CREATE VIEW order_orphan_view AS
    SELECT customer_id
    FROM orders
    WHERE customer_id NOT IN (SELECT customer_id FROM customers);
    
    SELECT * FROM order_orphan_view; -- change this to a remove statement ! !
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_global_percent_markdown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_global_percent_markdown`(IN percent_down_param INT)
BEGIN
	UPDATE books
    SET price = price * ((100 - percent_down_param) / 100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_remove_order_contents_orphans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_remove_order_contents_orphans`()
BEGIN
	DELETE FROM order_contents
    WHERE order_id NOT IN (
		SELECT order_id
        FROM orders
	);
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

-- Dump completed on 2025-05-04 16:21:53
