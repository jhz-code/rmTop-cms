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

-- 正在导出表  rmtop.rtop_admin 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_admin` DISABLE KEYS */;
INSERT INTO `rtop_admin` (`id`, `username`, `password`, `mobile`, `email`, `status`, `group_id`, `loginip`, `logintime`, `logintimes`, `delete_time`, `create_time`, `lasttime`) VALUES
	(60, '18288269901', '$2y$10$ESfyGMKBOW.Kctc7nn39.eVY5cSM/JwIq4c2M96mVOuIeeiCCT8Vq', '18288269901', 'zhuok520@qq.com', 1, 4, '222.172.249.89', 1637821761, 149, 0, 1617905314, NULL);
/*!40000 ALTER TABLE `rtop_admin` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_admin_role 结构
CREATE TABLE IF NOT EXISTS `rtop_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL COMMENT '角色名称',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员角色列表';

-- 正在导出表  rmtop.rtop_admin_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_admin_role` DISABLE KEYS */;
INSERT INTO `rtop_admin_role` (`id`, `title`, `create_time`, `update_time`) VALUES
	(4, '超级系统管理员', 1617897894, 1617897894);
/*!40000 ALTER TABLE `rtop_admin_role` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_admin_rules 结构
CREATE TABLE IF NOT EXISTS `rtop_admin_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL COMMENT '规则名称',
  `url` varchar(120) DEFAULT NULL COMMENT '权限URL',
  `status` int(11) DEFAULT '0' COMMENT '1 启用 0 未启用',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员权限规则';

