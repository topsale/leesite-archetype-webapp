/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17 : Database - leesite
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`leesite` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `leesite`;

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `title` varchar(64) DEFAULT NULL COMMENT '事件标题',
  `starttime` varchar(64) DEFAULT NULL COMMENT '事件开始时间',
  `endtime` varchar(64) DEFAULT NULL COMMENT '事件结束时间',
  `allday` varchar(64) DEFAULT NULL COMMENT '是否为全天时间',
  `color` varchar(64) DEFAULT NULL COMMENT '时间的背景色',
  `userid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历';

/*Data for the table `calendar` */

/*Table structure for table `case_one_to_many_first` */

DROP TABLE IF EXISTS `case_one_to_many_first`;

CREATE TABLE `case_one_to_many_first` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '编号',
  `startarea` varchar(64) DEFAULT NULL COMMENT '出发地',
  `endarea` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `case_one_to_many_main` varchar(64) DEFAULT NULL COMMENT '外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一对多子表1';

/*Data for the table `case_one_to_many_first` */

/*Table structure for table `case_one_to_many_main` */

DROP TABLE IF EXISTS `case_one_to_many_main`;

CREATE TABLE `case_one_to_many_main` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一对多主表';

/*Data for the table `case_one_to_many_main` */

/*Table structure for table `case_one_to_many_second` */

DROP TABLE IF EXISTS `case_one_to_many_second`;

CREATE TABLE `case_one_to_many_second` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `startarea` varchar(64) DEFAULT NULL COMMENT '出发地',
  `endarea` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `case_one_to_many_main` varchar(64) DEFAULT NULL COMMENT '外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一对多子表2';

/*Data for the table `case_one_to_many_second` */

/*Table structure for table `case_one_to_many_third` */

DROP TABLE IF EXISTS `case_one_to_many_third`;

CREATE TABLE `case_one_to_many_third` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `startarea` varchar(64) DEFAULT NULL COMMENT '出发地',
  `endarea` varchar(64) DEFAULT NULL COMMENT '目的地',
  `price` double DEFAULT NULL COMMENT '代理价格',
  `case_one_to_many_main` varchar(64) DEFAULT NULL COMMENT '外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一对多子表3';

/*Data for the table `case_one_to_many_third` */

/*Table structure for table `case_single_table` */

DROP TABLE IF EXISTS `case_single_table`;

CREATE TABLE `case_single_table` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '员工',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `begin_date` datetime DEFAULT NULL COMMENT '请假开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '请假结束日期',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(257) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单表';

/*Data for the table `case_single_table` */

/*Table structure for table `case_tree_table` */

DROP TABLE IF EXISTS `case_tree_table`;

CREATE TABLE `case_tree_table` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '所有父级编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构';

/*Data for the table `case_tree_table` */

/*Table structure for table `config_aliyun_oss` */

DROP TABLE IF EXISTS `config_aliyun_oss`;

CREATE TABLE `config_aliyun_oss` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oss_key` varchar(64) DEFAULT NULL COMMENT 'Key',
  `oss_secret` varchar(64) DEFAULT NULL COMMENT 'Secret',
  `bucket_name` varchar(100) DEFAULT NULL COMMENT 'Bucket Name',
  `oss_end_point` varchar(100) DEFAULT NULL COMMENT 'OSS End Point',
  `auto_create_bucket` varchar(2) DEFAULT NULL COMMENT '自动创建 Bucket',
  `baidu_use_status` varchar(2) DEFAULT NULL COMMENT '支持百度富文本',
  `use_cdn` varchar(2) DEFAULT NULL COMMENT '启用 CDN',
  `cdn_end_point` varchar(100) DEFAULT NULL COMMENT 'CDN End Point',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对象存储 OSS';

/*Data for the table `config_aliyun_oss` */

insert  into `config_aliyun_oss`(`id`,`oss_key`,`oss_secret`,`bucket_name`,`oss_end_point`,`auto_create_bucket`,`baidu_use_status`,`use_cdn`,`cdn_end_point`) values ('1','oss_key','oss_secret','bucket_name','oss_end_point','0','1','0','cdn_end_point');

/*Table structure for table `config_mail` */

DROP TABLE IF EXISTS `config_mail`;

CREATE TABLE `config_mail` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `mail_host` varchar(100) NOT NULL COMMENT '主机名',
  `mail_port` int(11) NOT NULL COMMENT '主机端口',
  `mail_username` varchar(100) NOT NULL COMMENT '邮箱地址',
  `mail_password` varchar(100) NOT NULL COMMENT '邮箱密码',
  `mail_from` varchar(100) NOT NULL COMMENT '发件人昵称',
  `mail_ssl` varchar(1) NOT NULL COMMENT '使用SSL/TLS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮箱配置';

/*Data for the table `config_mail` */

insert  into `config_mail`(`id`,`mail_host`,`mail_port`,`mail_username`,`mail_password`,`mail_from`,`mail_ssl`) values ('1','smtp.qq.com',25,'qq@qq.com','123456','LeeSite脚本架','0');

/*Table structure for table `config_sms` */

DROP TABLE IF EXISTS `config_sms`;

CREATE TABLE `config_sms` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `sms_access_id` varchar(64) NOT NULL COMMENT 'AccessId',
  `sms_access_key` varchar(64) NOT NULL COMMENT 'AccessKey',
  `sms_mns_endpoint` varchar(255) NOT NULL COMMENT 'MNSEndpoint',
  `sms_topic` varchar(255) NOT NULL COMMENT '主题',
  `sms_sign_name` varchar(20) NOT NULL COMMENT '签名',
  `test_number` varchar(20) NOT NULL COMMENT '测试手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信配置';

/*Data for the table `config_sms` */

insert  into `config_sms`(`id`,`sms_access_id`,`sms_access_key`,`sms_mns_endpoint`,`sms_topic`,`sms_sign_name`,`test_number`) values ('1','AccessId','AccessKey','MNSEndpoint','主题','签名','15888888888');

/*Table structure for table `config_sms_template` */

DROP TABLE IF EXISTS `config_sms_template`;

CREATE TABLE `config_sms_template` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '编号',
  `sms_template_name` varchar(20) NOT NULL COMMENT '模板名称',
  `sms_template_code` varchar(64) NOT NULL COMMENT '模板编码',
  `sms_template_type` varchar(2) NOT NULL COMMENT '模板类型',
  `sms_template_content` varchar(755) NOT NULL COMMENT '短信内容',
  `config_sms` varchar(64) NOT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信模板';

/*Data for the table `config_sms_template` */

insert  into `config_sms_template`(`id`,`sms_template_name`,`sms_template_code`,`sms_template_type`,`sms_template_content`,`config_sms`) values ('0cdeb13ad4114ecab1b85a8eda4e47da','找回密码','SMS_47915315','0','尊敬的用户，您好！您正在找回${name}的登录密码，本次操作验证码为：${code}，请妥善保管好您的账户信息。','1'),('253049c617fc489c8ea8ed174680392f','邮箱绑定','SMS_48040303','0','尊敬的用户，您好！您正在对用户${username}操作绑定邮箱，本次操作验证码为：${code}。如非本人操作，可不用理会。','1'),('65037198baca48f9bef791519963c3cb','短信测试','SMS_65295079','1','短信模块已配置成功','1'),('66ee4ccc93b64d02a0bcb9e8c37ecde6','手机绑定','SMS_47985289','0','尊敬的用户，您好！您正在对用户${username}操作绑定手机号，本次操作验证码为：${code}。如非本人操作，可不用理会。','1'),('a7bdd8a2d1d8472694d45324f1efa97a','注册通知','SMS_47935242','1','尊敬的用户，您好！您已成功注册${name}账号，登录账号：${username}，登录密码：${userpass}，如非本人操作请忽略。','1'),('c09a231a20dc49289a81131257b48613','修改密码','SMS_47850148','0','尊敬的用户，您好！您正在修改${name}的登录密码，本次操作验证码为：${code}，请妥善保管好您的账户信息。','1'),('cdde40a9070944d4800d60c8b3893131','领卡验证','SMS_47920279','0','尊敬的用户，您好！您的领卡验证码为：${code}，如非本人操作，可不用理会！','1'),('daf63fcc6337403599417554e7ac3d53','管理登录','SMS_47940270','0','尊敬的用户，您好！您的管理员登录验证码为：${code}','1'),('e6d21983484a4db1b098581f77832c1a','登录验证','SMS_47930300','0','尊敬的用户，您好！本次登录验证码：${code}。如非本人操作，可不用理会！','1'),('fb7a2962a36b43e29a7ebf75c68543e0','手机验证','SMS_47950113','0','尊敬的用户，您好！为了保证您的安全，本次操作的验证码是${code}，请在页面填写验证码完成验证，非常感谢您的支持与合作。','1');

/*Table structure for table `gen_scheme` */

DROP TABLE IF EXISTS `gen_scheme`;

CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';

/*Data for the table `gen_scheme` */

