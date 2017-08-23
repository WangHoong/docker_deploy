# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: dev-db.cvs1lg0domzv.rds.cn-north-1.amazonaws.com.cn (MySQL 5.6.34-log)
# Database: cpp_tool_staging
# Generation Time: 2017-08-23 07:47:13 +0000
# ************************************************************

use cpp_tool;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table authorized_areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authorized_areas`;

CREATE TABLE `authorized_areas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

LOCK TABLES `authorized_areas` WRITE;
/*!40000 ALTER TABLE `authorized_areas` DISABLE KEYS */;

INSERT INTO `authorized_areas` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(338,'全球',NULL,NULL),
	(339,'中国大陆',NULL,NULL),
	(340,'香港',NULL,NULL),
	(341,'澳门',NULL,NULL),
	(342,'台湾',NULL,NULL),
	(343,'日本',NULL,NULL),
	(344,'韩国',NULL,NULL),
	(345,'东南亚',NULL,NULL),
	(346,'英国',NULL,NULL),
	(347,'法国',NULL,NULL),
	(348,'美国',NULL,NULL),
	(349,'亚洲',NULL,NULL),
	(350,'欧洲',NULL,NULL),
	(351,'北美',NULL,NULL),
	(352,'澳洲',NULL,NULL);

/*!40000 ALTER TABLE `authorized_areas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table authorized_ranges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authorized_ranges`;

CREATE TABLE `authorized_ranges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `authorized_ranges` WRITE;
/*!40000 ALTER TABLE `authorized_ranges` DISABLE KEYS */;

INSERT INTO `authorized_ranges` (`id`, `name`)
VALUES
	(1,'网站'),
	(2,'移动客户端'),
	(3,'游戏');