-- 正在导出表  rmtop.rtop_admin_rules 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_admin_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_admin_rules` ENABLE KEYS */;

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

-- 正在导出表  rmtop.rtop_advertise 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `rtop_advertise` DISABLE KEYS */;
INSERT INTO `rtop_advertise` (`id`, `group_id`, `sort`, `title`, `org_img`, `url`, `create_time`, `desc`) VALUES
	(5, 1, 1, '广告1333', '/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png', '12313', '1626873960', '121'),
	(6, 1, 1, '广告1', '/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png', '', '1626876237', '');
/*!40000 ALTER TABLE `rtop_advertise` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_advertise_group 结构
CREATE TABLE IF NOT EXISTS `rtop_advertise_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_advertise_group 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_advertise_group` DISABLE KEYS */;
INSERT INTO `rtop_advertise_group` (`id`, `title`) VALUES
	(1, '首页轮播');
/*!40000 ALTER TABLE `rtop_advertise_group` ENABLE KEYS */;

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

-- 正在导出表  rmtop.rtop_auth_group 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `rtop_auth_group` DISABLE KEYS */;
INSERT INTO `rtop_auth_group` (`id`, `title`, `ico`, `rules`, `status`, `sort`, `create_time`, `update_time`) VALUES
	(1, '待操作', '&#xe601;', NULL, 1, 1, NULL, NULL),
	(2, '导航设置', NULL, NULL, 1, 2, NULL, NULL),
	(3, '文章管理', NULL, NULL, 1, 3, 0, 0),
	(4, '产品管理', NULL, NULL, 1, 4, 0, 0),
	(5, '单页模块', NULL, NULL, 1, 5, 0, 0),
	(6, '系统配置', NULL, NULL, 1, 6, 0, 0),
	(7, '管理配置', NULL, NULL, 1, 7, 0, 0),
	(8, '系统配置', NULL, NULL, 1, 8, 0, 0),
	(9, 'Top应用', NULL, NULL, 1, 9, 0, 0);
/*!40000 ALTER TABLE `rtop_auth_group` ENABLE KEYS */;

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
	(36, 35, '模版开发', NULL, 'templateDevelop', 1, 1, 1, 0, 0, 0);
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

-- 正在导出表  rmtop.rtop_blog 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `rtop_blog` DISABLE KEYS */;
INSERT INTO `rtop_blog` (`id`, `org_img`, `title`, `content`, `views`, `hot`, `create_time`, `delete_time`) VALUES
	(1, '/upload/20200115/2f9dc540fa46d7c2ea26a52367cf4ed0.jpg', '金大师228', '<p style="margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/upload/20200115/4013a2eea87551483ab0bf723aefd797.jpg"/></p><p style="margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);"><span class="bjh-p">1月10日晚间，微信公众号“上海衡源企业”发布一篇文章，称上海银行副行长黄涛违法发放265亿元贷款，落款为上海衡源企业发展有限公司法定代表人徐国良。</span></p><p style="margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);"><span class="bjh-p">对此，上海银行11日发布声明称，徐某某及其实际控制的上海衡源企业发展有限公司等多家企业，因严重拖欠巨额债务被该行及其他债权人依法诉至多家法院，其已深陷债务危机及严重失信局面。为掩盖真相、混淆视听，谋取不法利益，徐某某利用自媒体散布严重失实言论，恶意损害该行声誉，并严重侵害该行高管的合法权益。</span></p><p style="margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);"><span class="bjh-p">“我行已在第一时间向公安机关报案，后续我行将依法配合公安机关查证事实、还原真相。对恶意传播上述严重失实信息的网络载体，我行保留依法追究其法律责任的权利。”上海银行表示。</span></p><p style="margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);"><span class="bjh-p">关于此事，上海银行方面对《每日经济新闻》记者表示：“目前很多事情已经进入司法，后续情况会及时公布。”</span></p><p><br/></p>', 18, 0, 1578724467, 1582948453),
	(2, NULL, '博客2', '<p>哒哒哒哒哒哒多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多</p>', 0, 0, 1578726190, 1578726676),
	(3, NULL, '是', '<p>测试赛所所所所所所所所所所所所所所所所所所</p>', 0, 0, 1578726198, 1578726203),
	(4, NULL, '查实的', '<p>达到</p>', 0, 0, 1578726665, 1578726676),
	(5, '/upload/20210111/5fd2929cc402042f9632581290f9e585.jpg', 'SMS NONWOVEN FABRIC', '<p><img src="/upload/20210111/207538084a1b155d20f3cf1c9f1ea820.JPG"/></p><p><img src="/upload/20210111/aacd45c31f0a176eab8d9c8fb5dcfd63.jpg"/></p><p><img src="/upload/20210111/fac04ae253b8f3db3d42f2a794197bb0.JPG"/></p><p>SMS NONWOVEN FABRIC</p><p>Material:100% polypropylene</p><p>Technology: Spunbonded+Meltblown+Spunbonded</p><p>Gram: 13-70 g/m²</p><p>Width:300-3200mm</p><p>Color: White/Blue/Green/Pink</p><p>Application: mask,gown,diaper,bedsheet.</p><p><br/></p>', 44, 1, 1582944997, 1611114223),
	(6, '/upload/20200229/6f839ab6368946a577126195d16ae67f.jpg', 'How to choose outdoor travel bag? Eight categories make you clear', '<p>A good waist bag should not only be practical, but also be able to stand and match well. It is suitable for: gym, city jogging, marathon, etc. and all fitness sports~</p><p>Outdoor men&#39;s and women&#39;s running and riding waistpack</p><p>A small and portable waist bag, small size, but enough to accommodate carry on items. High quality nylon fabric, accessories, various back methods, whatever you want.</p><p>Running waistpack sports kettle waistpack</p><p>The lightweight and breathable sponge mesh design can prevent sweat from seeping into the bag and has strong stability. No matter riding or climbing, your belongings will not shake due to movement. Suitable for a variety of environments, such as travel, outing, camping, cycling, fishing, etc.</p><p>Unique design, no lock, hands free, waist storage balance movement, fashionable modeling, multi mouth design convenient to listen to music, bid farewell to the silence of movement. At the same time, it can effectively reduce the shaking caused by the movement. Wearing it is like a close fitting clothing, light and soft, comfortable to use.</p><p>Multifunctional sports bag outdoor small waist bag</p><p>The close fitting design, using light and thin fabric, can produce excellent close fitting and comfortable feeling, so that you don&#39;t swing in the movement, more flexible.</p><p>Outdoor sports running waistpack for men and women</p><p>The pocket can hold 6-inch mobile phone, key, energy stick and pocket money. Safe and reflective night running device, breathable and sweat-wicking, effectively prevent water splashing. Let you fall in love with cool run~</p><p>Cross the boundary between classic and fashion, do not follow the design of non square and round tread distance, innovate fashion with unique simple style, release your hands, and let your change, mobile phone and small items go with you!</p><p>Running mobile arm bag sports arm bag</p><p>Fashionable and dynamic design, comfortable and breathable fabric, listening to music while exercising, decompression and relaxation mode, touch operation, multi-purpose use, when exercising, your mobile phone and key will never worry about no place to put!</p><p>Mobile bag running mobile arm bag</p><p>The close fitting design is suitable for various sizes of mobile phones. The earphone hole design can put keys, pocket money and cards.</p><p>Double bag mobile phone arm bag, 3D stereo design, prismatic shading, color matching design is simple and dynamic. Very suitable for gym, running, hiking, cycling, outdoor sports. Enjoy the joy of sports, running is more exciting.</p><p>Running mobile arm bag arm bag with arm bag</p><p>Independent main bag and sub bag design, the items can be classified and placed, the main bin can receive large items such as change, and the sub bin can receive car keys and other items. With it, there is no place for sports items</p><p><br/></p>', 0, 0, 1582944997, 1582945003),
	(7, '/upload/20210111/14c5543cad9b69df357030a9874e2c39.jpg', 'ELASTIC EAR LOOP', '<p><img src="/upload/20210111/57385c7d1ae3eea2c21eac8e44a5f8ac.JPG"/><br/></p><p><img src="/upload/20210111/0c197c885d1d58193161c8f7b85c03cb.JPG"/></p><p><img src="/upload/20210111/5a42304057d7f50b8396e5a5f1b3262d.JPG"/></p><p>ELASTIC EAR LOOP</p><p>Material: Nylon+Spandex / Polyester+Spandex</p><p>Size: 2.5mm/2.8mm/3mm/5mm/7mm</p><p>Type: Round/Flat Elastic</p><p>Color: White/black (can be customized)</p><p>Feature: flexible,comfortable</p><p><br/></p>', 39, 1, 1582945151, 1611114225),
	(8, '/upload/20210111/53bd40e479c7854a8ae5a7979182c871.jpg', 'MIDDLE LAYER - FILTER', '<p><img src="/upload/20210111/b707b0701e754df8bf287b927d234760.JPG"/></p><p><img src="/upload/20210111/6f730a85c1691cee31bad20b0f98c4de.JPG"/></p><p><img src="/upload/20210111/e524297d2322609b6213508585ec06f9.JPG"/></p><p>MIDDLE LAYER - FILTER</p><p>Material:100% polypropylene</p><p>Technology: Meltblown Nonwoven Fabric</p><p>Gram: 20/25 g/m²</p><p>Width:175/180mm</p><p>Lenth: 2000m/roll</p><p>Color: White</p><p>BFE Level: 90/95/99%</p><p>Feature: good Isolation of dust and bacteria</p><p><br/></p><p><br/></p>', 58, 1, 1582945438, 1611114221),
	(9, '/upload/20210111/3bea5c0b0f71260e56f7bf8b5dfa56dc.jpg', 'OUTER LAYER OF MASK', '<p><img src="/upload/20210111/d6b6550bb671079f95935ae1201a23f0.jpg"/><br/></p><p><img src="/upload/20210111/b066b7970155797344c6ad7aec467f38.jpg"/></p><p><img src="/upload/20210111/1330dcffc0ee079efb5de240b3ad4a45.JPG"/></p><p><br/></p><p>OUTER LAYER OF MASK</p><p>Material:100% polypropylene</p><p>Technology:Spunbonded Nonwoven Fabric</p><p>Gram: 20/25/30 g/m²</p><p>Width:175/180mm</p><p>Lenth: 2000m/roll</p><p>Color: White/blue</p><p>Feature: waterpfoof,soft</p><p><br/></p>', 43, 1, 1609225043, 1611114219);
/*!40000 ALTER TABLE `rtop_blog` ENABLE KEYS */;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_column 的数据：~19 rows (大约)
/*!40000 ALTER TABLE `rtop_column` DISABLE KEYS */;
INSERT INTO `rtop_column` (`id`, `pid`, `sort`, `title`, `en_title`, `org_img`, `type`, `type_url`, `directory_name`, `model`, `model_title`, `list_tmp`, `info_tmp`, `seo_title`, `seo_key`, `seo_des`, `is_show`) VALUES
	(1, 0, 0, '首页', 'index', '', 1, '', '', 'single', '单页模型', 'index', '', '', '轻便、多变的CMS服务系统', 'rmTopCMS，轻便、多变的CMS服务系统。 开源、跨平台、企业级的CMS内容管理系统，能够以最低的成本、最少的人力投入在最短的时间内架设一个功能齐全、性能优异、易于维护的网站平台', 0),
	(2, 0, 0, '授权', 'buysoft', '', 1, '', '', 'single', '单页模型', 'buysoft', '', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', 'RmTop-CMS 服务内容', 0),
	(3, 0, 0, '动态	', 'news', '', 1, '', '', 'article', '文章模型', 'news', '', 'RmTop-CMS 最新发布|动态中心', 'RmTop-CMS 最新发布|动态中心｜新闻中心', '动态中心｜关注发展，与时俱进！', 0),
	(4, 0, 0, '文档	', 'document', '', 1, '', '', 'single', '单页模型', 'document', '', '文档中心｜RmTop-CMS操作手册|帮助中心', '文档中心｜RmTop-CMS操作手册|帮助中心', '文档中心｜便捷查询，快速入手！', 0),
	(5, 0, 0, '案例', 'cases', '', 1, '', '', 'atlas', '图集模型', 'cases', '', 'RmTop-CMS|案例展示｜体验中心｜企业官网制作｜', 'RmTop-CMS|案例展示｜体验中心｜企业官网制作｜', '客户案例｜精心制作，用心交付！', 0),
	(6, 0, 0, '升级', 'upgrade', '', 1, '', '', 'article', '单页模型', 'upgrade', 'upginfo', 'RmTop-CMS 升级日志', 'RmTop-CMS 升级日志｜企业官网定制｜', '升级日志｜每一次更新，都有突破！', 0),
	(7, 0, 0, '反馈', 'feedback', '', 1, '', '', 'message', '留言模型', 'feedback', '', '反馈中心｜需求提交｜bug提交｜', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '反馈中心｜聆听意见，共同成长！', 0),
	(8, 0, 0, '关于', 'about', '', 1, '', '', 'single', '单页模型', 'about', '', 'RmTop-CMS ', 'RmTop-CMS ', 'RmTop-CMS｜了解，从这里开始！', 0),
	(9, 4, 0, '新手指引', 'guide', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(10, 4, 0, '产品介绍', 'Introduction', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(11, 4, 0, '操作手册', 'handbook', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(13, 4, 0, '模板知识', 'template', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(15, 4, 0, 'SEO知识', 'seo', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(16, 4, 0, '安全相关', 'safe', '', 1, '', '', 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(17, 0, 0, '模板', 'temp', '', 1, '', '', 'product', '产品模型', 'temp', 'tempinfo', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '企业模版中心｜优选最心仪的企业形象！', 0),
	(19, 0, 0, '合作', 'coperate', '', 1, '', '', 'single', '单页模型', 'coperate', '', 'RmTop-CMS ', 'RmTop-CMS ', '真诚合作 | 互利互赢', 0),
	(21, 2, 0, '服务价格', 'sever', '', 1, '', '', 'single', '单页模型', 'sever', '', '', '', '', 0),
	(22, 2, 0, '模板价格', 'stencil', '', 1, '', '', 'single', '单页模型', 'stencil', '', '', '', '', 0),
	(23, 2, 0, '网站定制', 'custom', '', 1, '', '', 'single', '单页模型', 'custom', '', '', '', '', 0);
/*!40000 ALTER TABLE `rtop_column` ENABLE KEYS */;

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
	(5, '网站logo', 'web_logo', '/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png', 0, 0, 0, 0, 0, 0),
	(6, '网站关键词', 'web_keyword', 'rmTopCMS|企业官网制作|免费企业官网|信息发布系统|产品展示官网|企业模板|手机网站|企营销网站|微信网站|H5网站|外贸建站|高端网站|政府CMS|企业级CMS|网站群|内容管理系统|网站内容管理|门户系统|rmcms|cms|rmtop|', 0, 0, 0, 0, 0, 0),
	(7, '网站描述', 'web_desc', 'rmTopCMS——轻便、多变的CMS服务系统。 开源、跨平台、企业级的CMS内容管理系统，能够以最低的成本、最少的人力投入在最短的时间内架设一个功能齐全、性能优异、易于维护的网站平台', 0, 0, 0, 0, 0, 0),
	(8, '网站版权', 'web_copyright', 'rmTopCMS', 0, 0, 0, 0, 0, 0),
	(9, '网站备案号', 'web_icp', '滇ICP备17002956号', 0, 0, 0, 0, 0, 0),
	(10, '闭站提示', 'close_tip', '维护中...', 0, 0, 0, 0, 0, 0),
	(28, '密匙', 'mishi', '3242342342', 0, 1, 5, 0, 1623900685, 1623900685),
	(29, '文件储存位置', 'static_path', '/public/images/', 0, 0, 0, 0, 0, 0),
	(30, '当前模板', 'tmp_path', 'free_top', 0, 0, 0, 0, 0, 0),
	(31, '客服电话', 'kefu_mobile', '0871-65814748', 0, 1, 6, 0, 1625592100, 1625592100),
	(32, '公司地址:', 'kefu_adress', '云南省 • 昆明市五华区金鼎科技园', 0, 3, 6, 0, 1625592990, 1625592990),
	(33, '文件可访问路径', 'view_static_path', '/images/', 0, 0, 0, 0, 0, 0),
	(34, '网站ico', 'web_ico', '/images//rTop_ccd91d3e3e18b1176dd0711057c32be2.ico', 0, 0, 0, 0, 0, 0),
	(35, '登录页面Logo', 'login_logo', '/images//rTop_431e205cae1952af3aaf46dccf5e10ac.png', 0, 0, 0, 0, 0, 0),
	(36, '推送授权信息', 'baiduSpiderAuth', 'https://www.rmsf.top&token=sccjW6o5UJy58D6z', 0, 1, 7, 0, 1627196891, 1627196891),
	(37, '访问推送', 'visit_push_open', '1', 0, 2, 7, 0, 1627219477, 1627219477),
	(38, '主动推送开关', 'add_push_open', '1', 0, 3, 7, 0, 1627219574, 1627219574),
	(39, '邮箱', 'kefu_email', 'hezuo@ynrmsf.com', 0, 2, 6, 0, 1627486751, 1627486751),
	(40, '开发者模式', 'developer', '2', 0, 0, 0, 0, 0, 0),
	(41, 'Top应用中心', 'app_center', '2', 0, 0, 0, 0, 0, 0);
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
	(5, '短信配置', 9, 'sms'),
	(6, '客服配置', 1, 'kefu'),
	(7, '百度蜘蛛推送', 2, 'baiduSpider');
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
INSERT INTO `rtop_extends_article` (`id`, `uqid`, `col_id`, `seo_title`, `seo_key`, `seo_des`, `doc_type`, `title`, `org_img`, `img_lists`, `content`, `tags`, `view_path`, `author`, `access`, `views`, `create_time`, `category`) VALUES
	(1, '6d4231ea48e3d411', 6, '', '', '', 0, 'RmTop-CMS 1.0.0', '', NULL, '<p>RmTop-CMS 1.0.0</p><p><br/></p><p>单页魔力</p><p>信息模块</p><p>产品模块</p><p>图集模块</p><p>下载模块</p><p>招聘模块</p><p>视频模块</p><p><br/></p><p><br/></p><p><img src="/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png"/></p>', '', '', '', 0, 6863, 1626188521, NULL),
	(2, '27a59a74dd508f16', 3, '', '', '', 0, 'RmTop-CMS 正式上线', '/images//rTop_e22a17bc827365407f6d65ebfd03d05a.png', NULL, '<p style="text-align: center;"><span style="font-size: 24px;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">RmTop-CMS 正式上线</span></strong></span><span style="font-size: 20px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p><p><span style="font-size: 24px;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></strong></span></p><p><br/></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: #000000; font-size: 18px;">轻便，多变的的企业信息服务系统！</span></p><p><br/></p><p><img src="/images//rTop_e22a17bc827365407f6d65ebfd03d05a.png"/></p><p><br/></p><p style="margin-bottom: 10px;"><span style="color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;">&nbsp; &nbsp;</span></p><p style="margin: 0px auto 10px; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;入目三分科技是一家拥有自主开发、研发能力的软件公司，2017年成立于昆明，秉承开源是基础软件的未来这一理念，入目三分科技持续扩大影响力，专注于内容管理系统的研发及开源生态建设。</span></p><p style="margin: 0px auto 10px; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;RmTop-CMS 内容管理系统，是理想的大规模站群和内容管理解决方案，目前，已被应用在多家企业的实际生产环境中，涉及教育、互联网、政府、银行、航空、医疗、保险、证券、制造业等多个行业。</span></p><p style="margin: 0px auto; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;与时俱进，做好用的系统！</span></p><p style="margin-bottom: 10px;"><span style="color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;"></span><br/></p>', '', '', '', 0, 252, 1626188753, NULL),
	(3, '3c65f5bffe7d24f5', 3, '', '', '', 0, 'RmTopCMS 开发团队', '/images//rTop_d346297396a4de901125ef140ce7a894.png', NULL, '<p><br/></p><p><img src="/images//rTop_d346297396a4de901125ef140ce7a894.png"/></p><p><br/></p><hr/><p><span style="font-size: 20px;"><br/></span></p><p style="text-align: center;"><span style="font-size: 20px;">RmTopCMS 开发团队<br/></span></p><p><br/></p><p><br/></p><p>前端 ：Mr 李&nbsp;&nbsp;</p><p><br/></p><p><br/></p><p>技术 :&nbsp; Mr 朱</p><p><br/></p><p><br/></p><p>产品 ：Mr 赵</p><p><br/></p><p><br/></p><hr/><p><br/></p><p style="text-align: center;">鸣谢</p><p><br/></p><p>ThinkPHP</p><p><br/></p><hr/><p style="text-align: right;"><br/></p><p style="text-align: right;"><span style="font-family: 楷体, 楷体_GB2312, SimKai; font-size: 18px;">金诚所至&nbsp; 金石为开！</span></p>', '', '', '', 0, 274, 1626189208, NULL),
	(4, '3e019842281317d5', 9, '', '', '', 0, 'RmTop-CMS 如何栏目创建?', '', NULL, '<p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">网站共设有<span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">单页模块、文章模块、产品模块、图集模块、下载模块、招聘模块、视频模块，可以根据自己的需求创建相对应的模块</span><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-size: 16px;">创建栏目模型&nbsp;</span></strong></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">&nbsp; 首先，在栏目管理列表下的内容管理里添加栏目</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images//rTop_52fc3b023965f82bcb550b15b9225afa.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">在添加栏目中的栏目名称填写相应的栏目名称，如首页、产品、动态等，在目录名称中可自定义名称（必须是英文字母），然后再选择所添加的栏目所属的内容类型（文章模型、单页模型、产品模型、图集模型、视频模型、下载模型、留言模型、招聘模型）</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images//rTop_ae84a43892d051e7fd4a89c9f71dd20c.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; font-size: 15px; line-height: 2; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">在高级设置里可以添加所需的字段，也可以自定义列表模板名称（英文字母），完成后点击保存，</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; font-size: 15px; line-height: 2; background-color: rgb(255, 255, 255);"><img src="/images//rTop_e0921bc5aad9918b2218c520975f2116.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">其次，在内容管理列表下的导航模块里添加导航，如（顶部导航、侧边导航、底部导航）等</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images//rTop_efc5733b1d93822510c7378be5404a64.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">然后，在导航列表中添加导航，导航分钟（之前所添加的导航分钟）、导航名称（可自定义名称，建议和之前在栏目管理中心添加的名称所对应，以免过多时容易混淆）、排序（所添加的导航字段在网页上展示时候的顺序）、内部栏目（选择之前在栏目管理中添加的对应栏目），如有其他网址链接，可按照自行所需编辑</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images//rTop_d3958c837ab4bb8e352ad2dc9baf23e4.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-size: 16px;">最后，所添加的内容会在内容列表里展示出来，在右边编辑区域可以编辑自己所需的内容</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images//rTop_87de8c40f05f59983f12d8d58677dccb.png"/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p>', '', '', '', 0, 280, 1626190225, NULL),
	(5, '70bafdef804bdb44', 10, '系统目前支持的模块', '系统目前支持的模块', '系统目前支持的模块\r\n', 0, '系统目前支持的模块', '', NULL, '<hr/><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>单页模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_3bbc29e11e019851ead3e57688f92ebc.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>信息模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_a3f5ed48ff0e980dfea3c49f362bd17b.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>产品模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_c30104659e78b8fbbb4dd0a6fa9a3221.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>图集模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_54ffba2d1bb8369ec9eb36f5f4b48cee.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>下载模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_65eeeed3cae416bd08325c90ff9235f9.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>招聘模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_0b201201d66e5332f2966ce62b517890.png"/></strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong>视频模块</strong></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;"><span style="font-size: 18px;"><strong><img src="/images//rTop_7354323c954a4fbccd201866172f038a.png"/></strong></span></p><hr/><p><br/></p><p>更多模块敬请期待</p>', '', '', '', 0, 278, 1626191696, NULL),
	(6, '5b4581cc500d07ae', 9, '', '', '', 0, 'RmTop-CMS 模块内容简介', '', NULL, '<p><strong><span style="font-size: 18px;">1、单页模块</span></strong></p><p>有一些固定的参数，可选填，也可以自己添加参数</p><p><img src="/images//rTop_3bbc29e11e019851ead3e57688f92ebc.png"/></p><p><br/></p><p>自己新增参数，按自己的需求可选择文本类型、文本域、图片<br/></p><p><img src="/images//rTop_be6b9232e38eead527f93e8cc513bd0f.png"/></p><p><br/></p><p>可以在富文本编辑器里编辑单页里的内容，可编辑所要在前台展示的内容样式</p><p><img src="/images//rTop_13255eaa0acd463047b9015e0b1156b9.png"/><br/></p><p><span style="font-size: 18px;"><strong><br/></strong></span></p><p><span style="font-size: 18px;"><strong>2、文章<span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">模块</span></strong></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;">点击列表顶部添加文档<img src="/images//rTop_a3f5ed48ff0e980dfea3c49f362bd17b.png"/></span></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;"><br/></span></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;">可以根据自己所需填写文章内容</span></span><img src="/images//rTop_d0479ffda92a3d0efb368ddbdaacb27e.png"/></p><p><strong style="font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_11e0c0a0624f38818400b80f3b59c689.png"/></span></strong></p><p><strong style="font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">3、产品模块</span></strong></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">点击列表顶部添加产品</span></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_c30104659e78b8fbbb4dd0a6fa9a3221.png"/></span></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><br/></span></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">页面详情</span></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></span></span></p><p><img src="/images//rTop_5d66264d4738fc5f5c6ae9bc4a46b657.png" style=""/></p><p><img src="/images//rTop_55f5722b8cc1ab48b5ee4094098308ff.png"/></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><br/></span></span></span><br/></p><p><span style="font-size: 18px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">4、图集模块</span></strong></span></p><p><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF; font-size: 16px;">点击列表顶部添加图集</span></p><p><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF; font-size: 16px;"><img src="/images//rTop_54ffba2d1bb8369ec9eb36f5f4b48cee.png"/></span></p><p><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF; font-size: 16px;">内容详情</span></p><p><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF; font-size: 16px;"></span></p><p><img src="/images//rTop_c59867ad505dd86ccf15ecf38015f9d2.png" style=""/></p><p><img src="/images//rTop_064db070a692a55449c9c89a3459cc8c.png"/></p><p><br/></p><p><span style="font-size: 18px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">5、下载模块</span></strong></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">点击列表顶部添加下载资料</span></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_65eeeed3cae416bd08325c90ff9235f9.png"/></span></span></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;"><br/></span></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;">详情页编辑下载内容</span></span></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;"></span></span></p><p><img src="/images//rTop_57bfa9991f5233d53b8d3a109bf15c06.png" style=""/></p><p><img src="/images//rTop_7be6ac65e2964f1bcfdcaf1608d0f29d.png" style=""/></p><p><span style="color:#3f3e3e;font-family:Source Sans Pro, Tahoma, Microsoft yahei"><span style="background-color: #FFFFFF;"><br/></span></span><span style="font-size: 18px;"><strong>6、<strong style="font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">招聘模块</span></strong></strong></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">点击列表顶部添加招聘内容</span></span></span></p><p><span style="font-size: 16px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_0b201201d66e5332f2966ce62b517890.png"/></span></span></strong></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><br/></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">编辑招聘内容</span><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></span></p><p><span style="font-size: 16px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></span></strong></span></p><p><img src="/images//rTop_7a75cab1b8e5803207a6eca79a1a38f3.png" style=""/></p><p><img src="/images//rTop_80f0e1415358f39002abb74a4e866464.png" style=""/></p><p><br/></p><p><span style="font-size: 16px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></span></strong></span>7、<strong style="font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">视频模块</span></strong></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">点击列表顶部添加视频</span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_7354323c954a4fbccd201866172f038a.png"/></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><br/></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">编辑及上传视频</span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_10a726f8b305d72946242ba8284b4d6b.png"/></span></span></p><p><span style="font-size: 16px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><br/></span></span></p><p><span style="font-size: 18px;"><strong><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">8、留言<strong style="white-space: normal; font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;">模块</span></strong></span></strong></span></p><p><span style="font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><strong style="white-space: normal; font-size: 18px;"><span style="color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"></span></strong></span></span><span style="font-size: 16px; color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><strong style="white-space: normal; font-size: 18px;"></strong>可以导出用户留言信息</span></p><p><span style="font-size: 16px; color: #3F3E3E; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; background-color: #FFFFFF;"><img src="/images//rTop_0e7c9250945beadbb812e5f9981031b6.png"/></span></p>', '', '', '', 0, 356, 1626666308, NULL),
	(7, '129f315891f9ddbe', 15, '', '', '', 0, 'SEO 是什么', '', NULL, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">SEO（Search Engine Optimization，搜索引擎优化）是一种利用搜索引擎的排名规则，来提高目标网站在自然搜索结果中的收录数量和排名的优化行为，其目的是从搜索引擎中获得更多的免费流量，以及更好的展现形象。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">简单的说，搜索引擎优化是提高自然搜索排名获得流量，且提供给用户有价值的信息。SEO分为站长可控制的网站内部优化，以及网站本身以外的外部优化两个部分，这与SEM（搜索引擎营销）有一定的区别。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">SEO不仅是一种网络营销的方法，而且也是每个SEO从业者的态度，做SEO就像做人，要想成为一个有价值的人，就必须不断的充实自己的内涵与知识，做出巨大的贡献，在社会中才会更多的人需要你、支持你，这就是SEO的态度。其中网站就像人，不断完善站内的东西，帮助了别人成就了自己，也有更多的网站链接指向你，那么在这样良性循环中达到最优化的状态，所以说做SEO就是做人。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">做SEO是一门艺术，懂欣赏的人就知道它的魅力，就像是搜索引擎谈一场恋爱，需要我们去了解搜索引擎的喜好，做搜索引擎喜欢的优化，不去触碰搜索引擎的底线，否则就只能出局，相反，当我们真正运用好SEO技术，我们就能得到搜索引擎的巨大回报。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">说SEO简单，它也简单，很多人说就是外链和内容。说SEO复杂，它很复杂，因为有太多的不确定性，你无法知道搜索引擎的具体算法，无法随时跟上搜索引擎的更新。这就是SEO的魅力，让很多人又爱又恨。SEO技术是一个盘旋于边缘的技术，做得好就会获得巨大收益，做过头了，跌落山崖，一蹶不振。</span></p><p><br/></p>', '', '', '', 0, 266, 1626682545, NULL),
	(8, 'dd305b1b21be9f0e', 15, '', '', '', 0, 'SEO 注意事项', '', NULL, '<p style="margin-top: 0px; margin-bottom: 16px; white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255); line-height: 26px !important;">网站 TDK 标签的设置。title,description,keywords，根据产品业务，概括出核心关键 词作为 TDK 的内容，每个页面都不一样。如果每个页面的 keywords 都一样的话，搜索引 起会持怀疑态度，觉得你有作弊嫌疑。</p><p style="margin-top: 0px; margin-bottom: 16px; white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255); line-height: 26px !important;">如：</p><p style="margin-top: 0px; margin-bottom: 16px; white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255); line-height: 26px !important;"><img src="http://admin.rmsf.top/images//rTop_a4d1b49346871303a1507cd518164b36.png"/></p><p style="margin-top: 0px; margin-bottom: 16px; white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255); line-height: 26px !important;">此外，还有 meta 的 canonical 设置，一个网站还通过多个 url 访问，canonical 就是用来 告诉搜索引起，这么多个 url 中最有价值最重要的一个 url，一般是网站的首页。</p><p><br/></p>', '', '', '', 0, 254, 1626683049, NULL),
	(9, '8aedde185a28d210', 15, '', '', '', 0, 'SEO 的关系', '', NULL, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><span style="font-size: 18px; font-weight: 700;">1</span><span style="font-size: 18px; font-weight: 700;">、</span>&nbsp;<span class="bjh-strong" style="max-width: 100%; font-size: 18px; font-weight: 700;">SEO与排名的关系</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">排名分为自然排名和竞价排名，自然排名属于SEO的一部分，而竞价排名不属于SEO，但是会用到SEO的知识。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">SEO能提高关键词自然排名，但这不是SEO的全部作用。SEO通过提升排名获得流量，转化为网站的盈利。提高排名不一定能获得好的流量，网页能否满足用户需求、标题描述能否吸引用户点击，也影响网站的流量，而流量能否转化盈利，还需要网站内部的优化，才能增加固定用户或销售产品服务。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><span style="font-size: 18px; font-weight: 700;">2</span><span style="font-size: 18px; font-weight: 700;">、</span>&nbsp;<span class="bjh-strong" style="max-width: 100%; font-size: 18px; font-weight: 700;">SEO与SEM的关系</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">SEM是搜索引擎营销，SEO是SEM的一部分，在SEM中，除了SEO和竞价排名之外，还有关键词广告、PPC 来电付费等方式。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><span class="bjh-strong" style="max-width: 100%; font-size: 18px; font-weight: 700;">3、</span></span><span class="bjh-p" style="max-width: 100%;"><span class="bjh-strong" style="max-width: 100%; font-size: 18px; font-weight: 700;">SEO与网站运营的关系</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">SEO只是网站运营中很小的一部分内容。通常在网站运营部门中，有专门的SEO优化小组，SEO小组只负责搜索引擎优化的工作，网站要运行，除了搜索引擎优化之外，还有网站的筹备、网站的推广、网站的盈利、网站的成本、运营部门的管理等。</span></p><p><br/></p>', '', '', '', 0, 302, 1626683315, NULL),
	(10, '95f1c10f172626db', 15, '', '', '', 0, 'SEO 能为网站带来什么效果', '', NULL, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">网站的目的是盈利，对任何网站来说，不论网站的大小、行业，都可以利用SEO为网站盈利提供帮助，尤其是对以流量为目标的网站，SEO是网站发展的根本动力，是网站盈利的保证。因为SEO的作用就是为网站带来搜索引擎流量，有了流量，网站就有很多盈利的途径，比如网站广告位销售、网站自身产品的销售、网站其他服务的费用等。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;">&nbsp; 1、SEO帮助网站广告销售盈利。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">目前大多数网站盈利方式仍是网站广告，尤其是以资讯站、新闻站、下载站等类型网站为主。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">&nbsp; 2、SEO帮助网站自身产品销售盈利。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">很多企业网站并不做广告，基本都是宣传自身公司形象，或者销售自己的产品。在这个互联网的时代里，做什么都不可能是一家，因此即使是网络上，竞争也非常激烈。要想宣传公司、销售产品，首先就必须让网站被更多的人看到，而SEO的作用就是让网站被更多的人看到。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;"><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">&nbsp; 3、SEO帮助帮助网站其他服务盈利</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">有的网站采用为用户提高服务的方式盈利，比如会员的特殊功能、用户的增值服务等，这类网站以论坛、博客网站为主。这类网站要有吸引用户的地方，且其他地方不能满足用户，用户有理由选择此网站付费。SEO作用就是，将用户带入这些网站，增加网站的注册用户和付费用户。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;"><span class="bjh-p" style="max-width: 100%;">以上三个赢利点都基于网站流量，如果不是品牌大站，搜索引擎流量就占了网站流量的大部分，这也证明了SEO在网站盈利中的重要性。</span></p><p><br/></p>', '', '', '', 0, 264, 1626683495, NULL),
	(11, '00a55bfebac30692', 11, '', '', '', 0, '快速安装RmTop-CMS ！', '/images//rTop_b712f2ab456716610ab875e1c6a55567.png', NULL, '<p><br/></p><p>一、<span style="font-size: 18px;">在官网下载RmTop-CMS系统 ，部署到自己的服务器：</span></p><p><br/></p><p><br/></p><p>&nbsp;&nbsp;<img src="/images//rTop_65d9eacf8572798dde2d9b7088afdf2f.png"/></p><hr/><p><br/></p><p>二 、<span style="font-size: 18px;">绑定域名到服务器</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><hr/><p><br/></p><p>三、<span style="font-size: 18px;">访问域名执行系统安装 :</span></p><p><br/></p><p><br/></p><p><img src="/images//rTop_b712f2ab456716610ab875e1c6a55567.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><span style="font-size: 18px;">配置数据库信息 ，然后执行下一步</span></p><p><br/></p><p><img src="/images//rTop_6e1e1202041bdaf8c524742a08f78b14.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><span style="font-size: 18px;">执行管理员信息配置：</span><br/></p><p><br/></p><p><img src="/images//rTop_100aff9645fa13596d54f575fc1cf539.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><span style="font-size: 18px;">点击安装系统 ，系统将进入自动安装进程中</span></p><p><br/></p><p><img src="/images//rTop_88335556347da3e9278c61938eb99201.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><span style="font-size: 18px;">到此 ，RmTop-CMS系统安装成功 。</span></p><p><br/></p><p><img src="/images//rTop_928b87e1ed20d8b97a5839d2870ad2ef.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '', '', 0, 380, 1626700980, NULL),
	(12, '6b7996d3fcc93f81', 3, '', '', '', 0, 'RmTop-CMS 优化系统广告模块、图集上传模块', '/images//rTop_cfcf8f6ff898af84428a2f55243d4724.png', NULL, '<p><br/></p><p>=== 2021-7-22</p><p><br/></p><p>增加广告模块</p><p><br/></p><p>广告轮播</p><p><br/></p><p>广告代码</p><p><br/></p><p>广告分组</p><p><br/></p><p>增强系统的稳定性.</p><p><br/></p><p>===&nbsp;2021-7-21</p><p><br/></p><p>系统图集模块&nbsp;</p><p>&nbsp;</p><p>封装图集上传接口、统一管理图片、优化系统图片管理性能</p><p><br/></p><p>集中式管理系统上传文件、减轻服务器压力</p><p><br/></p>', '', '', '', 0, 266, 1626917828, 0),
	(13, '190c90ce351113aa', 3, '', '', '', 0, 'RmTop-CMS 增加信息提示，提升对模板开发的友好性', '/images//rTop_1351aa9c68cecd81dd1a3dcf46273483.png', NULL, '<p><br/></p><p>===<span style="font-size: 20px;">&nbsp; 兼容性优化</span></p><p><br/></p><p><br/></p><p><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;对模板开发的友好性进行兼容&nbsp;</span></p><p><span style="font-size: 18px;">&nbsp;</span></p><p><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;增加对应后台信息参数提示</span></p><p><br/></p><p><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;直观明了的展示模块模板开发过程中需要调用的参数</span></p><p><br/></p><p><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;对模板数据调用兼容性进行优化&nbsp; 大大提升了开发效率</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_1351aa9c68cecd81dd1a3dcf46273483.png"/></p>', '', '', '', 0, 260, 1626918422, 0),
	(14, '5d7100844e14a25d', 3, '', '', '', 0, 'RmTop-CMS 静态资源统管理', '/images//rTop_87ab107c33f9027a1e75fddf94c862ce.png', NULL, '<p><br/></p><p>====</p><p><br/></p><p>优化RmTop-CMS 静态资源管理&nbsp;</p><p><br/></p><p>封装静态资源输入接口，对所有静态资源进行储存标识&nbsp;</p><p><br/></p><p>便于统一管理所有上传的静态资源，合理利用服务器资源</p><p><br/></p><p>增强系统的承载性能</p><p><br/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_87ab107c33f9027a1e75fddf94c862ce.png"/></p>', '', '', '', 0, 256, 1626968593, 0),
	(15, '99107601a089b4d9', 3, '', '', '', 0, 'RmTop-CMS 优化产品展示分类、系统数据统计、登录日志', '/images//rTop_bd80f87afe5408d34f2251ec6ed081dc.png', NULL, '<p><br/></p><p>==== 2021-07-25</p><p><br/></p><p>&nbsp; RmTop-CMS&nbsp;</p><p><br/></p><p>&nbsp; 优化产品分类显示</p><p>&nbsp; 优化模块数据统计</p><p>&nbsp; 优化登录统计日志<br/></p><p>&nbsp; 广告模型数据优化&nbsp;&nbsp;<br/></p><p>&nbsp; 优化访客数据统计</p><p><br/></p><p>&nbsp;&nbsp;<img src="/images//rTop_bd80f87afe5408d34f2251ec6ed081dc.png"/></p><p><br/></p>', '', '', '', 0, 334, 1627193599, 0),
	(28, '635b0bfac8ad3756', 3, '', '', '', 0, 'RmTop-CMS 优化参数唯一性、界面调整、跳转参数优化', '/images//rTop_f69bfe7e13090737a3db5be51273108c.png', NULL, '<p><br/></p><p>==== 2021-07-27</p><p><br/></p><p>RmTop-CMS&nbsp;</p><p><br/></p><p>优化参数唯一性、灵活性 、便捷性</p><p><br/></p><p>增加界面信息提示，提升友好度</p><p><br/></p><p>优化调整相关调整参数，更便捷的操控系统</p><p><br/></p><p>增加资源数据的引入操作、简单方面的数据引入操作</p><p><br/></p><p>增加百度搜索引擎资源推送服务</p><p><br/></p><p>增加系统运行日志记录，掌控系统运行状态</p><p><br/></p><p><br/></p><p><img src="/images//rTop_4ede0dd882c74b611b422336c56d5ac2.jpg"/></p><p><br/></p>', '', '', '', 0, 375, 1627359790, 0),
	(30, '2c2b21f5b3255c95', 3, '', '', '', 0, 'RmTop-CMS 优化信息反馈操作', '/images//rTop_d84d60ec7f012947148e36807a7d3a58.png', NULL, '<p>==== 2021-07-28</p><p><br/></p><p>优化RmTop-CMS</p><p>在线反馈</p><p>预览反馈</p><hr/><p><br/></p><p><img src="http://admin.rmsf.top/images//rTop_f03c66816e687b61a75dcb7612b73b0e.png" style="white-space: normal;"/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_d84d60ec7f012947148e36807a7d3a58.png" style=""/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_c1569aa3981228ff4c14aec42599af15.png" style=""/></p><p><br/></p><p><br/></p>', '', '', '', 0, 310, 1627404730, 0),
	(33, '15c765bce1959a5c', 16, '', '', '', 0, 'ssh 密匙创建以及ssh 远程登录配置', '/images//rTop_3c3753c837b29c9ce1d139443f8d203f.webp', NULL, '<p><br/></p><p>ssh密匙生成：</p><p><br/></p><hr/><p><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">[root@localhost ~]</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;"># ssh-keygen -t rsa &nbsp; &nbsp; &nbsp; #生成密钥对，-t代表类型，有RSA和DSA两种</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">Generating public/private rsa key pair.\r\nEnter file </span><span class="hljs-keyword" style="color: #7B59C0; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">in</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> which to save the key (</span><span class="hljs-regexp" style="color: #CA402B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">/root/</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">.ssh/id_rsa): &nbsp; </span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">#密钥文件默认存放位置，按Enter即可</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">Created directory </span><span class="hljs-string" style="color: #918B3B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">&#39;/root/.ssh&#39;</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">.\r\nEnter passphrase (empty </span><span class="hljs-keyword" style="color: #7B59C0; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">for</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> </span><span class="hljs-literal" style="color: #A65926; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">no</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> passphrase): &nbsp; &nbsp; </span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">#输入密钥锁码，或直接按 Enter 留空</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">Enter same passphrase again: &nbsp; &nbsp; \r\nYour identification has been saved </span><span class="hljs-keyword" style="color: #7B59C0; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">in</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> </span><span class="hljs-regexp" style="color: #CA402B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">/root/</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">.ssh/id_rsa. &nbsp; &nbsp;</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">#生成的私钥</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">Your public key has been saved </span><span class="hljs-keyword" style="color: #7B59C0; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">in</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> </span><span class="hljs-regexp" style="color: #CA402B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">/root/</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">.ssh/id_rsa.pub. &nbsp; &nbsp;</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">#生成的公钥</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">The key fingerprint is:\r\nSHA256:K1qy928tkk1FUuzQtsdfsdf6dfdfPvHw9lQ+KNuZ4 root@localhost.localdomain\r\nThe key</span><span class="hljs-string" style="color: #918B3B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">&#39;s randomart image is:\r\n+---[RSA 2048]----+\r\n| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; +. &nbsp; &nbsp;|\r\n| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;o * . &nbsp;|\r\n| &nbsp; &nbsp; &nbsp; &nbsp;. .O + &nbsp; |\r\n| &nbsp; &nbsp; &nbsp; . *. * &nbsp; &nbsp;|\r\n| &nbsp; &nbsp; &nbsp; &nbsp;S =3+ &nbsp; &nbsp; |\r\n| &nbsp; &nbsp;. &nbsp; &nbsp;=... &nbsp; &nbsp;|\r\n| &nbsp; &nbsp;.oo =+ov+ &nbsp; &nbsp; |\r\n| &nbsp; &nbsp; ==o+B*3o. &nbsp; &nbsp;|\r\n| &nbsp; &nbsp;oo.3=EXO. &nbsp; &nbsp; |\r\n+----[SHA256]-----+</span></p><p><span class="hljs-string" style="color: #918B3B; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;"><br/></span></p><p><br/></p><p><br/></p><p></p><p>生成后的密匙文件位置:</p><hr/><p><span class="hljs-built_in" style="color: #A65926; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">cd</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> ~</span><span class="hljs-built_in" style="color: #A65926; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;">cd</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"> .sh\r\nls</span></p><p><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"><br/></span></p><p><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;"><br/></span></p><p></p><p>设置ssh公钥远程登录:(将公钥文件上传到远程服务器,同时将key复制到authorized_keys)</p><hr/><p><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">[root@localhost .ssh]</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;"># rz </span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">\r\n &nbsp; &nbsp;[root@localhost .ssh]</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;"># cat id_rsa_2048.pub &gt;&gt; authorized_keys</span><span style="color: #695D69; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre; background-color: #F7F3F7;">\r\n &nbsp; &nbsp;[root@localhost .ssh]</span><span class="hljs-comment" style="color: #776977; font-family: Consolas, Inconsolata, Courier, monospace, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12.15px; white-space: pre;"># chmod 600 authorized_keys </span></p>', '', '', '', 0, 302, 1627484221, 0),
	(34, 'dcab3579da294dcc', 16, '', '', '', 0, '什么是索引？为什么要建立索引？索引分类？', '/images//rTop_bc238ed7b1455304164f9549799a9c31.jpeg', NULL, '<p>一、索引介绍：<br/>　　索引用于快速找出在某个列中有一特定值的行。不使用索引，MySQL必须从第一条记录开始读完整个表，直到找出相关的行，表越大查询数据所花费的时间就越多。如果表中查询的列有索引，MySQL能够快速到达一个位置去搜索数据文件，而不必查看所有数据，那么将会节省很大一部分时间。</p><p>　　例如：有一张person表，其中有2W条记录，记录着2W个人的信息。有一个Phone的字段记录每个人的电话号码，现在想要查询出电话号码为xxxx的人的信息。</p><p>　　如果没有索引，那么将从表中第一条记录一条条往下遍历，直到找到该条信息为止。</p><p>　　如果有了索引，那么会将 Phone 字段，通过一定的方法进行存储，好让查询该字段上的信息时，能够快速找到对应的数据，而不必在遍历2W条数据了。其中MySQL中的索引的存储类型有两种：BTREE、HASH。 也就是用树或者Hash值来存储该字段，更详细的查找逻辑就需要会算法的知识了。我们现在只需要知道索引的作用，功能是什么就行。</p><p><br/></p><p>二、索引优缺点：<br/>优点：</p><p>　　1、所有的MySql列类型(字段类型)都可以被索引，也就是可以给任意字段设置索引。</p><p>　　2、大大加快数据的查询速度。</p><p>缺点：</p><p>　　1、创建索引和维护索引要耗费时间，并且随着数据量的增加所耗费的时间也会增加。</p><p>　　2、索引也需要占空间，我们知道数据表中的数据也会有最大上线设置的，如果我们有大量的索引，索引文件可能会比数据文件更快达到上线值。</p><p>　　3、当对表中的数据进行增加、删除、修改时，索引也需要动态的维护，降低了数据的维护速度。</p><p>使用原则：</p><p>　　通过上面说的优点和缺点，我们应该可以知道，并不是每个字段都设置为索引好，也不是索引越多越好，而是需要自己合理的使用。</p><p>　　1、对经常更新的表就避免对其设置过多的索引，对经常用于查询的字段应该创建索引。</p><p>　　2、数据量小的表最好不要使用索引，因为由于数据较少，可能查询全部数据花费的时间比遍历索引的时间还要短，索引就可能不会产生优化效果。</p><p>　　3、在一个列上(字段上)不同值较少的不要建立索引，比如在学生表的&quot;性别&quot;字段上只有男，女两个不同值。相反的，在一个字段上不同值较多的可是建立索引。</p><p>　　以上简单的说下索引的优缺点，在以后的使用中再慢慢总结。</p><p>三、索引的分类<br/>索引是在存储引擎中实现的，也就是说不同的存储引擎，会使用不同的索引：</p><p>　　MyISAM和InnoDB存储引擎：只支持BTREE索引， 也就是说默认使用BTREE，不能够更换。（但是innoDB存储引擎支持hash索引是自适应的，innoDB存储引擎会根据表的使用情况自动为表生成hash索引，不能人为干预是否在一张表中生成hash索引。后续再整理）</p><p>　　MEMORY/HEAP存储引擎：支持HASH和BTREE索引。</p><p>存储引擎的类型及特点：</p><p>引擎名称</p><p>优点</p><p>缺陷</p><p>应用场景</p><p>MyISAM</p><p>独立于操作系统，这说明可以轻松地将其从Windows服务器移植到Linux服务器</p><p>不支持事务/行级锁/外键约束</p><p>适合管理邮件或Web服务器日志数据</p><p>InnoDB</p><p>健壮的事务型存储引擎；支持事务/行级锁/外键约束自动灾难恢复/AUTO_INCREMENT</p><p>　</p><p>需要事务支持，并且有较高的并发读取频率</p><p>MEMORY</p><p>为得到最快的响应时间，采用的逻辑存储介质是系统内存</p><p>当mysqld守护进程崩溃时，所有的Memory数据都会丢失；不能使用BLOB和TEXT这样的长度可变的数据类型</p><p>临时表</p><p>MERGE</p><p>是MyISAM类型的一种变种。合并表是将几个相同的MyISAM表合并为一个虚表</p><p>　</p><p>常应用于日志和数据仓库</p><p>ARCHIVE</p><p>归档的意思，支持索引，拥有很好的压缩机制</p><p>仅支持插入和查询功能</p><p>经常被用来当做仓库使用</p><p>索引我们分为四类：单列索引(普通索引，唯一索引，主键索引)、组合索引、全文索引、空间索引。</p><p>单列索引：一个索引只包含单个列，但一个表中可以有多个单列索引。 这里不要搞混淆了。<br/>　　　　1、普通索引：MySQL中基本索引类型，没有什么限制，允许在定义索引的列中插入重复值和空值，纯粹为了查询数据更快一点。</p><p>　　　　2、唯一索引：索引列中的值必须是唯一的，但是允许为空值，</p><p>　　　　3、主键索引：是一种特殊的唯一索引，不允许有空值。</p><p>组合索引：一个的索引包含多个列，只有在查询条件中使用了这些字段的左边字段时，索引才会被使用，使用组合索引时遵循最左前缀。会在后面的例子细说。<br/>全文索引：要求只有在MyISAM引擎上才能使用，只能在CHAR、VARCHAR、TEXT类型字段上使用全文索引。就是在一堆文字中，通过其中的某个关键字等，就能找到该字段所属的记录行，比如有&quot;你是个大煞笔，二货 ...&quot; 通过大煞笔，可能就可以找到该条记录。这里说的是可能，因为全文索引的使用涉及了很多细节。具体文章<br/>空间索引：空间索引是对空间数据类型的字段建立的索引，MySQL中的空间数据类型有四种，GEOMETRY、POINT、LINESTRING、POLYGON。</p><p><br/></p>', '', '', '', 0, 316, 1627484338, 0),
	(35, '3b44120d298ca78c', 13, '', '', '', 0, '广告-轮播标签', '', NULL, '<p style="box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 2; padding: 0px; color: rgb(82, 82, 82); font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);">输出分组广告图片轮播：</p><hr/><pre>{RmTop:Carousel&nbsp;group_id=&quot;16&quot;&nbsp;&nbsp;&nbsp;&nbsp;name=&quot;vo&quot;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;{$vo.org_img}{$vo.title}{$vo.url}\r\n&nbsp;&nbsp;&nbsp;\r\n{/RmTop:Carousel&nbsp;}</pre><p><br/></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">参数： group_id ： 分组ID信息</span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><br/></span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"></span></p><hr/><p style="box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 2; padding: 0px; color: rgb(82, 82, 82); font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);">输出单条广告信息内容</p><pre style="box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; font-size: 15px; margin-top: 14px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(247, 247, 247); border: 0px; border-radius: 3px; color: rgb(82, 82, 82);">{RmTop:AdInfo&nbsp;&nbsp;id&nbsp;=&nbsp;&quot;20&quot;&nbsp;TopKey=&quot;url&quot;}参数&nbsp;：\r\n\r\nid：&nbsp;广告信息ID&nbsp;\r\n\r\nTopKey&nbsp;：&nbsp;要输出信息的键值&nbsp;&nbsp;可选值&nbsp;url&nbsp;|&nbsp;&nbsp;titleo&nbsp;&nbsp;|&nbsp;rg_img</pre><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"></span><br/></p><p><br/></p><p><img src="/images//rTop_b7f5aa43df9cb26ad015e59e3622c6db.png"/></p>', '', '', '', 0, 263, 1627490862, 0),
	(36, 'd8d9c997f9b5b6a5', 13, '', '', '', 0, '获取系统基础信息标签', '/images//rTop_299dc44d7ee1f0ca283b1d1ef00f01d2.png', NULL, '<p><br/></p><p><br/></p><p style="text-align: left;">&nbsp;{RmTop:TopInfo TopKey=&quot;key值&quot; /} 输出后台设置的对应值</p><p><br/></p><h4 style="text-align: left;">示例：获取网站标题：</h4><pre style="text-align: left;">{RmTop:TopInfo&nbsp;&nbsp;TopKey=&quot;web_title&quot;&nbsp;/}</pre><p><br/></p><h4 style="text-align: left;">示例：获取网站seo 信息：</h4><p><br/></p><pre style="text-align: left;">{RmTop:TopInfo&nbsp;&nbsp;TopKey=&quot;web_desc&quot;&nbsp;/}</pre><p><br/></p><p style="text-align: left;"><img src="/images//rTop_299dc44d7ee1f0ca283b1d1ef00f01d2.png"/></p><p><br/></p>', '', '', '', 0, 266, 1627491030, 0),
	(37, 'b0a5f90ae2eca0c6', 9, 'RmTop-CMS 服务器配置推荐以及系统运行环境', 'RmTop-CMS 服务器配置推荐', 'RmTop-CMS 服务器配置推荐以及系统运行环境', 0, 'RmTop-CMS 服务器配置选用以及系统运行环境', '/images//rTop_574025f427606c3d965735e23f5ef2ad.webp', NULL, '<p><br/></p><p><br/></p><p><span style="font-size: 20px;"><strong>RmTop-CMS 系统运行环境</strong></span><strong><br/></strong></p><p><br/></p><hr/><p><br/></p><p><span style="font-size: 18px;">操作系统 ：Linux /Windows/MAC 推荐使用Linux</span></p><p><br/></p><p><span style="font-size: 18px;">运行环境 ：php7.4 及以上</span></p><p><br/></p><p><span style="font-size: 18px;">数据环境：&nbsp; Mysql 5.6及以上</span></p><p><br/></p><p><br/></p><hr/><p><br/></p><p><br/></p><p><span style="font-size: 20px;"><strong>RmTop-CMS 服务器配置推荐</strong></span></p><p><br/></p><p><span style="font-size: 18px;">CPU : 1核及以上&nbsp;</span></p><p><br/></p><p><span style="font-size: 18px;">内存 ：1GB及以上</span></p><p><br/></p><p><span style="font-size: 18px;">硬盘空间 ：200M及以上</span><br/></p><p><br/></p><p><br/></p><hr/><p><br/></p><p><br/></p><p><img src="/images//rTop_6394f315d3a03ce88bd9837c06c0806d.png"/></p><p><br/></p><p><br/></p><hr/><p><br/></p><p><br/></p><p><span style="font-size: 20px;"><strong>腾讯云轻服务器：&nbsp;</strong></span></p><p><span style="font-size: 20px;"><br/></span></p><p><span style="font-size: 20px;"><br/></span></p><p style="text-align: center;"><span style="font-size: 20px;"><strong><a href="https://curl.qcloud.com/VvUiJ9WL" target="_blank" style="text-decoration: underline; font-size: 24px; color: rgb(0, 112, 192);"><span style="font-size: 24px; color: #0070C0;"><strong style="white-space: normal;">点此进入腾讯云官网领取福利</strong></span></a></strong></span></p><p><span style="font-size: 20px;"><br/></span></p><p><br/></p><p><br/></p><p><br/></p><p><a href="https://cloud.tencent.com/act/cps/redirect?redirect=1079&cps_key=04422e0c78bc6909df3ca1b7fc53839d&from=console" target="_blank"><span style="color: #0070C0;">【腾讯云】轻量应用服务器Lighthouse，新朋友「轻」松上云，老朋友免费加「量」，1核2G5M限时低至99元/年起</span></a></p><p><br/></p><p><br/></p><p><br/></p><p><span style="font-size: 20px;"><strong><a href="http://【腾讯云】轻量应用服务器Lighthouse，新朋友「轻」松上云，老朋友免费加「量」，1核2G5M限时低至99元/年起 https://cloud.tencent.com/act/cps/redirect?redirect=1079&cps_key=04422e0c78bc6909df3ca1b7fc53839d&from=console" target="_blank"><strong style="white-space: normal;"><span style="font-size: 20px;"></span></strong></a></strong></span><a href="https://curl.qcloud.com/VvUiJ9WL" target="_blank"><img src="/images//rTop_b3845eb30a15970c26ac4764b5078a21.jpg"/></a></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><hr/><p><br/></p><p><strong><span style="font-size: 20px;">阿里云ECS服务器：&nbsp;</span></strong></p><p><span style="color: #0070C0;"><strong><br/></strong></span></p><p style="text-align: center;"><span style="color: #0070C0;"><strong><br/></strong></span></p><p style="text-align: center;"><span style="color: #0070C0;"><strong><span style="font-size: 20px;"><a href="https://www.aliyun.com/product/ecs?source=5176.11533457&userCode=507hdqbv" target="_blank"><span style="font-size: 24px; color: #0070C0;">点此进入阿里云官网领取福利</span></a></span></strong></span></p><p><span style="color: #0070C0;"></span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><a href="https://www.aliyun.com/product/ecs?source=5176.11533457&userCode=507hdqbv" target="_blank"><img src="/images//rTop_78931986c95a53b104df17d6334fe855.png"/></a></p>', '', '', '', 0, 314, 1627541513, 0),
	(38, 'e2677156da8c33a6', 3, '', '', '', 0, 'RmTop-CMS 关于企业官网制作', '/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png', NULL, '<p><strong>产品/服务展示</strong></p><p><br/></p><p>公司网站建设的一个最基本的功能，就是能够全面且详细地介绍公司及公司的产品。事实上，公司可以把任何想让大家知道的内容放入网址。比如公司简介、公司的厂房、研究机构、生产设施、产品的外观、功能及其使用方法等等，都可以展示于网上。</p><p><br/></p><p><br/></p><p><br/></p><p><strong>有利于提升企业形象</strong></p><p><br/></p><p>&nbsp; &nbsp; 公司网址的一个最基本的功能，就是能够全面、详细地介绍公司及公司产品。事实上，公司可以把任何想让人们知道的东西放入网址，如公司简介、公司的厂房、生产设施、研究机构、产品的外观、功能及其使用方法等，都可以展示于网上。公司网址的一个最基本的功能，就是能够全面、详细地介绍公司及公司产品。事实上，公司可以把任何想让人们知道的东西放入网址，如公司简介、公司的厂房、生产设施、研究机构、产品的外观、功能及其使用方法等，都可以展示于网上。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><strong>对于企业来说这是一个去传递自身企业或品牌文化的一个非常好的渠道</strong></p><p><br/></p><p>放在以前没有“互联网”的时候，很多企业都要通过很多“纸媒”或大量的线下活动，或者长时间的口碑沉底，才会让用户或一些潜在用户半知半解的了解到这个企业或品牌。</p><p><br/></p><p><br/></p><p><br/></p><p><strong>让成交更简单</strong></p><p><br/></p><p>　　一个专业的网站，不仅是一个营销型的网站，还是一个展示型网站，网站整个页面会把客户的疑惑，公司实力如何，做的效果怎么样，如何收费等客户常见咨询会问到的问题都一一展现给客户。这样再咨询的客户就是意向较大的客户，同时也减少了沟通时间的成本，让成交变得更加简单。<br/></p><p><br/></p><p><br/></p>', '', '', '', 0, 286, 1627651303, 0),
	(39, '1d6143eb73368b28', 3, '', '', 'RmTop-CMS 重构参数模型 实现系统参数模块化、统一化', 0, 'RmTop-CMS 重构参数模型 实现系统参数模块化、统一化', '/images//rTop_fe205a332d67ac696085aef58e56a2a7.png', NULL, '<p><br/></p><p>==== 2021-07-31</p><p><br/></p><p>对单页模型、产品模型自定义参数进行调整&nbsp;</p><p><br/></p><p>去除独立的参数模型设定 ，统一封装系统params参数&nbsp;</p><p><br/></p><p>实现一对多的模型参数结构 ，删除冗余复杂的逻辑结构&nbsp;&nbsp;</p><p><br/></p><p>提升系统性能，优化参数步骤，提高后续可维护程度</p><p><br/></p><p>统一参数可应用到任何模块上，实现多变的参数服务模型&nbsp;</p><p><br/></p><p>为系统提供更强劲的动力</p><p><br/></p><p><br/></p>', '', '', '', 0, 302, 1627722075, 0),
	(40, '97e105c1c40ab41e', 9, '', '', '', 0, 'RmTop-CMS 如何引用上传的静态文件', '/images//rTop_d7eee508aa620d6ad0d534e55a5139a9.png', NULL, '<p><br/></p><p>1、登录后台，找到静态资源目录 , 然后找到对应的文件列表<br/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_1eb117811bd7127a764ef2c5f2f3babb.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>2、点击预览文件 , 可看到关于静态资源的复制按钮 ，复制对应的资源按钮，放到对应的页面上，</p><p><br/></p><p>&nbsp; &nbsp; 即可正常引入静态资源数据。</p><p><br/></p><p><br/></p><p><br/></p><p>&nbsp; &nbsp;<img src="/images//rTop_d7eee508aa620d6ad0d534e55a5139a9.png"/></p><p><br/></p><p><br/></p>', '', '', '', 0, 256, 1627976223, 0),
	(41, '8c663260a92bad26', 9, '', '', '', 0, 'RmTop-CMS的切换系统模板的方法', '/images//rTop_fd70ebdabd380a1731c6d3dd03152e07.png', NULL, '<p><br/></p><p><strong><span style="font-size: 20px;">&nbsp; &nbsp; 切换系统RmTop-CMS的系统模板的方法</span></strong></p><p><br/></p><p><br/></p><p><strong>&nbsp; &nbsp; 登陆系统后台，找到系统配置栏目&nbsp; , 同时找到运行配置&nbsp;</strong></p><p><br/></p><p>&nbsp; &nbsp;<img src="/images//rTop_1bd45186c7be273e56cda8603df5beb4.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><strong>&nbsp; &nbsp;选择对应模板，然后保存配置</strong></p><p><br/></p><p><br/></p><p>&nbsp; &nbsp;<img src="/images//rTop_fd70ebdabd380a1731c6d3dd03152e07.png"/></p><p><br/></p><p>&nbsp; &nbsp;</p>', '', '', '', 0, 268, 1627976776, 0),
	(42, '727a9336b1f57434', 11, '', '', '', 0, 'RmTop-CMS 产品模型添加公共的参数表单数据', '', NULL, '<p>RmTop-CMS 产品模型添加公共的参数表单数据</p><p><br/></p><p><span style="font-size: 18px;"><strong>首页创建关联产品模型的栏目 ，然后打开内容侧的自定义参数管理，</strong></span></p><p><br/></p><p><span style="font-size: 18px;"><strong>添加相关参数：</strong></span></p><p><br/></p><p><img src="/images//rTop_290cedaa1bd6de2916a3fb747a9eb737.png"/></p><p><br/></p><p><span style="font-size: 18px;"><strong>参数添加完毕后，进入创建内容页面 即可正常使用参数表单：</strong></span></p><p><br/></p><p><img src="/images//rTop_62f65084d72c0ffde8901d3b17992e4d.png"/></p>', '', '', '', 0, 274, 1627977307, 0),
	(43, '3544370eb635220e', 10, '', '', '', 0, '服务营销型网站设计开发', '', NULL, '', '', '', '', 0, 255, 1628003552, 0),
	(44, '8acba60c38aa58be', 9, '', '', '', 0, 'RmTop-CMS 仓库地址', '', NULL, '<p><br/></p><p><span style="font-size: 20px;">码云:</span></p><p><span style="font-size: 20px;"><br/></span></p><p>git@gitee.com:RmTop/RmTop-CMS.git</p><p><br/></p><p><br/></p>', '', '', '', 0, 252, 1628004127, 0),
	(45, '04ceacd00f354b28', 10, '', '', '', 0, '产品型展示网站设计', '', NULL, '<p>产品型展示网站设计</p>', '', '', '', 0, 270, 1628004476, 0),
	(46, 'cd903bf97d676494', 13, '', '', '', 0, 'RmTop-CMS 备份模板的方式', '/images//rTop_ffc683cb3e87f20eb65730de6c793237.png', NULL, '<p><br/></p><p><strong>1、后入配置中心 ，开启系统 &quot;开发者模式&quot;</strong></p><p><br/></p><p>&nbsp;&nbsp;<img src="/images//rTop_ffc683cb3e87f20eb65730de6c793237.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><strong>2 、开发者模式启动后，管理端会出现 &quot;开发者的菜单&quot; , 即可对模板进行备份和操作</strong></p><p><br/></p><p>&nbsp;<img src="/images//rTop_7ce46c30ffff6556e37d9f32d409fa00.png"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '', '', 0, 276, 1628646952, 0),
	(47, '3eb9d9fd26e8794d', 13, '', '', '', 0, 'RmTop-CMS 安装新的模版', '/images//rTop_3cc6b7dc9decaab3f4ece6c3ed0d16f5.png', NULL, '<p><br/></p><p>1、 进入系统后台，打开开发者模式 ， 进入开发者中心&nbsp;</p><p><br/></p><p><br/></p><p><img src="/images//rTop_3cc6b7dc9decaab3f4ece6c3ed0d16f5.png"/></p><p><br/></p><p><br/></p><p>2、选择要导入的模版压缩文件&nbsp;</p><p><br/></p><p><br/></p><p><br/></p><p>3、选中上传后，提交保存模版即可，然后进入模版配置中心，</p><p><br/></p><p>切换为上传的新模版，即可正常使用当前模版。</p><p><br/></p><p><img src="/images//rTop_8ac8db82a657f3d278180c30078a8fc9.png"/></p><p><br/></p><p><br/></p>', '', '', '', 0, 208, 1629008090, 0),
	(48, '11ed46019e652e88', 13, '', '', '', 0, 'RmTop-CMS 菜单模型标签', '', NULL, '<p style="box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 2; padding: 0px; color: rgb(82, 82, 82); font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);">获取导航父级列表标签:</p><p><br/></p><p style="box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 2; padding: 0px; color: rgb(82, 82, 82); font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);">示例：</p><pre>{RmTop:MenuList&nbsp;group_id=&quot;2&quot;&nbsp;&nbsp;limit&nbsp;=&quot;8&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name=&quot;vo&quot;&nbsp;}\r\n&lt;li&nbsp;&nbsp;{if&nbsp;$vo.column_id&nbsp;==&nbsp;$CurrentColumnId}&nbsp;class=&quot;current&quot;&nbsp;{/if}&nbsp;&nbsp;&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;a&nbsp;href=&quot;{$vo.url}&quot;&gt;{$vo.title}&lt;/a&gt;//判断是否存在子菜单&nbsp;{if&nbsp;$vo.childNum&nbsp;!=&nbsp;0}&nbsp;//输出子导航栏目\r\n&nbsp;&nbsp;{RmTop:ChildMenuList&nbsp;pid=&quot;$vo[&#39;id&#39;]&quot;&nbsp;&nbsp;limit&nbsp;=&quot;8&quot;&nbsp;&nbsp;name=&quot;vo_child&quot;&nbsp;}\r\n\r\n&nbsp;&lt;li&nbsp;&nbsp;{if&nbsp;$vo_child.column_id&nbsp;==&nbsp;$CurrentColumnId}&nbsp;class=&quot;current&quot;&nbsp;{/if}&nbsp;&nbsp;&gt;&lt;a&nbsp;href=&quot;{$vo_child.url}&quot;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$vo_child.title}&lt;/a&gt;&lt;/li&gt;{/if}\r\n\r\n&nbsp;&nbsp;{/RmTop:ChildMenuList}&lt;/li&gt;{/RmTop:MenuList}</pre><p><br/></p><p><br/></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">注释：</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">name ： 输出标签 vo</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">group_id : 后台分组 ID || 必填</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">limit : 输出条数 || 默认 8</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">orderBy ： 默认排序规范 &quot;sort asc&quot;</span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><br/></span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><br/></span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><br/></span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">获取导航子级别菜单</span></span></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><br/></span></span></p><p></p><pre>{RmTop:ChildMenuList&nbsp;pid=&quot;2&quot;&nbsp;&nbsp;limit&nbsp;=&quot;8&quot;&nbsp;&nbsp;name=&quot;vo_child&quot;&nbsp;}\r\n&lt;li&nbsp;&nbsp;{if&nbsp;$vo_child.column_id&nbsp;==&nbsp;$CurrentColumnId}&nbsp;class=&quot;current&quot;&nbsp;{/if}&nbsp;&nbsp;&gt;\r\n&lt;a&nbsp;href=&quot;{$vo_child.url}&quot;&gt;{$vo_child.title}&lt;/a&gt;\r\n&lt;/li&gt;\r\n{/RmTop:ChildMenuList}</pre><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;"></span></span><br/></p><p><br/></p><p><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">注释：</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">name ： 输出标签 vo</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">pid : 父级ID || 必填</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">limit : 输出条数 || 默认 8</span><br/><span style="color: #525252; font-family: &quot;Helvetica Neue&quot;, NotoSansHans-Regular, AvenirNext-Regular, arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, &quot;WenQuanYi Micro Hei&quot;, serif; font-size: 15px; background-color: #FFFFFF;">orderBy ： 默认排序规范 &quot;sort asc&quot;</span></p><p><br/></p><p><br/></p><pre>设置当前选中的样式：\r\n\r\n&nbsp;class=&quot;current&quot;&nbsp;&nbsp;&nbsp;class&nbsp;可以根据需求的样式修改\r\n&nbsp;\r\n&nbsp;{if&nbsp;$vo.column_id&nbsp;==&nbsp;$CurrentColumnId}&nbsp;class=&quot;current&quot;&nbsp;{/if}</pre><p><br/></p>', '', '', '', 0, 203, 1629339109, 0),
	(49, '41b9ad918785bc8b', 3, 'RmTop-CMS 优化模板导出以及安装功能', 'RmTop-CMS 优化模板导出以及安装功能', 'RmTop-CMS 优化模板导出以及安装功能\r\n\r\n', 0, 'RmTop-CMS 优化模板导出以及安装功能', '/images//rTop_9b61d116fbb2649d809c8ee16aa6e78e.png', NULL, '<p>---- 2021-08-09&nbsp;</p><p><br/></p><p><br/></p><p>RmTop-CMS 优化模板导出以及安装功能</p><p><br/></p><p>优化导出数据格式</p><p><br/></p><p>修复模板导入数据处理bug&nbsp;</p><p><br/></p><p>对导出模板增加压缩功能，自动下载备份</p><p><br/></p><p>增加模板安装，自助上传模板文件 ，进行安装</p><p><br/></p><hr/><p><br/></p>', '', '', '', 0, 246, 1629339753, 0),
	(50, 'db85c2b7a1db1ce0', 16, '开启运行模式，更安全', '开启运行模式，更安全', '开启运行模式，更安全', 0, 'RmTop-CMS系统  正式上线运行时，开启运行模式，更安全', '', NULL, '<p><br/></p><p><br/></p><p>RmTop-CMS 正式上线运行时，开启运行模式，更安全。</p><p><br/></p><p><br/></p><p><br/></p><p><img src="/images//rTop_b4c8bd2e585d808c600283b4ca8c556d.png"/></p><p><br/></p><p><br/></p><p>开启开发者模式，可以对系统进行调试。</p><p><br/></p><p>开启运行模式，系统将运行严格安全模式。</p><p><br/></p><p>为确保线上安全运行，网站上线后请开启运行模式。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '', '', 0, 226, 1629340889, 0);
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

-- 正在导出表  rmtop.rtop_extends_params 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_params` (`id`, `cid`, `sid`, `type`, `key`, `title`) VALUES
	(1, 1, 1, 'text', 'verison', '版本号'),
	(7, 2, 2, 'text', 'free_price', '免费价格'),
	(8, 2, 2, 'text', 'base_price', '基础版价格'),
	(9, 2, 2, 'text', 'specialty_price', '专业版价格'),
	(11, 2, 2, 'text', 'page_title', '页面标题'),
	(12, 1, 1, 'text', 'copyright', '著作权'),
	(13, 1, 1, 'file', 'weixinewm', '微信公众号'),
	(14, 1, 1, 'file', 'kefu_weixin', '客服微信'),
	(16, 4, 4, 'text', 'wdtitle', '文档标题'),
	(17, 4, 4, 'textarea', 'wddes', '文档描述'),
	(18, 1, 1, 'text', 'title_key', '标题关键词'),
	(19, 1, 1, 'textarea', 'title_des', '服务简述'),
	(20, 1, 1, 'text', 'sys_update', '更新信息(输入更新信息ID)'),
	(21, 1, 1, 'text', 'free_down', '免费下载地址'),
	(22, 8, 8, 'file', 'our_map', '地图信息'),
	(31, 2, 2, 'text', 'auth_price', '系统授权价格'),
	(40, 17, 0, 'text', 'free_price', '价格'),
	(41, 17, 0, 'text', 'author', '作者'),
	(42, 17, 0, 'text', 'versions', '版本'),
	(43, 17, 0, 'file', 'author_img', '作者头像');