insert  into `gen_scheme`(`id`,`name`,`category`,`package_name`,`module_name`,`sub_module_name`,`function_name`,`function_name_simple`,`function_author`,`gen_table_id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('260aeea1c32b443b8f3bdefbe606d804','生成示例-树结构','treeTable','com.funtl.leesite.modules','cases',NULL,'生成示例','树结构','Lusifer','41766c72c2cf49b4a868d7998c55f8ab','1','2017-05-04 06:50:22','1','2017-05-06 02:01:22',NULL,'0'),('6a379df0dd42418d912c9ab4fadbb177','系统配置-邮箱配置','curd','com.funtl.leesite.modules','config',NULL,'邮箱配置','邮箱配置','Lusifer','b69d9b3502aa4659b684c8b8e7c83e64','1','2017-05-04 23:28:07','1','2017-05-04 23:28:13',NULL,'0'),('a4d57865b54e4c7f82ddad3609bcf7ac','系统配置-短信配置','curd_many','com.funtl.leesite.modules','config',NULL,'短信配置','短信配置','Lusifer','5ef5bbc328be43bbba6c23cd87f6f350','1','2017-05-05 04:50:31','1','2017-05-05 04:54:49',NULL,'0'),('a506f57b080046988aefeb489df31bd6','生成示例-单表','curd','com.funtl.leesite.modules','cases',NULL,'生成示例','单表','Lusifer','268bb6d890814477aebeb9b26be4c901','1','2017-05-04 00:33:26','1','2017-05-06 02:00:14',NULL,'0'),('e9b9257f5c6f40dd989ce22111e8df39','生成示例-一对多','curd_many','com.funtl.leesite.modules','cases',NULL,'生成示例','一对多','Lusifer','bfaab6ce57d94d50b21e918cbb829f1c','1','2017-05-04 08:34:14','1','2017-05-06 02:00:52',NULL,'0');

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `issync` varchar(45) DEFAULT NULL COMMENT '同步',
  `table_type` varchar(45) DEFAULT NULL COMMENT '表类型',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`id`,`name`,`comments`,`class_name`,`parent_table`,`parent_table_fk`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`issync`,`table_type`) values ('115fef89c4ba410289f1aa6211c1ec3e','config_sms_template','短信模板','ConfigSmsTemplate','config_sms','config_sms','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL),('268bb6d890814477aebeb9b26be4c901','case_single_table','单表','CaseSingleTable',NULL,NULL,'1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL),('284c2520d8304bbb868ec8ab6752dd2e','case_one_to_many_first','一对多子表1','CaseOneToManyFirst','case_one_to_many_main','case_one_to_many_main','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12','火车票','0',NULL,NULL),('41766c72c2cf49b4a868d7998c55f8ab','case_tree_table','树结构','CaseTreeTable',NULL,NULL,'1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL),('5ef5bbc328be43bbba6c23cd87f6f350','config_sms','短信配置','ConfigSms',NULL,NULL,'1','2017-05-05 04:48:52','1','2017-05-05 04:48:52','短信平台采用的是阿里短信，请登录阿里云查看相关说明文档','0',NULL,NULL),('6fd6ed90f7f94cc8b1fd06f19c810a24','case_one_to_many_third','一对多子表3','CaseOneToManyThird','case_one_to_many_main','case_one_to_many_main','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33','汽车票','0',NULL,NULL),('b69d9b3502aa4659b684c8b8e7c83e64','config_mail','邮箱配置','ConfigMail',NULL,NULL,'1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL),('b6d607dcc4894c648039cfa35873987f','case_one_to_many_second','一对多子表2','CaseOneToManySecond','case_one_to_many_main','case_one_to_many_main','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55','飞机票','0',NULL,NULL),('bfaab6ce57d94d50b21e918cbb829f1c','case_one_to_many_main','一对多主表','CaseOneToManyMain',NULL,NULL,'1','2017-05-04 08:22:33','1','2017-05-04 08:47:09','票务代理','0',NULL,NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `is_form` varchar(45) DEFAULT NULL COMMENT '是否表单显示',
  `tableName` varchar(45) DEFAULT NULL COMMENT '管理的查询表名',
  `fieldLabels` varchar(512) DEFAULT NULL,
  `fieldKeys` varchar(512) DEFAULT NULL,
  `searchLabel` varchar(45) DEFAULT NULL,
  `searchKey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`id`,`gen_table_id`,`name`,`comments`,`jdbc_type`,`java_type`,`java_field`,`is_pk`,`is_null`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`show_type`,`dict_type`,`settings`,`sort`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`is_form`,`tableName`,`fieldLabels`,`fieldKeys`,`searchLabel`,`searchKey`) values ('006667492d1c48568cb61ac6e03a55d4','268bb6d890814477aebeb9b26be4c901','end_date','请假结束日期','datetime','java.util.Date','endDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,'60','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('04c2c9bd367f40a2a820f34061486b4d','b6d607dcc4894c648039cfa35873987f','endarea','目的地','varchar(64)','String','endarea','0','0','1','1','1','0','=','input',NULL,NULL,'30','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('07c8f4c646504bd09aed03ab7b60f61d','268bb6d890814477aebeb9b26be4c901','update_by','更新者','varchar(64)','String','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'90','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('0b401be7b6cd4531a32a9eb961cf4366','284c2520d8304bbb868ec8ab6752dd2e','del_flag','删除标记','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'110','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('179fbc77900a46da9b3afd6205ded30d','6fd6ed90f7f94cc8b1fd06f19c810a24','startarea','出发地','varchar(64)','String','startarea','0','0','1','1','1','0','=','input',NULL,NULL,'20','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('1d022a87e21942269751d3f22510e656','b69d9b3502aa4659b684c8b8e7c83e64','mail_username','邮箱地址','varchar(100)','String','mailUsername','0','0','1','1','0','0','=','input',NULL,NULL,'40','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('1f74134f057c454b89c1b4f8abff0fe0','5ef5bbc328be43bbba6c23cd87f6f350','sms_mns_endpoint','MNSEndpoint','varchar(255)','String','smsMnsEndpoint','0','0','1','1','1','0','=','input',NULL,NULL,'40','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('233811668f6443769ba75b1f85191573','41766c72c2cf49b4a868d7998c55f8ab','name','名称','varchar(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,'20','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('24ae44e107fd4f43a919e4df5236a9f9','284c2520d8304bbb868ec8ab6752dd2e','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'100','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('27146c51d265454ba70368d0eb94278a','6fd6ed90f7f94cc8b1fd06f19c810a24','price','代理价格','double','Double','price','0','0','1','1','1','0','=','input',NULL,NULL,'40','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('29ad6bbb850a42f5b1557aa713ece066','bfaab6ce57d94d50b21e918cbb829f1c','office_id','归属部门','varchar(64)','com.funtl.leesite.modules.sys.entity.Office','office.id|name','0','0','1','1','1','0','=','officeselect',NULL,NULL,'30','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('2c787d4b3b7049a99671dcc66f0669ce','268bb6d890814477aebeb9b26be4c901','user_id','员工','varchar(64)','com.funtl.leesite.modules.sys.entity.User','user.id|name','0','0','1','1','1','1','=','userselect',NULL,NULL,'20','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('2d14c568dc284d6ba80a23ca3af4307b','b6d607dcc4894c648039cfa35873987f','update_by','更新者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'80','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('2fccf4e872ca4537bb03f65f25f1e086','bfaab6ce57d94d50b21e918cbb829f1c','id','编号','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('30683023b3a44b97b7e887b5715450da','bfaab6ce57d94d50b21e918cbb829f1c','sex','性别','char(1)','String','sex','0','0','1','1','1','1','=','radiobox','sex',NULL,'60','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('357c006135424fcc96f7c5cb24cef329','5ef5bbc328be43bbba6c23cd87f6f350','sms_access_id','AccessId','varchar(64)','String','smsAccessId','0','0','1','1','1','0','=','input',NULL,NULL,'20','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('3773e352eeb64a49907202c68633f444','115fef89c4ba410289f1aa6211c1ec3e','config_sms','外键','varchar(64)','String','configSms.id','0','0','1','1','0','0','=','input',NULL,NULL,'60','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('377b4e0a654641139f8a8b307a169cd3','5ef5bbc328be43bbba6c23cd87f6f350','id','编号','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('3a87f1f38c0440d88b0901d8f17c9a88','6fd6ed90f7f94cc8b1fd06f19c810a24','id','主键','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('3e8ea297f06a4654b79798399ba91cc7','b6d607dcc4894c648039cfa35873987f','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'100','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('3e9f8286f9404dc3a3d66f8897b1b1ca','6fd6ed90f7f94cc8b1fd06f19c810a24','del_flag','逻辑删除标记（0：显示；1：隐藏）','varchar(64)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'110','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('4475e4e7ac8040ac9aabd75f54d0cade','b69d9b3502aa4659b684c8b8e7c83e64','mail_port','主机端口','int(11)','Integer','mailPort','0','0','1','1','0','0','=','input',NULL,NULL,'30','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('481f6d83810f4eb28f4f7fb0667e6257','284c2520d8304bbb868ec8ab6752dd2e','endarea','目的地','varchar(64)','String','endarea','0','0','1','1','1','0','=','input',NULL,NULL,'30','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('54a3cc9325714fb8bbeb1fc616b70814','268bb6d890814477aebeb9b26be4c901','del_flag','逻辑删除标记（0：显示；1：隐藏）','varchar(64)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'120','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('58d2d24ab74b48568b7e934290192b95','284c2520d8304bbb868ec8ab6752dd2e','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'90','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('5ec8e82e551d46c9bdb532f37351c085','b69d9b3502aa4659b684c8b8e7c83e64','mail_ssl','使用SSL/TLS','varchar(1)','String','mailSsl','0','0','1','1','0','0','=','input',NULL,NULL,'70','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('61eac09bc6e24e4c8cb494774cc332b1','bfaab6ce57d94d50b21e918cbb829f1c','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'120','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('62a3327340284c198fd1d379eabe4790','6fd6ed90f7f94cc8b1fd06f19c810a24','case_one_to_many_main','外键','varchar(64)','String','caseOneToManyMain.id','0','0','1','1','0','0','=','input',NULL,NULL,'50','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('63f79dace59f42c3bb74cbb2fc8c34fd','41766c72c2cf49b4a868d7998c55f8ab','sort','排序','decimal(10,0)','Integer','sort','0','0','1','1','0','0','=','input',NULL,NULL,'30','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('6fa4e9660bc844cba35d4e3c46be9895','b69d9b3502aa4659b684c8b8e7c83e64','mail_host','主机名','varchar(100)','String','mailHost','0','0','1','1','0','0','=','input',NULL,NULL,'20','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('73ca0d60d02a486e96744b5582a0f2fe','6fd6ed90f7f94cc8b1fd06f19c810a24','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'100','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('74bf58745138442ea6320dcbec7f8822','bfaab6ce57d94d50b21e918cbb829f1c','update_by','更新者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'100','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('75c5e135c34149948e8563e2fe371b44','b6d607dcc4894c648039cfa35873987f','startarea','出发地','varchar(64)','String','startarea','0','0','1','1','1','0','=','input',NULL,NULL,'20','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('7da580ca53434491930a1ba375c3529d','6fd6ed90f7f94cc8b1fd06f19c810a24','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,'70','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('7f1c83bff424413b9f079366f4424bcd','41766c72c2cf49b4a868d7998c55f8ab','update_by','更新者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'80','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('7f6dc5e6622544fa8a3200f0c7389401','bfaab6ce57d94d50b21e918cbb829f1c','del_flag','删除标记','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'130','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('80fc0ce068914335a2d61506907173cd','b6d607dcc4894c648039cfa35873987f','id','主键','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('829d04d4eb3e486e8c10170e924bf012','b69d9b3502aa4659b684c8b8e7c83e64','mail_from','发件人昵称','varchar(100)','String','mailFrom','0','0','1','1','0','0','=','input',NULL,NULL,'60','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('82b173c3e4814be4886942ec83ad3a8e','115fef89c4ba410289f1aa6211c1ec3e','sms_template_type','模板类型','varchar(2)','String','smsTemplateType','0','0','1','1','1','0','=','select','sms_template_type',NULL,'40','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('83212cb5fdb24fa4a71265a7db862d98','284c2520d8304bbb868ec8ab6752dd2e','startarea','出发地','varchar(64)','String','startarea','0','0','1','1','1','0','=','input',NULL,NULL,'20','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8323f64d4c2f4128a37aaf31918f8cd3','268bb6d890814477aebeb9b26be4c901','office_id','归属部门','varchar(64)','com.funtl.leesite.modules.sys.entity.Office','office.id|name','0','0','1','1','1','0','=','officeselect',NULL,NULL,'30','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('85b711e85a804090a2202d02d4ddc0b1','115fef89c4ba410289f1aa6211c1ec3e','id','编号','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8a4211a648794e8dabbe34ed82b4fd1a','5ef5bbc328be43bbba6c23cd87f6f350','sms_sign_name','签名','varchar(20)','String','smsSignName','0','0','1','1','1','0','=','input',NULL,NULL,'60','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8cbee3eee6664806a0579a841f055fba','41766c72c2cf49b4a868d7998c55f8ab','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,'70','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8d4e1cc492094b52b7e1c494cf66d336','5ef5bbc328be43bbba6c23cd87f6f350','sms_access_key','AccessKey','varchar(64)','String','smsAccessKey','0','0','1','1','1','0','=','input',NULL,NULL,'30','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8e0bcf51f8dc4f1a95192208b4a095f3','284c2520d8304bbb868ec8ab6752dd2e','case_one_to_many_main','外键','varchar(64)','String','caseOneToManyMain.id','0','0','1','1','0','0','=','input',NULL,NULL,'50','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8e5c7eef8fd14c8a99244afd42076545','b6d607dcc4894c648039cfa35873987f','price','代理价格','double','Double','price','0','0','1','1','1','0','=','input',NULL,NULL,'40','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('8ee37712a397454b950205b9ac583534','41766c72c2cf49b4a868d7998c55f8ab','id','主键','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('900b4b7eaf7f4c00a733bd0cca373dae','b69d9b3502aa4659b684c8b8e7c83e64','id','编号','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('9675489ef6f1424aabf0259570e6b2ab','b6d607dcc4894c648039cfa35873987f','case_one_to_many_main','外键','varchar(64)','String','caseOneToManyMain.id','0','0','1','1','0','0','=','input',NULL,NULL,'50','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('969535a5a79249c98e95e8de71553cf9','6fd6ed90f7f94cc8b1fd06f19c810a24','endarea','目的地','varchar(64)','String','endarea','0','0','1','1','1','0','=','input',NULL,NULL,'30','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('9b656751ea6d4b6f913123fb9e427d33','bfaab6ce57d94d50b21e918cbb829f1c','in_date','加入日期','date','java.util.Date','inDate','0','0','1','1','1','1','between','dateselect',NULL,NULL,'70','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('9c561290273f45adb4d231f351e89c9c','284c2520d8304bbb868ec8ab6752dd2e','create_by','创建者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'60','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('9d59425e70034ea9940adc9e01933ff5','6fd6ed90f7f94cc8b1fd06f19c810a24','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'90','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('9fdce22a42524d018f3dd71039a598a6','284c2520d8304bbb868ec8ab6752dd2e','id','编号','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('a01cd3db57f74fba8b24fa322c7a02fc','268bb6d890814477aebeb9b26be4c901','id','主键','varchar(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,'10','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('a036ac3ee5814ec78469da8f7891ce36','b6d607dcc4894c648039cfa35873987f','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'90','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('a53fa4b13fdc4cb4b71a257c13e66175','bfaab6ce57d94d50b21e918cbb829f1c','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'90','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('a6de9411cc5e44a78c6e43ed3d68bb8e','284c2520d8304bbb868ec8ab6752dd2e','update_by','更新者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'80','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('aa2c01347bbf4493bf4f11bea54155fe','268bb6d890814477aebeb9b26be4c901','create_by','创建者','varchar(64)','String','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'70','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('aa4a5ae91e5f4a26a1385c33cb93eb16','41766c72c2cf49b4a868d7998c55f8ab','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'90','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('aa7c76bf2b3b4f328facecb09b30d5cf','bfaab6ce57d94d50b21e918cbb829f1c','create_by','创建者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'80','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('aacd4a54f35b43c8b3b4d5f7e328e12f','284c2520d8304bbb868ec8ab6752dd2e','price','代理价格','double','Double','price','0','0','1','1','1','0','=','input',NULL,NULL,'40','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('b614b36ad6b6426697ad23b4512af149','bfaab6ce57d94d50b21e918cbb829f1c','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'110','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('b629534228da4bbca76f6ba87c236467','41766c72c2cf49b4a868d7998c55f8ab','del_flag','逻辑删除标记（0：显示；1：隐藏）','varchar(64)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'110','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('bf857e15aefb488886955ff684e1ed13','268bb6d890814477aebeb9b26be4c901','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,'80','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('c1f02c1fb91f47b592c5a8f3b9771347','115fef89c4ba410289f1aa6211c1ec3e','sms_template_code','模板编码','varchar(64)','String','smsTemplateCode','0','0','1','1','1','0','=','input',NULL,NULL,'30','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('cc9071b54a9e479982afe7e1f4003056','284c2520d8304bbb868ec8ab6752dd2e','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,'70','1','2017-05-04 08:30:12','1','2017-05-04 08:30:12',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('d015aba5d57a46d987d2478bc39f20f6','268bb6d890814477aebeb9b26be4c901','begin_date','请假开始日期','datetime','java.util.Date','beginDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,'50','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('d30ac046fc7d4adaa2c9e9497e1f47ea','41766c72c2cf49b4a868d7998c55f8ab','parent_id','父级编号','varchar(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,'40','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('d682e0838e4046fe85ed9d264f70e2ff','41766c72c2cf49b4a868d7998c55f8ab','create_by','创建者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'60','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('d76daaf916f4435d84662328229722ed','bfaab6ce57d94d50b21e918cbb829f1c','user_id','归属用户','varchar(64)','com.funtl.leesite.modules.sys.entity.User','user.id|name','0','0','1','1','1','1','=','userselect',NULL,NULL,'20','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('d991d2fb067242f895dea21c217dd40f','b69d9b3502aa4659b684c8b8e7c83e64','mail_password','邮箱密码','varchar(100)','String','mailPassword','0','0','1','1','0','0','=','input',NULL,NULL,'50','1','2017-05-04 23:27:24','1','2017-05-04 23:27:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('da525dc91b3c4cc280ae3ce7375a80f8','6fd6ed90f7f94cc8b1fd06f19c810a24','create_by','创建者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'60','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('daa5f4df214e40fdb2b236ab4ff542fb','41766c72c2cf49b4a868d7998c55f8ab','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'100','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('dc27d44e260d46eeba81160a41d137f7','b6d607dcc4894c648039cfa35873987f','create_date','创建时间','datetime','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,'70','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('dc7744956f5c4f5b8f73df61b27ee510','b6d607dcc4894c648039cfa35873987f','del_flag','逻辑删除标记（0：显示；1：隐藏）','varchar(64)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,'110','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('df28c9d93bc14726822714cbcc1fc154','5ef5bbc328be43bbba6c23cd87f6f350','sms_topic','主题','varchar(255)','String','smsTopic','0','0','1','1','1','0','=','input',NULL,NULL,'50','1','2017-05-05 04:48:52','1','2017-05-05 04:48:52',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('e546d0bed9df463a8f890a73ff7dd664','6fd6ed90f7f94cc8b1fd06f19c810a24','update_by','更新者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,'80','1','2017-05-04 08:33:33','1','2017-05-04 08:33:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('ec5304b684a14eab8e16331359224ea0','41766c72c2cf49b4a868d7998c55f8ab','parent_ids','所有父级编号','varchar(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,'50','1','2017-05-04 06:49:06','1','2017-05-04 06:49:06',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('ef7f67aa6d2343aa9af8ebec1f9bb81f','115fef89c4ba410289f1aa6211c1ec3e','sms_template_content','短信内容','varchar(755)','String','smsTemplateContent','0','0','1','1','0','0','=','input',NULL,NULL,'50','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f0733d34332849b582cfad0e412eba34','115fef89c4ba410289f1aa6211c1ec3e','sms_template_name','模板名称','varchar(20)','String','smsTemplateName','0','0','1','1','1','0','=','input',NULL,NULL,'20','1','2017-05-05 04:50:01','1','2017-05-05 04:54:02',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f0ca76e8b6b04b4288d4364326db317e','268bb6d890814477aebeb9b26be4c901','area_id','归属区域','varchar(64)','com.funtl.leesite.modules.sys.entity.Area','area.id|name','0','1','1','1','1','0','=','areaselect',NULL,NULL,'40','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f3e49137bd5c4631b69476ff870e1d82','268bb6d890814477aebeb9b26be4c901','remarks','备注信息','varchar(257)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,'110','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f4da57115c934a8d909d979319c07c63','bfaab6ce57d94d50b21e918cbb829f1c','name','名称','varchar(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,'50','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f5b92dc1ebd949c69f4dd524c8b5816e','bfaab6ce57d94d50b21e918cbb829f1c','area_id','归属区域','varchar(64)','com.funtl.leesite.modules.sys.entity.Area','area.id|name','0','0','1','1','1','0','=','areaselect',NULL,NULL,'40','1','2017-05-04 08:22:33','1','2017-05-04 08:47:09',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f7ac1fd858de476fa4fe54f0b1d8655c','b6d607dcc4894c648039cfa35873987f','create_by','创建者','varchar(64)','com.funtl.leesite.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,'60','1','2017-05-04 08:31:55','1','2017-05-04 08:31:55',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL),('f83cd7884e4a46579b0de965eda1909f','268bb6d890814477aebeb9b26be4c901','update_date','更新时间','datetime','java.util.Date','updateDate','0','0','1','1','0','0','=','dateselect',NULL,NULL,'100','1','2017-05-03 23:49:02','1','2017-05-04 02:51:29',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `gen_template` */

DROP TABLE IF EXISTS `gen_template`;

CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';

/*Data for the table `gen_template` */

/*Table structure for table `iim_chat_history` */

DROP TABLE IF EXISTS `iim_chat_history`;

CREATE TABLE `iim_chat_history` (
  `id` varchar(64) NOT NULL,
  `userid1` varchar(64) DEFAULT NULL,
  `userid2` varchar(64) DEFAULT NULL,
  `msg` varchar(1024) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `iim_chat_history` */

/*Table structure for table `iim_mail` */

DROP TABLE IF EXISTS `iim_mail`;

CREATE TABLE `iim_mail` (
  `id` varchar(64) NOT NULL,
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `overview` varchar(128) DEFAULT NULL COMMENT '内容概要',
  `content` longblob COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件';

/*Data for the table `iim_mail` */

/*Table structure for table `iim_mail_box` */

DROP TABLE IF EXISTS `iim_mail_box`;

CREATE TABLE `iim_mail_box` (
  `id` varchar(64) NOT NULL,
  `readstatus` varchar(45) DEFAULT NULL COMMENT '状态 0 未读 1 已读',
  `senderId` varchar(64) DEFAULT NULL COMMENT '发件人',
  `receiverId` varchar(6400) DEFAULT NULL COMMENT '收件人',
  `sendtime` datetime DEFAULT NULL COMMENT '发送时间',
  `mailid` varchar(64) DEFAULT NULL COMMENT '邮件外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收件箱';

/*Data for the table `iim_mail_box` */

/*Table structure for table `iim_mail_compose` */

DROP TABLE IF EXISTS `iim_mail_compose`;

CREATE TABLE `iim_mail_compose` (
  `id` varchar(64) NOT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '状态 0 草稿 1 已发送',
  `readstatus` varchar(45) DEFAULT NULL COMMENT '状态 0 未读 1 已读',
  `senderId` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiverId` varchar(6400) DEFAULT NULL COMMENT '接收者',
  `sendtime` datetime DEFAULT NULL COMMENT '发送时间',
  `mailId` varchar(64) DEFAULT NULL COMMENT '邮件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发件箱 草稿箱';

/*Data for the table `iim_mail_compose` */

/*Table structure for table `monitor` */

DROP TABLE IF EXISTS `monitor`;

CREATE TABLE `monitor` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `cpu` varchar(64) DEFAULT NULL COMMENT 'cpu使用率',
  `jvm` varchar(64) DEFAULT NULL COMMENT 'jvm使用率',
  `ram` varchar(64) DEFAULT NULL COMMENT '内存使用率',
  `toemail` varchar(64) DEFAULT NULL COMMENT '警告通知邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统监控';

/*Data for the table `monitor` */

insert  into `monitor`(`id`,`cpu`,`jvm`,`ram`,`toemail`) values ('1','99','99','99','qq@qq.com');

/*Table structure for table `oa_notify` */

DROP TABLE IF EXISTS `oa_notify`;

CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';

/*Data for the table `oa_notify` */

/*Table structure for table `oa_notify_record` */

DROP TABLE IF EXISTS `oa_notify_record`;

CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';

/*Data for the table `oa_notify_record` */

/*Table structure for table `sys_area` */

DROP TABLE IF EXISTS `sys_area`;

CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

/*Data for the table `sys_area` */

insert  into `sys_area`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`code`,`type`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','中国','10','100000','1','1','2013-05-27 16:00:00','1','2017-05-03 00:40:34',NULL,'0'),('10d553892e0643bb9e9704fe41c68f67','fad8db8c829d4ffb97447e3757345265','0,1,fad8db8c829d4ffb97447e3757345265,','广州市','30',NULL,'3','1','2017-05-03 00:30:31','1','2017-05-03 00:30:31',NULL,'0'),('a2f504c1f5544a3cacf95409883871c2','fad8db8c829d4ffb97447e3757345265','0,1,fad8db8c829d4ffb97447e3757345265,','深圳市','30',NULL,'3','1','2017-05-03 00:30:45','1','2017-05-03 00:30:45',NULL,'0'),('fad8db8c829d4ffb97447e3757345265','1','0,1,','广东省','30',NULL,'2','1','2017-05-03 00:30:17','1','2017-05-03 00:30:17',NULL,'0');

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`value`,`label`,`type`,`description`,`sort`,`parent_id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('0a22f3278a624882a822e0820f27efcb','1','主表','table_type','表类型','20','0','1','2016-01-06 05:47:14','1','2016-01-06 05:53:34',NULL,'0'),('1','0','正常','del_flag','删除标记','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('10','yellow','黄色','color','颜色值','40','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('105','1','会议通告','oa_notify_type','通知通告类型','10','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('106','2','奖惩通告','oa_notify_type','通知通告类型','20','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('107','3','活动通告','oa_notify_type','通知通告类型','30','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态','10','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态','20','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('11','orange','橙色','color','颜色值','50','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('110','0','未读','oa_notify_read','通知通告状态','10','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态','20','0','1','2013-11-08 16:00:00','1','2013-11-08 16:00:00',NULL,'0'),('17','1','国家','sys_area_type','区域类型','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('18','2','省份、直辖市','sys_area_type','区域类型','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('19','3','地市','sys_area_type','区域类型','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('1c0ac576c33d41fcb4c16602bf4fad5d','post','POST','interface_type','接口类型','20','0','1','2015-11-30 23:52:25','1','2017-05-04 10:45:52',NULL,'0'),('2','1','删除','del_flag','删除标记','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('20','4','区县','sys_area_type','区域类型','40','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('21','1','公司','sys_office_type','机构类型','60','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('22','2','部门','sys_office_type','机构类型','70','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('221a918bd1e149239a17ab0fdeaf5ecd','get','GET','interface_type','接口类型','10','0','1','2015-11-30 23:51:56','1','2017-05-04 10:46:01',NULL,'0'),('23','3','小组','sys_office_type','机构类型','80','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('24','4','其它','sys_office_type','机构类型','90','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('25','1','综合部','sys_office_common','快捷通用部门','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('26','2','开发部','sys_office_common','快捷通用部门','40','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('27','3','人力部','sys_office_common','快捷通用部门','50','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('28','1','一级','sys_office_grade','机构等级','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('29','2','二级','sys_office_grade','机构等级','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('3','1','显示','show_hide','显示/隐藏','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('30','3','三级','sys_office_grade','机构等级','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('31','4','四级','sys_office_grade','机构等级','40','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('32','1','所有数据','sys_data_scope','数据范围','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('33','2','所在公司及以下数据','sys_data_scope','数据范围','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('34','3','所在公司数据','sys_data_scope','数据范围','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('35','4','所在部门及以下数据','sys_data_scope','数据范围','40','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('36','5','所在部门数据','sys_data_scope','数据范围','50','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('37','8','仅本人数据','sys_data_scope','数据范围','90','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('38','9','按明细设置','sys_data_scope','数据范围','100','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('39','1','系统管理','sys_user_type','用户类型','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('4','0','隐藏','show_hide','显示/隐藏','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('40','2','部门经理','sys_user_type','用户类型','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('41','3','普通用户','sys_user_type','用户类型','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('43c9472f411c4d3eafb3bf5319ffe499','2','异常报告','report_type','异常的报告','20','0','1','2015-12-09 01:49:57','1','2015-12-09 01:49:57',NULL,'0'),('5','1','是','yes_no','是/否','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('5b899603552c48519e7ba8eb9da0b41f','0','单表','table_type','表类型','10','0','1','2016-01-06 05:46:39','1','2016-01-06 05:53:50',NULL,'0'),('6','0','否','yes_no','是/否','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('638e9284e89b42119c10c0de75a48c15','0','未审核','audit_status','未审核','1','0','1','2016-05-24 07:45:59','1','2016-05-29 08:06:24',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型','30','0','1','2013-06-03 16:00:00','1','2013-06-03 16:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型','40','0','1','2013-06-03 16:00:00','1','2013-06-03 16:00:00',NULL,'0'),('680ddd8c91fe43588a7bb7aafe816633','1','正常报告','report_type','正常的报告','10','0','1','2015-12-09 01:49:28','1','2015-12-09 01:49:28','正常的报告','0'),('7','red','红色','color','颜色值','10','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('8','green','绿色','color','颜色值','20','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('8da7dcc97af046f8b77db35dab88c7e5','1','审核通过','audit_status','审核通过','2','0','1','2016-05-24 07:46:23','1','2017-05-03 01:10:39',NULL,'0'),('9','blue','蓝色','color','颜色值','30','0','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('96','1','男','sex','性别','10','0','1','2013-10-28 16:00:00','1','2013-10-28 16:00:00',NULL,'0'),('97','2','女','sex','性别','20','0','1','2013-10-28 16:00:00','1','2013-10-28 16:00:00',NULL,'0'),('bde6043665ef4571b85d0edab667cd15','3','树结构表','table_type','表类型','40','0','1','2016-01-07 03:48:50','1','2016-01-07 03:48:50',NULL,'0'),('cc94b0c5df554a46894991210a5fc486','2','附表','table_type','表类型','30','0','1','2016-01-06 05:47:38','1','2016-01-06 05:53:44',NULL,'0'),('f0833ce56e7b4340b3efef73d400999d','1','短信通知','sms_template_type','短信类型','20','0','1','2017-05-05 04:13:20','1','2017-05-05 04:13:20',NULL,'0'),('fa1a7436b00c475ea05e30ec37be66ff','0','验证码','sms_template_type','短信类型','10','0','1','2017-05-05 04:13:08','1','2017-05-05 04:13:08',NULL,'0'),('fabbaa2395a24aae8e89e986ad9a0477','3','审核不通过','audit_status','审核不通过','12','0','1','2016-05-24 07:46:37','1','2016-05-24 07:46:37',NULL,'0');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

/*Data for the table `sys_log` */

/*Table structure for table `sys_mdict` */

DROP TABLE IF EXISTS `sys_mdict`;

CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

/*Data for the table `sys_mdict` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`href`,`target`,`icon`,`is_show`,`permission`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('0787b03f8a7d46d2b398ddcc23545d31','7ec930fe50fb41d0a9c7aeaa01804d16','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,','增加','120',NULL,NULL,NULL,'0','tools:testInterface:add','1','2016-01-07 21:42:33','1','2016-01-13 07:52:06',NULL,'0'),('0aa3712414d049a6a24e8bcddeae509a','27','0,1,27,','我的日程','100','/iim/myCalendar',NULL,NULL,'1',NULL,'1','2016-04-22 05:52:06','1','2017-04-30 09:34:54',NULL,'0'),('1','0','0,','功能菜单','0',NULL,NULL,NULL,'1',NULL,'1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('10','3','0,1,3,','字典管理','60','/sys/dict/',NULL,NULL,'1','sys:dict:list','1','2013-05-27 16:00:00','1','2017-05-03 01:10:59',NULL,'0'),('11','10','0,1,3,10,','查看','30',NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('12','10','0,1,3,10,','修改','40',NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('129374098af24b76a40909ee88c0af5a','79','0,1,79,','生成示例','80',NULL,NULL,NULL,'1',NULL,'1','2017-05-03 23:44:26','1','2017-05-03 23:44:26',NULL,'0'),('14','3','0,1,3,','区域管理','50','/sys/area/',NULL,'th','1','sys:area:list','1','2013-05-27 16:00:00','1','2015-12-25 05:35:11',NULL,'0'),('15','14','0,1,3,14,','查看','30',NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('16','14','0,1,3,14,','修改','40',NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('169219fbf6f641cdb3ff4d1e2c434ddd','e768001e0fc44005b9ac92a32c96f730','0,1,e768001e0fc44005b9ac92a32c96f730,','双数值轴折线图','150','/echarts/linedoublenum',NULL,NULL,'1',NULL,'1','2016-06-22 08:45:31','1','2016-06-22 08:45:31',NULL,'0'),('17','3','0,1,3,','机构管理','40','/sys/office/',NULL,'th-large','1','sys:office:index','1','2013-05-27 16:00:00','1','2015-12-21 05:32:26',NULL,'0'),('18','17','0,1,3,17,','查看','30',NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('19','17','0,1,3,17,','修改','40',NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('1bc5b2ae7a0b41e3955c52388e82ceaa','de3c77b64dbe402c9ffd79a852830cd4','0,1,79,de3c77b64dbe402c9ffd79a852830cd4,','编辑','60',NULL,NULL,NULL,'0','gen:genScheme:edit','1','2017-05-03 21:32:27','1','2017-05-03 21:32:44',NULL,'0'),('1f2c7500841a4b118266e7facfabade6','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','删除','120',NULL,NULL,NULL,'0','cases:caseSingleTable:del','1','2017-05-04 01:28:53','1','2017-05-04 01:29:16',NULL,'0'),('20','3','0,1,3,','用户管理','30','/sys/user/index',NULL,NULL,'1','sys:user:index','1','2013-05-27 16:00:00','1','2017-04-30 09:43:57',NULL,'0'),('21','20','0,1,3,20,','查看','30',NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('22','20','0,1,3,20,','修改','40',NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('27','1','0,1,','我的面板','10',NULL,NULL,'icon-speedometer','1',NULL,'1','2013-05-27 16:00:00','1','2017-05-02 08:33:25',NULL,'0'),('271dc355078b401c98df258ffb53b845','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','导入','180',NULL,NULL,NULL,'0','cases:caseOneToManyMain:import','1','2017-05-04 08:43:54','1','2017-05-04 08:43:54',NULL,'0'),('28abe4b0cb3b4c8480f84c07a5dfaf06','90','0,1,62,90,','增加','60',NULL,NULL,NULL,'0','oa:oaNotify:add','1','2015-12-30 05:15:22','1','2015-12-30 05:15:22',NULL,'0'),('29','27','0,1,27,','个人信息','30','/sys/user/info',NULL,NULL,'1',NULL,'1','2013-05-27 16:00:00','1','2017-04-30 09:34:22',NULL,'0'),('2a0f940fbe304a05a6b4040ddf6df279','20','0,1,3,20,','增加','70',NULL,NULL,NULL,'0','sys:user:add','1','2015-12-20 05:47:00','1','2015-12-20 05:47:00',NULL,'0'),('3','1','0,1,','系统设置','40',NULL,NULL,'icon-settings','1',NULL,'1','2013-05-27 16:00:00','1','2017-04-30 09:20:18',NULL,'0'),('31c4b44cf1bb40f69b405fce9af481e0','e768001e0fc44005b9ac92a32c96f730','0,1,e768001e0fc44005b9ac92a32c96f730,','玫瑰图','120','/echarts/radar',NULL,NULL,'1',NULL,'1','2016-06-22 08:46:03','1','2016-06-22 08:46:03',NULL,'0'),('3ae7300a403a4eb4b34df0b03811dfd7','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','导入','180',NULL,NULL,NULL,'0','cases:caseSingleTable:import','1','2017-05-04 01:31:15','1','2017-05-04 01:31:15',NULL,'0'),('3c1c639c76f14f6f9903b0143371ea09','7','0,1,3,7,','添加','70',NULL,NULL,NULL,'0','sys:role:add','1','2015-12-24 05:35:08','1','2015-12-24 05:36:18',NULL,'0'),('4','3','0,1,3,','菜单管理','30','/sys/menu/',NULL,'list-alt','1','sys:menu:list','1','2013-05-27 16:00:00','1','2015-12-21 02:59:32',NULL,'0'),('43db72ba9bac4417a76e1e1fb5f76ebc','7eeb6e9113e646b5bde0d619faad67c4','0,1,5da359d63ee740a187ae03fd8304a18b,7eeb6e9113e646b5bde0d619faad67c4,','查看','30',NULL,NULL,NULL,'0','config:configMail:view','1','2017-05-05 00:17:04','1','2017-05-05 00:17:04',NULL,'0'),('448062d7975044938c1646b132307ea2','a317c31fe8f84d3983e377eb0c470e73','0,1,79,129374098af24b76a40909ee88c0af5a,a317c31fe8f84d3983e377eb0c470e73,','增加','60',NULL,NULL,NULL,'0','cases:caseTreeTable:add','1','2017-05-04 07:04:26','1','2017-05-04 07:05:26',NULL,'0'),('4b4d4e7f2be8429380d1a2b5141de5a2','87476f51daf44cf48b77149d0121816a','0,1,c9dd1e4a96d64aa3925ee948f871eb02,87476f51daf44cf48b77149d0121816a,','编辑','60','','','','0','aliyun:configAliyunOss:edit','1','2017-05-28 01:32:13','1','2017-05-28 01:32:13','','0'),('4d463414bc974236941a6a14dc53c73a','56e274e0ec1c41298e19ab46cf4e001f','0,1,56e274e0ec1c41298e19ab46cf4e001f,','接口测试','120',NULL,NULL,NULL,'1',NULL,'1','2015-11-11 02:49:21','1','2017-04-30 09:44:44',NULL,'0'),('4fd9c515b8314306a746c816a66ee9b3','a317c31fe8f84d3983e377eb0c470e73','0,1,79,129374098af24b76a40909ee88c0af5a,a317c31fe8f84d3983e377eb0c470e73,','编辑','90',NULL,NULL,NULL,'0','cases:caseTreeTable:edit','1','2017-05-04 07:04:41','1','2017-05-04 07:05:36',NULL,'0'),('5','4','0,1,3,4,','增加','30',NULL,NULL,NULL,'0','sys:menu:add','1','2013-05-27 16:00:00','1','2015-12-21 03:00:22',NULL,'0'),('50f46d53cae4454e866bf7d30a2c9d54','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','导出','150',NULL,NULL,NULL,'0','cases:caseOneToManyMain:export','1','2017-05-04 08:43:12','1','2017-05-04 08:43:12',NULL,'0'),('5239527958e94d418997b584b85d8b80','14','0,1,3,14,','删除','100',NULL,NULL,NULL,'0','sys:area:del','1','2015-12-25 05:37:13','1','2015-12-25 05:37:13',NULL,'0'),('5350b21c2c2b4484b54f4df1305f2455','129374098af24b76a40909ee88c0af5a','0,1,79,129374098af24b76a40909ee88c0af5a,','单表','30','/cases/caseSingleTable',NULL,NULL,'1','cases:caseSingleTable:list','1','2017-05-03 23:44:35','1','2017-05-04 02:31:36',NULL,'0'),('56','27','0,1,27,','文件管理','90','/../static/ckfinder/ckfinder.html','_blank',NULL,'1',NULL,'1','2013-05-27 16:00:00','1','2017-05-01 00:35:30',NULL,'0'),('56e274e0ec1c41298e19ab46cf4e001f','1','0,1,','常用工具','70',NULL,NULL,'icon-wrench','1',NULL,'1','2016-03-04 00:30:04','1','2017-04-30 09:20:38',NULL,'0'),('57','56','0,1,27,40,56,','查看','30',NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('57f1f00d6cb14819bef388acd10e6f5a','68','0,1,67,68,','删除','60',NULL,NULL,NULL,'0','sys:log:del','1','2015-12-26 04:25:55','1','2015-12-26 04:25:55',NULL,'0'),('58','56','0,1,27,40,56,','上传','40',NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('59','56','0,1,27,40,56,','修改','50',NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('5d513a41e03c4dcdb15a389a37695139','de3c77b64dbe402c9ffd79a852830cd4','0,1,79,de3c77b64dbe402c9ffd79a852830cd4,','查看','30',NULL,NULL,NULL,'0','gen:genScheme:view','1','2017-05-03 21:31:50','1','2017-05-03 21:32:04',NULL,'0'),('5da359d63ee740a187ae03fd8304a18b','1','0,1,','系统配置','60',NULL,NULL,'icon-equalizer','1',NULL,'1','2017-05-04 23:23:59','1','2017-05-04 23:23:59',NULL,'0'),('6','4','0,1,3,4,','修改','40',NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('62','1','0,1,','在线办公','20',NULL,NULL,'icon-screen-desktop','1',NULL,'1','2013-05-27 16:00:00','1','2017-04-30 09:20:06',NULL,'0'),('6509eed6eb634030a46723a18814035c','7','0,1,3,7,','分配用户','100',NULL,NULL,NULL,'0','sys:role:assign','1','2015-12-24 05:35:37','1','2015-12-24 05:53:23',NULL,'0'),('65affbf57e7d4018b612f025661fdc23','87476f51daf44cf48b77149d0121816a','0,1,c9dd1e4a96d64aa3925ee948f871eb02,87476f51daf44cf48b77149d0121816a,','查看','30','','','','0','aliyun:configAliyunOss:view','1','2017-05-28 01:31:59','1','2017-05-28 01:31:59','','0'),('67','1','0,1,','系统监控','50',NULL,NULL,'icon-camcorder','1',NULL,'1','2013-06-03 16:00:00','1','2017-04-30 09:31:56',NULL,'0'),('68','67','0,1,67,','日志查询','30','/sys/log',NULL,'pencil','1','sys:log:list','1','2013-06-03 16:00:00','1','2015-12-26 04:26:16',NULL,'0'),('68f9151151174868ab436e11e03bf548','4','0,1,3,4,','删除','70',NULL,NULL,NULL,'0','sys:menu:del','1','2015-12-21 03:01:16','1','2015-12-21 03:03:05',NULL,'0'),('6d3a6777693f47c98e9b3051cacbcfdb','10','0,1,3,10,','增加','70',NULL,NULL,NULL,'0','sys:dict:add','1','2015-12-25 06:23:39','1','2015-12-25 06:24:22',NULL,'0'),('6e840261279c4d20ad8b48b51a1f5719','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','编辑','90',NULL,NULL,NULL,'0','cases:caseSingleTable:edit','1','2017-05-04 01:28:17','1','2017-05-04 01:29:05',NULL,'0'),('7','3','0,1,3,','角色管理','50','/sys/role/',NULL,NULL,'1','sys:role:list','1','2013-05-27 16:00:00','1','2017-04-30 09:42:14',NULL,'0'),('70de7eac2f3e4632b1b7aa3cd536b35a','4d463414bc974236941a6a14dc53c73a','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,','接口测试','200','/tools/testInterface/test','_blank',NULL,'1','tools:testInterface:test','1','2015-11-30 23:21:14','1','2017-05-04 11:04:58',NULL,'0'),('70e0cd35107f410dabad5a525d642ac6','e768001e0fc44005b9ac92a32c96f730','0,1,e768001e0fc44005b9ac92a32c96f730,','饼图','30','/echarts/pie',NULL,NULL,'1',NULL,'1','2016-06-22 08:45:47','1','2016-06-22 08:45:47',NULL,'0'),('7461115bfc3b4f8bbcbd71911761edbc','a317c31fe8f84d3983e377eb0c470e73','0,1,79,129374098af24b76a40909ee88c0af5a,a317c31fe8f84d3983e377eb0c470e73,','查看','30',NULL,NULL,NULL,'0','cases:caseTreeTable:view','1','2017-05-04 07:03:50','1','2017-05-04 07:04:13',NULL,'0'),('79','1','0,1,','代码生成','80',NULL,NULL,'icon-star','1',NULL,'1','2013-10-16 16:00:00','1','2017-04-30 09:21:20',NULL,'0'),('79f0ffa47dbe43ffa8824d97612d344f','4','0,1,3,4,','保存排序','100',NULL,NULL,NULL,'0','sys:menu:updateSort','1','2015-12-21 03:02:08','1','2015-12-21 03:02:08',NULL,'0'),('79fca849d3da4a82a4ade3f6b9f45126','20','0,1,3,20,','删除','100',NULL,NULL,NULL,'0','sys:user:del','1','2015-12-20 05:47:44','1','2015-12-20 05:48:52',NULL,'0'),('7ec930fe50fb41d0a9c7aeaa01804d16','4d463414bc974236941a6a14dc53c73a','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,','接口列表','30','/tools/testInterface',NULL,NULL,'1','tools:testInterface:list','1','2015-11-30 23:15:06','1','2016-01-13 07:50:52',NULL,'0'),('7eeb6e9113e646b5bde0d619faad67c4','5da359d63ee740a187ae03fd8304a18b','0,1,5da359d63ee740a187ae03fd8304a18b,','邮箱配置','30','/config/configMail/form?id=1',NULL,NULL,'1',NULL,'1','2017-05-04 23:30:28','1','2017-05-05 00:29:58',NULL,'0'),('8','7','0,1,3,7,','查看','30',NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('82','79','0,1,79,','业务表配置','20','/gen/genTable',NULL,NULL,'1','gen:genTable:list','1','2013-10-16 16:00:00','1','2017-05-03 21:29:31',NULL,'0'),('84','67','0,1,67,','连接池监视','40','/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 16:00:00','1','2013-10-18 16:00:00',NULL,'0'),('87476f51daf44cf48b77149d0121816a','c9dd1e4a96d64aa3925ee948f871eb02','0,1,c9dd1e4a96d64aa3925ee948f871eb02,','对象存储 OSS','30','/aliyun/configAliyunOss/form?id=1','','','1','','1','2017-05-28 01:30:28','1','2017-05-28 01:31:10','','0'),('88939db08fbe43bbab48fe9de9015409','7eeb6e9113e646b5bde0d619faad67c4','0,1,5da359d63ee740a187ae03fd8304a18b,7eeb6e9113e646b5bde0d619faad67c4,','编辑','60',NULL,NULL,NULL,'0','config:configMail:edit','1','2017-05-05 00:17:23','1','2017-05-05 00:17:23',NULL,'0'),('89','62','0,1,62,','我的通告','90','/oa/oaNotify/self/',NULL,NULL,'1',NULL,'1','2013-11-08 16:00:00','1','2017-05-02 08:34:34',NULL,'0'),('8926112d6acd4a18b5e5dcf99a1f7ff3','7ec930fe50fb41d0a9c7aeaa01804d16','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,','删除','150',NULL,NULL,NULL,'0','tools:testInterface:del','1','2016-01-07 21:43:13','1','2016-01-13 07:52:21',NULL,'0'),('8930e4aad1ba4a1c958d303968d8c442','17','0,1,3,17,','删除','100',NULL,NULL,NULL,'0','sys:office:del','1','2015-12-21 05:19:16','1','2015-12-21 05:19:16',NULL,'0'),('8eb7cbf2b3ab446f9e86e16d774ed489','5da359d63ee740a187ae03fd8304a18b','0,1,5da359d63ee740a187ae03fd8304a18b,','短信配置','60','/config/configSms/form?id=1',NULL,NULL,'1',NULL,'1','2017-05-05 03:07:11','1','2017-05-05 05:17:16','阿里短信','0'),('8fb45c2a04c543ca84cd489d96b01b1d','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','增加','60',NULL,NULL,NULL,'0','cases:caseOneToManyMain:add','1','2017-05-04 08:41:58','1','2017-05-04 08:41:58',NULL,'0'),('9','7','0,1,3,7,','修改','40',NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 16:00:00','1','2013-05-27 16:00:00',NULL,'0'),('90','62','0,1,62,','通告管理','120','/oa/oaNotify/',NULL,NULL,'1','oa:oaNotify:list','1','2013-11-08 16:00:00','1','2017-05-02 08:34:42',NULL,'0'),('907f18048b6b450e9412207d253f4179','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','查看','30',NULL,NULL,NULL,'0','cases:caseSingleTable:view','1','2017-05-04 01:27:34','1','2017-05-04 01:27:34',NULL,'0'),('91aa429a6cdc4a9b954d84ff1456934b','68','0,1,67,68,','查看','30',NULL,NULL,NULL,'0','sys:log:view','1','2015-12-26 04:25:25','1','2015-12-26 04:25:25',NULL,'0'),('95a6a82dc5fc4d07b46e5df57a0606a3','62','0,1,62,','站内信','30','/iim/mailBox/list?orderBy=sendtime desc',NULL,NULL,'1',NULL,'1','2015-11-14 19:14:30','1','2017-05-02 04:38:31',NULL,'0'),('99303b45c8904c7fbdb73e59225e1e95','8eb7cbf2b3ab446f9e86e16d774ed489','0,1,5da359d63ee740a187ae03fd8304a18b,8eb7cbf2b3ab446f9e86e16d774ed489,','查看','30',NULL,NULL,NULL,'0','config:configSms:view','1','2017-05-05 04:22:07','1','2017-05-05 04:22:07',NULL,'0'),('9bc1aa1053144a608b73f6fbd841d1c6','10','0,1,3,10,','删除','100',NULL,NULL,NULL,'0','sys:dict:del','1','2015-12-25 06:24:04','1','2015-12-25 06:24:31',NULL,'0'),('a2bff6320470407b89b7467164fd4afc','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','增加','60',NULL,NULL,NULL,'0','cases:caseSingleTable:add','1','2017-05-04 01:27:53','1','2017-05-04 01:27:53',NULL,'0'),('a317c31fe8f84d3983e377eb0c470e73','129374098af24b76a40909ee88c0af5a','0,1,79,129374098af24b76a40909ee88c0af5a,','树结构','60','/cases/caseTreeTable',NULL,NULL,'1','cases:caseTreeTable:list','1','2017-05-04 07:01:48','1','2017-05-04 07:02:42',NULL,'0'),('a4c3dcee6cbc4fc6a0bf617d8619edf3','17','0,1,3,17,','增加','70',NULL,NULL,NULL,'0','sys:office:add','1','2015-12-21 05:18:52','1','2015-12-21 05:18:52',NULL,'0'),('a4cfc713c3c04c32a274fb59c71e34ed','7ec930fe50fb41d0a9c7aeaa01804d16','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,','编辑','90',NULL,NULL,NULL,'0','tools:testInterface:edit','1','2015-12-01 00:08:40','1','2016-01-13 07:51:51',NULL,'0'),('af0a174b4f424bc09a8cc0db83a64105','62','0,1,62,','通讯录','60','/iim/contact/index',NULL,NULL,'1',NULL,'1','2015-11-12 00:49:02','1','2017-04-30 22:00:30',NULL,'0'),('b9a776f5d7194406bb466388e3af9d08','20','0,1,3,20,','导出','160',NULL,NULL,NULL,'0','sys:user:export','1','2015-12-20 05:48:34','1','2015-12-20 05:48:34',NULL,'0'),('c3de25a76785419b8a6820db3935941d','82','0,1,79,82,','导入','150',NULL,NULL,NULL,'0','gen:genTable:importDb','1','2016-01-07 19:30:25','1','2016-01-07 19:30:25',NULL,'0'),('c3f99e4843da49179a6ce796ac13cdd8','a317c31fe8f84d3983e377eb0c470e73','0,1,79,129374098af24b76a40909ee88c0af5a,a317c31fe8f84d3983e377eb0c470e73,','删除','120',NULL,NULL,NULL,'0','cases:caseTreeTable:del','1','2017-05-04 07:04:59','1','2017-05-04 07:04:59',NULL,'0'),('c6e0080e06014abd9240f870aadf3200','14','0,1,3,14,','增加','70',NULL,NULL,NULL,'0','sys:area:add','1','2015-12-25 05:35:39','1','2015-12-25 05:35:39',NULL,'0'),('c7fa36c7142f481397c2cc12e2bc828a','90','0,1,62,90,','修改','90',NULL,NULL,NULL,'0','oa:oaNotify:edit','1','2015-12-30 05:15:50','1','2015-12-30 05:15:50',NULL,'0'),('c9dd1e4a96d64aa3925ee948f871eb02','1','0,1,','阿里云配置','61','','','icon-cloud-upload','1','','1','2017-05-28 01:29:39','1','2017-05-28 01:29:39','','0'),('d3a8273bf68f49f0aea3bad361189e42','129374098af24b76a40909ee88c0af5a','0,1,79,129374098af24b76a40909ee88c0af5a,','一对多','90','/cases/caseOneToManyMain',NULL,NULL,'1','cases:caseOneToManyMain:list','1','2017-05-04 08:41:04','1','2017-05-04 08:41:04','票务代理','0'),('d3f1b6f292904ef5b95f7800cc777a48','82','0,1,79,82,','查看','30',NULL,NULL,NULL,'0','gen:genTable:view,gen:genTableColumn:view','1','2016-01-07 19:26:42','1','2016-01-07 19:26:42',NULL,'0'),('d47da5a1f27a4f18b38041451294185b','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','删除','120',NULL,NULL,NULL,'0','cases:caseOneToManyMain:del','1','2017-05-04 08:42:36','1','2017-05-04 08:42:36',NULL,'0'),('d75f64438d994fc4830b1b3d138cde32','82','0,1,79,82,','删除','120',NULL,NULL,NULL,'0','gen:genTable:del','1','2016-01-07 19:29:23','1','2016-01-07 19:29:23',NULL,'0'),('de3c77b64dbe402c9ffd79a852830cd4','79','0,1,79,','生成方案配置','50','/gen/genScheme',NULL,NULL,'1',NULL,'1','2017-05-03 21:31:04','1','2017-05-03 21:31:04',NULL,'0'),('de7c50d276454f80881c41a096ecf55c','7','0,1,3,7,','删除','160',NULL,NULL,NULL,'0','sys:role:del','1','2015-12-24 05:59:46','1','2015-12-24 05:59:46',NULL,'0'),('e03f8b6a5e454addb04fc08033b6f60b','82','0,1,79,82,','增加','90',NULL,NULL,NULL,'0','gen:genTable:add','1','2016-01-07 19:28:59','1','2016-01-07 19:28:59',NULL,'0'),('e2efcf80fc3747329fe02d489dbfda95','90','0,1,62,90,','删除','120',NULL,NULL,NULL,'0','oa:oaNotify:del','1','2015-12-30 05:16:14','1','2015-12-30 05:16:14',NULL,'0'),('e4e64e24aa134deaa9d69c3b9495c997','56e274e0ec1c41298e19ab46cf4e001f','0,1,56e274e0ec1c41298e19ab46cf4e001f,','二维码测试','150','/tools/TwoDimensionCodeController',NULL,NULL,'1',NULL,'1','2015-12-10 21:03:43','1','2017-04-30 09:44:51',NULL,'0'),('e668f4084dc9446ba32ad64633172ea0','e768001e0fc44005b9ac92a32c96f730','0,1,e768001e0fc44005b9ac92a32c96f730,','柱状图','60','/echarts/bar',NULL,NULL,'1',NULL,'1','2016-06-22 08:44:47','1','2016-06-22 08:44:47',NULL,'0'),('e768001e0fc44005b9ac92a32c96f730','1','0,1,','统计报表','30',NULL,NULL,'icon-bar-chart','1',NULL,'1','2016-06-22 08:43:08','1','2017-04-30 09:20:12',NULL,'0'),('e8103222a53f41d7b55ec8975c98e529','8eb7cbf2b3ab446f9e86e16d774ed489','0,1,5da359d63ee740a187ae03fd8304a18b,8eb7cbf2b3ab446f9e86e16d774ed489,','编辑','90',NULL,NULL,NULL,'0','config:configSms:edit','1','2017-05-05 04:22:38','1','2017-05-05 04:22:38',NULL,'0'),('e824b7c20bb34c9ca9ad023e8873e67b','82','0,1,79,82,','编辑','60',NULL,NULL,NULL,'0','gen:genTable:edit,gen:genTableColumn:edit','1','2016-01-07 19:27:55','1','2016-01-07 19:31:46',NULL,'0'),('ec7cf7a144a440cab217aabd4ffb7788','4','0,1,3,4,','查看','130',NULL,NULL,NULL,'0','sys:menu:view','1','2015-12-21 03:02:54','1','2015-12-21 03:02:54',NULL,'0'),('ef26c12172504addafcc2bdef495c275','5350b21c2c2b4484b54f4df1305f2455','0,1,79,129374098af24b76a40909ee88c0af5a,5350b21c2c2b4484b54f4df1305f2455,','导出','150',NULL,NULL,NULL,'0','cases:caseSingleTable:export','1','2017-05-04 01:30:45','1','2017-05-04 01:30:45',NULL,'0'),('f11bc057f93040c09f27d67691b3116a','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','查看','30',NULL,NULL,NULL,'0','cases:caseOneToManyMain:view','1','2017-05-04 08:41:39','1','2017-05-04 08:41:39',NULL,'0'),('f18fac5c4e6145528f3c1d87dbcb37d5','67','0,1,67,','系统监控管理','70','/monitor/info',NULL,NULL,'1',NULL,'1','2016-02-03 06:49:07','1','2016-02-03 07:15:07',NULL,'0'),('f34887a78fa245c1977603ca7dc98e11','20','0,1,3,20,','导入','130',NULL,NULL,NULL,'0','sys:user:import','1','2015-12-20 05:48:13','1','2015-12-20 05:48:44',NULL,'0'),('f5b2028cfad9470085c7c846de33193a','90','0,1,62,90,','查看','30',NULL,NULL,NULL,'0','oa:oaNotify:view','1','2015-12-30 05:14:46','1','2015-12-30 05:14:46',NULL,'0'),('f5c8f26fe4824edebc96f6b09542f86e','d3a8273bf68f49f0aea3bad361189e42','0,1,79,129374098af24b76a40909ee88c0af5a,d3a8273bf68f49f0aea3bad361189e42,','编辑','90',NULL,NULL,NULL,'0','cases:caseOneToManyMain:edit','1','2017-05-04 08:42:20','1','2017-05-04 08:42:20',NULL,'0'),('f93f9a3a2226461dace3b8992cf055ba','7','0,1,3,7,','权限设置','130',NULL,NULL,NULL,'0','sys:role:auth','1','2015-12-24 05:36:06','1','2015-12-24 05:36:06',NULL,'0'),('f9fe62186f0a4d7eada6c6827de79b26','7ec930fe50fb41d0a9c7aeaa01804d16','0,1,56e274e0ec1c41298e19ab46cf4e001f,4d463414bc974236941a6a14dc53c73a,7ec930fe50fb41d0a9c7aeaa01804d16,','查看','30',NULL,NULL,NULL,'0','tools:testInterface:view','1','2015-12-01 00:08:14','1','2016-04-11 05:21:33',NULL,'0');

/*Table structure for table `sys_office` */

DROP TABLE IF EXISTS `sys_office`;

CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

/*Data for the table `sys_office` */

insert  into `sys_office`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`area_id`,`code`,`type`,`grade`,`address`,`zip_code`,`master`,`phone`,`fax`,`email`,`USEABLE`,`PRIMARY_PERSON`,`DEPUTY_PERSON`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('60cc7eb9cb334e678d00a25e33e4400a','babede71a1e1452284bf12f25d06a1eb','0,babede71a1e1452284bf12f25d06a1eb,','技术部','30','a2f504c1f5544a3cacf95409883871c2','10000001','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2017-05-03 00:33:44','1','2017-05-03 00:33:44',NULL,'0'),('aa8dbbec83bc46e09f647788e1233a76','babede71a1e1452284bf12f25d06a1eb','0,babede71a1e1452284bf12f25d06a1eb,','行政部','30','a2f504c1f5544a3cacf95409883871c2','10000002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2017-05-03 00:34:06','1','2017-05-03 00:34:53',NULL,'0'),('babede71a1e1452284bf12f25d06a1eb','0','0,','总公司','30','1','10000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2017-05-03 00:33:06','1','2017-05-03 00:33:06',NULL,'0'),('c84e593b3b1a4a78bf2aadd7170796f0','babede71a1e1452284bf12f25d06a1eb','0,babede71a1e1452284bf12f25d06a1eb,','财务部','30','a2f504c1f5544a3cacf95409883871c2','10000003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2017-05-03 00:34:13','1','2017-05-03 00:35:01',NULL,'0'),('df3d7b051df14794ad7188a364bedf53','babede71a1e1452284bf12f25d06a1eb','0,babede71a1e1452284bf12f25d06a1eb,','市场部','30','a2f504c1f5544a3cacf95409883871c2','10000004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2017-05-03 00:39:00','1','2017-05-03 00:39:00',NULL,'0');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`office_id`,`name`,`enname`,`role_type`,`data_scope`,`is_sys`,`useable`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('48b6bb39f8474fa6a043d042c92aa109',NULL,'普通用户','normal','user','8','0','1','1','2017-05-03 01:49:16','1','2017-05-06 06:18:45',NULL,'0'),('cafed5fc5cc640a7be94089605fc45ea',NULL,'系统管理员','sa','security-role','1','0','1','1','2017-05-03 01:42:07','1','2017-05-06 06:19:59',NULL,'0'),('cc84e9d9052d431a96bfa7a785df2614',NULL,'超级管理员','admin','security-role','1','1','1','1','2017-05-03 01:41:21','1','2017-05-06 06:20:07',NULL,'0');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('48b6bb39f8474fa6a043d042c92aa109','0aa3712414d049a6a24e8bcddeae509a'),('48b6bb39f8474fa6a043d042c92aa109','1'),('48b6bb39f8474fa6a043d042c92aa109','27'),('48b6bb39f8474fa6a043d042c92aa109','29'),('48b6bb39f8474fa6a043d042c92aa109','56'),('48b6bb39f8474fa6a043d042c92aa109','57'),('48b6bb39f8474fa6a043d042c92aa109','58'),('48b6bb39f8474fa6a043d042c92aa109','62'),('48b6bb39f8474fa6a043d042c92aa109','89'),('48b6bb39f8474fa6a043d042c92aa109','95a6a82dc5fc4d07b46e5df57a0606a3'),('48b6bb39f8474fa6a043d042c92aa109','af0a174b4f424bc09a8cc0db83a64105'),('cafed5fc5cc640a7be94089605fc45ea','0aa3712414d049a6a24e8bcddeae509a'),('cafed5fc5cc640a7be94089605fc45ea','1'),('cafed5fc5cc640a7be94089605fc45ea','14'),('cafed5fc5cc640a7be94089605fc45ea','15'),('cafed5fc5cc640a7be94089605fc45ea','16'),('cafed5fc5cc640a7be94089605fc45ea','17'),('cafed5fc5cc640a7be94089605fc45ea','18'),('cafed5fc5cc640a7be94089605fc45ea','19'),('cafed5fc5cc640a7be94089605fc45ea','20'),('cafed5fc5cc640a7be94089605fc45ea','21'),('cafed5fc5cc640a7be94089605fc45ea','22'),('cafed5fc5cc640a7be94089605fc45ea','27'),('cafed5fc5cc640a7be94089605fc45ea','28abe4b0cb3b4c8480f84c07a5dfaf06'),('cafed5fc5cc640a7be94089605fc45ea','29'),('cafed5fc5cc640a7be94089605fc45ea','2a0f940fbe304a05a6b4040ddf6df279'),('cafed5fc5cc640a7be94089605fc45ea','3'),('cafed5fc5cc640a7be94089605fc45ea','43db72ba9bac4417a76e1e1fb5f76ebc'),('cafed5fc5cc640a7be94089605fc45ea','5239527958e94d418997b584b85d8b80'),('cafed5fc5cc640a7be94089605fc45ea','56'),('cafed5fc5cc640a7be94089605fc45ea','57'),('cafed5fc5cc640a7be94089605fc45ea','58'),('cafed5fc5cc640a7be94089605fc45ea','59'),('cafed5fc5cc640a7be94089605fc45ea','5da359d63ee740a187ae03fd8304a18b'),('cafed5fc5cc640a7be94089605fc45ea','62'),('cafed5fc5cc640a7be94089605fc45ea','67'),('cafed5fc5cc640a7be94089605fc45ea','68'),('cafed5fc5cc640a7be94089605fc45ea','79fca849d3da4a82a4ade3f6b9f45126'),('cafed5fc5cc640a7be94089605fc45ea','7eeb6e9113e646b5bde0d619faad67c4'),('cafed5fc5cc640a7be94089605fc45ea','88939db08fbe43bbab48fe9de9015409'),('cafed5fc5cc640a7be94089605fc45ea','89'),('cafed5fc5cc640a7be94089605fc45ea','8930e4aad1ba4a1c958d303968d8c442'),('cafed5fc5cc640a7be94089605fc45ea','8eb7cbf2b3ab446f9e86e16d774ed489'),('cafed5fc5cc640a7be94089605fc45ea','90'),('cafed5fc5cc640a7be94089605fc45ea','91aa429a6cdc4a9b954d84ff1456934b'),('cafed5fc5cc640a7be94089605fc45ea','95a6a82dc5fc4d07b46e5df57a0606a3'),('cafed5fc5cc640a7be94089605fc45ea','99303b45c8904c7fbdb73e59225e1e95'),('cafed5fc5cc640a7be94089605fc45ea','a4c3dcee6cbc4fc6a0bf617d8619edf3'),('cafed5fc5cc640a7be94089605fc45ea','af0a174b4f424bc09a8cc0db83a64105'),('cafed5fc5cc640a7be94089605fc45ea','b9a776f5d7194406bb466388e3af9d08'),('cafed5fc5cc640a7be94089605fc45ea','c6e0080e06014abd9240f870aadf3200'),('cafed5fc5cc640a7be94089605fc45ea','c7fa36c7142f481397c2cc12e2bc828a'),('cafed5fc5cc640a7be94089605fc45ea','e2efcf80fc3747329fe02d489dbfda95'),('cafed5fc5cc640a7be94089605fc45ea','e8103222a53f41d7b55ec8975c98e529'),('cafed5fc5cc640a7be94089605fc45ea','f18fac5c4e6145528f3c1d87dbcb37d5'),('cafed5fc5cc640a7be94089605fc45ea','f34887a78fa245c1977603ca7dc98e11'),('cafed5fc5cc640a7be94089605fc45ea','f5b2028cfad9470085c7c846de33193a'),('cc84e9d9052d431a96bfa7a785df2614','0787b03f8a7d46d2b398ddcc23545d31'),('cc84e9d9052d431a96bfa7a785df2614','0aa3712414d049a6a24e8bcddeae509a'),('cc84e9d9052d431a96bfa7a785df2614','1'),('cc84e9d9052d431a96bfa7a785df2614','10'),('cc84e9d9052d431a96bfa7a785df2614','11'),('cc84e9d9052d431a96bfa7a785df2614','12'),('cc84e9d9052d431a96bfa7a785df2614','129374098af24b76a40909ee88c0af5a'),('cc84e9d9052d431a96bfa7a785df2614','14'),('cc84e9d9052d431a96bfa7a785df2614','15'),('cc84e9d9052d431a96bfa7a785df2614','16'),('cc84e9d9052d431a96bfa7a785df2614','169219fbf6f641cdb3ff4d1e2c434ddd'),('cc84e9d9052d431a96bfa7a785df2614','17'),('cc84e9d9052d431a96bfa7a785df2614','18'),('cc84e9d9052d431a96bfa7a785df2614','19'),('cc84e9d9052d431a96bfa7a785df2614','1bc5b2ae7a0b41e3955c52388e82ceaa'),('cc84e9d9052d431a96bfa7a785df2614','1f2c7500841a4b118266e7facfabade6'),('cc84e9d9052d431a96bfa7a785df2614','20'),('cc84e9d9052d431a96bfa7a785df2614','21'),('cc84e9d9052d431a96bfa7a785df2614','22'),('cc84e9d9052d431a96bfa7a785df2614','27'),('cc84e9d9052d431a96bfa7a785df2614','271dc355078b401c98df258ffb53b845'),('cc84e9d9052d431a96bfa7a785df2614','28abe4b0cb3b4c8480f84c07a5dfaf06'),('cc84e9d9052d431a96bfa7a785df2614','29'),('cc84e9d9052d431a96bfa7a785df2614','2a0f940fbe304a05a6b4040ddf6df279'),('cc84e9d9052d431a96bfa7a785df2614','3'),('cc84e9d9052d431a96bfa7a785df2614','31c4b44cf1bb40f69b405fce9af481e0'),('cc84e9d9052d431a96bfa7a785df2614','3ae7300a403a4eb4b34df0b03811dfd7'),('cc84e9d9052d431a96bfa7a785df2614','3c1c639c76f14f6f9903b0143371ea09'),('cc84e9d9052d431a96bfa7a785df2614','4'),('cc84e9d9052d431a96bfa7a785df2614','43db72ba9bac4417a76e1e1fb5f76ebc'),('cc84e9d9052d431a96bfa7a785df2614','448062d7975044938c1646b132307ea2'),('cc84e9d9052d431a96bfa7a785df2614','4d463414bc974236941a6a14dc53c73a'),('cc84e9d9052d431a96bfa7a785df2614','4fd9c515b8314306a746c816a66ee9b3'),('cc84e9d9052d431a96bfa7a785df2614','5'),('cc84e9d9052d431a96bfa7a785df2614','50f46d53cae4454e866bf7d30a2c9d54'),('cc84e9d9052d431a96bfa7a785df2614','5239527958e94d418997b584b85d8b80'),('cc84e9d9052d431a96bfa7a785df2614','5350b21c2c2b4484b54f4df1305f2455'),('cc84e9d9052d431a96bfa7a785df2614','56'),('cc84e9d9052d431a96bfa7a785df2614','56e274e0ec1c41298e19ab46cf4e001f'),('cc84e9d9052d431a96bfa7a785df2614','57'),('cc84e9d9052d431a96bfa7a785df2614','57f1f00d6cb14819bef388acd10e6f5a'),('cc84e9d9052d431a96bfa7a785df2614','58'),('cc84e9d9052d431a96bfa7a785df2614','59'),('cc84e9d9052d431a96bfa7a785df2614','5d513a41e03c4dcdb15a389a37695139'),('cc84e9d9052d431a96bfa7a785df2614','5da359d63ee740a187ae03fd8304a18b'),('cc84e9d9052d431a96bfa7a785df2614','6'),('cc84e9d9052d431a96bfa7a785df2614','62'),('cc84e9d9052d431a96bfa7a785df2614','6509eed6eb634030a46723a18814035c'),('cc84e9d9052d431a96bfa7a785df2614','67'),('cc84e9d9052d431a96bfa7a785df2614','68'),('cc84e9d9052d431a96bfa7a785df2614','68f9151151174868ab436e11e03bf548'),('cc84e9d9052d431a96bfa7a785df2614','6d3a6777693f47c98e9b3051cacbcfdb'),('cc84e9d9052d431a96bfa7a785df2614','6e840261279c4d20ad8b48b51a1f5719'),('cc84e9d9052d431a96bfa7a785df2614','7'),('cc84e9d9052d431a96bfa7a785df2614','70de7eac2f3e4632b1b7aa3cd536b35a'),('cc84e9d9052d431a96bfa7a785df2614','70e0cd35107f410dabad5a525d642ac6'),('cc84e9d9052d431a96bfa7a785df2614','7461115bfc3b4f8bbcbd71911761edbc'),('cc84e9d9052d431a96bfa7a785df2614','79'),('cc84e9d9052d431a96bfa7a785df2614','79f0ffa47dbe43ffa8824d97612d344f'),('cc84e9d9052d431a96bfa7a785df2614','79fca849d3da4a82a4ade3f6b9f45126'),('cc84e9d9052d431a96bfa7a785df2614','7ec930fe50fb41d0a9c7aeaa01804d16'),('cc84e9d9052d431a96bfa7a785df2614','7eeb6e9113e646b5bde0d619faad67c4'),('cc84e9d9052d431a96bfa7a785df2614','8'),('cc84e9d9052d431a96bfa7a785df2614','82'),('cc84e9d9052d431a96bfa7a785df2614','84'),('cc84e9d9052d431a96bfa7a785df2614','88939db08fbe43bbab48fe9de9015409'),('cc84e9d9052d431a96bfa7a785df2614','89'),('cc84e9d9052d431a96bfa7a785df2614','8926112d6acd4a18b5e5dcf99a1f7ff3'),('cc84e9d9052d431a96bfa7a785df2614','8930e4aad1ba4a1c958d303968d8c442'),('cc84e9d9052d431a96bfa7a785df2614','8eb7cbf2b3ab446f9e86e16d774ed489'),('cc84e9d9052d431a96bfa7a785df2614','8fb45c2a04c543ca84cd489d96b01b1d'),('cc84e9d9052d431a96bfa7a785df2614','9'),('cc84e9d9052d431a96bfa7a785df2614','90'),('cc84e9d9052d431a96bfa7a785df2614','907f18048b6b450e9412207d253f4179'),('cc84e9d9052d431a96bfa7a785df2614','91aa429a6cdc4a9b954d84ff1456934b'),('cc84e9d9052d431a96bfa7a785df2614','95a6a82dc5fc4d07b46e5df57a0606a3'),('cc84e9d9052d431a96bfa7a785df2614','99303b45c8904c7fbdb73e59225e1e95'),('cc84e9d9052d431a96bfa7a785df2614','9bc1aa1053144a608b73f6fbd841d1c6'),('cc84e9d9052d431a96bfa7a785df2614','a2bff6320470407b89b7467164fd4afc'),('cc84e9d9052d431a96bfa7a785df2614','a317c31fe8f84d3983e377eb0c470e73'),('cc84e9d9052d431a96bfa7a785df2614','a4c3dcee6cbc4fc6a0bf617d8619edf3'),('cc84e9d9052d431a96bfa7a785df2614','a4cfc713c3c04c32a274fb59c71e34ed'),('cc84e9d9052d431a96bfa7a785df2614','af0a174b4f424bc09a8cc0db83a64105'),('cc84e9d9052d431a96bfa7a785df2614','b9a776f5d7194406bb466388e3af9d08'),('cc84e9d9052d431a96bfa7a785df2614','c3de25a76785419b8a6820db3935941d'),('cc84e9d9052d431a96bfa7a785df2614','c3f99e4843da49179a6ce796ac13cdd8'),('cc84e9d9052d431a96bfa7a785df2614','c6e0080e06014abd9240f870aadf3200'),('cc84e9d9052d431a96bfa7a785df2614','c7fa36c7142f481397c2cc12e2bc828a'),('cc84e9d9052d431a96bfa7a785df2614','d3a8273bf68f49f0aea3bad361189e42'),('cc84e9d9052d431a96bfa7a785df2614','d3f1b6f292904ef5b95f7800cc777a48'),('cc84e9d9052d431a96bfa7a785df2614','d47da5a1f27a4f18b38041451294185b'),('cc84e9d9052d431a96bfa7a785df2614','d75f64438d994fc4830b1b3d138cde32'),('cc84e9d9052d431a96bfa7a785df2614','de3c77b64dbe402c9ffd79a852830cd4'),('cc84e9d9052d431a96bfa7a785df2614','de7c50d276454f80881c41a096ecf55c'),('cc84e9d9052d431a96bfa7a785df2614','e03f8b6a5e454addb04fc08033b6f60b'),('cc84e9d9052d431a96bfa7a785df2614','e2efcf80fc3747329fe02d489dbfda95'),('cc84e9d9052d431a96bfa7a785df2614','e4e64e24aa134deaa9d69c3b9495c997'),('cc84e9d9052d431a96bfa7a785df2614','e668f4084dc9446ba32ad64633172ea0'),('cc84e9d9052d431a96bfa7a785df2614','e768001e0fc44005b9ac92a32c96f730'),('cc84e9d9052d431a96bfa7a785df2614','e8103222a53f41d7b55ec8975c98e529'),('cc84e9d9052d431a96bfa7a785df2614','e824b7c20bb34c9ca9ad023e8873e67b'),('cc84e9d9052d431a96bfa7a785df2614','ec7cf7a144a440cab217aabd4ffb7788'),('cc84e9d9052d431a96bfa7a785df2614','ef26c12172504addafcc2bdef495c275'),('cc84e9d9052d431a96bfa7a785df2614','f11bc057f93040c09f27d67691b3116a'),('cc84e9d9052d431a96bfa7a785df2614','f18fac5c4e6145528f3c1d87dbcb37d5'),('cc84e9d9052d431a96bfa7a785df2614','f34887a78fa245c1977603ca7dc98e11'),('cc84e9d9052d431a96bfa7a785df2614','f5b2028cfad9470085c7c846de33193a'),('cc84e9d9052d431a96bfa7a785df2614','f5c8f26fe4824edebc96f6b09542f86e'),('cc84e9d9052d431a96bfa7a785df2614','f93f9a3a2226461dace3b8992cf055ba'),('cc84e9d9052d431a96bfa7a785df2614','f9fe62186f0a4d7eada6c6827de79b26');

/*Table structure for table `sys_role_office` */

DROP TABLE IF EXISTS `sys_role_office`;

CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

/*Data for the table `sys_role_office` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`company_id`,`office_id`,`login_name`,`password`,`no`,`name`,`email`,`phone`,`mobile`,`user_type`,`photo`,`login_ip`,`login_date`,`login_flag`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`qrcode`) values ('1','babede71a1e1452284bf12f25d06a1eb','60cc7eb9cb334e678d00a25e33e4400a','admin','0ee4c3a6339e24a6c9eb4d5d54d5929aa9e3a8640cc0a3df79821cbe','15817137563','超级管理员','admin@qq.com',NULL,'15888888888','1','/userfiles/1/images/wechat.png','0:0:0:0:0:0:0:1','2017-05-06 06:23:03','1','1','2013-05-27 16:00:00','1','2017-05-06 06:16:33','超级管理员','0','/userfiles/1/qrcode/test.png'),('4dfa3a73f7eb49c9809245f474a409ec','babede71a1e1452284bf12f25d06a1eb','60cc7eb9cb334e678d00a25e33e4400a','normal','0aec75369d6e145a0d3946f06f5303f9a2e8d5187c79b206fe40d08b','002','普通用户',NULL,NULL,NULL,'3','/userfiles/1/images/photo/2017/05/team2.jpg','0:0:0:0:0:0:0:1','2017-05-06 06:20:30','1','1','2017-05-03 02:02:25','1','2017-05-05 05:18:04',NULL,'0','/userfiles/4dfa3a73f7eb49c9809245f474a409ec/qrcode/4dfa3a73f7eb49c9809245f474a409ec.png'),('5e7d1e75e24947348811a684062d0df0','babede71a1e1452284bf12f25d06a1eb','60cc7eb9cb334e678d00a25e33e4400a','system','6aa5b641be73d08ba616f6f4a3bd5e89873ebab98cf3b2e6f5ba3a0f','001','系统管理员',NULL,NULL,NULL,'2','/userfiles/1/images/photo/2017/05/team3.jpg','0:0:0:0:0:0:0:1','2017-05-06 06:21:46','1','1','2017-05-03 02:01:40','1','2017-05-06 06:20:22',NULL,'0','/userfiles/5e7d1e75e24947348811a684062d0df0/qrcode/5e7d1e75e24947348811a684062d0df0.png');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values ('1','cc84e9d9052d431a96bfa7a785df2614'),('4dfa3a73f7eb49c9809245f474a409ec','48b6bb39f8474fa6a043d042c92aa109'),('5e7d1e75e24947348811a684062d0df0','cafed5fc5cc640a7be94089605fc45ea');

/*Table structure for table `test_interface` */

DROP TABLE IF EXISTS `test_interface`;

CREATE TABLE `test_interface` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `url` varchar(256) DEFAULT NULL COMMENT '请求URL',
  `body` varchar(2048) DEFAULT NULL COMMENT '请求body',
  `successmsg` varchar(512) DEFAULT NULL COMMENT '成功时返回消息',
  `errormsg` varchar(512) DEFAULT NULL COMMENT '失败时返回消息',
  `remarks` varchar(512) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(1024) DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口列表';

/*Data for the table `test_interface` */

insert  into `test_interface`(`id`,`type`,`url`,`body`,`successmsg`,`errormsg`,`remarks`,`del_flag`,`name`) values ('49645e0449cb4683accda8e2f40c47cb','post','http://localhost:8080/a/login?__ajax','username=admin&amp;password=admin&amp;mobileLogin=true','{&quot;username&quot;:&quot;admin&quot;,&quot;name&quot;:&quot;超级管理员&quot;,&quot;mobileLogin&quot;:true,&quot;JSESSIONID&quot;:&quot;81e72daf354a44878db0d1be5c9e6f9a&quot;,&quot;success&quot;:true,&quot;msg&quot;:&quot;登录成功!&quot;}',NULL,NULL,'0','登录'),('542cd568c2314d7997dd3333297ed7e3','get','http://localhost:8080/a/logout;JSESSIONID=81e72daf354a44878db0d1be5c9e6f9a?__ajax=true',NULL,'{&quot;success&quot;:&quot;1&quot;,&quot;msg&quot;:&quot;退出成功&quot;}',NULL,NULL,'0','退出'),('a65aa873cee94bcd946bfc90bb6175a8','get','http://localhost:8080/a/sys/user/infoData;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax=true&amp;mobileLogin=true',NULL,NULL,'{&quot;error&quot;:&quot;0&quot;,&quot;msg&quot;:&quot;没有登录&quot;}','JSESSIONID是登录成功后返回的JSESSIONID','0','获取登录用户信息');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
