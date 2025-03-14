-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm725h8
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm725h8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm725h8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm725h8/upload/1615524941935.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgonggaoxinxi`
--

DROP TABLE IF EXISTS `discussgonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525080226 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgonggaoxinxi`
--

LOCK TABLES `discussgonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussgonggaoxinxi` DISABLE KEYS */;
INSERT INTO `discussgonggaoxinxi` VALUES (141,'2021-03-12 04:43:43',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-12 04:43:43',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-12 04:43:43',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-12 04:43:43',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-12 04:43:43',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-12 04:43:43',6,6,'用户名6','评论内容6','回复内容6'),(1615525080225,'2021-03-12 04:57:59',1615524760581,1615524973254,NULL,'是所有图书都只能借30天吗',NULL);
/*!40000 ALTER TABLE `discussgonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuxinxi`
--

DROP TABLE IF EXISTS `discusstushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuxinxi`
--

LOCK TABLES `discusstushuxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuxinxi` VALUES (151,'2021-03-12 04:43:43',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-12 04:43:43',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-12 04:43:43',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-12 04:43:43',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-12 04:43:43',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-12 04:43:43',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fajinjiaona`
--

DROP TABLE IF EXISTS `fajinjiaona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fajinjiaona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `guihairiqi` varchar(200) DEFAULT NULL COMMENT '归还日期',
  `chanshengfajin` int(11) DEFAULT NULL COMMENT '产生罚金',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525560280 DEFAULT CHARSET=utf8 COMMENT='罚金缴纳';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fajinjiaona`
--

