-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-02-16 21:09:32','2023-02-16 21:09:32','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=4254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://sciences-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://sciences-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Sciences University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','We are pretty good','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jorenkate.apiladas@ctu.edu.ph','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"utskushi-gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"utskushi-gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"utskushi-gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"utskushi-gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"utskushi-gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"utskushi-gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"utskushi-gallery/([^/]+)/embed/?$\";s:49:\"index.php?utskushi-gallery=$matches[1]&embed=true\";s:37:\"utskushi-gallery/([^/]+)/trackback/?$\";s:43:\"index.php?utskushi-gallery=$matches[1]&tb=1\";s:45:\"utskushi-gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?utskushi-gallery=$matches[1]&paged=$matches[2]\";s:52:\"utskushi-gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?utskushi-gallery=$matches[1]&cpage=$matches[2]\";s:41:\"utskushi-gallery/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?utskushi-gallery=$matches[1]&page=$matches[2]\";s:33:\"utskushi-gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"utskushi-gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"utskushi-gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"utskushi-gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"utskushi-gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"utskushi-gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:3:{i:0;s:114:\"C:\\Users\\Joren Kate\\Local Sites\\sciences-university\\app\\public/wp-content/themes/sciences-university-theme/404.php\";i:1;s:116:\"C:\\Users\\Joren Kate\\Local Sites\\sciences-university\\app\\public/wp-content/themes/sciences-university-theme/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','sciences-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','sciences-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1692133771','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1678252186;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1678266586;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678266641;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678309784;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678309841;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678309843;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678482585;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','OL@N~/V@4aguF)GPz~gxW8nI_3]R7]MQP)=Ix<-ex_BI%E?J_?;vcT`~M_]h-h!W','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','On@PSUa=j#jt8eq9VdD{!<[ALU[;AB<LF)1vg}YUlbsPl]rKoxmWXL>|mFOQ]a?3','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1676582112;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1678236043;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (135,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678223600;s:7:\"checked\";a:1:{s:25:\"sciences-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (136,'auth_key','RD.qrzVnXPut6s4Z;{j@3`g*C7Vr^HLep14G*~]zE#VN-A)`W:]F)^6Pf@Wo{||K','no');
INSERT INTO `wp_options` VALUES (137,'auth_salt','.}p7.S`xU5RP;7fsz; .Qtr&%Tx#;#^ ::5TuLK6:rEa04&o}eppHsz!47<XArvG','no');
INSERT INTO `wp_options` VALUES (138,'logged_in_key','-RtoYrQ$s{jpp(!@N}< ^NM?Fa/_$_}GW]zkH_OU1b,)a:WG,&v!bddI^/JD5B98','no');
INSERT INTO `wp_options` VALUES (139,'logged_in_salt','tST)@z00>}^b+}ZQ!91Fg_z3ftErm/R;$WIhH5 N=>WIVIMfOF~!*j~WJd{#=Xqb','no');
INSERT INTO `wp_options` VALUES (157,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (160,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (165,'current_theme','Amazing College','yes');
INSERT INTO `wp_options` VALUES (166,'theme_mods_sciences-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (167,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (168,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (173,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (174,'new_admin_email','jorenkate.apiladas@ctu.edu.ph','yes');
INSERT INTO `wp_options` VALUES (433,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (442,'acf_version','5.10.2','yes');
INSERT INTO `wp_options` VALUES (471,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":3,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (1622,'recovery_mode_email_last_sent','1677792298','yes');
INSERT INTO `wp_options` VALUES (2085,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (2111,'cptui_post_types','a:1:{s:16:\"utskushi-gallery\";a:30:{s:4:\"name\";s:16:\"utskushi-gallery\";s:5:\"label\";s:18:\"Utskushi Galleries\";s:14:\"singular_label\";s:16:\"Utskushi Gallery\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:26:\"dashicons-admin-customizer\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:10:\"My Gallery\";s:9:\"all_items\";s:13:\"All Galleries\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:16:\"Add New Painting\";s:9:\"edit_item\";s:13:\"Edit Painting\";s:8:\"new_item\";s:12:\"New Painting\";s:9:\"view_item\";s:13:\"View Painting\";s:10:\"view_items\";s:14:\"View Paintings\";s:12:\"search_items\";s:16:\"Search Paintings\";s:9:\"not_found\";s:18:\"No paintings found\";s:18:\"not_found_in_trash\";s:27:\"No Paintings found in trash\";s:6:\"parent\";s:16:\"Parent Painting:\";s:14:\"featured_image\";s:32:\"Featured image for this painting\";s:18:\"set_featured_image\";s:36:\"Set featured image for this painting\";s:21:\"remove_featured_image\";s:39:\"Remove featured image for this painting\";s:18:\"use_featured_image\";s:39:\"Use as featured image for this painting\";s:8:\"archives\";s:17:\"Painting archives\";s:16:\"insert_into_item\";s:20:\"Insert into painting\";s:21:\"uploaded_to_this_item\";s:22:\"Uploaded this painting\";s:17:\"filter_items_list\";s:21:\"Filter paintings list\";s:21:\"items_list_navigation\";s:25:\"Paintings list navigation\";s:10:\"items_list\";s:14:\"Paintings list\";s:10:\"attributes\";s:20:\"Paintings Attributes\";s:14:\"name_admin_bar\";s:8:\"Painting\";s:14:\"item_published\";s:18:\"Painting published\";s:24:\"item_published_privately\";s:28:\"Painting published privately\";s:22:\"item_reverted_to_draft\";s:26:\"Painting reverted to draft\";s:14:\"item_scheduled\";s:18:\"Painting scheduled\";s:12:\"item_updated\";s:16:\"Painting updated\";s:17:\"parent_item_colon\";s:16:\"Parent Painting:\";}s:15:\"custom_supports\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (3760,'_transient_timeout_acf_plugin_updates','1678309361','no');
INSERT INTO `wp_options` VALUES (3761,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.10.2\";}}','no');
INSERT INTO `wp_options` VALUES (3765,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1678741365','no');
INSERT INTO `wp_options` VALUES (3766,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (3773,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1678223599;s:8:\"response\";a:2:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}','no');
INSERT INTO `wp_options` VALUES (3936,'_site_transient_timeout_browser_ebc12ec71c6571ad86cd5497581e2262','1678757593','no');
INSERT INTO `wp_options` VALUES (3937,'_site_transient_browser_ebc12ec71c6571ad86cd5497581e2262','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"110.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (4051,'_site_transient_timeout_theme_roots','1678225399','no');
INSERT INTO `wp_options` VALUES (4052,'_site_transient_theme_roots','a:1:{s:25:\"sciences-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (4252,'_transient_timeout_global_styles_sciences-university-theme','1678250565','no');
INSERT INTO `wp_options` VALUES (4253,'_transient_global_styles_sciences-university-theme','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=898 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (14,12,'_edit_lock','1676945392:1');
INSERT INTO `wp_postmeta` VALUES (17,14,'_edit_lock','1676599657:1');
INSERT INTO `wp_postmeta` VALUES (18,16,'_edit_lock','1676598328:1');
INSERT INTO `wp_postmeta` VALUES (19,18,'_edit_lock','1676597134:1');
INSERT INTO `wp_postmeta` VALUES (20,20,'_edit_lock','1676599592:1');
INSERT INTO `wp_postmeta` VALUES (21,22,'_edit_lock','1676598344:1');
INSERT INTO `wp_postmeta` VALUES (22,3,'_edit_lock','1676594512:1');
INSERT INTO `wp_postmeta` VALUES (23,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (24,3,'_wp_trash_meta_time','1676594659');
INSERT INTO `wp_postmeta` VALUES (25,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (26,25,'_edit_lock','1676594632:1');
INSERT INTO `wp_postmeta` VALUES (27,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (28,29,'_edit_lock','1676672470:1');
INSERT INTO `wp_postmeta` VALUES (29,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,31,'_edit_lock','1676670835:1');
INSERT INTO `wp_postmeta` VALUES (31,31,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (32,31,'_wp_trash_meta_time','1676672025');
INSERT INTO `wp_postmeta` VALUES (33,31,'_wp_desired_post_slug','404-page-sciences-university');
INSERT INTO `wp_postmeta` VALUES (38,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (39,35,'_edit_lock','1677792402:1');
INSERT INTO `wp_postmeta` VALUES (40,29,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (41,29,'_wp_trash_meta_time','1676672615');
INSERT INTO `wp_postmeta` VALUES (42,29,'_wp_desired_post_slug','group_63eeff86d83e7');
INSERT INTO `wp_postmeta` VALUES (43,30,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (44,30,'_wp_trash_meta_time','1676672615');
INSERT INTO `wp_postmeta` VALUES (45,30,'_wp_desired_post_slug','field_63eeff8776064');
INSERT INTO `wp_postmeta` VALUES (46,37,'_wp_attached_file','2023/02/Howl-scenery.png');
INSERT INTO `wp_postmeta` VALUES (47,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1365;s:6:\"height\";i:737;s:4:\"file\";s:24:\"2023/02/Howl-scenery.png\";s:8:\"filesize\";i:1600115;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Howl-scenery-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94943;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"Howl-scenery-1024x553.png\";s:5:\"width\";i:1024;s:6:\"height\";i:553;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:767053;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Howl-scenery-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46927;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Howl-scenery-768x415.png\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:481983;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (55,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (56,39,'_edit_lock','1677552028:1');
INSERT INTO `wp_postmeta` VALUES (57,39,'_wp_page_template','blog.php');
INSERT INTO `wp_postmeta` VALUES (58,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (61,12,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (62,12,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (63,41,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (64,41,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (69,1,'_edit_lock','1676951343:1');
INSERT INTO `wp_postmeta` VALUES (70,43,'_wp_attached_file','2023/02/Weathering-With-You.jpg');
INSERT INTO `wp_postmeta` VALUES (71,43,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:31:\"2023/02/Weathering-With-You.jpg\";s:8:\"filesize\";i:501591;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"Weathering-With-You-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18496;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"Weathering-With-You-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:141396;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"Weathering-With-You-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9160;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"Weathering-With-You-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89309;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"Weathering-With-You-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:267058;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (72,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (75,1,'featured_image','50');
INSERT INTO `wp_postmeta` VALUES (76,1,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (77,44,'featured_image','43');
INSERT INTO `wp_postmeta` VALUES (78,44,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (79,46,'_wp_attached_file','2023/02/hogwarts.jpg');
INSERT INTO `wp_postmeta` VALUES (80,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:821;s:4:\"file\";s:20:\"2023/02/hogwarts.jpg\";s:8:\"filesize\";i:264398;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"hogwarts-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14660;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"hogwarts-1024x420.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103851;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"hogwarts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9727;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"hogwarts-768x315.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67498;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"hogwarts-1536x631.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:631;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:186752;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (83,47,'featured_image','46');
INSERT INTO `wp_postmeta` VALUES (84,47,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (87,48,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (88,48,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (93,50,'_wp_attached_file','2023/02/gryffindorroom.jpg');
INSERT INTO `wp_postmeta` VALUES (94,50,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1280;s:4:\"file\";s:26:\"2023/02/gryffindorroom.jpg\";s:8:\"filesize\";i:472325;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"gryffindorroom-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10255;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"gryffindorroom-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76693;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"gryffindorroom-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6054;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"gryffindorroom-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47166;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"gryffindorroom-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:152784;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"gryffindorroom-2048x1024.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:249417;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (97,51,'featured_image','50');
INSERT INTO `wp_postmeta` VALUES (98,51,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (173,1,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (174,1,'_wp_trash_meta_time','1677032708');
INSERT INTO `wp_postmeta` VALUES (175,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (176,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (180,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,67,'_edit_lock','1677035933:1');
INSERT INTO `wp_postmeta` VALUES (184,67,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (185,67,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (186,68,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (187,68,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (217,76,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (218,76,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (225,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,78,'_edit_lock','1677199614:1');
INSERT INTO `wp_postmeta` VALUES (227,79,'_wp_attached_file','2023/02/hogwarts2.jpg');
INSERT INTO `wp_postmeta` VALUES (228,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:21:\"2023/02/hogwarts2.jpg\";s:8:\"filesize\";i:183508;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"hogwarts2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15449;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"hogwarts2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7763;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"hogwarts2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59778;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (231,78,'featured_image','141');
INSERT INTO `wp_postmeta` VALUES (232,78,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (233,80,'featured_image','79');
INSERT INTO `wp_postmeta` VALUES (234,80,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (260,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (261,85,'_edit_lock','1677128370:1');
INSERT INTO `wp_postmeta` VALUES (264,85,'featured_image','46');
INSERT INTO `wp_postmeta` VALUES (265,85,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (266,86,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (267,86,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (354,121,'_wp_attached_file','2023/02/Spirited-away-scenery.jpg');
INSERT INTO `wp_postmeta` VALUES (411,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (414,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (417,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (420,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (423,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (426,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (429,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (432,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (435,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (438,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (441,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (444,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (447,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (450,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (453,115,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (456,119,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (457,119,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (458,119,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (459,113,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (460,113,'_wp_trash_meta_time','1677128008');
INSERT INTO `wp_postmeta` VALUES (461,113,'_wp_desired_post_slug','test-new-post8');
INSERT INTO `wp_postmeta` VALUES (462,115,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (463,115,'_wp_trash_meta_time','1677128011');
INSERT INTO `wp_postmeta` VALUES (464,115,'_wp_desired_post_slug','test-new-post-9');
INSERT INTO `wp_postmeta` VALUES (465,67,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (466,67,'_wp_trash_meta_time','1677128020');
INSERT INTO `wp_postmeta` VALUES (467,67,'_wp_desired_post_slug','second-post');
INSERT INTO `wp_postmeta` VALUES (468,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (469,12,'_wp_trash_meta_time','1677128024');
INSERT INTO `wp_postmeta` VALUES (470,12,'_wp_desired_post_slug','second-test-post');
INSERT INTO `wp_postmeta` VALUES (471,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (472,87,'_wp_trash_meta_time','1677128028');
INSERT INTO `wp_postmeta` VALUES (473,87,'_wp_desired_post_slug','sadasdd');
INSERT INTO `wp_postmeta` VALUES (474,88,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (475,88,'_wp_trash_meta_time','1677128032');
INSERT INTO `wp_postmeta` VALUES (476,88,'_wp_desired_post_slug','kjlkl');
INSERT INTO `wp_postmeta` VALUES (477,89,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (478,89,'_wp_trash_meta_time','1677128036');
INSERT INTO `wp_postmeta` VALUES (479,89,'_wp_desired_post_slug','jilji');
INSERT INTO `wp_postmeta` VALUES (480,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (481,90,'_wp_trash_meta_time','1677128038');
INSERT INTO `wp_postmeta` VALUES (482,90,'_wp_desired_post_slug','kl');
INSERT INTO `wp_postmeta` VALUES (483,105,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (484,105,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (485,119,'_edit_lock','1677128349:1');
INSERT INTO `wp_postmeta` VALUES (488,119,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (489,119,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (490,122,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (491,122,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (492,122,'featured_image','');
INSERT INTO `wp_postmeta` VALUES (493,122,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (494,104,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (495,104,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (496,119,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (497,119,'_wp_trash_meta_time','1677128478');
INSERT INTO `wp_postmeta` VALUES (498,119,'_wp_desired_post_slug','dfsdf');
INSERT INTO `wp_postmeta` VALUES (499,105,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (500,105,'_wp_trash_meta_time','1677128481');
INSERT INTO `wp_postmeta` VALUES (501,105,'_wp_desired_post_slug','sdsfsdfgdfgdfhgfh1');
INSERT INTO `wp_postmeta` VALUES (502,104,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (503,104,'_wp_trash_meta_time','1677128486');
INSERT INTO `wp_postmeta` VALUES (504,104,'_wp_desired_post_slug','hello-worlskddf');
INSERT INTO `wp_postmeta` VALUES (507,85,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (508,85,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (509,129,'featured_image','46');
INSERT INTO `wp_postmeta` VALUES (510,129,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (511,129,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (512,129,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (513,93,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (514,93,'_wp_trash_meta_time','1677128523');
INSERT INTO `wp_postmeta` VALUES (515,93,'_wp_desired_post_slug','hello-worldsdasdd');
INSERT INTO `wp_postmeta` VALUES (516,103,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (517,103,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (518,102,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (519,102,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (520,103,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (521,103,'_wp_trash_meta_time','1677128542');
INSERT INTO `wp_postmeta` VALUES (522,103,'_wp_desired_post_slug','test-new-post1224');
INSERT INTO `wp_postmeta` VALUES (523,102,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (524,102,'_wp_trash_meta_time','1677128548');
INSERT INTO `wp_postmeta` VALUES (525,102,'_wp_desired_post_slug','test-new-post123');
INSERT INTO `wp_postmeta` VALUES (526,91,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (527,91,'_wp_trash_meta_time','1677128551');
INSERT INTO `wp_postmeta` VALUES (528,91,'_wp_desired_post_slug','frdgthgfdhfdh');
INSERT INTO `wp_postmeta` VALUES (529,92,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (530,92,'_wp_trash_meta_time','1677128558');
INSERT INTO `wp_postmeta` VALUES (531,92,'_wp_desired_post_slug','joren-kate');
INSERT INTO `wp_postmeta` VALUES (534,130,'_edit_lock','1677298533:1');
INSERT INTO `wp_postmeta` VALUES (535,130,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (538,130,'featured_image','161');
INSERT INTO `wp_postmeta` VALUES (539,130,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (540,130,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (541,130,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (542,131,'featured_image','50');
INSERT INTO `wp_postmeta` VALUES (543,131,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (544,131,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (545,131,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (548,101,'_edit_lock','1677200700:1');
INSERT INTO `wp_postmeta` VALUES (551,101,'featured_image','140');
INSERT INTO `wp_postmeta` VALUES (552,101,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (553,101,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (554,101,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (555,132,'featured_image','121');
INSERT INTO `wp_postmeta` VALUES (556,132,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (557,132,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (558,132,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (565,133,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (566,133,'_wp_trash_meta_time','1677190775');
INSERT INTO `wp_postmeta` VALUES (567,133,'_wp_desired_post_slug','blog-post');
INSERT INTO `wp_postmeta` VALUES (568,135,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (569,135,'_wp_trash_meta_time','1677190809');
INSERT INTO `wp_postmeta` VALUES (570,135,'_wp_desired_post_slug','blog-post-3');
INSERT INTO `wp_postmeta` VALUES (571,134,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (572,134,'_wp_trash_meta_time','1677190812');
INSERT INTO `wp_postmeta` VALUES (573,134,'_wp_desired_post_slug','blog-post-2');
INSERT INTO `wp_postmeta` VALUES (574,100,'_edit_lock','1677199541:1');
INSERT INTO `wp_postmeta` VALUES (575,140,'_wp_attached_file','2023/02/hall.png');
INSERT INTO `wp_postmeta` VALUES (576,140,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:479;s:4:\"file\";s:16:\"2023/02/hall.png\";s:8:\"filesize\";i:469332;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"hall-300x144.png\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62365;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"hall-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37735;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"hall-768x368.png\";s:5:\"width\";i:768;s:6:\"height\";i:368;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:303925;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (577,141,'_wp_attached_file','2023/02/students.jpg');
INSERT INTO `wp_postmeta` VALUES (578,141,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:875;s:6:\"height\";i:492;s:4:\"file\";s:20:\"2023/02/students.jpg\";s:8:\"filesize\";i:49696;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"students-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12076;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"students-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6198;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"students-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48238;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (581,78,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (582,78,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (583,142,'featured_image','141');
INSERT INTO `wp_postmeta` VALUES (584,142,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (585,142,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (586,142,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (589,143,'featured_image','140');
INSERT INTO `wp_postmeta` VALUES (590,143,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (591,143,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (592,143,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (595,145,'_wp_attached_file','2023/02/Header.jpg');
INSERT INTO `wp_postmeta` VALUES (596,144,'_thumbnail_id','145');
INSERT INTO `wp_postmeta` VALUES (597,144,'featured_image','145');
INSERT INTO `wp_postmeta` VALUES (598,144,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (599,144,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (600,144,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (601,100,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (602,100,'_wp_trash_meta_time','1677272047');
INSERT INTO `wp_postmeta` VALUES (603,100,'_wp_desired_post_slug','test-new-post');
INSERT INTO `wp_postmeta` VALUES (610,146,'featured_post','No');
INSERT INTO `wp_postmeta` VALUES (611,146,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (614,148,'_wp_attached_file','2023/02/Untitled.png');
INSERT INTO `wp_postmeta` VALUES (615,146,'_thumbnail_id','182');
INSERT INTO `wp_postmeta` VALUES (620,150,'_wp_attached_file','2023/02/Spirited-away-scenery-1.jpg');
INSERT INTO `wp_postmeta` VALUES (627,153,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (628,153,'_edit_lock','1677805434:1');
INSERT INTO `wp_postmeta` VALUES (629,161,'_wp_attached_file','2023/02/Starry-night.jpg');
INSERT INTO `wp_postmeta` VALUES (630,161,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:950;s:4:\"file\";s:24:\"2023/02/Starry-night.jpg\";s:8:\"filesize\";i:540085;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Starry-night-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25770;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"Starry-night-1024x811.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:811;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:282535;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Starry-night-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8600;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Starry-night-768x608.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161762;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (631,160,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (632,160,'_edit_lock','1677730870:1');
INSERT INTO `wp_postmeta` VALUES (633,160,'title_painting','Starry Night');
INSERT INTO `wp_postmeta` VALUES (634,160,'_title_painting','field_63f98571e1702');
INSERT INTO `wp_postmeta` VALUES (635,160,'featured_image','198');
INSERT INTO `wp_postmeta` VALUES (636,160,'_featured_image','field_63f985f9e1703');
INSERT INTO `wp_postmeta` VALUES (637,160,'artist_name','Vincent Van Gogh');
INSERT INTO `wp_postmeta` VALUES (638,160,'_artist_name','field_63f9865ce1704');
INSERT INTO `wp_postmeta` VALUES (639,160,'date_finished','June 1889');
INSERT INTO `wp_postmeta` VALUES (640,160,'_date_finished','field_63f9866ee1705');
INSERT INTO `wp_postmeta` VALUES (641,160,'medium','Oil on canvas');
INSERT INTO `wp_postmeta` VALUES (642,160,'_medium','field_63f986cce1707');
INSERT INTO `wp_postmeta` VALUES (643,160,'art_location','Southern France');
INSERT INTO `wp_postmeta` VALUES (644,160,'_art_location','field_63f986d8e1708');
INSERT INTO `wp_postmeta` VALUES (647,162,'featured_image','161');
INSERT INTO `wp_postmeta` VALUES (648,162,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (649,162,'featured_post','Yes');
INSERT INTO `wp_postmeta` VALUES (650,162,'_featured_post','field_63f6ccd1ae13d');
INSERT INTO `wp_postmeta` VALUES (651,160,'date_created','June 1889');
INSERT INTO `wp_postmeta` VALUES (652,160,'_date_created','field_63f9866ee1705');
INSERT INTO `wp_postmeta` VALUES (653,146,'_edit_lock','1677551357:1');
INSERT INTO `wp_postmeta` VALUES (654,144,'_edit_lock','1677551524:1');
INSERT INTO `wp_postmeta` VALUES (655,163,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (656,163,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (657,163,'_edit_lock','1677551656:1');
INSERT INTO `wp_postmeta` VALUES (658,163,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (659,163,'_wp_trash_meta_time','1677551801');
INSERT INTO `wp_postmeta` VALUES (660,163,'_wp_desired_post_slug','art-gallery');
INSERT INTO `wp_postmeta` VALUES (661,166,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (662,166,'_edit_lock','1678154298:1');
INSERT INTO `wp_postmeta` VALUES (663,166,'_wp_page_template','utskushi-gallery-list.php');
INSERT INTO `wp_postmeta` VALUES (664,160,'price','120000');
INSERT INTO `wp_postmeta` VALUES (665,160,'_price','field_63fec04bf644c');
INSERT INTO `wp_postmeta` VALUES (666,160,'size','73.7 cm × 92.1 cm (29.01 in × 36.26 in)');
INSERT INTO `wp_postmeta` VALUES (667,160,'_size','field_63fec0691dea7');
INSERT INTO `wp_postmeta` VALUES (668,160,'dimension','73.7 cm × 92.1 cm (29.01 in × 36.26 in)');
INSERT INTO `wp_postmeta` VALUES (669,160,'_dimension','field_63fec0691dea7');
INSERT INTO `wp_postmeta` VALUES (672,171,'_wp_attached_file','2023/03/Mona_Lisa.jpg');
INSERT INTO `wp_postmeta` VALUES (673,171,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:224;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2023/03/Mona_Lisa.jpg\";s:8:\"filesize\";i:14289;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Mona_Lisa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4895;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (690,172,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (691,172,'_edit_lock','1677730915:1');
INSERT INTO `wp_postmeta` VALUES (692,173,'_wp_attached_file','2023/03/Fruits-pickers-at-a-mango-tree.png');
INSERT INTO `wp_postmeta` VALUES (693,173,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:898;s:4:\"file\";s:42:\"2023/03/Fruits-pickers-at-a-mango-tree.png\";s:8:\"filesize\";i:2421186;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"Fruits-pickers-at-a-mango-tree-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:154105;}s:5:\"large\";a:5:{s:4:\"file\";s:43:\"Fruits-pickers-at-a-mango-tree-1024x718.png\";s:5:\"width\";i:1024;s:6:\"height\";i:718;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1522103;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"Fruits-pickers-at-a-mango-tree-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57071;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"Fruits-pickers-at-a-mango-tree-768x539.png\";s:5:\"width\";i:768;s:6:\"height\";i:539;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:902151;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (694,172,'title_painting','The Fruit Pickers Harvesting Under the Mango Tree');
INSERT INTO `wp_postmeta` VALUES (695,172,'_title_painting','field_63f98571e1702');
INSERT INTO `wp_postmeta` VALUES (696,172,'featured_image','173');
INSERT INTO `wp_postmeta` VALUES (697,172,'_featured_image','field_63f985f9e1703');
INSERT INTO `wp_postmeta` VALUES (698,172,'artist_name','Fernando Amorsolo');
INSERT INTO `wp_postmeta` VALUES (699,172,'_artist_name','field_63f9865ce1704');
INSERT INTO `wp_postmeta` VALUES (700,172,'date_created','1939');
INSERT INTO `wp_postmeta` VALUES (701,172,'_date_created','field_63f9866ee1705');
INSERT INTO `wp_postmeta` VALUES (702,172,'medium','Oil paint on canvas');
INSERT INTO `wp_postmeta` VALUES (703,172,'_medium','field_63f986cce1707');
INSERT INTO `wp_postmeta` VALUES (704,172,'art_location','Philippines');
INSERT INTO `wp_postmeta` VALUES (705,172,'_art_location','field_63f986d8e1708');
INSERT INTO `wp_postmeta` VALUES (706,172,'price','2000000');
INSERT INTO `wp_postmeta` VALUES (707,172,'_price','field_63fec04bf644c');
INSERT INTO `wp_postmeta` VALUES (708,172,'dimension',' 25¼ × 37½ inches');
INSERT INTO `wp_postmeta` VALUES (709,172,'_dimension','field_63fec0691dea7');
INSERT INTO `wp_postmeta` VALUES (710,174,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (711,174,'_edit_lock','1677730853:1');
INSERT INTO `wp_postmeta` VALUES (712,175,'_wp_attached_file','2023/03/the-last-supper.jpg');
INSERT INTO `wp_postmeta` VALUES (713,175,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:924;s:6:\"height\";i:462;s:4:\"file\";s:27:\"2023/03/the-last-supper.jpg\";s:8:\"filesize\";i:56478;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"the-last-supper-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15592;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"the-last-supper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8238;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"the-last-supper-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70574;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (714,174,'title_painting','The Last Supper');
INSERT INTO `wp_postmeta` VALUES (715,174,'_title_painting','field_63f98571e1702');
INSERT INTO `wp_postmeta` VALUES (716,174,'featured_image','175');
INSERT INTO `wp_postmeta` VALUES (717,174,'_featured_image','field_63f985f9e1703');
INSERT INTO `wp_postmeta` VALUES (718,174,'artist_name','Leonardo da Vinci');
INSERT INTO `wp_postmeta` VALUES (719,174,'_artist_name','field_63f9865ce1704');
INSERT INTO `wp_postmeta` VALUES (720,174,'date_created','1495-1498');
INSERT INTO `wp_postmeta` VALUES (721,174,'_date_created','field_63f9866ee1705');
INSERT INTO `wp_postmeta` VALUES (722,174,'medium','Tempera on gesso');
INSERT INTO `wp_postmeta` VALUES (723,174,'_medium','field_63f986cce1707');
INSERT INTO `wp_postmeta` VALUES (724,174,'art_location','Santa Marisa delle Grazie, Milan');
INSERT INTO `wp_postmeta` VALUES (725,174,'_art_location','field_63f986d8e1708');
INSERT INTO `wp_postmeta` VALUES (726,174,'price','23000000');
INSERT INTO `wp_postmeta` VALUES (727,174,'_price','field_63fec04bf644c');
INSERT INTO `wp_postmeta` VALUES (728,174,'dimension','460 cm × 880 cm (181 in × 346 in)');
INSERT INTO `wp_postmeta` VALUES (729,174,'_dimension','field_63fec0691dea7');
INSERT INTO `wp_postmeta` VALUES (730,176,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (731,176,'_edit_lock','1677730831:1');
INSERT INTO `wp_postmeta` VALUES (732,177,'_wp_attached_file','2023/03/picasso-painting.jpg');
INSERT INTO `wp_postmeta` VALUES (733,177,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:730;s:6:\"height\";i:441;s:4:\"file\";s:28:\"2023/03/picasso-painting.jpg\";s:8:\"filesize\";i:95062;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"picasso-painting-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22214;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"picasso-painting-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10115;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (734,176,'title_painting','Girl before a Mirror');
INSERT INTO `wp_postmeta` VALUES (735,176,'_title_painting','field_63f98571e1702');
INSERT INTO `wp_postmeta` VALUES (736,176,'featured_image','177');
INSERT INTO `wp_postmeta` VALUES (737,176,'_featured_image','field_63f985f9e1703');
INSERT INTO `wp_postmeta` VALUES (738,176,'artist_name','Pablo Picasso');
INSERT INTO `wp_postmeta` VALUES (739,176,'_artist_name','field_63f9865ce1704');
INSERT INTO `wp_postmeta` VALUES (740,176,'date_created','1932');
INSERT INTO `wp_postmeta` VALUES (741,176,'_date_created','field_63f9866ee1705');
INSERT INTO `wp_postmeta` VALUES (742,176,'medium','Oil paint');
INSERT INTO `wp_postmeta` VALUES (743,176,'_medium','field_63f986cce1707');
INSERT INTO `wp_postmeta` VALUES (744,176,'art_location','Spain');
INSERT INTO `wp_postmeta` VALUES (745,176,'_art_location','field_63f986d8e1708');
INSERT INTO `wp_postmeta` VALUES (746,176,'price','123000000');
INSERT INTO `wp_postmeta` VALUES (747,176,'_price','field_63fec04bf644c');
INSERT INTO `wp_postmeta` VALUES (748,176,'dimension','1.62 m x 1.3 m');
INSERT INTO `wp_postmeta` VALUES (749,176,'_dimension','field_63fec0691dea7');
INSERT INTO `wp_postmeta` VALUES (752,181,'_wp_attached_file','2023/03/pink-tree.jpg');
INSERT INTO `wp_postmeta` VALUES (760,182,'_wp_attached_file','2023/03/pink-tree-1.jpg');
INSERT INTO `wp_postmeta` VALUES (761,146,'featured_image','182');
INSERT INTO `wp_postmeta` VALUES (762,146,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (771,185,'_wp_attached_file','2023/03/goddess.jpg');
INSERT INTO `wp_postmeta` VALUES (781,187,'_wp_attached_file','2023/03/Mona_Lisa-1.jpg');
INSERT INTO `wp_postmeta` VALUES (785,188,'artist_name','Hokusai');
INSERT INTO `wp_postmeta` VALUES (786,188,'date_created','late 1831');
INSERT INTO `wp_postmeta` VALUES (787,188,'medium','Ink');
INSERT INTO `wp_postmeta` VALUES (788,188,'art_location','Japan');
INSERT INTO `wp_postmeta` VALUES (789,188,'price','234000000');
INSERT INTO `wp_postmeta` VALUES (790,188,'dimension','26 cm x 38 cm');
INSERT INTO `wp_postmeta` VALUES (791,189,'_wp_attached_file','2023/03/Tsunami_by_hokusai_19th_century.jpg');
INSERT INTO `wp_postmeta` VALUES (792,188,'_thumbnail_id','189');
INSERT INTO `wp_postmeta` VALUES (793,188,'featured_image','189');
INSERT INTO `wp_postmeta` VALUES (794,188,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (798,191,'artist_name','Leonardo da Vinci');
INSERT INTO `wp_postmeta` VALUES (799,191,'date_created','1503');
INSERT INTO `wp_postmeta` VALUES (800,191,'medium','Oil Paint');
INSERT INTO `wp_postmeta` VALUES (801,191,'art_location','Louvre, Paris');
INSERT INTO `wp_postmeta` VALUES (802,191,'price','15000000');
INSERT INTO `wp_postmeta` VALUES (803,191,'dimension','77 cm x 53 cm');
INSERT INTO `wp_postmeta` VALUES (804,192,'_wp_attached_file','2023/03/Mona_Lisa-2.jpg');
INSERT INTO `wp_postmeta` VALUES (805,191,'_thumbnail_id','192');
INSERT INTO `wp_postmeta` VALUES (806,191,'featured_image','192');
INSERT INTO `wp_postmeta` VALUES (807,191,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (808,193,'artist_name','Huta Chan');
INSERT INTO `wp_postmeta` VALUES (809,193,'date_created','2019');
INSERT INTO `wp_postmeta` VALUES (810,193,'medium','Watercolor on watercolor paper');
INSERT INTO `wp_postmeta` VALUES (811,193,'art_location','Vietnam');
INSERT INTO `wp_postmeta` VALUES (812,193,'price','100000');
INSERT INTO `wp_postmeta` VALUES (813,193,'dimension','8.5 inch x 12 inch');
INSERT INTO `wp_postmeta` VALUES (814,194,'_wp_attached_file','2023/03/art-huta.jpg');
INSERT INTO `wp_postmeta` VALUES (815,193,'_thumbnail_id','194');
INSERT INTO `wp_postmeta` VALUES (816,193,'featured_image','194');
INSERT INTO `wp_postmeta` VALUES (817,193,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (818,195,'artist_name','Juan Luna');
INSERT INTO `wp_postmeta` VALUES (819,195,'date_created','1884');
INSERT INTO `wp_postmeta` VALUES (820,195,'medium','Oil Paint');
INSERT INTO `wp_postmeta` VALUES (821,195,'art_location','Philippines');
INSERT INTO `wp_postmeta` VALUES (822,195,'price','10000000');
INSERT INTO `wp_postmeta` VALUES (823,195,'dimension','4m x 7m');
INSERT INTO `wp_postmeta` VALUES (824,196,'_wp_attached_file','2023/03/spoliarium-by-juan-luna-famous-art-handmade-oil-painting-on-canvas.png');
INSERT INTO `wp_postmeta` VALUES (825,195,'_thumbnail_id','196');
INSERT INTO `wp_postmeta` VALUES (826,195,'featured_image','196');
INSERT INTO `wp_postmeta` VALUES (827,195,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (828,195,'_edit_lock','1677805580:1');
INSERT INTO `wp_postmeta` VALUES (829,197,'_wp_attached_file','2023/03/starry-night.jpg');
INSERT INTO `wp_postmeta` VALUES (830,160,'_thumbnail_id','198');
INSERT INTO `wp_postmeta` VALUES (831,198,'_wp_attached_file','2023/03/starry-night-van-gogh.jpg');
INSERT INTO `wp_postmeta` VALUES (832,199,'artist_name','Vincent Van Gogh');
INSERT INTO `wp_postmeta` VALUES (833,199,'date_created','1888');
INSERT INTO `wp_postmeta` VALUES (834,199,'medium','Oil Paint');
INSERT INTO `wp_postmeta` VALUES (835,199,'art_location','Arles, France');
INSERT INTO `wp_postmeta` VALUES (836,199,'price','1000000');
INSERT INTO `wp_postmeta` VALUES (837,199,'dimension','73 cm x 91 cm');
INSERT INTO `wp_postmeta` VALUES (838,200,'_wp_attached_file','2023/03/sunflower.jpg');
INSERT INTO `wp_postmeta` VALUES (839,199,'_thumbnail_id','200');
INSERT INTO `wp_postmeta` VALUES (840,199,'featured_image','200');
INSERT INTO `wp_postmeta` VALUES (841,199,'_featured_image','field_63effdf4eb617');
INSERT INTO `wp_postmeta` VALUES (848,203,'_wp_attached_file','2023/03/pink-tree-2.jpg');
INSERT INTO `wp_postmeta` VALUES (858,205,'_wp_attached_file','2023/03/pink-tree-3.jpg');
INSERT INTO `wp_postmeta` VALUES (868,207,'_wp_attached_file','2023/03/Palayan.jpg');
INSERT INTO `wp_postmeta` VALUES (878,209,'_wp_attached_file','2023/03/van-gogh-paintings.jpg');
INSERT INTO `wp_postmeta` VALUES (888,211,'_wp_attached_file','2023/03/pink-tree-4.jpg');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-02-16 21:09:32','2023-02-16 21:09:32','<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed-2','','','2023-02-22 02:25:08','2023-02-22 02:25:08','',0,'http://sciences-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-02-16 21:09:32','2023-02-16 21:09:32','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://sciences-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-02-16 21:09:32','2023-02-16 21:09:32','',0,'http://sciences-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-02-16 21:09:32','2023-02-16 21:09:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://sciences-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2023-02-17 00:44:19','2023-02-17 00:44:19','',0,'http://sciences-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-02-16 21:12:54','2023-02-16 21:12:54','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-02-16 21:12:54','2023-02-16 21:12:54','',0,'http://sciences-university.local/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-02-16 21:17:19','2023-02-16 21:17:19','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','Second Test Post','','trash','open','open','','second-test-post__trashed','','','2023-02-23 04:53:44','2023-02-23 04:53:44','',0,'http://sciences-university.local/?p=12',0,'post','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-02-16 21:17:19','2023-02-16 21:17:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','12-revision-v1','','','2023-02-16 21:17:19','2023-02-16 21:17:19','',12,'http://sciences-university.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-02-16 21:18:08','2023-02-16 21:18:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2023-02-16 21:18:08','2023-02-16 21:18:08','',0,'http://sciences-university.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-02-16 21:18:08','2023-02-16 21:18:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','14-revision-v1','','','2023-02-16 21:18:08','2023-02-16 21:18:08','',14,'http://sciences-university.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-02-16 22:59:04','2023-02-16 22:59:04','<!-- wp:paragraph -->\n<p>This is a page of about content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','about-us','','','2023-02-16 22:59:04','2023-02-16 22:59:04','',0,'http://sciences-university.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-02-16 22:59:04','2023-02-16 22:59:04','<!-- wp:paragraph -->\n<p>This is a page of about content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','16-revision-v1','','','2023-02-16 22:59:04','2023-02-16 22:59:04','',16,'http://sciences-university.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-02-16 22:59:49','2023-02-16 22:59:49','<!-- wp:paragraph -->\n<p>This is the privacy policy content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy-2','','','2023-02-16 22:59:49','2023-02-16 22:59:49','',0,'http://sciences-university.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-02-16 22:59:49','2023-02-16 22:59:49','<!-- wp:paragraph -->\n<p>This is the privacy policy content</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','18-revision-v1','','','2023-02-16 22:59:49','2023-02-16 22:59:49','',18,'http://sciences-university.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-02-17 00:10:09','2023-02-17 00:10:09','<!-- wp:paragraph -->\n<p>This is our history content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2023-02-17 01:48:21','2023-02-17 01:48:21','',16,'http://sciences-university.local/?page_id=20',1,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-02-17 00:10:09','2023-02-17 00:10:09','<!-- wp:paragraph -->\n<p>This is our history content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2023-02-17 00:10:09','2023-02-17 00:10:09','',20,'http://sciences-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-02-17 00:11:51','2023-02-17 00:11:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2023-02-17 01:48:05','2023-02-17 01:48:05','',16,'http://sciences-university.local/?page_id=22',2,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-02-17 00:11:51','2023-02-17 00:11:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','22-revision-v1','','','2023-02-17 00:11:51','2023-02-17 00:11:51','',22,'http://sciences-university.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-02-17 00:44:19','2023-02-17 00:44:19','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://sciences-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-02-17 00:44:19','2023-02-17 00:44:19','',3,'http://sciences-university.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-02-17 00:45:59','2023-02-17 00:45:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2023-02-17 00:45:59','2023-02-17 00:45:59','',18,'http://sciences-university.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-02-17 00:45:59','2023-02-17 00:45:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','25-revision-v1','','','2023-02-17 00:45:59','2023-02-17 00:45:59','',25,'http://sciences-university.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-02-17 04:09:35','2023-02-17 04:09:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','A Post','','inherit','closed','closed','','12-autosave-v1','','','2023-02-17 04:09:35','2023-02-17 04:09:35','',12,'http://sciences-university.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-02-17 04:17:59','2023-02-17 04:17:59','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Picture','picture','trash','closed','closed','','group_63eeff86d83e7__trashed','','','2023-02-17 22:23:35','2023-02-17 22:23:35','',0,'http://sciences-university.local/?post_type=acf-field-group&#038;p=29',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-02-17 04:17:59','2023-02-17 04:17:59','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','featured Image','featured_image','trash','closed','closed','','field_63eeff8776064__trashed','','','2023-02-17 22:23:35','2023-02-17 22:23:35','',29,'http://sciences-university.local/?post_type=acf-field&#038;p=30',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-02-17 21:48:39','2023-02-17 21:48:39','404\r\n\r\nPage Not Fount','404 Page - Sciences University','','trash','closed','closed','','404-page-sciences-university__trashed','','','2023-02-17 22:13:45','2023-02-17 22:13:45','',0,'http://sciences-university.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-02-17 21:48:39','2023-02-17 21:48:39','404\r\n\r\nPage Not Fount','404 Page - Sciences University','','inherit','closed','closed','','31-revision-v1','','','2023-02-17 21:48:39','2023-02-17 21:48:39','',31,'http://sciences-university.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-02-17 22:22:45','2023-02-17 22:22:45','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Post Fields','post-fields','publish','closed','closed','','group_63effdce85366','','','2023-02-23 02:18:57','2023-02-23 02:18:57','',0,'http://sciences-university.local/?post_type=acf-field-group&#038;p=35',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-02-17 22:22:45','2023-02-17 22:22:45','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Featured Image','featured_image','publish','closed','closed','','field_63effdf4eb617','','','2023-02-17 22:22:45','2023-02-17 22:22:45','',35,'http://sciences-university.local/?post_type=acf-field&p=36',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-02-17 23:15:46','2023-02-17 23:15:46','','Howl scenery','','inherit','open','closed','','howl-scenery','','','2023-02-17 23:15:46','2023-02-17 23:15:46','',0,'http://sciences-university.local/wp-content/uploads/2023/02/Howl-scenery.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-02-20 21:11:08','2023-02-20 21:11:08','','Blog Post','','publish','closed','closed','','blog-list','','','2023-02-21 01:42:47','2023-02-21 01:42:47','',0,'http://sciences-university.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-02-20 21:11:08','2023-02-20 21:11:08','','Blog List','','inherit','closed','closed','','39-revision-v1','','','2023-02-20 21:11:08','2023-02-20 21:11:08','',39,'http://sciences-university.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-02-20 21:23:56','2023-02-20 21:23:56','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>','Second Test Post','','inherit','closed','closed','','12-revision-v1','','','2023-02-20 21:23:56','2023-02-20 21:23:56','',12,'http://sciences-university.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-02-21 01:03:30','2023-02-21 01:03:30','','Weathering With You','','inherit','open','closed','','weathering-with-you','','','2023-02-21 01:03:30','2023-02-21 01:03:30','',1,'http://sciences-university.local/wp-content/uploads/2023/02/Weathering-With-You.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-02-21 01:03:36','2023-02-21 01:03:36','<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-02-21 01:03:36','2023-02-21 01:03:36','',1,'http://sciences-university.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-02-21 01:42:47','2023-02-21 01:42:47','','Blog Post','','inherit','closed','closed','','39-revision-v1','','','2023-02-21 01:42:47','2023-02-21 01:42:47','',39,'http://sciences-university.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-02-21 02:11:39','2023-02-21 02:11:39','','hogwarts','','inherit','open','closed','','hogwarts','','','2023-02-21 02:11:39','2023-02-21 02:11:39','',12,'http://sciences-university.local/wp-content/uploads/2023/02/hogwarts.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-02-21 02:11:46','2023-02-21 02:11:46','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','Second Test Post','','inherit','closed','closed','','12-revision-v1','','','2023-02-21 02:11:46','2023-02-21 02:11:46','',12,'http://sciences-university.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-02-21 02:12:02','2023-02-21 02:12:02','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','Second Test Post','','inherit','closed','closed','','12-revision-v1','','','2023-02-21 02:12:02','2023-02-21 02:12:02','',12,'http://sciences-university.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-02-21 02:13:05','2023-02-21 02:13:05','','gryffindorroom','','inherit','open','closed','','gryffindorroom','','','2023-02-21 02:13:05','2023-02-21 02:13:05','',1,'http://sciences-university.local/wp-content/uploads/2023/02/gryffindorroom.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-02-21 02:13:13','2023-02-21 02:13:13','<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-02-21 02:13:13','2023-02-21 02:13:13','',1,'http://sciences-university.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-02-22 02:27:01','2023-02-22 02:27:01','Lorem ipsum, in graphical and textual context, refers to <b>filler text that is placed in a document or visual presentation</b>. Lorem ipsum is derived from the Latin \"dolorem ipsum\" roughly translated as \"pain itself.\"','Second Post','','trash','open','open','','second-post__trashed','','','2023-02-23 04:53:40','2023-02-23 04:53:40','',0,'http://sciences-university.local/?p=67',0,'post','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-02-22 02:27:01','2023-02-22 02:27:01','trgfthfthfhf','Second Post','','inherit','closed','closed','','67-revision-v1','','','2023-02-22 02:27:01','2023-02-22 02:27:01','',67,'http://sciences-university.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-02-22 03:21:13','2023-02-22 03:21:13','Lorem ipsum, in graphical and textual context, refers to <b>filler text that is placed in a document or visual presentation</b>. Lorem ipsum is derived from the Latin \"dolorem ipsum\" roughly translated as \"pain itself.\"','Second Post','','inherit','closed','closed','','67-revision-v1','','','2023-02-22 03:21:13','2023-02-22 03:21:13','',67,'http://sciences-university.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-02-22 03:24:11','2023-02-22 03:24:11','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Test Post','','publish','open','open','','test-post-2','','','2023-02-24 00:49:04','2023-02-24 00:49:04','',0,'http://sciences-university.local/?p=78',0,'post','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-02-22 03:24:06','2023-02-22 03:24:06','','hogwarts2','','inherit','open','closed','','hogwarts2','','','2023-02-22 03:24:06','2023-02-22 03:24:06','',78,'http://sciences-university.local/wp-content/uploads/2023/02/hogwarts2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-02-22 03:24:11','2023-02-22 03:24:11','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Test Post','','inherit','closed','closed','','78-revision-v1','','','2023-02-22 03:24:11','2023-02-22 03:24:11','',78,'http://sciences-university.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-02-22 03:53:50','2023-02-22 03:53:50','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Post Test','','publish','open','open','','post-test','','','2023-02-23 05:01:49','2023-02-23 05:01:49','',0,'http://sciences-university.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2023-02-22 03:53:50','2023-02-22 03:53:50','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Post Test','','inherit','closed','closed','','85-revision-v1','','','2023-02-22 03:53:50','2023-02-22 03:53:50','',85,'http://sciences-university.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-02-23 00:21:27','2023-02-23 00:21:27','asdasdasd','sadasdd','','trash','open','open','','sadasdd__trashed','','','2023-02-23 04:53:48','2023-02-23 04:53:48','',0,'http://sciences-university.local/sadasdd/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-02-23 00:21:38','2023-02-23 00:21:38','k','kjlkl','','trash','open','open','','kjlkl__trashed','','','2023-02-23 04:53:52','2023-02-23 04:53:52','',0,'http://sciences-university.local/kjlkl/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-02-23 00:21:47','2023-02-23 00:21:47','iljlljk;jl','jilji','','trash','open','open','','jilji__trashed','','','2023-02-23 04:53:56','2023-02-23 04:53:56','',0,'http://sciences-university.local/jilji/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2023-02-23 00:28:03','2023-02-23 00:28:03','opiop','kl','','trash','open','open','','kl__trashed','','','2023-02-23 04:53:58','2023-02-23 04:53:58','',0,'http://sciences-university.local/kl/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-02-23 00:37:20','2023-02-23 00:37:20','fghfhfhfh','frdgthgfdhfdh','','trash','open','open','','frdgthgfdhfdh__trashed','','','2023-02-23 05:02:31','2023-02-23 05:02:31','',0,'http://sciences-university.local/frdgthgfdhfdh/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-02-23 00:37:33','2023-02-23 00:37:33','asasasASS','joren kate','','trash','open','open','','joren-kate__trashed','','','2023-02-23 05:02:38','2023-02-23 05:02:38','',0,'http://sciences-university.local/joren-kate/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-02-23 00:39:17','2023-02-23 00:39:17','asASas','Hello worldsdasdd','','trash','open','open','','hello-worldsdasdd__trashed','','','2023-02-23 05:02:03','2023-02-23 05:02:03','',0,'http://sciences-university.local/hello-worldsdasdd/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,0,'2023-02-23 00:39:34','2023-02-23 00:39:34','asASas','Hello worldsdasdd','','inherit','closed','closed','','93-revision-v1','','','2023-02-23 00:39:34','2023-02-23 00:39:34','',93,'http://sciences-university.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,0,'2023-02-23 00:39:37','2023-02-23 00:39:37','asasasASS','joren kate','','inherit','closed','closed','','92-revision-v1','','','2023-02-23 00:39:37','2023-02-23 00:39:37','',92,'http://sciences-university.local/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,0,'2023-02-23 00:39:40','2023-02-23 00:39:40','fghfhfhfh','frdgthgfdhfdh','','inherit','closed','closed','','91-revision-v1','','','2023-02-23 00:39:40','2023-02-23 00:39:40','',91,'http://sciences-university.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,0,'2023-02-23 00:39:43','2023-02-23 00:39:43','opiop','kl','','inherit','closed','closed','','90-revision-v1','','','2023-02-23 00:39:43','2023-02-23 00:39:43','',90,'http://sciences-university.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,0,'2023-02-23 00:39:51','2023-02-23 00:39:51','iljlljk;jl','jilji','','inherit','closed','closed','','89-revision-v1','','','2023-02-23 00:39:51','2023-02-23 00:39:51','',89,'http://sciences-university.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,0,'2023-02-23 00:39:56','2023-02-23 00:39:56','k','kjlkl','','inherit','closed','closed','','88-revision-v1','','','2023-02-23 00:39:56','2023-02-23 00:39:56','',88,'http://sciences-university.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2023-02-23 00:40:09','2023-02-23 00:40:09','w4eretryryrtutu','Test New Post','','trash','open','open','','test-new-post__trashed','','','2023-02-24 20:54:07','2023-02-24 20:54:07','',0,'http://sciences-university.local/test-new-post/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2023-02-23 00:40:28','2023-02-23 00:40:28','assdfsf','Post New Test','','publish','open','open','','post-new-test','','','2023-02-24 00:49:30','2023-02-24 00:49:30','',0,'http://sciences-university.local/post-new-test/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2023-02-23 00:41:24','2023-02-23 00:41:24','asadasdsfsdf','Test New Post123','','trash','open','open','','test-new-post123__trashed','','','2023-02-23 05:02:28','2023-02-23 05:02:28','',0,'http://sciences-university.local/test-new-post123/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2023-02-23 00:41:39','2023-02-23 00:41:39','swadaeterthgfd','Test New Post1224','','trash','open','open','','test-new-post1224__trashed','','','2023-02-23 05:02:22','2023-02-23 05:02:22','',0,'http://sciences-university.local/test-new-post1224/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2023-02-23 00:42:11','2023-02-23 00:42:11','asasasasAS','Hello worlskddf','','trash','open','open','','hello-worlskddf__trashed','','','2023-02-23 05:01:26','2023-02-23 05:01:26','',0,'http://sciences-university.local/hello-worlskddf/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2023-02-23 00:42:40','2023-02-23 00:42:40','sdasddfghj','sdsfsdfgdfgdfhgfh1','','trash','open','open','','sdsfsdfgdfgdfhgfh1__trashed','','','2023-02-23 05:01:21','2023-02-23 05:01:21','',0,'http://sciences-university.local/sdsfsdfgdfgdfhgfh1/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (106,0,'2023-02-23 00:43:10','2023-02-23 00:43:10','asadasdsfsdf','Test New Post123','','inherit','closed','closed','','102-revision-v1','','','2023-02-23 00:43:10','2023-02-23 00:43:10','',102,'http://sciences-university.local/?p=106',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,0,'2023-02-23 00:43:17','2023-02-23 00:43:17','sdasddfghj','sdsfsdfgdfgdfhgfh1','','inherit','closed','closed','','105-revision-v1','','','2023-02-23 00:43:17','2023-02-23 00:43:17','',105,'http://sciences-university.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,0,'2023-02-23 00:43:30','2023-02-23 00:43:30','asasasasAS','Hello worlskddf','','inherit','closed','closed','','104-revision-v1','','','2023-02-23 00:43:30','2023-02-23 00:43:30','',104,'http://sciences-university.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,0,'2023-02-23 00:43:34','2023-02-23 00:43:34','swadaeterthgfd','Test New Post1224','','inherit','closed','closed','','103-revision-v1','','','2023-02-23 00:43:34','2023-02-23 00:43:34','',103,'http://sciences-university.local/?p=109',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,0,'2023-02-23 00:43:39','2023-02-23 00:43:39','asdasdasd','sadasdd','','inherit','closed','closed','','87-revision-v1','','','2023-02-23 00:43:39','2023-02-23 00:43:39','',87,'http://sciences-university.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,0,'2023-02-23 00:43:44','2023-02-23 00:43:44','w4eretryryrtutu','Test New Post','','inherit','closed','closed','','100-revision-v1','','','2023-02-23 00:43:44','2023-02-23 00:43:44','',100,'http://sciences-university.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2023-02-23 01:10:31','2023-02-23 01:10:31','trrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','Test New Post8','','trash','open','open','','test-new-post8__trashed','','','2023-02-23 04:53:28','2023-02-23 04:53:28','',0,'http://sciences-university.local/test-new-post8/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (114,0,'2023-02-23 01:12:09','2023-02-23 01:12:09','trrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','Test New Post8','','inherit','closed','closed','','113-revision-v1','','','2023-02-23 01:12:09','2023-02-23 01:12:09','',113,'http://sciences-university.local/?p=114',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2023-02-23 01:13:02','2023-02-23 01:13:02','hello sdhdskfjhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk','Test New Post 9','','trash','open','open','','test-new-post-9__trashed','','','2023-02-23 04:53:31','2023-02-23 04:53:31','',0,'http://sciences-university.local/test-new-post-9/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (116,0,'2023-02-23 01:13:21','2023-02-23 01:13:21','hello sdhdskfjhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk','Test New Post 9','','inherit','closed','closed','','115-revision-v1','','','2023-02-23 01:13:21','2023-02-23 01:13:21','',115,'http://sciences-university.local/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (117,0,'2023-02-23 01:13:29','2023-02-23 01:13:29','assdfsf','Post New Test','','inherit','closed','closed','','101-revision-v1','','','2023-02-23 01:13:29','2023-02-23 01:13:29','',101,'http://sciences-university.local/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2023-02-23 01:57:03','2023-02-23 01:57:03','dfsdfsdf','dfsdf','','trash','open','open','','dfsdf__trashed','','','2023-02-23 05:01:18','2023-02-23 05:01:18','',0,'http://sciences-university.local/dfsdf/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (121,0,'2023-02-23 02:15:58','2023-02-23 02:15:58','','Spirited-away-scenery','','inherit','open','closed','','spirited-away-scenery','','','2023-02-23 05:04:56','2023-02-23 05:04:56','',101,'http://sciences-university.local/wp-content/uploads/2023/02/Spirited-away-scenery.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (122,0,'2023-02-23 02:16:16','2023-02-23 02:16:16','dfsdfsdf','dfsdf','','inherit','closed','closed','','119-revision-v1','','','2023-02-23 02:16:16','2023-02-23 02:16:16','',119,'http://sciences-university.local/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2023-02-23 02:18:56','2023-02-23 02:18:56','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:2:\"No\";s:2:\"No\";s:3:\"Yes\";s:3:\"Yes\";}s:13:\"default_value\";s:2:\"No\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Featured Post','featured_post','publish','closed','closed','','field_63f6ccd1ae13d','','','2023-02-23 02:18:56','2023-02-23 02:18:56','',35,'http://sciences-university.local/?post_type=acf-field&p=125',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2023-02-23 05:01:49','2023-02-23 05:01:49','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Post Test','','inherit','closed','closed','','85-revision-v1','','','2023-02-23 05:01:49','2023-02-23 05:01:49','',85,'http://sciences-university.local/?p=129',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2023-02-23 05:03:18','2023-02-23 05:03:18','Hello World this is a post test to create a post.','Blog Post Test','','publish','open','open','','blog-post-test','','','2023-02-25 04:17:30','2023-02-25 04:17:30','',0,'http://sciences-university.local/blog-post-test/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2023-02-23 05:03:41','2023-02-23 05:03:41','Hello World this is a post test to create a post.','Blog Post Test','','inherit','closed','closed','','130-revision-v1','','','2023-02-23 05:03:41','2023-02-23 05:03:41','',130,'http://sciences-university.local/?p=131',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2023-02-23 05:04:56','2023-02-23 05:04:56','assdfsf','Post New Test','','inherit','closed','closed','','101-revision-v1','','','2023-02-23 05:04:56','2023-02-23 05:04:56','',101,'http://sciences-university.local/?p=132',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,0,'2023-02-23 22:12:19','2023-02-23 22:12:19','5yr5yrtyrtyry','(Blog Post)','','trash','open','open','','blog-post__trashed','','','2023-02-23 22:19:35','2023-02-23 22:19:35','',0,'http://sciences-university.local/blog-post/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (134,0,'2023-02-23 22:18:51','2023-02-23 22:18:51','','(Blog Post)','','trash','open','open','','blog-post-2__trashed','','','2023-02-23 22:20:12','2023-02-23 22:20:12','',0,'http://sciences-university.local/blog-post-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (135,0,'2023-02-23 22:19:19','2023-02-23 22:19:19','','(Blog Post)','','trash','open','open','','blog-post-3__trashed','','','2023-02-23 22:20:09','2023-02-23 22:20:09','',0,'http://sciences-university.local/blog-post-3/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (136,0,'2023-02-23 22:19:35','2023-02-23 22:19:35','5yr5yrtyrtyry','(Blog Post)','','inherit','closed','closed','','133-revision-v1','','','2023-02-23 22:19:35','2023-02-23 22:19:35','',133,'http://sciences-university.local/?p=136',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (137,0,'2023-02-23 22:20:09','2023-02-23 22:20:09','','(Blog Post)','','inherit','closed','closed','','135-revision-v1','','','2023-02-23 22:20:09','2023-02-23 22:20:09','',135,'http://sciences-university.local/?p=137',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (138,0,'2023-02-23 22:20:12','2023-02-23 22:20:12','','(Blog Post)','','inherit','closed','closed','','134-revision-v1','','','2023-02-23 22:20:12','2023-02-23 22:20:12','',134,'http://sciences-university.local/?p=138',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2023-02-24 00:48:59','2023-02-24 00:48:59','','hall','','inherit','open','closed','','hall','','','2023-02-24 00:48:59','2023-02-24 00:48:59','',78,'http://sciences-university.local/wp-content/uploads/2023/02/hall.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (141,1,'2023-02-24 00:48:59','2023-02-24 00:48:59','','students','','inherit','open','closed','','students','','','2023-02-24 00:48:59','2023-02-24 00:48:59','',78,'http://sciences-university.local/wp-content/uploads/2023/02/students.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (142,1,'2023-02-24 00:49:04','2023-02-24 00:49:04','Lorem Ipsum is gibberish, but it is rooted in a real language: Latin. The text\'s origins are based on a passage from a piece of classical Latin literature dating back to 45 BC. That means that Lorem Ipsum is more than 2,000 years old! To get specific, Lorem Ipsum comes from sections 1.10.','Test Post','','inherit','closed','closed','','78-revision-v1','','','2023-02-24 00:49:04','2023-02-24 00:49:04','',78,'http://sciences-university.local/?p=142',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2023-02-24 00:49:30','2023-02-24 00:49:30','assdfsf','Post New Test','','inherit','closed','closed','','101-revision-v1','','','2023-02-24 00:49:30','2023-02-24 00:49:30','',101,'http://sciences-university.local/?p=143',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2023-02-24 01:09:58','2023-02-24 01:09:58','Hello everyone','Hogwarts Magic Edited','','publish','open','open','','hogwarts-magic','','','2023-03-02 22:09:23','2023-03-02 22:09:23','',0,'http://sciences-university.local/hogwarts-magic/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2023-02-24 01:09:58','2023-02-24 01:09:58','','Header','','inherit','open','closed','','header','','','2023-02-24 01:09:59','2023-02-24 01:09:59','',144,'http://sciences-university.local/wp-content/uploads/2023/02/Header.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (146,0,'2023-02-24 20:54:52','2023-02-24 20:54:52','This hogwarts school of magic...newly edited','Hogwarts-Edited(New)','','publish','open','open','','hogwarts','','','2023-03-02 21:08:28','2023-03-02 21:08:28','',0,'http://sciences-university.local/hogwarts/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (147,0,'2023-02-25 00:46:32','2023-02-25 00:46:32','This hogwarts school of magic...','Hogwarts','','inherit','closed','closed','','146-revision-v1','','','2023-02-25 00:46:32','2023-02-25 00:46:32','',146,'http://sciences-university.local/?p=147',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (148,0,'2023-02-25 00:58:52','2023-02-25 00:58:52','','Untitled','','inherit','open','closed','','untitled','','','2023-02-25 00:58:52','2023-02-25 00:58:52','',146,'http://sciences-university.local/wp-content/uploads/2023/02/Untitled.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (149,0,'2023-02-25 01:53:53','2023-02-25 01:53:53','This hogwarts school of magic...edited','Hogwarts-Edited','','inherit','closed','closed','','146-revision-v1','','','2023-02-25 01:53:53','2023-02-25 01:53:53','',146,'http://sciences-university.local/?p=149',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (150,0,'2023-02-25 01:53:53','2023-02-25 01:53:53','','Spirited-away-scenery-1','','inherit','open','closed','','spirited-away-scenery-1','','','2023-02-25 01:53:53','2023-02-25 01:53:53','',146,'http://sciences-university.local/wp-content/uploads/2023/02/Spirited-away-scenery-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (151,0,'2023-02-25 02:03:14','2023-02-25 02:03:14','This hogwarts school of magic...newly edited','Hogwarts-Edited(New)','','inherit','closed','closed','','146-revision-v1','','','2023-02-25 02:03:14','2023-02-25 02:03:14','',146,'http://sciences-university.local/?p=151',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"utskushi-gallery\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','My Utskushi Galleries Additional Information','my-utskushi-galleries-additional-information','publish','closed','closed','','group_63f98520d4e32','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',0,'http://sciences-university.local/?post_type=acf-field-group&#038;p=153',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Featured Image','featured_image','publish','closed','closed','','field_63f985f9e1703','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=155',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"Please enter the Artist name here...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Artist Name','artist_name','publish','closed','closed','','field_63f9865ce1704','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=156',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Please enter date here...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Date Created','date_created','publish','closed','closed','','field_63f9866ee1705','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=157',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:46:\"(eg. oil on canvas... or acrylic on canvas...)\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Medium','medium','publish','closed','closed','','field_63f986cce1707','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=158',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2023-02-25 04:02:33','2023-02-25 04:02:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:29:\"Please enter location here...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Art Location','art_location','publish','closed','closed','','field_63f986d8e1708','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=159',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2023-02-25 04:09:22','2023-02-25 04:09:22','The night sky depicted by van Gogh in the Starry Night painting is brimming with whirling clouds, shining stars, and a bright crescent moon. The setting is one that viewers can relate to and van Gogh´s swirling sky directs the viewer´s eye around the painting, with spacing between the stars and the curving contours creating a dot-to-dot effect. These internal elements ensure fluidity and such contours were important for the artist even though they were becoming less significant for other Impressionists. Thus Starry Night´s composition was distinct from the Impressionist technique of the 19th century.','Starry Night','','publish','closed','closed','','starry-night-by-vincent-van-gogh','','','2023-03-03 02:59:47','2023-03-03 02:59:47','',0,'http://sciences-university.local/?post_type=utskushi-gallery&#038;p=160',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2023-02-25 04:07:05','2023-02-25 04:07:05','','Starry-night','','inherit','open','closed','','starry-night','','','2023-02-25 04:07:05','2023-02-25 04:07:05','',160,'http://sciences-university.local/wp-content/uploads/2023/02/Starry-night.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (162,1,'2023-02-25 04:17:30','2023-02-25 04:17:30','Hello World this is a post test to create a post.','Blog Post Test','','inherit','closed','closed','','130-revision-v1','','','2023-02-25 04:17:30','2023-02-25 04:17:30','',130,'http://sciences-university.local/?p=162',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2023-02-28 02:35:07','2023-02-28 02:35:07','','Utskushi Gallery','','trash','closed','closed','','art-gallery__trashed','','','2023-02-28 02:36:41','2023-02-28 02:36:41','',0,'http://sciences-university.local/?page_id=163',0,'page','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2023-02-28 02:35:07','2023-02-28 02:35:07','','Art Gallery','','inherit','closed','closed','','163-revision-v1','','','2023-02-28 02:35:07','2023-02-28 02:35:07','',163,'http://sciences-university.local/?p=164',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2023-02-28 02:35:54','2023-02-28 02:35:54','','Utskushi Gallery','','inherit','closed','closed','','163-revision-v1','','','2023-02-28 02:35:54','2023-02-28 02:35:54','',163,'http://sciences-university.local/?p=165',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2023-02-28 02:37:01','2023-02-28 02:37:01','','Utskushi Gallery','','publish','closed','closed','','galleries','','','2023-03-07 01:47:52','2023-03-07 01:47:52','',0,'http://sciences-university.local/?page_id=166',0,'page','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2023-02-28 02:37:01','2023-02-28 02:37:01','','Utskushi Gallery','','inherit','closed','closed','','166-revision-v1','','','2023-02-28 02:37:01','2023-02-28 02:37:01','',166,'http://sciences-university.local/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2023-03-01 03:03:02','2023-03-01 03:03:02','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Price','price','publish','closed','closed','','field_63fec04bf644c','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=168',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2023-03-01 03:05:19','2023-03-01 03:05:19','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Dimension','dimension','publish','closed','closed','','field_63fec0691dea7','','','2023-03-03 01:04:17','2023-03-03 01:04:17','',153,'http://sciences-university.local/?post_type=acf-field&#038;p=169',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2023-03-01 04:09:17','2023-03-01 04:09:17','','Mona_Lisa','','inherit','open','closed','','mona_lisa','','','2023-03-01 04:09:17','2023-03-01 04:09:17','',0,'http://sciences-university.local/wp-content/uploads/2023/03/Mona_Lisa.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (172,1,'2023-03-01 04:17:27','2023-03-01 04:17:27','Under the Mango Tree (Lot 545) depicts an intimate scene away from the work of harvesting in the field. A brief reprieve from the heat and activity of the day, Amorsolo captures a warm scene that highlights the relationship between family, work and community.','The Fruit pickers harvesting under the Mango Tree','','publish','closed','closed','','the-fruit-pickers-harvesting-under-the-mango-tree-by-fernando-amorsolo','','','2023-03-02 04:24:18','2023-03-02 04:24:18','',0,'http://sciences-university.local/?post_type=utskushi-gallery&#038;p=172',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2023-03-01 04:16:04','2023-03-01 04:16:04','','Fruits pickers at a mango tree','','inherit','open','closed','','fruits-pickers-at-a-mango-tree','','','2023-03-01 04:16:04','2023-03-01 04:16:04','',172,'http://sciences-university.local/wp-content/uploads/2023/03/Fruits-pickers-at-a-mango-tree.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (174,1,'2023-03-01 20:39:04','2023-03-01 20:39:04','Last Supper, also called Lord\'s Supper, in the New Testament, the final meal shared by Jesus and his disciples in an upper room in Jerusalem, the occasion of the institution of the Eucharist.','The Last Supper','','publish','closed','closed','','the-last-supper-by-leonardo-da-vinci','','','2023-03-02 04:23:16','2023-03-02 04:23:16','',0,'http://sciences-university.local/?post_type=utskushi-gallery&#038;p=174',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2023-03-01 20:37:17','2023-03-01 20:37:17','','the-last-supper','','inherit','open','closed','','the-last-supper','','','2023-03-01 20:37:17','2023-03-01 20:37:17','',174,'http://sciences-university.local/wp-content/uploads/2023/03/the-last-supper.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (176,1,'2023-03-01 22:19:35','2023-03-01 22:19:35','Girl before a Mirror is an oil on canvas painting by Pablo Picasso, which he created in 1932. The painting is a portrait of Picasso\'s mistress and muse, Marie-Thérèse Walter, who is depicted standing in front of a mirror looking at her reflection.','Girl before a Mirror','','publish','closed','closed','','girl-before-a-mirror-by-pablo-picassso','','','2023-03-02 04:22:44','2023-03-02 04:22:44','',0,'http://sciences-university.local/?post_type=utskushi-gallery&#038;p=176',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2023-03-01 22:18:27','2023-03-01 22:18:27','','picasso-painting','','inherit','open','closed','','picasso-painting','','','2023-03-01 22:18:27','2023-03-01 22:18:27','',176,'http://sciences-university.local/wp-content/uploads/2023/03/picasso-painting.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (178,1,'2023-03-01 22:25:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-03-01 22:25:13','0000-00-00 00:00:00','',0,'http://sciences-university.local/?post_type=utskushi-gallery&p=178',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2023-03-01 22:25:14','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-03-01 22:25:14','0000-00-00 00:00:00','',0,'http://sciences-university.local/?post_type=utskushi-gallery&p=179',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2023-03-02 21:07:42','2023-03-02 21:07:42','','pink-tree','','inherit','open','closed','','pink-tree','','','2023-03-02 21:07:42','2023-03-02 21:07:42','',0,'http://sciences-university.local/wp-content/uploads/2023/03/pink-tree.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (182,1,'2023-03-02 21:08:28','2023-03-02 21:08:28','','pink-tree-1','','inherit','open','closed','','pink-tree-1','','','2023-03-02 21:08:28','2023-03-02 21:08:28','',146,'http://sciences-university.local/wp-content/uploads/2023/03/pink-tree-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (183,1,'2023-03-02 22:09:23','2023-03-02 22:09:23','Hello everyone','Hogwarts Magic Edited','','inherit','closed','closed','','144-revision-v1','','','2023-03-02 22:09:23','2023-03-02 22:09:23','',144,'http://sciences-university.local/?p=183',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2023-03-02 22:46:38','2023-03-02 22:46:38','','goddess','','inherit','open','closed','','goddess','','','2023-03-02 22:46:38','2023-03-02 22:46:38','',0,'http://sciences-university.local/wp-content/uploads/2023/03/goddess.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (187,1,'2023-03-02 22:54:12','2023-03-02 22:54:12','','Mona_Lisa-1','','inherit','open','closed','','mona_lisa-1','','','2023-03-02 22:54:12','2023-03-02 22:54:12','',0,'http://sciences-university.local/wp-content/uploads/2023/03/Mona_Lisa-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (188,1,'2023-03-02 23:02:24','2023-03-02 23:02:24','The Great Wave off Kanagawa is a woodblock print by Japanese ukiyo-e artist Hokusai, created in late 1831 during the Edo period of Japanese history. The print depicts three boats moving through a storm-tossed sea, with a large wave forming a spiral in the centre and Mount Fuji visible in the background.','The Great Wave off Kanagawa','','publish','closed','closed','','the-great-wave-off-kanagawa','','','2023-03-02 23:02:24','2023-03-02 23:02:24','',0,'http://sciences-university.local/utskushi-gallery/the-great-wave-off-kanagawa/',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2023-03-02 23:02:24','2023-03-02 23:02:24','','Tsunami_by_hokusai_19th_century','','inherit','open','closed','','tsunami_by_hokusai_19th_century','','','2023-03-02 23:02:24','2023-03-02 23:02:24','',188,'http://sciences-university.local/wp-content/uploads/2023/03/Tsunami_by_hokusai_19th_century.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (191,1,'2023-03-02 23:08:37','2023-03-02 23:08:37','The Mona Lisa is a half-length portrait painting by Italian artist Leonardo da Vinci. Considered an archetypal masterpiece of the Italian Renaissance, it has been described as \"the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world\"','Mona Lisa','','publish','closed','closed','','mona-lisa','','','2023-03-03 00:00:22','2023-03-03 00:00:22','',0,'http://sciences-university.local/utskushi-gallery/mona-lisa/',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2023-03-02 23:08:38','2023-03-02 23:08:38','','Mona_Lisa-2','','inherit','open','closed','','mona_lisa-2','','','2023-03-02 23:08:38','2023-03-02 23:08:38','',191,'http://sciences-university.local/wp-content/uploads/2023/03/Mona_Lisa-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (193,1,'2023-03-03 00:53:46','2023-03-03 00:53:46','Goddess of fire and water made by Huta-Chan is amazingly created. ','Fire and water Goddess','','publish','closed','closed','','fire-and-water-goddess','','','2023-03-03 00:53:46','2023-03-03 00:53:46','',0,'http://sciences-university.local/utskushi-gallery/fire-and-water-goddess/',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (194,1,'2023-03-03 00:53:46','2023-03-03 00:53:46','','art-huta','','inherit','open','closed','','art-huta','','','2023-03-03 00:53:46','2023-03-03 00:53:46','',193,'http://sciences-university.local/wp-content/uploads/2023/03/art-huta.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (195,1,'2023-03-03 00:57:54','2023-03-03 00:57:54','Spoliarium was a symbol of “our social, moral, and political life: humanity unredeemed, reason and aspiration in open fight with prejudice, fanaticism, and injustice.”  Basically, Spoliarium is emphasized the violation of human rights towards the colonizers of Spain and Juan Luna expressed his patriotism through it. Moreover, he created such a harmonious relationship between different colors such as between the red color in the center with the shade of green in the dark sides.','Spoliarium','','publish','closed','closed','','spolarium','','','2023-03-03 00:58:16','2023-03-03 00:58:16','',0,'http://sciences-university.local/utskushi-gallery/spolarium/',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (196,1,'2023-03-03 00:57:54','2023-03-03 00:57:54','','spoliarium-by-juan-luna-famous-art-handmade-oil-painting-on-canvas','','inherit','open','closed','','spoliarium-by-juan-luna-famous-art-handmade-oil-painting-on-canvas','','','2023-03-03 00:57:54','2023-03-03 00:57:54','',195,'http://sciences-university.local/wp-content/uploads/2023/03/spoliarium-by-juan-luna-famous-art-handmade-oil-painting-on-canvas.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (197,1,'2023-03-03 02:59:20','2023-03-03 02:59:20','','starry-night','','inherit','open','closed','','starry-night-2','','','2023-03-03 02:59:20','2023-03-03 02:59:20','',160,'http://sciences-university.local/wp-content/uploads/2023/03/starry-night.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (198,1,'2023-03-03 02:59:47','2023-03-03 02:59:47','','starry-night-van-gogh','','inherit','open','closed','','starry-night-van-gogh','','','2023-03-03 02:59:47','2023-03-03 02:59:47','',160,'http://sciences-university.local/wp-content/uploads/2023/03/starry-night-van-gogh.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (199,1,'2023-03-03 03:19:34','2023-03-03 03:19:34','The sunflower paintings had a special significance for Van Gogh: they communicated \'gratitude\', he wrote. He hung the first two in the room of his friend, the painter Paul Gauguin, who came to live with him for a while in the Yellow House.','Sunflower','','publish','closed','closed','','sunflower','','','2023-03-03 03:19:34','2023-03-03 03:19:34','',0,'http://sciences-university.local/utskushi-gallery/sunflower/',0,'utskushi-gallery','',0);
INSERT INTO `wp_posts` VALUES (200,1,'2023-03-03 03:19:34','2023-03-03 03:19:34','','sunflower','','inherit','open','closed','','sunflower-2','','','2023-03-03 03:19:34','2023-03-03 03:19:34','',199,'http://sciences-university.local/wp-content/uploads/2023/03/sunflower.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (201,1,'2023-03-07 01:33:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-03-07 01:33:13','0000-00-00 00:00:00','',0,'http://sciences-university.local/?p=201',0,'post','',0);
INSERT INTO `wp_posts` VALUES (203,0,'2023-03-07 23:06:16','2023-03-07 23:06:16','','pink-tree-2','','inherit','open','closed','','pink-tree-2','','','2023-03-07 23:06:17','2023-03-07 23:06:17','',0,'http://sciences-university.local/wp-content/uploads/2023/03/pink-tree-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (205,0,'2023-03-07 23:10:46','2023-03-07 23:10:46','','pink-tree-3','','inherit','open','closed','','pink-tree-3','','','2023-03-07 23:10:46','2023-03-07 23:10:46','',0,'http://sciences-university.local/wp-content/uploads/2023/03/pink-tree-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (207,0,'2023-03-07 23:13:14','2023-03-07 23:13:14','','Palayan','','inherit','open','closed','','palayan','','','2023-03-07 23:13:14','2023-03-07 23:13:14','',0,'http://sciences-university.local/wp-content/uploads/2023/03/Palayan.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (209,0,'2023-03-07 23:14:23','2023-03-07 23:14:23','','van-gogh-paintings','','inherit','open','closed','','van-gogh-paintings','','','2023-03-07 23:14:23','2023-03-07 23:14:23','',0,'http://sciences-university.local/wp-content/uploads/2023/03/van-gogh-paintings.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (211,0,'2023-03-07 23:43:04','2023-03-07 23:43:04','','pink-tree-4','','inherit','open','closed','','pink-tree-4','','','2023-03-07 23:43:04','2023-03-07 23:43:04','',0,'http://sciences-university.local/wp-content/uploads/2023/03/pink-tree-4.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,1,0);
INSERT INTO `wp_term_relationships` VALUES (67,1,0);
INSERT INTO `wp_term_relationships` VALUES (78,1,0);
INSERT INTO `wp_term_relationships` VALUES (85,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,1,0);
INSERT INTO `wp_term_relationships` VALUES (88,1,0);
INSERT INTO `wp_term_relationships` VALUES (89,1,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
INSERT INTO `wp_term_relationships` VALUES (91,1,0);
INSERT INTO `wp_term_relationships` VALUES (92,1,0);
INSERT INTO `wp_term_relationships` VALUES (93,1,0);
INSERT INTO `wp_term_relationships` VALUES (100,1,0);
INSERT INTO `wp_term_relationships` VALUES (101,1,0);
INSERT INTO `wp_term_relationships` VALUES (102,1,0);
INSERT INTO `wp_term_relationships` VALUES (103,1,0);
INSERT INTO `wp_term_relationships` VALUES (104,1,0);
INSERT INTO `wp_term_relationships` VALUES (105,1,0);
INSERT INTO `wp_term_relationships` VALUES (113,1,0);
INSERT INTO `wp_term_relationships` VALUES (115,1,0);
INSERT INTO `wp_term_relationships` VALUES (119,1,0);
INSERT INTO `wp_term_relationships` VALUES (130,1,0);
INSERT INTO `wp_term_relationships` VALUES (133,1,0);
INSERT INTO `wp_term_relationships` VALUES (134,1,0);
INSERT INTO `wp_term_relationships` VALUES (135,1,0);
INSERT INTO `wp_term_relationships` VALUES (144,1,0);
INSERT INTO `wp_term_relationships` VALUES (146,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jorenkate');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"f32c2ee612a87c035a4064cfcef65ccd8742bb76870de002cfee39387ec85f02\";a:4:{s:10:\"expiration\";i:1678325591;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.63\";s:5:\"login\";i:1678152791;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','201');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-02-17T03:28:51.051Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','editor=tinymce&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1677029562');
INSERT INTO `wp_usermeta` VALUES (21,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jorenkate','$P$BaAZ32aHB.NlS1Yw8v.5ZYarIiO6Ot0','jorenkate','jorenkate.apiladas@ctu.edu.ph','http://sciences-university.local','2023-02-16 21:09:32','',0,'jorenkate');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 12:49:22