/*!40000 ALTER TABLE `rtop_extends_params` ENABLE KEYS */;

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
  `org_img` varchar(80) DEFAULT NULL,
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


-- 导出  表 rmtop.rtop_extends_product_17_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_product_17_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  `free_price` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `versions` varchar(200) NOT NULL,
  `author_img` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


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

-- 正在导出表  rmtop.rtop_extends_single 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single` DISABLE KEYS */;
INSERT INTO `rtop_extends_single` (`id`, `uqid`, `seo_title`, `seo_key`, `seo_des`, `title`, `img_lists`, `text`, `view_path`, `views`, `create_time`, `doc_type`, `col_id`, `author`, `access`, `tags`) VALUES
	(1, '0', 'RmTop-CMS ', 'RmTop-CMS ', 'RmTop-CMS ', '', '', '<p>演示数据演示数据演示数据演示数据演示数据演示数据演示数据演示数据</p>', '0', 838, '', '', 1, '', 0, 'RmTop-CMS '),
	(2, '0', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '服务内容', '', '', '', '0', 169, '1623312766', '', 2, '', 0, 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|'),
	(3, '0', 'RmTop-CMS 文档中心', 'RmTop-CMS文档中心|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', 'RmTop-CMS文档中心|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '1', '1', '演示数据演示数据演示数据演示数据演示数据演示数据演示数据演示数据', '0', 63, '1625456614', '', 4, '', 0, 'RmTop-CMS 文档中心'),
	(8, '0', 'RmTop-CMS ', 'RmTop-CMS ', '关于我们简介', '', '', '<p style="margin: 0px auto 10px; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;入目三分科技是一家拥有自主开发、研发能力的软件公司，2017年成立于昆明，秉承开源是基础软件的未来这一理念，入目三分科技持续扩大影响力，专注于内容管理系统的研发及开源生态建设。</span></p><p style="margin: 0px auto 10px; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;RmTop-CMS 内容管理系统，是理想的大规模站群和内容管理解决方案，目前，已被应用在多家企业的实际生产环境中，涉及教育、互联网、政府、银行、航空、医疗、保险、证券、制造业等多个行业。</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;与时俱进，做好用的系统！</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;"><br/></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;"><br/></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: center; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;"><img src="https://www.rmsf.top/images//rTop_9b61d116fbb2649d809c8ee16aa6e78e.png" style="margin: 5px auto; padding: 0px; box-sizing: border-box; border: medium none; vertical-align: middle; width: auto;" class="loadingclass"/></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: center; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;"><br/></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: center; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;"><br/></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: center; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; font-size: 16px;"><br/></span></p><p><br/></p>', '', 126, '1625487341', '', 8, '', 0, 'RmTop-CMS '),
	(9, '05227fb5f579b171', 'RmTop-CMS ', 'RmTop-CMS ', '真诚合作，互利互赢', '', '', '<p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;1、战略合作</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;企业合作 ，第三方服务定制</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">2、推广达人</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">3、官网定制</p><p><br/></p>', '', 103, '1626748570', '', 19, '', 0, 'RmTop-CMS '),
	(11, '1ec5d1cd21c9c758', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '服务内容', '', '', '<h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">软件安装服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：提供rmTopCMS——轻便、多变的CMS服务系统标准安装问题解答以及远程协助安装服务。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">200元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"></span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">软件升级服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：提供rmTopCMS——轻便、多变的CMS服务系统软件升级问题解答及远程安装协助，保障整个过程的快速、稳定。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">500元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">服务器环境检测和配置</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：检测服务器环境导致的程序无法正常使用的问题，对服务器基本配置进行调整，保证服务器正常运转不再出现当前问题。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">300元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">数据库修复服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：标准程序自身原因造成的数据表损坏。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">800元/100M/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">数据库校验、优化服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：一次性服务，校验数据结构是否标准，并进行修复、优化。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">600元/100M/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">软件所需环境安装</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：提供Linux/FreeBSD/Windows操作系统上安装PHP、MySQL、Zend Optimizer和Web服务器软件（比如apache、iis）服务，支持rmTopCMS——轻便、多变的CMS服务系统 系统运行所需环境。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">1200元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">网站迁移服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：远程协助用户将rmTopCMS——轻便、多变的CMS服务系统从A服务器上安全迁移到B服务器。（B服务器须具备软件使用所需环境） 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">1200元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">数据库安全备份</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：一次性服务，提供安全完备的 MySQL 无人值守自动备份，并且为网站数据进行每日自动增量备份，最大限度地保障数据和文件资料的安全。 价格：<span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;">2000元/次</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; line-height: 25px; color: #FF0000;"><br/></span></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; color: rgb(16, 132, 224); font-weight: bolder !important;">网站安全修复</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;">描述：网站页面或者程序被恶意篡改，需要对网站程序进行修复，目录安全进行配置（如果需要设定网站或者程序仅供二次开发费用需要另外</p><p><br/></p>', '', 199, '1626752083', '', 21, '', 0, 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|'),
	(12, 'ff325a448e1ec29f', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '服务内容', '', '', '<ul class=" list-paddingleft-2" style="list-style-type: none;"><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">模板购买流程</h1></li><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">1、在模板库寻找自己喜欢的模板</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">在模板库寻找自己喜欢的模板</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;"><br/></p></li><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">2、查看详情及设有的功能及服务</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">查看详情及设有的功能及服务</p></li></ul><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><br/></p><ul class=" list-paddingleft-2" style="list-style-type: none;"><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">3、下单购买</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">下单购买</p></li></ul><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><br/></p><ul class=" list-paddingleft-2" style="list-style-type: none;"><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">4、安装模板</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">安装模板</p></li></ul><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><br/></p><ul class=" list-paddingleft-2" style="list-style-type: none;"><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">5、对接数据</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">对接数据</p></li></ul><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal;"><br/></p><ul class=" list-paddingleft-2" style="list-style-type: none;"><li><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; text-align: left; font-size: 13px; font-weight: bolder !important; line-height: 20px; color: rgb(16, 132, 224);">6、测试系统及交付</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-align: left; overflow-wrap: break-word; line-height: 25px;">测试系统及交付</p></li></ul><p><br/></p>', '', 177, '1626752212', '', 22, '', 0, 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|'),
	(13, 'b99607ea52b75b88', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '服务内容', '', '', '<h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">鉴于每个站点需要不同的个性化界面，rmTopCMS——轻便、多变的CMS服务系统 提供在本系统的网站定制服务，有定制需求的客户，欢迎联系定制。</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">定制流程</h1><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">1、客户提出需求</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">客户通过电子邮件、电话、即时通讯工具等方式向公司提出网站建设的基本需求，包括：网站风格、项目说明、网站基本功能需求、设计基本要求等，并提供详细的网站定制需求书。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">2、提供方案及报价</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">公司根据提供用户提供的网站定制需求书，报价供客户参考。经双方交流与磋商，确定具体网站建设方案及费用。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">3、签订网站定制协议，客户支付款项</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">双方签订《网站定制协议》，客户支付款项。客户通过电子邮件、电话、微信、QQ聊天等方式提供网站建设相关的内容资料，包括文字及图片等（文字：文本文档或Word文档；图片：jpg格式）。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">4、网站的审核与确认</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">根据网站建设方案提供网站设计初稿，包括首页、栏目页等页面网站的设计。设计初稿经客户修订、审核后，确认整体网站风格及色调，转换成客户认可的设计正式稿。每一个设计正式稿均由客户确认无误后，再进行输出设计正式稿的网站输出工作。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">5、网站测试，客户上网验收</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">所有网站网站文件上传至公司测试服务器，客户上网浏览并验收。验收项目包括：页面效果是否真实还原设定稿、各链接是否准确有效、文字内容是否正确（以客户提供的电子文档为准）、功能模块运行是否正常。验收合格后，客户签发《网站验收合格书》。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><h1 style="margin: 0px auto; padding: 0px 0px 8px; box-sizing: border-box; font-size: 13px; line-height: 20px; color: rgb(16, 132, 224); font-weight: bolder !important;">6、网站建设过程结束</h1><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;">客户签发《网站验收合格书》后，将所有网站文件递交客户；或应客户要求，将网站直接上传至客户服务器上。至此，网站建设过程全部结束。客户如需公司为其进行网站建设后的日常更新和维护工作，需另外与公司签订《网站更新维护协议》。</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 25px;"><br/></p><p><br/></p>', '', 146, '1626752263', '', 23, '', 0, 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|');
/*!40000 ALTER TABLE `rtop_extends_single` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_19_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_19_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_19_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_19_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_19_params` (`id`, `sid`) VALUES
	(1, 9);
