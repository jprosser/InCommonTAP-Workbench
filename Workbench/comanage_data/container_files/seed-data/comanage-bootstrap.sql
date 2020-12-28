USE registry;

-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: registry
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `cm_ad_hoc_attributes`
--

DROP TABLE IF EXISTS `cm_ad_hoc_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ad_hoc_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `source_ad_hoc_attribute_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ad_hoc_attribute_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ad_hoc_attributes_i1` (`co_person_role_id`),
  KEY `cm_ad_hoc_attributes_i2` (`org_identity_id`),
  KEY `cm_ad_hoc_attributes_i3` (`tag`),
  KEY `cm_ad_hoc_attributes_i4` (`ad_hoc_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ad_hoc_attributes`
--

LOCK TABLES `cm_ad_hoc_attributes` WRITE;
/*!40000 ALTER TABLE `cm_ad_hoc_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ad_hoc_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_addresses`
--

DROP TABLE IF EXISTS `cm_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` text COLLATE utf8_bin,
  `room` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `locality` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `postal_code` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `source_address_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_addresses_i1` (`co_person_role_id`),
  KEY `cm_addresses_i2` (`org_identity_id`),
  KEY `cm_addresses_i3` (`address_id`),
  KEY `cm_addresses_i4` (`source_address_id`),
  KEY `cm_addresses_i5` (`co_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_addresses`
--

LOCK TABLES `cm_addresses` WRITE;
/*!40000 ALTER TABLE `cm_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_api_users`
--

DROP TABLE IF EXISTS `cm_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `privileged` tinyint(1) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `remote_ip` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_api_users_i1` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_api_users`
--

