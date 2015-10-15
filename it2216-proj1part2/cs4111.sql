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
INSERT INTO `Addresses` VALUES (1,10027,409,'W 125th Street','New York','NY'),(2,10025,965,'Amsterdam Ave','New York','NY'),(3,10025,2848,'Broadway','New York','NY'),(4,10027,NULL,'116th St & Amsterdam Ave','New York','NY'),(5,10025,994,'Amsterdam Ave','New York','NY'),(6,10026,2162,'8th Ave','New York','NY'),(7,10026,2115,'Frederick Douglas Blvd','New York','NY'),(8,10025,2843,'Broadway','New York','NY'),(9,10025,2876,'Broadway','New York','NY'),(10,10025,1090,'Amsterdam Ave','New York','NY');
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
INSERT INTO `Restaurants` VALUES ('4n4wMkDnDY7cuWOya8UumA','DOMINO\'S PIZZA','Pizza','http://s3-media4.ak.yelpcdn.com/bphoto/NzW5Gim185yE17OgZkE0UA/ms.jpg','2128310300','http://www.yelp.com/biz/dominos-pizza-new-york-5',1),('8oHCb-XvLpqCQD7En17Fzw','Chipotle','Mexican','http://s3-media2.ak.yelpcdn.com/bphoto/wLBz0C_Mudhb-0pAk7QTvQ/ms.jpg','2122221712','http://www.yelp.com/biz/chipotle-new-york-4',8),('A46G2OAvLxFswiONB50Rrg','Koronet Pizza','Pizza','http://s3-media3.ak.yelpcdn.com/bphoto/OOI3c4GFqcecgbhKimHKRA/ms.jpg',NULL,'http://www.yelp.com/biz/koronet-pizza-new-york',3),('dXO0TAdU8RCDw54r2MQLrA','Global Ink','Tobacco Shops','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/global-ink-new-york',9),('K-wyXXi5lPM2cwaV9_vXcQ','Strokos','Delis','http://s3-media2.ak.yelpcdn.com/bphoto/_zy6XcN3ILmBLl7D7tQytA/ms.jpg','2126662121','http://www.yelp.com/biz/strokos-gourmet-deli-new-york',10),('LvzfVDlvb9r0fcGXeitVKw','Cafe 2115','African','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/cafe-2115-new-york',7),('O2jCWIOWb-IhyZGZLTNNoA','Peking Kitchen II','Chinese','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/peking-kitchen-ii-new-york',6),('TS1eYydoWdk9HwOUXhAgXg','Hoda Halal Cart','Food Stands','http://s3-media1.ak.yelpcdn.com/assets/2/www/img/924a6444ca6c/gfx/blank_biz_medium.gif',NULL,'http://www.yelp.com/biz/hoda-halal-cart-manhattan',4),('XCzjwOmvy_QROtczP8YlCA','Dominos Pizza','Pizza','http://s3-media3.ak.yelpcdn.com/bphoto/EunYRWiFJ2IsBE2sx0aEfQ/ms.jpg','2122222000','http://www.yelp.com/biz/dominos-pizza-new-york-21',2),('Y2I946V78wOdwaUD9chmqg','Roti Roll - Bombay Frankie','Indian','http://s3-media1.ak.yelpcdn.com/bphoto/qyJRbsFfI0Xqm3oQLbMPKQ/ms.jpg','2126661500','http://www.yelp.com/biz/roti-roll-bombay-frankie-new-york',5);
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
INSERT INTO `Reviewers` VALUES ('AQYDb8xFq5nx5FkpDs1b9w','Mr. F',3,3.76),('etOopsEJLBC7R13RSI4HaQ','Joshua Z.',19,3.74),('GnpRTI2kCEdgmLYPsDGGMQ','Matt B.',11,4.09),('h7cX02YMLzyobfZ7E-mg-Q','Heather H.',534,3.64),('hIpXo2cSZ2jAjSYadNxwSg','David C.',26,4.46),('hkXI5ziRVzExHo6C-0JlAQ','Angela F.',5,4.00),('kIeBFp6DU3E1THLz4RFOlw','Dimitrios D.',1106,3.64),('KOv1fgh33thUmvPfmC0DUQ','Natasha L.',63,3.94),('l2VkeZn9W2CgpGu-NtpIYw','Daniel M.',27,3.52),('Lb37hatAjI3fgHEh2lMNEw','Josh K.',688,3.69),('n73Qtb87fvLhiMzTK9ppxw','Felicia M.',4,9.99),('qtTd_VDFXoeNkJKrtQ4R2g','Evan H.',564,3.74),('R8mO8EMcBrkI5g1kBb8TVA','Laura Y.',147,4.18),('rlSiggm5Xb92HdO5JkMo1Q','Kate M.',301,3.10),('TbVl1HA_ozOCln0hJ4HXFg','Joia B.',5,4.00),('tvLU1kOukJM-U9-i8cZ0eg','oZ P.',8,3.38),('x3hyh8K4XIAyJ_K39fpOuw','Kate F.',590,3.70),('xUbdKdiJoXo9-QqRqWrcSQ','Mari A.',37,3.65),('YXMiSBrLNcnbxnfMK4BVug','Scott R.',32,3.97);
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
  CONSTRAINT `Reviews_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `Reviewers` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `Restaurants` (`r_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES ('AQYDb8xFq5nx5FkpDs1b9w','LvzfVDlvb9r0fcGXeitVKw','2012-08-15','Stopped in here for dinner recently.  A terrible experience all around.\n\nFirst, the setting.  It is not the most pleasant experience to enjoy a meal.  The decor resembles a cafeteria, which isn\'t really that big of a deal.  When we went there were a group',1.00),('etOopsEJLBC7R13RSI4HaQ','O2jCWIOWb-IhyZGZLTNNoA','2012-03-04','I\'m not sure when these guys opened but I\'ve been walking by there for months.   If I\'m ordering out Chinese I usually go with West Place (or Thai Market for Thai food...MMM!!)  I\'ve lived in the neighborhood for 4+ years and have little experience with t',4.00),('GnpRTI2kCEdgmLYPsDGGMQ','LvzfVDlvb9r0fcGXeitVKw','2012-02-06','Stopped here for breakfast with a friend of mine who lives nearby.  We had an awful time.  Service was horrible, despite the restaurant being nearly empty.  My friend never even got anything to drink.  Our breakfast (one egg sandwich and one order of grit',1.00),('h7cX02YMLzyobfZ7E-mg-Q','dXO0TAdU8RCDw54r2MQLrA','2014-07-30','Global Ink had a funny history.  Back when it opened in 1999 there was quite a bit of controversy because six months later a chain store, Universal News, opened across the street from it.  For years, the two stores duked it out, Global Ink always claiming',3.00),('hIpXo2cSZ2jAjSYadNxwSg','K-wyXXi5lPM2cwaV9_vXcQ','2011-03-12','Massive and tasty salads for only $6.95',4.00),('hkXI5ziRVzExHo6C-0JlAQ','TS1eYydoWdk9HwOUXhAgXg','2012-09-14','Perfect for late nights - spend the extra 2 dollars and get the rice too :)',5.00),('kIeBFp6DU3E1THLz4RFOlw','8oHCb-XvLpqCQD7En17Fzw','2011-03-06','It\'s a Chipotle.\n\nIt\'s relatively near to Columbia University, so convenient for students who go there.\n\nThere\'s almost always a line when I go.\n\nI love the chicken tacos.  One hard, two soft.  With cheese, the red salsa, the diced tomatoes, and guacamole',4.00),('KOv1fgh33thUmvPfmC0DUQ','4n4wMkDnDY7cuWOya8UumA','2011-04-23','I think their new recipe is pretty good. The crust is garlicy, and cooked to perfection. Consistently good delivery. \n\nSure, it\'s Dominos - yes, they\'re a chain, blah blah blah - but, do you want good pizza or not? It\'s good. Have ordered from here severa',4.00),('l2VkeZn9W2CgpGu-NtpIYw','8oHCb-XvLpqCQD7En17Fzw','2012-01-10','A pretty crowded Chipotle... but clean and excellent, with efficient service and always fantastic ingredients.\n\nBurrito love.',5.00),('Lb37hatAjI3fgHEh2lMNEw','O2jCWIOWb-IhyZGZLTNNoA','2012-04-22','It may not look like much.. but it\'s way better than Szechuan Garden Kitchen down the street and still manages to be less ghetto-looking. The things that say \'spicy\' are actually spicy. Plus, they offer hot and sour soup with their lunch special and SGK d',4.00),('n73Qtb87fvLhiMzTK9ppxw','A46G2OAvLxFswiONB50Rrg','2011-11-08','This is a review for their pizza delivery service. Ordered a small 16 plain cheese pizza for $15 + tips. Pizza arrived promptly, in about 30 min, and still warm.\n\nHuge slices, great cheese to dough ratio so that it\'s not too salty. Thicker, chewy dough, i',4.00),('qtTd_VDFXoeNkJKrtQ4R2g','Y2I946V78wOdwaUD9chmqg','2010-07-18','After a few beers at 1020, just up the street, this is the perfect place to satisfy a late night craving and hunger.  I recently moved to NYC, and wouldn\'t have expected Indian food to be the type of food to fill that craving.  But, then i think... And it',4.00),('R8mO8EMcBrkI5g1kBb8TVA','TS1eYydoWdk9HwOUXhAgXg','2011-07-14','I don\'t know why there aren\'t more reviews for this place. Every morning whenever I go to work, I always pass by this stand and one day I actually got the chance to buy from them. I got a chicken gyro with white sauce, and it was delicious. The chicken wa',4.00),('rlSiggm5Xb92HdO5JkMo1Q','K-wyXXi5lPM2cwaV9_vXcQ','2008-12-17','Overpriced, mediocre food.',2.00),('TbVl1HA_ozOCln0hJ4HXFg','XCzjwOmvy_QROtczP8YlCA','2012-01-27','All I read are bad reviews for Dominos. Granted they\'re not better than mom & pops pizza where I can buy by the slice BUT this Dominos is great. I always get delivery & they never take long. Pizza is always hot & delicious. & the people on the phone are p',4.00),('tvLU1kOukJM-U9-i8cZ0eg','4n4wMkDnDY7cuWOya8UumA','2011-07-20','So whack! Ordered a Large and got something that looked smaller than a medium....a Smedium. Took 44 minutes to arrive. Arrived cold. Bread sticks were only enough for half a person, maybe good for your irregular anorexic girlfriend.',1.00),('x3hyh8K4XIAyJ_K39fpOuw','Y2I946V78wOdwaUD9chmqg','2009-07-30','I love food that comes rolled in bread. \nI love Indian flavors. \nI love inexpensive and generous things. \n\nClearly, roti roll and I are a match made in heaven. 2 rolls for $6-10 depending on what\'s in them. I like the basic egg, potato, pea mixture, which',4.00),('xUbdKdiJoXo9-QqRqWrcSQ','XCzjwOmvy_QROtczP8YlCA','2011-01-11','I\'ve always hated this Dominos because they don\'t take almost all Dominos coupons, but now I REALLY hate them... introducing the $1.50 delivery charge. \n\nWith so many better pizza options in the \'hood that deliver for free, I guess I won\'t be ordering fro',1.00),('YXMiSBrLNcnbxnfMK4BVug','A46G2OAvLxFswiONB50Rrg','2007-01-13','I don\'t go out of my way for a Koronet slice but I drop in for a slice after playing tennis up on the Columbia courts some weekend afternoons.   \n\nThis slice reminds me of the type you get on the Jersey shore boardwalk - big enough that you don\'t automati',4.00);
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
  CONSTRAINT `ViolationSummaries_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `Restaurants` (`r_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViolationSummaries`
--

LOCK TABLES `ViolationSummaries` WRITE;
/*!40000 ALTER TABLE `ViolationSummaries` DISABLE KEYS */;
INSERT INTO `ViolationSummaries` VALUES (11,'2015-04-23',6,'A','4n4wMkDnDY7cuWOya8UumA'),(12,'2015-04-23',6,'A','4n4wMkDnDY7cuWOya8UumA'),(21,'2015-03-13',3,'B','XCzjwOmvy_QROtczP8YlCA'),(22,'2015-08-06',2,'A','XCzjwOmvy_QROtczP8YlCA'),(31,'2015-07-06',12,'A','A46G2OAvLxFswiONB50Rrg'),(32,'2015-07-06',12,'A','A46G2OAvLxFswiONB50Rrg'),(51,'2015-06-15',15,'A','Y2I946V78wOdwaUD9chmqg'),(52,'2014-10-31',20,'B','Y2I946V78wOdwaUD9chmqg'),(81,'2013-04-29',3,'A','8oHCb-XvLpqCQD7En17Fzw'),(82,'2015-01-22',3,'A','8oHCb-XvLpqCQD7En17Fzw'),(101,'2014-09-05',3,'B','K-wyXXi5lPM2cwaV9_vXcQ'),(102,'2015-03-20',3,'A','K-wyXXi5lPM2cwaV9_vXcQ');
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
  CONSTRAINT `Violations_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `ViolationSummaries` (`v_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Violations`
--

LOCK TABLES `Violations` WRITE;
/*!40000 ALTER TABLE `Violations` DISABLE KEYS */;
INSERT INTO `Violations` VALUES (11,'Covered garbage receptacle not provided or inadequate, except that garbage receptacle may be uncovered during active use. Garbage storage area not properly constructed or maintained; grinder or compactor dirty.',0),(12,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(21,'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.',1),(21,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(21,'Filth flies or food/refuse/sewage-associated (FRSA) flies present in facility\Zs food and/or non-food areas. Filth flies include house flies, little house flies, blow flies, bottle flies and flesh flies. Food/refuse/sewage-associated flies include fruit fl',1),(22,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(22,'Live roaches present in facility\'s food and/or non-food areas.',0),(31,'Hot food item not held at or above 140Âº F.',0),(32,'Hot food item not held at or above 140Âº F.',0),(51,'Food contact surface not properly washed, rinsed and sanitized after each use and following any activity when contamination may have occurred.',0),(52,'Hot food item not held at or above 140º F.',1),(81,'Hot food item not held at or above 140Âº F.',1),(81,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(81,'Nuisance created or allowed to exist. Facility not free from unsafe, hazardous, offensive or annoying conditions.',0),(82,'Food contact surface not properly washed, rinsed and sanitized after each use and following any activity when contamination may have occurred.',1),(82,'Food not protected from potential source of contamination during storage, preparation, transportation, display or service.',1),(82,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(101,'Facility not vermin proof. Harborage or conditions conducive to attracting vermin to the premises and/or allowing vermin to exist.',0),(101,'Live roaches present in facility\'s food and/or non-food areas.',1),(101,'Non-food contact surface improperly constructed. Unacceptable material used. Non-food contact surface or equipment improperly maintained and/or not properly sealed, raised, spaced or movable to allow accessibility for cleaning on all sides, above and unde',0),(102,'Cold food item held above 41Ã‚Âº F (smoked fish and reduced oxygen packaged foods above 38 Ã‚ÂºF) except during necessary preparation.',1),(102,'Plumbing not properly installed or maintained; anti-siphonage or backflow prevention device not provided where required; equipment or floor not properly drained; sewage disposal system in disrepair or not functioning properly.',0),(102,'Proper sanitization not provided for utensil ware washing operation.',0);
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

-- Dump completed on 2015-10-15 14:37:21