/*!40000 ALTER TABLE `rtop_extends_single_19_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_1_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_1_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  `verison` varchar(200) NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `weixinewm` varchar(180) NOT NULL,
  `kefu_weixin` varchar(180) NOT NULL,
  `title_key` varchar(200) NOT NULL,
  `title_des` text,
  `sys_update` varchar(200) NOT NULL,
  `free_down` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_1_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_1_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_1_params` (`id`, `sid`, `verison`, `copyright`, `weixinewm`, `kefu_weixin`, `title_key`, `title_des`, `sys_update`, `free_down`) VALUES
	(1, 1, 'rmTop 1.2.0 ', '152463aas', '/images//rTop_ccaae79ea33783170ff917d66993ce8d.png', '/images//rTop_05cdc42fb1ff37337a89739aeb4f3112.png', '开源', 'RmTop-CMS是入目三分科技有限公司开发的免费+开源的企业内容管理系统，专注企业建站用户需求\r\n<br>\r\n提供海量各行业模板，降低中小企业网站建设、网络营销成本，致力于打造用户舒适的建站体验', '1', 'https://gitee.com/RmTop/RmTop-CMS');
/*!40000 ALTER TABLE `rtop_extends_single_1_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_21_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_21_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_21_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_21_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_21_params` (`id`, `sid`) VALUES
	(1, 11);
/*!40000 ALTER TABLE `rtop_extends_single_21_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_22_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_22_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_22_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_22_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_22_params` (`id`, `sid`) VALUES
	(1, 12);
/*!40000 ALTER TABLE `rtop_extends_single_22_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_23_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_23_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_23_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_23_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_23_params` (`id`, `sid`) VALUES
	(1, 13);
/*!40000 ALTER TABLE `rtop_extends_single_23_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_2_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_2_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  `free_price` varchar(200) NOT NULL,
  `base_price` varchar(200) NOT NULL,
  `specialty_price` varchar(200) NOT NULL,
  `page_title` varchar(200) NOT NULL,
  `auth_price` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_2_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_2_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_2_params` (`id`, `sid`, `free_price`, `base_price`, `specialty_price`, `page_title`, `auth_price`) VALUES
	(1, 2, '0', '1800', '5888', '服务内容', '198');
/*!40000 ALTER TABLE `rtop_extends_single_2_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_8_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_8_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '信息id',
  `our_map` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single_8_params 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_8_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_8_params` (`id`, `sid`, `our_map`) VALUES
	(1, 8, '/images//rTop_877f0db798b5095b27b4703e86c2f35b.png');
/*!40000 ALTER TABLE `rtop_extends_single_8_params` ENABLE KEYS */;

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

