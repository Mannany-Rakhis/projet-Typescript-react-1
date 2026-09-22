-- MySQL dump 10.13  Distrib 8.4.7, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Current Database: `quiz`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `quiz`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Géographie','2026-09-22 10:48:32','2026-09-22 10:48:32'),(2,'Cinéma','2026-09-22 10:48:32','2026-09-22 10:48:32'),(3,'Sport','2026-09-22 10:48:32','2026-09-22 10:48:32'),(4,'Culture Générale','2026-09-22 10:48:32','2026-09-22 10:48:32');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idjoueur` int NOT NULL,
  `score` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Géographie','Quelle est la capitale du Japon ?','Tokyo','Berlin','Madrid','Paris','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(2,'Géographie','Quel est le plus grand océan ?','Pacifique','Atlantique','Indien','Arctique','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(3,'Géographie','Quel pays a pour capitale Berlin ?','Allemagne','Autriche','Belgique','Suisse','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(4,'Géographie','Quelle rivière traverse Paris ?','Seine','Loire','Rhin','Garonne','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(5,'Géographie','Quelle est la capitale de l’Italie ?','Rome','Milan','Venise','Naples','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(6,'Géographie','Dans quel continent se trouve le Brésil ?','Amérique du Sud','Afrique','Asie','Europe','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(7,'Géographie','Quel pays est le pays du soleil levant ?','Japon','Chine','Corée du Sud','Thaïlande','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(8,'Géographie','Quelle est la capitale du Canada ?','Ottawa','Toronto','Vancouver','Montréal','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(9,'Géographie','Quel désert est situé en Afrique ?','Sahara','Gobi','Atacama','Mojave','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(10,'Géographie','Quel pays a pour capitale Madrid ?','Espagne','Portugal','Mexique','Argentine','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 10:48:32','2026-09-22 12:29:37'),(11,'Cinéma','Qui a réalisé Inception ?','Christopher Nolan','James Cameron','Peter Jackson','Steven Spielberg','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(12,'Cinéma','Dans quel film voit-on Woody ?','Toy Story','Shrek','Cars','Bambi','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(13,'Cinéma','Quel film met en scène Harry Potter ?','Harry Potter','Le Seigneur des Anneaux','Star Wars','Twilight','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(14,'Cinéma','Quel film est connu pour Simba ?','Le Roi lion','Aladdin','Mulan','Bambi','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(15,'Cinéma','Qui joue Jack Sparrow ?','Johnny Depp','Brad Pitt','Tom Cruise','Leonardo DiCaprio','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(16,'Cinéma','Dans quel film apparaît Pandora ?','Avatar','Interstellar','Dune','Matrix','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(17,'Cinéma','Quel film suit le robot WALL-E ?','Wall-E','Ratatouille','Cars','Monstres & Cie','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(18,'Cinéma','Qui joue Wolverine ?','Hugh Jackman','Ryan Reynolds','Christian Bale','Patrick Stewart','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(19,'Cinéma','Quel film a gagné beaucoup d’Oscars ?','Titanic','Avatar','La La Land','Gladiator','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Coco','Interstellar','2026-09-22 10:48:32','2026-09-22 12:29:37'),(20,'Cinéma','Quel réalisateur a fait Matrix ?','The Wachowskis','Quentin Tarantino','David Fincher','Ridley Scott','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 10:48:32','2026-09-22 12:29:37'),(21,'Sport','Combien de joueurs composent une équipe de football ?','11','9','10','12','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(22,'Sport','Dans quel sport utilise-t-on une raquette ?','Tennis','Football','Natation','Cyclisme','Athlétisme','Golf','Badminton','Rugby','Boxe','Volley','2026-09-22 10:48:32','2026-09-22 12:29:37'),(23,'Sport','Quel pays a remporté la Coupe du monde 2018 ?','France','Brésil','Allemagne','Argentine','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(24,'Sport','Combien de minutes dure un match de football ?','90','60','75','120','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(25,'Sport','Quel sport est associé aux JO en hiver ?','Ski','Tennis','Football','Rugby','Natation','Athlétisme','Golf','Badminton','Boxe','Volley','2026-09-22 10:48:32','2026-09-22 12:29:37'),(26,'Sport','Quel est le célèbre tour cycliste français ?','Tour de France','Tour d’Italie','La Vuelta','Paris-Roubaix','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(27,'Sport','Dans quel sport marque-t-on un touchdown ?','Football américain','Rugby','Basket','Baseball','Natation','Athlétisme','Golf','Badminton','Boxe','Volley','2026-09-22 10:48:32','2026-09-22 12:29:37'),(28,'Sport','Quel sport utilise une balle orange ?','Basket','Handball','Volley','Tennis','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(29,'Sport','Quelle équipe joue au Stade de France ?','France','Espagne','Italie','Portugal','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 10:48:32','2026-09-22 12:29:37'),(30,'Sport','Quel sport est pratiqué sur un tapis ?','Gymnastique','Natation','Cyclisme','Aviron','Athlétisme','Golf','Badminton','Rugby','Boxe','Volley','2026-09-22 10:48:32','2026-09-22 12:29:37'),(31,'Culture Générale','Quel est le symbole chimique de l’eau ?','H2O','CO2','O2','NaCl','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(32,'Culture Générale','Combien de jours compte une semaine ?','7','5','6','8','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(33,'Culture Générale','Qui a peint la Joconde ?','Léonard de Vinci','Van Gogh','Picasso','Monet','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(34,'Culture Générale','Quel animal est le plus grand ?','Baleine bleue','Éléphant','Girafe','Rhinocéros','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(35,'Culture Générale','Quelle planète est appelée la planète rouge ?','Mars','Vénus','Jupiter','Mercure','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(36,'Culture Générale','Quel est le plus grand mammifère ?','Baleine bleue','Éléphant','Dauphin','Hippopotame','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(37,'Culture Générale','Combien de côtés a un hexagone ?','6','5','7','8','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(38,'Culture Générale','Qui a écrit Les Misérables ?','Victor Hugo','Balzac','Zola','Molière','Bleu','Paris','Oxygène','Piano','Newton','Lundi','2026-09-22 10:48:32','2026-09-22 12:29:37'),(39,'Culture Générale','Quelle langue est parlée au Brésil ?','Portugais','Espagnol','Français','Italien','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(40,'Culture Générale','Quel est le nom de la lune de la Terre ?','Luna','Titan','Europe','Io','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 10:48:32','2026-09-22 12:29:37'),(41,'Géographie','Quel est la capitale du cote d\'ivoire','Abidjan','Ouagadougou','Rwanda','Yamoussoukro','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:04:10','2026-09-22 12:32:12'),(42,'Géographie','Quelle est la capitale de la Grèce ?','Athènes','Rome','Sofia','Tirana','Lisbonne','Oslo','Canberra','Le Caire','Moscou','Vienne','2026-09-22 11:11:03','2026-09-22 12:29:37'),(43,'Géographie','Quel est le plus haut sommet du monde ?','Everest','Kilimandjaro','Mont Blanc','K2','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(44,'Géographie','Quel pays a pour capitale Lisbonne ?','Portugal','Espagne','Italie','Brésil','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(45,'Géographie','Sur quel continent se trouve l’Égypte ?','Afrique','Asie','Europe','Océanie','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(46,'Géographie','Quelle mer sépare l’Europe et l’Afrique ?','Méditerranée','Baltique','Mer du Nord','Caraïbes','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(47,'Géographie','Quelle est la capitale de l’Australie ?','Canberra','Sydney','Melbourne','Perth','Lisbonne','Athènes','Oslo','Le Caire','Moscou','Vienne','2026-09-22 11:11:04','2026-09-22 12:29:37'),(48,'Géographie','Quel fleuve traverse Londres ?','La Tamise','La Seine','Le Danube','Le Tage','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(49,'Géographie','Quel pays a la forme d’une botte ?','Italie','Espagne','Grèce','Croatie','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(50,'Géographie','Quelle est la capitale de la Norvège ?','Oslo','Stockholm','Helsinki','Copenhague','Lisbonne','Athènes','Canberra','Le Caire','Moscou','Vienne','2026-09-22 11:11:04','2026-09-22 12:29:37'),(51,'Géographie','Quelle île est la plus grande du monde ?','Groenland','Madagascar','Islande','Bornéo','Lisbonne','Athènes','Oslo','Canberra','Le Caire','Moscou','2026-09-22 11:11:04','2026-09-22 12:29:37'),(52,'Cinéma','Quel film raconte la vie de Forrest ?','Forrest Gump','The Truman Show','Rain Man','Philadelphia','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(53,'Cinéma','Quel super-héros porte un bouclier étoilé ?','Captain America','Iron Man','Thor','Hulk','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(54,'Cinéma','Dans quel film trouve-t-on le personnage Nemo ?','Le Monde de Nemo','Cars','Shrek','Vaiana','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(55,'Cinéma','Qui joue Neo dans Matrix ?','Keanu Reeves','Brad Pitt','Matt Damon','Will Smith','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(56,'Cinéma','Quel film se déroule à Jurassic Park ?','Jurassic Park','King Kong','Godzilla','Avatar','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(57,'Cinéma','Quel acteur joue Batman dans The Dark Knight ?','Christian Bale','Ben Affleck','George Clooney','Michael Keaton','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(58,'Cinéma','Quel film d’animation met en scène Rémy le rat ?','Ratatouille','Coco','Up','Cars','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Interstellar','2026-09-22 11:11:04','2026-09-22 12:29:37'),(59,'Cinéma','Quel est le premier film de la saga Star Wars ?','Un nouvel espoir','L’Empire contre-attaque','Le Retour du Jedi','La Menace fantôme','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(60,'Cinéma','Qui a réalisé E.T. ?','Steven Spielberg','James Cameron','Tim Burton','Christopher Nolan','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(61,'Cinéma','Quel film suit un boxeur nommé Rocky ?','Rocky','Creed','Raging Bull','Million Dollar Baby','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:11:04','2026-09-22 12:29:37'),(62,'Sport','Combien de paniers y a-t-il sur un terrain de basket ?','2','1','4','6','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(63,'Sport','Quel pays accueille Wimbledon ?','Angleterre','France','États-Unis','Australie','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(64,'Sport','Quelle est la distance d’un marathon ?','42,195 km','40 km','50 km','21 km','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(65,'Sport','Quel sport pratique-t-on à Roland-Garros ?','Tennis','Golf','Rugby','Boxe','Natation','Athlétisme','Badminton','Volley','Handball','Cyclisme','2026-09-22 11:11:04','2026-09-22 12:29:37'),(66,'Sport','Combien de couleurs composent les anneaux olympiques ?','5','4','6','7','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(67,'Sport','Quel sport utilise un volant ?','Badminton','Tennis','Squash','Hockey','Natation','Athlétisme','Golf','Rugby','Boxe','Volley','2026-09-22 11:11:04','2026-09-22 12:29:37'),(68,'Sport','Quelle pièce protège le but au football ?','Gardien','Attaquant','Arbitre','Capitaine','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(69,'Sport','Quel pays est célèbre pour le sumo ?','Japon','Chine','Corée','Mongolie','Natation','Athlétisme','Golf','Badminton','Rugby','Boxe','2026-09-22 11:11:04','2026-09-22 12:29:37'),(70,'Sport','Dans quel sport utilise-t-on des clubs ?','Golf','Basket','Volley','Natation','Athlétisme','Badminton','Rugby','Boxe','Handball','Cyclisme','2026-09-22 11:11:04','2026-09-22 12:29:37'),(71,'Sport','Quel sport se joue avec une mêlée ?','Rugby','Football','Tennis','Handball','Natation','Athlétisme','Golf','Badminton','Boxe','Volley','2026-09-22 11:11:04','2026-09-22 12:29:37'),(72,'Culture Générale','Combien de continents y a-t-il généralement ?','7','5','6','8','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(73,'Culture Générale','Quel organe pompe le sang ?','Cœur','Poumon','Foie','Rein','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(74,'Culture Générale','Quelle est la couleur obtenue avec du bleu et du jaune ?','Vert','Orange','Violet','Rose','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(75,'Culture Générale','Combien font 9 fois 9 ?','81','72','90','99','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(76,'Culture Générale','Quel métal est attiré par un aimant ?','Fer','Or','Argent','Cuivre','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(77,'Culture Générale','Quelle saison vient après le printemps ?','Été','Automne','Hiver','Janvier','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(78,'Culture Générale','Quel instrument possède des touches noires et blanches ?','Piano','Violon','Flûte','Trompette','Bleu','Paris','Victor Hugo','Oxygène','Newton','Lundi','2026-09-22 11:11:04','2026-09-22 12:29:37'),(79,'Culture Générale','Quel gaz les humains respirent-ils principalement ?','Oxygène','Hydrogène','Hélium','Méthane','Bleu','Paris','Victor Hugo','Piano','Newton','Lundi','2026-09-22 11:11:04','2026-09-22 12:29:37'),(80,'Culture Générale','Combien de lettres compte l’alphabet français ?','26','24','28','30','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(81,'Culture Générale','Quel est le contraire de rapide ?','Lent','Grand','Fort','Tôt','Bleu','Paris','Victor Hugo','Oxygène','Piano','Newton','2026-09-22 11:11:04','2026-09-22 12:29:37'),(82,'Cinéma','Qui a jouer Obelix dans le film Mission cléopatre','Gerard depardieu','Jerome dewarze','Patric timsit','Emanuel Macron','Robert De Niro','Meryl Streep','The Godfather','Pulp Fiction','Gladiator','Coco','2026-09-22 11:18:40','2026-09-22 12:32:12');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-22 16:34:13
