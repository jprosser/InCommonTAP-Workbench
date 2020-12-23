USE registry;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_api_users`
--

LOCK TABLES `cm_api_users` WRITE;
/*!40000 ALTER TABLE `cm_api_users` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authentication_events`
--

LOCK TABLES `cm_authentication_events` WRITE;
/*!40000 ALTER TABLE `cm_authentication_events` DISABLE KEYS */;
INSERT INTO `cm_authentication_events` VALUES (1,'banderson','IN','172.18.0.10','2020-12-05 02:18:37','2020-12-05 02:18:37'),(2,'banderson','IN','172.18.0.10','2020-12-05 04:21:27','2020-12-05 04:21:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attribute_defaults`
--

LOCK TABLES `cm_co_enrollment_attribute_defaults` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attribute_defaults` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_attribute_defaults` VALUES (1,1,NULL,'',1,'2020-12-05 02:45:35','2020-12-05 02:45:35',NULL,0,0,'banderson');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attributes`
--

LOCK TABLES `cm_co_enrollment_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attributes` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_attributes` VALUES (1,1,'Untitled','','r:affiliation',1,'',1,0,0,NULL,'',0,'','2020-12-05 02:45:35','2020-12-05 02:45:35',NULL,0,0,'banderson');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_flows`
--

LOCK TABLES `cm_co_enrollment_flows` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_flows` DISABLE KEYS */;
INSERT INTO `cm_co_enrollment_flows` VALUES (1,'Untitled',2,'A',NULL,NULL,0,'A',0,NULL,NULL,'X',1440,0,NULL,'A','','Invitation to join (@CO_NAME)','You have been invited to join (@CO_NAME).\r\nPlease click the link below to accept or decline.\r\n\r\n(@INVITE_URL)',NULL,0,'Petition to join (@CO_NAME) has been approved','Your petition to join (@CO_NAME) as been approved. You may now log in to the platform.',NULL,NULL,0,NULL,'','','EC','','','','',NULL,'D',NULL,NULL,NULL,'2020-12-05 02:45:29','2020-12-05 02:45:29',NULL,0,0,'banderson');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_extended_types`
--

LOCK TABLES `cm_co_extended_types` WRITE;
/*!40000 ALTER TABLE `cm_co_extended_types` DISABLE KEYS */;
INSERT INTO `cm_co_extended_types` VALUES (1,1,'Address.type','campus','Campus',NULL,'A'),(2,1,'Address.type','home','Home',NULL,'A'),(3,1,'Address.type','office','Office',NULL,'A'),(4,1,'Address.type','postal','Postal',NULL,'A'),(5,1,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(6,1,'CoPersonRole.affiliation','student','Student',NULL,'A'),(7,1,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(8,1,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(9,1,'CoPersonRole.affiliation','member','Member',NULL,'A'),(10,1,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(11,1,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(12,1,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(13,1,'EmailAddress.type','delivery','Delivery',NULL,'A'),(14,1,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(15,1,'EmailAddress.type','list','Mailing List',NULL,'A'),(16,1,'EmailAddress.type','official','Official',NULL,'A'),(17,1,'EmailAddress.type','personal','Personal',NULL,'A'),(18,1,'EmailAddress.type','preferred','Preferred',NULL,'A'),(19,1,'EmailAddress.type','recovery','Recovery',NULL,'A'),(20,1,'Identifier.type','badge','Badge',NULL,'A'),(21,1,'Identifier.type','enterprise','Enterprise',NULL,'A'),(22,1,'Identifier.type','eppn','ePPN',NULL,'A'),(23,1,'Identifier.type','eptid','ePTID',NULL,'A'),(24,1,'Identifier.type','epuid','ePUID',NULL,'A'),(25,1,'Identifier.type','mail','Mail',NULL,'A'),(26,1,'Identifier.type','national','National',NULL,'A'),(27,1,'Identifier.type','network','Network',NULL,'A'),(28,1,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(29,1,'Identifier.type','openid','OpenID',NULL,'A'),(30,1,'Identifier.type','orcid','ORCID iD',NULL,'A'),(31,1,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(32,1,'Identifier.type','reference','Match Reference',NULL,'A'),(33,1,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(34,1,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(35,1,'Identifier.type','sorid','System of Record ID',NULL,'A'),(36,1,'Identifier.type','uid','UID',NULL,'A'),(37,1,'Name.type','alternate','Alternate',NULL,'A'),(38,1,'Name.type','author','Author',NULL,'A'),(39,1,'Name.type','fka','FKA',NULL,'A'),(40,1,'Name.type','official','Official',NULL,'A'),(41,1,'Name.type','preferred','Preferred',NULL,'A'),(42,1,'TelephoneNumber.type','campus','Campus',NULL,'A'),(43,1,'TelephoneNumber.type','fax','Fax',NULL,'A'),(44,1,'TelephoneNumber.type','home','Home',NULL,'A'),(45,1,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(46,1,'TelephoneNumber.type','office','Office',NULL,'A'),(47,1,'Url.type','official','Official',NULL,'A'),(48,1,'Url.type','personal','Personal',NULL,'A'),(49,1,'CoDepartment.type','vo','VO',NULL,'A'),(50,1,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(51,1,'CoDepartment.type','department','Department',NULL,'A'),(52,2,'Address.type','campus','Campus',NULL,'A'),(53,2,'Address.type','home','Home',NULL,'A'),(54,2,'Address.type','office','Office',NULL,'A'),(55,2,'Address.type','postal','Postal',NULL,'A'),(56,2,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(57,2,'CoPersonRole.affiliation','student','Student',NULL,'A'),(58,2,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(59,2,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(60,2,'CoPersonRole.affiliation','member','Member',NULL,'A'),(61,2,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(62,2,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(63,2,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(64,2,'EmailAddress.type','delivery','Delivery',NULL,'A'),(65,2,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(66,2,'EmailAddress.type','list','Mailing List',NULL,'A'),(67,2,'EmailAddress.type','official','Official',NULL,'A'),(68,2,'EmailAddress.type','personal','Personal',NULL,'A'),(69,2,'EmailAddress.type','preferred','Preferred',NULL,'A'),(70,2,'EmailAddress.type','recovery','Recovery',NULL,'A'),(71,2,'Identifier.type','badge','Badge',NULL,'A'),(72,2,'Identifier.type','enterprise','Enterprise',NULL,'A'),(73,2,'Identifier.type','eppn','ePPN',NULL,'A'),(74,2,'Identifier.type','eptid','ePTID',NULL,'A'),(75,2,'Identifier.type','epuid','ePUID',NULL,'A'),(76,2,'Identifier.type','mail','Mail',NULL,'A'),(77,2,'Identifier.type','national','National',NULL,'A'),(78,2,'Identifier.type','network','Network',NULL,'A'),(79,2,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(80,2,'Identifier.type','openid','OpenID',NULL,'A'),(81,2,'Identifier.type','orcid','ORCID iD',NULL,'A'),(82,2,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(83,2,'Identifier.type','reference','Match Reference',NULL,'A'),(84,2,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(85,2,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(86,2,'Identifier.type','sorid','System of Record ID',NULL,'A'),(87,2,'Identifier.type','uid','UID',NULL,'A'),(88,2,'Name.type','alternate','Alternate',NULL,'A'),(89,2,'Name.type','author','Author',NULL,'A'),(90,2,'Name.type','fka','FKA',NULL,'A'),(91,2,'Name.type','official','Official',NULL,'A'),(92,2,'Name.type','preferred','Preferred',NULL,'A'),(93,2,'TelephoneNumber.type','campus','Campus',NULL,'A'),(94,2,'TelephoneNumber.type','fax','Fax',NULL,'A'),(95,2,'TelephoneNumber.type','home','Home',NULL,'A'),(96,2,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(97,2,'TelephoneNumber.type','office','Office',NULL,'A'),(98,2,'Url.type','official','Official',NULL,'A'),(99,2,'Url.type','personal','Personal',NULL,'A'),(100,2,'CoDepartment.type','vo','VO',NULL,'A'),(101,2,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(102,2,'CoDepartment.type','department','Department',NULL,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_groups`
--

LOCK TABLES `cm_co_groups` WRITE;
/*!40000 ALTER TABLE `cm_co_groups` DISABLE KEYS */;
INSERT INTO `cm_co_groups` VALUES (1,1,NULL,'CO:admins','COmanage Administrators',0,'A','A',0,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,'CO:members:active','COmanage Active Members',0,'A','MA',1,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(3,1,NULL,'CO:members:all','COmanage Members',0,'A','M',1,'2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(4,2,NULL,'CO:admins','test Administrators',0,'A','A',0,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson'),(5,2,NULL,'CO:members:active','test Active Members',0,'A','MA',1,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson'),(6,2,NULL,'CO:members:all','test Members',0,'A','M',1,'2020-12-05 02:25:23','2020-12-05 02:25:23',NULL,0,0,'banderson');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_identifier_assignments`
--

LOCK TABLES `cm_co_identifier_assignments` WRITE;
/*!40000 ALTER TABLE `cm_co_identifier_assignments` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_job_history_records`
--

LOCK TABLES `cm_co_job_history_records` WRITE;
/*!40000 ALTER TABLE `cm_co_job_history_records` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_jobs`
--

LOCK TABLES `cm_co_jobs` WRITE;
/*!40000 ALTER TABLE `cm_co_jobs` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attr_groupings`
--

LOCK TABLES `cm_co_ldap_provisioner_attr_groupings` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attr_groupings` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_attr_groupings` VALUES (1,1,'address','office','2020-12-05 04:48:52','2020-12-05 04:49:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attributes`
--

LOCK TABLES `cm_co_ldap_provisioner_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attributes` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_attributes` VALUES (1,1,'sn','person',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(2,1,'cn','person',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(3,1,'userPassword','person',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(4,1,'pwdAccountLockedTime','person',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(5,1,'title','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(6,1,'ou','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(7,1,'telephoneNumber','organizationalPerson','office',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(8,1,'facsimileTelephoneNumber','organizationalPerson','fax',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(9,1,'street','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(10,1,'l','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(11,1,'st','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(12,1,'postalCode','organizationalPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(13,1,'givenName','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(14,1,'displayName','inetOrgPerson','preferred',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(15,1,'o','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(16,1,'labeledURI','inetOrgPerson','official',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(17,1,'mail','inetOrgPerson','official',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(18,1,'mobile','inetOrgPerson','mobile',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(19,1,'employeeNumber','inetOrgPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(20,1,'employeeType','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(21,1,'roomNumber','inetOrgPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(22,1,'uid','inetOrgPerson','uid',0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(23,1,'eduPersonAffiliation','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(24,1,'eduPersonEntitlement','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(25,1,'eduPersonNickname','eduPerson','preferred',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(26,1,'eduPersonOrcid','eduPerson',NULL,0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(27,1,'eduPersonPrincipalName','eduPerson','eppn',0,0,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(28,1,'eduPersonPrincipalNamePrior','eduPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(29,1,'eduPersonScopedAffiliation','eduPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(30,1,'eduPersonUniqueId','eduPerson','enterprise',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(31,1,'cn','groupOfNames',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(32,1,'member','groupOfNames',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(33,1,'owner','groupOfNames',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(34,1,'description','groupOfNames',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(35,1,'isMemberOf','eduMember',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(36,1,'hasMember','eduMember','uid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(37,1,'cn','posixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(38,1,'gidNumber','posixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(39,1,'memberUid','posixGroup',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(40,1,'sshPublicKey','ldapPublicKey',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(41,1,'voPersonAffiliation','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(42,1,'voPersonApplicationPassword','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(43,1,'voPersonApplicationUID','voPerson','uid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(44,1,'voPersonAuthorName','voPerson','author',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(45,1,'voPersonCertificateDN','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(46,1,'voPersonCertificateIssuerDN','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(47,1,'voPersonExternalID','voPerson','eppn',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(48,1,'voPersonID','voPerson','enterprise',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(49,1,'voPersonPolicyAgreement','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(50,1,'voPersonSoRID','voPerson','sorid',0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(51,1,'voPersonStatus','voPerson',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(52,1,'voPosixAccountUidNumber','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(53,1,'voPosixAccountGidNumber','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(54,1,'voPosixAccountHomeDirectory','voPosixAccount',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(55,1,'voPosixAccountLoginShell','voPosixAccount',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(56,1,'voPosixAccountGecos','voPosixAccount',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(57,1,'cn','voPosixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(58,1,'voPosixAccountGidNumber','voPosixGroup',NULL,1,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52'),(59,1,'memberUid','voPosixGroup',NULL,0,NULL,'2020-12-05 04:48:52','2020-12-05 04:49:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_targets`
--

LOCK TABLES `cm_co_ldap_provisioner_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_targets` DISABLE KEYS */;
INSERT INTO `cm_co_ldap_provisioner_targets` VALUES (1,1,'ldap://directory','cn=admin,dc=internet2,dc=edu','password','ou=guests,dc=internet2,dc=edu','badge','badge','','','',0,'','R',1,0,0,0,0,0,0,NULL,0,0,'2020-12-05 02:25:55','2020-12-05 04:49:52');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_exports`
--

LOCK TABLES `cm_co_provisioning_exports` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_exports` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_targets`
--

LOCK TABLES `cm_co_provisioning_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_targets` DISABLE KEYS */;
INSERT INTO `cm_co_provisioning_targets` VALUES (1,2,'test','LdapProvisioner',NULL,NULL,'A',1,'2020-12-05 02:25:55','2020-12-05 02:25:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cos`
--

LOCK TABLES `cm_cos` WRITE;
/*!40000 ALTER TABLE `cm_cos` DISABLE KEYS */;
INSERT INTO `cm_cos` VALUES (1,'COmanage','COmanage Registry Internal CO','A','2020-12-05 02:15:59','2020-12-05 02:15:59'),(2,'test','','A','2020-12-05 02:25:23','2020-12-05 02:25:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_history_records`
--

LOCK TABLES `cm_history_records` WRITE;
/*!40000 ALTER TABLE `cm_history_records` DISABLE KEYS */;
INSERT INTO `cm_history_records` VALUES (1,1,NULL,NULL,2,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:active (2) (member=Yes, owner=No)','2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,NULL,3,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:all (3) (member=Yes, owner=No)','2020-12-05 02:15:59','2020-12-05 02:15:59',NULL,0,0,'Shell user \"root\"');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