-- 正在导出表  rmtop.rtop_information 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_information` DISABLE KEYS */;
INSERT INTO `rtop_information` (`id`, `uqid`, `col_id`, `seo_title`, `seo_key`, `seo_des`, `tag`, `view_path`, `create_time`, `delete_time`, `update_time`) VALUES
	(1, '0', 1, NULL, NULL, NULL, NULL, '0', 1578727662, 1578727679, 1578727679);
/*!40000 ALTER TABLE `rtop_information` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_migrations 结构
CREATE TABLE IF NOT EXISTS `rtop_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
INSERT INTO `rtop_navs` (`id`, `group_id`, `pid`, `title`, `url`, `click_times`, `target`, `create_time`, `update_time`, `delete_time`, `sort`, `status`, `nav_type`, `column_id`) VALUES
	(29, 7, 0, '首页', '', 0, '0', 1625455168, 1625455168, 0, 1, 0, 0, '1'),
	(30, 7, 0, '服务', '', 0, '1', 1625455329, 1625455329, 0, 2, 0, 0, '2'),
	(31, 7, 0, '动态', '', 0, '0', 1625455387, 1625455387, 0, 4, 0, 0, '3'),
	(32, 7, 0, '文档', '', 0, '0', 1625455445, 1625455445, 0, 5, 0, 0, '4'),
	(33, 7, 0, '案例', '', 0, '0', 1625455457, 1625455457, 0, 6, 0, 0, '5'),
	(35, 7, 0, '反馈', '', 0, '0', 1625455574, 1625455574, 0, 10, 0, 0, '7'),
	(36, 7, 0, '关于', '', 0, '0', 1625487359, 1625487359, 0, 11, 0, 0, '8'),
	(37, 8, 0, '新手指引', '', 0, '1', 1625811370, 1625811370, 0, 1, 0, 0, '9'),
	(38, 8, 0, '产品介绍', '', 0, '1', 1625811418, 1625811418, 0, 2, 0, 0, '10'),
	(39, 8, 0, '操作手册', '', 0, '1', 1625811442, 1625811442, 0, 3, 0, 0, '11'),
	(40, 8, 0, '模板知识', '', 0, '1', 1625811474, 1625811474, 0, 4, 0, 0, '13'),
	(41, 8, 0, 'SEO知识', '', 0, '1', 1625811516, 1625811516, 0, 6, 0, 0, '15'),
	(42, 8, 0, '安全中心', '', 0, '1', 1625813010, 1625813010, 0, 6, 0, 0, '16'),
	(43, 7, 0, '模板', '', 0, '0', 1625815594, 1625815594, 0, 3, 0, 0, '17'),
	(45, 2, 0, '合作', '', 0, '0', 1626748644, 1626748644, 0, 10, 0, 0, '19'),
	(46, 9, 0, '授权价格', '', 0, '0', 1626753479, 1626753479, 0, 1, 0, 0, '2'),
	(47, 9, 0, '服务价格', '', 0, '0', 1626753527, 1626753527, 0, 2, 0, 0, '21'),
	(48, 9, 0, '模板价格', '', 0, '0', 1626753546, 1626753546, 0, 3, 0, 0, '22'),
	(49, 9, 0, '网站定制', '', 0, '0', 1626753576, 1626753576, 0, 4, 0, 0, '23');
