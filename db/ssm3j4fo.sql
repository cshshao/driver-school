-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3j4fo
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8081/ssm3j4fo/upload/picture1.jpg'),(2,'picture2','http://localhost:8081/ssm3j4fo/upload/picture2.jpg'),(3,'picture3','http://localhost:8081/ssm3j4fo/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiakaohuhang`
--

DROP TABLE IF EXISTS `discussjiakaohuhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiakaohuhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='驾考护航评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiakaohuhang`
--

LOCK TABLES `discussjiakaohuhang` WRITE;
/*!40000 ALTER TABLE `discussjiakaohuhang` DISABLE KEYS */;
INSERT INTO `discussjiakaohuhang` VALUES (141,'2021-03-22 03:03:55',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-22 03:03:55',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-22 03:03:55',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-22 03:03:55',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-22 03:03:55',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-22 03:03:55',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiakaohuhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiaxiaojiaolian`
--

DROP TABLE IF EXISTS `discussjiaxiaojiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiaxiaojiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='驾校教练评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiaxiaojiaolian`
--

LOCK TABLES `discussjiaxiaojiaolian` WRITE;
/*!40000 ALTER TABLE `discussjiaxiaojiaolian` DISABLE KEYS */;
INSERT INTO `discussjiaxiaojiaolian` VALUES (131,'2021-03-22 03:03:55',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-22 03:03:55',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-22 03:03:55',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-22 03:03:55',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-22 03:03:55',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-22 03:03:55',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiaxiaojiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiaxiaoxinxi`
--

DROP TABLE IF EXISTS `discussjiaxiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiaxiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='驾校信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiaxiaoxinxi`
--

LOCK TABLES `discussjiaxiaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiaxiaoxinxi` DISABLE KEYS */;
INSERT INTO `discussjiaxiaoxinxi` VALUES (121,'2021-03-22 03:03:55',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-22 03:03:55',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-22 03:03:55',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-22 03:03:55',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-22 03:03:55',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-22 03:03:55',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiaxiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-22 03:03:55','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-22 03:03:55','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-22 03:03:55','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-22 03:03:55','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-22 03:03:55','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-22 03:03:55','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiakaohuhang`
--

DROP TABLE IF EXISTS `jiakaohuhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiakaohuhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `ziliao` varchar(200) DEFAULT NULL COMMENT '资料',
  `jianjie` longtext COMMENT '简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='驾考护航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiakaohuhang`
--

LOCK TABLES `jiakaohuhang` WRITE;
/*!40000 ALTER TABLE `jiakaohuhang` DISABLE KEYS */;
INSERT INTO `jiakaohuhang` VALUES (41,'2021-03-22 03:03:55','标题1','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian1.jpg','','','简介1',1,1),(42,'2021-03-22 03:03:55','标题2','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian2.jpg','','','简介2',2,2),(43,'2021-03-22 03:03:55','标题3','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian3.jpg','','','简介3',3,3),(44,'2021-03-22 03:03:55','标题4','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian4.jpg','','','简介4',4,4),(45,'2021-03-22 03:03:55','标题5','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian5.jpg','','','简介5',5,5),(46,'2021-03-22 03:03:55','标题6','科目一','http://localhost:8081/ssm3j4fo/upload/jiakaohuhang_fengmian6.jpg','','','简介6',6,6);
/*!40000 ALTER TABLE `jiakaohuhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaxiaobaoming`
--

DROP TABLE IF EXISTS `jiaxiaobaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaxiaobaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `jiazhaoleixing` varchar(200) DEFAULT NULL COMMENT '驾照类型',
  `baomingfeiyong` varchar(200) DEFAULT NULL COMMENT '报名费用',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='驾校报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaxiaobaoming`
--

LOCK TABLES `jiaxiaobaoming` WRITE;
/*!40000 ALTER TABLE `jiaxiaobaoming` DISABLE KEYS */;
INSERT INTO `jiaxiaobaoming` VALUES (51,'2021-03-22 03:03:55','驾校名称1','驾照类型1','报名费用1','驾校地址1','账号1','姓名1','电话1','身份证1','2021-03-22','是','','未支付'),(52,'2021-03-22 03:03:55','驾校名称2','驾照类型2','报名费用2','驾校地址2','账号2','姓名2','电话2','身份证2','2021-03-22','是','','未支付'),(53,'2021-03-22 03:03:55','驾校名称3','驾照类型3','报名费用3','驾校地址3','账号3','姓名3','电话3','身份证3','2021-03-22','是','','未支付'),(54,'2021-03-22 03:03:55','驾校名称4','驾照类型4','报名费用4','驾校地址4','账号4','姓名4','电话4','身份证4','2021-03-22','是','','未支付'),(55,'2021-03-22 03:03:55','驾校名称5','驾照类型5','报名费用5','驾校地址5','账号5','姓名5','电话5','身份证5','2021-03-22','是','','未支付'),(56,'2021-03-22 03:03:55','驾校名称6','驾照类型6','报名费用6','驾校地址6','账号6','姓名6','电话6','身份证6','2021-03-22','是','','未支付');
/*!40000 ALTER TABLE `jiaxiaobaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaxiaojiaolian`
--

DROP TABLE IF EXISTS `jiaxiaojiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaxiaojiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `jiaoliandengji` varchar(200) DEFAULT NULL COMMENT '教练等级',
  `jiaolianzhaopian` varchar(200) DEFAULT NULL COMMENT '教练照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `jiaolianjieshao` longtext COMMENT '教练介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='驾校教练';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaxiaojiaolian`
--

LOCK TABLES `jiaxiaojiaolian` WRITE;
/*!40000 ALTER TABLE `jiaxiaojiaolian` DISABLE KEYS */;
INSERT INTO `jiaxiaojiaolian` VALUES (31,'2021-03-22 03:03:55','驾校名称1','教练姓名1','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian1.jpg','13823888881','驾校地址1','教练介绍1',1,1,'2021-03-22 11:03:55',1),(32,'2021-03-22 03:03:55','驾校名称2','教练姓名2','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian2.jpg','13823888882','驾校地址2','教练介绍2',2,2,'2021-03-22 11:03:55',2),(33,'2021-03-22 03:03:55','驾校名称3','教练姓名3','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian3.jpg','13823888883','驾校地址3','教练介绍3',3,3,'2021-03-22 11:03:55',3),(34,'2021-03-22 03:03:55','驾校名称4','教练姓名4','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian4.jpg','13823888884','驾校地址4','教练介绍4',4,4,'2021-03-22 11:03:55',4),(35,'2021-03-22 03:03:55','驾校名称5','教练姓名5','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian5.jpg','13823888885','驾校地址5','教练介绍5',5,5,'2021-03-22 11:03:55',5),(36,'2021-03-22 03:03:55','驾校名称6','教练姓名6','初级','http://localhost:8081/ssm3j4fo/upload/jiaxiaojiaolian_jiaolianzhaopian6.jpg','13823888886','驾校地址6','教练介绍6',6,6,'2021-03-22 11:03:55',6);
/*!40000 ALTER TABLE `jiaxiaojiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaxiaoxinxi`
--

DROP TABLE IF EXISTS `jiaxiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaxiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `jiazhaoleixing` varchar(200) DEFAULT NULL COMMENT '驾照类型',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaxiaozhaopian` varchar(200) DEFAULT NULL COMMENT '驾校照片',
  `baomingfeiyong` int(11) DEFAULT NULL COMMENT '报名费用',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `jiaxiaojianjie` longtext COMMENT '驾校简介',
  `jiaxiaoxiangqing` longtext COMMENT '驾校详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='驾校信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaxiaoxinxi`
--

LOCK TABLES `jiaxiaoxinxi` WRITE;
/*!40000 ALTER TABLE `jiaxiaoxinxi` DISABLE KEYS */;
INSERT INTO `jiaxiaoxinxi` VALUES (21,'2021-03-22 03:03:55','驾校名称1','A1','联系人1','13823888881','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian1.jpg',1,'驾校地址1','驾校简介1','驾校详情1',1,1,'2021-03-22 11:03:55',1),(22,'2021-03-22 03:03:55','驾校名称2','A1','联系人2','13823888882','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian2.jpg',2,'驾校地址2','驾校简介2','驾校详情2',2,2,'2021-03-22 11:03:55',2),(23,'2021-03-22 03:03:55','驾校名称3','A1','联系人3','13823888883','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian3.jpg',3,'驾校地址3','驾校简介3','驾校详情3',3,3,'2021-03-22 11:03:55',3),(24,'2021-03-22 03:03:55','驾校名称4','A1','联系人4','13823888884','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian4.jpg',4,'驾校地址4','驾校简介4','驾校详情4',4,4,'2021-03-22 11:03:55',4),(25,'2021-03-22 03:03:55','驾校名称5','A1','联系人5','13823888885','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian5.jpg',5,'驾校地址5','驾校简介5','驾校详情5',5,5,'2021-03-22 11:03:55',5),(26,'2021-03-22 03:03:55','驾校名称6','A1','联系人6','13823888886','http://localhost:8081/ssm3j4fo/upload/jiaxiaoxinxi_jiaxiaozhaopian6.jpg',6,'驾校地址6','驾校简介6','驾校详情6',6,6,'2021-03-22 11:03:55',6);
/*!40000 ALTER TABLE `jiaxiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-03-22 03:03:55','标题1','简介1','http://localhost:8081/ssm3j4fo/upload/news_picture1.jpg','内容1'),(112,'2021-03-22 03:03:55','标题2','简介2','http://localhost:8081/ssm3j4fo/upload/news_picture2.jpg','内容2'),(113,'2021-03-22 03:03:55','标题3','简介3','http://localhost:8081/ssm3j4fo/upload/news_picture3.jpg','内容3'),(114,'2021-03-22 03:03:55','标题4','简介4','http://localhost:8081/ssm3j4fo/upload/news_picture4.jpg','内容4'),(115,'2021-03-22 03:03:55','标题5','简介5','http://localhost:8081/ssm3j4fo/upload/news_picture5.jpg','内容5'),(116,'2021-03-22 03:03:55','标题6','简介6','http://localhost:8081/ssm3j4fo/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 03:03:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-22 03:03:54','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-22 03:03:54','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-22 03:03:54','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-22 03:03:54','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-22 03:03:55','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-22 03:03:55','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8081/ssm3j4fo/upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 11:11:47
