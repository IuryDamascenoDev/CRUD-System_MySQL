-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: course_database
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Professors`
--

DROP TABLE IF EXISTS `Professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professors` (
  `ProfessorId` int DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professors`
--

LOCK TABLES `Professors` WRITE;
/*!40000 ALTER TABLE `Professors` DISABLE KEYS */;
INSERT INTO `Professors` VALUES (1,'Remo','Lupin','Python'),(2,'Severus','Snape','SQL'),(3,'Minerva','McGonagall','PySpark'),(4,'Rubeus','Hagrid','Google Cloud'),(5,'Alastor','Moody','Docker');
/*!40000 ALTER TABLE `Professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProfessorsPasswords`
--

DROP TABLE IF EXISTS `ProfessorsPasswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProfessorsPasswords` (
  `ProfessorId` int DEFAULT NULL,
  `Password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProfessorsPasswords`
--

LOCK TABLES `ProfessorsPasswords` WRITE;
/*!40000 ALTER TABLE `ProfessorsPasswords` DISABLE KEYS */;
INSERT INTO `ProfessorsPasswords` VALUES (1,'patronum'),(2,'lily'),(3,'vera verto'),(4,'buckbeak'),(5,'crouchjr');
/*!40000 ALTER TABLE `ProfessorsPasswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `StudentId` int DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Grade1` float DEFAULT NULL,
  `Grade2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1269,'Allan','Burgess',4.9,6.8),(2020,'Kaila','Sparks',5.1,7.6),(1616,'Miriam','Ward',4.5,5),(2979,'Finley','Curtis',5.9,8.8),(1728,'Lorenzo','Hunter',8.3,5.8),(2061,'Jairo','Mullins',5.4,6),(2085,'Nico','Hunt',7.4,8.5),(1481,'Janelle','Mays',7,4),(2298,'Matthew','Yoder',9,4.7),(2633,'Aiden','Ramsey',5.3,8.3),(1743,'Orion','Wheeler',9.4,9),(2122,'Anton','Kennedy',9.6,4.4),(1174,'Emilee','Mercado',5.9,5.6),(2538,'Johnny','Cantrell',9.9,6.6),(1798,'Alexzander','Duarte',7.5,4.7),(1617,'Kyra','Mack',9,10),(2971,'Zaria','Sampson',9.1,5.6),(2884,'Terrell','Petty',6.4,7.6),(2697,'Rylee','Henry',7,7),(1127,'Maximus','Gomez',7.3,7.2),(2305,'Amya','Owens',10,9.8),(1487,'Waylon','Cannon',4.9,8.5),(1569,'Scarlet','Duncan',7.2,4.7),(1079,'Carlo','Wall',7,8.9),(2680,'Ella','Woodward',7.5,9.7),(2022,'Melina','Mitchell',4.7,6.1),(2817,'Jordyn','Brandt',5.6,6.1),(2341,'Ronan','Randolph',9.7,9.8),(1874,'Jamie','Sanchez',4.9,6.1),(1166,'Jayden','Castro',7.8,5.7),(1894,'Chaz','Jordan',5.1,8.3),(2839,'Hassan','Austin',4.9,8.8),(2317,'Jacey','Summers',8.7,6.7),(1581,'Campbell','Mosley',7.5,6.3),(1488,'Randy','Sullivan',9,5),(2065,'Asher','Allen',4,7.1),(2926,'Antoine','Fleming',4.7,4.3),(2372,'Ace','Lambert',7.9,6.5),(1306,'Haylee','Brady',5.9,4.8),(1240,'Layton','Shields',8,6.3),(2871,'Whitney','Schmidt',4.3,9.1),(2537,'Madeline','Meyer',9.5,6.3),(2039,'Arthur','Shea',4.9,8.5),(2559,'Braylon','Bell',7.3,6.4),(1968,'Katherine','Nichols',9.5,5.3),(2705,'Allison','Lang',5.9,7.9),(1124,'Jaliyah','Dennis',8.9,7),(1565,'Brandon','Cisneros',7.9,6),(2404,'Deven','Perry',6.3,6.9),(1011,'Sterling','York',8.9,5.7),(1611,'Claudia','Olson',7.6,4.4),(1374,'Marely','Bird',4.8,6.5),(2181,'Julien','Lopez',6.8,4.1),(2795,'Daniella','Bowers',4.6,9.1),(1644,'Micaela','Jacobson',4.1,4.8),(2578,'Arianna','Ayala',7.2,5.4),(1669,'Isiah','Dodson',8.5,8.5),(1711,'Liberty','Marquez',6.2,9.7),(1211,'Yamilet','Nixon',4.3,4.3),(2143,'Frankie','Patrick',8.6,9.6),(2893,'Josiah','Ross',4.7,8.1),(1243,'Denisse','Adkins',4.6,9.7),(1182,'Camden','Matthews',7.7,6),(1002,'Jaxson','Cain',9.4,9.1),(2981,'Jermaine','Armstrong',5.1,9.7),(2513,'Ty','Vargas',5,4.6),(2991,'Lyla','Cobb',7.3,9.4),(2808,'Clayton','Mckay',6,5),(2315,'Sadie','Bentley',8.7,8.7),(1693,'Leyla','Leon',9,4.7),(1763,'Kinsley','Peck',8.8,9),(1751,'Kamora','Dickerson',6.8,6.5),(2810,'Cristina','Patton',5.4,5.7),(2449,'Josh','Banks',8.4,4.9),(1293,'Amina','Lucero',6,5.6),(2319,'George','Keller',6.9,9.2),(2613,'Cordell','Pearson',4.1,5.9),(1251,'Jimena','Park',7.5,4.9),(1429,'Amani','Kirby',5.6,9.7),(1106,'Luka','Mendez',5.8,4.9),(2162,'Keaton','Ritter',4.3,5),(1959,'Jax','Cooley',5.9,4.1),(2096,'Issac','Flowers',4.6,4.3),(2261,'Matthias','Mcdowell',4.6,7),(1883,'Cash','Barron',9.3,9.3),(2051,'Fatima','Browning',5.4,7.4),(2548,'Dillan','Pitts',7.8,7.8),(1373,'Kaiden','Ellison',8.3,7.5),(1435,'Brady','Melendez',4.7,9.6),(1132,'Salvador','Griffin',4.8,9.9),(2590,'Averie','Rich',9.1,7.1),(2210,'Piper','Wilkerson',6.5,5.7),(2989,'Madden','Daugherty',4.1,7.7),(1557,'Tanya','Gamble',4.9,7),(1923,'Jade','Logan',8.1,6.5),(1221,'Brynlee','Frazier',8,4.4),(2109,'Hayley','Beard',5.6,8.3),(2322,'Sanaa','Dawson',4.5,9.4),(2148,'Shannon','Durham',6.2,4.7),(1496,'Mckenzie','Delacruz',6.2,4.6),(2869,'Jordin','Craig',9.7,7.3),(1387,'Larry','Schroeder',5.7,9.3),(1613,'Ruth','Richard',7,5.1),(2703,'Daphne','Salinas',7.4,9.5),(1792,'Mya','Bowman',8.5,8.9),(1568,'Harry','David',8.2,7),(2375,'Raegan','Baker',5.4,8.7),(2963,'Abagail','Rosales',8.9,7.3),(1697,'Aarav','Sloan',8.1,9.4),(1708,'Aydan','Roy',6.5,9.4),(1513,'Olivia','Oneill',4.2,7.7),(2658,'Aleah','Scott',5.1,6.1),(1438,'Jett','Arellano',8.2,7.8),(2043,'Owen','Zavala',9.7,9.9),(1131,'Janiah','Sharp',5.2,9.2),(1756,'Prince','Collins',7,9.1),(1424,'Rohan','Finley',4.2,8.2),(2246,'Aracely','Poole',7.7,4.5),(2579,'Marcus','Floyd',6,8.8),(2567,'Emery','Levy',7.8,8.3),(2609,'Jovany','Richardson',4.7,9),(1109,'Finley','Benson',7.6,9.4),(1486,'Reyna','Winters',5,8.3),(2575,'Selina','Roach',4.8,9.3),(2924,'Deacon','Mccarty',4.1,9.8),(2409,'Hallie','Collier',7.2,4.5),(1312,'Cael','Davila',5.3,8.7),(2098,'Marina','Murphy',5.1,10),(2453,'Emelia','Ingram',6,9.1),(2543,'Deangelo','Drake',7.3,4),(1232,'Claire','Randall',5.4,7.6),(2654,'Russell','Bradley',7.2,4.4),(1529,'Aubree','Russell',8.1,9.6),(2911,'Toby','Schneider',8.2,9.5),(1660,'Madyson','Leblanc',9.6,6),(2466,'Erik','Williamson',7.2,4.6),(2776,'Deborah','Montes',4.8,9.5),(1056,'Katelyn','Neal',4.5,6.8),(1641,'Eileen','Marks',8.3,9.6),(2725,'Nasir','Evans',4.8,6.8),(7575,'iury','damas',6.8,NULL);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-31 17:18:39
