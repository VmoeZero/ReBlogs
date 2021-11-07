/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : reblog

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-09-04 13:50:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext,
  `status` varchar(1) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_category_id_99127861_fk_category_id` (`category_id`),
  CONSTRAINT `article_category_id_99127861_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('6', '1', '白羊座会战boss数据回顾', '6666', 'p', '65', '2020-09-02 15:57:00.000000', '1');
INSERT INTO `article` VALUES ('7', '2', '金牛座会战详解', '', 'p', '58', '2020-09-02 15:58:00.000000', '1');
INSERT INTO `article` VALUES ('8', '3', '双子座会战前排公会访谈', '', 'p', '61', '2020-09-02 15:58:00.000000', '1');
INSERT INTO `article` VALUES ('9', '4', '安倍晋三辞职', '日本首相安倍晋三于上周五（8月28日）称病辞职，然而，他近8年任期内所贯彻的、旨在复兴日本这一全球第三大经济体的所谓“安倍经济学”，则依旧是“创业未半”的局面，其未竟事业将交由继任者继续执行。因而，两周后亮相的新任首相人选，就因而格外受到关注。\r\n\r\n而之前安倍的左膀右臂、内阁官房长官菅义伟目前被视作是呼声最高的继任人选。他本人之前也表示将继续继承推动“安倍经济学”的精神与各项具体操作，并将其发扬光大。而“安倍经济学”的具体措施则包括大规模货币政策宽松、强化财政支出以及经济结构性改革。在目前日本经济仍然受困于疫情的状况下，对上述“三支箭”措施的坚守就变得尤为必要，即使安倍的反对者接任，囿于局势也难以轻举妄动改变之，继续“萧规曹随”在所难免。\r\n\r\n对投资者而言，日本经济政策至少在相当一段时间内仍将保持稳定和连续，这似乎也可以打消投资者对于日元在此后过快升值的顾虑。事实上，日本历史上领导人更迭一直颇为频繁，像安倍这样能够连续在任八年之久的首相反而是凤毛麟角，所以，面对即使出现的变局，投资者有所顾虑在所难免，但这需要大家回过头来看看，所谓的“安倍经济学”措施本身是否真的具有合理性与可持续性，有否修正甚至被取代的空间。', 'p', '2', '2020-09-02 15:58:00.000000', '2');
INSERT INTO `article` VALUES ('10', '5', '中国政治人物李云汉逝世', '李云汉（？-2020年7月31日），陕西户县人 [1]  ，鄠邑区第一中学1957届毕业生 [2]  ，1965年9月参加工作，1975年6月加入中国共产党，西安市政协原副主席、市委统战部原部长。 [1]  \r\n2020年7月31日，李云汉因病医治无效在西安逝世，享年79岁。 [1] \r\n\r\n李云汉，1965年9月参加工作，1975年6月加入中国共产党 [1]  ，历任户县县委常委、工交财贸部部长，蓝田县委副书记、书记，西安市市委统战部副部长，碑林区委书记、区人大常委会主任，西安市政协副主席、市委统战部部长等职。', 'p', '128', '2020-09-02 15:59:00.000000', '2');
INSERT INTO `article` VALUES ('11', '6', '社会主义核心价值观', '“社会主义核心价值观的基本内容是富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。“富强、民主、文明、和谐”，是我国社会主义现代化国家的建设目标，“自由、平等、公正、法治”，是对美好社会的生动表述。”', 'p', '5', '2020-09-04 02:03:00.000000', '3');

-- ----------------------------
-- Table structure for article_tags
-- ----------------------------
DROP TABLE IF EXISTS `article_tags`;
CREATE TABLE `article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_tags_article_id_tag_id_9ea24d7b_uniq` (`article_id`,`tag_id`),
  KEY `article_tags_tag_id_55b93824_fk_tag_id` (`tag_id`),
  CONSTRAINT `article_tags_article_id_ebbe35ec_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `article_tags_tag_id_55b93824_fk_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tags