LOCK TABLES `cm_api_users` WRITE;
/*!40000 ALTER TABLE `cm_api_users` DISABLE KEYS */;
INSERT INTO `cm_api_users` VALUES (1,3,1,'A','co_3.api','56e1732937ad3a57fbf4322fa05d399d4823409b',NULL,NULL,'','2020-12-28 01:21:31','2020-12-28 01:21:39');
/*!40000 ALTER TABLE `cm_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_attribute_enumerations`
--

DROP TABLE IF EXISTS `cm_attribute_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_attribute_enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) COLLATE utf8_bin NOT NULL,
  `optvalue` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `attribute_enumeration_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_attribute_enumerations_i1` (`co_id`,`attribute`,`status`),
  KEY `cm_attribute_enumerations_i2` (`attribute_enumeration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_attribute_enumerations`
--

LOCK TABLES `cm_attribute_enumerations` WRITE;
/*!40000 ALTER TABLE `cm_attribute_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_attribute_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authentication_events`
--

DROP TABLE IF EXISTS `cm_authentication_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authentication_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticated_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `authentication_event` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `remote_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_authentication_events_i1` (`authenticated_identifier`(255))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authentication_events`
--

LOCK TABLES `cm_authentication_events` WRITE;
/*!40000 ALTER TABLE `cm_authentication_events` DISABLE KEYS */;
INSERT INTO `cm_authentication_events` VALUES (1,'banderson','IN','172.18.0.10','2020-12-05 02:18:37','2020-12-05 02:18:37'),(2,'banderson','IN','172.18.0.10','2020-12-05 04:21:27','2020-12-05 04:21:27'),(3,'banderson','IN','172.18.0.7','2020-12-23 20:32:46','2020-12-23 20:32:46'),(4,'banderson','IN','172.18.0.7','2020-12-24 01:22:04','2020-12-24 01:22:04'),(5,'banderson','IN','172.18.0.7','2020-12-24 01:52:46','2020-12-24 01:52:46'),(6,'banderson','IN','172.18.0.7','2020-12-27 13:49:21','2020-12-27 13:49:21'),(7,'banderson','IN','172.18.0.7','2020-12-28 01:11:18','2020-12-28 01:11:18');
/*!40000 ALTER TABLE `cm_authentication_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authenticator_statuses`
--

DROP TABLE IF EXISTS `cm_authenticator_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authenticator_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_authenticator_statuses_i1` (`authenticator_id`,`co_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authenticator_statuses`
--

LOCK TABLES `cm_authenticator_statuses` WRITE;
/*!40000 ALTER TABLE `cm_authenticator_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_authenticator_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authenticators`
--

DROP TABLE IF EXISTS `cm_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_authenticators_i1` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authenticators`
--

LOCK TABLES `cm_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_clusters`
--

DROP TABLE IF EXISTS `cm_clusters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_clusters_i1` (`co_id`),
  KEY `cm_clusters_i2` (`cluster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_clusters`
--

LOCK TABLES `cm_clusters` WRITE;
/*!40000 ALTER TABLE `cm_clusters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_clusters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cmp_enrollment_attributes`
--

DROP TABLE IF EXISTS `cm_cmp_enrollment_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cmp_enrollment_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmp_enrollment_configuration_id` int(11) NOT NULL,
  `attribute` varchar(80) COLLATE utf8_bin NOT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `env_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `ldap_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `saml_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_cmp_enrollment_attributes_i2` (`cmp_enrollment_configuration_id`,`attribute`,`type`),
  KEY `cm_cmp_enrollment_attributes_i1` (`cmp_enrollment_configuration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cmp_enrollment_attributes`
--

LOCK TABLES `cm_cmp_enrollment_attributes` WRITE;
/*!40000 ALTER TABLE `cm_cmp_enrollment_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_cmp_enrollment_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cmp_enrollment_configurations`
--

DROP TABLE IF EXISTS `cm_cmp_enrollment_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cmp_enrollment_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `attrs_from_ldap` tinyint(1) DEFAULT NULL,
  `attrs_from_saml` tinyint(1) DEFAULT NULL,
  `attrs_from_env` tinyint(1) DEFAULT NULL,
  `attrs_from_coef` tinyint(1) DEFAULT NULL,
  `pool_org_identities` tinyint(1) DEFAULT NULL,
  `eds_help_url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `eds_preferred_idps` text COLLATE utf8_bin,
  `eds_hidden_idps` text COLLATE utf8_bin,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cmp_enrollment_configurations`
--

LOCK TABLES `cm_cmp_enrollment_configurations` WRITE;
/*!40000 ALTER TABLE `cm_cmp_enrollment_configurations` DISABLE KEYS */;
INSERT INTO `cm_cmp_enrollment_configurations` VALUES (1,'CMP Enrollment Configuration',0,0,0,1,0,NULL,NULL,NULL,'A','2020-12-05 02:15:59','2020-12-05 02:15:59');
/*!40000 ALTER TABLE `cm_cmp_enrollment_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_dashboard_widgets`
--

DROP TABLE IF EXISTS `cm_co_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_dashboard_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_dashboard_widgets_i2` (`co_dashboard_widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_dashboard_widgets`
--

LOCK TABLES `cm_co_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_dashboards`
--

DROP TABLE IF EXISTS `cm_co_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `header_text` text COLLATE utf8_bin,
  `footer_text` text COLLATE utf8_bin,
  `visibility` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `visibility_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_dashboard_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_dashboards_i1` (`co_id`),
  KEY `cm_co_dashboards_i2` (`co_dashboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_dashboards`
--

LOCK TABLES `cm_co_dashboards` WRITE;
/*!40000 ALTER TABLE `cm_co_dashboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_departments`
--

DROP TABLE IF EXISTS `cm_co_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `introduction` text COLLATE utf8_bin,
  `leadership_co_group_id` int(11) DEFAULT NULL,
  `administrative_co_group_id` int(11) DEFAULT NULL,
  `support_co_group_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_departments_i1` (`co_id`),
  KEY `cm_co_departments_i2` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_departments`
--

LOCK TABLES `cm_co_departments` WRITE;
/*!40000 ALTER TABLE `cm_co_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_email_lists`
--

DROP TABLE IF EXISTS `cm_co_email_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_email_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `admins_co_group_id` int(11) DEFAULT NULL,
  `members_co_group_id` int(11) DEFAULT NULL,
  `moderators_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_email_lists_i1` (`co_id`),
  KEY `cm_co_email_lists_i2` (`co_email_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_email_lists`
--

LOCK TABLES `cm_co_email_lists` WRITE;
/*!40000 ALTER TABLE `cm_co_email_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_email_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_attribute_defaults`
--

DROP TABLE IF EXISTS `cm_co_enrollment_attribute_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_attribute_defaults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_attribute_id` int(11) NOT NULL,
  `affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `modifiable` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_attribute_default_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_attribute_defaults_i1` (`co_enrollment_attribute_id`),
  KEY `cm_co_enrollment_attribute_defaults_i2` (`co_enrollment_attribute_default_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attribute_defaults`
--

LOCK TABLES `cm_co_enrollment_attribute_defaults` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attribute_defaults` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_attribute_defaults` VALUES (1,1,NULL,'',1,'2020-12-05 02:45:35','2020-12-05 02:45:35',NULL,0,0,'banderson'),(2,30,NULL,'affiliate',0,'2020-12-28 01:19:23','2020-12-28 01:19:23',NULL,0,0,'banderson');
/*!40000 ALTER TABLE `cm_co_enrollment_attribute_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_attributes`
--

DROP TABLE IF EXISTS `cm_co_enrollment_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `label` varchar(80) COLLATE utf8_bin NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `attribute` varchar(80) COLLATE utf8_bin NOT NULL,
  `required` int(11) DEFAULT NULL,
  `required_fields` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `copy_to_coperson` tinyint(1) DEFAULT NULL,
  `ignore_authoritative` tinyint(1) DEFAULT NULL,
  `default_env` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `language` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_attribute_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_attributes_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_attributes_i2` (`co_enrollment_attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attributes`
--

LOCK TABLES `cm_co_enrollment_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attributes` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_attributes` VALUES (1,1,'Untitled','','r:affiliation',1,'',1,0,0,NULL,'',0,'','2020-12-05 02:45:35','2020-12-05 02:45:35',NULL,0,0,'banderson'),(2,2,'Affiliation',NULL,'r:affiliation',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(3,2,'Title',NULL,'r:title',0,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(4,2,'Sponsor',NULL,'r:sponsor_co_person_id',0,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(5,2,'Valid From',NULL,'r:valid_from',0,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(6,2,'Valid Through',NULL,'r:valid_through',0,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(7,3,'Name',NULL,'i:name:official',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(8,3,'Email',NULL,'i:email_address:official',1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(9,3,'Name (Preferred)',NULL,'p:name:official',1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(10,3,'Affiliation',NULL,'r:affiliation',1,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(11,3,'Organization',NULL,'o:o',0,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(12,3,'Title',NULL,'r:title',0,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(13,3,'Sponsor',NULL,'r:sponsor_co_person_id',0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(14,3,'Valid From',NULL,'r:valid_from',0,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(15,3,'Valid Through',NULL,'r:valid_through',0,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(16,3,'Number (Mobile)',NULL,'m:telephone_number:mobile',0,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(17,4,'Name',NULL,'i:name:official',1,NULL,1,NULL,1,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(18,4,'Email',NULL,'i:email_address:official',1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(19,4,'Affiliation',NULL,'r:affiliation',1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(20,4,'Organization',NULL,'o:o',0,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(21,4,'Title',NULL,'r:title',0,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(22,5,'Name',NULL,'i:name:official',1,NULL,1,NULL,1,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(23,5,'Email',NULL,'i:email_address:official',1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(24,5,'Affiliation',NULL,'r:affiliation',1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(25,5,'Organization',NULL,'o:o',0,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(26,6,'Name',NULL,'i:name:official',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(27,6,'Email',NULL,'i:email_address:official',1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(28,7,'Name',NULL,'i:name:official',1,NULL,1,NULL,1,NULL,NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:16:17',NULL,0,0,'banderson'),(29,7,'Email',NULL,'i:email_address:official',1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:16:17',NULL,0,0,'banderson'),(30,7,'Affiliation','','r:affiliation',0,'',3,1,0,NULL,'',0,'','2020-12-28 01:16:17','2020-12-28 01:19:23',NULL,1,0,'banderson'),(31,7,'Organization',NULL,'o:o',0,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:16:17',NULL,0,0,'banderson'),(32,7,'Affiliation',NULL,'r:affiliation',1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:16:17',30,0,0,'banderson');
/*!40000 ALTER TABLE `cm_co_enrollment_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_authenticators`
--

DROP TABLE IF EXISTS `cm_co_enrollment_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `authenticator_id` int(11) NOT NULL,
  `required` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_authenticator_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_authenticators_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_authenticators_i2` (`co_enrollment_authenticator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_authenticators`
--

LOCK TABLES `cm_co_enrollment_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_clusters`
--

DROP TABLE IF EXISTS `cm_co_enrollment_clusters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_cluster_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_clusters_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_clusters_i2` (`cluster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_clusters`
--

LOCK TABLES `cm_co_enrollment_clusters` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_clusters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_clusters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_flows`
--

DROP TABLE IF EXISTS `cm_co_enrollment_flows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_flows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `co_id` int(11) NOT NULL,
  `authz_level` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `authz_cou_id` int(11) DEFAULT NULL,
  `authz_co_group_id` int(11) DEFAULT NULL,
  `my_identity_shortcut` tinyint(1) DEFAULT NULL,
  `match_policy` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `approval_required` tinyint(1) DEFAULT NULL,
  `approver_co_group_id` int(11) DEFAULT NULL,
  `verify_email` tinyint(1) DEFAULT NULL,
  `email_verification_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `invitation_validity` int(11) DEFAULT NULL,
  `require_authn` tinyint(1) DEFAULT NULL,
  `notification_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `notify_from` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `verification_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `verification_body` text COLLATE utf8_bin,
  `verification_template_id` int(11) DEFAULT NULL,
  `notify_on_approval` tinyint(1) DEFAULT NULL,
  `approval_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `approval_body` text COLLATE utf8_bin,
  `approval_template_id` int(11) DEFAULT NULL,
  `denial_template_id` int(11) DEFAULT NULL,
  `notify_on_finalize` tinyint(1) DEFAULT NULL,
  `finalization_template_id` int(11) DEFAULT NULL,
  `introduction_text` text COLLATE utf8_bin,
  `conclusion_text` text COLLATE utf8_bin,
  `t_and_c_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `redirect_on_submit` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `redirect_on_confirm` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `redirect_on_finalize` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `return_url_allowlist` text COLLATE utf8_bin,
  `ignore_authoritative` tinyint(1) DEFAULT NULL,
  `duplicate_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `establish_authenticators` tinyint(1) DEFAULT NULL,
  `establish_cluster_accounts` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_flow_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_flows_i1` (`co_id`),
  KEY `cm_co_enrollment_flows_i2` (`co_id`,`name`),
  KEY `cm_co_enrollment_flows_i3` (`status`),
  KEY `cm_co_enrollment_flows_i4` (`co_enrollment_flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_flows`
--

LOCK TABLES `cm_co_enrollment_flows` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_flows` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_flows` VALUES (1,'Untitled',2,'A',NULL,NULL,0,'A',0,NULL,NULL,'X',1440,0,NULL,'A','','Invitation to join (@CO_NAME)','You have been invited to join (@CO_NAME).\r\nPlease click the link below to accept or decline.\r\n\r\n(@INVITE_URL)',NULL,0,'Petition to join (@CO_NAME) has been approved','Your petition to join (@CO_NAME) as been approved. You may now log in to the platform.',NULL,NULL,0,NULL,'','','EC','','','','',NULL,'D',NULL,NULL,NULL,'2020-12-05 02:45:29','2020-12-05 02:45:29',NULL,0,0,'banderson'),(2,'Additional Role (Template)',3,'A',NULL,NULL,NULL,'P',0,NULL,NULL,'X',NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(3,'Conscription With Approval (Template)',3,'A',NULL,NULL,NULL,'A',1,NULL,NULL,'X',NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(4,'Invitation (Template)',3,'A',NULL,NULL,NULL,'N',0,NULL,NULL,'R',NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(5,'Self Signup With Approval (Template)',3,'N',NULL,NULL,NULL,'N',1,NULL,NULL,'R',NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(6,'Account Linking (Template)',3,'CP',NULL,NULL,NULL,'S',0,NULL,NULL,'R',NULL,1,NULL,'T',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'X',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2020-12-28 01:15:56','2020-12-28 01:15:56',NULL,0,0,'banderson'),(7,'Self Signup (CSP Use Case)',3,'N',NULL,NULL,0,'N',0,NULL,NULL,'R',1440,0,NULL,'A','noreply@workbench.incommon.org','Invitation to join (@CO_NAME) - CSP Workbench','You have been invited to join (@CO_NAME).\r\nPlease click the link below to accept or decline.\r\n\r\n(@INVITE_URL)',NULL,1,'Petition to join (@CO_NAME) has been approved','Your petition to join (@CO_NAME) as been approved. You may now log in to the platform.',NULL,NULL,0,NULL,'','','IC','','','','',NULL,'D',NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:18:50',NULL,1,0,'banderson'),(8,'Copy of Self Signup With Approval (Template)',3,'N',NULL,NULL,NULL,'N',1,NULL,NULL,'R',NULL,NULL,NULL,'T',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-28 01:16:17','2020-12-28 01:16:17',7,0,0,'banderson');
/*!40000 ALTER TABLE `cm_co_enrollment_flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_sources`
--

DROP TABLE IF EXISTS `cm_co_enrollment_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `org_identity_source_id` int(11) NOT NULL,
  `org_identity_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `verify_family_name` tinyint(1) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_source_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_sources_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_sources_i2` (`co_enrollment_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_sources`
--

LOCK TABLES `cm_co_enrollment_sources` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_expiration_counts`
--

DROP TABLE IF EXISTS `cm_co_expiration_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_expiration_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_expiration_policy_id` int(11) NOT NULL,
  `co_person_role_id` int(11) NOT NULL,
  `expiration_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_expiration_count_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_expiration_counts_i1` (`co_expiration_policy_id`,`co_person_role_id`),
  KEY `cm_co_expiration_counts_i2` (`co_expiration_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_expiration_counts`
--

LOCK TABLES `cm_co_expiration_counts` WRITE;
/*!40000 ALTER TABLE `cm_co_expiration_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_expiration_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_expiration_policies`
--

DROP TABLE IF EXISTS `cm_co_expiration_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_expiration_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `cond_cou_id` int(11) DEFAULT NULL,
  `cond_affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `cond_before_expiry` int(11) DEFAULT NULL,
  `cond_after_expiry` int(11) DEFAULT NULL,
  `cond_count` int(11) DEFAULT NULL,
  `cond_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `cond_sponsor_invalid` tinyint(1) DEFAULT NULL,
  `act_affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `act_clear_expiry` tinyint(1) DEFAULT NULL,
  `act_cou_id` int(11) DEFAULT NULL,
  `act_notify_co_admin` tinyint(1) DEFAULT NULL,
  `act_notify_cou_admin` tinyint(1) DEFAULT NULL,
  `act_notify_co_group_id` int(11) DEFAULT NULL,
  `act_notify_co_person` tinyint(1) DEFAULT NULL,
  `act_notify_sponsor` tinyint(1) DEFAULT NULL,
  `act_notification_template_id` int(11) DEFAULT NULL,
  `act_notification_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `act_notification_body` text COLLATE utf8_bin,
  `act_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_expiration_policies_i1` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_expiration_policies`
--

LOCK TABLES `cm_co_expiration_policies` WRITE;
/*!40000 ALTER TABLE `cm_co_expiration_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_expiration_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_extended_attributes`
--

DROP TABLE IF EXISTS `cm_co_extended_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_extended_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `indx` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_extended_attributes_i1` (`co_id`,`name`),
  KEY `cm_co_extended_attributes_i2` (`co_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_extended_attributes`
--

LOCK TABLES `cm_co_extended_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_extended_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_extended_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_extended_types`
--

DROP TABLE IF EXISTS `cm_co_extended_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_extended_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `attribute` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `edupersonaffiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_extended_types_i1` (`co_id`,`attribute`),
  KEY `cm_co_extended_types_i2` (`co_id`,`attribute`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_extended_types`
--

LOCK TABLES `cm_co_extended_types` WRITE;
/*!40000 ALTER TABLE `cm_co_extended_types` DISABLE KEYS */;
INSERT INTO `cm_co_extended_types` VALUES (1,1,'Address.type','campus','Campus',NULL,'A'),(2,1,'Address.type','home','Home',NULL,'A'),(3,1,'Address.type','office','Office',NULL,'A'),(4,1,'Address.type','postal','Postal',NULL,'A'),(5,1,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(6,1,'CoPersonRole.affiliation','student','Student',NULL,'A'),(7,1,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(8,1,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(9,1,'CoPersonRole.affiliation','member','Member',NULL,'A'),(10,1,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(11,1,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(12,1,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(13,1,'EmailAddress.type','delivery','Delivery',NULL,'A'),(14,1,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(15,1,'EmailAddress.type','list','Mailing List',NULL,'A'),(16,1,'EmailAddress.type','official','Official',NULL,'A'),(17,1,'EmailAddress.type','personal','Personal',NULL,'A'),(18,1,'EmailAddress.type','preferred','Preferred',NULL,'A'),(19,1,'EmailAddress.type','recovery','Recovery',NULL,'A'),(20,1,'Identifier.type','badge','Badge',NULL,'A'),(21,1,'Identifier.type','enterprise','Enterprise',NULL,'A'),(22,1,'Identifier.type','eppn','ePPN',NULL,'A'),(23,1,'Identifier.type','eptid','ePTID',NULL,'A'),(24,1,'Identifier.type','epuid','ePUID',NULL,'A'),(25,1,'Identifier.type','mail','Mail',NULL,'A'),(26,1,'Identifier.type','national','National',NULL,'A'),(27,1,'Identifier.type','network','Network',NULL,'A'),(28,1,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(29,1,'Identifier.type','openid','OpenID',NULL,'A'),(30,1,'Identifier.type','orcid','ORCID iD',NULL,'A'),(31,1,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(32,1,'Identifier.type','reference','Match Reference',NULL,'A'),(33,1,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(34,1,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(35,1,'Identifier.type','sorid','System of Record ID',NULL,'A'),(36,1,'Identifier.type','uid','UID',NULL,'A'),(37,1,'Name.type','alternate','Alternate',NULL,'A'),(38,1,'Name.type','author','Author',NULL,'A'),(39,1,'Name.type','fka','FKA',NULL,'A'),(40,1,'Name.type','official','Official',NULL,'A'),(41,1,'Name.type','preferred','Preferred',NULL,'A'),(42,1,'TelephoneNumber.type','campus','Campus',NULL,'A'),(43,1,'TelephoneNumber.type','fax','Fax',NULL,'A'),(44,1,'TelephoneNumber.type','home','Home',NULL,'A'),(45,1,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(46,1,'TelephoneNumber.type','office','Office',NULL,'A'),(47,1,'Url.type','official','Official',NULL,'A'),(48,1,'Url.type','personal','Personal',NULL,'A'),(49,1,'CoDepartment.type','vo','VO',NULL,'A'),(50,1,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(51,1,'CoDepartment.type','department','Department',NULL,'A'),(52,2,'Address.type','campus','Campus',NULL,'A'),(53,2,'Address.type','home','Home',NULL,'A'),(54,2,'Address.type','office','Office',NULL,'A'),(55,2,'Address.type','postal','Postal',NULL,'A'),(56,2,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(57,2,'CoPersonRole.affiliation','student','Student',NULL,'A'),(58,2,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(59,2,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(60,2,'CoPersonRole.affiliation','member','Member',NULL,'A'),(61,2,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(62,2,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(63,2,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(64,2,'EmailAddress.type','delivery','Delivery',NULL,'A'),(65,2,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(66,2,'EmailAddress.type','list','Mailing List',NULL,'A'),(67,2,'EmailAddress.type','official','Official',NULL,'A'),(68,2,'EmailAddress.type','personal','Personal',NULL,'A'),(69,2,'EmailAddress.type','preferred','Preferred',NULL,'A'),(70,2,'EmailAddress.type','recovery','Recovery',NULL,'A'),(71,2,'Identifier.type','badge','Badge',NULL,'A'),(72,2,'Identifier.type','enterprise','Enterprise',NULL,'A'),(73,2,'Identifier.type','eppn','ePPN',NULL,'A'),(74,2,'Identifier.type','eptid','ePTID',NULL,'A'),(75,2,'Identifier.type','epuid','ePUID',NULL,'A'),(76,2,'Identifier.type','mail','Mail',NULL,'A'),(77,2,'Identifier.type','national','National',NULL,'A'),(78,2,'Identifier.type','network','Network',NULL,'A'),(79,2,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(80,2,'Identifier.type','openid','OpenID',NULL,'A'),(81,2,'Identifier.type','orcid','ORCID iD',NULL,'A'),(82,2,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(83,2,'Identifier.type','reference','Match Reference',NULL,'A'),(84,2,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(85,2,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(86,2,'Identifier.type','sorid','System of Record ID',NULL,'A'),(87,2,'Identifier.type','uid','UID',NULL,'A'),(88,2,'Name.type','alternate','Alternate',NULL,'A'),(89,2,'Name.type','author','Author',NULL,'A'),(90,2,'Name.type','fka','FKA',NULL,'A'),(91,2,'Name.type','official','Official',NULL,'A'),(92,2,'Name.type','preferred','Preferred',NULL,'A'),(93,2,'TelephoneNumber.type','campus','Campus',NULL,'A'),(94,2,'TelephoneNumber.type','fax','Fax',NULL,'A'),(95,2,'TelephoneNumber.type','home','Home',NULL,'A'),(96,2,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(97,2,'TelephoneNumber.type','office','Office',NULL,'A'),(98,2,'Url.type','official','Official',NULL,'A'),(99,2,'Url.type','personal','Personal',NULL,'A'),(100,2,'CoDepartment.type','vo','VO',NULL,'A'),(101,2,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(102,2,'CoDepartment.type','department','Department',NULL,'A'),(103,3,'Address.type','campus','Campus',NULL,'A'),(104,3,'Address.type','home','Home',NULL,'A'),(105,3,'Address.type','office','Office',NULL,'A'),(106,3,'Address.type','postal','Postal',NULL,'A'),(107,3,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(108,3,'CoPersonRole.affiliation','student','Student',NULL,'A'),(109,3,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(110,3,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(111,3,'CoPersonRole.affiliation','member','Member',NULL,'A'),(112,3,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(113,3,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(114,3,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(115,3,'EmailAddress.type','delivery','Delivery',NULL,'A'),(116,3,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(117,3,'EmailAddress.type','list','Mailing List',NULL,'A'),(118,3,'EmailAddress.type','official','Official',NULL,'A'),(119,3,'EmailAddress.type','personal','Personal',NULL,'A'),(120,3,'EmailAddress.type','preferred','Preferred',NULL,'A'),(121,3,'EmailAddress.type','recovery','Recovery',NULL,'A'),(122,3,'Identifier.type','badge','Badge',NULL,'A'),(123,3,'Identifier.type','enterprise','Enterprise',NULL,'A'),(124,3,'Identifier.type','eppn','ePPN',NULL,'A'),(125,3,'Identifier.type','eptid','ePTID',NULL,'A'),(126,3,'Identifier.type','epuid','ePUID',NULL,'A'),(127,3,'Identifier.type','mail','Mail',NULL,'A'),(128,3,'Identifier.type','national','National',NULL,'A'),(129,3,'Identifier.type','network','Network',NULL,'A'),(130,3,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(131,3,'Identifier.type','openid','OpenID',NULL,'A'),(132,3,'Identifier.type','orcid','ORCID iD',NULL,'A'),(133,3,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(134,3,'Identifier.type','reference','Match Reference',NULL,'A'),(135,3,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(136,3,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(137,3,'Identifier.type','sorid','System of Record ID',NULL,'A'),(138,3,'Identifier.type','uid','UID',NULL,'A'),(139,3,'Name.type','alternate','Alternate',NULL,'A'),(140,3,'Name.type','author','Author',NULL,'A'),(141,3,'Name.type','fka','FKA',NULL,'A'),(142,3,'Name.type','official','Official',NULL,'A'),(143,3,'Name.type','preferred','Preferred',NULL,'A'),(144,3,'TelephoneNumber.type','campus','Campus',NULL,'A'),(145,3,'TelephoneNumber.type','fax','Fax',NULL,'A'),(146,3,'TelephoneNumber.type','home','Home',NULL,'A'),(147,3,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(148,3,'TelephoneNumber.type','office','Office',NULL,'A'),(149,3,'Url.type','official','Official',NULL,'A'),(150,3,'Url.type','personal','Personal',NULL,'A'),(151,3,'CoDepartment.type','vo','VO',NULL,'A'),(152,3,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(153,3,'CoDepartment.type','department','Department',NULL,'A'),(154,3,'Identifier.type','GuestID','Guest Identifier for Provisioning to LDAP',NULL,'A');
/*!40000 ALTER TABLE `cm_co_extended_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_members`
--

DROP TABLE IF EXISTS `cm_co_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_group_id` int(11) NOT NULL,
  `co_person_id` int(11) NOT NULL,
  `member` tinyint(1) DEFAULT NULL,
  `owner` tinyint(1) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `source_org_identity_id` int(11) DEFAULT NULL,
  `co_group_nesting_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_member_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_members_i1` (`co_group_id`),
  KEY `cm_co_group_members_i2` (`co_person_id`),
  KEY `cm_co_group_members_i3` (`co_group_id`,`co_person_id`),
  KEY `cm_co_group_members_i4` (`co_group_member_id`),
  KEY `cm_co_group_members_i5` (`source_org_identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_members`
--

LOCK TABLES `cm_co_group_members` WRITE;
/*!40000 ALTER TABLE `cm_co_group_members` DISABLE KEYS */;
INSERT INTO `cm_co_group_members` VALUES (1,2,1,1,0,NULL,NULL,NULL,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,1,1,1,1,NULL,NULL,NULL,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_nestings`
--

DROP TABLE IF EXISTS `cm_co_group_nestings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_nestings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_group_id` int(11) NOT NULL,
  `target_co_group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_nesting_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_nestings_i2` (`target_co_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_nestings`
--

LOCK TABLES `cm_co_group_nestings` WRITE;
/*!40000 ALTER TABLE `cm_co_group_nestings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_group_nestings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_ois_mappings`
--

DROP TABLE IF EXISTS `cm_co_group_ois_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_ois_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) COLLATE utf8_bin NOT NULL,
  `comparison` varchar(4) COLLATE utf8_bin NOT NULL,
  `pattern` varchar(80) COLLATE utf8_bin NOT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_ois_mapping_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_ois_mappings_i1` (`co_group_ois_mapping_id`),
  KEY `cm_co_group_ois_mappings_i2` (`org_identity_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_ois_mappings`
--

LOCK TABLES `cm_co_group_ois_mappings` WRITE;
/*!40000 ALTER TABLE `cm_co_group_ois_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_group_ois_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_grouper_provisioner_groups`
--

DROP TABLE IF EXISTS `cm_co_grouper_provisioner_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_grouper_provisioner_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_grouper_provisioner_target_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `stem` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `extension` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_grouper_provisioner_groups_i1` (`co_grouper_provisioner_target_id`,`co_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_grouper_provisioner_groups`
--

LOCK TABLES `cm_co_grouper_provisioner_groups` WRITE;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_grouper_provisioner_targets`
--

DROP TABLE IF EXISTS `cm_co_grouper_provisioner_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_grouper_provisioner_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `contextpath` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `login` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `stem` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `subject_identifier` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `login_identifier` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `email_identifier` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `legacy_comanage_subject` tinyint(1) DEFAULT NULL,
  `subject_view` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_grouper_provisioner_targets_i1` (`co_provisioning_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_grouper_provisioner_targets`
--

LOCK TABLES `cm_co_grouper_provisioner_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_groups`
--

DROP TABLE IF EXISTS `cm_co_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `group_type` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_groups_i1` (`co_id`),
  KEY `cm_co_groups_i2` (`name`),
  KEY `cm_co_groups_i3` (`co_id`,`name`),
  KEY `cm_co_groups_i4` (`co_group_id`),
  KEY `cm_co_groups_i5` (`co_id`,`group_type`),
  KEY `cm_co_groups_i6` (`cou_id`,`group_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_groups`
--

LOCK TABLES `cm_co_groups` WRITE;
/*!40000 ALTER TABLE `cm_co_groups` DISABLE KEYS */;
INSERT INTO `cm_co_groups` VALUES (1,1,NULL,'CO:admins','COmanage Administrators',0,'A','A',0,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,'CO:members:active','COmanage Active Members',0,'A','MA',1,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(3,1,NULL,'CO:members:all','COmanage Members',0,'A','M',1,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(4,2,NULL,'CO:admins','test Administrators',0,'A','A',0,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson'),(5,2,NULL,'CO:members:active','test Active Members',0,'A','MA',1,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson'),(6,2,NULL,'CO:members:all','test Members',0,'A','M',1,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson'),(7,3,NULL,'CO:admins','Guests/Sponsored Accounts Administrators',0,'A','A',0,'2020-12-24 01:28:19','2020-12-24 01:28:19',NULL,0,0,'banderson'),(8,3,NULL,'CO:members:active','Guests/Sponsored Accounts Active Members',0,'A','MA',1,'2020-12-24 01:28:19','2020-12-24 01:28:19',NULL,0,0,'banderson'),(9,3,NULL,'CO:members:all','Guests/Sponsored Accounts Members',0,'A','M',1,'2020-12-24 01:28:19','2020-12-24 01:28:19',NULL,0,0,'banderson');
/*!40000 ALTER TABLE `cm_co_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_identifier_assignments`
--

DROP TABLE IF EXISTS `cm_co_identifier_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_identifier_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `context` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `identifier_type` varchar(32) COLLATE utf8_bin NOT NULL,
  `email_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `algorithm` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `format` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `minimum` int(11) DEFAULT NULL,
  `maximum` int(11) DEFAULT NULL,
  `permitted` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `collision_resolution` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `exclusions` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_identifier_assignments_i1` (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_identifier_assignments`
--

LOCK TABLES `cm_co_identifier_assignments` WRITE;
/*!40000 ALTER TABLE `cm_co_identifier_assignments` DISABLE KEYS */;
INSERT INTO `cm_co_identifier_assignments` VALUES (1,3,'A','CP','GuestID','','Guest Identifier',1,'S','G(#:8)',1,NULL,'AN',NULL,NULL,NULL,'2020-12-28 01:15:26','2020-12-28 01:15:26');
/*!40000 ALTER TABLE `cm_co_identifier_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_identifier_validators`
--

DROP TABLE IF EXISTS `cm_co_identifier_validators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_identifier_validators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `co_extended_type_id` int(11) NOT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_identifier_validator_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_identifier_validators_i1` (`co_id`),
  KEY `cm_co_identifier_validators_i2` (`co_identifier_validator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_identifier_validators`
--

LOCK TABLES `cm_co_identifier_validators` WRITE;
/*!40000 ALTER TABLE `cm_co_identifier_validators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_identifier_validators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_invites`
--

DROP TABLE IF EXISTS `cm_co_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `invitation` varchar(48) COLLATE utf8_bin NOT NULL,
  `mail` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `email_address_id` int(11) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_invite_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_invites_i1` (`co_person_id`),
  KEY `cm_co_invites_i2` (`invitation`),
  KEY `cm_co_invites_i3` (`co_person_id`,`mail`(255)),
  KEY `cm_co_invites_i4` (`co_invite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_invites`
--

LOCK TABLES `cm_co_invites` WRITE;
/*!40000 ALTER TABLE `cm_co_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_job_history_records`
--

DROP TABLE IF EXISTS `cm_co_job_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_job_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_job_id` int(11) NOT NULL,
  `record_key` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `comment` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_job_history_records_i1` (`co_job_id`),
  KEY `cm_co_job_history_records_i2` (`co_person_id`),
  KEY `cm_co_job_history_records_i3` (`org_identity_id`),
  KEY `cm_co_job_history_records_i4` (`co_job_id`,`record_key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_job_history_records`
--

LOCK TABLES `cm_co_job_history_records` WRITE;
/*!40000 ALTER TABLE `cm_co_job_history_records` DISABLE KEYS */;
INSERT INTO `cm_co_job_history_records` VALUES (1,299,NULL,NULL,NULL,'Reprovisioning 0 CoEmailList record(s)','NT','2020-12-28 01:26:49','2020-12-28 01:26:49'),(2,299,NULL,NULL,NULL,'Reprovisioning 3 CoGroup record(s)','NT','2020-12-28 01:26:49','2020-12-28 01:26:49'),(3,299,'7',NULL,NULL,'Provisioning completed successfully','OK','2020-12-28 01:26:49','2020-12-28 01:26:49'),(4,299,'8',NULL,NULL,'Provisioning completed successfully','OK','2020-12-28 01:26:49','2020-12-28 01:26:49'),(5,299,'9',NULL,NULL,'Provisioning completed successfully','OK','2020-12-28 01:26:49','2020-12-28 01:26:49'),(6,299,NULL,NULL,NULL,'Reprovisioning 0 CoPerson record(s)','NT','2020-12-28 01:26:49','2020-12-28 01:26:49'),(7,299,NULL,NULL,NULL,'Reprovisioning 0 CoService record(s)','NT','2020-12-28 01:26:49','2020-12-28 01:26:49');
/*!40000 ALTER TABLE `cm_co_job_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_jobs`
--

DROP TABLE IF EXISTS `cm_co_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `job_type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `job_type_fk` int(11) DEFAULT NULL,
  `job_mode` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `job_params` text COLLATE utf8_bin,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `register_summary` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `start_summary` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `finish_summary` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `queue_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_jobs_i1` (`co_id`),
  KEY `cm_co_jobs_i2` (`job_type`,`job_type_fk`),
  KEY `cm_co_jobs_i3` (`co_id`,`job_type`,`job_type_fk`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_jobs`
--

LOCK TABLES `cm_co_jobs` WRITE;
/*!40000 ALTER TABLE `cm_co_jobs` DISABLE KEYS */;
INSERT INTO `cm_co_jobs` VALUES (1,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 21:00:01','2020-12-23 21:00:01','2020-12-23 21:00:01',NULL,'2020-12-23 21:00:01','2020-12-23 21:00:01'),(2,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 21:00:01','2020-12-23 21:00:01','2020-12-23 21:00:01',NULL,'2020-12-23 21:00:01','2020-12-23 21:00:01'),(3,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 22:00:01','2020-12-23 22:00:01','2020-12-23 22:00:01',NULL,'2020-12-23 22:00:01','2020-12-23 22:00:01'),(4,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 22:00:01','2020-12-23 22:00:01','2020-12-23 22:00:01',NULL,'2020-12-23 22:00:01','2020-12-23 22:00:01'),(5,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 23:00:01','2020-12-23 23:00:01','2020-12-23 23:00:01',NULL,'2020-12-23 23:00:01','2020-12-23 23:00:01'),(6,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-23 23:00:01','2020-12-23 23:00:01','2020-12-23 23:00:01',NULL,'2020-12-23 23:00:01','2020-12-23 23:00:01'),(7,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 00:00:01','2020-12-24 00:00:01','2020-12-24 00:00:01',NULL,'2020-12-24 00:00:01','2020-12-24 00:00:01'),(8,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 00:00:01','2020-12-24 00:00:01','2020-12-24 00:00:01',NULL,'2020-12-24 00:00:01','2020-12-24 00:00:01'),(9,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 01:00:01','2020-12-24 01:00:01','2020-12-24 01:00:01',NULL,'2020-12-24 01:00:01','2020-12-24 01:00:01'),(10,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 01:00:01','2020-12-24 01:00:01','2020-12-24 01:00:01',NULL,'2020-12-24 01:00:01','2020-12-24 01:00:01'),(11,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 02:00:01','2020-12-24 02:00:01','2020-12-24 02:00:01',NULL,'2020-12-24 02:00:01','2020-12-24 02:00:01'),(12,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 02:00:01','2020-12-24 02:00:01','2020-12-24 02:00:01',NULL,'2020-12-24 02:00:01','2020-12-24 02:00:01'),(13,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 02:00:01','2020-12-24 02:00:01','2020-12-24 02:00:01',NULL,'2020-12-24 02:00:01','2020-12-24 02:00:01'),(14,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 03:00:01','2020-12-24 03:00:01','2020-12-24 03:00:01',NULL,'2020-12-24 03:00:01','2020-12-24 03:00:01'),(15,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 03:00:01','2020-12-24 03:00:01','2020-12-24 03:00:01',NULL,'2020-12-24 03:00:01','2020-12-24 03:00:01'),(16,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 03:00:01','2020-12-24 03:00:01','2020-12-24 03:00:01',NULL,'2020-12-24 03:00:01','2020-12-24 03:00:01'),(17,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 04:00:01','2020-12-24 04:00:01','2020-12-24 04:00:01',NULL,'2020-12-24 04:00:01','2020-12-24 04:00:01'),(18,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 04:00:01','2020-12-24 04:00:01','2020-12-24 04:00:01',NULL,'2020-12-24 04:00:01','2020-12-24 04:00:01'),(19,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 04:00:01','2020-12-24 04:00:01','2020-12-24 04:00:01',NULL,'2020-12-24 04:00:01','2020-12-24 04:00:01'),(20,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 05:00:01','2020-12-24 05:00:01','2020-12-24 05:00:01',NULL,'2020-12-24 05:00:01','2020-12-24 05:00:01'),(21,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 05:00:01','2020-12-24 05:00:01','2020-12-24 05:00:01',NULL,'2020-12-24 05:00:01','2020-12-24 05:00:01'),(22,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 05:00:01','2020-12-24 05:00:01','2020-12-24 05:00:01',NULL,'2020-12-24 05:00:01','2020-12-24 05:00:01'),(23,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 06:00:01','2020-12-24 06:00:01','2020-12-24 06:00:01',NULL,'2020-12-24 06:00:01','2020-12-24 06:00:01'),(24,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 06:00:01','2020-12-24 06:00:01','2020-12-24 06:00:01',NULL,'2020-12-24 06:00:01','2020-12-24 06:00:01'),(25,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 06:00:01','2020-12-24 06:00:01','2020-12-24 06:00:01',NULL,'2020-12-24 06:00:01','2020-12-24 06:00:01'),(26,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 07:00:01','2020-12-24 07:00:01','2020-12-24 07:00:01',NULL,'2020-12-24 07:00:01','2020-12-24 07:00:01'),(27,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 07:00:01','2020-12-24 07:00:01','2020-12-24 07:00:01',NULL,'2020-12-24 07:00:01','2020-12-24 07:00:01'),(28,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 07:00:01','2020-12-24 07:00:01','2020-12-24 07:00:01',NULL,'2020-12-24 07:00:01','2020-12-24 07:00:01'),(29,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 08:00:01','2020-12-24 08:00:01','2020-12-24 08:00:01',NULL,'2020-12-24 08:00:01','2020-12-24 08:00:01'),(30,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 08:00:01','2020-12-24 08:00:01','2020-12-24 08:00:01',NULL,'2020-12-24 08:00:01','2020-12-24 08:00:01'),(31,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 08:00:01','2020-12-24 08:00:01','2020-12-24 08:00:01',NULL,'2020-12-24 08:00:01','2020-12-24 08:00:01'),(32,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 09:00:01','2020-12-24 09:00:01','2020-12-24 09:00:01',NULL,'2020-12-24 09:00:01','2020-12-24 09:00:01'),(33,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 09:00:01','2020-12-24 09:00:01','2020-12-24 09:00:01',NULL,'2020-12-24 09:00:01','2020-12-24 09:00:01'),(34,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 09:00:01','2020-12-24 09:00:01','2020-12-24 09:00:01',NULL,'2020-12-24 09:00:01','2020-12-24 09:00:01'),(35,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 10:00:01','2020-12-24 10:00:01','2020-12-24 10:00:01',NULL,'2020-12-24 10:00:01','2020-12-24 10:00:01'),(36,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 10:00:01','2020-12-24 10:00:01','2020-12-24 10:00:01',NULL,'2020-12-24 10:00:01','2020-12-24 10:00:01'),(37,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 10:00:01','2020-12-24 10:00:01','2020-12-24 10:00:01',NULL,'2020-12-24 10:00:01','2020-12-24 10:00:01'),(38,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 11:00:01','2020-12-24 11:00:01','2020-12-24 11:00:01',NULL,'2020-12-24 11:00:01','2020-12-24 11:00:01'),(39,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 11:00:01','2020-12-24 11:00:01','2020-12-24 11:00:01',NULL,'2020-12-24 11:00:01','2020-12-24 11:00:01'),(40,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 11:00:01','2020-12-24 11:00:01','2020-12-24 11:00:01',NULL,'2020-12-24 11:00:01','2020-12-24 11:00:01'),(41,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 12:00:01','2020-12-24 12:00:01','2020-12-24 12:00:01',NULL,'2020-12-24 12:00:01','2020-12-24 12:00:01'),(42,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 12:00:01','2020-12-24 12:00:01','2020-12-24 12:00:01',NULL,'2020-12-24 12:00:01','2020-12-24 12:00:01'),(43,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 12:00:01','2020-12-24 12:00:01','2020-12-24 12:00:01',NULL,'2020-12-24 12:00:01','2020-12-24 12:00:01'),(44,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 13:00:01','2020-12-24 13:00:01','2020-12-24 13:00:01',NULL,'2020-12-24 13:00:01','2020-12-24 13:00:01'),(45,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 13:00:01','2020-12-24 13:00:01','2020-12-24 13:00:01',NULL,'2020-12-24 13:00:01','2020-12-24 13:00:01'),(46,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 13:00:01','2020-12-24 13:00:01','2020-12-24 13:00:01',NULL,'2020-12-24 13:00:01','2020-12-24 13:00:01'),(47,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 14:00:01','2020-12-24 14:00:01','2020-12-24 14:00:01',NULL,'2020-12-24 14:00:01','2020-12-24 14:00:01'),(48,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 14:00:01','2020-12-24 14:00:01','2020-12-24 14:00:01',NULL,'2020-12-24 14:00:01','2020-12-24 14:00:01'),(49,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 14:00:01','2020-12-24 14:00:01','2020-12-24 14:00:01',NULL,'2020-12-24 14:00:01','2020-12-24 14:00:01'),(50,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 15:00:01','2020-12-24 15:00:01','2020-12-24 15:00:01',NULL,'2020-12-24 15:00:01','2020-12-24 15:00:01'),(51,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 15:00:01','2020-12-24 15:00:01','2020-12-24 15:00:01',NULL,'2020-12-24 15:00:01','2020-12-24 15:00:01'),(52,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 15:00:01','2020-12-24 15:00:01','2020-12-24 15:00:01',NULL,'2020-12-24 15:00:01','2020-12-24 15:00:01'),(53,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 16:00:01','2020-12-24 16:00:01','2020-12-24 16:00:01',NULL,'2020-12-24 16:00:01','2020-12-24 16:00:01'),(54,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 16:00:01','2020-12-24 16:00:01','2020-12-24 16:00:01',NULL,'2020-12-24 16:00:01','2020-12-24 16:00:01'),(55,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 16:00:01','2020-12-24 16:00:01','2020-12-24 16:00:01',NULL,'2020-12-24 16:00:01','2020-12-24 16:00:01'),(56,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 17:00:01','2020-12-24 17:00:01','2020-12-24 17:00:01',NULL,'2020-12-24 17:00:01','2020-12-24 17:00:01'),(57,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 17:00:01','2020-12-24 17:00:01','2020-12-24 17:00:01',NULL,'2020-12-24 17:00:01','2020-12-24 17:00:01'),(58,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 17:00:01','2020-12-24 17:00:01','2020-12-24 17:00:01',NULL,'2020-12-24 17:00:01','2020-12-24 17:00:01'),(59,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 18:00:01','2020-12-24 18:00:01','2020-12-24 18:00:01',NULL,'2020-12-24 18:00:01','2020-12-24 18:00:01'),(60,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 18:00:01','2020-12-24 18:00:01','2020-12-24 18:00:01',NULL,'2020-12-24 18:00:01','2020-12-24 18:00:01'),(61,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 18:00:01','2020-12-24 18:00:01','2020-12-24 18:00:01',NULL,'2020-12-24 18:00:01','2020-12-24 18:00:01'),(62,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 19:00:01','2020-12-24 19:00:01','2020-12-24 19:00:01',NULL,'2020-12-24 19:00:01','2020-12-24 19:00:01'),(63,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 19:00:01','2020-12-24 19:00:01','2020-12-24 19:00:01',NULL,'2020-12-24 19:00:01','2020-12-24 19:00:01'),(64,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 19:00:01','2020-12-24 19:00:01','2020-12-24 19:00:01',NULL,'2020-12-24 19:00:01','2020-12-24 19:00:01'),(65,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 20:00:01','2020-12-24 20:00:01','2020-12-24 20:00:01',NULL,'2020-12-24 20:00:01','2020-12-24 20:00:01'),(66,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 20:00:01','2020-12-24 20:00:01','2020-12-24 20:00:01',NULL,'2020-12-24 20:00:01','2020-12-24 20:00:01'),(67,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 20:00:01','2020-12-24 20:00:01','2020-12-24 20:00:01',NULL,'2020-12-24 20:00:01','2020-12-24 20:00:01'),(68,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 21:00:01','2020-12-24 21:00:01','2020-12-24 21:00:01',NULL,'2020-12-24 21:00:01','2020-12-24 21:00:01'),(69,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 21:00:01','2020-12-24 21:00:01','2020-12-24 21:00:01',NULL,'2020-12-24 21:00:01','2020-12-24 21:00:01'),(70,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 21:00:01','2020-12-24 21:00:01','2020-12-24 21:00:01',NULL,'2020-12-24 21:00:01','2020-12-24 21:00:01'),(71,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 22:00:02','2020-12-24 22:00:02','2020-12-24 22:00:02',NULL,'2020-12-24 22:00:02','2020-12-24 22:00:02'),(72,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 22:00:02','2020-12-24 22:00:02','2020-12-24 22:00:02',NULL,'2020-12-24 22:00:02','2020-12-24 22:00:02'),(73,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 22:00:02','2020-12-24 22:00:02','2020-12-24 22:00:02',NULL,'2020-12-24 22:00:02','2020-12-24 22:00:02'),(74,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 23:00:01','2020-12-24 23:00:01','2020-12-24 23:00:01',NULL,'2020-12-24 23:00:01','2020-12-24 23:00:01'),(75,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 23:00:01','2020-12-24 23:00:01','2020-12-24 23:00:01',NULL,'2020-12-24 23:00:01','2020-12-24 23:00:01'),(76,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-24 23:00:01','2020-12-24 23:00:01','2020-12-24 23:00:01',NULL,'2020-12-24 23:00:01','2020-12-24 23:00:01'),(77,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 00:00:01','2020-12-25 00:00:01','2020-12-25 00:00:01',NULL,'2020-12-25 00:00:01','2020-12-25 00:00:01'),(78,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 00:00:01','2020-12-25 00:00:01','2020-12-25 00:00:01',NULL,'2020-12-25 00:00:01','2020-12-25 00:00:01'),(79,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 00:00:01','2020-12-25 00:00:01','2020-12-25 00:00:01',NULL,'2020-12-25 00:00:01','2020-12-25 00:00:01'),(80,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 01:00:02','2020-12-25 01:00:02','2020-12-25 01:00:02',NULL,'2020-12-25 01:00:02','2020-12-25 01:00:02'),(81,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 01:00:02','2020-12-25 01:00:02','2020-12-25 01:00:02',NULL,'2020-12-25 01:00:02','2020-12-25 01:00:02'),(82,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 01:00:02','2020-12-25 01:00:02','2020-12-25 01:00:02',NULL,'2020-12-25 01:00:02','2020-12-25 01:00:02'),(83,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 02:00:01','2020-12-25 02:00:01','2020-12-25 02:00:01',NULL,'2020-12-25 02:00:01','2020-12-25 02:00:01'),(84,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 02:00:01','2020-12-25 02:00:01','2020-12-25 02:00:01',NULL,'2020-12-25 02:00:01','2020-12-25 02:00:01'),(85,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 02:00:01','2020-12-25 02:00:01','2020-12-25 02:00:01',NULL,'2020-12-25 02:00:01','2020-12-25 02:00:01'),(86,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 03:00:01','2020-12-25 03:00:01','2020-12-25 03:00:01',NULL,'2020-12-25 03:00:01','2020-12-25 03:00:01'),(87,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 03:00:01','2020-12-25 03:00:01','2020-12-25 03:00:01',NULL,'2020-12-25 03:00:01','2020-12-25 03:00:01'),(88,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 03:00:01','2020-12-25 03:00:01','2020-12-25 03:00:01',NULL,'2020-12-25 03:00:01','2020-12-25 03:00:01'),(89,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 04:00:01','2020-12-25 04:00:01','2020-12-25 04:00:01',NULL,'2020-12-25 04:00:01','2020-12-25 04:00:01'),(90,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 04:00:01','2020-12-25 04:00:01','2020-12-25 04:00:01',NULL,'2020-12-25 04:00:01','2020-12-25 04:00:01'),(91,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 04:00:01','2020-12-25 04:00:01','2020-12-25 04:00:01',NULL,'2020-12-25 04:00:01','2020-12-25 04:00:01'),(92,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 05:00:01','2020-12-25 05:00:01','2020-12-25 05:00:01',NULL,'2020-12-25 05:00:01','2020-12-25 05:00:01'),(93,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 05:00:01','2020-12-25 05:00:01','2020-12-25 05:00:01',NULL,'2020-12-25 05:00:01','2020-12-25 05:00:01'),(94,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 05:00:01','2020-12-25 05:00:01','2020-12-25 05:00:01',NULL,'2020-12-25 05:00:01','2020-12-25 05:00:01'),(95,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 06:00:01','2020-12-25 06:00:01','2020-12-25 06:00:01',NULL,'2020-12-25 06:00:01','2020-12-25 06:00:01'),(96,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 06:00:01','2020-12-25 06:00:01','2020-12-25 06:00:01',NULL,'2020-12-25 06:00:01','2020-12-25 06:00:01'),(97,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 06:00:01','2020-12-25 06:00:01','2020-12-25 06:00:01',NULL,'2020-12-25 06:00:01','2020-12-25 06:00:01'),(98,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 07:00:01','2020-12-25 07:00:01','2020-12-25 07:00:01',NULL,'2020-12-25 07:00:01','2020-12-25 07:00:01'),(99,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 07:00:01','2020-12-25 07:00:01','2020-12-25 07:00:01',NULL,'2020-12-25 07:00:01','2020-12-25 07:00:01'),(100,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 07:00:01','2020-12-25 07:00:01','2020-12-25 07:00:01',NULL,'2020-12-25 07:00:01','2020-12-25 07:00:01'),(101,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 08:00:01','2020-12-25 08:00:01','2020-12-25 08:00:01',NULL,'2020-12-25 08:00:01','2020-12-25 08:00:01'),(102,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 08:00:02','2020-12-25 08:00:02','2020-12-25 08:00:02',NULL,'2020-12-25 08:00:02','2020-12-25 08:00:02'),(103,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 08:00:02','2020-12-25 08:00:02','2020-12-25 08:00:02',NULL,'2020-12-25 08:00:02','2020-12-25 08:00:02'),(104,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 09:00:01','2020-12-25 09:00:01','2020-12-25 09:00:01',NULL,'2020-12-25 09:00:01','2020-12-25 09:00:01'),(105,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 09:00:01','2020-12-25 09:00:01','2020-12-25 09:00:01',NULL,'2020-12-25 09:00:01','2020-12-25 09:00:01'),(106,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 09:00:01','2020-12-25 09:00:01','2020-12-25 09:00:01',NULL,'2020-12-25 09:00:01','2020-12-25 09:00:01'),(107,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 10:00:01','2020-12-25 10:00:01','2020-12-25 10:00:01',NULL,'2020-12-25 10:00:01','2020-12-25 10:00:01'),(108,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 10:00:01','2020-12-25 10:00:01','2020-12-25 10:00:01',NULL,'2020-12-25 10:00:01','2020-12-25 10:00:01'),(109,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 10:00:01','2020-12-25 10:00:01','2020-12-25 10:00:01',NULL,'2020-12-25 10:00:01','2020-12-25 10:00:01'),(110,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 11:00:01','2020-12-25 11:00:01','2020-12-25 11:00:01',NULL,'2020-12-25 11:00:01','2020-12-25 11:00:01'),(111,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 11:00:01','2020-12-25 11:00:01','2020-12-25 11:00:01',NULL,'2020-12-25 11:00:01','2020-12-25 11:00:01'),(112,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 11:00:01','2020-12-25 11:00:01','2020-12-25 11:00:01',NULL,'2020-12-25 11:00:01','2020-12-25 11:00:01'),(113,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 12:00:01','2020-12-25 12:00:01','2020-12-25 12:00:01',NULL,'2020-12-25 12:00:01','2020-12-25 12:00:01'),(114,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 12:00:01','2020-12-25 12:00:01','2020-12-25 12:00:01',NULL,'2020-12-25 12:00:01','2020-12-25 12:00:01'),(115,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 12:00:01','2020-12-25 12:00:01','2020-12-25 12:00:01',NULL,'2020-12-25 12:00:01','2020-12-25 12:00:01'),(116,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 13:00:01','2020-12-25 13:00:01','2020-12-25 13:00:01',NULL,'2020-12-25 13:00:01','2020-12-25 13:00:01'),(117,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 13:00:01','2020-12-25 13:00:01','2020-12-25 13:00:01',NULL,'2020-12-25 13:00:01','2020-12-25 13:00:01'),(118,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 13:00:01','2020-12-25 13:00:01','2020-12-25 13:00:01',NULL,'2020-12-25 13:00:01','2020-12-25 13:00:01'),(119,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 14:00:01','2020-12-25 14:00:01','2020-12-25 14:00:01',NULL,'2020-12-25 14:00:01','2020-12-25 14:00:01'),(120,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 14:00:01','2020-12-25 14:00:01','2020-12-25 14:00:01',NULL,'2020-12-25 14:00:01','2020-12-25 14:00:01'),(121,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 14:00:01','2020-12-25 14:00:01','2020-12-25 14:00:01',NULL,'2020-12-25 14:00:01','2020-12-25 14:00:01'),(122,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 15:00:01','2020-12-25 15:00:01','2020-12-25 15:00:01',NULL,'2020-12-25 15:00:01','2020-12-25 15:00:01'),(123,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 15:00:01','2020-12-25 15:00:01','2020-12-25 15:00:01',NULL,'2020-12-25 15:00:01','2020-12-25 15:00:01'),(124,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 15:00:01','2020-12-25 15:00:01','2020-12-25 15:00:01',NULL,'2020-12-25 15:00:01','2020-12-25 15:00:01'),(125,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 16:00:01','2020-12-25 16:00:01','2020-12-25 16:00:01',NULL,'2020-12-25 16:00:01','2020-12-25 16:00:01'),(126,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 16:00:01','2020-12-25 16:00:01','2020-12-25 16:00:01',NULL,'2020-12-25 16:00:01','2020-12-25 16:00:01'),(127,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 16:00:01','2020-12-25 16:00:01','2020-12-25 16:00:01',NULL,'2020-12-25 16:00:01','2020-12-25 16:00:01'),(128,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 17:00:01','2020-12-25 17:00:01','2020-12-25 17:00:01',NULL,'2020-12-25 17:00:01','2020-12-25 17:00:01'),(129,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 17:00:01','2020-12-25 17:00:01','2020-12-25 17:00:01',NULL,'2020-12-25 17:00:01','2020-12-25 17:00:01'),(130,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 17:00:01','2020-12-25 17:00:01','2020-12-25 17:00:01',NULL,'2020-12-25 17:00:01','2020-12-25 17:00:01'),(131,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 18:00:01','2020-12-25 18:00:01','2020-12-25 18:00:01',NULL,'2020-12-25 18:00:01','2020-12-25 18:00:01'),(132,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 18:00:01','2020-12-25 18:00:01','2020-12-25 18:00:01',NULL,'2020-12-25 18:00:01','2020-12-25 18:00:01'),(133,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 18:00:01','2020-12-25 18:00:01','2020-12-25 18:00:01',NULL,'2020-12-25 18:00:01','2020-12-25 18:00:01'),(134,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 19:00:01','2020-12-25 19:00:01','2020-12-25 19:00:01',NULL,'2020-12-25 19:00:01','2020-12-25 19:00:01'),(135,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 19:00:01','2020-12-25 19:00:01','2020-12-25 19:00:01',NULL,'2020-12-25 19:00:01','2020-12-25 19:00:01'),(136,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 19:00:01','2020-12-25 19:00:01','2020-12-25 19:00:01',NULL,'2020-12-25 19:00:01','2020-12-25 19:00:01'),(137,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 20:00:01','2020-12-25 20:00:01','2020-12-25 20:00:01',NULL,'2020-12-25 20:00:01','2020-12-25 20:00:01'),(138,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 20:00:01','2020-12-25 20:00:01','2020-12-25 20:00:01',NULL,'2020-12-25 20:00:01','2020-12-25 20:00:01'),(139,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 20:00:01','2020-12-25 20:00:01','2020-12-25 20:00:01',NULL,'2020-12-25 20:00:01','2020-12-25 20:00:01'),(140,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 21:00:01','2020-12-25 21:00:01','2020-12-25 21:00:01',NULL,'2020-12-25 21:00:01','2020-12-25 21:00:01'),(141,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 21:00:01','2020-12-25 21:00:01','2020-12-25 21:00:01',NULL,'2020-12-25 21:00:01','2020-12-25 21:00:01'),(142,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 21:00:01','2020-12-25 21:00:01','2020-12-25 21:00:01',NULL,'2020-12-25 21:00:01','2020-12-25 21:00:01'),(143,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 22:00:01','2020-12-25 22:00:01','2020-12-25 22:00:01',NULL,'2020-12-25 22:00:01','2020-12-25 22:00:01'),(144,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 22:00:01','2020-12-25 22:00:01','2020-12-25 22:00:01',NULL,'2020-12-25 22:00:01','2020-12-25 22:00:01'),(145,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 22:00:01','2020-12-25 22:00:01','2020-12-25 22:00:01',NULL,'2020-12-25 22:00:01','2020-12-25 22:00:01'),(146,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 23:00:01','2020-12-25 23:00:01','2020-12-25 23:00:01',NULL,'2020-12-25 23:00:01','2020-12-25 23:00:01'),(147,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 23:00:01','2020-12-25 23:00:01','2020-12-25 23:00:01',NULL,'2020-12-25 23:00:01','2020-12-25 23:00:01'),(148,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-25 23:00:01','2020-12-25 23:00:01','2020-12-25 23:00:01',NULL,'2020-12-25 23:00:01','2020-12-25 23:00:01'),(149,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 00:00:01','2020-12-26 00:00:01','2020-12-26 00:00:01',NULL,'2020-12-26 00:00:01','2020-12-26 00:00:01'),(150,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 00:00:01','2020-12-26 00:00:01','2020-12-26 00:00:01',NULL,'2020-12-26 00:00:01','2020-12-26 00:00:01'),(151,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 00:00:01','2020-12-26 00:00:01','2020-12-26 00:00:01',NULL,'2020-12-26 00:00:01','2020-12-26 00:00:01'),(152,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 01:00:01','2020-12-26 01:00:01','2020-12-26 01:00:01',NULL,'2020-12-26 01:00:01','2020-12-26 01:00:01'),(153,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 01:00:01','2020-12-26 01:00:01','2020-12-26 01:00:01',NULL,'2020-12-26 01:00:01','2020-12-26 01:00:01'),(154,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 01:00:01','2020-12-26 01:00:01','2020-12-26 01:00:01',NULL,'2020-12-26 01:00:01','2020-12-26 01:00:01'),(155,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 02:00:01','2020-12-26 02:00:01','2020-12-26 02:00:01',NULL,'2020-12-26 02:00:01','2020-12-26 02:00:01'),(156,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 02:00:01','2020-12-26 02:00:01','2020-12-26 02:00:01',NULL,'2020-12-26 02:00:01','2020-12-26 02:00:01'),(157,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 02:00:01','2020-12-26 02:00:01','2020-12-26 02:00:01',NULL,'2020-12-26 02:00:01','2020-12-26 02:00:01'),(158,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 03:00:02','2020-12-26 03:00:02','2020-12-26 03:00:02',NULL,'2020-12-26 03:00:02','2020-12-26 03:00:02'),(159,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 03:00:02','2020-12-26 03:00:02','2020-12-26 03:00:02',NULL,'2020-12-26 03:00:02','2020-12-26 03:00:02'),(160,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 03:00:02','2020-12-26 03:00:02','2020-12-26 03:00:02',NULL,'2020-12-26 03:00:02','2020-12-26 03:00:02'),(161,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 04:00:01','2020-12-26 04:00:01','2020-12-26 04:00:01',NULL,'2020-12-26 04:00:01','2020-12-26 04:00:01'),(162,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 04:00:01','2020-12-26 04:00:01','2020-12-26 04:00:01',NULL,'2020-12-26 04:00:01','2020-12-26 04:00:01'),(163,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 04:00:01','2020-12-26 04:00:01','2020-12-26 04:00:01',NULL,'2020-12-26 04:00:01','2020-12-26 04:00:01'),(164,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 05:00:01','2020-12-26 05:00:01','2020-12-26 05:00:01',NULL,'2020-12-26 05:00:01','2020-12-26 05:00:01'),(165,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 05:00:01','2020-12-26 05:00:01','2020-12-26 05:00:01',NULL,'2020-12-26 05:00:01','2020-12-26 05:00:01'),(166,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 05:00:01','2020-12-26 05:00:01','2020-12-26 05:00:01',NULL,'2020-12-26 05:00:01','2020-12-26 05:00:01'),(167,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 06:00:01','2020-12-26 06:00:01','2020-12-26 06:00:01',NULL,'2020-12-26 06:00:01','2020-12-26 06:00:01'),(168,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 06:00:01','2020-12-26 06:00:01','2020-12-26 06:00:01',NULL,'2020-12-26 06:00:01','2020-12-26 06:00:01'),(169,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 06:00:01','2020-12-26 06:00:01','2020-12-26 06:00:01',NULL,'2020-12-26 06:00:01','2020-12-26 06:00:01'),(170,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 07:00:01','2020-12-26 07:00:01','2020-12-26 07:00:01',NULL,'2020-12-26 07:00:01','2020-12-26 07:00:01'),(171,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 07:00:01','2020-12-26 07:00:01','2020-12-26 07:00:01',NULL,'2020-12-26 07:00:01','2020-12-26 07:00:01'),(172,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 07:00:01','2020-12-26 07:00:01','2020-12-26 07:00:01',NULL,'2020-12-26 07:00:01','2020-12-26 07:00:01'),(173,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 08:00:01','2020-12-26 08:00:01','2020-12-26 08:00:01',NULL,'2020-12-26 08:00:01','2020-12-26 08:00:01'),(174,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 08:00:01','2020-12-26 08:00:01','2020-12-26 08:00:01',NULL,'2020-12-26 08:00:01','2020-12-26 08:00:01'),(175,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 08:00:01','2020-12-26 08:00:01','2020-12-26 08:00:01',NULL,'2020-12-26 08:00:01','2020-12-26 08:00:01'),(176,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 09:00:01','2020-12-26 09:00:01','2020-12-26 09:00:01',NULL,'2020-12-26 09:00:01','2020-12-26 09:00:01'),(177,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 09:00:01','2020-12-26 09:00:01','2020-12-26 09:00:01',NULL,'2020-12-26 09:00:01','2020-12-26 09:00:01'),(178,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 09:00:01','2020-12-26 09:00:01','2020-12-26 09:00:01',NULL,'2020-12-26 09:00:01','2020-12-26 09:00:01'),(179,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 10:00:01','2020-12-26 10:00:01','2020-12-26 10:00:01',NULL,'2020-12-26 10:00:01','2020-12-26 10:00:01'),(180,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 10:00:01','2020-12-26 10:00:01','2020-12-26 10:00:01',NULL,'2020-12-26 10:00:01','2020-12-26 10:00:01'),(181,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 10:00:01','2020-12-26 10:00:01','2020-12-26 10:00:01',NULL,'2020-12-26 10:00:01','2020-12-26 10:00:01'),(182,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 11:00:01','2020-12-26 11:00:01','2020-12-26 11:00:01',NULL,'2020-12-26 11:00:01','2020-12-26 11:00:01'),(183,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 11:00:01','2020-12-26 11:00:01','2020-12-26 11:00:01',NULL,'2020-12-26 11:00:01','2020-12-26 11:00:01'),(184,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 11:00:01','2020-12-26 11:00:01','2020-12-26 11:00:01',NULL,'2020-12-26 11:00:01','2020-12-26 11:00:01'),(185,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 12:00:01','2020-12-26 12:00:01','2020-12-26 12:00:01',NULL,'2020-12-26 12:00:01','2020-12-26 12:00:01'),(186,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 12:00:01','2020-12-26 12:00:01','2020-12-26 12:00:01',NULL,'2020-12-26 12:00:01','2020-12-26 12:00:01'),(187,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 12:00:01','2020-12-26 12:00:01','2020-12-26 12:00:01',NULL,'2020-12-26 12:00:01','2020-12-26 12:00:01'),(188,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 13:00:01','2020-12-26 13:00:01','2020-12-26 13:00:01',NULL,'2020-12-26 13:00:01','2020-12-26 13:00:01'),(189,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 13:00:01','2020-12-26 13:00:01','2020-12-26 13:00:01',NULL,'2020-12-26 13:00:01','2020-12-26 13:00:01'),(190,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 13:00:01','2020-12-26 13:00:01','2020-12-26 13:00:01',NULL,'2020-12-26 13:00:01','2020-12-26 13:00:01'),(191,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 14:00:02','2020-12-26 14:00:02','2020-12-26 14:00:02',NULL,'2020-12-26 14:00:02','2020-12-26 14:00:02'),(192,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 14:00:02','2020-12-26 14:00:02','2020-12-26 14:00:02',NULL,'2020-12-26 14:00:02','2020-12-26 14:00:02'),(193,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 14:00:02','2020-12-26 14:00:02','2020-12-26 14:00:02',NULL,'2020-12-26 14:00:02','2020-12-26 14:00:02'),(194,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 15:00:01','2020-12-26 15:00:01','2020-12-26 15:00:01',NULL,'2020-12-26 15:00:01','2020-12-26 15:00:01'),(195,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 15:00:01','2020-12-26 15:00:01','2020-12-26 15:00:01',NULL,'2020-12-26 15:00:01','2020-12-26 15:00:01'),(196,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 15:00:01','2020-12-26 15:00:01','2020-12-26 15:00:01',NULL,'2020-12-26 15:00:01','2020-12-26 15:00:01'),(197,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 16:00:01','2020-12-26 16:00:01','2020-12-26 16:00:01',NULL,'2020-12-26 16:00:01','2020-12-26 16:00:01'),(198,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 16:00:01','2020-12-26 16:00:01','2020-12-26 16:00:01',NULL,'2020-12-26 16:00:01','2020-12-26 16:00:01'),(199,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 16:00:01','2020-12-26 16:00:01','2020-12-26 16:00:01',NULL,'2020-12-26 16:00:01','2020-12-26 16:00:01'),(200,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 17:00:01','2020-12-26 17:00:01','2020-12-26 17:00:01',NULL,'2020-12-26 17:00:01','2020-12-26 17:00:01'),(201,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 17:00:01','2020-12-26 17:00:01','2020-12-26 17:00:01',NULL,'2020-12-26 17:00:01','2020-12-26 17:00:01'),(202,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 17:00:01','2020-12-26 17:00:01','2020-12-26 17:00:01',NULL,'2020-12-26 17:00:01','2020-12-26 17:00:01'),(203,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 18:00:01','2020-12-26 18:00:01','2020-12-26 18:00:01',NULL,'2020-12-26 18:00:01','2020-12-26 18:00:01'),(204,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 18:00:01','2020-12-26 18:00:01','2020-12-26 18:00:01',NULL,'2020-12-26 18:00:01','2020-12-26 18:00:01'),(205,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 18:00:01','2020-12-26 18:00:01','2020-12-26 18:00:01',NULL,'2020-12-26 18:00:01','2020-12-26 18:00:01'),(206,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 19:00:01','2020-12-26 19:00:01','2020-12-26 19:00:01',NULL,'2020-12-26 19:00:01','2020-12-26 19:00:01'),(207,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 19:00:01','2020-12-26 19:00:01','2020-12-26 19:00:01',NULL,'2020-12-26 19:00:01','2020-12-26 19:00:01'),(208,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 19:00:01','2020-12-26 19:00:01','2020-12-26 19:00:01',NULL,'2020-12-26 19:00:01','2020-12-26 19:00:01'),(209,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 20:00:01','2020-12-26 20:00:01','2020-12-26 20:00:01',NULL,'2020-12-26 20:00:01','2020-12-26 20:00:01'),(210,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 20:00:01','2020-12-26 20:00:01','2020-12-26 20:00:01',NULL,'2020-12-26 20:00:01','2020-12-26 20:00:01'),(211,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 20:00:01','2020-12-26 20:00:01','2020-12-26 20:00:01',NULL,'2020-12-26 20:00:01','2020-12-26 20:00:01'),(212,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 21:00:01','2020-12-26 21:00:01','2020-12-26 21:00:01',NULL,'2020-12-26 21:00:01','2020-12-26 21:00:01'),(213,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 21:00:01','2020-12-26 21:00:01','2020-12-26 21:00:01',NULL,'2020-12-26 21:00:01','2020-12-26 21:00:01'),(214,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 21:00:01','2020-12-26 21:00:01','2020-12-26 21:00:01',NULL,'2020-12-26 21:00:01','2020-12-26 21:00:01'),(215,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 22:00:01','2020-12-26 22:00:01','2020-12-26 22:00:01',NULL,'2020-12-26 22:00:01','2020-12-26 22:00:01'),(216,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 22:00:01','2020-12-26 22:00:01','2020-12-26 22:00:01',NULL,'2020-12-26 22:00:01','2020-12-26 22:00:01'),(217,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 22:00:01','2020-12-26 22:00:01','2020-12-26 22:00:01',NULL,'2020-12-26 22:00:01','2020-12-26 22:00:01'),(218,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 23:00:01','2020-12-26 23:00:01','2020-12-26 23:00:01',NULL,'2020-12-26 23:00:01','2020-12-26 23:00:01'),(219,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 23:00:01','2020-12-26 23:00:01','2020-12-26 23:00:01',NULL,'2020-12-26 23:00:01','2020-12-26 23:00:01'),(220,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-26 23:00:01','2020-12-26 23:00:01','2020-12-26 23:00:01',NULL,'2020-12-26 23:00:01','2020-12-26 23:00:01'),(221,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 00:00:01','2020-12-27 00:00:01','2020-12-27 00:00:01',NULL,'2020-12-27 00:00:01','2020-12-27 00:00:01'),(222,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 00:00:01','2020-12-27 00:00:01','2020-12-27 00:00:01',NULL,'2020-12-27 00:00:01','2020-12-27 00:00:01'),(223,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 00:00:01','2020-12-27 00:00:01','2020-12-27 00:00:01',NULL,'2020-12-27 00:00:01','2020-12-27 00:00:01'),(224,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 01:00:01','2020-12-27 01:00:01','2020-12-27 01:00:01',NULL,'2020-12-27 01:00:01','2020-12-27 01:00:01'),(225,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 01:00:01','2020-12-27 01:00:01','2020-12-27 01:00:01',NULL,'2020-12-27 01:00:01','2020-12-27 01:00:01'),(226,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 01:00:01','2020-12-27 01:00:02','2020-12-27 01:00:02',NULL,'2020-12-27 01:00:01','2020-12-27 01:00:02'),(227,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 02:00:01','2020-12-27 02:00:01','2020-12-27 02:00:01',NULL,'2020-12-27 02:00:01','2020-12-27 02:00:01'),(228,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 02:00:01','2020-12-27 02:00:01','2020-12-27 02:00:01',NULL,'2020-12-27 02:00:01','2020-12-27 02:00:01'),(229,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 02:00:01','2020-12-27 02:00:01','2020-12-27 02:00:01',NULL,'2020-12-27 02:00:01','2020-12-27 02:00:01'),(230,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 03:00:02','2020-12-27 03:00:02','2020-12-27 03:00:02',NULL,'2020-12-27 03:00:02','2020-12-27 03:00:02'),(231,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 03:00:02','2020-12-27 03:00:02','2020-12-27 03:00:02',NULL,'2020-12-27 03:00:02','2020-12-27 03:00:02'),(232,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 03:00:02','2020-12-27 03:00:02','2020-12-27 03:00:02',NULL,'2020-12-27 03:00:02','2020-12-27 03:00:02'),(233,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 04:00:01','2020-12-27 04:00:01','2020-12-27 04:00:01',NULL,'2020-12-27 04:00:01','2020-12-27 04:00:01'),(234,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 04:00:01','2020-12-27 04:00:01','2020-12-27 04:00:01',NULL,'2020-12-27 04:00:01','2020-12-27 04:00:01'),(235,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 04:00:01','2020-12-27 04:00:01','2020-12-27 04:00:01',NULL,'2020-12-27 04:00:01','2020-12-27 04:00:01'),(236,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 05:00:02','2020-12-27 05:00:02','2020-12-27 05:00:02',NULL,'2020-12-27 05:00:02','2020-12-27 05:00:02'),(237,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 05:00:02','2020-12-27 05:00:02','2020-12-27 05:00:02',NULL,'2020-12-27 05:00:02','2020-12-27 05:00:02'),(238,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 05:00:02','2020-12-27 05:00:02','2020-12-27 05:00:02',NULL,'2020-12-27 05:00:02','2020-12-27 05:00:02'),(239,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 06:00:01','2020-12-27 06:00:01','2020-12-27 06:00:01',NULL,'2020-12-27 06:00:01','2020-12-27 06:00:01'),(240,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 06:00:01','2020-12-27 06:00:01','2020-12-27 06:00:01',NULL,'2020-12-27 06:00:01','2020-12-27 06:00:01'),(241,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 06:00:01','2020-12-27 06:00:01','2020-12-27 06:00:01',NULL,'2020-12-27 06:00:01','2020-12-27 06:00:01'),(242,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 07:00:01','2020-12-27 07:00:01','2020-12-27 07:00:01',NULL,'2020-12-27 07:00:01','2020-12-27 07:00:01'),(243,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 07:00:01','2020-12-27 07:00:01','2020-12-27 07:00:01',NULL,'2020-12-27 07:00:01','2020-12-27 07:00:01'),(244,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 07:00:01','2020-12-27 07:00:01','2020-12-27 07:00:01',NULL,'2020-12-27 07:00:01','2020-12-27 07:00:01'),(245,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 08:00:01','2020-12-27 08:00:01','2020-12-27 08:00:01',NULL,'2020-12-27 08:00:01','2020-12-27 08:00:01'),(246,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 08:00:01','2020-12-27 08:00:01','2020-12-27 08:00:01',NULL,'2020-12-27 08:00:01','2020-12-27 08:00:01'),(247,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 08:00:01','2020-12-27 08:00:01','2020-12-27 08:00:01',NULL,'2020-12-27 08:00:01','2020-12-27 08:00:01'),(248,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 09:00:01','2020-12-27 09:00:01','2020-12-27 09:00:01',NULL,'2020-12-27 09:00:01','2020-12-27 09:00:01'),(249,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 09:00:01','2020-12-27 09:00:01','2020-12-27 09:00:01',NULL,'2020-12-27 09:00:01','2020-12-27 09:00:01'),(250,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 09:00:01','2020-12-27 09:00:01','2020-12-27 09:00:01',NULL,'2020-12-27 09:00:01','2020-12-27 09:00:01'),(251,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 10:00:01','2020-12-27 10:00:01','2020-12-27 10:00:01',NULL,'2020-12-27 10:00:01','2020-12-27 10:00:01'),(252,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 10:00:01','2020-12-27 10:00:01','2020-12-27 10:00:01',NULL,'2020-12-27 10:00:01','2020-12-27 10:00:01'),(253,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 10:00:01','2020-12-27 10:00:01','2020-12-27 10:00:01',NULL,'2020-12-27 10:00:01','2020-12-27 10:00:01'),(254,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 11:00:01','2020-12-27 11:00:01','2020-12-27 11:00:01',NULL,'2020-12-27 11:00:01','2020-12-27 11:00:01'),(255,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 11:00:01','2020-12-27 11:00:01','2020-12-27 11:00:01',NULL,'2020-12-27 11:00:01','2020-12-27 11:00:01'),(256,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 11:00:01','2020-12-27 11:00:01','2020-12-27 11:00:01',NULL,'2020-12-27 11:00:01','2020-12-27 11:00:01'),(257,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 12:00:01','2020-12-27 12:00:01','2020-12-27 12:00:01',NULL,'2020-12-27 12:00:01','2020-12-27 12:00:01'),(258,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 12:00:01','2020-12-27 12:00:01','2020-12-27 12:00:01',NULL,'2020-12-27 12:00:01','2020-12-27 12:00:01'),(259,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 12:00:01','2020-12-27 12:00:01','2020-12-27 12:00:01',NULL,'2020-12-27 12:00:01','2020-12-27 12:00:01'),(260,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 13:00:01','2020-12-27 13:00:01','2020-12-27 13:00:01',NULL,'2020-12-27 13:00:01','2020-12-27 13:00:01'),(261,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 13:00:01','2020-12-27 13:00:01','2020-12-27 13:00:01',NULL,'2020-12-27 13:00:01','2020-12-27 13:00:01'),(262,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 13:00:01','2020-12-27 13:00:01','2020-12-27 13:00:01',NULL,'2020-12-27 13:00:01','2020-12-27 13:00:01'),(263,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 14:00:01','2020-12-27 14:00:01','2020-12-27 14:00:01',NULL,'2020-12-27 14:00:01','2020-12-27 14:00:01'),(264,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 14:00:01','2020-12-27 14:00:01','2020-12-27 14:00:01',NULL,'2020-12-27 14:00:01','2020-12-27 14:00:01'),(265,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 14:00:01','2020-12-27 14:00:01','2020-12-27 14:00:01',NULL,'2020-12-27 14:00:01','2020-12-27 14:00:01'),(266,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 15:00:01','2020-12-27 15:00:01','2020-12-27 15:00:01',NULL,'2020-12-27 15:00:01','2020-12-27 15:00:01'),(267,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 15:00:01','2020-12-27 15:00:01','2020-12-27 15:00:01',NULL,'2020-12-27 15:00:01','2020-12-27 15:00:01'),(268,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 15:00:01','2020-12-27 15:00:01','2020-12-27 15:00:01',NULL,'2020-12-27 15:00:01','2020-12-27 15:00:01'),(269,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 16:00:01','2020-12-27 16:00:01','2020-12-27 16:00:01',NULL,'2020-12-27 16:00:01','2020-12-27 16:00:01'),(270,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 16:00:01','2020-12-27 16:00:01','2020-12-27 16:00:01',NULL,'2020-12-27 16:00:01','2020-12-27 16:00:01'),(271,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 16:00:01','2020-12-27 16:00:01','2020-12-27 16:00:01',NULL,'2020-12-27 16:00:01','2020-12-27 16:00:01'),(272,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 17:00:01','2020-12-27 17:00:01','2020-12-27 17:00:01',NULL,'2020-12-27 17:00:01','2020-12-27 17:00:01'),(273,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 17:00:01','2020-12-27 17:00:01','2020-12-27 17:00:01',NULL,'2020-12-27 17:00:01','2020-12-27 17:00:01'),(274,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 17:00:01','2020-12-27 17:00:01','2020-12-27 17:00:01',NULL,'2020-12-27 17:00:01','2020-12-27 17:00:01'),(275,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 18:00:01','2020-12-27 18:00:01','2020-12-27 18:00:01',NULL,'2020-12-27 18:00:01','2020-12-27 18:00:01'),(276,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 18:00:02','2020-12-27 18:00:02','2020-12-27 18:00:02',NULL,'2020-12-27 18:00:02','2020-12-27 18:00:02'),(277,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 18:00:02','2020-12-27 18:00:02','2020-12-27 18:00:02',NULL,'2020-12-27 18:00:02','2020-12-27 18:00:02'),(278,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 19:00:01','2020-12-27 19:00:01','2020-12-27 19:00:01',NULL,'2020-12-27 19:00:01','2020-12-27 19:00:01'),(279,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 19:00:01','2020-12-27 19:00:01','2020-12-27 19:00:01',NULL,'2020-12-27 19:00:01','2020-12-27 19:00:01'),(280,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 19:00:01','2020-12-27 19:00:01','2020-12-27 19:00:01',NULL,'2020-12-27 19:00:01','2020-12-27 19:00:01'),(281,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 20:00:01','2020-12-27 20:00:01','2020-12-27 20:00:01',NULL,'2020-12-27 20:00:01','2020-12-27 20:00:01'),(282,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 20:00:01','2020-12-27 20:00:01','2020-12-27 20:00:01',NULL,'2020-12-27 20:00:01','2020-12-27 20:00:01'),(283,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 20:00:01','2020-12-27 20:00:01','2020-12-27 20:00:01',NULL,'2020-12-27 20:00:01','2020-12-27 20:00:01'),(284,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 21:00:01','2020-12-27 21:00:01','2020-12-27 21:00:01',NULL,'2020-12-27 21:00:01','2020-12-27 21:00:01'),(285,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 21:00:01','2020-12-27 21:00:01','2020-12-27 21:00:01',NULL,'2020-12-27 21:00:01','2020-12-27 21:00:01'),(286,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 21:00:01','2020-12-27 21:00:01','2020-12-27 21:00:01',NULL,'2020-12-27 21:00:01','2020-12-27 21:00:01'),(287,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 22:00:01','2020-12-27 22:00:01','2020-12-27 22:00:01',NULL,'2020-12-27 22:00:01','2020-12-27 22:00:01'),(288,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 22:00:01','2020-12-27 22:00:01','2020-12-27 22:00:01',NULL,'2020-12-27 22:00:01','2020-12-27 22:00:01'),(289,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 22:00:01','2020-12-27 22:00:01','2020-12-27 22:00:01',NULL,'2020-12-27 22:00:01','2020-12-27 22:00:01'),(290,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 23:00:01','2020-12-27 23:00:01','2020-12-27 23:00:01',NULL,'2020-12-27 23:00:01','2020-12-27 23:00:01'),(291,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 23:00:01','2020-12-27 23:00:01','2020-12-27 23:00:01',NULL,'2020-12-27 23:00:01','2020-12-27 23:00:01'),(292,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-27 23:00:02','2020-12-27 23:00:02','2020-12-27 23:00:02',NULL,'2020-12-27 23:00:02','2020-12-27 23:00:02'),(293,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 00:00:01','2020-12-28 00:00:01','2020-12-28 00:00:01',NULL,'2020-12-28 00:00:01','2020-12-28 00:00:01'),(294,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 00:00:01','2020-12-28 00:00:01','2020-12-28 00:00:01',NULL,'2020-12-28 00:00:01','2020-12-28 00:00:01'),(295,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 00:00:01','2020-12-28 00:00:01','2020-12-28 00:00:01',NULL,'2020-12-28 00:00:01','2020-12-28 00:00:01'),(296,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:00:01','2020-12-28 01:00:01','2020-12-28 01:00:01',NULL,'2020-12-28 01:00:01','2020-12-28 01:00:01'),(297,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:00:01','2020-12-28 01:00:01','2020-12-28 01:00:01',NULL,'2020-12-28 01:00:01','2020-12-28 01:00:01'),(298,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:00:01','2020-12-28 01:00:01','2020-12-28 01:00:01',NULL,'2020-12-28 01:00:01','2020-12-28 01:00:01'),(299,3,'Provisioner',2,'All','{\"co_provisioning_target_id\":\"2\",\"record_type\":\"All\"}','OK','Started via JobShell by banderson (CoPerson ID )','Reprovisioning target id 2 for record type All','Processed 3 record(s) (3 success, 0 error)','2020-12-28 01:24:09','2020-12-28 01:26:49','2020-12-28 01:26:49',50,'2020-12-28 01:24:09','2020-12-28 01:26:49'),(300,1,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:26:46','2020-12-28 01:26:46','2020-12-28 01:26:46',NULL,'2020-12-28 01:26:46','2020-12-28 01:26:46'),(301,3,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:26:46','2020-12-28 01:26:46','2020-12-28 01:26:46',NULL,'2020-12-28 01:26:46','2020-12-28 01:26:46'),(302,2,'GV',NULL,'',NULL,'OK','Reprovisioning 0 record(s)','','Reprovisioned 0 record(s)','2020-12-28 01:26:46','2020-12-28 01:26:46','2020-12-28 01:26:46',NULL,'2020-12-28 01:26:46','2020-12-28 01:26:46'),(303,3,'Provisioner',NULL,NULL,'{\"co_provisioning_target_id\":\"2\",\"record_type\":\"All\"}','Q','Started via JobShell by banderson (CoPerson ID )',NULL,NULL,'2020-12-28 01:27:26',NULL,NULL,NULL,'2020-12-28 01:27:26','2020-12-28 01:27:26');
/*!40000 ALTER TABLE `cm_co_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_attr_groupings`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_attr_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_attr_groupings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `grouping` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_attr_groupings_i2` (`co_ldap_provisioner_target_id`,`grouping`),
  KEY `cm_co_ldap_provisioner_attr_groupings_i1` (`co_ldap_provisioner_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attr_groupings`
--

LOCK TABLES `cm_co_ldap_provisioner_attr_groupings` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attr_groupings` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_attr_groupings` VALUES (1,1,'address','office','2020-12-05 04:48:52','2020-12-05 04:49:52'),(2,2,'address','office','2020-12-28 01:24:00','2020-12-28 01:24:00');
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attr_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_attributes`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `objectclass` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `export` tinyint(1) DEFAULT NULL,
  `use_org_value` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_attributes_i2` (`co_ldap_provisioner_target_id`,`attribute`,`objectclass`),
  KEY `cm_co_ldap_provisioner_attributes_i1` (`co_ldap_provisioner_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attributes`
--

LOCK TABLES `cm_co_ldap_provisioner_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attributes` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_attributes` VALUES (1,1,'sn','person',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(2,1,'cn','person',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(3,1,'userPassword','person',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(4,1,'pwdAccountLockedTime','person',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(5,1,'title','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(6,1,'ou','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(7,1,'telephoneNumber','organizationalPerson','office',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(8,1,'facsimileTelephoneNumber','organizationalPerson','fax',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(9,1,'street','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(10,1,'l','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(11,1,'st','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(12,1,'postalCode','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(13,1,'givenName','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(14,1,'displayName','inetOrgPerson','preferred',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(15,1,'o','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(16,1,'labeledURI','inetOrgPerson','official',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(17,1,'mail','inetOrgPerson','official',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(18,1,'mobile','inetOrgPerson','mobile',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(19,1,'employeeNumber','inetOrgPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(20,1,'employeeType','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(21,1,'roomNumber','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(22,1,'uid','inetOrgPerson','uid',0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(23,1,'eduPersonAffiliation','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(24,1,'eduPersonEntitlement','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(25,1,'eduPersonNickname','eduPerson','preferred',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(26,1,'eduPersonOrcid','eduPerson',NULL,0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(27,1,'eduPersonPrincipalName','eduPerson','eppn',0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(28,1,'eduPersonPrincipalNamePrior','eduPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(29,1,'eduPersonScopedAffiliation','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(30,1,'eduPersonUniqueId','eduPerson','enterprise',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(31,1,'cn','groupOfNames',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(32,1,'member','groupOfNames',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(33,1,'owner','groupOfNames',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(34,1,'description','groupOfNames',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(35,1,'isMemberOf','eduMember',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(36,1,'hasMember','eduMember','uid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(37,1,'cn','posixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(38,1,'gidNumber','posixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(39,1,'memberUid','posixGroup',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(40,1,'sshPublicKey','ldapPublicKey',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(41,1,'voPersonAffiliation','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(42,1,'voPersonApplicationPassword','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(43,1,'voPersonApplicationUID','voPerson','uid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(44,1,'voPersonAuthorName','voPerson','author',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(45,1,'voPersonCertificateDN','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(46,1,'voPersonCertificateIssuerDN','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(47,1,'voPersonExternalID','voPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(48,1,'voPersonID','voPerson','enterprise',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(49,1,'voPersonPolicyAgreement','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(50,1,'voPersonSoRID','voPerson','sorid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(51,1,'voPersonStatus','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(52,1,'voPosixAccountUidNumber','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(53,1,'voPosixAccountGidNumber','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(54,1,'voPosixAccountHomeDirectory','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(55,1,'voPosixAccountLoginShell','voPosixAccount',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(56,1,'voPosixAccountGecos','voPosixAccount',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(57,1,'cn','voPosixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(58,1,'voPosixAccountGidNumber','voPosixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(59,1,'memberUid','voPosixGroup',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(60,2,'sn','person',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(61,2,'cn','person',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(62,2,'userPassword','person',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(63,2,'pwdAccountLockedTime','person',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(64,2,'title','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(65,2,'ou','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(66,2,'telephoneNumber','organizationalPerson','office',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(67,2,'facsimileTelephoneNumber','organizationalPerson','fax',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(68,2,'street','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(69,2,'l','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(70,2,'st','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(71,2,'postalCode','organizationalPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(72,2,'givenName','inetOrgPerson',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(73,2,'displayName','inetOrgPerson','preferred',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(74,2,'o','inetOrgPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(75,2,'labeledURI','inetOrgPerson','official',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(76,2,'mail','inetOrgPerson','official',1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(77,2,'mobile','inetOrgPerson','mobile',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(78,2,'employeeNumber','inetOrgPerson','eppn',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(79,2,'employeeType','inetOrgPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(80,2,'roomNumber','inetOrgPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(81,2,'uid','inetOrgPerson','GuestID',1,0,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(82,2,'eduPersonAffiliation','eduPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(83,2,'eduPersonEntitlement','eduPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(84,2,'eduPersonNickname','eduPerson','preferred',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(85,2,'eduPersonOrcid','eduPerson',NULL,0,0,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(86,2,'eduPersonPrincipalName','eduPerson','eppn',0,0,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(87,2,'eduPersonPrincipalNamePrior','eduPerson','eppn',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(88,2,'eduPersonScopedAffiliation','eduPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(89,2,'eduPersonUniqueId','eduPerson','enterprise',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(90,2,'cn','groupOfNames',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(91,2,'member','groupOfNames',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(92,2,'owner','groupOfNames',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(93,2,'description','groupOfNames',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(94,2,'isMemberOf','eduMember',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(95,2,'hasMember','eduMember','uid',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(96,2,'cn','posixGroup',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(97,2,'gidNumber','posixGroup',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(98,2,'memberUid','posixGroup',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(99,2,'sshPublicKey','ldapPublicKey',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(100,2,'voPersonAffiliation','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(101,2,'voPersonApplicationPassword','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(102,2,'voPersonApplicationUID','voPerson','uid',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(103,2,'voPersonAuthorName','voPerson','author',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(104,2,'voPersonCertificateDN','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(105,2,'voPersonCertificateIssuerDN','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(106,2,'voPersonExternalID','voPerson','eppn',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(107,2,'voPersonID','voPerson','enterprise',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(108,2,'voPersonPolicyAgreement','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(109,2,'voPersonSoRID','voPerson','sorid',0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(110,2,'voPersonStatus','voPerson',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(111,2,'voPosixAccountUidNumber','voPosixAccount',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(112,2,'voPosixAccountGidNumber','voPosixAccount',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(113,2,'voPosixAccountHomeDirectory','voPosixAccount',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(114,2,'voPosixAccountLoginShell','voPosixAccount',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(115,2,'voPosixAccountGecos','voPosixAccount',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(116,2,'cn','voPosixGroup',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(117,2,'voPosixAccountGidNumber','voPosixGroup',NULL,1,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00'),(118,2,'memberUid','voPosixGroup',NULL,0,NULL,'2020-12-28 01:24:00','2020-12-28 01:24:00');
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_dns`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_dns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_dns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `dn` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_dns_i1` (`co_ldap_provisioner_target_id`,`co_person_id`),
  UNIQUE KEY `cm_co_ldap_provisioner_dns_i2` (`co_ldap_provisioner_target_id`,`co_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_dns`
--

LOCK TABLES `cm_co_ldap_provisioner_dns` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_dns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_dns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_targets`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `binddn` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `basedn` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `dn_attribute_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `dn_identifier_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `group_basedn` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `person_ocs` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `group_ocs` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `attr_opts` tinyint(1) DEFAULT NULL,
  `scope_suffix` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `unconf_attr_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `oc_eduperson` tinyint(1) DEFAULT NULL,
  `oc_edumember` tinyint(1) DEFAULT NULL,
  `oc_groupofnames` tinyint(1) DEFAULT NULL,
  `oc_posixaccount` tinyint(1) DEFAULT NULL,
  `oc_posixgroup` tinyint(1) DEFAULT NULL,
  `oc_voposixaccount` tinyint(1) DEFAULT NULL,
  `oc_voposixgroup` tinyint(1) DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `oc_ldappublickey` tinyint(1) DEFAULT NULL,
  `oc_voperson` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_targets_i1` (`co_provisioning_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_targets`
--

LOCK TABLES `cm_co_ldap_provisioner_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_targets` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_targets` VALUES (1,1,'ldap://directory','cn=admin,dc=internet2,dc=edu','password','ou=guests,dc=internet2,dc=edu','badge','badge','','','',0,'','R',1,0,0,0,0,0,0,NULL,0,0,'2020-12-05 02:25:55','2020-12-05 04:49:52'),(2,2,'ldap://directory','cn=Directory Manager','password','ou=guests,dc=internet2,dc=edu','uid','GuestID','','','',0,'','I',1,0,0,0,0,0,0,NULL,0,0,'2020-12-28 01:22:45','2020-12-28 01:24:00');
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_localizations`
--

DROP TABLE IF EXISTS `cm_co_localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_localizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `lkey` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_localizations_i3` (`co_id`,`lkey`,`language`),
  KEY `cm_co_localizations_i1` (`co_id`),
  KEY `cm_co_localizations_i2` (`co_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_localizations`
--

LOCK TABLES `cm_co_localizations` WRITE;
/*!40000 ALTER TABLE `cm_co_localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_message_templates`
--

DROP TABLE IF EXISTS `cm_co_message_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_message_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin NOT NULL,
  `context` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `cc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `bcc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `message_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `message_body` text COLLATE utf8_bin,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_message_template_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_message_templates_i1` (`co_id`),
  KEY `cm_co_message_templates_i2` (`co_message_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_message_templates`
--

LOCK TABLES `cm_co_message_templates` WRITE;
/*!40000 ALTER TABLE `cm_co_message_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_message_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_navigation_links`
--

DROP TABLE IF EXISTS `cm_co_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_navigation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_bin NOT NULL,
  `url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `location` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_navigation_links_i1` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_navigation_links`
--

LOCK TABLES `cm_co_navigation_links` WRITE;
/*!40000 ALTER TABLE `cm_co_navigation_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_notifications`
--

DROP TABLE IF EXISTS `cm_co_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_co_person_id` int(11) DEFAULT NULL,
  `subject_co_group_id` int(11) DEFAULT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `recipient_co_person_id` int(11) DEFAULT NULL,
  `recipient_co_group_id` int(11) DEFAULT NULL,
  `resolver_co_person_id` int(11) DEFAULT NULL,
  `action` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `source_url` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `source_controller` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `source_action` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_arg0` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `source_val0` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `email_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `email_body` text COLLATE utf8_bin,
  `resolution_subject` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `resolution_body` text COLLATE utf8_bin,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `notification_time` datetime DEFAULT NULL,
  `resolution_time` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_notifications_i1` (`subject_co_person_id`),
  KEY `cm_co_notifications_i2` (`recipient_co_person_id`),
  KEY `cm_co_notifications_i3` (`recipient_co_group_id`),
  KEY `cm_co_notifications_i4` (`source_url`),
  KEY `cm_co_notifications_i5` (`source_controller`,`source_action`,`source_id`,`source_arg0`,`source_val0`),
  KEY `cm_co_notifications_i6` (`subject_co_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_notifications`
--

LOCK TABLES `cm_co_notifications` WRITE;
/*!40000 ALTER TABLE `cm_co_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_nsf_demographics`
--

DROP TABLE IF EXISTS `cm_co_nsf_demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_nsf_demographics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `gender` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `citizenship` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ethnicity` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `race` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `disability` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_nsf_demographic_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_nsf_demographics_i1` (`co_person_id`),
  KEY `cm_co_nsf_demographics_i2` (`co_nsf_demographic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_nsf_demographics`
--

LOCK TABLES `cm_co_nsf_demographics` WRITE;
/*!40000 ALTER TABLE `cm_co_nsf_demographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_nsf_demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_org_identity_links`
--

DROP TABLE IF EXISTS `cm_co_org_identity_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_org_identity_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `org_identity_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_org_identity_link_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_org_identity_links_i1` (`co_person_id`),
  KEY `cm_co_org_identity_links_i2` (`org_identity_id`),
  KEY `cm_co_org_identity_links_i3` (`co_person_id`,`org_identity_id`),
  KEY `cm_co_org_identity_links_i4` (`co_org_identity_link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_org_identity_links`
--

LOCK TABLES `cm_co_org_identity_links` WRITE;
/*!40000 ALTER TABLE `cm_co_org_identity_links` DISABLE KEYS */;
INSERT INTO `cm_co_org_identity_links` VALUES (1,1,1,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_org_identity_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_people`
--

DROP TABLE IF EXISTS `cm_co_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `timezone` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_people_i1` (`co_id`),
  KEY `cm_co_people_i2` (`co_person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_people`
--

LOCK TABLES `cm_co_people` WRITE;
/*!40000 ALTER TABLE `cm_co_people` DISABLE KEYS */;
INSERT INTO `cm_co_people` VALUES (1,1,'A',NULL,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_person_roles`
--

DROP TABLE IF EXISTS `cm_co_person_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_person_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `sponsor_co_person_id` int(11) DEFAULT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `o` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `ou` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `source_org_identity_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_person_roles_i1` (`co_person_id`),
  KEY `cm_co_person_roles_i2` (`sponsor_co_person_id`),
  KEY `cm_co_person_roles_i3` (`cou_id`),
  KEY `cm_co_person_roles_i4` (`co_person_role_id`),
  KEY `cm_co_person_roles_i5` (`source_org_identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_person_roles`
--

LOCK TABLES `cm_co_person_roles` WRITE;
/*!40000 ALTER TABLE `cm_co_person_roles` DISABLE KEYS */;
INSERT INTO `cm_co_person_roles` VALUES (1,1,NULL,NULL,'staff','Administrator',NULL,NULL,NULL,NULL,NULL,'A',NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_person_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petition_attributes`
--

DROP TABLE IF EXISTS `cm_co_petition_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petition_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_petition_id` int(11) NOT NULL,
  `co_enrollment_attribute_id` int(11) NOT NULL,
  `attribute` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `attribute_foreign_key` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_attribute_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petition_attributes_i1` (`co_petition_id`),
  KEY `cm_co_petition_attributes_i2` (`co_enrollment_attribute_id`),
  KEY `cm_co_petition_attributes_i3` (`co_petition_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petition_attributes`
--

LOCK TABLES `cm_co_petition_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_petition_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petition_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petition_history_records`
--

DROP TABLE IF EXISTS `cm_co_petition_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petition_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_petition_id` int(11) NOT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `action` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_history_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petition_history_records_i1` (`co_petition_id`),
  KEY `cm_co_petition_history_records_i2` (`co_petition_history_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petition_history_records`
--

LOCK TABLES `cm_co_petition_history_records` WRITE;
/*!40000 ALTER TABLE `cm_co_petition_history_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petition_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petitions`
--

DROP TABLE IF EXISTS `cm_co_petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `enrollee_org_identity_id` int(11) DEFAULT NULL,
  `archived_org_identity_id` int(11) DEFAULT NULL,
  `enrollee_co_person_id` int(11) DEFAULT NULL,
  `enrollee_co_person_role_id` int(11) DEFAULT NULL,
  `petitioner_co_person_id` int(11) DEFAULT NULL,
  `sponsor_co_person_id` int(11) DEFAULT NULL,
  `approver_co_person_id` int(11) DEFAULT NULL,
  `co_invite_id` int(11) DEFAULT NULL,
  `authenticated_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `petitioner_token` varchar(48) COLLATE utf8_bin DEFAULT NULL,
  `enrollee_token` varchar(48) COLLATE utf8_bin DEFAULT NULL,
  `return_url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `approver_comment` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petitions_i1` (`co_id`),
  KEY `cm_co_petitions_i2` (`cou_id`),
  KEY `cm_co_petitions_i3` (`enrollee_org_identity_id`),
  KEY `cm_co_petitions_i4` (`petitioner_co_person_id`),
  KEY `cm_co_petitions_i5` (`co_invite_id`),
  KEY `cm_co_petitions_i6` (`co_petition_id`),
  KEY `cm_co_petitions_i7` (`enrollee_co_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petitions`
--

LOCK TABLES `cm_co_petitions` WRITE;
/*!40000 ALTER TABLE `cm_co_petitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_pipelines`
--

DROP TABLE IF EXISTS `cm_co_pipelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_pipelines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `match_strategy` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `match_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `match_server_id` int(11) DEFAULT NULL,
  `sync_on_add` tinyint(1) DEFAULT NULL,
  `sync_on_update` tinyint(1) DEFAULT NULL,
  `sync_on_delete` tinyint(1) DEFAULT NULL,
  `sync_coperson_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `create_role` tinyint(1) DEFAULT NULL,
  `sync_cou_id` int(11) DEFAULT NULL,
  `sync_affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `sync_replace_cou_id` int(11) DEFAULT NULL,
  `sync_status_on_delete` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `co_enrollment_flow_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_pipeline_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_pipelines_i1` (`co_id`),
  KEY `cm_co_pipelines_i2` (`co_pipeline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_pipelines`
--

LOCK TABLES `cm_co_pipelines` WRITE;
/*!40000 ALTER TABLE `cm_co_pipelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_pipelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_exports`
--

DROP TABLE IF EXISTS `cm_co_provisioning_exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_exports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `exporttime` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_provisioning_exports_i1` (`co_provisioning_target_id`,`co_person_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i2` (`co_provisioning_target_id`,`co_group_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i3` (`co_provisioning_target_id`,`co_email_list_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i4` (`co_provisioning_target_id`,`co_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_exports`
--

LOCK TABLES `cm_co_provisioning_exports` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_exports` DISABLE KEYS */;
INSERT INTO `cm_co_provisioning_exports` VALUES (1,2,NULL,7,NULL,NULL,'2020-12-28 01:26:49','2020-12-28 01:26:49','2020-12-28 01:26:49'),(2,2,NULL,8,NULL,NULL,'2020-12-28 01:26:49','2020-12-28 01:26:49','2020-12-28 01:26:49'),(3,2,NULL,9,NULL,NULL,'2020-12-28 01:26:49','2020-12-28 01:26:49','2020-12-28 01:26:49');
/*!40000 ALTER TABLE `cm_co_provisioning_exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_target_filters`
--

DROP TABLE IF EXISTS `cm_co_provisioning_target_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_target_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) NOT NULL,
  `data_filter_id` int(11) NOT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_provisioning_target_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_provisioning_target_filters_i1` (`co_provisioning_target_id`),
  KEY `cm_co_provisioning_target_filters_i2` (`data_filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_target_filters`
--

LOCK TABLES `cm_co_provisioning_target_filters` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_target_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_provisioning_target_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_targets`
--

DROP TABLE IF EXISTS `cm_co_provisioning_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `provision_co_group_id` int(11) DEFAULT NULL,
  `skip_org_identity_source_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_provisioning_targets_i1` (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_targets`
--

LOCK TABLES `cm_co_provisioning_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_targets` DISABLE KEYS */;
INSERT INTO `cm_co_provisioning_targets` VALUES (1,2,'test','LdapProvisioner',NULL,NULL,'A',1,'2020-12-05 02:25:55','2020-12-05 02:25:55'),(2,3,'Guests/Sponsored Accounts','LdapProvisioner',NULL,NULL,'A',1,'2020-12-28 01:22:45','2020-12-28 01:22:45');
/*!40000 ALTER TABLE `cm_co_provisioning_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_self_service_permissions`
--

DROP TABLE IF EXISTS `cm_co_self_service_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_self_service_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `model` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_self_service_permissions_i1` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_self_service_permissions`
--

LOCK TABLES `cm_co_self_service_permissions` WRITE;
/*!40000 ALTER TABLE `cm_co_self_service_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_self_service_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_sequential_identifier_assignments`
--

DROP TABLE IF EXISTS `cm_co_sequential_identifier_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_sequential_identifier_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_identifier_assignment_id` int(11) NOT NULL,
  `affix` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_sequential_identifier_assignments`
--

LOCK TABLES `cm_co_sequential_identifier_assignments` WRITE;
/*!40000 ALTER TABLE `cm_co_sequential_identifier_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_sequential_identifier_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_services`
--

DROP TABLE IF EXISTS `cm_co_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `short_label` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `service_url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `service_label` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `contact_email` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `logo_url` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `entitlement_uri` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `visibility` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `identifier_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `authenticator_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_services_i1` (`co_id`),
  KEY `cm_co_services_i2` (`co_service_id`),
  KEY `cm_co_services_i3` (`co_group_id`),
  KEY `cm_co_services_i4` (`co_id`,`identifier_type`),
  KEY `cm_co_services_i5` (`co_id`,`short_label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_services`
--

LOCK TABLES `cm_co_services` WRITE;
/*!40000 ALTER TABLE `cm_co_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_settings`
--

DROP TABLE IF EXISTS `cm_co_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `enable_nsf_demo` tinyint(1) DEFAULT NULL,
  `disable_expiration` tinyint(1) DEFAULT NULL,
  `disable_ois_sync` tinyint(1) DEFAULT NULL,
  `group_validity_sync_window` int(11) DEFAULT NULL,
  `enable_normalization` tinyint(1) DEFAULT NULL,
  `enable_empty_cou` tinyint(1) DEFAULT NULL,
  `invitation_validity` int(11) DEFAULT NULL,
  `permitted_fields_name` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `required_fields_addr` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `required_fields_name` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `t_and_c_login_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sponsor_eligibility` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sponsor_co_group_id` int(11) DEFAULT NULL,
  `default_co_pipeline_id` int(11) DEFAULT NULL,
  `elect_strategy_primary_name` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `co_dashboard_id` int(11) DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_settings_i1` (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_settings`
--

LOCK TABLES `cm_co_settings` WRITE;
/*!40000 ALTER TABLE `cm_co_settings` DISABLE KEYS */;
INSERT INTO `cm_co_settings` VALUES (1,1,0,0,0,1440,1,0,1440,'honorific,given,middle,family,suffix','street','given','X','A',NULL,NULL,NULL,NULL,NULL,'2020-12-05 02:19:32','2020-12-05 02:19:32');
/*!40000 ALTER TABLE `cm_co_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_t_and_c_agreements`
--

DROP TABLE IF EXISTS `cm_co_t_and_c_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_t_and_c_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_terms_and_conditions_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) NOT NULL,
  `agreement_time` datetime DEFAULT NULL,
  `identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_t_and_c_agreements_i1` (`co_terms_and_conditions_id`),
  KEY `cm_co_t_and_c_agreements_i2` (`co_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_t_and_c_agreements`
--

LOCK TABLES `cm_co_t_and_c_agreements` WRITE;
/*!40000 ALTER TABLE `cm_co_t_and_c_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_t_and_c_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_terms_and_conditions`
--

DROP TABLE IF EXISTS `cm_co_terms_and_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_terms_and_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `body` text COLLATE utf8_bin,
  `cou_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_terms_and_conditions_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_terms_and_conditions_i1` (`co_id`),
  KEY `cm_co_terms_and_conditions_i2` (`co_terms_and_conditions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_terms_and_conditions`
--

LOCK TABLES `cm_co_terms_and_conditions` WRITE;
/*!40000 ALTER TABLE `cm_co_terms_and_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_terms_and_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_themes`
--

DROP TABLE IF EXISTS `cm_co_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `hide_title` tinyint(1) DEFAULT NULL,
  `hide_footer_logo` tinyint(1) DEFAULT NULL,
  `css` longtext COLLATE utf8_bin,
  `header` longtext COLLATE utf8_bin,
  `footer` longtext COLLATE utf8_bin,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_themes_i1` (`co_id`),
  KEY `cm_co_themes_i2` (`co_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_themes`
--

LOCK TABLES `cm_co_themes` WRITE;
/*!40000 ALTER TABLE `cm_co_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cos`
--

DROP TABLE IF EXISTS `cm_cos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_cos_i1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cos`
--

LOCK TABLES `cm_cos` WRITE;
/*!40000 ALTER TABLE `cm_cos` DISABLE KEYS */;
INSERT INTO `cm_cos` VALUES (1,'COmanage','COmanage Registry Internal CO','A','2020-12-05 02:15:59','2020-12-05 02:15:59'),(2,'test','','A','2020-12-05 02:25:23','2020-12-05 02:25:23'),(3,'Guests/Sponsored Accounts','','A','2020-12-24 01:28:19','2020-12-24 01:28:19');
/*!40000 ALTER TABLE `cm_cos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cous`
--

DROP TABLE IF EXISTS `cm_cous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_cous_i1` (`co_id`),
  KEY `cm_cous_i2` (`name`),
  KEY `cm_cous_i3` (`co_id`,`name`),
  KEY `cm_cous_i4` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cous`
--

LOCK TABLES `cm_cous` WRITE;
/*!40000 ALTER TABLE `cm_cous` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_cous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_data_filters`
--

DROP TABLE IF EXISTS `cm_data_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_data_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `data_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_data_filters_i1` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_data_filters`
--

LOCK TABLES `cm_data_filters` WRITE;
/*!40000 ALTER TABLE `cm_data_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_data_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_email_addresses`
--

DROP TABLE IF EXISTS `cm_email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_email_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `source_email_address_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `email_address_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_email_addresses_i1` (`co_person_id`),
  KEY `cm_email_addresses_i2` (`org_identity_id`),
  KEY `cm_email_addresses_i3` (`mail`(255)),
  KEY `cm_email_addresses_i4` (`email_address_id`),
  KEY `cm_email_addresses_i5` (`source_email_address_id`),
  KEY `cm_email_addresses_i6` (`co_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_email_addresses`
--

LOCK TABLES `cm_email_addresses` WRITE;
/*!40000 ALTER TABLE `cm_email_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_env_sources`
--

DROP TABLE IF EXISTS `cm_env_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_env_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `env_name_honorific` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_name_given` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_name_middle` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_name_family` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_name_suffix` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_affiliation` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_title` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_o` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_ou` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_mail` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_telephone_number` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_address_street` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_address_locality` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_address_state` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_address_postalcode` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_address_country` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_eppn` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_eppn_login` tinyint(1) DEFAULT NULL,
  `env_identifier_eptid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_eptid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_epuid` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_epuid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_oidcsub` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_oidcsub_login` tinyint(1) DEFAULT NULL,
  `env_identifier_orcid` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_orcid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_samlpairwiseid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_samlpairwiseid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_samlsubjectid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_samlsubjectid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_sorid` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_sorid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_network` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `env_identifier_network_login` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_env_sources_i1` (`org_identity_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_env_sources`
--

LOCK TABLES `cm_env_sources` WRITE;
/*!40000 ALTER TABLE `cm_env_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_env_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_history_records`
--

DROP TABLE IF EXISTS `cm_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `action` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `history_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_history_records_i1` (`co_person_id`),
  KEY `cm_history_records_i2` (`co_person_role_id`),
  KEY `cm_history_records_i3` (`org_identity_id`),
  KEY `cm_history_records_i4` (`co_group_id`),
  KEY `cm_history_records_i5` (`history_record_id`),
  KEY `cm_history_records_i6` (`co_email_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_history_records`
--

LOCK TABLES `cm_history_records` WRITE;
/*!40000 ALTER TABLE `cm_history_records` DISABLE KEYS */;
INSERT INTO `cm_history_records` VALUES (1,1,NULL,NULL,2,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:active (2) (member=Yes, owner=No)','2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,NULL,3,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:all (3) (member=Yes, owner=No)','2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(3,NULL,NULL,NULL,7,NULL,NULL,NULL,'PCGM','Provisioned Guests/Sponsored Accounts','2020-12-28 01:26:49','2020-12-28 01:26:49',NULL,0,0,'Shell user \"www-data\"'),(4,NULL,NULL,NULL,8,NULL,NULL,NULL,'PCGM','Provisioned Guests/Sponsored Accounts','2020-12-28 01:26:49','2020-12-28 01:26:49',NULL,0,0,'Shell user \"www-data\"'),(5,NULL,NULL,NULL,9,NULL,NULL,NULL,'PCGM','Provisioned Guests/Sponsored Accounts','2020-12-28 01:26:49','2020-12-28 01:26:49',NULL,0,0,'Shell user \"www-data\"');
/*!40000 ALTER TABLE `cm_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_http_servers`
--

DROP TABLE IF EXISTS `cm_http_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_http_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `ssl_verify_peer` tinyint(1) DEFAULT NULL,
  `ssl_verify_host` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_http_servers_i1` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_http_servers`
--

LOCK TABLES `cm_http_servers` WRITE;
/*!40000 ALTER TABLE `cm_http_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_http_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_identifiers`
--

DROP TABLE IF EXISTS `cm_identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_identifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `source_identifier_id` int(11) DEFAULT NULL,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `identifier_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_identifiers_i1` (`identifier`(255),`type`,`co_person_id`),
  KEY `cm_identifiers_i2` (`identifier`(255),`type`,`org_identity_id`),
  KEY `cm_identifiers_i3` (`identifier_id`),
  KEY `cm_identifiers_i4` (`source_identifier_id`),
  KEY `cm_identifiers_i5` (`co_person_id`,`co_provisioning_target_id`),
  KEY `cm_identifiers_i6` (`co_department_id`),
  KEY `cm_identifiers_i7` (`co_person_id`),
  KEY `cm_identifiers_i8` (`org_identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_identifiers`
--

LOCK TABLES `cm_identifiers` WRITE;
/*!40000 ALTER TABLE `cm_identifiers` DISABLE KEYS */;
INSERT INTO `cm_identifiers` VALUES (1,'banderson','uid',1,'A',NULL,1,NULL,NULL,NULL,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_identifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ldap_servers`
--

DROP TABLE IF EXISTS `cm_ldap_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ldap_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `binddn` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `basedn` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ldap_servers_i1` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ldap_servers`
--

LOCK TABLES `cm_ldap_servers` WRITE;
/*!40000 ALTER TABLE `cm_ldap_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ldap_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_locks`
--

DROP TABLE IF EXISTS `cm_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_locks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `label` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_locks_i1` (`co_id`,`label`)
) ENGINE=InnoDB AUTO_INCREMENT=12086 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_locks`
--

LOCK TABLES `cm_locks` WRITE;
/*!40000 ALTER TABLE `cm_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_match_servers`
--

DROP TABLE IF EXISTS `cm_match_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_match_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `sor_label` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `is_comanage_match` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_match_servers_i1` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_match_servers`
--

LOCK TABLES `cm_match_servers` WRITE;
/*!40000 ALTER TABLE `cm_match_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_match_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_meta`
--

DROP TABLE IF EXISTS `cm_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_meta` (
  `upgrade_version` varchar(16) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_meta`
--

LOCK TABLES `cm_meta` WRITE;
/*!40000 ALTER TABLE `cm_meta` DISABLE KEYS */;
INSERT INTO `cm_meta` VALUES ('3.3.1');
/*!40000 ALTER TABLE `cm_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_names`
--

DROP TABLE IF EXISTS `cm_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `honorific` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `given` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `middle` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `family` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `suffix` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `primary_name` tinyint(1) DEFAULT NULL,
  `source_name_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_names_i1` (`name_id`),
  KEY `cm_names_i2` (`co_person_id`),
  KEY `cm_names_i3` (`org_identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_names`
--

LOCK TABLES `cm_names` WRITE;
/*!40000 ALTER TABLE `cm_names` DISABLE KEYS */;
INSERT INTO `cm_names` VALUES (1,NULL,'Registry',NULL,'Anderson',NULL,'official',NULL,NULL,1,1,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,NULL,'Registry',NULL,'Anderson',NULL,'official',NULL,1,NULL,1,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_navigation_links`
--

DROP TABLE IF EXISTS `cm_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_navigation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_bin NOT NULL,
  `url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `location` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_navigation_links`
--

LOCK TABLES `cm_navigation_links` WRITE;
/*!40000 ALTER TABLE `cm_navigation_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_oauth2_servers`
--

DROP TABLE IF EXISTS `cm_oauth2_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_oauth2_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `clientid` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `client_secret` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `access_grant_type` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `scope` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `refresh_token` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `access_token` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `token_response` longtext COLLATE utf8_bin,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_oauth2_servers_i1` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_oauth2_servers`
--

LOCK TABLES `cm_oauth2_servers` WRITE;
/*!40000 ALTER TABLE `cm_oauth2_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_oauth2_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_orcid_sources`
--

DROP TABLE IF EXISTS `cm_orcid_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_orcid_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_orcid_sources_i1` (`org_identity_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_orcid_sources`
--

LOCK TABLES `cm_orcid_sources` WRITE;
/*!40000 ALTER TABLE `cm_orcid_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_orcid_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identities`
--

DROP TABLE IF EXISTS `cm_org_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `affiliation` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `o` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `ou` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `co_id` int(11) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identities_i1` (`co_id`),
  KEY `cm_org_identities_i2` (`org_identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identities`
--

LOCK TABLES `cm_org_identities` WRITE;
/*!40000 ALTER TABLE `cm_org_identities` DISABLE KEYS */;
INSERT INTO `cm_org_identities` VALUES (1,NULL,NULL,'member',NULL,NULL,NULL,1,NULL,NULL,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_org_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identity_source_records`
--

DROP TABLE IF EXISTS `cm_org_identity_source_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identity_source_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `sorid` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `source_record` longtext COLLATE utf8_bin,
  `last_update` datetime DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_petition_id` int(11) DEFAULT NULL,
  `reference_identifier` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_source_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identity_source_records_i1` (`org_identity_source_id`,`sorid`(255)),
  KEY `cm_org_identity_source_records_i2` (`org_identity_id`),
  KEY `cm_org_identity_source_records_i3` (`org_identity_source_id`),
  KEY `cm_org_identity_source_records_i4` (`org_identity_source_record_id`),
  KEY `cm_org_identity_source_records_i5` (`co_petition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identity_source_records`
--

LOCK TABLES `cm_org_identity_source_records` WRITE;
/*!40000 ALTER TABLE `cm_org_identity_source_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_org_identity_source_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identity_sources`
--

DROP TABLE IF EXISTS `cm_org_identity_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identity_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `plugin` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `co_pipeline_id` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sync_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sync_query_mismatch_mode` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `sync_query_skip_known` tinyint(1) DEFAULT NULL,
  `sync_on_user_login` tinyint(1) DEFAULT NULL,
  `eppn_identifier_type` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `eppn_suffix` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `hash_source_record` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identity_sources_i1` (`co_id`),
  KEY `cm_org_identity_sources_i2` (`org_identity_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identity_sources`
--

LOCK TABLES `cm_org_identity_sources` WRITE;
/*!40000 ALTER TABLE `cm_org_identity_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_org_identity_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_servers`
--

DROP TABLE IF EXISTS `cm_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `server_type` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_servers_i1` (`co_id`),
  KEY `cm_servers_i2` (`co_id`,`server_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_servers`
--

LOCK TABLES `cm_servers` WRITE;
/*!40000 ALTER TABLE `cm_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_sql_servers`
--

DROP TABLE IF EXISTS `cm_sql_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_sql_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `type` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `hostname` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `databas` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_sql_servers_i1` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_sql_servers`
--

LOCK TABLES `cm_sql_servers` WRITE;
/*!40000 ALTER TABLE `cm_sql_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_sql_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ssh_key_authenticators`
--

DROP TABLE IF EXISTS `cm_ssh_key_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ssh_key_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_ssh_key_authenticators_i1` (`authenticator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ssh_key_authenticators`
--

LOCK TABLES `cm_ssh_key_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_ssh_key_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ssh_key_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ssh_keys`
--

DROP TABLE IF EXISTS `cm_ssh_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ssh_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssh_key_authenticator_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) NOT NULL,
  `comment` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `skey` text COLLATE utf8_bin,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ssh_key_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ssh_keys_i1` (`co_person_id`),
  KEY `cm_ssh_keys_i2` (`ssh_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ssh_keys`
--

LOCK TABLES `cm_ssh_keys` WRITE;
/*!40000 ALTER TABLE `cm_ssh_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ssh_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_telephone_numbers`
--

DROP TABLE IF EXISTS `cm_telephone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_telephone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `area_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `number` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `extension` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `source_telephone_number_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `telephone_number_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_telephone_numbers_i1` (`co_person_role_id`),
  KEY `cm_telephone_numbers_i2` (`org_identity_id`),
  KEY `cm_telephone_numbers_i3` (`telephone_number_id`),
  KEY `cm_telephone_numbers_i4` (`source_telephone_number_id`),
  KEY `cm_telephone_numbers_i5` (`co_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_telephone_numbers`
--

LOCK TABLES `cm_telephone_numbers` WRITE;
/*!40000 ALTER TABLE `cm_telephone_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_telephone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_urls`
--

DROP TABLE IF EXISTS `cm_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `source_url_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_urls_i1` (`co_person_id`),
  KEY `cm_urls_i2` (`org_identity_id`),
  KEY `cm_urls_i3` (`co_department_id`),
  KEY `cm_urls_i4` (`url_id`),
  KEY `cm_urls_i5` (`source_url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_urls`
--

LOCK TABLES `cm_urls` WRITE;
/*!40000 ALTER TABLE `cm_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_urls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-28  1:29:05
