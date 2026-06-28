-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yandcprod
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB-1:10.7.3+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES
(1,'2014-11-08 07:00:00','admin','5121a7ee4fc60dc04219c03db87d75ae');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_order` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `id_order` (`id_order`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'2014-10-06 19:53:23',1,'Binder Accessories','These accessories are used to improve the look of a binder or to help organize and customize your binders for whatever your needs may be.','binder-acc-cd-dots-jpg.jpg','binder-accessories-cd-dots'),
(2,'2014-10-06 19:53:23',2,'Ceiling Display','Need to hang and display a product from a ceiling?  Use these products to help drive interest and close sales by showcasing your products in an appealing and attention grabbing manner!','ceiling-display-jpg.jpg','ceiling-display'),
(3,'2014-10-06 19:54:07',3,'Display Construction','Items and accessories that assist in the creation of displays that draw customer attention to exactly where and how you desire.','display-construction-jpg.jpg','display-construction'),
(4,'2014-10-06 19:54:07',4,'Display Hooks and Accessories','We carry multiple hooks and accessories used for displaying products on store walls, pegboards, slat walls and many more types of mountable surfaces.','display-hooks-jpg.jpg','display-hooks-and-accessories'),
(5,'2014-10-06 19:54:47',5,'Literature Holders','Need to display a piece of literature in an attention grabbing manner?  These products can be used to store and display flyers, brochures, catalogs and other forms of media.','literature-coupon-holder-jpg.jpg','literature-holders'),
(6,'2014-10-06 19:54:47',6,'Merchandising ','Items used to display retail products to be sold. Many different products are available to showcase your items in the manner you desire to increase customer attention and ultimately sales.','merchandising-jpg.jpg','merchandising'),
(7,'2014-10-06 19:55:13',7,'Sign Holders','Durable and flexible items used to put up signs, alerts and promotions. Available in multiple styles and materials.','sign-holders-jpg.jpg','sign-holders');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `extra` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES
(1,'2014-10-12 06:00:00','Question 1','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n',''),
(2,'2014-10-14 06:00:00','Question 2','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n',''),
(3,'2014-10-14 23:37:56','Question 3','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n','');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id_information` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `label` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_information`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES
(1,'2014-10-08 00:10:18','Phone:','714-676-1412'),
(2,'2014-10-08 00:10:18','Fax:','714-897-3444'),
(3,'2014-10-08 00:10:30','Email:','info@ycdisp.com'),
(4,'2014-10-13 14:30:07','PDF Catalog','y-c-catalog.pdf');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation` (
  `id_navigation` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `label` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `extra` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_navigation`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation`
--

LOCK TABLES `navigation` WRITE;
/*!40000 ALTER TABLE `navigation` DISABLE KEYS */;
INSERT INTO `navigation` VALUES
(1,'2014-10-06 18:59:26','Home','',''),
(2,'2014-10-06 18:59:26','About Us','about',''),
(3,'2014-10-06 19:00:47','Products','products',''),
(4,'2014-10-06 19:00:47','FAQ','faq',''),
(5,'2014-10-06 19:01:03','Contact','contact','');
/*!40000 ALTER TABLE `navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pColors`
--

DROP TABLE IF EXISTS `pColors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pColors` (
  `id_pColor` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_product` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pColor`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pColors`
--

LOCK TABLES `pColors` WRITE;
/*!40000 ALTER TABLE `pColors` DISABLE KEYS */;
INSERT INTO `pColors` VALUES
(9,'2017-02-10 01:54:58',7,'Clear'),
(8,'2017-02-10 01:54:54',7,'Black'),
(7,'2017-02-10 01:54:50',7,'White'),
(4,'2017-02-10 01:45:36',8,'Black'),
(5,'2017-02-10 01:45:41',8,'White'),
(6,'2017-02-10 01:45:45',8,'Custom'),
(10,'2017-02-10 02:10:32',13,'White'),
(11,'2017-02-10 02:10:36',13,'Black'),
(12,'2017-02-10 02:10:40',13,'Custom'),
(13,'2017-02-10 02:12:14',14,'Black'),
(14,'2017-02-10 02:12:19',14,'Natural'),
(15,'2017-02-10 02:30:53',16,'Clear'),
(16,'2017-02-10 02:33:56',18,'White'),
(17,'2017-02-10 02:36:03',19,'Black'),
(18,'2017-02-10 02:36:08',19,'Natural'),
(19,'2018-08-17 18:12:17',27,'Black'),
(20,'2018-08-17 18:12:26',27,'White'),
(21,'2018-08-17 18:20:04',28,'Black'),
(22,'2018-08-17 18:20:08',28,'White'),
(23,'2018-08-17 18:20:44',28,'Red (may require minimum quantity to order)'),
(24,'2018-08-17 18:21:13',28,'Yellow (may require minimum quantity to order)'),
(25,'2018-08-17 18:21:25',28,'Blue (may require minimum quantity to order)'),
(26,'2018-08-20 02:40:55',32,'Black'),
(27,'2018-08-20 02:40:59',32,'White'),
(28,'2018-08-20 02:41:03',32,'Clear'),
(29,'2018-08-21 11:41:40',33,'Custom (please specify in comments when requesting quotes)'),
(30,'2018-08-21 11:48:58',34,'White'),
(31,'2018-08-21 11:49:03',34,'Black'),
(32,'2018-08-21 11:58:58',35,'Black'),
(33,'2018-08-21 11:59:02',35,'White'),
(34,'2018-08-23 09:38:34',36,'White'),
(35,'2018-08-23 09:38:38',36,'Clear'),
(36,'2018-08-23 10:02:32',37,'Black'),
(37,'2018-08-23 10:02:38',37,'White'),
(38,'2018-08-28 09:42:24',46,'Clear'),
(39,'2018-08-28 09:42:29',46,'Black'),
(40,'2018-08-28 09:42:33',46,'White');
/*!40000 ALTER TABLE `pColors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pSizes`
--

DROP TABLE IF EXISTS `pSizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pSizes` (
  `id_pSize` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_product` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pSize`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pSizes`
--

LOCK TABLES `pSizes` WRITE;
/*!40000 ALTER TABLE `pSizes` DISABLE KEYS */;
INSERT INTO `pSizes` VALUES
(2,'2017-02-10 01:56:21',7,'6 foot string'),
(1,'2017-02-10 01:56:15',7,'4 foot string'),
(3,'2017-02-10 01:56:26',7,'8 foot string'),
(4,'2017-02-10 02:02:26',10,'14G'),
(5,'2017-02-10 02:02:31',10,'16G'),
(6,'2017-02-10 02:02:37',10,'18G'),
(7,'2017-02-10 02:12:03',14,'Small'),
(8,'2017-02-10 02:12:07',14,'Large'),
(9,'2017-02-10 02:42:22',20,'1 inch'),
(10,'2017-02-10 02:42:26',20,'3 inch'),
(11,'2017-02-10 02:43:52',21,'1/2 inch'),
(12,'2017-02-10 02:43:58',21,'3/4 inch'),
(13,'2017-02-10 02:44:04',21,'1 inch'),
(14,'2017-02-10 02:44:12',21,'1 1/4 inch'),
(15,'2017-02-10 02:44:18',21,'1 1/2 inch'),
(16,'2017-02-10 02:44:24',21,'2 inch'),
(17,'2018-08-17 18:11:48',27,'6\"'),
(18,'2018-08-17 18:12:02',27,'7\"'),
(19,'2018-08-17 18:12:07',27,'8\"'),
(20,'2018-08-17 18:12:13',27,'9\"'),
(21,'2018-08-20 01:12:49',30,'6 Station'),
(22,'2018-08-20 01:12:53',30,'9 Station'),
(23,'2018-08-20 01:12:58',30,'12 Station'),
(24,'2018-08-21 11:40:47',33,'2\"'),
(25,'2018-08-21 11:40:53',33,'3\"'),
(26,'2018-08-21 11:40:57',33,'4\"'),
(27,'2018-08-21 11:41:02',33,'5\"'),
(28,'2018-08-21 11:41:07',33,'6\"'),
(29,'2018-08-21 11:41:13',33,'7\"'),
(30,'2018-08-21 11:41:18',33,'8\"'),
(31,'2018-08-21 11:41:38',33,'Custom (please specify in comments when requesting quotes)'),
(32,'2018-08-21 13:52:54',35,'3/8\"'),
(33,'2018-08-21 13:53:01',35,'1/2\"'),
(34,'2018-08-21 13:53:15',35,'5/8\"'),
(35,'2018-08-21 13:53:21',35,'3/4\"'),
(36,'2018-08-21 13:53:26',35,'7/8\"'),
(37,'2018-08-21 13:53:43',35,'Custom (please specify in Comments when requesting quotes)'),
(38,'2018-08-25 07:02:37',39,'6 3/4\" L'),
(39,'2018-08-25 07:02:45',39,'7 1/2\" L'),
(40,'2018-08-28 09:41:42',46,'4 1/4\" diameter'),
(41,'2018-08-28 09:41:53',46,'5 1/2\" diameter'),
(42,'2018-08-28 09:42:03',46,'8 1/2\" diameter'),
(43,'2018-08-28 09:42:18',46,'12\" diameter w/ 8\" turn surface');
/*!40000 ALTER TABLE `pSizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `idNavigation` int(11) NOT NULL DEFAULT 0,
  `sortOrder` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `page` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `template` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `header` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `additional` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `exclude` int(11) DEFAULT 0,
  `label` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,4,0,'2014-10-14 23:41:55','faq','faq',2,1,'FAQ','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ','','faq',0,'FAQ'),
(2,2,2,1,'2014-10-25 19:18:49','about','about',1,1,'About Us','Y&C Display Solutions was formed to provide marketing and advertising industries with Point of Purchase (P.O.P) hardware and display accessories necessary for promotional management.','about-yc-display.jpg','about',0,'About'),
(3,1,1,1,'2014-10-25 19:22:09','home','',0,1,'Featured Products','For all our products, please use the Search function on the left or click on the Products menu on top.','','',0,'Home'),
(4,3,3,1,'2014-10-25 19:44:54','products','products',4,1,'Product Categories','Y&C Display Solutions sells a wide variety of POP related products and accessories.  Use the Categories below to browse our catalog of products.  You can also search for products you are looking for using our product search feature on the left hand sidebar.\r\n\r\nFor quotes, simply add products into your cart and use the GET A QUOTE feature at the bottom right to request pricing.\r\n\r\nIf there is a specific product you are looking for that is not shown here, please give us a call to see if we carry or you can also use the GET A QUOTE feature without adding any products and simply enter a description in the Comments section.','','products',0,'Products'),
(5,0,5,1,'2014-10-25 23:23:17','news','news',5,1,'Y&C Display Solutions News','Catch up on the latest updates and news items.  ','','news',0,'News'),
(6,4,6,1,'2014-10-25 23:54:52','contact','contact',3,1,'Need To Reach Us?','Can\'t find something you\'re looking for?  Or just simply want to ask a question?  Feedback is always welcome.  Just enter your information and type your question below and someone will get back to you as soon as possible.\r\n\r\nThank you!','','contact',0,'Contact'),
(7,0,0,0,'2014-11-11 05:50:14','banner','',0,1,'Welcome to Y&C Display Solutions!','Y&C Display Solutions takes great pride in giving excellent customer service, with a sales team that can assist you with any questions, or problems that you may have with your displays. Our team\'s goal is to provide the best service possible. Our goal is to help you meet your project requirements in your time frame.','','',1,''),
(8,0,7,0,'2015-02-04 16:42:20','terms and conditions','terms-conditions',1,1,'Terms & Conditions','Y&C Display Solutions\r\n5825 Lincoln Ave. Ste. D-154\r\nBuena Park, CA 90620\r\n\r\nPhone: 714.676.1412\r\nFax: 562.633.6287\r\nWebsite: www.yandcdisplay.com\r\n\r\nTelephone Ordering information:\r\nY&C Display Solutions Sales Team are readily available to assist you Monday - Thursday from 8:00 a.m. - 5:00 p.m. & Friday\'s from 8:00 a.m. - 2:00 p.m. Pacific Standard Time. You can call in orders, check status of existing orders or we can help you figure out the product you need for your projects. Y&C Display Solutions accepts orders via phone, and fax.\r\n\r\nFax Orders:\r\nOur fax line operates 24 hours a day, seven days a week. You can fax orders or confirmations at anytime.\r\n\r\nCustom products:\r\nY&C Display Solutions offers custom-made sizes and custom colors on many of our catalog products. Custom-made products may be subject to minimum order quantities and longer lead times. Deposits are required on all custom products. All custom orders are not returnable. \r\n\r\nPricing:\r\nY&C Display Solutions offers competitive pricing on all products. In the event you find a product at a lesser price, simply provide a copy of the published pricing or quotation before placing your order and we will do our best to match pricing or beat our competitors pricing\r\n.\r\nSpecial Packing:\r\nPacking to your specific requirements in poly bags is possible. Please contact Y&C Display Solutions, Sales Team to discuss your special packing needs.\r\n\r\nSamples:\r\nY&C Display Solutions will provide some samples free of charge. Samples are generally shipped via US mail unless otherwise requested. Express freight charges will be the responsibility of the recipient. Y&C Display Solutions reserves the right to limit quantities and dollar amounts of samples.\r\n\r\nOrder Size:\r\nY&C Display Solutions has a minimum order requirement of $50.00. A combination of multiple products can be ordered to meet the minimum.\r\n\r\nShipping:\r\nAll orders are shipped F.O.B. manufacture and freight charges are additional and will be added to the invoice. Most orders are shipped UPS Ground and larger orders are shipped via truck. We do ship third party if needed. Please note that all express shipping as well as any other shipping instructions much be specified when you place your order. Drop shipments and express handling are available at an additional charge. The Sales Team can assist you in finding the most cost-effective way to ship your order.\r\n \r\nShipping dates are approximate and are based upon timely receipt of all required information and production timelines. Y&C Display Solutions is not liable for delivery delays due to reasons outside of our control. Same day shipping is available on in-stock items. If shipping from the East Coast the deadline is 11:00 A.M.. Same-day shipping is available only for phone orders and can not be guaranteed for email or fax orders. Please look for our fax confirmation for shipping dates.\r\n\r\nCancellations:\r\nNotice of an order cancellation must be made in writing and faxed or emailed to the appropriate Sales Team Member. Cancellations will be reviewed and the customer may incur restocking fees, or production and fulfillment of an order prior to cancellation.\r\n\r\nReturns: \r\nFor all returns, please contact your Sales Team Member for instructions. Unauthorized returns will not be accepted. Unopened stock items may be returned , but are subject to a 25% restocking fee. Call us for a Return Merchandise Authorization Number (RMA) within 30 days of receipt of your order. Y&C Display Solutions will only accept returns that have a valid RMA and are freight prepaid. All returns are subject to inspection before any credits are issued. Y&C Display Solutions only credits products that are undamaged and in re-sellable condition. Custom orders are not returnable.\r\n\r\nDamaged Merchandising:\r\nY&C Display Solutions needs to be contacted immediately if you discover damage to your shipment. Keep all original packaging materials.\r\n\r\nClaims:\r\nWhen products are damaged by a freight carrier, please note it on the receiving paper work, file a claim with the carrier and contact Y&C Display Solutions. Any claims for damage items must be made within a 10 day period, no exceptions.\r\n\r\nIf there is a shortage on your order you must contact Y&C Display Solutions within 5 days of delivery. Failure to do so will constitute acceptance of the shipment. \r\n\r\nTerms:\r\nIf you have terms with Y&C Display Solutions, our standard terms are Net 15 days. To establish credit with Y&C Display Solutions, simply request our Credit application. First orders always go out on Prepaid Terms. Please allow 1 or 2 weeks for credit approval. Prices are subject change without prior notice. The buyer is responsible for all risk of liability and damages for improper use of our products. \r\n\r\nRemit To Address:\r\nY&C Display Solutions\r\n5825 Lincoln Ave. Ste. D-154\r\nBuena Park, CA 90620\r\n\r\nWarranty:\r\nY&C Display Solutions makes no warranty, expressed or implied as to the use, fit of use, or application of use for our products. The selection, application or use of Y&C Display Solutions products is the Buyer\'s responsibility. Y&C Display Solutions sole responsibility under our warranty is to repair or replace free of charge, F.O.B. its manufacture, products determined by Y&C Display Solutions to be defective. The period of the warranty is 10 days within receipt of the order. All warranties exist between Y&C Display Solutions and the first party Buyer. No claims will be allowed for labor, material, and loss of profit or damages in shipping, handling, in installation or by misuse. \r\n\r\nCatalog Note:\r\nY&C Display Solutions does not accept liability for incorrect manufacturer specifications, or inaccuracies for any product listed in this catalog. Y&C Display Solutions reserves the right to discontinue or require minimum order quantities for catalog products without prior notice. \r\n\r\n','','terms-conditions',0,'Terms & Conditions');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES
(1,'2018-08-07 20:20:35','New Website Is Up!','New-Website-Is-Up-','In an effort to improve the look and feel of our website and to make it easier to navigate, the old site was done away with completely and a new one completely built from the ground up.  Among the many changes is a new quoting system that allows you to select the products you are interested in, add them to a Cart and send it off to us for fast quoting without having to pick up the phone and all from your web browser.');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `featured` int(11) NOT NULL DEFAULT 0,
  `product` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `extra` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_category` (`id_category`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(11,'2017-02-10 02:04:23',1,'Heavy Duty Power Wing Clip','heavy-duty-power-wing-clip',3,'- Used for heavy duty power panel displays.<br><br>\r\n- 2-1/4\" x 1-1/4\"<br><br>\r\n- White.\r\n','','heavy-duty-power-wing-clip.jpg'),
(12,'2017-02-10 02:07:14',1,'Slatwall Power Wing Clip','slatwall-power-wing-clip',3,'- Upper lip fits most slatwall and holds display flush to slatwall.<br><br>\r\n- Securely holds 1/8\" B-Flute corrugate.<br><br>\r\n- White PVC.<br><br>\r\n- 1\" x 2\"','','slatwall-power-wing-clip.jpg'),
(10,'2017-02-10 02:01:12',1,'Flute wire','flute-wire',3,'- Used in between corrugated cardboard displays or to add signs to corrugated material.<br><br>\r\n- Custom lengths available.','','flute-wire.jpg'),
(7,'2016-06-23 03:09:09',1,'Skyhook','skyhook',2,'- Attaches to ceiling grids and cord can be unwound to desired length.<br><br>\r\n- Cord comes in different lengths.','','prod-7.jpg'),
(8,'2017-02-10 01:45:07',1,'Elastic Loop w/ Barb','elastic-loop-w-barb',2,'- Multiple lengths.<br><br>\r\n- Cords in elastic, nylon, or monofilament.\r\n','Available in custom sizes and colors.','elastic-loop-w-barb.jpg'),
(9,'2017-02-10 01:51:27',0,'Display Hook Stopper','display-hook-stopper',4,'- 1\" O.D.<br><br>\r\n- Natural\r\n','Works with most standard hooks','display-hook-stopper.jpg'),
(13,'2017-02-10 02:10:20',1,'Double Ended Barbed Cord','double-ended-barbed-cord',2,'- Multiple lengths.<br><br>\r\n- Cords in elastic, nylon, or monofilament.<br><br>\r\n- Barbed at both ends.','Custom colors available.<br>\r\nCustom lengths available.','double-ended-barbed-cord.jpg'),
(14,'2017-02-10 02:11:57',1,'Dart/Canoe Fastener','dart-canoe-fastener',3,'- Removable and re-usable.','','dart-canoe-fastener.jpg'),
(15,'2017-02-10 02:14:56',0,'Pear Clip','pear-clip',6,'- Durable metal construction.<br><br>\r\n- Secure closure.<br><br>\r\n- Could be used as a merchandising clip.','','pear-clip.jpg'),
(16,'2017-02-10 02:29:53',0,'Inventory Control Unit','inventory-control-unit',4,'- Works with most peg and slatwall hooks.<br><br>\r\n- Snaps into place easily.<br><br>\r\n- Fits most standard size hooks.','','inventory-control-unit.jpg'),
(17,'2017-02-10 02:32:32',0,'Aluminum Post And Screw','aluminum-post-and-screw',1,'- Contains one post and one screw.<br><br>\r\n- Multiple lengths to hold different capacities.<br><br>\r\n- Metal and Plastic available.','','aluminum-post-and-screw.jpg'),
(18,'2017-02-10 02:33:51',0,'Pegboard Power Wing Clip','pegboard-power-wing-clip',3,'- Fits pegboard with holes 1\" on center.<br><br>\r\n- Holds up to 1/4\" A-Flute corrugate in flush position.<br><br>\r\n- White.','','pegboard-slatwall-power-wing-clip.jpg'),
(19,'2017-02-10 02:35:49',0,'Cable Tie','cable-tie',7,'- Adjust easily.<br><br>\r\n- Locks securely and permanently.<br><br>\r\n- Multiple lengths available.','','cable-tie.jpg'),
(20,'2017-02-10 02:42:14',0,'Magnetic Adapter','magnetic-adapter',3,'- 7/8\" wide x 1/4\" height. 1/8\" diameter center hole.<br><br>\r\n- Nickel plated steel housing.<br><br>\r\n- 1\" has 12lb horizontal capacity.<br><br>\r\n- 3\" has 16lb horizontal capacity.','Always test holding capacity prior to application.','magnetic-adapter.jpg'),
(21,'2017-02-10 02:43:29',0,'Metal Snap Ring','metal-snap-ring',6,'- Nickel plated metal.<br><br>\r\n- Hinged design fastens easily for secure hold.','','metal-snap-ring.jpg'),
(22,'2017-02-10 02:45:53',0,'Beaded Ball Chain','beaded-ball-chain',2,'- Multiple lengths available.<br><br>\r\n- Chain can clip together for a secure fit with clasp.','','beaded-ball-chain.jpg'),
(23,'2018-08-07 18:42:22',0,'Flex Magnet w/ Adhesive','flex-magnet-w-adhesive',3,'- Scored or continuous rolls available.<br><br>\r\n- Various strengths and sizes.','Please specify scored/continuous/strength/size desired in Comments if requesting a quote.','flex-magnet-w-adhesive.jpg'),
(24,'2018-08-17 17:59:08',0,'Hook Hang Tab','hook-hang-tab',6,'- Tab size: 1\" W x 1 3/4\" H x 15 MIL<br><br>\r\n- Adhesive size: 1\" W x 5/8\" H<br><br>\r\n- Clear PVC plastic<br><br>\r\n- Economical roll form for easy application.','Available in multiple sizes.  Please use Comments section when requesting quotes for sizes different than what is listed.','hook-hang-tab.jpg'),
(25,'2018-08-17 18:04:52',0,'Round Hole Hang Tab','round-hole-hang-tab',6,'- Tab size: 7/8\" W x 1 1/4\" H x 10 MIL<br><br>\r\n- Clear PVC plastic','Available in multiple sizes. Please use Comments section when requesting quotes for sizes different than what is listed.','round-hole-hang-tab.jpg'),
(26,'2018-08-17 18:09:09',0,'Delta Hole Hang Tab','delta-hole-hang-tab',6,'- Tab size: 1 1/2\" W x 1 1/4\" H x 10 MIL<br><br>\r\n- Clear PVC plastic.<br><br>\r\n- Available in sheet or roll form (please specify when requesting quotes).','Also available in multiple lengths, width and thickness. Please specify when requesting quotes.','delta-hole-hang-tab.jpg'),
(27,'2018-08-17 18:11:38',1,'Heavy Duty Handle','heavy-duty-handle',3,'- 6\" and 7\" hold up to 45lbs.<br><br>\r\n- 8\" holds up to 65lbs.<br><br>\r\n- 9\" holds up to 100lbs.','','heavy-duty-handle.jpg'),
(28,'2018-08-17 18:19:52',0,'Lightweight Handle','lightweight-handle',3,'- Available in 6\" length.<br><br>\r\n- Holds up to 15lbs.','Red, Yellow and Blue colors typically require minimum quantities to order.','lightweight-handle.jpg'),
(29,'2018-08-17 18:27:49',0,'Shelf Support Clip','shelf-support-clip',3,'- Clear PVC material.<br><br>\r\n- 1 1/2\" W x 2 1/4\" overall L<br><br>\r\n- 1/4\" single capacity.<br><br>\r\n- Single capacity holds 1/8\" B Flute.','Available with or without adhesive.  Please specify in Comments when requesting quotes.','shelf-support-clip.jpg'),
(30,'2018-08-20 01:12:25',0,'Channel Mount Perforated Clip Strip','channel-mount-perforated-clip-strip',6,'- 12 Station.<br><br>\r\n- 1/4\" W x 18\" L x 20 MIL thickness.<br><br>\r\n- Also available in other thicknesses.<br><br>\r\n- Can be used on 1 1/4\" H standard shelf channels.<br><br>\r\n- Perforated every 3 hooks.<br><br>\r\n- Available with or without adhesive.','Also available in 6 and 9 Stations.','channel-mount-perforated-clip-strip.jpg'),
(31,'2018-08-20 02:13:26',0,'Gripper Flag Sign Holder','gripper-flag-sign-holder',7,'- 3/4\" W x 1 1/2\" H. <br><br>\r\n- Clear PVC.<br><br>\r\n- Holds up to 80 MIL thick signs in flag position.','','gripper-flag-sign-holder.jpg'),
(32,'2018-08-20 02:40:49',0,'Clear C-Channel','clear-c-channel',7,'- Available in 1/2\" to 6\" H.  Please specify in Comments if requesting a quote.<br><br>\r\n- With or without adhesive.','Custom lengths can be produced but a minimum quantity may apply.','clear-c-channel.jpg'),
(33,'2018-08-21 11:40:40',0,'Display Hook With Scan Plate','display-hook-with-scan-plate',4,'- Fits 1/8\" corrugated.<br><br>\r\n- T-Slot insertion.<br><br>\r\n- White Glass Fill Nylon.<br><br>\r\n- Scan plate front is 1 3/8\" x 2 1/8\".','Custom lengths and colors may require minimum quantity to order.','display-hook-with-scan-plate.jpg'),
(34,'2018-08-21 11:48:52',0,'Double Sided Pre-Cut Foam Tape','double-sided-pre-cut-foam-tape',3,'- Available in multiple sizes (Please specify in Comments when requesting quotes).<br><br>\r\n- Available in permanent and/or removable adhesive on both or either side.<br><br>\r\n- Also available in continuous rolls.','','double-sided-pre-cut-foam-tape.jpg'),
(35,'2018-08-21 11:58:33',0,'Velcoin','velcoin',3,'- Velcro Dots with adhesive.<br><br>\r\n- Hook (male), Loop (female).<br><br>\r\n- Available in multiple sizes.<br><br>\r\n- Available with acrylic or rubber adhesive.','','velcoin.jpg'),
(36,'2018-08-23 09:38:28',0,'Peg Board Slat Wall Adapter','peg-board-slat-wall-adapter',3,'- 2 3/8\" L x 5/8\" H.<br><br>\r\n- With or without adhesive.<br><br>\r\n- Fits in standard 1/4\" diameter pegboard or slatwall.','','peg-board-slat-wall-adapter.jpg'),
(37,'2018-08-23 10:02:25',1,'Display Hook','display-hook',4,'- Available in multiple lengths (please specify in Comments when requesting quotes).<br><br>\r\n- Fits 1/8\" (B-Flute) corrugated with T-Slot insertion.<br><br>\r\n- Glass filled nylon.','','display-hook.jpg'),
(38,'2018-08-23 12:31:19',0,'Metal Double C Hook','metal-double-c-hook',2,'- Available in multiple lengths (please specify in Comments when requesting quotes).<br><br>\r\n- 5/8\" hook opening x .093\" wire diameter.<br><br>\r\n- Galvanized steel.','','metal-double-c-hook.jpg'),
(39,'2018-08-25 07:02:28',0,'Handle Support Bar','handle-support-bar',3,'- Natural polypropylene.<br><br>\r\n- Used with heavy duty 6\", 7\", 8\" and 9\" handles. ','','handle-support-bar.jpg'),
(40,'2018-08-25 07:08:27',0,'Double Duty Shelf Support Clip','double-duty-shelf-support-clip',3,'- 1 1/2\" W x 2 1/4\" L.<br><br>\r\n- 3/8\" double duty capacity.<br><br>\r\n- Clear PVC.<br><br>\r\n- Holds double thickness 1/8\" (B-Flute) shelf construction.<br><br>\r\n- Angled support for heavier displays.','','double-duty-shelf-support-clip.jpg'),
(41,'2018-08-25 07:25:00',0,'Butterfly Product Stop','butterfly-product-stop',4,'- Black PVC.<br><br>\r\n- Snaps onto butterfly hooks.<br><br>\r\n- Helps secure product on hook during shipping.','','butterfly-product-stop.jpg'),
(42,'2018-08-26 06:04:24',0,'Bottom Loading Acrylic Sign Holder','bottom-loading-acrylic-sign-holder',5,'- Clear acrylic.<br><br>\r\n- Bottom loading slot for easy sign placement.<br><br>\r\n- Used for displaying sign on counters, shelves or tables.<br><br>\r\n- Multiple sizes available (please specify in Comments when requesting quotes).','','bottom-loading-acrylic-sign-holder.jpg'),
(43,'2018-08-26 06:06:59',0,'Plastic Literature Pocket','plastic-literature-pocket',5,'- Clear PVC.<br><br>\r\n- Holds literature in upright position.<br><br>\r\n- Available with or without adhesive (please specify in Comments when requesting quotes).<br><br>\r\n- Available in multiple widths, heights, depths and thickness (please specify in Comments when requesting quotes).','Ideal for display panels and flat surfaces.','plastic-literature-pocket.jpg'),
(44,'2018-08-28 09:34:14',0,'Freestanding Acrylic Brochure Holder','freestanding-acrylic-brochure-holder',5,'- Clear acrylic.<br><br>\r\n- Multiple widths, heights and depths (please specific in Comments when requesting quotes).<br><br>\r\n- Holds brochures.','','freestanding-acrylic-brochure-holder.jpg'),
(45,'2018-08-28 09:35:26',0,'Vinyl Pocket','vinyl-pocket',5,'- Multiple sizes available (please specify in Comments when requesting quotes.<br><br>\r\n- Available with opening on long or short side.<br><br>\r\n- With or without adhesive.','','vinyl-pocket.jpg'),
(46,'2018-08-28 09:41:18',0,'Turntable','turntable',3,'- Used to create a rotational display to showcase product(s) from multiple angles or to ease in accessibility.','','turntable.jpg'),
(47,'2018-08-28 09:44:51',0,'Rubber Bands','rubber-bands',1,'- Available in multiple lengths and widths (please specify in Comments when requestion quotes).<br><br>\r\n- Available in multiple colors (specify custom color or PMS# when requesting quotes).<br><br>\r\n- Minimum quantities apply.','','rubber-bands.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-09 20:38:24