-- ----------------------------
INSERT INTO `article_tags` VALUES ('5', '6', '2');
INSERT INTO `article_tags` VALUES ('6', '7', '2');
INSERT INTO `article_tags` VALUES ('7', '8', '2');
INSERT INTO `article_tags` VALUES ('8', '9', '3');
INSERT INTO `article_tags` VALUES ('9', '10', '4');
INSERT INTO `article_tags` VALUES ('10', '11', '5');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 评论', '7', 'add_articlecomment');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 评论', '7', 'change_articlecomment');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 评论', '7', 'delete_articlecomment');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 评论', '7', 'view_articlecomment');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 类别名称', '8', 'add_category');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 类别名称', '8', 'change_category');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 类别名称', '8', 'delete_category');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 类别名称', '8', 'view_category');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 标签名称', '9', 'add_tag');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 标签名称', '9', 'change_tag');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 标签名称', '9', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 标签名称', '9', 'view_tag');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 用户', '10', 'add_user');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 用户', '10', 'change_user');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 用户', '10', 'delete_user');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 用户', '10', 'view_user');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 文章', '11', 'add_article');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 文章', '11', 'change_article');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 文章', '11', 'delete_article');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 文章', '11', 'view_article');
INSERT INTO `auth_permission` VALUES ('45', 'Can add attachment', '12', 'add_attachment');
INSERT INTO `auth_permission` VALUES ('46', 'Can change attachment', '12', 'change_attachment');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete attachment', '12', 'delete_attachment');
INSERT INTO `auth_permission` VALUES ('48', 'Can view attachment', '12', 'view_attachment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$180000$oo0P819Dm3LP$sSnU++W0ZpLvtoDRUzvD7GGSUNC4HmvUjv06niJgUpE=', '2020-09-03 22:03:13.414155', '1', 'Zero', '', '', '1712511921@qq.com', '1', '1', '2020-09-01 18:55:59.558260');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_time` varchar(50) NOT NULL,
  `comment_num` int(10) unsigned NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', '钟文宗', '18870102513', 'Zero', '1712511921@qq.com', '2020-09-01 19:47:06.918127+00:00', '6', 'media/钟文宗.png');
INSERT INTO `blog_user` VALUES ('4', '龚聪', '123456', ' gc', '123', '2020-09-04 01:17:50.463527+00:00', '0', 'media/龚聪.png');
INSERT INTO `blog_user` VALUES ('5', '叶生', '123456', 'y', '1111', '2020-09-04 02:05:14.167642+00:00', '1', 'media/叶生.png');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '游戏');
INSERT INTO `category` VALUES ('2', '政治');
INSERT INTO `category` VALUES ('3', '党学');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `userimg` varchar(70) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `createtime` datetime(6) NOT NULL,
  `article` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'nb', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 04:42:08.879202', '4', '安倍晋三辞职');
INSERT INTO `comment` VALUES ('2', '大师一路走好。', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 04:42:40.252756', '5', '中国政治人物李云汉逝世');
INSERT INTO `comment` VALUES ('3', '爬', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 04:42:57.588348', '1', '白羊座会战boss数据回顾');
INSERT INTO `comment` VALUES ('4', '牛头人biss。', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 04:43:20.845306', '2', '金牛座会战详解');
INSERT INTO `comment` VALUES ('5', '扩列扩列', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 04:43:46.645578', '3', '双子座会战前排公会访谈');
INSERT INTO `comment` VALUES ('6', '测试', '钟文宗', 'media/钟文宗.png', 'Zero', '2020-09-03 07:20:22.997199', '5', '中国政治人物李云汉逝世');
INSERT INTO `comment` VALUES ('8', '测试', '叶生', 'media/叶生.png', 'y', '2020-09-04 02:08:23.123262', '5', '中国政治人物李云汉逝世');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-09-01 19:33:45.127359', '2', 'Zwz', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-09-02 14:59:24.067034', '1', '游戏', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-09-02 14:59:33.175976', '1', '游戏', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-09-02 14:59:47.761433', '2', '公主连结', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-09-02 15:01:47.673677', '1', '金牛座会战详解', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-09-02 15:01:59.712869', '1', '金牛座会战详解', '2', '[]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-09-02 15:02:48.979019', '2', '白羊座会战boss数据回顾', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-09-02 15:03:57.977535', '3', '双子座会战前排公会访谈', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-09-02 15:08:26.799945', '1', '游戏', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-09-02 15:10:43.000400', '2', '政治', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-09-02 15:10:55.318471', '3', '新闻', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-09-02 15:11:02.299661', '4', '安倍晋三辞职', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2020-09-02 15:13:28.668620', '4', '人物', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2020-09-02 15:14:18.841829', '5', '中国政治人物李云汉逝世', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2020-09-02 15:21:11.074377', '5', '中国政治人物李云汉逝世', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2020-09-02 15:56:56.515740', '4', '安倍晋三辞职', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2020-09-02 15:56:56.517735', '3', '双子座会战前排公会访谈', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2020-09-02 15:56:56.519701', '2', '白羊座会战boss数据回顾', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2020-09-02 15:56:56.526709', '1', '金牛座会战详解', '3', '', '11', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2020-09-02 15:58:01.234607', '6', '白羊座会战boss数据回顾', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2020-09-02 15:58:21.561290', '7', '金牛座会战详解', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2020-09-02 15:58:41.767543', '8', '双子座会战前排公会访谈', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2020-09-02 15:59:01.117693', '9', '安倍晋三辞职', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2020-09-02 15:59:21.900729', '10', '中国政治人物李云汉逝世', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2020-09-02 16:02:47.334764', '1', '金牛座会战boss详解', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2020-09-03 22:04:03.699621', '5', '党学', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2020-09-03 22:04:18.025833', '6', '黑人抬棺', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2020-09-03 22:04:18.076708', '7', '黑人抬棺', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2020-09-03 22:04:28.980335', '6', '黑人抬棺', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2020-09-03 22:04:37.624290', '3', '余毕强', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2020-09-03 22:04:37.630576', '2', '余毕强', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2020-09-04 01:31:58.023684', '10', '中国政治人物李云汉逝世', '2', '[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2020-09-04 01:34:08.966187', '9', '安倍晋三辞职', '2', '[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2020-09-04 01:35:08.810060', '8', '鳌婿', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2020-09-04 02:04:03.483237', '3', '党学', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2020-09-04 02:04:13.662204', '11', '社会主义核心价值观', '1', '[{\"added\": {}}]', '11', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('11', 'blog', 'article');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'articlecomment');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'category');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('12', 'django_summernote', 'attachment');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-09-01 18:50:17.965127');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-09-01 18:50:18.091584');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-09-01 18:50:18.479535');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-09-01 18:50:18.564308');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2020-09-01 18:50:18.573285');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2020-09-01 18:50:18.644094');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2020-09-01 18:50:18.687016');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2020-09-01 18:50:18.728867');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2020-09-01 18:50:18.736883');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2020-09-01 18:50:18.776740');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2020-09-01 18:50:18.779731');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2020-09-01 18:50:18.787749');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2020-09-01 18:50:18.832590');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2020-09-01 18:50:18.879464');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2020-09-01 18:50:18.924344');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2020-09-01 18:50:18.933321');
INSERT INTO `django_migrations` VALUES ('17', 'blog', '0001_initial', '2020-09-01 18:50:19.055992');
INSERT INTO `django_migrations` VALUES ('18', 'django_summernote', '0001_initial', '2020-09-01 18:50:19.202617');
INSERT INTO `django_migrations` VALUES ('19', 'django_summernote', '0002_update-help_text', '2020-09-01 18:50:19.208601');
INSERT INTO `django_migrations` VALUES ('20', 'sessions', '0001_initial', '2020-09-01 18:50:19.246499');
INSERT INTO `django_migrations` VALUES ('21', 'blog', '0002_auto_20200904_0106', '2020-09-03 17:10:25.300107');
INSERT INTO `django_migrations` VALUES ('22', 'blog', '0002_auto_20200904_0134', '2020-09-03 17:35:49.763418');
INSERT INTO `django_migrations` VALUES ('23', 'blog', '0003_auto_20200904_0452', '2020-09-03 20:53:41.110339');
INSERT INTO `django_migrations` VALUES ('24', 'blog', '0002_auto_20200904_0459', '2020-09-03 20:59:15.627911');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2x154zx623ovgg7ju2ssf2o0bovmj6tb', 'ZjFhYTc4OWIxNjY2OWVkOTZiNDg1ODQzYmJkMTg4MTU3N2I4MDA2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NDgxMmE3OGViMDI5NTk0NTdlZmEyZWUzMTdjYTVlYzc4N2IzYTkwIiwic2ltcGxldWlfMjAyMDA5MDQiOnRydWV9', '2020-09-17 20:55:39.312258');
INSERT INTO `django_session` VALUES ('bww0lvqykyk135fr0gc01oi1tihpvl2t', 'ZTFhNjNkYjRjZjVhNjI2OGU2OWM3OTQ1N2VhYjM2NWFiNDA4ODYzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTlkZDNjM2RmNjVlZTc3NDNmZGZlNjhhNzNlNjM1ZTIwYjIxNWJiIiwiSVNfTE9HSU4iOnRydWUsIm5pY2tuYW1lIjoiWmVybyIsInVzZXJuYW1lIjoiXHU5NDlmXHU2NTg3XHU1Yjk3IiwiYXZhdGFyIjoibWVkaWEvXHU5NDlmXHU2NTg3XHU1Yjk3LnBuZyJ9', '2020-09-17 16:35:05.425149');
INSERT INTO `django_session` VALUES ('gszoi84ydw8y2iva2aw7pzb6xudjud9p', 'ZTFhNjNkYjRjZjVhNjI2OGU2OWM3OTQ1N2VhYjM2NWFiNDA4ODYzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTlkZDNjM2RmNjVlZTc3NDNmZGZlNjhhNzNlNjM1ZTIwYjIxNWJiIiwiSVNfTE9HSU4iOnRydWUsIm5pY2tuYW1lIjoiWmVybyIsInVzZXJuYW1lIjoiXHU5NDlmXHU2NTg3XHU1Yjk3IiwiYXZhdGFyIjoibWVkaWEvXHU5NDlmXHU2NTg3XHU1Yjk3LnBuZyJ9', '2020-09-16 01:56:49.069616');
INSERT INTO `django_session` VALUES ('vs33zhkm3cp914snqlo6qxh65x7mop9x', 'OTA4ZmRjYWVhYTg2NDEwZTljMDAxMjEzMDhmYmE1YzY2M2VlZDQxMTp7ImF2YXRhciI6Im1lZGlhL1x1OTQ5Zlx1NjU4N1x1NWI5Ny5wbmciLCJJU19MT0dJTiI6dHJ1ZSwibmlja25hbWUiOiJaZXJvIiwidXNlcm5hbWUiOiJcdTk0OWZcdTY1ODdcdTViOTciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmU5ZGQzYzNkZjY1ZWU3NzQzZmRmZTY4YTczZTYzNWUyMGIyMTViYiJ9', '2020-09-16 15:45:11.219455');
INSERT INTO `django_session` VALUES ('w6jujlfdzou6k74exfgv5vhzjgv6rvhj', 'ZjFhYTc4OWIxNjY2OWVkOTZiNDg1ODQzYmJkMTg4MTU3N2I4MDA2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NDgxMmE3OGViMDI5NTk0NTdlZmEyZWUzMTdjYTVlYzc4N2IzYTkwIiwic2ltcGxldWlfMjAyMDA5MDQiOnRydWV9', '2020-09-17 21:12:41.883293');
INSERT INTO `django_session` VALUES ('xux9vxk8m4usmbvrgi7f5d9ev5wa3afc', 'NTI3ZDZhMGM3MWM3YjQ1YTQ1ODRkNjBiMTVkMDUxZGEzMWU2NmEzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzE3ZDZiNmY4Y2U4OTAwMTFmNmI5MjYxYjA4MGMwZGIwNjNlYWE3IiwiYXZhdGFyIjoibWVkaWEvXHU1M2Y2XHU3NTFmLnBuZyJ9', '2020-09-18 02:08:31.397926');
INSERT INTO `django_session` VALUES ('yokoq3pj65s4o70jbytoqgilf7snael4', 'MDEzZTU0MDFjYjVhODg5Yzc5ZjE0Yjc1MWQ4ZWNiOGZhNDI5OWM5ODp7IklTX0xPR0lOIjp0cnVlLCJuaWNrbmFtZSI6Ilplcm8iLCJ1c2VybmFtZSI6Ilx1OTQ5Zlx1NjU4N1x1NWI5NyIsImF2YXRhciI6Im1lZGlhL1x1OTQ5Zlx1NjU4N1x1NWI5Ny5wbmciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmU5ZGQzYzNkZjY1ZWU3NzQzZmRmZTY4YTczZTYzNWUyMGIyMTViYiJ9', '2020-09-16 02:24:33.441104');

-- ----------------------------
-- Table structure for django_summernote_attachment
-- ----------------------------
DROP TABLE IF EXISTS `django_summernote_attachment`;
CREATE TABLE `django_summernote_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_summernote_attachment
-- ----------------------------
INSERT INTO `django_summernote_attachment` VALUES ('1', '金牛座会战boss详解', 'django-summernote/2020-09-03/a4c7c33a-fa3d-42c4-9966-c89e675954b9.png', '2020-09-02 16:02:47.329817');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('2', '公主连结');
INSERT INTO `tag` VALUES ('3', '新闻');
INSERT INTO `tag` VALUES ('4', '人物');
INSERT INTO `tag` VALUES ('5', '党学');
INSERT INTO `tag` VALUES ('7', '黑人抬棺');
INSERT INTO `tag` VALUES ('8', '鳌婿');
