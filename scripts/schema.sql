/*
 Navicat Premium Data Transfer

 Source Server         : staging
 Source Server Type    : MySQL
 Source Server Version : 50634
 Source Host           : dev-db.cvs1lg0domzv.rds.cn-north-1.amazonaws.com.cn:3306
 Source Schema         : cpp_tool_staging

 Target Server Type    : MySQL
 Target Server Version : 50634
 File Encoding         : 65001

 Date: 23/08/2017 14:27:10
*/
use cpp_tool;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accompany_artists
-- ----------------------------
DROP TABLE IF EXISTS `accompany_artists`;
CREATE TABLE `accompany_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_target_id_and_target_type` (`target_id`,`target_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE accompany_artists AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for album_names
-- ----------------------------
DROP TABLE IF EXISTS `album_names`;
CREATE TABLE `album_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_album_names_on_album_id` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE album_names AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for album_resources
-- ----------------------------
DROP TABLE IF EXISTS `album_resources`;
CREATE TABLE `album_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8;
ALTER TABLE album_resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `upc` varchar(255) DEFAULT NULL COMMENT '商品统一编码，universal product code',
  `catalog_number` int(11) DEFAULT NULL COMMENT '专辑编号',
  `format` varchar(255) DEFAULT NULL COMMENT '专辑类型，0: album, 1: EP, 2: Single, 3:Box_Set',
  `catalog_tier` int(11) DEFAULT NULL COMMENT '价格分级，0: Budget, 1: Back, 2: Mid, 3: Front, 4: Premium',
  `language_id` int(11) DEFAULT NULL COMMENT '语言',
  `genre_id` int(11) DEFAULT '1' COMMENT '曲风',
  `sub_genre_id` int(11) DEFAULT NULL COMMENT '子曲风',
  `label` varchar(255) DEFAULT NULL COMMENT '唱片公司',
  `original_release_date` datetime DEFAULT NULL COMMENT '最初发行日期',
  `release_date` datetime DEFAULT NULL COMMENT '发行日期',
  `original_label_number` varchar(255) DEFAULT NULL COMMENT '原唱片公司编号',
  `p_line_copyright` varchar(255) DEFAULT NULL COMMENT '℗ ',
  `c_line_copyright` varchar(255) DEFAULT NULL COMMENT '©',
  `has_explict` int(11) DEFAULT '0' COMMENT '是否包含限制内容，0:no,1:yes,2:clean',
  `provider` int(11) DEFAULT NULL COMMENT '版权方ID',
  `uploaded_at` datetime DEFAULT NULL,
  `upload_method` int(11) DEFAULT NULL COMMENT '上传方式,0: user_upload, 1: user_batch_upload, 2: op_upload, 3: DDEX, 4: other',
  `uploader` int(11) DEFAULT NULL COMMENT '版权方上传经手人',
  `release_version` varchar(255) DEFAULT NULL COMMENT '发行版本',
  `sync_status` int(11) DEFAULT '0' COMMENT '同步状态 0: 还没有创建同步，1：同步成功，2：正在同步中， 3：已发送到太合，-1：同步失败',
  `total_volume` int(11) DEFAULT NULL COMMENT '专辑曲目数量',
  `cd_volume` int(11) DEFAULT NULL COMMENT 'cd数量',
  `display_artist` varchar(255) DEFAULT NULL COMMENT '艺人显示',
  `sub_genre` varchar(255) DEFAULT NULL COMMENT '子曲风',
  `recording_year` date DEFAULT NULL COMMENT '录音时间',
  `record_location` varchar(255) DEFAULT NULL COMMENT '录音地点',
  `remark` text COMMENT '备注',
  `status` int(11) DEFAULT '0' COMMENT '专辑状态 0: 待审核，1: 已审核',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'true删除,false未删除',
  `not_through_reason` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tracks_count` int(11) DEFAULT '0',
  `sync_time` datetime DEFAULT NULL COMMENT '同步时间',
  PRIMARY KEY (`id`),
  KEY `index_albums_on_status` (`status`),
  KEY `index_albums_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
ALTER TABLE albums AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for albums_tracks
-- ----------------------------
DROP TABLE IF EXISTS `albums_tracks`;
CREATE TABLE `albums_tracks` (
  `track_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  KEY `album_id` (`album_id`) USING BTREE,
  KEY `track_id` (`track_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for albums_videos
-- ----------------------------
DROP TABLE IF EXISTS `albums_videos`;
CREATE TABLE `albums_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_album_videos_on_video_id_and_album_id` (`video_id`,`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8mb4;
ALTER TABLE albums_videos AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for artist_albums
-- ----------------------------
DROP TABLE IF EXISTS `artist_albums`;
CREATE TABLE `artist_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `album_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `association_id` (`album_id`),
  KEY `artist_id` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10032 DEFAULT CHARSET=utf8mb4;
ALTER TABLE artist_albums AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for artist_names
-- ----------------------------
DROP TABLE IF EXISTS `artist_names`;
CREATE TABLE `artist_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artist_names_on_artist_id` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE artist_names AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for artist_resources
-- ----------------------------
DROP TABLE IF EXISTS `artist_resources`;
CREATE TABLE `artist_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) DEFAULT NULL COMMENT '艺人ID',
  `resource_id` int(11) DEFAULT NULL COMMENT '资源ID',
  `resource_type` varchar(255) DEFAULT NULL COMMENT '个人资源区分',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8;
ALTER TABLE artist_resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for artist_tracks
-- ----------------------------
DROP TABLE IF EXISTS `artist_tracks`;
CREATE TABLE `artist_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `artist_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10040 DEFAULT CHARSET=utf8mb4;
ALTER TABLE artist_tracks AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for artist_videos
-- ----------------------------
DROP TABLE IF EXISTS `artist_videos`;
CREATE TABLE `artist_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `artist_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artist_videos_on_video_id_and_artist_id` (`video_id`,`artist_id`),
  KEY `by_artist_type` (`artist_type`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
ALTER TABLE artist_videos AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL COMMENT '国籍',
  `country_name` varchar(255) DEFAULT NULL,
  `gender_type` int(11) DEFAULT NULL COMMENT '0男，1女，2组合',
  `label_id` int(11) DEFAULT NULL COMMENT '唱片公司ID',
  `label_name` varchar(255) DEFAULT NULL,
  `description` text COMMENT '艺人介绍',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'true删除,false未删除',
  `status` int(255) DEFAULT '0' COMMENT '0待审批 ,1审批通过，2审批未通过',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `not_through_reason` varchar(255) DEFAULT NULL,
  `multi_language_name_id` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL COMMENT '网站网址',
  `tracks_count` int(11) DEFAULT '0',
  `albums_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_artists_on_name` (`name`),
  KEY `index_artists_on_deleted` (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8;
ALTER TABLE artists AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for audits
-- ----------------------------
DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditable_id` int(11) DEFAULT NULL,
  `auditable_type` varchar(255) DEFAULT NULL,
  `associated_id` int(11) DEFAULT NULL,
  `associated_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `audited_changes` text,
  `version` int(11) DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `remote_address` varchar(255) DEFAULT NULL,
  `request_uuid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `associated_index` (`associated_id`,`associated_type`(25)) USING BTREE,
  KEY `auditable_index` (`auditable_id`,`auditable_type`(25)) USING BTREE,
  KEY `index_audits_on_created_at` (`created_at`) USING BTREE,
  KEY `index_audits_on_request_uuid` (`request_uuid`(30)) USING BTREE,
  KEY `user_index` (`user_id`,`user_type`(25)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10454 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authorized_areas
-- ----------------------------
DROP TABLE IF EXISTS `authorized_areas`;
CREATE TABLE `authorized_areas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
ALTER TABLE authorized_areas AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for authorized_businesses
-- ----------------------------
DROP TABLE IF EXISTS `authorized_businesses`;
CREATE TABLE `authorized_businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorized_range_id` int(11) DEFAULT NULL COMMENT '授权范围',
  `authorize_id` int(11) DEFAULT NULL COMMENT '授权书ID',
  `divided_point` varchar(100) DEFAULT NULL COMMENT '分成比例',
  `areas_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8;
ALTER TABLE authorized_businesses AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for authorized_businesses_areas
-- ----------------------------
DROP TABLE IF EXISTS `authorized_businesses_areas`;
CREATE TABLE `authorized_businesses_areas` (
  `authorized_business_id` int(11) DEFAULT NULL COMMENT '授权业务',
  `authorized_area_id` int(11) DEFAULT NULL COMMENT '区域',
  KEY `authorized_area_id` (`authorized_area_id`) USING BTREE,
  KEY `authorized_business_id` (`authorized_business_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authorized_ranges
-- ----------------------------
DROP TABLE IF EXISTS `authorized_ranges`;
CREATE TABLE `authorized_ranges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
ALTER TABLE authorized_ranges AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
ALTER TABLE banks AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for continents
-- ----------------------------
DROP TABLE IF EXISTS `continents`;
CREATE TABLE `continents` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cn_name` varchar(16) DEFAULT NULL COMMENT '中文名',
  `en_name` varchar(16) DEFAULT NULL COMMENT '英文名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
ALTER TABLE banks AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for contract_resources
-- ----------------------------
DROP TABLE IF EXISTS `contract_resources`;
CREATE TABLE `contract_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contract_resources_on_target_id_and_target_type` (`target_id`,`target_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;
ALTER TABLE contract_resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for copyrights
-- ----------------------------
DROP TABLE IF EXISTS `copyrights`;
CREATE TABLE `copyrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '版权最终归属',
  `provider_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8mb4;
ALTER TABLE copyrights AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `continent_id` int(8) DEFAULT NULL COMMENT '对应七大陆continent表的id',
  `name` varchar(256) DEFAULT NULL COMMENT '英文常用标准名称，主要用于显示',
  `lower_name` varchar(256) DEFAULT NULL COMMENT '对应于英文标准名称的小写，主要用于搜索比较',
  `country_code` varchar(64) DEFAULT NULL COMMENT '英文缩写名称，全大写',
  `full_name` varchar(256) DEFAULT NULL COMMENT '英文标准名称全称',
  `cname` varchar(256) DEFAULT NULL COMMENT '中文常用标准名称，通常简称',
  `full_cname` varchar(256) DEFAULT NULL COMMENT '中文全称名称，非缩写',
  `remark` text COMMENT '备注字段，保留',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cp_authorizes
-- ----------------------------
DROP TABLE IF EXISTS `cp_authorizes`;
CREATE TABLE `cp_authorizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT 'A',
  `contract_id` int(11) DEFAULT NULL COMMENT '合约',
  `currency_id` int(11) DEFAULT NULL COMMENT '货币',
  `account_id` int(11) DEFAULT NULL COMMENT '账号ID',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结算时间',
  `tracks_count` int(11) DEFAULT '0' COMMENT '授权歌曲数量',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8;
ALTER TABLE cp_authorizes AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for cp_contracts
-- ----------------------------
DROP TABLE IF EXISTS `cp_contracts`;
CREATE TABLE `cp_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(255) DEFAULT NULL COMMENT '合约编号',
  `project_no` varchar(255) DEFAULT NULL COMMENT '项目编号',
  `provider_id` int(11) DEFAULT NULL COMMENT '版权方',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `start_time` datetime DEFAULT NULL COMMENT '合约开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '合约结束时间',
  `allow_overdue` tinyint(1) DEFAULT '0' COMMENT '是否永久有效',
  `pay_type` int(11) DEFAULT '0' COMMENT '预付方式',
  `prepay_amount` decimal(10,2) DEFAULT '0.00' COMMENT '预付金额',
  `tracks_count` int(11) DEFAULT '0' COMMENT '全部授权歌曲数量',
  `status` int(11) DEFAULT '0' COMMENT '0:未审核1:通过2:未通过',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0:未删除1:删除',
  `not_through_reason` varchar(255) DEFAULT NULL COMMENT '未通过原因',
  `desc` text COMMENT '描述',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;
ALTER TABLE cp_contracts AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for cp_settlements
-- ----------------------------
DROP TABLE IF EXISTS `cp_settlements`;
CREATE TABLE `cp_settlements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `settlement_amount` float DEFAULT NULL COMMENT '结算金额',
  `settlement_cycle_start` date DEFAULT NULL COMMENT '结算周期开始时间',
  `settlement_cycle_end` date DEFAULT NULL COMMENT '结算周期结束时间',
  `settlement_date` date DEFAULT NULL COMMENT '结算日期',
  `status` int(11) DEFAULT '0' COMMENT '结算状态 0 待确认 1待支付2已支付',
  `provider_id` int(11) DEFAULT NULL COMMENT '版权方',
  `dsp_id` int(11) DEFAULT NULL COMMENT '渠道',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `currency_id` int(11) DEFAULT NULL COMMENT '货币',
  `file_url` varchar(255) DEFAULT NULL COMMENT '文件URL',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10042 DEFAULT CHARSET=utf8mb4;
ALTER TABLE cp_settlements AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `optype` int(11) DEFAULT '0' COMMENT '0:sp,1:cp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for donkey_jobs
-- ----------------------------
DROP TABLE IF EXISTS `donkey_jobs`;
CREATE TABLE `donkey_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for dsps
-- ----------------------------
DROP TABLE IF EXISTS `dsps`;
CREATE TABLE `dsps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `outer_id` int(11) DEFAULT NULL COMMENT 'DMC SP iD',
  `department_id` int(11) DEFAULT NULL,
  `optype` int(11) DEFAULT '0' COMMENT '0:全部1:无线2:新媒体3:海外',
  `is_agent` tinyint(1) DEFAULT '0',
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `desc` text,
  `status` int(11) DEFAULT '0',
  `not_through_reason` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
ALTER TABLE dsps AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for event_logs
-- ----------------------------
DROP TABLE IF EXISTS `event_logs`;
CREATE TABLE `event_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `op_time` datetime DEFAULT NULL,
  `event_type` int(11) DEFAULT '0',
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for exchange_rates
-- ----------------------------
DROP TABLE IF EXISTS `exchange_rates`;
CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL COMMENT '货币',
  `settlement_currency_id` int(11) DEFAULT NULL COMMENT '结算货币',
  `exchange_ratio` varchar(255) DEFAULT NULL COMMENT '兑换比例',
  `status` int(11) DEFAULT '0' COMMENT '0enabled ,1disabled',
  `rate_time` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'true删除,false未删除',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL COMMENT '语言名称',
  `en_name` varchar(255) DEFAULT NULL COMMENT '英文',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for multi_languages
-- ----------------------------
DROP TABLE IF EXISTS `multi_languages`;
CREATE TABLE `multi_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `multilanguage_id` int(11) DEFAULT NULL,
  `multilanguage_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `by_multilanguage_id` (`multilanguage_id`),
  KEY `by_multilanguage_type` (`multilanguage_type`(10))
) ENGINE=InnoDB AUTO_INCREMENT=10025 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE `permission_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `children_count` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permission_groups_on_parent_id` (`parent_id`),
  KEY `index_permission_groups_on_lft` (`lft`),
  KEY `index_permission_groups_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `permission_group_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `rule_type` int(11) DEFAULT '1' COMMENT '权限类型(1:查询权限;2:编辑权限;3:审核)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for permissions_roles
-- ----------------------------
DROP TABLE IF EXISTS `permissions_roles`;
CREATE TABLE `permissions_roles` (
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  KEY `index_roles_permissions_on_role_id` (`role_id`) USING BTREE,
  KEY `index_roles_permissions_on_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for providers
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `property` int(11) DEFAULT '0' COMMENT '属性0:个人1：公司',
  `contact` varchar(255) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `email` varchar(255) DEFAULT NULL COMMENT 'eamil',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `account_no` varchar(255) DEFAULT NULL COMMENT '卡号',
  `user_name` varchar(255) DEFAULT NULL COMMENT '账户名',
  `cycle` int(11) DEFAULT NULL COMMENT '结算周期天',
  `start_time` datetime DEFAULT NULL COMMENT '结算开始时间',
  `status` int(11) DEFAULT '0' COMMENT '0未审核1审核通过2未通过',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0未删除1删除',
  `current_amount` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  `copyright_id` int(11) DEFAULT NULL COMMENT '最终版权',
  `not_through_reason` varchar(255) DEFAULT NULL COMMENT '未通过原因',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8mb4;
ALTER TABLE providers AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '资源url',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'true删除,false未删除',
  `native_name` varchar(255) DEFAULT NULL COMMENT '资源原始名称',
  `position` int(11) DEFAULT NULL COMMENT '位置,用户各资源排序',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_resources_on_deleted` (`deleted`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=10044 DEFAULT CHARSET=utf8;
ALTER TABLE resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for revenue_files
-- ----------------------------
DROP TABLE IF EXISTS `revenue_files`;
CREATE TABLE `revenue_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revenue_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `processed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10098 DEFAULT CHARSET=utf8;
ALTER TABLE revenue_files AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for revenues
-- ----------------------------
DROP TABLE IF EXISTS `revenues`;
CREATE TABLE `revenues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dsp_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `income` float DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `process_status` int(11) DEFAULT '0',
  `is_std` tinyint(1) DEFAULT '0',
  `is_split` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reports_on_dsp_id` (`dsp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10103 DEFAULT CHARSET=utf8;
ALTER TABLE revenues AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for roles_users
-- ----------------------------
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id` (`role_id`) USING BTREE,
  KEY `index_roles_users_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL COMMENT '专辑 ID',
  `status` int(11) DEFAULT '0' COMMENT '状态 0：未处理，1：已完成，2：处理中，3：已发送到太合，-1：失败',
  `message` varchar(255) DEFAULT NULL COMMENT '失败原因',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `batch_no` varchar(255) DEFAULT NULL COMMENT '任务批次',
  PRIMARY KEY (`id`),
  KEY `index_tasks_on_album_id_and_status` (`album_id`,`status`),
  KEY `batch` (`batch_no`(191))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
ALTER TABLE tasks AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for track_composers
-- ----------------------------
DROP TABLE IF EXISTS `track_composers`;
CREATE TABLE `track_composers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `op_type` varchar(255) DEFAULT NULL COMMENT '工作类型',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_track_composers_on_track_id` (`track_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;
ALTER TABLE track_composers AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for track_resources
-- ----------------------------
DROP TABLE IF EXISTS `track_resources`;
CREATE TABLE `track_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` int(11) DEFAULT '0' COMMENT '1:音频2:歌词3:物料0:图片',
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_track_resources_on_track_id` (`track_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8;
ALTER TABLE track_resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for tracks
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `isrc` varchar(255) DEFAULT NULL COMMENT '标准录音制品编码',
  `status` int(11) DEFAULT '0',
  `language_id` int(11) DEFAULT NULL COMMENT '语种',
  `genre_id` int(11) DEFAULT NULL COMMENT '曲风',
  `sub_genre_id` int(11) DEFAULT NULL COMMENT '子曲风',
  `uploaded_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL COMMENT '歌曲在专辑中的顺序',
  `ost` varchar(255) DEFAULT NULL,
  `lyric` varchar(255) DEFAULT NULL COMMENT '作词',
  `label` varchar(255) DEFAULT NULL COMMENT '唱片公司',
  `label_code` varchar(255) DEFAULT NULL COMMENT '唱片公司编号',
  `pline` varchar(255) DEFAULT NULL,
  `cline` varchar(255) NOT NULL DEFAULT '',
  `is_agent` tinyint(1) DEFAULT '0' COMMENT '是否代理',
  `provider_id` int(11) DEFAULT NULL COMMENT '版权方ID',
  `contract_id` int(11) DEFAULT NULL COMMENT '合约ID',
  `authorize_id` int(11) DEFAULT NULL COMMENT '授权书ID',
  `copyright_id` int(11) DEFAULT NULL COMMENT '版权最终归属',
  `deleted` tinyint(1) DEFAULT '0',
  `remark` text COMMENT '备注',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `not_through_reason` varchar(255) DEFAULT NULL COMMENT '未通过原因',
  `release_version` varchar(255) DEFAULT NULL COMMENT '版本',
  `th_id` varchar(255) DEFAULT NULL COMMENT '太合ID',
  PRIMARY KEY (`id`),
  KEY `index_tracks_on_title` (`title`),
  KEY `position` (`position`),
  KEY `authorize_id_2` (`authorize_id`,`deleted`),
  KEY `contract_id` (`contract_id`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=10065 DEFAULT CHARSET=utf8;
ALTER TABLE tracks AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for tracks_videos
-- ----------------------------
DROP TABLE IF EXISTS `tracks_videos`;
CREATE TABLE `tracks_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8mb4;
ALTER TABLE tracks_videos AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for transations
-- ----------------------------
DROP TABLE IF EXISTS `transations`;
CREATE TABLE `transations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT '0.00' COMMENT '待结算金额',
  `balance` decimal(11,2) DEFAULT '0.00' COMMENT '当前余额',
  `status` int(11) DEFAULT '0' COMMENT '待支付：0 已支付1',
  `subject` varchar(255) DEFAULT NULL COMMENT '摘要',
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '1',
  `pay_time` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  KEY `traget_index` (`target_id`,`target_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
ALTER TABLE transations AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `avatar_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:未启动1:启动',
  `deleted` tinyint(1) DEFAULT '0',
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video_resources
-- ----------------------------
DROP TABLE IF EXISTS `video_resources`;
CREATE TABLE `video_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `by_resource_id` (`resource_id`),
  KEY `by_video_id` (`video_id`),
  KEY `by_resource_type` (`resource_type`(10))
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb4;
ALTER TABLE video_resources AUTO_INCREMENT=100000;
-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `format` int(11) DEFAULT NULL COMMENT '类型',
  `label` varchar(255) DEFAULT NULL COMMENT '唱片公司',
  `release_date` datetime DEFAULT NULL COMMENT '发行日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT '0' COMMENT 'pending,accepted,rejected',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'true删除,false未删除',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `not_through_reason` text COMMENT '未通过原因',
  `tracks_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `by_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8mb4;
ALTER TABLE videos AUTO_INCREMENT=100000;
SET FOREIGN_KEY_CHECKS = 1;
