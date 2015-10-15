-- MySQL dump 10.13  Distrib 5.6.27, for osx10.8 (x86_64)
--
-- Host: cs4111.caxmabhvo5cr.us-west-2.rds.amazonaws.com    Database: cs4111
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresses` (
  `a_id` int(11) NOT NULL DEFAULT '0',
  `zip` int(11) NOT NULL,
  `building_number` int(11) DEFAULT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (2,10025,965,'Amsterdam Ave','New York','NY'),(4,10027,NULL,'116th St & Amsterdam Ave','New York','NY'),(6,10026,2162,'8th Ave','New York','NY'),(8,10025,2843,'Broadway','New York','NY'),(10,10025,1090,'Amsterdam Ave','New York','NY');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurants`
--

DROP TABLE IF EXISTS `Restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Restaurants` (
  `r_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `cuisine` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `a_id` (`a_id`),
  CONSTRAINT `Restaurants_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `Addresses` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES ('8oHCb-XvLpqCQD7En17Fzw','Chipotle','Mexican','http://s3-media2.ak.yelpcdn.com/bphoto/wLBz0C_Mudhb-0pAk7QTvQ/ms.jpg','2122221712','http://www.yelp.com/biz/chipotle-new-york-4',8),('K-wyXXi5lPM2cwaV9_vXcQ','Strokos','Delis','http://s3-media2.ak.yelpcdn.com/bphoto/_zy6XcN3ILmBLl7D7tQytA/ms.jpg','2126662121','http://www.yelp.com/biz/strokos-gourmet-deli-new-york',10),('O2jCWIOWb-IhyZGZLTNNoA','Peking Kitchen II','Chinese','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/peking-kitchen-ii-new-york',6),('TS1eYydoWdk9HwOUXhAgXg','Hoda Halal Cart','Food Stands','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/hoda-halal-cart-manhattan',4),('XCzjwOmvy_QROtczP8YlCA','Dominos Pizza','Pizza','http://s3-media3.ak.yelpcdn.com/bphoto/EunYRWiFJ2IsBE2sx0aEfQ/ms.jpg','2122222000','http://www.yelp.com/biz/dominos-pizza-new-york-21',2);
/*!40000 ALTER TABLE `Restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviewers`
--

DROP TABLE IF EXISTS `Reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reviewers` (
  `u_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `average_rating` float(3,2) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviewers`
--

LOCK TABLES `Reviewers` WRITE;
/*!40000 ALTER TABLE `Reviewers` DISABLE KEYS */;
INSERT INTO `Reviewers` VALUES ('etOopsEJLBC7R13RSI4HaQ','Joshua Z.',19,3.74),('hIpXo2cSZ2jAjSYadNxwSg','David C.',26,4.46),('hkXI5ziRVzExHo6C-0JlAQ','Angela F.',5,4.00),('kIeBFp6DU3E1THLz4RFOlw','Dimitrios D.',1106,3.64),('l2VkeZn9W2CgpGu-NtpIYw','Daniel M.',27,3.52),('Lb37hatAjI3fgHEh2lMNEw','Josh K.',688,3.69),('R8mO8EMcBrkI5g1kBb8TVA','Laura Y.',147,4.18),('rlSiggm5Xb92HdO5JkMo1Q','Kate M.',301,3.10),('TbVl1HA_ozOCln0hJ4HXFg','Joia B.',5,4.00),('xUbdKdiJoXo9-QqRqWrcSQ','Mari A.',37,3.65);
/*!40000 ALTER TABLE `Reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reviews` (
  `u_id` varchar(50) NOT NULL DEFAULT '',
  `r_id` varchar(50) NOT NULL DEFAULT '',
  `date_reviewed` date DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rating` float(3,2) DEFAULT NULL,
  PRIMARY KEY (`u_id`,`r_id`),
  KEY `r_id` (`r_id`),
  CONSTRAINT `Reviews_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `Reviewers` (`u_id`),
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `Restaurants` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES ('etOopsEJLBC7R13RSI4HaQ','O2jCWIOWb-IhyZGZLTNNoA','2012-03-04','I\'m not sure when these guys opened but I\'ve been walking by there for months.   If I\'m ordering out Chinese I usually go with West Place (or Thai Market for Thai food...MMM!!)  I\'ve lived in the neighborhood for 4+ years and have little experience with t',4.00),('hIpXo2cSZ2jAjSYadNxwSg','K-wyXXi5lPM2cwaV9_vXcQ','2011-03-12','Massive and tasty salads for only $6.95',4.00),('hkXI5ziRVzExHo6C-0JlAQ','TS1eYydoWdk9HwOUXhAgXg','2012-09-14','Perfect for late nights - spend the extra 2 dollars and get the rice too :)',5.00),('kIeBFp6DU3E1THLz4RFOlw','8oHCb-XvLpqCQD7En17Fzw','2011-03-06','It\'s a Chipotle.\n\nIt\'s relatively near to Columbia University, so convenient for students who go there.\n\nThere\'s almost always a line when I go.\n\nI love the chicken tacos.  One hard, two soft.  With cheese, the red salsa, the diced tomatoes, and guacamole',4.00),('l2VkeZn9W2CgpGu-NtpIYw','8oHCb-XvLpqCQD7En17Fzw','2012-01-10','A pretty crowded Chipotle... but clean and excellent, with efficient service and always fantastic ingredients.\n\nBurrito love.',5.00),('Lb37hatAjI3fgHEh2lMNEw','O2jCWIOWb-IhyZGZLTNNoA','2012-04-22','It may not look like much.. but it\'s way better than Szechuan Garden Kitchen down the street and still manages to be less ghetto-looking. The things that say \'spicy\' are actually spicy. Plus, they offer hot and sour soup with their lunch special and SGK d',4.00),('R8mO8EMcBrkI5g1kBb8TVA','TS1eYydoWdk9HwOUXhAgXg','2011-07-14','I don\'t know why there aren\'t more reviews for this place. Every morning whenever I go to work, I always pass by this stand and one day I actually got the chance to buy from them. I got a chicken gyro with white sauce, and it was delicious. The chicken wa',4.00),('rlSiggm5Xb92HdO5JkMo1Q','K-wyXXi5lPM2cwaV9_vXcQ','2008-12-17','Overpriced, mediocre food.',2.00),('TbVl1HA_ozOCln0hJ4HXFg','XCzjwOmvy_QROtczP8YlCA','2012-01-27','All I read are bad reviews for Dominos. Granted they\'re not better than mom & pops pizza where I can buy by the slice BUT this Dominos is great. I always get delivery & they never take long. Pizza is always hot & delicious. & the people on the phone are p',4.00),('xUbdKdiJoXo9-QqRqWrcSQ','XCzjwOmvy_QROtczP8YlCA','2011-01-11','I\'ve always hated this Dominos because they don\'t take almost all Dominos coupons, but now I REALLY hate them... introducing the $1.50 delivery charge. \n\nWith so many better pizza options in the \'hood that deliver for free, I guess I won\'t be ordering fro',1.00);
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViolationSummaries`
--

DROP TABLE IF EXISTS `ViolationSummaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViolationSummaries` (
  `v_id` int(11) NOT NULL DEFAULT '0',
  `date_inspected` date NOT NULL,
  `violation_count` int(11) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `r_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`v_id`),
  KEY `r_id` (`r_id`),
  CONSTRAINT `ViolationSummaries_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `Restaurants` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViolationSummaries`
--

LOCK TABLES `ViolationSummaries` WRITE;
/*!40000 ALTER TABLE `ViolationSummaries` DISABLE KEYS */;
INSERT INTO `ViolationSummaries` VALUES (21,'2015-03-13',3,'B','XCzjwOmvy_QROtczP8YlCA'),(22,'2015-08-06',2,'A','XCzjwOmvy_QROtczP8YlCA'),(81,'2013-04-29',3,'A','8oHCb-XvLpqCQD7En17Fzw'),(82,'2015-01-22',3,'A','8oHCb-XvLpqCQD7En17Fzw'),(101,'2014-09-05',3,'B','K-wyXXi5lPM2cwaV9_vXcQ'),(102,'2015-03-20',3,'A','K-wyXXi5lPM2cwaV9_vXcQ');
/*!40000 ALTER TABLE `ViolationSummaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Violations`
--

DROP TABLE IF EXISTS `Violations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Violations` (
  `v_id` int(11) NOT NULL DEFAULT '0',
  `violation_detail` varchar(255) NOT NULL DEFAULT '',
  `critical` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`v_id`,`violation_detail`),
  CONSTRAINT `Violations_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `ViolationSummaries` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Violations`
--

LOCK TABLES `Violations` WRITE;
/*!40000 ALTER TABLE `Violations` DISABLE KEYS */;
INSERT INTO `Violations` VALUES (21,'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.',1),(21,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(21,'Filth flies or food/refuse/sewage-associated (FRSA) flies present in facility\Zs food and/or non-food areas. Filth flies include house flies, little house flies, blow flies, bottle flies and flesh flies. Food/refuse/sewage-associated flies include fruit fl',1),(22,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(22,'Live roaches present in facility\'s food and/or non-food areas.',0),(81,'Hot food item not held at or above 140Âº F.',1),(81,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(81,'Nuisance created or allowed to exist. Facility not free from unsafe, hazardous, offensive or annoying conditions.',0),(82,'Food contact surface not properly washed, rinsed and sanitized after each use and following any activity when contamination may have occurred.',1),(82,'Food not protected from potential source of contamination during storage, preparation, transportation, display or service.',1),(82,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(101,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(101,'Live roaches present in facility\'s food and/or non-food areas.',1),(101,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(102,'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.',1),(102,'Plumbing not properly installed or maintained; anti-siphonage or backflow prevention device not provided where required; equipment or floor not properly drained; sewage disposal system in disrepair or not functioning properly.',0),(102,'Proper sanitization not provided for utensil ware washing operation.',0);
/*!40000 ALTER TABLE `Violations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-15  1:14:12
