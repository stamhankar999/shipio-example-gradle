-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: dishorg.cxfls186gp5z.us-east-2.rds.amazonaws.com    Database: dishorg
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `grocery_list`
--

DROP TABLE IF EXISTS `grocery_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grocery_list` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ahuksrfgfkyurvhyx5jwv9u62` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list`
--

LOCK TABLES `grocery_list` WRITE;
/*!40000 ALTER TABLE `grocery_list` DISABLE KEYS */;
INSERT INTO `grocery_list` VALUES (64,'demo'),(13,'Vegas week'),(60,'Week 1'),(63,'Week 2'),(58,'Week of 1/6/22'),(37,'Week of 10/12/21'),(42,'Week of 10/24/21'),(43,'Week of 10/30/21'),(50,'Week of 11/14/21'),(53,'Week of 11/21/21'),(54,'Week of 11/28/21'),(57,'Week of 12/12/21'),(56,'Week of 12/4/21'),(66,'Week of 5/1/22');
/*!40000 ALTER TABLE `grocery_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_list_recipe`
--

DROP TABLE IF EXISTS `grocery_list_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grocery_list_recipe` (
  `recipe_id` bigint NOT NULL,
  `grocery_list_id` bigint NOT NULL,
  PRIMARY KEY (`grocery_list_id`,`recipe_id`),
  KEY `FK98p506cihpmugl8lwflrvr59g` (`recipe_id`),
  CONSTRAINT `FK98p506cihpmugl8lwflrvr59g` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FK9vh3qpysfoku0e9y991lpo53c` FOREIGN KEY (`grocery_list_id`) REFERENCES `grocery_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_recipe`
--

LOCK TABLES `grocery_list_recipe` WRITE;
/*!40000 ALTER TABLE `grocery_list_recipe` DISABLE KEYS */;
INSERT INTO `grocery_list_recipe` VALUES (15,13),(15,60),(17,13),(17,66),(18,64),(19,13),(30,37),(30,50),(30,56),(30,58),(31,37),(31,57),(31,58),(31,64),(31,66),(32,37),(32,43),(32,53),(32,58),(33,37),(33,53),(33,66),(34,37),(35,37),(36,37),(38,42),(38,53),(38,57),(39,42),(39,50),(39,53),(39,54),(39,56),(39,60),(41,42),(44,43),(44,63),(45,43),(45,58),(45,66),(46,43),(47,43),(47,54),(48,43),(48,54),(48,63),(49,53),(51,50),(51,58),(51,66),(52,50),(55,54),(59,58),(61,60),(61,64),(62,60);
/*!40000 ALTER TABLE `grocery_list_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (67),(67);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rm1mlratj8yf3e1yxwk156x4p` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (49,'Bajra Dosa'),(61,'Bean quesadilla'),(20,'Besan Ladoo'),(17,'Black eyed beans with spinach'),(24,'Buttermilk Pancakes'),(18,'Chicken Curry'),(52,'Chicken Fried Rice'),(38,'Chicken Quesadilla'),(31,'Chicken Shawarma'),(35,'Chimichuri'),(34,'Chimichuri chicken'),(36,'Cilantro Lime Rice'),(55,'Corn and Zucchini Fritters'),(25,'Curry Chicken Skewers with Lime'),(45,'Dosa'),(19,'Ghavan'),(30,'Green Monster Veggie Burger'),(44,'Lasagne'),(26,'Mac and Cheese'),(28,'Naan pizza'),(41,'Oat Besan Chilla'),(40,'Oat Dosa'),(47,'Paneer Bhurji'),(59,'Paneer Jhalfrazie'),(39,'Pasta'),(33,'Pav bhaaji'),(46,'Potato bhaaji for Dosa'),(48,'Rajma Burger'),(32,'Ratatouille'),(16,'Rice'),(12,'Scrambled Eggs'),(51,'Sweet Potato Tortilla soup'),(62,'Tuna risotto'),(15,'Varan');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_ingredients`
--

DROP TABLE IF EXISTS `recipe_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_ingredients` (
  `recipe_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  KEY `FKhnsmvxdlwxqq6x2wbgnoef5gr` (`recipe_id`),
  CONSTRAINT `FKhnsmvxdlwxqq6x2wbgnoef5gr` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredients`
--

LOCK TABLES `recipe_ingredients` WRITE;
/*!40000 ALTER TABLE `recipe_ingredients` DISABLE KEYS */;
INSERT INTO `recipe_ingredients` VALUES (12,'Eggs',2,'[No Unit]'),(12,'milk',1,'tsp'),(12,'salt',1,'tsp'),(15,'Toor dal',1,'cups'),(15,'Haldi',1,'tsp'),(15,'Hing',1,'pinch'),(16,'Rice',1,'cups'),(17,'Black eyed beans',1,'cups'),(17,'Oil',1,'tsp'),(17,'Onion',1,'[No Unit]'),(17,'Garlic',1,'[No Unit]'),(17,'Tomatoes',2,'[No Unit]'),(17,'Haldi',1,'pinch'),(17,'Red chili powder',1,'tsp'),(17,'Spinach',2,'cups'),(17,'Salt',0,'[No Unit]'),(18,'Chicken',5,'lbs'),(18,'Chicken sauce',1,'cups'),(19,'Atta',2,'cups'),(19,'Besan',1,'cups'),(19,'Haldi',0,'[No Unit]'),(19,'Red chili powder',0,'[No Unit]'),(19,'Carrots',0,'[No Unit]'),(19,'Coriander powder',0,'[No Unit]'),(24,'flour',2,'cups'),(24,'sugar',3,'tbsp'),(24,'baking powder',2,'tsp'),(24,'baking soda',0.5,'tsp'),(24,'salt',0.5,'tsp'),(24,'buttermilk',2.25,'cups'),(24,'eggs',2,'[No Unit]'),(24,'vanilla extract',1,'tsp'),(24,'unsalted butter',4,'tbsp'),(25,'agave',4,'tsp'),(25,'chicken ',2,'lbs'),(25,'salt',2,'tsp'),(25,'vegetable oil',4,'tbsp'),(25,'black pepper',2,'tsp'),(25,'curry powder',4,'tbsp'),(25,'sriracha',2,'tbsp'),(25,'limes',4,'[No Unit]'),(26,'salt',1,'tbsp'),(26,'sharp cheddar cheese',12,'oz'),(26,'gruyere cheese',4,'oz'),(26,'gouda cheese',4,'oz'),(26,'cream cheese',4,'oz'),(26,'elbow macaroni',1,'lbs'),(26,'unsalted butter',6,'tbsp'),(26,'all-purpose flour',0.5,'cups'),(26,'whole milk',4.5,'cups'),(26,'mustard powder',0.5,'tsp'),(26,'black pepper',0.25,'tsp'),(26,'ritz crackers',4,'oz'),(26,'unsalted butter',0.25,'cups'),(28,'naans',28,'[No Unit]'),(28,'extra-virgin olive oil',14,'tsp'),(28,'pizza sauce',4.66,'cups'),(28,'fresh mozzarella',42,'oz'),(28,'tomatoes',7,'[No Unit]'),(28,'garlic cloves',14,'[No Unit]'),(28,'basil leaves',14,'[No Unit]'),(30,'Basil',0,'[No Unit]'),(30,'Breadcrumbs',0,'[No Unit]'),(30,'Broccoli',1,'cups'),(30,'Garlic',5,'tbsp'),(30,'Oats',0,'[No Unit]'),(30,'Onion',1,'[No Unit]'),(30,'Oregano',0,'[No Unit]'),(30,'Peas',1,'cups'),(30,'Spinach',4,'cups'),(30,'Walnuts',0,'[No Unit]'),(30,'Soy Sauce',0,'[No Unit]'),(30,'Mustard',0,'[No Unit]'),(30,'Salt',0,'[No Unit]'),(30,'Pepper',0,'[No Unit]'),(30,'Buns',0,'[No Unit]'),(30,'Mayonnaise',0,'[No Unit]'),(31,'Olive oil',0,'[No Unit]'),(31,'Lemon',0,'[No Unit]'),(31,'Garlic',0,'[No Unit]'),(31,'Salt',0,'[No Unit]'),(31,'Cumin Powder',0,'[No Unit]'),(31,'Coriander Powder',0,'[No Unit]'),(31,'Turmeric',0,'[No Unit]'),(31,'Cinnamon',0,'[No Unit]'),(31,'Red Chili Powder',0,'[No Unit]'),(31,'Chicken ',0,'[No Unit]'),(31,'Onion',0,'[No Unit]'),(31,'Greek yogurt',0,'[No Unit]'),(31,'Garlic',0,'[No Unit]'),(31,'Salt',0,'[No Unit]'),(31,'Pitas',0,'[No Unit]'),(31,'Romaine lettuce',0,'[No Unit]'),(32,'Bell peppers',0,'[No Unit]'),(32,'Eggplant',0,'[No Unit]'),(32,'Garlic',0,'[No Unit]'),(32,'Mushrooms',0,'[No Unit]'),(32,'Onion',0,'[No Unit]'),(32,'Parmesan',0,'[No Unit]'),(32,'Tomatoes',0,'[No Unit]'),(32,'Zucchini',0,'[No Unit]'),(32,'Shredded mozzarella',0,'[No Unit]'),(33,'Buns',0,'[No Unit]'),(33,'Potato',0,'[No Unit]'),(33,'caulifower',0,'[No Unit]'),(33,'Tomatoes',0,'[No Unit]'),(33,'Pav bhaaji masala',0,'[No Unit]'),(33,'Peas',0,'[No Unit]'),(33,'onion',0,'[No Unit]'),(33,'garlic',0,'[No Unit]'),(34,'Chicken',0,'[No Unit]'),(34,'Salt',0,'[No Unit]'),(34,'Pepper',0,'[No Unit]'),(34,'Mayonnaise',0,'[No Unit]'),(34,'Chimichurri',0,'[No Unit]'),(35,'shallot/onion',0,'[No Unit]'),(35,'jalapeno',0,'[No Unit]'),(35,'garlic',0,'[No Unit]'),(35,'Red wine vinegar',0,'[No Unit]'),(35,'Cilantro',0,'[No Unit]'),(35,'Parsley',0,'[No Unit]'),(35,'Oregano',0,'[No Unit]'),(35,'Olive oil',0,'[No Unit]'),(36,'onion',0,'[No Unit]'),(36,'garlic',0,'[No Unit]'),(36,'chicken broth',0,'[No Unit]'),(36,'tomatoes',0,'[No Unit]'),(36,'rice',0,'[No Unit]'),(36,'cilantro',0,'[No Unit]'),(38,'Chicken',1,'[No Unit]'),(38,'Mexican cheese',1,'[No Unit]'),(38,'taco seasoning',1,'[No Unit]'),(41,'Oats',1,'cups'),(41,'Onion',1,'[No Unit]'),(41,'Ginger',1,'[No Unit]'),(41,'Chilli Powder',1,'[No Unit]'),(41,'Haldi',1,'[No Unit]'),(41,'Hing',1,'[No Unit]'),(41,'Salt',1,'[No Unit]'),(41,'Besan',1,'cups'),(41,'Half cup water',1,'[No Unit]'),(41,'Jeera',1,'[No Unit]'),(41,'Ajwain',1,'[No Unit]'),(41,'Chopped onion',1,'[No Unit]'),(41,'Green chilli',1,'[No Unit]'),(41,'Grated carrot',1,'[No Unit]'),(41,'Coriander leaves',1,'[No Unit]'),(41,'Bell Pepper',1,'[No Unit]'),(44,'Lasagne strips',1,'[No Unit]'),(44,'Parmesan',1,'[No Unit]'),(44,'Ricotta',1,'[No Unit]'),(44,'Pasta Sauce',1,'[No Unit]'),(44,'Spinach',1,'[No Unit]'),(44,'Shredded Mozarella',1,'[No Unit]'),(45,'Dosa Batter',1,'[No Unit]'),(46,'Potato',1,'[No Unit]'),(46,'Sambhar Masala',1,'[No Unit]'),(47,'Paneer',1,'[No Unit]'),(47,'Onion',1,'[No Unit]'),(47,'Ginger',1,'[No Unit]'),(47,'Garlic',1,'[No Unit]'),(47,'Tomato',1,'[No Unit]'),(47,'Garam Masala',1,'[No Unit]'),(47,'Kasuri methi',1,'[No Unit]'),(48,'Rajma',1,'[No Unit]'),(48,'Carrots',1,'[No Unit]'),(48,'Beet',1,'[No Unit]'),(48,'Buns',1,'[No Unit]'),(48,'Breadcrumbs',1,'[No Unit]'),(48,'Onion',1,'[No Unit]'),(48,'Garlic',1,'[No Unit]'),(48,'Cholula Sauce',1,'[No Unit]'),(49,'bajra',1.5,'cups'),(49,'wheat flour',0.25,'cups'),(49,'onion',0.5,'[No Unit]'),(49,'coriander leaves',1,'tbsp'),(49,'cumin seeds',1,'tsp'),(49,'ginger',1,'tsp'),(49,'salt',1,'[No Unit]'),(49,'oil',1,'[No Unit]'),(39,'Broccoli',1,'[No Unit]'),(39,'Carrots',1,'[No Unit]'),(39,'Mozzarella cheese',1,'[No Unit]'),(39,'Mushrooms',1,'[No Unit]'),(39,'Parmesan Cheese',1,'[No Unit]'),(39,'Pasta',1,'[No Unit]'),(39,'Pasta sauce',1,'[No Unit]'),(39,'Ricotta cheese',1,'[No Unit]'),(39,'eggplant',1,'[No Unit]'),(51,'onion',0,'[No Unit]'),(51,'oil',0,'[No Unit]'),(51,'salt',0,'[No Unit]'),(51,'garlic',0,'[No Unit]'),(51,'cilantro',0,'[No Unit]'),(51,'taco seasoning',0,'[No Unit]'),(51,'sweet potatoes',0,'[No Unit]'),(51,'black beans',0,'[No Unit]'),(51,'tomatoes',0,'[No Unit]'),(51,'broth',0,'[No Unit]'),(51,'tortilla chips',0,'[No Unit]'),(51,'sour cream',0,'[No Unit]'),(51,'avocado',0,'[No Unit]'),(51,'Mexican cheese',0,'[No Unit]'),(52,'carrots',0,'[No Unit]'),(52,'chicken',0,'[No Unit]'),(52,'oil',0,'[No Unit]'),(52,'peas',0,'[No Unit]'),(52,'eggs',0,'[No Unit]'),(52,'rice',0,'[No Unit]'),(52,'soy sauce',0,'[No Unit]'),(55,'Zucchini',2,'[No Unit]'),(55,'salt',1,'[No Unit]'),(55,'butter',1,'tbsp'),(55,'onion',1,'[No Unit]'),(55,'garlic',1,'[No Unit]'),(55,'corn kernels',0,'[No Unit]'),(55,'cornmeal',0.5,'cups'),(55,'flour',0.5,'cups'),(55,'baking soda',0.25,'tsp'),(55,'buttermilk',0.75,'cups'),(55,'egg',1,'[No Unit]'),(55,'oil',0,'[No Unit]'),(59,'tomato',1,'[No Unit]'),(59,'onion',1,'[No Unit]'),(59,'green chili',1,'[No Unit]'),(59,'ginger',1,'[No Unit]'),(59,'garlic',1,'[No Unit]'),(59,'bell pepper',1,'[No Unit]'),(59,'paneer',1,'[No Unit]'),(59,'vinegar',1,'tsp'),(59,'jeera',1,'[No Unit]'),(59,'garam masala',1,'[No Unit]'),(59,'red chili powder',1,'[No Unit]'),(59,'haldi',1,'[No Unit]'),(59,'salt',1,'[No Unit]'),(61,'black beans',0,'[No Unit]'),(61,'taco seasoning',0,'[No Unit]'),(61,'tortillas',0,'[No Unit]'),(61,'mexican cheese',0,'[No Unit]'),(61,'guac',0,'[No Unit]'),(61,'sour cream',0,'[No Unit]'),(61,'salsa',0,'[No Unit]'),(62,'tuna',0,'[No Unit]'),(62,'chicken vroth',0,'[No Unit]'),(62,'onion',0,'[No Unit]'),(62,'garlic',0,'[No Unit]'),(62,'rice',0,'[No Unit]'),(62,'cheese',0,'[No Unit]'),(20,'besan',1,'cups'),(20,'ghee',0.25,'cups'),(20,'sugar',0.5,'cups');
/*!40000 ALTER TABLE `recipe_ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-06  3:27:03