/*!40000 ALTER TABLE `rtop_navs` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_navs_category 结构
CREATE TABLE IF NOT EXISTS `rtop_navs_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL COMMENT '分组名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_navs_category 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `rtop_navs_category` DISABLE KEYS */;
INSERT INTO `rtop_navs_category` (`id`, `title`, `sort`, `create_time`) VALUES
	(2, '底部导航', 2, '1617549550'),
	(3, '侧导航栏', 3, '1617549564'),
	(4, '侧边导航', 4, '1617585437'),
	(6, '新闻中心', 5, '1624878826'),
	(7, '顶部导航', 1, '1625208782'),
	(8, '文档中心', 6, '1625811311'),
	(9, '购买中心', 9, '1626753409');
/*!40000 ALTER TABLE `rtop_navs_category` ENABLE KEYS */;

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

-- 正在导出表  rmtop.rtop_system_message 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_system_message` DISABLE KEYS */;
INSERT INTO `rtop_system_message` (`id`, `type`, `title`, `content`, `is_read`, `create_time`) VALUES
	(1, '系统提示', '0213', '12312', 1, '0');
/*!40000 ALTER TABLE `rtop_system_message` ENABLE KEYS */;

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



-- 导出  表 rmtop.rtop_sys_rule 结构
CREATE TABLE IF NOT EXISTS `rtop_sys_rule` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `flag` varchar(10) NOT NULL DEFAULT '' COMMENT '目录名称',
    `des` varchar(100) NOT NULL DEFAULT '' COMMENT '操作描述',
    `file_name` varchar(100) NOT NULL DEFAULT '' COMMENT '文件位置',
    `controller` varchar(50) NOT NULL DEFAULT '' COMMENT '控制',
    `action` varchar(50) NOT NULL DEFAULT '' COMMENT '方法',
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `rtop_sys_rule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