LOCK TABLES `fajinjiaona` WRITE;
/*!40000 ALTER TABLE `fajinjiaona` DISABLE KEYS */;
INSERT INTO `fajinjiaona` VALUES (71,'2021-03-12 04:43:43','借阅单号1','图书名称1','借阅日期1','归还日期1',1,'2021-03-12','用户名1','联系电话1','未支付'),(72,'2021-03-12 04:43:43','借阅单号2','图书名称2','借阅日期2','归还日期2',2,'2021-03-12','用户名2','联系电话2','未支付'),(73,'2021-03-12 04:43:43','借阅单号3','图书名称3','借阅日期3','归还日期3',3,'2021-03-12','用户名3','联系电话3','未支付'),(74,'2021-03-12 04:43:43','借阅单号4','图书名称4','借阅日期4','归还日期4',4,'2021-03-12','用户名4','联系电话4','未支付'),(75,'2021-03-12 04:43:43','借阅单号5','图书名称5','借阅日期5','归还日期5',5,'2021-03-12','用户名5','联系电话5','未支付'),(76,'2021-03-12 04:43:43','借阅单号6','图书名称6','借阅日期6','归还日期6',6,'2021-03-12','用户名6','联系电话6','未支付'),(1615525560279,'2021-03-12 05:05:59','202131212584013411208','晚熟的人','2021-03-12','2021-04-29',10,'2021-03-12','1','12312312312','已支付');
/*!40000 ALTER TABLE `fajinjiaona` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615525169663 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (111,'2021-03-12 04:43:43','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(112,'2021-03-12 04:43:43','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(113,'2021-03-12 04:43:43','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(114,'2021-03-12 04:43:43','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(115,'2021-03-12 04:43:43','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(116,'2021-03-12 04:43:43','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615525160473,'2021-03-12 04:59:19','励志类书籍推荐','<p>有没有励志类的书籍推荐呢</p>',0,1615524973254,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615524760582 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-03-12 04:43:43','公告标题1','类型1','http://localhost:8080/jspm725h8/upload/1615524360953.jpg','内容1\r\n','2021-03-12'),(12,'2021-03-12 04:43:43','公告标题2','类型2','http://localhost:8080/jspm725h8/upload/1615524366415.jpg','内容2\r\n','2021-03-12'),(13,'2021-03-12 04:43:43','公告标题3','类型3','http://localhost:8080/jspm725h8/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-03-12'),(14,'2021-03-12 04:43:43','公告标题4','类型4','http://localhost:8080/jspm725h8/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-03-12'),(15,'2021-03-12 04:43:43','公告标题5','类型5','http://localhost:8080/jspm725h8/upload/1615524435219.jpg','内容5\r\n','2021-03-12'),(16,'2021-03-12 04:43:43','公告标题6','类型6','http://localhost:8080/jspm725h8/upload/1615524441359.jpg','内容6\r\n','2021-03-12'),(1615524760581,'2021-03-12 04:52:40','关于图书借阅通知','图书借阅','http://localhost:8080/jspm725h8/upload/1615524718134.jpg','图书借阅的总本书为5本\r\n借阅周期为30天，如超过规定的借阅天数，需要缴纳一定的罚金；\r\n<img src=\"http://localhost:8080/jspm725h8/upload/1615524758897.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm725h8/upload/1615524758897.jpg\">\r\n','2021-03-12');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meiripandian`
--

DROP TABLE IF EXISTS `meiripandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meiripandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `pandianshuliang` int(11) DEFAULT NULL COMMENT '盘点数量',
  `chayishuliang` varchar(200) DEFAULT NULL COMMENT '差异数量',
  `chayishuoming` varchar(200) DEFAULT NULL COMMENT '差异说明',
  `pandianshijian` datetime DEFAULT NULL COMMENT '盘点时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525638446 DEFAULT CHARSET=utf8 COMMENT='每日盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meiripandian`
--

LOCK TABLES `meiripandian` WRITE;
/*!40000 ALTER TABLE `meiripandian` DISABLE KEYS */;
INSERT INTO `meiripandian` VALUES (101,'2021-03-12 04:43:43','图书名称1','图书分类1',1,1,'差异数量1','差异说明1','2021-03-12 12:43:43'),(102,'2021-03-12 04:43:43','图书名称2','图书分类2',2,2,'差异数量2','差异说明2','2021-03-12 12:43:43'),(103,'2021-03-12 04:43:43','图书名称3','图书分类3',3,3,'差异数量3','差异说明3','2021-03-12 12:43:43'),(104,'2021-03-12 04:43:43','图书名称4','图书分类4',4,4,'差异数量4','差异说明4','2021-03-12 12:43:43'),(105,'2021-03-12 04:43:43','图书名称5','图书分类5',5,5,'差异数量5','差异说明5','2021-03-12 12:43:43'),(106,'2021-03-12 04:43:43','图书名称6','图书分类6',6,6,'差异数量6','差异说明6','2021-03-12 12:43:43'),(1615525638445,'2021-03-12 05:07:18','晚熟的人','文学小说',23,22,'1','丢失','2021-03-12 10:10:04');
/*!40000 ALTER TABLE `meiripandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525201485 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2021-03-12 04:43:43',1,'用户名1','留言内容1','回复内容1'),(132,'2021-03-12 04:43:43',2,'用户名2','留言内容2','回复内容2'),(133,'2021-03-12 04:43:43',3,'用户名3','留言内容3','回复内容3'),(134,'2021-03-12 04:43:43',4,'用户名4','留言内容4','回复内容4'),(135,'2021-03-12 04:43:43',5,'用户名5','留言内容5','回复内容5'),(136,'2021-03-12 04:43:43',6,'用户名6','留言内容6','回复内容6'),(1615525201484,'2021-03-12 05:00:00',1615524973254,'1','请问有少儿类书籍吗','有的');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615525092903 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615525092902,'2021-03-12 04:58:12',1615524973254,1615524842002,'tushuxinxi','晚熟的人','http://localhost:8080/jspm725h8/upload/1615524806153.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','cj2hi3il2m4a0k4u4oeb8xv92p9yv5w7','2021-03-12 04:45:29','2021-03-12 06:06:29'),(2,1615524973254,'1','yonghu','用户','obsq75o38kvgn4lj3gwh2w4ak7lyxol2','2021-03-12 04:56:57','2021-03-12 06:06:12');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuchuku`
--

DROP TABLE IF EXISTS `tushuchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `chukuleixing` varchar(200) DEFAULT NULL COMMENT '出库类型',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525320498 DEFAULT CHARSET=utf8 COMMENT='图书出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuchuku`
--

LOCK TABLES `tushuchuku` WRITE;
/*!40000 ALTER TABLE `tushuchuku` DISABLE KEYS */;
INSERT INTO `tushuchuku` VALUES (91,'2021-03-12 04:43:43','图书名称1','图书分类1','作者1','出版社1',1,'借阅','2021-03-12'),(92,'2021-03-12 04:43:43','图书名称2','图书分类2','作者2','出版社2',2,'借阅','2021-03-12'),(93,'2021-03-12 04:43:43','图书名称3','图书分类3','作者3','出版社3',3,'借阅','2021-03-12'),(94,'2021-03-12 04:43:43','图书名称4','图书分类4','作者4','出版社4',4,'借阅','2021-03-12'),(95,'2021-03-12 04:43:43','图书名称5','图书分类5','作者5','出版社5',5,'借阅','2021-03-12'),(96,'2021-03-12 04:43:43','图书名称6','图书分类6','作者6','出版社6',6,'借阅','2021-03-12'),(1615524870665,'2021-03-12 04:54:30','晚熟的人','文学小说','莫言','人民文学出版社',2,'销毁','2021-03-12'),(1615525320497,'2021-03-12 05:01:59','晚熟的人','文学小说','莫言','人民文学出版社',1,'借阅','2021-03-12');
/*!40000 ALTER TABLE `tushuchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615524780192 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (31,'2021-03-12 04:43:43','图书分类1'),(32,'2021-03-12 04:43:43','图书分类2'),(33,'2021-03-12 04:43:43','图书分类3'),(34,'2021-03-12 04:43:43','图书分类4'),(35,'2021-03-12 04:43:43','图书分类5'),(36,'2021-03-12 04:43:43','图书分类6'),(1615524773464,'2021-03-12 04:52:52','文学小说'),(1615524780191,'2021-03-12 04:52:59','经管励志');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguihai`
--

DROP TABLE IF EXISTS `tushuguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525417754 DEFAULT CHARSET=utf8 COMMENT='图书归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguihai`
--

LOCK TABLES `tushuguihai` WRITE;
/*!40000 ALTER TABLE `tushuguihai` DISABLE KEYS */;
INSERT INTO `tushuguihai` VALUES (61,'2021-03-12 04:43:43','借阅单号1','图书名称1','图书分类1','http://localhost:8080/jspm725h8/upload/1615524566226.jpg','可借天数1','借阅日期1','2021-03-12','用户名1','联系电话1','是',''),(62,'2021-03-12 04:43:43','借阅单号2','图书名称2','图书分类2','http://localhost:8080/jspm725h8/upload/1615524571509.jpg','可借天数2','借阅日期2','2021-03-12','用户名2','联系电话2','是',''),(63,'2021-03-12 04:43:43','借阅单号3','图书名称3','图书分类3','http://localhost:8080/jspm725h8/upload/1615524577069.jpg','可借天数3','借阅日期3','2021-03-12','用户名3','联系电话3','是',''),(64,'2021-03-12 04:43:43','借阅单号4','图书名称4','图书分类4','http://localhost:8080/jspm725h8/upload/tushuguihai_tupian4.jpg','可借天数4','借阅日期4','2021-03-12','用户名4','联系电话4','是',''),(65,'2021-03-12 04:43:43','借阅单号5','图书名称5','图书分类5','http://localhost:8080/jspm725h8/upload/1615524587082.jpg','可借天数5','借阅日期5','2021-03-12','用户名5','联系电话5','是',''),(66,'2021-03-12 04:43:43','借阅单号6','图书名称6','图书分类6','http://localhost:8080/jspm725h8/upload/1615524609228.jpg','可借天数6','借阅日期6','2021-03-12','用户名6','联系电话6','是',''),(1615525417753,'2021-03-12 05:03:37','202131212584013411208','晚熟的人','文学小说','http://localhost:8080/jspm725h8/upload/1615524806153.jpg','30','2021-03-12','2021-04-29','1','12312312312','是','超过规定天数17天，产生罚金10元');
/*!40000 ALTER TABLE `tushuguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushujieyue`
--

DROP TABLE IF EXISTS `tushujieyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushujieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `kejieshuliang` varchar(200) DEFAULT NULL COMMENT '可借数量',
  `jieyueriqi` date NOT NULL COMMENT '借阅日期',
  `jieyuetianshu` varchar(200) NOT NULL COMMENT '借阅天数',
  `yinghairiqi` date NOT NULL COMMENT '应还日期',
  `jieyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '借阅状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuedanhao` (`jieyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525132462 DEFAULT CHARSET=utf8 COMMENT='图书借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushujieyue`
--

LOCK TABLES `tushujieyue` WRITE;
/*!40000 ALTER TABLE `tushujieyue` DISABLE KEYS */;
INSERT INTO `tushujieyue` VALUES (51,'2021-03-12 04:43:43','借阅单号1','图书名称1','图书分类1','http://localhost:8080/jspm725h8/upload/1615524529045.jpg','可借天数1','可借数量1','2021-03-12','借阅天数1','2021-03-12','借阅','用户名1','联系电话1','是',''),(52,'2021-03-12 04:43:43','借阅单号2','图书名称2','图书分类2','http://localhost:8080/jspm725h8/upload/1615524534880.jpg','可借天数2','可借数量2','2021-03-12','借阅天数2','2021-03-12','借阅','用户名2','联系电话2','是',''),(53,'2021-03-12 04:43:43','借阅单号3','图书名称3','图书分类3','http://localhost:8080/jspm725h8/upload/1615524540256.jpg','可借天数3','可借数量3','2021-03-12','借阅天数3','2021-03-12','借阅','用户名3','联系电话3','是',''),(54,'2021-03-12 04:43:43','借阅单号4','图书名称4','图书分类4','http://localhost:8080/jspm725h8/upload/1615524548365.jpg','可借天数4','可借数量4','2021-03-12','借阅天数4','2021-03-12','借阅','用户名4','联系电话4','是',''),(55,'2021-03-12 04:43:43','借阅单号5','图书名称5','图书分类5','http://localhost:8080/jspm725h8/upload/1615524554871.jpg','可借天数5','可借数量5','2021-03-12','借阅天数5','2021-03-12','借阅','用户名5','联系电话5','是',''),(56,'2021-03-12 04:43:43','借阅单号6','图书名称6','图书分类6','http://localhost:8080/jspm725h8/upload/tushujieyue_tupian6.jpg','可借天数6','可借数量6','2021-03-12','借阅天数6','2021-03-12','借阅','用户名6','联系电话6','是',''),(1615525132461,'2021-03-12 04:58:51','202131212584013411208','晚熟的人','文学小说','http://localhost:8080/jspm725h8/upload/1615524806153.jpg','30','5','2021-03-12','30','2021-04-12','已归还','1','12312312312','是','ok');
/*!40000 ALTER TABLE `tushujieyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuruku`
--

DROP TABLE IF EXISTS `tushuruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukuleixing` varchar(200) DEFAULT NULL COMMENT '入库类型',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615525485145 DEFAULT CHARSET=utf8 COMMENT='图书入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuruku`
--

LOCK TABLES `tushuruku` WRITE;
/*!40000 ALTER TABLE `tushuruku` DISABLE KEYS */;
INSERT INTO `tushuruku` VALUES (81,'2021-03-12 04:43:43','图书名称1','图书分类1','作者1','出版社1',1,'采购','2021-03-12'),(82,'2021-03-12 04:43:43','图书名称2','图书分类2','作者2','出版社2',2,'采购','2021-03-12'),(83,'2021-03-12 04:43:43','图书名称3','图书分类3','作者3','出版社3',3,'采购','2021-03-12'),(84,'2021-03-12 04:43:43','图书名称4','图书分类4','作者4','出版社4',4,'采购','2021-03-12'),(85,'2021-03-12 04:43:43','图书名称5','图书分类5','作者5','出版社5',5,'采购','2021-03-12'),(86,'2021-03-12 04:43:43','图书名称6','图书分类6','作者6','出版社6',6,'采购','2021-03-12'),(1615524855223,'2021-03-12 04:54:15','晚熟的人','文学小说','莫言','人民文学出版社',5,'采购','2021-03-12'),(1615525485144,'2021-03-12 05:04:44','晚熟的人','文学小说','莫言','人民文学出版社',1,'归还','2021-03-12');
/*!40000 ALTER TABLE `tushuruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `kejietianshu` int(11) NOT NULL COMMENT '可借天数',
  `kejieshuliang` int(11) NOT NULL COMMENT '可借数量',
  `tushujianjie` longtext COMMENT '图书简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615524842003 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (41,'2021-03-12 04:43:43','图书名称1','图书分类1','http://localhost:8080/jspm725h8/upload/1615524449989.jpg','作者1','出版社1',1,1,1,'图书简介1\r\n','2021-03-12 12:47:27',3),(42,'2021-03-12 04:43:43','图书名称2','图书分类2','http://localhost:8080/jspm725h8/upload/1615524457419.jpg','作者2','出版社2',2,2,2,'图书简介2\r\n','2021-03-12 12:47:35',4),(43,'2021-03-12 04:43:43','图书名称3','图书分类3','http://localhost:8080/jspm725h8/upload/1615524464851.jpg','作者3','出版社3',3,3,3,'图书简介3\r\n','2021-03-12 12:47:42',5),(44,'2021-03-12 04:43:43','图书名称4','图书分类4','http://localhost:8080/jspm725h8/upload/1615524487907.jpg','作者4','出版社4',4,4,4,'图书简介4\r\n','2021-03-12 12:48:02',6),(45,'2021-03-12 04:43:43','图书名称5','图书分类5','http://localhost:8080/jspm725h8/upload/1615524518775.jpg','作者5','出版社5',5,5,5,'图书简介5\r\n','2021-03-12 12:48:34',9),(46,'2021-03-12 04:43:43','图书名称6','图书分类6','http://localhost:8080/jspm725h8/upload/1615524500903.jpg','作者6','出版社6',6,6,6,'图书简介6\r\n','2021-03-12 12:57:24',12),(1615524842002,'2021-03-12 04:54:01','晚熟的人','文学小说','http://localhost:8080/jspm725h8/upload/1615524806153.jpg','莫言','人民文学出版社',23,30,5,'莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外；\r\n','2021-03-12 13:07:05',8);
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-12 04:43:43');
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615524973255 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-03-12 04:43:43','用户1','123456','姓名1','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(22,'2021-03-12 04:43:43','用户2','123456','姓名2','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(23,'2021-03-12 04:43:43','用户3','123456','姓名3','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(24,'2021-03-12 04:43:43','用户4','123456','姓名4','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(25,'2021-03-12 04:43:43','用户5','123456','姓名5','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(26,'2021-03-12 04:43:43','用户6','123456','姓名6','男','http://localhost:8080/jspm725h8/upload/yonghu_touxiang6.jpg','13823888886','440300199606060006'),(1615524973254,'2021-03-12 04:56:13','1','1','陈一','女','http://localhost:8080/jspm725h8/upload/1615525027448.jpg','12312312312','123456789789456123');
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

-- Dump completed on 2021-03-13 21:13:32