/*!40000 ALTER TABLE `authorized_ranges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;

INSERT INTO `banks` (`id`, `name`, `account_no`)
VALUES
	(1,'建设银行','10000100000100'),
	(2,'招商银行','1000023232424214');

/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `continent_id`, `name`, `lower_name`, `country_code`, `full_name`, `cname`, `full_cname`, `remark`, `sort`)
VALUES
	(1,3,'Cameroon','the republic of cameroon','CMR','the Republic of Cameroon','喀麦隆','喀麦隆共和国','喀麦隆共和国（法语：République du Cameroun）通称喀麦隆，是位于非洲中西部的单一制共和国，西方与尼日利亚接壤，东北与东边分别和乍得与中非相靠，南方则与赤道几内亚、加蓬及刚果共和国毗邻。',NULL),
	(2,3,'Benin','the republic of benin ','BEN','the Republic of Benin ','贝宁','贝宁共和国','贝宁全称：贝宁共和国（法语República Popular do Benin,La République du Bénin）是位于西非中南部的国家，旧名达荷美（Dahomey），前法国殖民地，贝宁（Benin）南濒几内亚湾，东邻尼日利亚，北与尼日尔接壤，西北与布基纳法索相连，西和多哥接壤，海岸线长125公里。全境南北狭长，南窄北宽。南部沿海为宽约100公里的平原。中部为海拔200－400米波状起伏的高原。西北部的阿塔科拉山海拔641米，为全国最高点。',NULL),
	(3,3,'Madagascar','the republic of madagascar ','MDG','the Republic of Madagascar ','马达加斯加','马达加斯加共和国','马达加斯加全称马达加斯加共和国，非洲岛国，位于印度洋西部，隔莫桑比克海峡与非洲大陆相望，全岛由火山岩构成。作为非洲第一、世界第四大的岛屿，马达加斯加旅游资源丰富，上世纪90年代以来，该国政府将旅游业列为重点发展行业，鼓励外商向旅游业投资。居民中98%是马达加斯加人。',NULL),
	(4,3,'Rwanda','the republic of rwanda','RWA','the Republic of Rwanda','卢旺达','卢旺达共和国','卢旺达（Republika y\'u Rwanda） 是非洲中东部的一个国家，全称卢旺达共和国，位于非洲中东部赤道南侧，内陆国家。东邻坦桑尼亚，南连布隆迪，西和西北与刚果（金）交界，北与乌干达接壤，国土面积26338平方公里。境内多山，有“千丘之国”的称谓。',NULL),
	(5,3,'Seychelles','the republic of seychelles','SYC','the Republic of Seychelles','塞舌尔','塞舌尔共和国','塞舌尔，全名塞舌尔共和国，是坐落在东部非洲印度洋上的一个群岛国家。1976年6月29日塞舌尔宣告独立，成立塞舌尔共和国，属英联邦成员。全境半数地区为自然保护区，享有“旅游者天堂”的美誉。',NULL),
	(6,3,'Cote d\'lvoire','the republic of cote d\'ivoire','CIV','the Republic of Cote d\'ivoire','科特迪瓦','科特迪瓦共和国','科特迪瓦（Coate d\'Ivoire）全名科特迪瓦共和国（The Republic of Côte d\'Ivoire, La République de Côte d\'Ivoire ），科特迪瓦在法语的意思是“象牙的海岸”，应该国政府要求，中华人民共和国用音译名为科特迪瓦。联合国自1985年12月31日起使用此音译名。是西非国家，与加纳、利比里亚、几内亚、马里和布基纳法索相邻。海岸线长约500公里。',NULL),
	(7,3,'Egypt','the arab republic of egypt ','EGY','the Arab Republic of Egypt ','埃及','阿拉伯埃及共和国','埃及既是亚、非之间的陆地交通要冲，也是大西洋于印度洋之间海上航线的捷径，战略位置十分重要。埃及是中东人口最多的国家，也是非洲人口第二大国，在经济、科技领域方面长期处于非洲领先态势。也是一个非洲的强国，是非洲第三大经济体',NULL),
	(8,3,'Mauritius','the republic of mauritius','MUS','the Republic of Mauritius','毛里求斯','毛里求斯共和国','毛里求斯共和国为非洲东部一岛国，位于印度洋西南方，距马达加斯加约800公里，与非洲大陆相距2,200公里。作为火山岛国，毛里求斯四周被珊瑚礁环绕，岛上地貌千姿百态，沿海是狭窄平原，中部是高原山地，有多座山脉和孤立的山峰。整个国土由毛里求斯岛和其他小群岛组成，经历荷兰、法国和英国等国殖民统治后，于1968年3月12日脱离英国殖民获得独立，岛上亦有不少华人。',NULL),
	(9,3,'Burkina Faso','burkina faso','BFA','Burkina Faso','布基纳法索','布基纳法索','布基纳法索（法语:Burkina Faso）是位于非洲西部沃尔特河上游的内陆国。东邻贝宁、尼日尔，南与科特迪瓦、加纳、多哥交界，西、北与马里接壤。全境大部地区为内陆高原，地势平坦，自北向南徐缓倾斜，平均海拔不到300米；北部接近撒哈拉沙漠，西南部奥罗达拉地区地势较高；纳库鲁峰海拔749米，为全国最高点。主要河流有穆温河、纳康伯河和纳齐农河。',NULL),
	(10,3,'Eritrea','the commonwealth of eritrea','ERI','the Commonwealth of Eritrea','厄立特里亚','厄立特里亚国','厄立特里亚位于非洲东北部，西邻苏丹共和国，南邻埃塞俄比亚、吉布提，东隔红海与沙特阿拉伯和也门相望，扼红海进出印度洋的门户，地理位置十分重要。全国海岸线长1200公里',NULL),
	(11,3,'Sao Tome and Principe','the democratic republic sao tome and principe','STP','the Democratic Republic Sao Tome and Principe','圣多美和普林西比','圣多美和普林西比民主共和国','圣多美和普林西比民主共和国（葡萄牙语：República Democrática de São Tomé e Príncipe）位于非洲中西部几内亚湾，由圣多美岛、普林西比岛和附近一些礁屿组成，两岛都是火山岛，属热带雨林气候',NULL),
	(12,3,'Angola','the republic of angola','AGO','the Republic of Angola','安哥拉','安哥拉共和国','安哥拉位于非洲西南部，首都罗安达，西滨大西洋，北及东北邻刚果民主共和国，南邻纳米比亚，东南邻赞比亚，另有一块外飞地卡宾达省与刚果共和国、刚果民主共和国相邻。',NULL),
	(13,3,'Libyan Arab Jm','state of libya','LBY','State of Libya','利比亚','利比亚国','利比亚（全称利比亚国，阿拉伯语：دولة ليبيا‎‎，英语：State of Libya）是北非的一个国家，位于地中海南岸，与埃及、苏丹、乍得、尼日尔、阿尔及利亚跟突尼斯相邻。面积1759541平方公里。',NULL),
	(14,3,'Zimbabwe','the republic of zimbabwe','ZWE','the Republic of Zimbabwe','津巴布韦','津巴布韦共和国','津巴布韦共和国，是非洲南部的内陆国家，1980年4月18日独立建国。津巴布韦在1980年之前原本称为罗得西亚，这名字源自于替英国在这地区建立殖民地的塞西尔·罗兹。',NULL),
	(15,3,'Guinea','the republic of guinea','GIN','The Republic of Guinea','几内亚','几内亚共和国','几内亚共和国（The Republic of Guinea），简称几内亚，来源于柏柏尔语，意为“黑人的国家”，位于西非西岸，北邻几内亚比绍、塞内加尔和马里，东与科特迪瓦、南与塞拉利昂和利比里亚接壤，西濒大西洋。',NULL),
	(16,3,'Sierra Leone','the republic of sierra leone','SLE','The Republic of Sierra Leone','塞拉利昂','塞拉利昂共和国','塞拉利昂共和国位于西非大西洋岸，北部及东部被几内亚包围、东南与利比里亚接壤，首都弗里敦。台湾译为狮子山共和国，中国大陆和香港译为塞拉利昂共和国。',NULL),
	(17,3,'Reunion','reunion island','REU','Reunion Island','留尼汪','留尼汪岛','留尼汪岛（l\'île de la Reunion）面积2512平方公里， 人口840974人（2013年）。居民主要为马达加斯加人、非洲人、欧洲人、印度人、华人、巴基斯坦人和克里奥尔人。官方语言是法语。94%的居民信奉天主教，少数人信仰伊斯兰教、印度教、佛教。首府圣但尼（Saint-Denis)，人口132338人（1999年）。行政区域分为4个专区（无实权），24个市镇。货币欧元',NULL),
	(18,3,'Gabon','the gabonese republic','GAB','The Gabonese Republic','加蓬','加蓬共和国','加蓬共和国位于非洲中部西海岸，横跨赤道线。东、南与刚果相连，北与喀麦隆接壤，西北与赤道几内亚毗邻，西濒大西洋，海岸线长800公里。自从1960年8月17日脱离法国统治独立以来，加蓬共和国共经历了3届总统的统治。',NULL),
	(19,3,'Ghana','the republic of ghana','GHA','The Republic of Ghana','加纳','加纳共和国','加纳是非洲西部的一个国家，位于非洲西部、几内亚湾北岸，西邻科特迪瓦，北接布基纳法索，东毗多哥，南濒大西洋，海岸线长约562公里。地形南北长、东西窄。全境大部地区为平原，东部有阿克瓦皮姆山脉，南部有夸胡高原，北部有甘巴加陡崖。最高峰杰博博山海拔876米。',NULL),
	(20,3,'Tanzania','the united republic of tanzania','TZA','The United Republic of Tanzania','坦桑尼亚','坦桑尼亚联合共和国','坦桑尼亚全称：坦桑尼亚联合共和国（英文：The United Republic of Tanzania）。位于非洲东部、赤道以南。英联邦成员国之一。北与肯尼亚和乌干达交界，南与赞比亚、马拉维、莫桑比克接壤，西与卢旺达、布隆迪和刚果（金）为邻，东临印度洋。国土面积945087平方公里，截止2013年全国总人口4490万人。',NULL),
	(21,3,'Mali','the republic of mali','MLI','The Republic of Mali','马里','马里共和国','马里共和国（République du Mali）是西非的一个内陆国家，向北与阿尔及利亚、向东与尼日尔、向南与布基纳法索和科特迪瓦、向西南与几内亚、向西与毛里塔尼亚和塞内加尔接壤，是西非面积第二大的国家。它的北部边界在撒哈拉沙漠的中心，大多数人集中在南部，尼日尔河和塞内加尔河源于这里。马里过去也被称为法属苏丹，它的名字来源于马里帝国。马里国家面积的2%是农用地，同时80%的劳动力在农业工作。',NULL),
	(22,3,'Somalia','the somalia democratic republic','SOM','The Somalia Democratic Republic','索马里','索马里联邦共和国','索马里联邦共和国位于非洲大陆最东部的索马里半岛，拥有非洲最长的海岸线，总面积637660平方公里',NULL),
	(23,3,'Mauritania','the islamic republic of mauritania','MRT','The Islamic Republic of Mauritania','毛里塔尼亚','毛里塔尼亚伊斯兰共和国','毛里塔尼亚位于非洲西北部，地处北纬15～27度之间，面积103.07万平方公里。毛搭西濒大西洋，北部与西撒哈拉和阿尔及利亚接壤西，东南部与马里为邻，南与塞内加尔相望。地区属热带沙漠性气候，全境地势平坦。有2/3的地区是沙漠',NULL),
	(24,3,'Uganda','the republic of uganda','UGA','The Republic of Uganda','乌干达','乌干达共和国','乌干达，位于非洲东部，横跨赤道，东邻肯尼亚，南接坦桑尼亚和卢旺达，西接刚果（金），北连南苏丹，总面积24.15万平方公里。全境大部位于东非高原，多湖，平均海拔1000~1200米，有“高原水乡”之称。',NULL),
	(25,3,'Chad','the republic of chad','TCD','The Republic of Chad','乍得','乍得共和国','乍得（或译查德，阿拉伯语：تشاد‎，法语：Tchad），全称乍得共和国，是非洲中部的一个内陆国家，北接利比亚，东接苏丹，南接中非共和国，西南与喀麦隆、尼日利亚为邻，西与尼日尔交界。',NULL),
	(26,3,'Mayotte','territorial collectivity of mayotte','MYT','Territorial Collectivity of Mayotte','马约特岛','马约特岛','马约特岛（Mayotte ）曾经为法国的一个集体领地，全称为马约特集体领地(Territorial Collectivity of Mayotte, 法语作Collectivite Territoriale de Mayotte)，亦称马奥霍(Mahore)，现为法国的一个海外大区（海外省）。位于莫桑比克海峡，与大科摩罗岛、昂儒昂岛、莫埃利岛共同组成科摩罗群岛。面积为374平方公里，居民约18万人，经济以农业为主，主要生产香子兰等香料，是法国的海外领地之一，马约特岛包括大陆地岛、小陆地岛以及周围一些小岛，首府和最大城市马穆楚。岛屿也被临近的东非印度洋岛国科摩罗宣称所有，但由法国实际控制。',NULL),
	(27,3,'Comoros','union of comoros','COM','Union of Comoros','科摩罗','科摩罗联盟','科摩罗被称月亮之国、香料之国，是非洲一个位于印度洋上的岛国，位于非洲东侧莫桑比克海峡北端入口处，东、西距马达加斯加和莫桑比克各约300公里。组成科摩罗的大科摩罗岛、昂儒昂岛、莫埃利岛和马约特岛被誉为西印度洋上的四颗明珠。',NULL),
	(28,3,'Botswana','the republic of botswana','BWA','The Republic of Botswana','博茨瓦纳','博茨瓦纳共和国','博兹瓦纳（英文名：Botswana）又译为波札那，正式全名为博茨瓦纳共和国，是位于非洲南部的内陆国。\n全国国境皆为干燥的台地地形，南邻南非，西边为纳米比亚，东北与津巴布韦接壤，其国土北端只有在维多利亚瀑布附近与赞比亚接触到些许。',NULL),
	(29,3,'Senegal','the republic of senegal','SEN','the Republic of Senegal','塞内加尔','塞内加尔共和国','塞内加尔位于非洲西部凸出部位的最西端，首都达喀尔。北接毛里塔尼亚，东邻马里，南接几内亚和几内亚比绍，西临佛得角群岛。海岸线长约700公里。',NULL),
	(30,3,'Swaziland','the kingdom of swaziland','SWZ','The Kingdom of Swaziland','斯威士兰','斯威士兰王国','斯威士兰，位于非洲东南部为内陆国家，北、西、南三面为南非所环抱，东与莫桑比克为邻。地处南非高原东南边缘德拉肯斯山脉的东坡。\n',NULL),
	(31,3,'Guinea Bissau','the republic of guinea-bissau','GNB','The Republic of Guinea-Bissau','几内亚比绍','几内亚比绍共和国','几内亚比绍共和国是位于北大西洋沿岸的西非国家。[1]  几内亚比绍北邻塞内加尔，东方、南方邻几内亚，西邻大西洋。首都是比绍。',NULL),
	(32,3,'DR Congo','democratic republic of the congo','COD','Democratic Republic of the Congo','民主刚果','刚果民主共和国','刚果民主共和国（法语：République démocratique du Congo）是非洲中部的一个国家，旧称为扎伊尔（法语：Zaïre），首都为金沙萨。',NULL),
	(33,3,'Central African','the central african republic','CAF','The Central African Republic','中非','中非共和国','中非共和国（The Central African Republic），简称中非，是指非洲大陆中部的内陆国家。面积62.2万平方公里，东与苏丹交界，南同刚果（布）和刚果（金）接壤，西与喀麦隆毗连，北同乍得为邻。全国共有大小部族32个，主要有巴雅，班达、桑戈和曼吉阿族等。官方语言为法语。通用桑戈语',NULL),
	(34,3,'Lesotho','the kingdom of lesotho','LSO','The Kingdom of Lesotho','莱索托','莱索托王国','莱索托全名莱索托王国（索托语：Mmuso wa Lesotho，英语：Kingdom of Lesotho，意思是“说索托语的人们”），非洲南部国家之一，英联邦成员国之一。莱索托位于非洲东南部，为内陆国家，地处南非高原东缘德拉肯斯山西坡。',NULL),
	(35,3,'Congo','republic of the congo','COG','Republic of the Congo','刚果','刚果共和国','刚果共和国（英语：The Republic of Congo；法语：République du Congo），简称为刚果（布），位于非洲中西部，赤道横贯中部，东、南两面邻刚果（金）、安哥拉，北接中非、喀麦隆，西连加蓬，西南临大西洋，海岸线长150多公里，总面积为34.2万平方公里。[1] ',NULL),
	(36,3,'South Africa','the republic of south africa','ZAF','The Republic of South Africa','南非','南非共和国','南非共和国（The Republic of South Africa），简称南非。地处南半球，有“彩虹之国”之美誉，位于非洲大陆的最南端，陆地面积为1219090平方公里，其东、南、西三面被印度洋和大西洋环抱，陆地上与纳米比亚、博茨瓦纳、莱索托、津巴布韦、莫桑比克和斯威士兰接壤。东面隔印度洋和澳大利亚相望，西面隔大西洋和巴西、阿根廷相望。',NULL),
	(37,3,'Liberia','the republic of liberia','LBR','The Republic of Liberia','利比里亚','利比里亚共和国','利比里亚共和国（英语：Republic of Liberia），是非洲的一个国家，处于非洲西部。北接几内亚，西北接塞拉利昂，东邻科特迪瓦，西南濒大西洋。\n',NULL),
	(38,3,'Tunisia','the republic of tunisia','TUN','The Republic of Tunisia','突尼斯','突尼斯共和国','突尼斯（Tunisia）全称突尼斯共和国（The Republic of Tunisia，la Répubique Tunisienne）[1]  ，位于非洲大陆最北端，北部和东部面临地中海，隔突尼斯海峡与意大利的西西里岛相望，扼地中海东西航运的要冲，东南与利比亚为邻，西与阿尔及利亚接壤。突尼斯是世界上少数几个集中了海滩、沙漠、山林和古文明的国家之一，是悠久文明和多元文化的融和之地。突尼斯地处地中海地区的中央，拥有长达1300公里的海岸线。',NULL),
	(39,3,'Zambia','the republic of zambia','ZMB','The Republic of Zambia','赞比亚','赞比亚共和国','赞比亚共和国（The Republic of Zambia）是非洲中南部的一个内陆国家，大部分属于高原地区。北靠刚果民主共和国、东北邻坦桑尼亚、东面和马拉维接壤、东南和莫桑比克相连、南接津巴布韦、博茨瓦纳和纳米比亚，西面与安哥拉相邻。',NULL),
	(40,3,'Niger','the republic of niger','NER','The Republic of Niger','尼日尔','尼日尔共和国','尼日尔共和国位于非洲中西部，是撒哈拉沙漠南缘的内陆国，该国北与阿尔及利亚和利比亚接壤，南同尼日利亚和贝宁交界，西与马里和布基纳法索毗连，东同乍得相邻',NULL),
	(41,3,'Western Sahara','the sahrawi arab democratic republic western sahara','ESH','the Sahrawi Arab Democratic Republic Western Sahara','西撒哈拉','阿拉伯撒哈拉民主共和国','西撒哈拉（阿拉伯语：الصحراء الغربية‎，西班牙语：Sáhara Occidental，英语：Western Sahara）位于非洲西北部，地处撒哈拉沙漠西部，滨临大西洋，与摩洛哥、毛利塔尼亚、阿尔及利亚相邻。该地是一个有争议地区，摩洛哥声明对此地区拥有主权。另外，当地独立武装组织波利萨里奥阵线统治着该地区以东大约四分之一的荒芜地区，其余大部分均为摩洛哥所占领。目前，共有47个国家承认该武装政权所领导的“阿拉伯撒哈拉民主共和国（the Sahrawi Arab Democratic Republic）”为独立的阿拉伯国家之一。',NULL),
	(42,3,'Togo','the republic of togo','TGO','The Republic of Togo','多哥','多哥共和国','多哥共和国（法语：République Togolaise），是西非国家之一，东面与贝宁，北面与布基纳法索，西面与加纳相邻，南面有一小段海岸线面向几内亚湾。',NULL),
	(43,3,'Namibia','the republic of namibia','NAM','The Republic of Namibia','纳米比亚','纳米比亚共和国','纳米比亚共和国（英语：The Republic of Namibia）位于非洲西南部，北靠安哥拉和赞比亚，东连博茨瓦纳，南接南非。海拔高度为1000-2000米，干旱少雨，属亚热带、半沙漠性气候。该国分为13个行政区和50个地方政府，首都温得和克（Windhoek）。',NULL),
	(44,3,'Mozambique','the republic of mozambique','MOZ','The Republic of Mozambique','莫桑比克','莫桑比克共和国','莫桑比克共和国（葡萄牙语：República de Moçambique）曾译作莫三鼻给，是非洲南部国家，以葡萄牙语作为官方语言，1975年脱离葡萄牙殖民地而独立。作为与英国并无宪制关系的国家，在1995年以特殊例子加入英联邦。莫桑比克的前身，就是葡属东非洲，它是在1498年3月，被葡萄牙航海家达伽马所率领的船队发现，当时就有阿拉伯的贸易站在沿海一带设立。',NULL),
	(45,3,'Ethiopia','the federal democratic republic of ethiopia','ETH','The Federal Democratic Republic of Ethiopia','埃塞俄比亚','埃塞俄比亚联邦民主共和国','埃塞俄比亚全名埃塞俄比亚联邦民主共和国（旧称“阿比西尼亚帝国”，Abyssinia）是一个位于非洲东北的国家。\n与一般非洲国家不同，埃塞俄比亚在第二次世界大战被意大利入侵（1936-1941年）之前，一直维持其古老的君主制度，并未受到殖民主义浪潮的吞噬。1974年，一次军事流血政变将1930年以来一直统治埃塞俄比亚的皇帝海尔·塞拉西一世（Haile Selassie I）推翻以后，埃塞俄比亚改为奉行社会主义，直至1991年放弃社会主义。',NULL),
	(46,3,'Morocco','the kingdom of morocco','MAR','The Kingdom of Morocco','摩洛哥','摩洛哥王国','摩洛哥王国是非洲西北部的一个沿海阿拉伯国家，东部以及东南部与阿尔及利亚接壤，南部紧邻西撒哈拉，西部濒临大西洋，北部和西班牙、葡萄牙隔海相望。',NULL),
	(47,3,'Malawi','the republic of malawi','MWI','The Republic of Malawi','马拉维','马拉维共和国','马拉维全称：马拉维共和国（齐切瓦语：Dziko la Malaŵi；英语：Republic of Malawi），位于非洲东南部，是个内陆国家，被坦桑尼亚、莫桑比克、赞比亚三国包围其中，国土面积11.8万平方公里，人口1511.8万。马拉维得名于境内的马拉维湖，这个湖是非洲第三大湖，面积3万平方公里，湖水最深可达700多米，有很多世界独一无二的淡水鱼种类。',NULL),
	(48,3,'Nigeria','federal republic of nigeria','NGA','Federal Republic of Nigeria','尼日利亚','尼日利亚联邦共和国','尼日利亚联邦共和国（Federal Republic of Nigeria），位于6°27′N，3°24′E，处于西非东南部的国家，非洲几内亚湾西岸的顶点，邻国包括西边的贝宁，北边的尼日尔，东北方隔乍得湖与乍得接壤一小段国界，东和东南与喀麦隆毗连，南濒大西洋几内亚湾。',NULL),
	(49,3,'Cape Verde','the republic of cape verde','CPV','The Republic of Cape Verde','佛得角','佛得角共和国','佛得角位于北大西洋的佛得角群岛上，东距非洲大陆最西点佛得角（塞内加尔境内）500多公里，扼欧洲与南美、南非间交通要冲，包括圣安唐、圣尼古拉、萨尔、博阿维什塔、福古、圣地亚哥等15个大小岛屿，分北面的向风群岛和南面的背风群岛两组。民族语言为克里奥尔语。',NULL),
	(50,3,'Burundi','the republic of burundi','BDI','The Republic of Burundi','布隆迪','布隆迪共和国','布隆迪（The Republic of Burundi）位于非洲中东部赤道南侧。北与卢旺达接壤，东、南与坦桑尼亚交界，西与刚果（金）为邻，西南濒坦噶尼喀湖。境内多高原和山地，大部由东非大裂谷东侧高原构成，全国平均海拔1600米，有“山国”之称。',NULL),
	(51,3,'Algeria','people\'s democratic republic of algeria','DZA','People\'s Democratic Republic of Algeria','阿尔及利亚','阿尔及利亚民主人民共和国','阿尔及利亚经济规模在非洲居第四位，仅次于南非、尼日利亚和埃及。碳化氢产业（石油与天然气的统称）是阿国民经济的支柱。',NULL),
	(52,3,'Djibouti','the republic of djibouti','DJI','The Republic of Djibouti','吉布提','吉布提共和国','吉布提（法语La République de Djibouti ，阿法尔语：Gabuutih），阿法尔语意为“沸腾的蒸锅”，位于非洲东北部亚丁湾西岸，扼红海入印度洋的要冲，东南与索马里接壤，西南、西部和西北部三面毗邻埃塞俄比亚，北部和厄立特里亚接壤。',NULL),
	(53,3,'Gambia','islamic republic of gambia','GMB','Islamic Republic of Gambia','冈比亚','冈比亚伊斯兰共和国','冈比亚（全称：冈比亚伊斯兰共和国[1]  ，台湾地区称为“甘比亚”），位于北纬 13°28\'，西经 16°39\'，非洲西部大西洋沿岸地区，它西邻大西洋，北、东、南三面被塞内加尔紧紧包围，国土面积约为10380平方公里。',NULL),
	(54,3,'Eq.Guinea','the republic of equatorial guinea','GNQ','The Republic of Equatorial Guinea','赤道几内亚','赤道几内亚共和国','道几内亚（西班牙语：República de Guinea Ecuatorial），位于非洲中西部，西临大西洋，北邻喀麦隆，东、南与加蓬接壤。由大陆上的木尼河地区和几内亚湾内的比奥科、安诺本、科里斯科等岛屿组成。',NULL),
	(55,3,'Sudan','the republic of sudan','SDN','The Republic of Sudan','苏丹','苏丹共和国','苏丹共和国（阿拉伯语：جمهورية السودان‎；英语：Republic of the Sudan），位于非洲东北、红海沿岸、撒哈拉沙漠东端。苏丹国土面积1886068平方公里，为非洲面积第3大国，世界面积第15大国。首都喀土穆。',NULL),
	(56,3,'Kenya','the republic of kenya','KEN','The Republic of Kenya','肯尼亚','肯尼亚共和国','肯尼亚位于非洲东部，赤道横贯中部，东非大裂谷纵贯南北。东邻索马里，南接坦桑尼亚，西连乌干达，北与埃塞俄比亚、南苏丹交界，东南濒临印度洋，海岸线长536公里。国土面积的18%为可耕地，其余主要适于畜牧业。\n',NULL),
	(57,1,'Singapore','republic of singapore','SGP','Republic of Singapore','新加坡','新加坡共和国','新加坡，全称为新加坡共和国（英语： Republic of Singapore），旧称新嘉坡、星洲或星岛，别称为狮城，是东南亚的一个岛国，政治体制实行议会制共和制。新加坡北隔柔佛海峡与马来西亚为邻，南隔新加坡海峡与印度尼西亚相望，毗邻马六甲海峡南口，国土除新加坡岛之外，还包括周围数岛',NULL),
	(58,1,'Korea','republic of korea','KOR','Republic of Korea','韩国','大韩民国','韩国（谚文：한국），全称大韩民国，别称南韩或南朝鲜。位于东亚朝鲜半岛南部，总面积约10万平方公里（占朝鲜半岛总面积的45%），主体民族为朝鲜族（韩族），通用韩语（朝鲜语），总人口约5041.85万（2014年）。首都为首尔（旧称：汉城；谚文：서울）。',993),
	(59,1,'Syrian','the syrian arab republic','SYR','The Syrian Arab Republic','叙利亚','阿拉伯叙利亚共和国','阿拉伯叙利亚共和国（英语：The Syrian Arab Republic），通称为叙利亚，位于亚洲西部，地中海东岸，北与土耳其接壤，东同伊拉克交界，南与约旦毗连，西南与黎巴嫩和巴勒斯坦（或以色列）为邻，西与塞浦路斯隔地中海相望，包括戈兰高地，全国总面积为185180平方公里。沿海和北部地区属亚热带地中海气候，南部地区属热带沙漠气候。',NULL),
	(60,1,'Uzbekstan','the republic of uzbekistan','UZB','The Republic of Uzbekistan','乌兹别克斯坦','乌兹别克斯坦共和国','乌兹别克斯坦共和国（乌兹别克语：Oʻzbekiston Respublikasi，英语：The Republic of Uzbekistan），简称乌兹别克斯坦，是一个位于中亚的内陆国家，1991年从前苏联独立。是世上两个双重内陆国之一（另一个为列支敦士登）',NULL),
	(61,1,'Bahrian','the kingdom of bahrain','BHR','The Kingdom of Bahrain','巴林','巴林王国','巴林王国（The Kingdom of Bahrain），简称巴林。巴林，西亚国家，位于亚洲西部，为波斯湾西南部的岛国，邻近卡塔尔和沙特阿拉伯之间，属热带沙漠气候，石油为国家经济的支柱。阿拉伯人约占60%，75~80%的居民住在城市里。\n',NULL),
	(62,1,'Japan','japan','JPN','Japan','日本','日本国','日本（Japan），全称日本国，位于亚洲东部、太平洋西北部。国名意为“日出之国”，领土由北海道、本州、四国、九州四大岛及7200多个小岛组成，总面积37.8万平方千米。主体民族为和族，通用日语，总人口约1.26亿。',994),
	(63,1,'Jordan','the hashemite kingdom of jordan','JOR','The Hashemite Kingdom of Jordan','约旦','约旦哈希姆王国','约旦是一个比较小的阿拉伯国家，但相对周边国家来说约旦政治经济和文化生活等方面稳定。约旦人民生活较为富裕，在伊斯兰国家中相对开放。约旦比较缺乏淡水资源，石油资源不丰富。旅游业是约旦支柱产业之一，佩特拉古城，死海和瓦迪拉姆沙漠等景点成为世界各国游客探险旅行和休闲度假的首选目的地。',NULL),
	(64,1,'Vietnam','socialist republic of vietnam','VNM','Socialist Republic of Vietnam','越南','越南社会主义共和国','越南，全称为越南社会主义共和国（英语：Socialist Republic of Vietnam，越南语：Cộng hòa Xã hội Chủ nghĩa Việt Nam），是亚洲的一个社会主义国家。位于东南亚中南半岛东部，北与中国广西、云南接壤，西与老挝、柬埔寨交界，国土狭长，面积约33万平方公里，紧邻南海，海岸线长3260多公里，是以京族为主体的多民族国家。\n',NULL),
	(65,1,'Kirghizia','the kyrgyz republic','KGZ','The Kyrgyz Republic','吉尔吉斯斯坦','吉尔吉斯共和国','吉尔吉斯斯坦位于欧亚大陆的腹心地带，不仅是连接欧亚大陆和中东的要冲，还是大国势力东进西出、南下北上的必经之地。面积为19.85万平方公里，是位于中亚东北部的内陆国。',NULL),
	(66,1,'Thailand','kingdom of thailand','THA','Kingdom of Thailand','泰国','泰王国','泰王国（泰语：ราชอาณาจักรไทย），通称泰国（泰语：ประเทศไทย），是一个位于东南亚的君主立宪制国家。泰国位于中南半岛中部，其西部与北部和缅甸、安达曼海接壤，东北边是老挝，东南是柬埔寨，南边狭长的半岛与马来西亚相连。',NULL),
	(67,1,'Sri Lanka','the democratic socialist republic of sri lanka','LKA','The Democratic Socialist Republic of Sri Lanka','斯里兰卡','斯里兰卡民主社会主义共和国','斯里兰卡，全称斯里兰卡民主社会主义共和国（The Democratic Socialist Republic of Sri Lanka）[1]  ，旧称锡兰，是个热带岛国，位于印度洋海上，英联邦成员国之一。中国古代曾经称其为狮子国、师子国、僧伽罗。',NULL),
	(68,1,'United Arab Emirates','the united arab emirates','ARE','The United Arab Emirates','阿联酋','阿拉伯联合酋长国','阿拉伯联合酋长国（阿拉伯文：امارات عربية متحدة‎，英文：The United Arab Emirates），简称为阿联酋，位于阿拉伯半岛东部，北濒波斯湾，西北与卡塔尔为邻，西和南与沙特阿拉伯交界，东和东北与阿曼毗连海岸线长734公里，总面积83600平方公里，首都阿布扎比。[1] \n',NULL),
	(69,1,'Laos','lao people\'s democratic republic','LAO','Lao People\'s Democratic Republic','老挝','老挝人民民主共和国','老挝历史上曾是真腊王国的一部分。13至18世纪是南掌，之后受暹罗和越南入侵，后来又受法国入侵，1893年沦为法国殖民地。1945年独立，1975年废除君主制成立共和国。老挝是东南亚国家联盟成员国，也是最不发达国家之一，于1997年7月加入东盟。[1] ',NULL),
	(70,1,'Afghanistan','the islamic republic of afghanistan','AFG','the Islamic Republic of Afghanistan','阿富汗','阿富汗斯坦伊斯兰共和国','阿富汗位于西亚、南亚和中亚交汇处，北接土库曼斯坦、乌兹别克斯坦和塔吉克斯坦，东北突出的狭长地带与中国接壤，东和东南与巴基斯坦毗邻，西与伊朗交界。[2] ',NULL),
	(71,1,'Macau','macau macao','MAC','Macau Macao','澳门','中华人民共和国澳门特别行政区','澳门是一个国际自由港，是世界人口密度最高的地区之一，也是世界四大赌城之一。其著名的轻工业、旅游业、酒店业和娱乐场使澳门长盛不衰，成为全球最发达、富裕的地区之一。',997),
	(72,1,'Tajikistan','the republic of tajikistan','TJK','The Republic of Tajikistan','塔吉克斯坦','塔吉克斯坦共和国',NULL,NULL),
	(73,1,'Korea,DPR','democratic people\'s republic of korea','PRK','Democratic People\'s Republic of Korea','朝鲜','朝鲜民主主义人民共和国','鲜民主主义人民共和国于第二次世界大战后的1948年9月9日成立，领土面积122762平方公里，人口2405万（2008年）。朝鲜族为单一民族，通用朝鲜语。朝鲜民主主义人民共和国1958年宣布完成了城市、农村生产关系的社会主义改造，建立了社会主义经济制度。1970年宣布实现了社会主义工业化。1975年5月，成为“七十七国集团”正式成员国，同年8月正式加入不结盟运动。1991年9月17日同韩国一起加入了联合国。2000年7月，加入东盟地区论坛（ARF）。与163个国家（含欧盟）建立了外交关系。[1] ',NULL),
	(74,1,'Palestine','the state of palestine','PAL','The State of Palestine','巴勒斯坦','巴勒斯坦国','巴勒斯坦国（阿拉伯语：فلسطين‎‎，英语：Palestine）是中东的一个国家，由加沙和约旦河西岸两部分组成。加沙地区面积365平方公里，约旦河西岸地区面积5800平方公里。巴勒斯坦实际控制的土地面积为2500平方公里。',NULL),
	(75,1,'Hong Kong','hong kong','HKG','Hong Kong','香港','中华人民共和国香港特别行政区','香港是全球高度繁荣的国际大都会之一，全境由香港岛、九龙半岛、新界等3大区域组成，管辖陆地总面积1104.32平方公里，截至2014年末，总人口约726.4万人，人口密度居全世界第三。',998),
	(76,1,'Iraq','republic of iraq','IRQ','Republic Of Iraq','伊拉克','伊拉克共和国','伊拉克共和国位于亚洲西南部，阿拉伯半岛东北部，与它接壤的国家众多，南方是沙特阿拉伯、科威特，北方是土耳其，西北是叙利亚，伊朗和约旦各位于其东西两侧。阿拉伯族占全国总人口的73%，库尔德族占21%。该国穆斯林占人口的95%，其中什叶派穆斯林占54%、逊尼派穆斯林占41%。官方语言为阿拉伯语，北部库尔德地区的官方语言是库尔德语，东部地区有些居民讲波斯语。',NULL),
	(77,1,'Lebanon','the republic of lebanon','LBN','The Republic of Lebanon','黎巴嫩','黎巴嫩共和国','黎巴嫩共和国（阿拉伯语：لبنان；英文：Republic of Lebanon）位于亚洲西南部，地中海东部沿岸。黎巴嫩习惯上归入中东国家。该国东部和北部与叙利亚接壤，南部与以色列（或者巴勒斯坦，边界未划定）为邻，首都贝鲁特。黎巴嫩属热带地中海气候，沿海夏季炎热潮湿，冬季温暖。',NULL),
	(78,1,'Kuwait','the state of kuwait','KWT','The State of Kuwait','科威特','科威特国','科威特的石油和天然气资源丰富。科威特的已探明石油储量940亿桶，约为世界总储量的10% 。石油、天然气工业为国民经济的支柱，其产值占国内生产总值的45%。',NULL),
	(79,1,'Brunei','brunei darussalam','BRN','Brunei Darussalam','文莱','文莱达鲁萨兰国','文莱位于亚洲东南部，加里曼丹岛西北部，北濒中国南海，东南西三面与马来西亚的沙捞越州接壤，并被沙捞越州的林梦分隔为不相连的东西两部分。海岸线长约162公里，有33个岛屿，总面积为5765平方公里。属热带雨林气候',NULL),
	(80,1,'Maldives','the republic of maldives','MDV','The Republic of Maldives','马尔代夫','马尔代夫共和国','马尔代夫全称：马尔代夫共和国（原名马尔代夫群岛，1968年11月改为现名[1]  ）位于南亚，是印度洋上的一个岛国，也是世界上最大的珊瑚岛国。由1200余个小珊瑚岛屿组成，其中202个岛屿有人居住，从空中鸟瞰就像一串珍珠撒在印度洋上。面积300平方公里（不计算领海），是亚洲最小的国家',NULL),
	(81,1,'Indonesia','the republic of indonesia','IDN','The Republic of Indonesia','印度尼西亚','印度尼西亚共和国','印度尼西亚共和国（印尼语：Republik Indonesia，英语：The Republic of Indonesia），简称印度尼西亚或印尼，是东南亚国家，首都为雅加达。印尼与巴布亚新几内亚、东帝汶和马来西亚等国家相接。',NULL),
	(82,1,'Israel','the state of israel','ISR','The State of Israel','以色列','以色列国','以色列对于科学和科技的发展贡献相当大。自从建国以来，以色列一直致力于科学和工程学的技术研发，以色列的科学家在遗传学、计算机科学、光学、工程学、以及其他技术产业上的贡献都相当杰出。以色列的研发产业中最知名的是其军事科技产业，在农业、物理学和医学上的研发也十分知名。\n\n',NULL),
	(83,1,'Mongolia','mongolia','MNG','Mongolia','蒙古','蒙古国','蒙古，历史上曾被匈奴、鲜卑、柔然、突厥等游牧民族统治。1206年，成吉思汗建立了蒙古帝国；1271年，忽必烈建立元朝；17世纪末，被纳入清朝统治范围。1921年，取得事实独立。1924年，成立受前苏联控制的蒙古人民共和国。1992年2月改国名为“蒙古国”[2]  。',NULL),
	(84,1,'Oman','sultanate of oman','OMN','Sultanate of Oman','阿曼','阿曼苏丹国','阿曼苏丹国（The Sultanate of Oman），简称为阿曼，位于亚洲西部的阿拉伯半岛东南部，它扼守着世界上最重要的石油输出通道——波斯湾和阿曼湾之间的霍尔木兹海峡。阿曼是阿拉伯半岛最古老的国家之一，公元前2000年已经广泛进行海上和陆路贸易活动，并成为阿拉伯半岛的造船中心。',NULL),
	(85,1,'India','the republic of india','IND','The Republic of India','印度','印度共和国','印度是世界四大文明古国之一。公元前2500年至1500年之间创造了印度河文明。公元前1500年左右，原居住在中亚的雅利安人中的一支进入南亚次大陆，征服当地土著，建立了一些奴隶制小国，确立了种姓制度，婆罗门教兴起。公元前4世纪崛起的孔雀王朝统一印度，中世纪小国林立，印度教兴起。1600年英国侵入，建立东印度公司。1757年沦为英殖民地。1947年8月15日，印巴分治，印度独立。1950年1月26日，印度共和国成立，为英联邦成员国',981),
	(86,1,'Myanmar','republic of the union of myanmar','MMR','Republic Of The Union Of Myanmar','缅甸','缅甸联邦共和国','缅甸联邦共和国简称为缅甸，是东南亚国家联盟成员国之一。西南临安达曼海，西北与印度和孟加拉国为邻，东北靠中国，东南接泰国与老挝。首都为内比都。',NULL),
	(87,1,'Malaysia','malaysia','MYS','Malaysia','马来西亚','马来西亚联邦','马来西亚，全称马来西亚联邦（Malaysia，前身马来亚），简称大马。马来西亚被南中国海分为两个部分：位于马来半岛的西马来西亚，北接泰国，南部隔着柔佛海峡，以新柔长堤和第二通道连接新加坡；东马来西亚，位于婆罗洲（加里曼丹岛）的北部，南接印度尼西亚，文莱国夹在沙巴州和砂拉越州之间。',NULL),
	(88,1,'East Timor','democratic republic of east timor','TMP','Democratic Republic of East Timor','东帝汶','东帝汶民主共和国','东帝汶全称东帝汶民主共和国（英语：Democratic Republic of Timor-Leste）是位于努沙登加拉群岛东端的岛国，包括帝汶岛东部和西部北海岸的欧库西地区以及附近的阿陶罗岛和东端的雅库岛。西与印尼西帝汶相接，南隔帝汶海与澳大利亚相望',NULL),
	(89,1,'Yemen','the republic of yemen','YEM','The Republic of Yemen','也门','也门共和国','也门有3000多年文字记载的历史，是阿拉伯世界古代文明摇篮之一。也门是世界上经济最不发达的国家之一，粮食不能自给，约1/2依靠进口。在夏季有着沙漠中常见的沙尘暴，而因过度放牧，沙漠化日渐严重。该国的棉花质量良好，每年有大量出口，咖啡种植面积也很大，占重要地位。近年，政府致力于减少预算赤字和政府开支，努力控制通货膨胀，稳定物价。',NULL),
	(90,1,'Bhutan','kingdom of bhutan','BTN','Kingdom of Bhutan','不丹','不丹王国','不丹自8世纪即为吐蕃一个部落，9世纪，不丹为独立部落。1772年，英国侵犯不丹。1865年11月，英国同不丹签订了《辛楚拉条约》，强迫不丹割让包括噶伦堡在内的第斯泰河以东约2000平方公里的地区。1907年建立不丹王国，乌颜·旺楚克成为世袭国王。1910年1月，英国和不丹又签订了《普那卡条约》，规定不丹对外关系接受英国的“指导”，1949年8月，印度和不丹签订《永久和平与友好条约》，规定不丹对外关系接受印度的“指导”。1971年成为联合国成员国。',NULL),
	(91,1,'Cambodia','kingdom of cambodia','KHM','Kingdom of Cambodia','柬埔寨','柬埔寨王国','柬埔寨全名柬埔寨王国（Kingdom of Cambodia）[1]  ，通称柬埔寨，旧称高棉，位于中南半岛，西部及西北部与泰国接壤，东北部与老挝交界，东部及东南部与越南毗邻，南部则面向暹罗湾。柬埔寨领土为碟状盆地，三面被丘陵与山脉环绕，中部为广阔而富庶的平原，占全国面积四分之三以上。境内有湄公河和东南亚最大的淡水湖－洞里萨湖（又称金边湖），首都金边。',NULL),
	(92,1,'Pakistan','the islamic republic of pakistan','PAK','the Islamic Republic of Pakistan','巴基斯坦','巴基斯坦伊斯兰共和国','巴基斯坦位于南亚次大陆西北部，南濒阿拉伯海，东接印度，东北邻中国，西北与阿富汗交界，西邻伊朗。海岸线长980公里。南部属热带气候，其余属亚热带气候。首都伊斯兰堡，前首都卡拉奇是最大城市。',NULL),
	(93,1,'Bangladesh','people\'s republic of bangladesh','BGD','People\'s Republic of Bangladesh','孟加拉国','孟加拉人民共和国','孟加拉族是南亚次大陆古老民族之一。孟加拉地区的最早居民是亚澳人。1757年，孟加拉国沦为英属印度的一个省，1947年印巴分治后，归属巴基斯坦，被称为东巴基斯坦。1971年，脱离巴基斯坦而独立。',NULL),
	(94,1,'Saudi Arabia','kingdom of saudi arabia','SAU','Kingdom of Saudi Arabia','沙特阿拉伯','沙特阿拉伯王国','沙特是名副其实的“石油王国”，石油储量和产量均居世界首位，使其成为世界上最富裕的国家之一。[1]  沙特是世界上最大的淡化海水生产国，其海水淡化量占世界总量的21%左右。沙特实行自由经济政策。麦加是伊斯兰教创建人穆罕默德的诞生地，是伊斯兰教徒朝觐圣地。',NULL),
	(95,1,'Turkmenistan','turkmenistan','TKM','Turkmenistan','土库曼斯坦','土库曼斯坦','土库曼斯坦（英语：Turkmenistan）是一个中亚国家，曾是前苏联加盟共和国之一，苏联时期的名称为土库曼苏维埃社会主义共和国，1991年独立。该国位于伊朗以北，东南面和阿富汗接壤、东北面与乌兹别克斯坦为邻、西北面是哈萨克斯坦，西邻里海，是一个内陆国家。',NULL),
	(96,1,'Qatar','the state of qatar','QAT','The State of Qatar','卡塔尔','卡塔尔国','卡塔尔拥有相当丰富的石油和天然气资源，天然气的总储量为全世界第三名。20世纪40年代，石油储量的发现，完全改变了整个国家的经济。拥有很高的生活水准，有许多提供给国民的社会福利，例如免费的医疗服务。',NULL),
	(97,1,'Nepal','federal democratic republic of nepal','NPL','Federal Democratic Republic of Nepal','尼泊尔','尼泊尔联邦民主共和国','尼泊尔联邦民主共和国（Federal Democratic Republic of Nepal），简称尼泊尔，为南亚山区内陆国家，是世界三大宗教之一佛教的发源地，位于喜马拉雅山脉南麓，北与中华人民共和国西藏自治区相接，东与印度共和国锡金邦为邻，西部和南部与印度共和国西孟加拉邦、比哈尔邦、北方邦和北阿坎德邦接壤。',NULL),
	(98,1,'Kazakhstan','the republic of kazakhstan','KAZ','The Republic of Kazakhstan','哈萨克斯坦','哈萨克斯坦共和国','哈萨克斯坦原为苏联加盟共和国之一，在1991年12月16日宣布独立。与俄罗斯、中国、吉尔吉斯斯坦、乌兹别克斯坦、土库曼斯坦等国接壤，并与伊朗、阿塞拜疆隔里海相望，国土面积排名世界第九位。',NULL),
	(99,1,'Philippines','republic of the philippines','PHL','Republic of the Philippines','菲律宾','菲律宾共和国','菲律宾人的祖先是亚洲大陆的移民。在14世纪前后，建立了海上强国苏禄王国。1565年，西班牙侵占菲律宾，统治菲300多年。1898年美国占领菲律宾。1942年，日本占领菲律宾。二战后，菲重新沦为美国殖民地。1946年，菲律宾独立',NULL),
	(100,1,'Taiwan','taiwan','TWN','Taiwan','台湾','中国台湾','台湾（Taiwan）位于中国大陆东南沿海的大陆架上，东临太平洋，[1]  东北邻琉球群岛，[2]  南界巴士海峡与菲律宾群岛相对，[3]  西隔台湾海峡与福建省相望，[4-5]  总面积约3.6万平方千米，包括台湾岛及兰屿、绿岛、钓鱼岛等21个附属岛屿和澎湖列岛64个岛屿。台湾岛面积35882.6258平方千米，[6]  是中国第一大岛，[7]  7成为山地与丘陵，平原主要集中于西部沿海，地形海拔变化大。由于地处热带及亚热带气候之交界，自然景观与生态资源丰富多元。人口约2350万，逾7成集中于西部5大都会区，[8]  其中以首要都市台北为中心的台北都会区最大。',997),
	(101,1,'China','people\'s republic of china','CHN','People\'s Republic of China','中国','中华人民共和国','中国是四大文明古国之一，[18-19]  有着悠久的历史文化，是世界国土面积第三大的国家，[20-21]  世界第一大人口国，与英、法、美、俄并为联合国安理会五大常任理事国。中国是世界第二大经济体，[22-23]  世界第一贸易大国，[24]  世界第一大外汇储备国，[25]  世界第一大钢铁生产国和世界第一大农业国，[26-27]  世界第一大粮食总产量国以及世界上经济成长最快的国家之一。[28-29]  第二大吸引外资国，[30]  还是世界许多国际组织的重要成员，[31]  被认为是潜在超级大国之一。',999),
	(102,1,'Iran','the islamic republic of iran','IRN','The Islamic Republic of Iran','伊朗','伊朗伊斯兰共和国','伊朗是亚洲主要经济体之一，经济实力较强。伊朗经济以石油开采业为主，为世界石油天然气大国，地处世界石油天然气最丰富的中东地区，石油出口是经济命脉，石油生产能力和石油出口量分别位于世界第四位和第二位，是石油输出国组织成员。伊朗的石油化工、钢铁、汽车制造业发达，还有电子工业、核工业、计算机软硬件业。',NULL),
	(103,6,'Costa Rica','republic of costa rica','CRI','Republic of Costa Rica','哥斯达黎加','哥斯达黎加共和国','哥斯达黎加是拉丁美洲的一个共和国，北邻尼加拉瓜，南与巴拿马接壤，1983年11月17日宣布成为永久中立国，根据宪法，哥斯达黎加没有军队，只有警察和安全部队维护内部安全。是世界上第一个不设军队的国家',NULL),
	(104,6,'Cuba','the republic of cuba','CUB','The Republic of Cuba','古巴','古巴共和国','古巴是北美洲加勒比海北部的群岛国家，哈瓦那是古巴的经济、政治中心和首都。\n古巴是现存世界为数不多的5个社会主义国家（中国、朝鲜、古巴、越南、老挝）之一，而且是美洲唯一的社会主义国家。[1]  在历史上以上世纪60年代的猪湾事件和古巴导弹危机闻名。',NULL),
	(105,6,'Dominican','the dominican republic','DOM','The Dominican Republic','多米尼加','多米尼加共和国','多米尼加共和国（英语：The Dominican Republic；西班牙语：La República Dominicana）。国名意为“星期天、休息日”。旧说哥伦布于15世纪末的一个星期日到此，故名多米尼加，首都圣多明各。',NULL),
	(106,6,'Mexico','the united states of mexico','MEX','The United States of Mexico','墨西哥','墨西哥合众国','墨西哥是一个自由市场经济体，拥有现代化的工业与农业，私有经济比重也在大幅提升。1994年北美自由贸易区正式建立后，墨西哥与美国的贸易和投资往来增加很快，极大地促进了经济发展和国民收入提高。',NULL),
	(107,6,'Nicaragua','the republic of nicaragua','NIC','The Republic of Nicaragua','尼加拉瓜','尼加拉瓜共和国','尼加拉瓜，全称尼加拉瓜共和国（英文：The Republic of Nicaragua），是一个总统共和制的国家，位于中美洲中部，北接洪都拉斯，南连哥斯达黎加，东临加勒比海，西濒太平洋，尼加拉瓜湖为中美洲最大的湖泊，首都为马那瓜。',NULL),
	(108,6,'Panama','the republic of panama','PAN','The Republic of Panama','巴拿马','巴拿马共和国','1501年，巴拿马沦为西班牙殖民地。1903年11月3日，成立巴拿马共和国。巴拿马中央连接大西洋与太平洋的巴拿马运河，拥有重要的战略地位，是南、北美洲的分界线。1999年12月31日美国将巴拿马运河所有土地、建筑、基础设施和所有的管理权都交还给巴拿马。鉴于重要的地理位置，巴拿马经济的重点是服务业，以金融、贸易和旅游业为主。金融业和转口贸易发达，并在经济中占重要地位。[1-2] ',NULL),
	(109,7,'Netherlands Antilles','netherlands antilles','ANT','Netherlands Antilles','荷属安地列斯群岛','荷属安地列斯群岛','荷属安的列斯群岛（荷兰语：Netherlands Antilles） 加勒比海小安地列斯群岛的5个岛屿。1954年起成为荷兰的自治领地。由相隔遥远的南北两组岛屿组成︰北组位于小安地列斯群岛北端，包括圣尤斯特歇斯(Sint Eustatius)岛，圣马丁（荷兰语作圣马尔滕〔Sint Maarten〕)岛南部和萨巴(Saba)岛；南组距委内瑞拉海岸97公里(60哩），包括博奈尔(Bonaire)和库拉索(Curacao)二岛(1986年以前尚包括阿鲁巴〔Aruba〕岛)。',NULL),
	(110,6,'El Salvador','the republic of el salvador','SLV','The Republic of El Salvador','萨尔瓦多','萨尔瓦多共和国','萨尔瓦多，全称萨尔瓦多共和国（英语：The Republic of El Salvador，西班牙语：República de El Salvador）是位于中美洲北部的一个沿海国家，也是中美洲人口最密集的国家。萨尔瓦多毗邻太平洋，国土面积20720平方千米，下设14个省。2013年，该国总人口630万',NULL),
	(111,6,'Puerto Rico','the commonwealth of puerto rico','PTR','The Commonwealth of Puerto Rico','波多黎各','波多黎各自由邦','波多黎各自治邦（英语：The Commonwealth of Puerto Rico，西班牙语：Estado Libre Asociado de Puerto Rico）位于加勒比海的大安的列斯群岛东部。包括波多黎各岛及别克斯、库莱夫拉等小岛。北临大西洋，南濒加勒比海、东与美属、英属维尔京群岛隔水相望，西隔莫纳海峡同多米尼加共和国为邻。首府为圣胡安。',NULL),
	(112,6,'Saint Vincent and the Grenadines','saint vincent and the grenadines','VAG','Saint Vincent and the Grenadines','圣文森特和格纳丁斯','圣文森特和格林纳丁斯','圣文森特和格林纳丁斯是位于东加勒比海小安的列斯群岛南部的一个岛国。面积389平方公里，人口11万，主要为黑人和黑白混血种人。圣文森特本岛面积346平方公里，格林纳丁斯群岛则由三十二个小岛组成，面积合共43平方公里。',NULL),
	(113,6,'Honduras','republic of honduras','HND','Republic of Honduras','洪都拉斯','洪都拉斯共和国','洪都拉斯，全称洪都拉斯共和国（西班牙语：República de Honduras），是中北美洲的一个多山国家，与危地马拉、萨尔瓦多和尼加拉瓜接壤，位于太平洋和加勒比海之间，有海岸线。',NULL),
	(114,6,'Guatemala','the republic of guatemala','GTM','The Republic of Guatemala','危地马拉','危地马拉共和国','危地马拉共和国（西班牙语：República de Guatemala），是中美洲的一个总统共和制国家，位于北美洲大陆的南部。西滨太平洋，东临加勒比海，向北与墨西哥相接，向东北邻伯利兹，向东南邻洪都拉斯和萨尔瓦多，全国总面积108889平方公里。[1] ',NULL),
	(115,2,'Georgia','georgia','GEO','Georgia','格鲁吉亚','格鲁吉亚','格鲁吉亚（英语：Georgia，格鲁吉亚语：საქართველო，罗马化：Sakartvelo）位于亚洲西南部高加索地区的黑海沿岸，北邻俄罗斯，南部与土耳其、亚美尼亚、阿塞拜疆接壤。',NULL),
	(116,2,'Armenia','the republic of armenia','ARM','The Republic of Armenia','亚美尼亚','亚美尼亚共和国','亚美尼亚共和国（英语：Republic of Armenia），简称亚美尼亚。是一个位于欧亚交界高加索地区的国家，也是在苏联解体之后独立的众多共和国之一，首都为埃里温。亚美尼亚族占93.3%，其他有俄罗斯人、乌克兰人、库尔德人、亚述人、希腊人等。',NULL),
	(117,2,'Azerbaijan','the republic of azerbaijan','AZE','The Republic of Azerbaijan','阿塞拜疆','阿塞拜疆共和国','阿塞拜疆共和国（阿塞拜疆语：Azərbaycan Respublikası）简称阿塞拜疆（英语发音：/ˌæzərbaɪˈdʒɑːn/ AZ-ər-by-JAHN; 阿塞拜疆语：Azərbaycan），国名意为“火的国家”，是东欧和西亚的“十字路口”。',NULL),
	(118,2,' Belarus','the republic of belarus','BLR','The Republic of Belarus','白俄罗斯','白俄罗斯共和国','白俄罗斯全称白俄罗斯共和国（白俄罗斯语：Рэспубліка Беларусь，英语：The Republic of Belarus）是位于东欧平原的内陆国家，东北部与俄罗斯联邦为邻，南与乌克兰接壤，西同波兰相连，西北部与立陶宛和拉脱维亚毗邻。首都明斯克。',NULL),
	(119,2,'Russia','russian federation','RUS','Russian Federation','俄罗斯联邦','俄罗斯联邦','俄罗斯联邦（俄语：Российская Федерация，英语：The Russian Federation），通称俄罗斯（俄国为俄罗斯帝国的简称），是由22个自治共和国、46个州、9个边疆区、4个自治区、1个自治州、3个联邦直辖市组成的联邦共和立宪制国家。[1]  国旗为白、蓝、红三色旗。国徽主体为双头鹰图案。俄罗斯位于欧亚大陆北部，地跨欧亚两大洲，国土面积为1707.54万平方公里，是世界上面积最大的国家。',NULL),
	(120,2,'Ukraine','ukraine','UKR','Ukraine','乌克兰','乌克兰','乌克兰（乌克兰文：УКРАЇНА）位于欧洲东部，是欧洲除俄罗斯外领土面积最大的国家。乌克兰是原苏联15个加盟共和国之一，是次于俄罗斯第二大加盟共和国。1991年苏联解体后，乌克兰独立。\n',NULL),
	(121,2,'Hungary','hungary','HUN','Hungary','匈牙利','匈牙利','匈牙利（匈牙利文：Magyarország）是一个位于欧洲中部的内陆国家，与奥地利、斯洛伐克、乌克兰、罗马尼亚、塞尔维亚、克罗地亚和斯洛文尼亚接壤，截止2014年1月，全国总人口987.9万人，首都为布达佩斯。官方语言为匈牙利语，这是欧洲最广泛使用的非印欧语系语言。',NULL),
	(122,2,'Iceland','the republic of iceland','ISL','The Republic of Iceland','冰岛','冰岛共和国','冰岛共和国（冰岛语：Ísland），简称冰岛，是北大西洋中的一个岛国，位于大西洋和北冰洋的交汇处，北欧五国之一，国土面积为10.3万平方千米，人口约为32万，是欧洲人口密度最小的国家。首都是雷克雅未克，也是冰岛的最大城市，首都附近的西南地区人口占全国的三分之二。',NULL),
	(123,2,'Malta','republic of malta','MLT','Republic of Malta','马耳他','马耳他共和国','马耳他[1]  是位于地中海中部的岛国，有“地中海心脏”之称，是欧洲最著名的休闲度假地；他是欧亚非海运交通的枢纽。由于重要战略位置，马耳他在历史上曾为多个民族占领。',NULL),
	(124,2,'Monaco','the principality of monaco','MCO','The Principality of Monaco','摩纳哥','摩纳哥公国','摩纳哥公国（法语：Principauté de Monaco，英语：The Principality of Monaco）是位于欧洲的一个城邦国家，是欧洲两个公国之一（另一个是列支敦士登），也是世界第二小的国家（面积最小的是梵蒂冈），总面积为1.98平方公里。',NULL),
	(125,2,'Norway','the kingdom of norway','NOR','The Kingdom of Norway','挪威','挪威王国','挪威（挪威语：Norge 或Noreg），全称为挪威王国（挪威语：Kongeriket Norge或 Kongeriket Noreg）。 意为“通往北方之路”，北欧五国之一，位于斯堪的纳维亚半岛西部。挪威领土南北狭长，海岸线漫长曲折，沿海岛屿很多，被称为“万岛之国”，领土与瑞典、芬兰、俄罗斯接壤，领土还包括斯瓦尔巴群岛和扬马延岛。首都为奥斯陆。',NULL),
	(126,2,'Romania','romania','ROM','Romania','罗马尼亚','罗马尼亚','罗马尼亚（罗马尼亚语：Lomânia）位于东南欧巴尔干半岛东北部。北和东北分别与乌克兰和摩尔多瓦为邻，南接保加利亚，西南和西北分别与塞尔维亚和匈牙利接壤，东南临黑海。面积238391平方公里，人口1994万（2014年12月）。首都布加勒斯特。[',NULL),
	(127,2,'San Marino','the republic of san marino','SMR','The Republic of San Marino','圣马力诺','圣马力诺共和国','圣马力诺共和国（意大利语：Repubblica di San Marino）是世界上袖珍国家之一，位于欧洲南部，意大利半岛东部，整个国家被意大利包围，是一个国中国。地形以中部的蒂塔诺山（海拔738米）为主体，丘陵由此向西南延展，东北部为平原，有圣马力诺河、马拉诺河等流经。属亚热带地中海式气候，总面积61.2平方公里，是欧洲第三小国',NULL),
	(128,2,'Sweden','the kingdom of sweden','SWE','The Kingdom of Sweden','瑞典','瑞典王国','瑞典（瑞典语：Sverige），全称瑞典王国(瑞典语：Konungariket Sverige)，是一个位于斯堪的纳维亚半岛的国家，北欧五国之一，首都为斯德哥尔摩。它西邻挪威，东北与芬兰接壤，西南濒临斯卡格拉克海峡和卡特加特海峡，东边为波罗的海与波的尼亚湾。瑞典与丹麦、德国、波兰、俄罗斯、立陶宛、拉脱维亚和爱沙尼亚隔海相望，海岸线长7624千米，总面积约45万平方公里，是北欧最大的国家。',NULL),
	(129,2,'Switzerland','swiss confederation','CHE','Swiss Confederation','瑞士','瑞士联邦','瑞士，全称瑞士联邦（德语：Schweizerische Eidgenossenschaft 法语：Confédération suisse 意大利语：Confederazione Svizzera 罗曼什语：Confederaziun svizra），为中欧国家之一，划分为26个州。瑞士北邻德国，西邻法国，南邻意大利，东邻奥地利和列支敦士登。全境以高原和山地为主，有“欧洲屋脊”之称。\n',NULL),
	(130,2,'Estonia','republic of estonia','EST','Republic of Estonia','爱沙尼亚','爱沙尼亚共和国','爱沙尼亚共和国是东欧波罗的海三国之一，波罗的海东岸，芬兰湾南岸，西南濒里加湾，南面和东面分别同拉脱维亚和俄罗斯接壤。1991年，继立陶宛独立后，宣布独立，首都为塔林。',NULL),
	(131,2,'Latvia','republic of latvia','LVA','Republic of Latvia','拉脱维亚','拉脱维亚共和国','拉脱维亚共和国（拉脱维亚语：Latvijas Republika）。国名源自民族语，意为“铠甲”、“金属制的服装”，是一个位于欧洲东北部的议会共和制国家。西邻波罗的海，与在其北方的爱沙尼亚及在其南方的立陶宛共同称为波罗的海三国。东与俄罗斯、白俄罗斯二国相邻，全国总面积64589平方公里',NULL),
	(132,2,'Lithuania','the republic of lithuania','LTU','The Republic of Lithuania','立陶宛','立陶宛共和国','立陶宛全称：立陶宛共和国（立陶宛语：Lietuvos Respublika，英语：Republic of Lithuania）。位于波罗的海东岸，北界拉脱维亚，东南邻白俄罗斯，西南是俄罗斯的加里宁格勒州和波兰，首都维尔纽斯。\n',NULL),
	(133,2,'Moldavia','the republic of moldova','MDA','The Republic of Moldova','摩尔多瓦','摩尔多瓦共和国','摩尔多瓦共和国（英文：The Republic of Moldova）是位于东南欧的内陆国，与罗马尼亚和乌克兰接壤，首都基希讷乌。',NULL),
	(134,1,'Turkey','the republic of turkey','TUR','The Republic of Turkey','土耳其','土耳其共和国','土耳其共和国（土耳其文：Türkiye Cumhuriyeti，英语：The Republic of Turkey）是一个横跨欧亚两洲的国家，北临黑海，南临地中海，东南与叙利亚、伊拉克接壤，西临爱琴海，并与希腊以及保加利亚接壤，东部与格鲁吉亚、亚美尼亚、阿塞拜疆和伊朗接壤。土耳其地理位置和地缘政治战略意义极为重要，是连接欧亚的十字路口。',NULL),
	(135,2,'Slovenia','the republic of slovenia','SVN','The Republic of Slovenia','斯洛文尼亚','斯洛文尼亚共和国','斯洛文尼亚（斯洛文尼亚语：Slovenia）是欧洲的一个发达国家，全称为斯洛文尼亚共和国，是欧盟成员国、北约（NATO）成员国、经合组织（OECD）成员国、欧洲申根国，2008年上半年任欧盟轮值主席国。[1]  斯洛文尼亚在东南欧经济转型国家当中人均GDP名列第一，同时该国也是世界贸易组织的创始会员国之一。该国位于阿尔卑斯山脉南麓，西邻意大利，西南濒临亚得里亚海，东部和南部被克罗地亚包围，东北邻匈牙利，北邻奥地利。',NULL),
	(136,2,'Czech','the czech republic','CZE','The Czech Republic','捷克','捷克共和国','捷克全称：捷克共和国，是一个中欧地区的内陆国家，国土面积78866平方公里，原捷克斯洛伐克的西部，其前身为波希米亚王国和大摩拉维亚国，于1993年与斯洛伐克和平地分离。',NULL),
	(137,2,'Slovak','the slovak republic','SVK','The Slovak Republic','斯洛伐克','斯洛伐克共和国','斯洛伐克共和国，简称斯洛伐克，是中欧的一个内陆国家，西北临捷克，北临波兰，东临乌克兰，南临匈牙利，西南临奥地利，原捷克斯洛伐克的东部，自1993年1月1日起，斯洛伐克成为独立主权国家。',NULL),
	(138,2,'Macedonia','the republic of macedonia','MKD','The Republic of Macedonia','马其顿','马其顿共和国','马其顿共和国（Република Македониа），位于欧洲东南部巴尔干半岛。而马其顿地区包括从前南斯拉夫独立出来的马其顿共和国、希腊北部的马其顿地区(包括中马其顿、西马其顿、东马其顿-色雷斯)，以及保加利亚的西南角。马其顿共和国的主体民族是斯拉夫人的一支，与古代大希腊的马其顿王国（全盛时期又称亚历山大帝国）无关。',NULL),
	(139,2,'Bosnia Hercegovina','bosnia and herzegovina','BIH','Bosnia and Herzegovina','波斯尼亚和黑塞哥维那','波斯尼亚和黑塞哥维那','波斯尼亚和黑塞哥维那位于原南斯拉夫中部，介于克罗地亚、塞尔维亚和黑山三个共和国之间，简称“波黑”，面积51129平方公里[1]  。1945年，南斯拉夫各族人民取得反法西斯战争胜利，成立南斯拉夫联邦人民共和国（1963年改称南斯拉夫社会主义联邦共和国），波黑成为其中的一员。首都萨拉热窝。',NULL),
	(140,2,'Vatican City State','vatican city state','VAT','Vatican City State','梵蒂冈城国','梵蒂冈城国','梵蒂冈城国（拉丁语：Status Civitatis Vaticanae；意大利语：Stato della Città del Vaticano），简称梵蒂冈或梵蒂冈城，是一个独立的主权国家，由于四面都与意大利接壤，故称“国中国”。同时也是全世界天主教的中心——以教宗为首的教廷的所在地，是世界六分之一人口的信仰中心。',NULL),
	(141,2,'Netherlands','the kingdom of netherlands','NLD','The Kingdom of Netherlands','荷兰','尼德兰王国','荷兰（荷兰语:Nederland），本称尼德兰王国，因其荷兰省最为出名，故称荷兰（Holland）多被世界称为荷兰。位于欧洲西偏北部，是著名的亚欧大陆桥的欧洲始发点。',NULL),
	(142,2,'Croatia','the republic of croatia','HRV','The Republic of Croatia','克罗地亚','克罗地亚共和国','克罗地亚为高收入市场经济体。克罗地亚经济以第三产业为主，第二产业为副，旅游业是国家经济的重要组成部分。克罗地亚是原南地区经济较为发达的国家，经济基础良好，旅游、建筑、造船和制药等产业发展水平较高。足球和网球并列为克罗地亚的第一运动。',NULL),
	(143,2,'Greece','the hellenic republic','GRC','The Hellenic Republic','希腊','希腊共和国','希腊共和国（希腊语：Ελληνική Δημοκρατία），通称希腊（希腊语：Ελλάδα），是地处欧洲东南角、巴尔干半岛的南端的共和制国家。全国由半岛南部的伯罗奔尼撒半岛和爱琴海中的3000余座岛屿共同构成。希腊为连接欧亚非的战略要地，本土从西北至正北部分别邻阿尔巴尼亚、马其顿、保加利亚三国，东北与土耳其国境接壤。周围则自东而西分别濒临爱琴海、地中海本域与伊奥尼亚海。',NULL),
	(144,2,'Ireland','the republic of ireland','IRL','The Republic of Ireland','爱尔兰','爱尔兰共和国','爱尔兰（爱尔兰语：Poblacht na hÉireann；英语：Republic of Ireland）， 是一个西欧的议会共和制国家，西临大西洋，东靠爱尔兰海，与英国隔海相望，是北美通向欧洲的通道，爱尔兰自然环境保持得相当好，素有“翡翠岛国”之称，全国绿树成荫，河流纵横。草地遍布，所以又有“绿岛”和“绿宝石”之称。它的大学教育非常成熟，首都都柏林自中世纪起就被誉为大学城。国内气候温和，各地的气温相对均衡。5~6月份是一年中阳光最充足的时期，比较适宜旅行。\n',NULL),
	(145,2,'Belgium','the kingdom of belgium','BEL','The Kingdom Of Belgium','比利时','比利时王国','比利时王国简称比利时，位于欧洲西部沿海，东与德国接壤，北与荷兰比邻，南与法国交界，东南与卢森堡毗连，西临北海与英国隔海相望。海岸线长66.5公里。全国面积2/3为丘陵和平坦低地，全境分为西北部沿海佛兰德伦平原、中部丘陵、东南部阿登高原三部分，最高点海拔694米，主要河流有马斯河和埃斯考河，属海洋温带阔叶林气候，四季明显',NULL),
	(146,2,'Cyprus','the republic of cyprus','CYP','the Republic of Cyprus','塞浦路斯','塞浦路斯共和国','塞浦路斯，是位于欧洲与亚洲交界处的一个岛国，位于地中海东部，亦为地中海地区最热门的旅游地之一。塞浦路斯扼守欧洲、亚洲和非洲的海上要道，战略位置十分重要，因此欧美国家对于该区域的军事部署高度关注。',NULL),
	(147,2,'Denmark','the kingdom of denmark','DNK','The Kingdom of Denmark','丹麦','丹麦王国','丹麦王国（丹麦语：Kongeriget Danmark，旧译为“嗹（lián）国”、“嗹马”[1]  ），简称丹麦，为北欧五国之一，是一个君主立宪制国家，拥有两个自治领地，一个是法罗群岛，另外一个是格陵兰岛。丹麦本土则包括日德兰半岛、菲因岛、西兰岛及附近岛屿，北部隔北海和波罗的海与瑞典和挪威相望，南部与德国接壤，首都兼第一大城市是哥本哈根。',NULL),
	(148,2,'United Kingdom','the united kingdom of great britain and northern ireland','ENG','The United Kingdom of Great Britain and Northern Ireland','英国','大不列颠及北爱尔兰联合王国','英国由大不列颠岛上的英格兰、威尔士和苏格兰，爱尔兰岛东北部的北爱尔兰以及一系列附属岛屿共同组成的一个西欧岛国。除本土之外，其还拥有十四个海外领地[1]  ，总人口超过6400万，以英格兰人（盎格鲁-撒克逊人）为主体民族。',992),
	(149,2,'Germany','the federal republic of germany','DEU','The Federal Republic of Germany','德国','德意志联邦共和国','德国是一个高度发达的资本主义国家。欧洲四大经济体之一，其社会保障制度完善，国民具有极高的生活水平。德国在基础科学与应用研究方面十分发达，以理学、工程技术而闻名的科研机构和发达的职业教育支撑了德国的科学技术和经济发展。以汽车和精密机床为代表的高端制造业，也是德国的重要象征。',989),
	(150,2,'France','the french republic','FRA','The French Republic','法国','法兰西共和国','法国为欧洲国土面积第三大、西欧面积最大的国家，东与比利时、卢森堡、德国、瑞士、意大利接壤，南与西班牙、安道尔、摩纳哥接壤。本土地势东南高西北低，大致呈六边形，三面临水，南临地中海，西濒大西洋，西北隔英吉利海峡与英国相望，科西嘉岛是法国最大岛屿。[1] ',987),
	(151,2,'Italy','the republic of italy','ITA','The Republic of Italy','意大利','意大利共和国','意大利（意大利语：Italia），全称意大利共和国(意大利语：Repubblica Italiana)，是一个欧洲国家，主要由南欧的亚平宁半岛及两个位于地中海中的岛屿西西里岛与萨丁岛所组成。国土面积为301333平方公里，人口6002万。北方的阿尔卑斯山地区与法国、瑞士、奥地利以及斯洛文尼亚接壤，其领土还包围着两个微型国家——圣马力诺与梵蒂冈[',986),
	(152,2,'Luxembourg','the grand duchy of luxembourg','LUX','The Grand Duchy of Luxembourg','卢森堡','卢森堡大公国','卢森堡是一个高度发达的资本主义国家，欧盟和北约创始成员国之一，也是高度发达的工业国家，还是欧元区内最重要的私人银行中心，及全球第二大仅次于美国的投资信托中心。金融、广播电视、钢铁是其三大经济支柱产业[1]  ，该国失业率极低，人均寿命80岁。',NULL),
	(153,2,'Portugal','portugal,the portuguese republic','PRT','Portugal,the Portuguese Republic','葡萄牙','葡萄牙共和国','葡萄牙（Portugal），全称为葡萄牙共和国（葡萄牙语：República Portuguesa），是一个位于欧洲西南部的共和制国家。东邻同处于伊比利亚半岛的西班牙，葡萄牙的西部和南部是大西洋的海岸。除了欧洲大陆的领土以外，大西洋的亚速群岛和马德拉群岛也是葡萄牙领土。葡萄牙首都里斯本以西的罗卡角是欧洲大陆的最西端。',NULL),
	(154,2,'Poland','the republic of poland','POL','The Republic of Poland','波兰','波兰共和国','历史上曾是欧洲强国，后国力衰退，并于俄普奥三次瓜分波兰中亡国几个世纪，一战后复国，但不久又在二战中被苏联和德国瓜分，冷战时期处于苏联势力范围之下，苏联解体后，加入欧盟和北约，近年来波兰无论在欧盟还是在国际舞台的地位亦与日俱增，自1918年11月11日恢复独立以来，经过90年的发展变迁，特别是在21世纪初的几年里，波兰在欧洲的重要性越来越引人重视。[2] ',NULL),
	(155,2,'Spain','the kingdom of spain','ESP','The Kingdom of Spain','西班牙','西班牙王国','西班牙是一个高度发达的资本主义国家，是欧盟和北约成员国，还是欧元区第四大经济体，国内生产总值（GDP）居欧洲国家第6名，世界排名第13。[3]  也是世界上最大的汽车生产国之一。',985),
	(156,2,'Albania','the republic of albania','ALB','The Republic of Albania','阿尔巴尼亚','阿尔巴尼亚共和国','阿尔巴尼亚位于东南欧巴尔干半岛西岸，北接塞尔维亚与黑山，东北与马其顿相连，东南邻希腊，西濒亚得里亚海和伊奥尼亚海，隔奥特朗托海峡与意大利相望。海岸线长472公里。',NULL),
	(157,2,'Andorra','the principality of andorra','AND','The Principality of Andorra','安道尔','安道尔公国','安道尔，全称安道尔公国（英语：The Principality of Andorra，法语：La Principauté d\'Andorre，西班牙语：El Principado de Andorra），是位于西南欧法国和西班牙交界处的内陆国，为9世纪时查理曼帝国为防范摩尔人的骚扰而在西班牙边境地带建立的小缓冲国，是世界袖珍国家之一，国土总面积468平方公里，下设7个行政区。2015年，该国总人口85458人。',NULL),
	(158,2,'Liechtenstein','principality of liechtenstein','LIE','Principality of Liechtenstein','列支敦士登','列支敦士登公国','列支敦士登坐落于欧洲阿尔卑斯山地的莱茵河谷，其西边以莱茵河为边界与瑞士相邻，东侧则以属于阿尔卑斯山脉的山岭地带与奥地利为界。全国只有西侧约三分之一的面积位在平坦的河谷里，其余地区大都属于山地。境内有一个唯一的天然湖：Gampriner Seele湖。',NULL),
	(159,2,'Serbia and Montenegro','serbia and montenegro','S&M','Serbia and Montenegro','塞黑','塞尔维亚和黑山','塞尔维亚和黑山，简称塞黑，为前南斯拉夫余下没有独立的塞尔维亚和黑山两个共和国于2003年至2006年组成的松散联邦国家。塞黑两国于1992年首先组成南斯拉夫联盟共和国，该联邦后于2003年2 月4日重组并改名为“塞尔维亚和黑山”。2006年5月21日，黑山举行独立公投，独派以微弱的优势获胜，6月3日黑山议会正式宣布独立，6月5日塞尔维亚国会宣布继承原塞尔维亚和黑山国家共同体的国际法主体地位，塞黑联邦因而解体为塞尔维亚共和国和黑山共和国两个主权国家。',NULL),
	(160,2,'Austria','the republic of austria','AUT','The Republic Of Austria','奥地利','奥地利共和国','奥地利共和国（ 德语：Republik Österreich，英语：The Republic of Austria），简称奥地利（Austria），是一个位于欧洲中部的议会制共和制制国家，下含九个联邦州，作为一个内陆国家，与多国接壤，东邻是匈牙利和斯洛伐克，南邻意大利和斯洛文尼亚，西邻列支敦士登和瑞士，北邻德国和捷克。首都兼最大城市是维也纳，人口超过170万，国土面积83855平方千米。',NULL),
	(161,2,'Bulgaria','the republic of bulgaria','BGR','The Republic of Bulgaria','保加利亚','保加利亚共和国','保加利亚，国土面积为110910平方公里。2013年，人口总量为7588570人。1990年2月27日将3月3日摆脱奥斯曼帝国统治纪念日定为国庆日，1990年11月15日，保加利亚改国名为保加利亚共和国。1991年7月12日通过的宪法规定，定为议会制国家。[1] ',NULL),
	(162,2,'Finland','the republic of finland','FIN','The Republic of Finland','芬兰','芬兰共和国','芬兰是一个高度发达的资本主义国家，也是一个高度工业化、自由化的市场经济体，芬兰是欧盟成员国之一，但人均产出远高于欧盟平均水平，与其邻国瑞典相当。国民享有极高标准的生活品质，芬兰政府公务员清廉高效，并且在社会形成广泛共识。监督世界各国腐败行为的非政府组织“透明国际”公布2012年全球清廉指数报告，在176个国家和地区中，芬兰名列第一，为最清廉国家。[2] ',NULL),
	(163,2,'Gibraltar','gibraltar','GIB','Gibraltar','直布罗陀','直布罗陀','直布罗陀（Gibraltar），欧洲伊比利亚半岛南端的城市和港口。在直布罗陀海峡东端的北岸，扼大西洋和地中海交通咽喉，南对西班牙的北非属地休达市，战略地位十分重要。直布罗陀海峡长90公里，宽12公里至43公里，是大西洋和地中海之间唯一的海上通道。',NULL),
	(164,6,'Dominica','the commonwealth of dominica','DMA','The Commonwealth of Dominica','多米尼克','多米尼克国','多米尼克（The Commonwealth of Dominica）位于东加勒比海小安的列斯群岛东北部，东临大西洋，西濒加勒比海，是一个国土面积仅有751平方公里的岛国。主要为黑人和黑白混血种人。',NULL),
	(165,6,'Bermuda','bermuda','BMU','Bermuda','百慕大','百慕大群岛','百慕大，港台译百慕达（英语：Bermuda；又称百慕大群岛；旧称萨默斯岛）位于北大西洋，是英国的自治海外领地。位于北纬32度14分至32度25分、西经64度38分至64度53分，距北美洲约900多公里、美国东岸佛罗里达州迈阿密东北约1100海里及加拿大新斯科舍省哈利法克斯东南约840海里[1-2]  。来自英国国王Sammy时期的占领。',NULL),
	(166,6,'Canada','canada','CAN','Canada','加拿大','加拿大','加拿大（Canada），为北美洲最北的国家，西抵太平洋，东迄大西洋，北至北冰洋，东北部和丹麦领地格陵兰岛相望，东部和法属圣皮埃尔和密克隆群岛相望，南方与美国本土接壤，西北方与美国阿拉斯加州为邻。领土面积为998万平方千米，位居世界第二。加拿大素有“枫叶之国”的美誉，首都是渥太华。加拿大政治体制为联邦制、君主立宪制及议会制，是英联邦国家之一，英王伊丽莎白二世为国家元首及国家象征，但无实际权力。加拿大是典型的英法双语国家',990),
	(167,6,'United States','the united states of america','USA','The United States of America','美国','美利坚合众国','美利坚合众国（The United States of America），简称美国，是由华盛顿哥伦比亚特区、50个州[1]  和关岛等众多海外领土组成的联邦共和立宪制国家。其主体部分位于北美洲中部，美国中央情报局《世界概况》1989年至1996年初始版美国总面积是 9,372,610 km²，1997年修正为963万平方公里（加上五大湖中美国主权部分和河口、港湾、内海等沿海水域面积），人口3.2亿，通用英语，是一个移民国家',991),
	(168,6,'Greenland','greenland','GRL','Greenland','格陵兰','格陵兰','格陵兰（格陵兰语：Kalaallit Nunaat）是丹麦王国的海外自治领土，领土大部分位于格陵兰岛上，面积2,166,086平方公里，约83.7%都由冰雪覆盖。“格陵兰”这个名称的意思为“绿色土地”，曾是丹麦王国的海外属地与王国内的自治体，格陵兰在2008年的公投后决定逐渐走向独立之途，并在2009年正式改制成为一个内政独立但外交、国防与财政相关事务仍由丹麦代管的过渡政体。格陵兰全境大部分处在北极圈内，气候寒冷。隔海峡与加拿大和冰岛两国相望。',NULL),
	(169,4,'Tonga','the kingdom of tonga','TON','The Kingdom of Tonga','汤加','汤加王国','汤加，全名“汤加王国”（The Kingdom of Tonga），属大洋洲，位于太平洋西南部赤道附近，是由173个岛屿组成的岛国，其中36个有人居住，大部分为珊瑚岛。',NULL),
	(170,4,'Australia','the commonwealth of australia','AUS','The Commonwealth of Australia','澳大利亚','澳大利亚联邦','澳大利亚（Australia），全称为澳大利亚联邦（The Commonwealth of Australia）。其领土面积7686850平方公里，四面环海，是世界上唯一国土覆盖一整个大陆的国家。拥有很多独特的动植物和自然景观的澳大利亚，是一个奉行多元文化的移民国家。',NULL),
	(171,4,'Cook Is','the cook islands','COK','The Cook Islands','库克群岛','库克群岛','库克群岛是一个位于南太平洋上，介于法属波利尼西亚与斐济之间，由15个岛屿组成的岛群，其命名起源于远征探索南太平洋，发现了许多岛屿的詹姆斯·库克船长，是新西兰的自由结合区。首都阿瓦鲁阿（Avarua），位于拉罗汤加岛。',NULL),
	(172,4,'Nauru','the republic of nauru','NRU','The Republic of Nauru','瑙鲁','瑙鲁共和国','瑙鲁共和国（英语：The Republic of Nauru；瑙鲁语：Ripublik Naoero）简称瑙鲁，位于南太平洋中西部的密克罗尼西亚群岛中，有“天堂岛”之称。[1]  瑙鲁面积只有24㎞²，是世界上最小的岛国',NULL),
	(173,4,'New Caledonia','new caledonia','NCL','New Caledonia','新喀里多尼亚','新喀里多尼亚','新喀里多尼亚（法文：Nouvelle-Calédonie），法国的海外属地之一，位于南回归线附近，处于南太平洋美拉尼西亚岛群，距澳大利亚昆士兰东岸1500公里处。该地区整体主要由新喀里多尼亚岛、洛亚蒂群岛和切斯特菲尔德群岛组成。官方语言法语，通用美拉尼西亚语和波利尼西亚语。所属时区位于东UTC+11区，比北京时间早三个小时。',NULL),
	(174,4,'Vanuatu','republic of vanuatu','VUT','Republic of Vanuatu','瓦努阿图','瓦努阿图共和国','瓦努阿图共和国，位于南太平洋西部，属美拉尼西亚群岛，由83个岛屿（其中68个岛屿有人居住）组成。最大的岛屿是桑托岛（面积3974平方公里），属热带海洋性气候，年均降水量1600毫米。属热带海洋性气候，首都维拉港平均气温25.3℃。陆地面积1.219万平方公里，水域面积84.8万平方公里，其中98%为瓦努阿图人，属美拉尼西亚人种，官方语言为英语、法语和比斯拉马语，通用比斯拉马语，84%的人信奉天主教。由约80个岛屿（其中68个有人居住）组成。',NULL),
	(175,4,'Solomon Is','solomon islands','SLB','Solomon Islands','所罗门群岛','所罗门群岛','所罗门群岛是世界上最不发达国家（低度开发国家）之一，其人类发展指数为0.610。大多数人口依靠务农、捕鱼和种植为生，国民经济以种植业、渔业和黄金开采为主。大部分制造与石油产品依赖进口。该群岛尚未开发的矿产资源丰富，如铅、锌、镍以及金。[2] ',NULL),
	(176,4,'Samoa','the independent state of samoa','WSM','The Independent State of Samoa','萨摩亚','萨摩亚独立国','它位于太平洋南部，萨摩亚群岛西部，由萨瓦伊和乌波卢两个主岛及七个小岛组成。陆地面积2934平方公里，水域面积12万平方公里，境内大部分地区为丛林所覆盖，属热带雨林气候。萨摩亚人口约17万4千，90%为萨摩亚人，属波利尼西亚人种，皮肤为浅棕色，体较胖，性格敦厚，语言为萨语和英语。',NULL),
	(177,4,'Tuvalu','tuvalu','TUV','Tuvalu','图瓦卢','图瓦卢','“图瓦卢”在波利尼西亚语中意为“八岛之群”。图瓦卢海拔最高4.5米。由于地势极低，持续上升的气温和海平面严重威胁着图瓦卢，使这个国家面临国土沉入海底的危险，图瓦卢资源匮乏，土地贫瘠，只有少数植物可以生长，几乎没有天然资源，是联合国公布的世界最不发达国家（最低度开发国家）之一',NULL),
	(178,4,'Micronesia','federated states of micronesia','FSM','Federated States of Micronesia','密克罗尼西亚联邦','密克罗尼西亚联邦','属于太平洋三大岛群之一的密克罗尼西亚群岛，希腊语字根为“小岛”之义。密克罗尼西亚属热带雨林气候，年平均温度26-28℃，加罗林群岛附近是台风源地之一。该国海域面积大，渔业资源丰富，尤以金枪鱼著名。其他粮食及生活日用品均靠进口，经济较为落后且严重依赖美国。该国最西部的雅浦岛离中国福建约2600公里，离日本东京2900公里',NULL),
	(179,4,'Marshall Is Rep','the republic of marshall island ','MHL','The Republic of Marshall Island ','马绍尔群岛','马绍尔群岛共和国','马绍尔群岛历史上曾先后为西班牙、德国、日本、美国占领，其前身是美国托管的太平洋岛屿托管地的4个政治实体之一。美国托管期间，美国在该国进行了67次核试验，其中23次在该国比基尼环礁进行，导致改国居民严重的癌症、白血病等疾病。与美国在威克岛存在领土争议。',NULL),
	(180,4,'Kiribati','the republic of kiribati','KIR','The Republic of Kiribati','基里巴斯','基里巴斯共和国','基里巴斯共和国是一个太平洋岛国。全国共有33个小岛，分成吉尔伯特群岛、菲尼克斯群岛和莱恩群岛三大群岛，共有32个环礁及1个珊瑚岛，从其东部著名的圣诞岛，到最西部的巴纳巴岛，分布于赤道上3800公里的海域，拥有世界最大海洋保护区。基里巴斯是世界上最不发达国家（低度开发国家）之一。',NULL),
	(181,4,'French Polynesia','french polynesia','PYF','French Polynesia','法属玻利尼西亚','法属波利尼西亚','法属波利尼西亚属热带雨林气候，11月～4月为雨季，年均降水量1625毫米。3月份为气温最高月，达28℃，8月为气温最低月，达20℃，年均气温26℃。首都是帕皮提（Papeete），1818年建城，人口约13.3万人（2009年）。高级专员阿道夫·科尔拉（Adolphe COLRAT），2008年7月任职。',NULL),
	(182,4,'New Zealand','new zealand','NZL','New Zealand','新西兰','新西兰','新西兰（New Zealand），又译纽西兰，是一个政治体制实行君主立宪制混合英国式议会民主制的国家，现为英联邦成员国之一。新西兰位于太平洋西南部，领土由南岛、北岛两大岛屿组成，以库克海峡分隔，南岛邻近南极洲，北岛与斐济及汤加相望。首都惠灵顿以及最大城市奥克兰均位于北岛[1]  。',NULL),
	(183,4,'Fiji','the republic of fiji','FJI','The Republic of Fiji','斐济','斐济共和国','斐济共和国（斐济语：Matanitu Tugalala o Viti）是一个太平洋岛国，位于南太平洋，瓦努阿图以东、汤加以西、图瓦卢以南，由332个岛屿组成，其中106个有人居住。多为珊瑚礁环绕的火山岛，主要有维提岛和瓦努阿岛等。属热带海洋性气候，常受飓风袭击。年平均气温22～30℃。',NULL),
	(184,4,'Papua New Guinea','the independent state of papua new guinea','PNG','The Independent State of Papua New Guinea','巴布亚新几内亚','巴布亚新几内亚独立国','巴布亚新几内亚是南太平洋西部的一个岛国，是大洋洲第二大国，属英联邦成员国，包括新几内亚岛东半部及附近俾斯麦群岛、布干维尔岛等共约600余个大小岛屿。国名由巴布亚和新几内亚两部分组成，得名于岛名。',NULL),
	(185,4,'Palau','the republic of palau','PLW','The Republic of Palau','帕劳','帕劳共和国','帕劳，全称帕劳共和国（帕劳语：Beluu er a Belau），是西太平洋上的岛国。1994年10月1日从美国的托管统治下独立。支柱产业是渔业和旅游业，主要宗教信仰是基督教和古老的Modekngei教派，70%人口是当地土著，其余人口主要是菲律宾人。',NULL),
	(186,7,'Chile','republic of chile','CHL','Republic of Chile','智利','智利共和国','智利共和国（西班牙语：República de Chile）位于南美洲西南部，安第斯山脉西麓。东同阿根廷为邻，北与秘鲁、玻利维亚接壤，西临太平洋，南与南极洲隔海相望，是世界上地形最狭长的国家，国土面积756626平方公里。为南美洲国家联盟的成员国，在南美洲与阿根廷及巴西并列为ABC强国。',NULL),
	(187,7,'Colombia','the republic of colombia','COL','The Republic of Colombia','哥伦比亚','哥伦比亚共和国','哥伦比亚共和国（西班牙语：República de Colombia），国土位于南美洲西北部，西临太平洋，北临加勒比海，东通委内瑞拉，东南通巴西，南与秘鲁、厄瓜多尔，西北与巴拿马为邻。为南美洲国家联盟成员国。',NULL),
	(188,7,'Guyana','the republic of guyana','GUY','The Republic of Guyana','圭亚那','圭亚那共和国','圭亚那位于南美洲东北部，全称为圭亚那共和国（ Republic of Guyana），1966年脱离英国独立。印第安语意为“多水之乡”。国民主要是印度斯坦人和黑人，多信奉基督教、印度教和伊斯兰教。它是南美洲唯一以英语为官方语言的国家，也是英联邦成员国。',NULL),
	(189,7,'Paraguay','the republic of paraguay','PRY','The Republic of Paraguay','巴拉圭','巴拉圭共和国','巴拉圭全称：巴拉圭共和国（西班牙语：República del Paraguay）是南美洲中部的内陆国家，境内主要山脉是阿曼拜山和巴兰卡尤山，其南边国境完全与阿根廷接壤，东北与西北角则分别是巴西与玻利维亚。',NULL),
	(190,7,'Peru','the republic of peru','PER','The Republic of Peru','秘鲁','秘鲁共和国','秘鲁，全称为秘鲁共和国（西班牙语：República del Perú），是南美洲西部的一个国家，北邻厄瓜多尔和哥伦比亚，东与巴西和玻利维亚接壤，南接智利，西濒太平洋，是南美洲国家联盟的成员国。',NULL),
	(191,7,'Suriname','the republic of suriname','SUR','The Republic of Suriname','苏里南','苏里南共和国','苏里南共和国（荷兰语：Republiek Suriname；苏里南汤加语：Sranan；博杰普尔语：Sarnam）位于南美洲北部，北滨大西洋，南临巴西，东临法属圭亚那，西临圭亚那，是南美洲国家联盟的成员国，国名源于当地原住民苏里南人。该国旧称荷属圭亚那，原为荷兰在南美洲的殖民遗迹，1954年成为荷兰王国海外自治省，1975年时独立。苏里南无论以面积还是人口排名，都是南美洲最小的一个国家，也是西半球不属于荷兰王国组成体的地区中，唯一一个使用荷兰文为官方语言者，另外，汉语中的客家语是苏里南共和国的法定语言[1]  。首都帕拉马里博为苏里南河河口的商港。苏里南是一个种族、语言、宗教上极为多元的国家，当中穆斯林人口占苏里南的13%，其比例在所有美洲国家中最高。',NULL),
	(192,7,'Venezuela','bolivarian republic of venezuela','VEN','Bolivarian Republic of Venezuela','委内瑞拉','委内瑞拉玻利瓦尔共和国','委内瑞拉玻利瓦尔共和国（西班牙语：República Bolivariana de Venezuela）是位于南美洲北部的国家，也是南美洲国家联盟的成员国，首都加拉加斯。北临加勒比海，西与哥伦比亚相邻，南与巴西交界，东与圭亚那接壤。它被称为“瀑布之乡”，面积912050平方千米。海岸线长2813千米。原为印第安人居住地。1498年哥伦布航行美洲时到此。1523年西班牙人建立第一个殖民地。1567年沦为西班牙殖民地。1811年7月5日独立。1830年建立共和国。1974年6月28日同中国建交。',NULL),
	(193,7,'Uruguay','the oriental republic of uruguay','URY','The Oriental Republic of Uruguay','乌拉圭','乌拉圭东岸共和国','乌拉圭全称：乌拉圭东岸共和国（英语：The Oriental Republic of Uruguay；西班牙语：República Oriental del Uruguay），位于南美洲的东南部，乌拉圭河与拉普拉塔河的东岸，北邻巴西，西接阿根廷，东南濒大西洋。',NULL),
	(194,7,'Ecuador','the republic of ecuador','ECU','The Republic of Ecuador','厄瓜多尔','厄瓜多尔共和国','厄瓜多尔，全称厄瓜多尔共和国（西班牙语：República del Ecuador），南美洲国家联盟的成员国之一，位于南美洲西北部的国家，北与哥伦比亚相邻，南接秘鲁，西滨太平洋，与智利同为南美洲不与巴西相邻的国家，另辖有距厄瓜多尔本土1,000公里的加拉帕戈斯群岛。首都基多位于皮钦查火山的山麓。',NULL),
	(195,7,'Antigua and Barbuda','antigua and barbuda','ATG','Antigua and Barbuda','安提瓜和巴布达','安提瓜和巴布达','安提瓜和巴布达AG Antigua and Barbuda，位于加勒比海小安的列斯群岛的北部。为英联邦成员国。绝大多数为非洲黑人后裔，多数居民信奉基督教。首都为圣约翰，总人口9万（2015年）[1]  。安提瓜岛的面积为280平方公里。巴布达岛面积为160平方公里。安提瓜和巴布达岛属于热带气候，年平均气温27℃。年均降水量约1020毫米。',NULL),
	(197,7,'Bahamas','the commonwealth of the bahamas','BHS','The Commonwealth of The Bahamas','巴哈马','巴哈马国','巴哈马地处美国佛罗里达州以东，古巴和加勒比海以北，巴哈马包含700座岛屿和珊瑚礁。佛罗里达州东南海岸对面，古巴北侧。群岛由西北向东南延伸，长1220公里，宽96公里，由700多个岛屿及2000多个珊瑚礁组成，总面积为13878平方公里，其中20余个岛屿有人居住。属亚热带气候，年平均气温23.5°C。',NULL),
	(198,7,'Barbados','barbados','BRB','Barbados','巴巴多斯','巴巴多斯','巴巴多斯有稳固的民主政体，独立于1966年11月30日，是英联邦成员，其名字来自于葡萄牙语，指遍地都是的野生的无花果树。',NULL),
	(199,7,'Cayman Is','cayman islands','CYM','Cayman Islands','开曼群岛','开曼群岛','开曼群岛（The Cayman Islands ）是英国在西加勒比群岛的一块海外属地，首府为乔治敦（Georg Town）。开曼由大开曼、小开曼和开曼布拉克等岛屿组成，东部边缘为开曼海沟。开曼是著名的离岸金融中心和“避税天堂”，亦是世界著名的潜水胜地、旅游度假圣地。金融和旅游业是其主要经济来源。',NULL),
	(200,7,'Grenada','grenada','GRD','Grenada','格林纳达','格林纳达','农业和旅游业是经济的基础，主要农产品肉豆蔻产量约占世界总产量的三分之一，仅次于印度尼西亚居世界第二位。现为英联邦成员国之一。',NULL),
	(201,7,'Haiti','the republic of haiti','HTI','The Republic of Haiti','海地','海地共和国','海地是世界上最为贫困的国家之一，最不发达国家之一，经济以农业为主，基础设施建设非常落后。由于能源不足，海地的工业非常不发达，失业率也极高，三分之二的工人没有固定的工作。美国是海地最大的援助国，1995至1999年间向海地提供了8.84亿美元的援助。海地与台湾当局保持着所谓的“外交关系”',NULL),
	(202,7,'Jamaica','jamaica','JAM','Jamaica','牙买加','牙买加','牙买加（Jamaica），是加勒比海的其中一个岛国。牙买加原本是印第安人居住地，在1494年被哥伦布发现，不久之后就变成了西班牙人的殖民地。1655年，牙买加又被大英帝国占领。现为英联邦成员国之一',NULL),
	(203,7,'Martinique','martinique','MTQ','Martinique','马提尼克','马提尼克岛','法国的海外大区，位于小安地列斯群岛的向风群岛最北部，岛上自然风光优美，有火山和海滩，盛产甘蔗、棕榈树、香蕉和菠萝等植物，曾被克里斯托弗·哥伦布（Christopher Columbus）喻为“世界上最美的国家”。马提尼克居民克里奥尔人还保留着传统的民俗习惯，催长身高的传说更使得该岛充满了神秘色彩。',NULL),
	(204,7,'Montserrat','montserrat','MSR','Montserrat','蒙特塞拉特','蒙特塞拉特岛','蒙塞拉特（英语：Montserrat）岛，英国海外领土，位于西印度群岛中背风群岛南部的火山岛，由哥伦布在1493年以西班牙内同名的山命名。该岛长18公里，宽11公里。岛上有三座主要的火山，年降雨量1525毫米。蒙塞拉特岛原本盛产海岛棉、香蕉、糖和蔬菜等。因为1995年7月18日开始的火山爆发，所以本岛多处被毁灭而三分之二人口逃往外国。火山爆发仍继续，使得岛上多处不可居住。',NULL),
	(205,7,'Trinidad and Tobago','republic of trinidad and tobago','TTO','Republic of Trinidad and Tobago','特立尼达和多巴哥','特立尼达和多巴哥共和国','源产品产值约占国民生产总值的40%左右，能源出口约占出口总收入的80%，是加勒比地区重要的石油输出国。加工制造业门类较齐全。建筑业、旅游业、金融保险业等行业发展较快。特多已同中国、加拿大、法国、英国、美国等国签署了双边投资协定，与中国、加拿大、丹麦、德国、法国、意大利、挪威、瑞典、瑞士、美国等国签署了避免双重征税协定，以吸引更多外来直接投资。',NULL),
	(206,7,'St Kitts-Nevis','the federation of saint kitts and nevis','KNA','The Federation of Saint Kitts and Nevis','圣其茨-尼维斯','圣基茨和尼维斯联邦','圣基茨和尼维斯位于东加勒比海背风群岛北部是一个由圣克里斯多福岛（圣基茨岛）与尼维斯岛所组成的联邦制岛国，在1983年9月19日独立，现为英联邦成员国之一，面积267平方公里。',NULL),
	(207,7,'St.Pierre and Miquelon','the islands of st pierre and miquelon','SPM','The Islands of st pierre and miquelon','圣皮埃尔和密克隆','圣皮埃尔和密克隆群岛','The Islands of st pierre and miquelon，Iles Saint pierre et Mique  lon',NULL),
	(208,7,'Argentina','the republic of argentina','ARG','The Republic of Argentina','阿根廷','阿根廷共和国','阿根廷是南美洲国家联盟、20国集团成员和拉美第三大经济体。阿根廷是世界上综合国力较强的发展中国家之一。阿根廷也是世界粮食和肉类的主要生产和出口国之一。',NULL),
	(209,7,'Belize','belize','BLZ','Belize','伯利兹','伯利兹','伯利兹的原始居民是玛雅人，16世纪初，伯利兹沦为西班牙殖民地。1786年，英国取得对该地的实际管辖权，称英属洪都拉斯。1981年脱离英国独立，而伯利兹的名字来自该国的河流伯利兹河及最大的城市伯利兹市，该市是伯利兹的原首都，新首都为贝尔墨邦。[1] ',NULL),
	(210,7,'Bolivia','the republic of bolivia','BOL','The Republic of Bolivia','玻利维亚','玻利维亚共和国','玻利维亚是南美洲的一个内陆国家，全称为玻利维亚共和国（西班牙语：En la República de Bolivia ），为南美洲国家联盟的成员国。邻国有巴西、秘鲁、智利、阿根廷、巴拉圭五国，法定首都为苏克雷，但实际上的政府所在地为拉巴斯，拉巴斯海拔高度超过3600米，为世界海拔最高的首都。',NULL),
	(211,7,'Brazil','the federative republic of brazil','BRA','The Federative Republic of Brazil','巴西','巴西联邦共和国','巴西即巴西联邦共和国，是南美洲最大的国家，享有“足球王国”的美誉。国土总面积854.74万平方公里，居世界第五。[1]  总人口2.02亿。与乌拉圭、阿根廷、巴拉圭、玻利维亚、秘鲁、哥伦比亚、委内瑞拉、圭亚那、苏里南、法属圭亚那十国接壤',NULL),
	(212,2,'Russia','russian federation','RUS','Russian Federation','俄国','俄罗斯联邦','俄罗斯联邦（俄语：Российская Федерация，英语：The Russian Federation），通称俄罗斯（俄国为俄罗斯帝国的简称），是由22个自治共和国、46个州、9个边疆区、4个自治区、1个自治州、3个联邦直辖市组成的联邦共和立宪制国家。[1]  国旗为白、蓝、红三色旗。国徽主体为双头鹰图案。俄罗斯位于欧亚大陆北部，地跨欧亚两大洲，国土面积为1707.54万平方公里，是世界上面积最大的国家。',980);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `name`, `code`)
VALUES
	(1,'国语','zh'),
	(2,'英语','en'),
	(3,'粤语','zh-HK'),
	(5,'日语','ja'),
	(6,'西班牙语','es'),
	(7,'韩语','ko'),
	(8,'德语','de'),
	(9,'印度语','hi'),
	(10,'意大利语','it'),
	(11,'法语','fr'),
	(12,'葡萄牙语','pt'),
	(13,'印第安语','aa'),
	(14,'瑞典语','aa'),
	(15,'芬兰语','aa'),
	(16,'台语','aa'),
	(17,'俄语','aa'),
	(18,'丹麦语','aa'),
	(19,'波兰语','aa'),
	(20,'泰语','aa'),
	(21,'菲律宾语','aa'),
	(22,'印尼语','aa'),
	(23,'拉丁','aa'),
	(24,'越南语','aa'),
	(25,'藏语','aa'),
	(26,'小语种','aa'),
	(27,'其他','aa');

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `avatar_url`, `status`, `deleted`, `password_digest`, `created_at`, `updated_at`, `is_admin`)
VALUES
	(1,'admin','admin@topdmc.com',NULL,'北京','http://dmc-media-pro.bj.bcebos.com/v1/dmc-media-pro/头像1.jpg',1,0,'$2a$10$i2HkUIsNaas9hNl0zHDY/edEhL3ucxYXz/Pjpw/.mEf6I7vh5jvFa','2017-08-04 11:56:09','2017-08-17 08:10:23',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

# Dump of table permissions
# ------------------------------------------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `display_name`, `module_name`, `permission_group_id`, `status`, `rule_type`, `created_at`, `updated_at`)
VALUES
	(1,'用户查看','查看','User',5,1,1,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(2,'用户编辑','编辑','User',5,1,2,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(3,'角色查看','查看','Role',6,1,1,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(4,'角色编辑','编辑','Role',6,1,2,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(5,'艺人查看','查看','Artist',7,1,1,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(6,'艺人编辑','编辑','Artist',7,1,2,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(8,'专辑查看','查看','Album',8,1,1,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(9,'专辑编辑','编辑','Album',8,1,2,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(11,'歌曲查看','查看','Track',9,1,1,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(12,'歌曲编辑','编辑','Track',9,1,2,'2016-09-02 09:06:30','2016-09-02 09:06:30'),
	(13,'视频查看','查看','Video',10,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(14,'视频编辑','编辑','Video',10,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(15,'代理版权方查看','查看','Provider',11,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(16,'代理版权方编辑','编辑','Provider',11,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(17,'合约查看','查看','Contract',12,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(18,'合约编辑','编辑','Contract',12,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(19,'渠道方查看','查看','Dsp',13,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(20,'渠道方编辑','编辑','Dsp',13,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(21,'渠道数据查看','查看','Settlement',14,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(22,'渠道数据编辑','编辑','Settlement',14,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(23,'结算单查看','查看','Revenue',15,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(24,'结算单下载','下载','Revenue',15,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(34,'艺人查看','查看','ArtistVerify',32,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(35,'专辑查看','查看','AlbumVerify',33,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(36,'歌曲查看','查看','TrackVerify',34,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(37,'视频查看','查看','VideoVerify',35,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(38,'版权方查看','查看','ProviderVerify',36,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(39,'合约查看','查看','ContractVerify',37,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(40,'版权方账户记录','查看','Transation',38,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(45,'渠道数据查看','查看','SettlementVerify',39,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(46,'结算单查看','查看','RevenueVerify',40,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(47,'渠道数据确认','审核','SettlementVerify',39,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(48,'结算单确认','审核','RevenueVerify',40,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(49,'艺人审核','审核','ArtistVerify',32,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(50,'专辑审核','审核','AlbumVerify',33,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(51,'歌曲审核','审核','TrackVerify',34,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(52,'视频审核','审核','VideoVerify',35,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(53,'版权方审核','审核','ProviderVerify',36,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(54,'合约审核','审核','ContractVerify',37,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(55,'汇率查看','查看','ExchangeRate',41,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(56,'汇率编辑','编辑','ExchangeRate',41,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(57,'待结算查看','查看','RevenueWait',16,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(58,'待结算编辑','编辑','RevenueWait',16,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions_roles`;

CREATE TABLE `permissions_roles` (
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  KEY `index_roles_permissions_on_role_id` (`role_id`) USING BTREE,
  KEY `index_roles_permissions_on_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;

INSERT INTO `permissions_roles` (`role_id`, `permission_id`)
VALUES
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(1,13),
	(1,14),
	(1,5),
	(1,6),
	(1,8),
	(1,11),
	(1,12),
	(1,15),
	(1,16),
	(1,17),
	(1,18),
	(1,21),
	(1,22),
	(1,23),
	(1,24),
	(1,19),
	(1,20),
	(1,9),
	(1,57),
	(1,58),
	(1,34),
	(1,49),
	(1,35),
	(1,50),
	(1,36),
	(1,51),
	(1,37),
	(1,52),
	(1,38),
	(1,53),
	(1,39),
	(1,54),
	(1,40),
	(1,45),
	(1,47),
	(1,46),
	(1,48),
	(1,55),
	(1,56),
	(2,13),
	(2,14),
	(2,5),
	(2,6),
	(2,8),
	(2,9),
	(2,11),
	(2,12),
	(2,15),
	(2,16),
	(2,17),
	(2,18),
	(3,49),
	(3,50),
	(3,51),
	(3,52),
	(3,53),
	(3,54),
	(10000,22),
	(10000,21),
	(10000,24),
	(10000,23),
	(10000,58),
	(10000,57),
	(10000,20),
	(10000,19),
	(10001,40),
	(10001,45),
	(10001,47),
	(10001,46),
	(10001,48),
	(10001,55),
	(10001,56),
	(10002,21),
	(10002,23),
	(10002,57),
	(10002,19),
	(10002,40),
	(10002,45),
	(10002,46),
	(10002,55);

/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
