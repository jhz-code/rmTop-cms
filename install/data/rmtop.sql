-- --------------------------------------------------------
-- 主机:                           cd-cdb-9pf44eme.sql.tencentcdb.com
-- 服务器版本:                        5.7.18-txsql-log - 20210630
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 rmtop 的数据库结构
CREATE DATABASE IF NOT EXISTS `rmtop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rmtop`;

-- 导出  表 rmtop.rtop_admin 结构
CREATE TABLE IF NOT EXISTS `rtop_admin` (
                                            `id` int(11) NOT NULL AUTO_INCREMENT,
                                            `username` varchar(50) DEFAULT NULL COMMENT '登陆账户',
                                            `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
                                            `mobile` varchar(16) DEFAULT NULL,
                                            `email` varchar(120) DEFAULT NULL,
                                            `status` tinyint(4) DEFAULT '0' COMMENT '有效状态，1正常，0禁用',
                                            `group_id` int(11) DEFAULT '0',
                                            `loginip` varchar(20) DEFAULT NULL,
                                            `logintime` int(11) DEFAULT '0',
                                            `logintimes` int(11) DEFAULT '0' COMMENT '登陆次数',
                                            `delete_time` int(11) DEFAULT '0',
                                            `create_time` int(11) DEFAULT '0',
                                            `lasttime` int(11) DEFAULT '0' COMMENT '所属用户组',
                                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员列表';



-- 导出  表 rmtop.rtop_admin_role 结构
CREATE TABLE IF NOT EXISTS `rtop_admin_role` (
                                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                                 `title` varchar(80) DEFAULT NULL COMMENT '角色名称',
                                                 `rule_method` text,
                                                 `create_time` int(11) DEFAULT '0',
                                                 `update_time` int(11) DEFAULT '0',
                                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='管理员角色列表';

-- 正在导出表  rmtop.rtop_admin_role 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `rtop_admin_role` DISABLE KEYS */;
INSERT INTO `rtop_admin_role` (`id`, `title`, `rule_method`, `create_time`, `update_time`) VALUES
    (1, '超级系统管理员', '30,31,10,11,33,34,22,23,25,20,21,32,27,28,29,36', 1617897894, 1617897894);
/*!40000 ALTER TABLE `rtop_admin_role` ENABLE KEYS */;



-- 导出  表 rmtop.rtop_advertise 结构
CREATE TABLE IF NOT EXISTS `rtop_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `title` varchar(120) DEFAULT NULL COMMENT '标题',
  `org_img` varchar(160) DEFAULT NULL COMMENT '图片',
  `url` varchar(160) DEFAULT NULL COMMENT '地址',
  `create_time` varchar(160) DEFAULT '0' COMMENT '创建时间',
  `desc` text COMMENT '广告简述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_advertise_group 结构
CREATE TABLE IF NOT EXISTS `rtop_advertise_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_auth_group 结构
CREATE TABLE IF NOT EXISTS `rtop_auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '用户组名称',
  `ico` varchar(20) DEFAULT NULL COMMENT '导航图标',
  `rules` text,
  `status` tinyint(1) DEFAULT '1' COMMENT '有效状态，1启用，0禁用',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_auth_rules 结构
CREATE TABLE IF NOT EXISTS `rtop_auth_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '上级权限规则ID',
  `title` varchar(30) DEFAULT NULL COMMENT '规则名称',
  `ico` varchar(100) DEFAULT NULL COMMENT '导航图标',
  `url` varchar(255) DEFAULT NULL COMMENT '规则地址',
  `type` tinyint(1) DEFAULT '1' COMMENT '验证类型，1实时验证，2登录验证',
  `status` tinyint(1) DEFAULT '1' COMMENT '有效状态，1启用，0禁用',
  `show` tinyint(1) DEFAULT '1' COMMENT '显示状态，1菜单显示，0菜单隐藏',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='管理权限规则';

-- 正在导出表  rmtop.rtop_auth_rules 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `rtop_auth_rules` DISABLE KEYS */;
INSERT INTO `rtop_auth_rules` (`id`, `pid`, `title`, `ico`, `url`, `type`, `status`, `show`, `sort`, `create_time`, `update_time`) VALUES
	(1, 0, '待操作', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(2, 0, '栏目管理', NULL, 'columnList', 1, 1, 2, NULL, NULL, NULL),
	(3, 0, '内容管理', NULL, 'content', 1, 1, 3, NULL, NULL, NULL),
	(7, 0, '管理配置', NULL, NULL, 1, 1, 7, NULL, NULL, NULL),
	(8, 0, '系统配置', NULL, NULL, 1, 1, 8, NULL, NULL, NULL),
	(9, 0, 'Top应用', NULL, '', 1, 1, 9, NULL, NULL, NULL),
	(10, 3, '内容列表', NULL, 'content', 1, 1, 1, NULL, NULL, NULL),
	(11, 3, '导航列表', NULL, 'navList', 1, 1, 1, NULL, NULL, NULL),
	(15, 4, '产品栏目', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(16, 4, '展示模版', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(17, 4, '产品列表', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(18, 5, '单页设计', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(19, 5, '单页列表', NULL, NULL, 1, 1, 1, NULL, NULL, NULL),
	(20, 8, '系统配置', NULL, 'systemConfig', 1, 1, 1, NULL, NULL, NULL),
	(21, 8, '自主配置', NULL, 'autoConfig', 1, 1, 1, NULL, NULL, NULL),
	(22, 7, '管理列表', NULL, 'adminlist', 1, 1, 1, NULL, NULL, NULL),
	(23, 7, '管理角色', NULL, 'authGroup', 1, 1, 1, NULL, NULL, NULL),
	(25, 7, '权限规则', NULL, 'authRulesGroup', 1, 1, 1, NULL, NULL, NULL),
	(26, 0, '系统日志', NULL, '', 1, 1, 1, NULL, NULL, NULL),
	(27, 26, '管理日志', NULL, 'oprateLog', 1, 1, 1, NULL, NULL, NULL),
	(28, 26, '运行日志', NULL, 'systemLog', 1, 1, 1, NULL, NULL, NULL),
	(29, 26, '访客日志', NULL, 'visitorLog', 1, 1, 1, NULL, NULL, NULL),
	(30, 1, '欢迎页', NULL, 'inipage', 1, 1, 1, NULL, NULL, NULL),
	(31, 2, '栏目列表', NULL, 'columnList', 1, 1, 1, NULL, NULL, NULL),
	(32, 9, '应用列表', NULL, 'topcenter', 1, 1, 1, NULL, NULL, NULL),
	(33, 3, '广告列表', NULL, 'advertiseIndex', 1, 1, 1, NULL, NULL, NULL),
	(34, 3, '静态资源', NULL, 'sourceIndex', 1, 1, 1, NULL, 1626966429, 1626966429),
	(35, 0, '开发者', NULL, NULL, 1, 1, 1, 0, 0, 0),
	(36, 35, '模版开发', NULL, 'templateDevelop', 1, 1, 1, 0, 0, 0),
    (37, 8, '模板配置', NULL, 'tempIndex', 1, 1, 1, NULL, NULL, NULL);

/*!40000 ALTER TABLE `rtop_auth_rules` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_blog 结构
CREATE TABLE IF NOT EXISTS `rtop_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_img` varchar(255) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `views` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_column 结构
CREATE TABLE IF NOT EXISTS `rtop_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级别ID',
  `sort` int(10) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `en_title` char(120) DEFAULT NULL COMMENT '英文别名',
  `org_img` varchar(150) DEFAULT NULL COMMENT '栏目图片',
  `type` tinyint(1) unsigned DEFAULT '1' COMMENT '栏目类型 1外部url 2内部',
  `type_url` varchar(225) DEFAULT NULL COMMENT 'url 链接',
  `directory_name` varchar(120) DEFAULT NULL COMMENT '目录名称',
  `model` varchar(80) DEFAULT NULL COMMENT '栏目模型',
  `model_title` varchar(150) DEFAULT NULL COMMENT '模型名称',
  `list_tmp` varchar(100) DEFAULT NULL COMMENT '列表模版',
  `info_tmp` varchar(100) DEFAULT NULL COMMENT '详情模板',
  `seo_title` varchar(225) DEFAULT NULL COMMENT 'Seo标题',
  `seo_key` varchar(200) DEFAULT NULL COMMENT 'Seo 关键词',
  `seo_des` text COMMENT 'Seo 描述',
  `is_show` tinyint(1) DEFAULT '0' COMMENT '1 隐藏 0 不隐藏',
  `is_index` tinyint(1) DEFAULT '0' COMMENT '1 设置为首页 0 默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;



-- 导出  表 rmtop.rtop_column_model 结构
CREATE TABLE IF NOT EXISTS `rtop_column_model` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL COMMENT '模型名称',
  `model_type` varchar(100) DEFAULT NULL COMMENT '模型标识',
  `sort` int(3) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

-- 正在导出表  rmtop.rtop_column_model 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `rtop_column_model` DISABLE KEYS */;
INSERT INTO `rtop_column_model` (`id`, `title`, `model_type`, `sort`) VALUES
	(1, '文章模型', 'article', 1),
	(2, '单页模型', 'single', 2),
	(3, '产品模型', 'product', 3),
	(4, '招聘模型', 'recruitment', 8),
	(5, '下载模型', 'download', 6),
	(7, '留言模型', 'message', 7),
	(8, '图集模型', 'atlas', 4),
	(9, '视频模型', 'video', 5);
/*!40000 ALTER TABLE `rtop_column_model` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_config 结构
CREATE TABLE IF NOT EXISTS `rtop_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `zh_name` varchar(80) DEFAULT NULL COMMENT '中文名称',
  `en_name` varchar(80) DEFAULT NULL COMMENT '英文名称',
  `value` text COMMENT '配置值',
  `is_true` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `group_id` int(11) DEFAULT '0' COMMENT '配置分组',
  `delete_time` int(11) DEFAULT '0' COMMENT '1 不可删除 0可删除',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_config 的数据：~24 rows (大约)
/*!40000 ALTER TABLE `rtop_config` DISABLE KEYS */;
INSERT INTO `rtop_config` (`id`, `zh_name`, `en_name`, `value`, `is_true`, `sort`, `group_id`, `delete_time`, `create_time`, `update_time`) VALUES
                                                                                                                                                (1, '系统加密密匙', 'sys_crypto', '123456', 1, 0, 0, 0, 0, 0),
                                                                                                                                                (2, '网站状态', 'is_open', '0', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (3, '网站标题', 'web_title', ' rmTopCMS——轻便、多变的CMS服务系统', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (4, '网站域名', 'web_host', 'https://www.rmsf.top', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (5, '网站logo', 'web_logo', 'http://static-img.rmsf.top/rmTop/20211228/rTop_00475129417fecea6ee3ccaefc02d677e74e653b7fd', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (6, '网站关键词', 'web_keyword', 'rmTopCMS|企业官网制作|免费企业官网|信息发布系统|产品展示官网|企业模板|手机网站|企营销网站|微信网站|H5网站|外贸建站|高端网站|政府CMS|企业级CMS|网站群|内容管理系统|网站内容管理|门户系统|rmcms|cms|rmtop|', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (7, '网站描述', 'web_desc', ' 开源、跨平台、企业级的CMS内容管理系统，能够以最低的成本、最少的人力投入在最短的时间内架设一个功能齐全、性能优异、易于维护的网站平台.', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (8, '网站版权', 'web_copyright', 'rmTopCMS', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (9, '网站备案号', 'web_icp', '滇ICP备17002956号', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (10, '闭站提示', 'close_tip', '维护中...', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (29, '文件储存位置', 'static_path', '/public/images/', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (30, '当前模板', 'tmp_path', '', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (31, '客服电话', 'kefu_mobile', '0871-65814748', 0, 1, 6, 0, 1625592100, 1625592100),
                                                                                                                                                (32, '公司地址:', 'kefu_adress', '云南省 • 昆明市五华区金鼎科技园', 0, 3, 6, 0, 1625592990, 1625592990),
                                                                                                                                                (33, '文件可访问路径', 'view_static_path', '/images/', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (34, '网站ico', 'web_ico', 'https://static-img.rmsf.top/rmTop/20211228/rTop_11520299844ede97db02616448d331e2922ab800565', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (35, '登录页面Logo', 'login_logo', 'https://static-img.rmsf.top/rmTop/20211228/rTop_1157513925937f902511bcbb8b25f8207fd53c3b508', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (36, '推送授权信息', 'baiduSpiderAuth', 'https://www.rmsf.top&token=sccjW6o5UJy58D6z', 0, 1, 7, 0, 1627196891, 1627196891),
                                                                                                                                                (37, '访问推送', 'visit_push_open', '1', 0, 2, 7, 0, 1627219477, 1627219477),
                                                                                                                                                (38, '主动推送开关', 'add_push_open', '1', 0, 3, 7, 0, 1627219574, 1627219574),
                                                                                                                                                (39, '邮箱', 'kefu_email', 'hezuo@ynrmsf.com', 0, 2, 6, 0, 1627486751, 1627486751),
                                                                                                                                                (40, '开发者模式', 'developer', '2', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (41, 'Top应用中心', 'app_center', '2', 0, 0, 0, 0, 0, 0),
                                                                                                                                                (42, 'Region', 'cosRegion', '', 0, 1, 8, 0, 1640619895, 1640619895),
                                                                                                                                                (43, 'buckName', 'cosBuckName', '', 0, 2, 8, 0, 1640619915, 1640619915),
                                                                                                                                                (44, '资源域名', 'cosHost', '', 0, 3, 8, 0, 1640619951, 1640619951),
                                                                                                                                                (45, 'SecretId', 'SecretId', '', 0, 0, 8, 0, 1640620052, 1640620052),
                                                                                                                                                (46, 'SecretKey', 'SecretKey', '', 0, 0, 8, 0, 1640620062, 1640620062),
                                                                                                                                                (47, '存储方式|local|cos|oss', 'save_type', 'local', 0, 0, 8, 0, 1640622758, 1640622758);
/*!40000 ALTER TABLE `rtop_config` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_config_group 结构
CREATE TABLE IF NOT EXISTS `rtop_config_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(11) DEFAULT NULL COMMENT '分组名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `ident` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_config_group 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `rtop_config_group` DISABLE KEYS */;
INSERT INTO `rtop_config_group` (`id`, `title`, `sort`, `ident`) VALUES
                                                                     (6, '客服配置', 1, 'kefu'),
                                                                     (7, '百度蜘蛛推送', 2, 'baiduSpider'),
                                                                     (8, '腾讯COS', 3, 'TX_COS');
/*!40000 ALTER TABLE `rtop_config_group` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_article 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0' COMMENT '唯一ID',
  `col_id` int(11) DEFAULT '0' COMMENT '模型标识',
  `seo_title` varchar(150) DEFAULT NULL,
  `seo_key` varchar(80) DEFAULT NULL,
  `seo_des` varchar(160) DEFAULT NULL,
  `doc_type` int(11) DEFAULT '0' COMMENT '头条 推荐 热门 其他',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `org_img` varchar(100) DEFAULT NULL COMMENT '首图',
  `img_lists` text,
  `content` text COMMENT '内容',
  `tags` varchar(250) DEFAULT '' COMMENT '标签内容',
  `view_path` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `access` int(11) DEFAULT '0' COMMENT '阅读权限',
  `views` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `category` int(11) DEFAULT '0' COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='模型额外信息';

-- 正在导出表  rmtop.rtop_extends_article 的数据：~35 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_article` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_atlas 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_atlas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` varchar(100) DEFAULT NULL COMMENT '模型标识',
  `title` varchar(120) DEFAULT NULL COMMENT '图片名称',
  `org_img` varchar(120) DEFAULT NULL COMMENT '图片',
  `img_lists` text,
  `create_time` varchar(20) DEFAULT NULL,
  `doc_type` int(11) DEFAULT '0' COMMENT '类型',
  `tags` varchar(120) DEFAULT NULL COMMENT '标签',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `author` varchar(50) DEFAULT NULL,
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(120) DEFAULT NULL,
  `seo_des` varchar(120) DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `turl` varchar(80) DEFAULT NULL,
  `view_path` varchar(120) DEFAULT NULL,
  `content` text,
  `category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_extends_category 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `col_id` int(11) DEFAULT '0' COMMENT '栏目ID',
  `pid` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='分类栏目';


-- 导出  表 rmtop.rtop_extends_download 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` varchar(50) DEFAULT NULL COMMENT '模型标识',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `org_img` varchar(120) DEFAULT NULL COMMENT '首图',
  `img_lists` text,
  `file_name` varchar(120) DEFAULT NULL COMMENT '文件名',
  `file_url` varchar(150) DEFAULT NULL COMMENT '文件地址',
  `load_times` int(11) DEFAULT '0' COMMENT '下载次数',
  `content` text COMMENT '内容',
  `create_time` varchar(20) DEFAULT NULL,
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(120) DEFAULT NULL,
  `seo_des` varchar(150) DEFAULT NULL,
  `doc_type` int(11) DEFAULT '0',
  `tags` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `view_path` varchar(80) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下载模型';

-- 正在导出表  rmtop.rtop_extends_download 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_download` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_job 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `title` varchar(120) DEFAULT NULL COMMENT '标题',
  `online` int(11) DEFAULT '0' COMMENT '在线招聘 1 开启 2 关闭',
  `col_id` int(11) DEFAULT NULL COMMENT '模型标识',
  `jod_place` varchar(100) DEFAULT NULL COMMENT '工作地点',
  `edu` varchar(60) DEFAULT NULL COMMENT '学历要求',
  `salary` varchar(60) DEFAULT NULL COMMENT '薪资待遇',
  `jod_nature` varchar(60) DEFAULT NULL COMMENT '工作性质',
  `jod_years` varchar(60) DEFAULT NULL COMMENT '工作年限',
  `people` int(11) DEFAULT '0' COMMENT '招聘人数',
  `content` text COMMENT '内容',
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(120) DEFAULT NULL,
  `seo_des` varchar(120) DEFAULT NULL,
  `view_path` varchar(120) DEFAULT NULL COMMENT '模板',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `create_time` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT '0' COMMENT '点击',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘模型';

-- 正在导出表  rmtop.rtop_extends_job 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_job` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_message 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '留言姓名',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `demand` text COMMENT '需求',
  `img_lists` text,
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '提交ip',
  `email` varchar(80) DEFAULT NULL,
  `col_id` int(11) DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='留言模型';


-- 导出  表 rmtop.rtop_extends_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'text',
  `key` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='单面额外参数';


-- 导出  表 rmtop.rtop_extends_product 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` int(11) DEFAULT NULL,
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(80) DEFAULT NULL,
  `seo_des` varchar(160) DEFAULT NULL,
  `property` varchar(30) DEFAULT '0' COMMENT '属性类别',
  `title` varchar(200) DEFAULT NULL,
  `org_img` varchar(200) DEFAULT NULL,
  `img_lists` text,
  `product_type` int(11) DEFAULT '0' COMMENT '产品类型',
  `content` text COMMENT '产品描述',
  `tags` varchar(100) DEFAULT '' COMMENT '产品标签',
  `view_path` varchar(160) DEFAULT NULL COMMENT '产品模版',
  `turl` varchar(160) DEFAULT NULL COMMENT '跳转url',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(11) DEFAULT '0' COMMENT '删除时间',
  `category` int(10) DEFAULT '0' COMMENT '分类',
  `views` int(11) DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;



-- 导出  表 rmtop.rtop_extends_single 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '单页标题',
  `img_lists` text,
  `text` text COMMENT '单页内容',
  `view_path` varchar(255) DEFAULT NULL COMMENT '模板',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `create_time` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `col_id` int(11) DEFAULT '0' COMMENT '模型标识',
  `author` varchar(120) DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `tags` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 导出  表 rmtop.rtop_extends_video 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(120) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '视频标题',
  `img_lists` text,
  `video_url` varchar(80) DEFAULT NULL COMMENT '视频链接',
  `create_time` varchar(20) DEFAULT NULL,
  `top` int(11) DEFAULT '0' COMMENT '1 为推荐',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `views` int(11) DEFAULT '0' COMMENT '浏览量',
  `view_path` varchar(120) DEFAULT NULL COMMENT '模板',
  `org_img` varchar(150) DEFAULT NULL COMMENT '首图',
  `content` text COMMENT '内容',
  `col_id` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_video 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_video` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_information 结构
CREATE TABLE IF NOT EXISTS `rtop_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` int(11) DEFAULT '0' COMMENT '栏目ID',
  `seo_title` varchar(100) DEFAULT NULL COMMENT '文档属性 头条1 推荐2  3加粗 4 图片 5 jump ',
  `seo_key` varchar(80) DEFAULT NULL COMMENT 'seo标题',
  `seo_des` varchar(200) DEFAULT NULL COMMENT 'seo描述',
  `tag` varchar(100) DEFAULT NULL COMMENT 'seo标签',
  `view_path` varchar(150) DEFAULT '0' COMMENT '文档模版',
  `create_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章列表';


-- 导出  表 rmtop.rtop_navs 结构
CREATE TABLE IF NOT EXISTS `rtop_navs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL COMMENT '分组ID',
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `title` varchar(150) DEFAULT NULL COMMENT '导航名称',
  `url` varchar(255) DEFAULT NULL COMMENT '导航URl',
  `click_times` int(11) DEFAULT '0' COMMENT '点击次数',
  `target` varchar(60) DEFAULT NULL COMMENT '打开方式',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` int(11) DEFAULT '0',
  `nav_type` int(11) DEFAULT '0' COMMENT '内部栏目',
  `column_id` varchar(11) DEFAULT NULL COMMENT '栏目ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_navs 的数据：~19 rows (大约)
/*!40000 ALTER TABLE `rtop_navs` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_navs` ENABLE KEYS */;


-- 导出  表 rmtop.rtop_navs_category 结构
CREATE TABLE IF NOT EXISTS `rtop_navs_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL COMMENT '分组名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_rules 结构
CREATE TABLE IF NOT EXISTS `rtop_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(255) DEFAULT NULL,
  `v0` varchar(255) DEFAULT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `v3` varchar(255) DEFAULT NULL,
  `v4` varchar(255) DEFAULT NULL,
  `v5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_rules 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_rules` ENABLE KEYS */;



-- 导出  表 rmtop.rtop_static_upload 结构
CREATE TABLE IF NOT EXISTS `rtop_static_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(80) DEFAULT '' COMMENT '图片储存类型',
  `key` varchar(200) DEFAULT '' COMMENT '图片健值',
  `img_path` varchar(200) DEFAULT '' COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;


-- 导出  表 rmtop.rtop_system_log 结构
CREATE TABLE IF NOT EXISTS `rtop_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作员ID',
  `content` text COMMENT '操作内容',
  `client_ip` text,
  `create_time` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统运行日志';


-- 正在导出表  rmtop.rtop_system_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_system_log` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_system_message 结构
CREATE TABLE IF NOT EXISTS `rtop_system_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(50) NOT NULL DEFAULT '系统提示',
  `title` varchar(100) NOT NULL DEFAULT '0',
  `content` tinytext NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0' COMMENT '0 未读取 1读取',
  `create_time` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统消息';



-- 导出  表 rmtop.rtop_system_run_log 结构
CREATE TABLE IF NOT EXISTS `rtop_system_run_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息iD',
  `content` text COMMENT '运行内容',
  `create_time` int(11) DEFAULT '0' COMMENT '运行时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18206 DEFAULT CHARSET=utf8 COMMENT='系统运行日志';

-- 导出  表 rmtop.rtop_system_visitor 结构
CREATE TABLE IF NOT EXISTS `rtop_system_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(20) DEFAULT NULL,
  `client_ip` varchar(20) DEFAULT NULL COMMENT '访问ip',
  `agent` varchar(80) DEFAULT NULL,
  `from_page` text,
  `bot` varchar(120) DEFAULT NULL,
  `times` int(11) DEFAULT '0' COMMENT '访问次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24045 DEFAULT CHARSET=utf8 COMMENT='网站访客记录';



/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
