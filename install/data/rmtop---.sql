
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
  `status` tinyint(4) DEFAULT NULL COMMENT '有效状态，1正常，0禁用',
  `group_id` int(11) DEFAULT NULL,
  `loginip` varchar(20) DEFAULT NULL,
  `logintime` int(11) DEFAULT NULL,
  `logintimes` int(11) DEFAULT '0' COMMENT '登陆次数',
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `lasttime` int(11) DEFAULT NULL COMMENT '所属用户组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员列表';

-- 正在导出表  rmtop.rtop_admin 的数据：20 rows
/*!40000 ALTER TABLE `rtop_admin` DISABLE KEYS */;
INSERT INTO `rtop_admin` (`id`, `username`, `password`, `mobile`, `email`, `status`, `group_id`, `loginip`, `logintime`, `logintimes`, `delete_time`, `create_time`, `lasttime`) VALUES
	(60, '18288269901', '$2y$10$ESfyGMKBOW.Kctc7nn39.eVY5cSM/JwIq4c2M96mVOuIeeiCCT8Vq', '18288269901', 'zhuok520@qq.com', 1, 1, NULL, NULL, 0, 0, 1617905314, NULL),
	(59, '630f3330', '$2y$10$B.n5nmWMVA9iezgYYtNcgea2jabPgvEMt7ha0r3z0IMxdSKbKKj1m', '630f3330', '630f3330', 1, 1, NULL, NULL, 0, 0, 1617891194, NULL),
	(62, '18288269901', '$2y$10$iuPpEwFLpfwvIVVhgV4rtuwhSKgNNcePwUJNB4yVA1IJ48TRGmINC', '18288269901', 'zhuok520@qq.com', 1, 1, NULL, NULL, 0, NULL, 1623980087, NULL),
	(63, '123', '$2y$10$SnxqZ.0HL4mWa2mLTKpHUO/gktpMcATMVzdnl/esyNNLW0sNXqiDO', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626489403, NULL),
	(64, '1231', '$2y$10$pCVkDlrdT/E0C0uD7Ks4.ejFG0LITPfHLWNMUCvJYaEAbsbPE9e3m', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626489827, NULL),
	(65, 'rmtop-test', '$2y$10$tEOBvofXlEZfwVNH5197te4DRb6g8dwB0FYleFiQXMjnKzSZ3Yp4.', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626489890, NULL),
	(66, 'admin', '$2y$10$HcN6XhJAngOro53obr8YXe7xgpUIkKXpSfYviJkQnHTCP8905TyNm', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490062, NULL),
	(67, 'rmtop-test', '$2y$10$k8llSNxYGYH1pqsxUys52uXqtYvZ0Z.iHOq90nEYF.0OrqDEQRE4K', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490168, NULL),
	(68, '1231', '$2y$10$K9dZ84Cd9I6dUnar2EFa4eH.RaMF5TGc39aFk11fuo1z/k0r9Qb7C', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490267, NULL),
	(69, 'rmtop-test', '$2y$10$M06n6YJAIAgw/9.tkcEYBOdJIXFQbuEO/DD1whu2tN6.RM0Vf.5Mm', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490295, NULL),
	(70, 'rmtop-test', '$2y$10$fqHr1/6Ni.GYuNK9LK57tOeugvopB47swc9hxko2meCJ56.JuS/x6', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490340, NULL),
	(71, 'rmtop-test', '$2y$10$3TCqHbX.toyU4xyc7aapKuKtlwjD5cy9xdqWA6jJiP4j8APniIi06', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490442, NULL),
	(72, 'rmtop-test', '$2y$10$PRBitHuf3kyOvj3kqn6gSOkFTnliwT.Zoe/XG4eX204aQRFB8wHKC', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490484, NULL),
	(73, 'rmtop-test', '$2y$10$mTHKA51a8.Ttixhstgpdxu1lA7zvEOUE6v5oPVk2e/QbA4VbAKLam', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626490976, NULL),
	(74, 'rmtop-test', '$2y$10$skhv/VpqXh0ddmpheZx6R.5QYmKlNwp62/eq.0xJBXAFQYvD.QIbm', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626491032, NULL),
	(75, '12321323', '$2y$10$23P7gmr71lHaiQ/qmpr.b.O5Ifr51e.q6ud.wHe2uw0Iq5fdd3Tp.', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626522482, NULL),
	(76, '12321323', '$2y$10$bflb0Ree/x1BjbXNaDGuFOIvk50bfw3qMYQPzyt5TaSLS6KV9N6LS', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626531811, NULL),
	(77, 'rmtop-test', '$2y$10$G5EBtGQt8FGxTge0x.FJZe513N2AfjeudnNBNcjfJImAVwal55DnG', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626532031, NULL),
	(78, 'rmtop-test', '$2y$10$KeTFjJU4Eg4X1VkXZu.O8.5R0qLm6BAT90IZmbKrGnLrzI9lkbmiO', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626587532, NULL),
	(79, 'rmtop-test', '$2y$10$SAV.ljm1pGEShBq5YbciiOUc6wXz52D0cD7lk.Wk1aAbzNMBHk0Ja', NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1626613371, NULL);
/*!40000 ALTER TABLE `rtop_admin` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_admin_role 结构
CREATE TABLE IF NOT EXISTS `rtop_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL COMMENT '角色名称',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员角色列表';

-- 正在导出表  rmtop.rtop_admin_role 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `rtop_admin_role` DISABLE KEYS */;
INSERT INTO `rtop_admin_role` (`id`, `title`, `create_time`, `update_time`) VALUES
	(1, '网站编辑', NULL, NULL),
	(2, '商品管理员', 1617897814, 1617897814),
	(3, '财务人员', 1617897868, 1617897868),
	(4, '草莓面膜-', 1617897894, 1617897894);
/*!40000 ALTER TABLE `rtop_admin_role` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_admin_rules 结构
CREATE TABLE IF NOT EXISTS `rtop_admin_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL COMMENT '规则名称',
  `url` varchar(120) DEFAULT NULL COMMENT '权限URL',
  `status` int(11) DEFAULT '0' COMMENT '1 启用 0 未启用',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员权限规则';

-- 正在导出表  rmtop.rtop_admin_rules 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_admin_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_admin_rules` ENABLE KEYS */;

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
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='管理权限规则';

-- 正在导出表  rmtop.rtop_auth_rules 的数据：~27 rows (大约)
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
	(32, 9, '应用列表', NULL, 'topcenter', 1, 1, 1, NULL, NULL, NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_blog 的数据：9 rows
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_column 的数据：~14 rows (大约)
/*!40000 ALTER TABLE `rtop_column` DISABLE KEYS */;
INSERT INTO `rtop_column` (`id`, `pid`, `sort`, `title`, `en_title`, `org_img`, `type`, `type_url`, `directory_name`, `model`, `model_title`, `list_tmp`, `info_tmp`, `seo_title`, `seo_key`, `seo_des`, `is_show`) VALUES
	(1, 0, 0, '首页', 'index', '', 1, NULL, NULL, 'single', '单页模型', 'index', NULL, '', '模型页面', '模型页面模型页面模型页面模型页面模型页面', 0),
	(2, 0, 0, '购买', 'buysoft', '', 1, NULL, NULL, 'single', '单页模型', 'buysoft', '', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', 'RmTop-CMS 服务内容', 0),
	(3, 0, 0, '动态	', 'news', '', 1, NULL, NULL, 'article', '文章模型', 'news', '', 'RmTop-CMS 最新发布|动态中心', 'RmTop-CMS 最新发布|动态中心｜新闻中心', '动态中心｜关注发展，与时俱进！', 0),
	(4, 0, 0, '文档	', 'document', '', 1, NULL, NULL, 'single', '单页模型', 'document', '', '文档中心｜RmTop-CMS操作手册|帮助中心', '文档中心｜RmTop-CMS操作手册|帮助中心', '文档中心｜便捷查询，快速入手！', 0),
	(5, 0, 0, '案例', 'cases', '', 1, NULL, NULL, 'atlas', '图集模型', 'cases', '', 'RmTop-CMS|案例展示｜体验中心｜企业官网制作｜', 'RmTop-CMS|案例展示｜体验中心｜企业官网制作｜', '客户案例｜精心制作，用心交付！', 0),
	(6, 0, 0, '升级', 'upgrade', '', 1, NULL, NULL, 'article', '单页模型', 'upgrade', 'upginfo', 'RmTop-CMS 升级日志', 'RmTop-CMS 升级日志｜企业官网定制｜', '升级日志｜每一次更新，都有突破！', 0),
	(7, 0, 0, '反馈', 'feedback', '', 1, NULL, NULL, 'message', '留言模型', 'feedback', '', '反馈中心｜需求提交｜bug提交｜', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '反馈中心｜聆听意见，共同成长！', 0),
	(8, 0, 0, '关于我们', 'about', '', 1, NULL, NULL, 'single', '单页模型', 'about', '', 'RmTop-CMS ', 'RmTop-CMS ', 'RmTop-CMS｜了解，从这里开始！', 0),
	(9, 4, 0, '新手指引', 'guide', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(10, 4, 0, '产品介绍', 'Introduction', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(11, 4, 0, '操作手册', 'handbook', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(13, 4, 0, '模板知识', 'template', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(15, 4, 0, 'SEO知识', 'seo', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(16, 4, 0, '安全相关', 'safe', '', 1, NULL, NULL, 'article', '文章模型', 'doclist', 'docinfo', '', '', '', 0),
	(17, 0, 0, '模板', 'temp', '', 1, NULL, NULL, 'product', '图集模型', 'temp', 'tempinfo', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '企业官网模版｜企业官网定制｜企业cms系统｜CMS｜RmTop-CMS｜免费的企业模版', '企业模版中心｜优选最心仪的企业形象！', 0);
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
  `delete_time` int(11) DEFAULT NULL COMMENT '1 不可删除 0可删除',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_config 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `rtop_config` DISABLE KEYS */;
INSERT INTO `rtop_config` (`id`, `zh_name`, `en_name`, `value`, `is_true`, `sort`, `group_id`, `delete_time`, `create_time`, `update_time`) VALUES
	(1, '系统加密密匙', 'sys_crypto', '123456', 1, 0, 0, NULL, NULL, NULL),
	(2, '网站状态', 'is_open', '0', 0, 0, 0, NULL, NULL, NULL),
	(3, '网站标题', 'web_title', 'rmTopCMS——轻便、多变的CMS服务系统', 0, 0, 0, NULL, NULL, NULL),
	(4, '网站域名', 'web_host', 'http://rmsf.top', 0, 0, 0, NULL, NULL, NULL),
	(5, '网站logo', 'web_logo', '/rTop_d346297396a4de901125ef140ce7a894.png', 0, 0, 0, NULL, NULL, NULL),
	(6, '网站关键词', 'web_keyword', 'rmTopCMS', 0, 0, 0, NULL, NULL, NULL),
	(7, '网站描述', 'web_desc', 'rmTopCMS——轻便、多变的CMS服务系统', 0, 0, 0, NULL, NULL, NULL),
	(8, '网站版权', 'web_copyright', 'rmTopCMS', 0, 0, 0, NULL, NULL, NULL),
	(9, '网站备案号', 'web_icp', '滇备', 0, 0, 0, NULL, NULL, NULL),
	(10, '闭站提示', 'close_tip', '312321311', 0, 0, 0, NULL, NULL, NULL),
	(28, '密匙', 'mishi', '3242342342', 0, 1, 5, NULL, 1623900685, 1623900685),
	(29, '文件储存位置', 'static_path', '/public/images/', 0, 0, 0, NULL, NULL, NULL),
	(30, '当前模板', 'tmp_path', 'free_top', 0, 0, 0, NULL, NULL, NULL),
	(31, '客服电话', 'kefu_mobile', '0871-65814748', 0, 1, 6, NULL, 1625592100, 1625592100),
	(32, '公司地址:', 'kefu_adress', '云南省 • 昆明市五华区金鼎科技园', 0, 2, 6, NULL, 1625592990, 1625592990),
	(33, '文件可访问路径', 'view_static_path', '/images/', 0, 0, 0, NULL, NULL, NULL),
	(34, '网站ico', 'web_ico', ' ', 0, 0, 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `rtop_config` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_config_group 结构
CREATE TABLE IF NOT EXISTS `rtop_config_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(11) DEFAULT NULL COMMENT '分组名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `ident` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_config_group 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `rtop_config_group` DISABLE KEYS */;
INSERT INTO `rtop_config_group` (`id`, `title`, `sort`, `ident`) VALUES
	(5, '短信配置', 1, 'sms'),
	(6, '客服配置', 1, 'kefu');
/*!40000 ALTER TABLE `rtop_config_group` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_article 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0' COMMENT '唯一ID',
  `col_id` int(11) DEFAULT NULL COMMENT '模型标识',
  `seo_title` varchar(150) DEFAULT NULL,
  `seo_key` varchar(80) DEFAULT NULL,
  `seo_des` varchar(160) DEFAULT NULL,
  `doc_type` int(11) DEFAULT '0' COMMENT '头条 推荐 热门 其他',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `org_img` varchar(100) DEFAULT NULL COMMENT '首图',
  `img_lists` varchar(250) DEFAULT NULL,
  `content` text COMMENT '内容',
  `tags` varchar(250) DEFAULT '' COMMENT '标签内容',
  `view_path` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `access` int(11) DEFAULT '0' COMMENT '阅读权限',
  `views` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='模型额外信息';

-- 正在导出表  rmtop.rtop_extends_article 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_article` DISABLE KEYS */;
INSERT INTO `rtop_extends_article` (`id`, `uqid`, `col_id`, `seo_title`, `seo_key`, `seo_des`, `doc_type`, `title`, `org_img`, `img_lists`, `content`, `tags`, `view_path`, `author`, `access`, `views`, `create_time`) VALUES
	(1, '6d4231ea48e3d411', 6, '', '', '', 0, 'RmTop-CMS 1.0.0', '', NULL, '<p>RmTop-CMS 1.0.0</p><p><br/></p><p>单页魔力</p><p>信息模块</p><p>产品模块</p><p>图集模块</p><p>下载模块</p><p>招聘模块</p><p>视频模块</p><p><br/></p><p><br/></p><p><img src="/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png"/></p>', '', '', '', 0, 0, 1626188521),
	(2, '27a59a74dd508f16', 3, '', '', '', 0, 'RmTop-CMS 正式上线', '/images//rTop_e4159a3a52929fb5d283f706df402705.png', NULL, '<p style="text-align: center;"><span style="font-size: 24px;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">RmTop-CMS 正式上线</span></strong></span><span style="font-size: 20px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p><p><span style="font-size: 24px;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></strong></span></p><p><br/></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: #000000; font-size: 18px;">轻便，多变的的企业信息服务系统！</span></p><p><br/></p><p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png"/></p><p><br/></p><p style="margin-bottom: 10px;"><span style="color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;">&nbsp; &nbsp;</span></p><p style="margin: 0px auto 10px; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;入目三分科技是一家拥有自主开发、研发能力的软件公司，2017年成立于昆明，秉承开源是基础软件的未来这一理念，入目三分科技持续扩大影响力，专注于内容管理系统的研发及开源生态建设。</span></p><p style="margin: 0px auto 10px; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;RmTop-CMS 内容管理系统，是理想的大规模站群和内容管理解决方案，目前，已被应用在多家企业的实际生产环境中，涉及教育、互联网、政府、银行、航空、医疗、保险、证券、制造业等多个行业。</span></p><p style="margin: 0px auto; white-space: normal; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;与时俱进，做好用的系统！</span></p><p style="margin-bottom: 10px;"><span style="color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;"></span><br/></p>', '', '', '', 0, 0, 1626188753),
	(3, '3c65f5bffe7d24f5', 3, '', '', '', 0, 'RmTopCMS 开发团队', '/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png', NULL, '<p><br/></p><p><img src="/images//rTop_81e9d4306536bc7e8b584adf1edd177e.png"/><br/></p><hr/><p><span style="font-size: 20px;"><br/></span></p><p style="text-align: center;"><span style="font-size: 20px;">RmTopCMS 开发团队<br/></span></p><p><br/></p><p><br/></p><p>前端 ：Mr 李&nbsp;&nbsp;</p><p><br/></p><p><br/></p><p>技术 :&nbsp; Mr 朱</p><p><br/></p><p><br/></p><p>产品 ：Mr 赵</p><p><br/></p><p><br/></p><hr/><p><br/></p><p style="text-align: center;">鸣谢</p><p><br/></p><p>ThinkPHP</p><p><br/></p><hr/><p style="text-align: right;"><br/></p><p style="text-align: right;"><span style="font-family: 楷体, 楷体_GB2312, SimKai; font-size: 18px;">金诚所至&nbsp; 金石为开！</span></p>', '', '', '', 0, 0, 1626189208),
	(4, '3e019842281317d5', 9, '', '', '', 0, '如何栏目创建?', '', NULL, '<p><br/></p><p><br/></p><p>1、确定需要创建的栏目模型&nbsp;</p><p><br/></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);">单页模块、信息模块、产品模块、图集模块、下载模块、招聘模块、视频模块</p><p><br/></p><p>2、设置栏目的详细信息</p><p><br/></p><p><br/></p><p><img src="/images//rTop_941e6ee0735f6aca5baf0fc61d7fbc89.png" style=""/></p><p><br/></p><p><img src="/images//rTop_cf6b49bdf1c11834db3eca5f1609c8dd.png" width="625" height="583" style="width: 625px; height: 583px;"/></p><p><br/></p>', '', '', '', 0, 0, 1626190225),
	(5, '70bafdef804bdb44', 10, '系统目前支持的模块', '系统目前支持的模块', '系统目前支持的模块\r\n', 0, '系统目前支持的模块', '', NULL, '<hr/><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">单页模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">信息模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">产品模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">图集模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">下载模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">招聘模块</p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; font-size: 15px; line-height: 2; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: left;">视频模块</p><hr/><p><br/></p><p>更多模块敬请期待</p>', '', '', '', 0, 0, 1626191696);
/*!40000 ALTER TABLE `rtop_extends_article` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_atlas 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_atlas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` varchar(100) DEFAULT NULL COMMENT '模型标识',
  `title` varchar(120) DEFAULT NULL COMMENT '图片名称',
  `org_img` varchar(120) DEFAULT NULL COMMENT '图片',
  `img_lists` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_atlas 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_atlas` DISABLE KEYS */;
INSERT INTO `rtop_extends_atlas` (`id`, `uqid`, `col_id`, `title`, `org_img`, `img_lists`, `create_time`, `doc_type`, `tags`, `views`, `author`, `seo_title`, `seo_key`, `seo_des`, `access`, `turl`, `view_path`, `content`) VALUES
	(3, '0', '17', '企业官网', '/images//rTop_ccaae79ea33783170ff917d66993ce8d.png', NULL, '1625823329', 0, '', 0, NULL, '响应式多功能模块化主题', '响应式多功能模块化主题', '响应式多功能模块化主题', 0, '', '', '<p>企业官网自适应</p>'),
	(6, '0', '17', '购物商城', '/images//rTop_ccaae79ea33783170ff917d66993ce8d.png', NULL, '1625823496', 0, '', 0, NULL, '', '', '响应式多功能模块化主题', 0, '', '', '<p>111</p>'),
	(13, 'c45e8e042c44b716', '5', '云南入目三分科技', '/images//rTop_8c708986d72e85782db9892e3948ac1f.png', NULL, '1626315416', 0, '', 0, NULL, '', '', '', 0, '', '', '<p></p><p></p><p></p><p></p><p><img src="/images//rTop_35bde5f61cde4a15e8b8e67887db8617.png" style=""/></p><p><img src="/images//rTop_7d5fd5efd4aa125728884da8f9f05172.png" style=""/></p><p><img src="/images//rTop_df3c2fa68f3d019d12d07d927963f7cc.png" style=""/></p><p><img src="/images//rTop_afcca3458b2a3dacda0cc0ebf90ecaac.png" style=""/></p><p><br/></p>'),
	(14, '1873f59fe23fcfc1', '5', '威尔顿纺织有限公司', '/images//rTop_5cbbcd3f98d1b35cc77031e84996e079.png', NULL, '1626317119', 0, '', 0, NULL, '', '', '', 0, '', '', '<p><img src="/images//rTop_a231a429325bad339479834b1119c383.jpg" style=""/></p><p><img src="/images//rTop_3fb1fa60845384b930212f12fe53e5b9.png" style=""/></p><p><img src="/images//rTop_36bbde3d69843a68e6ee95e1ae0efc59.png" style=""/></p><p><img src="/images//rTop_c87100f94adf8d2d3cfd524ececfa19a.png" style=""/></p><p><img src="/images//rTop_af4e7307c4d8be74101b85cbad8dd903.png" style=""/></p><p><img src="/images//rTop_dd7404a1e3c16e629fa7dbee68634e2e.png"/></p>'),
	(15, '1d84f210b78527f6', '5', '瑞佳无纺布有限公司', '/images//rTop_2261ba1897e475aaaaa5a074025b329a.png', NULL, '1626319053', 0, '', 0, NULL, '', '', '', 0, '', '', '<p><img src="/images//rTop_a9119815bc62f7bdd579b9cd91183d31.jpg"/></p><p></p><p></p><p></p><p></p><p></p><p><img src="/images//rTop_9e000db09aabc63ce13079bd930082b2.png" style=""/></p><p><img src="/images//rTop_fe3c6ff956b3dbf6255c2c11b4ff8653.png" style=""/></p><p><img src="/images//rTop_0af5bf2c1009c5e462a69799429befa9.png" style=""/></p><p><img src="/images//rTop_ab501b8b164f983c22a4985d80707516.png" style=""/></p><p><img src="/images//rTop_6f20b28e5e4605441e4d0ddccddd1311.png" style=""/></p><p><img src="/images//rTop_243884e1df14c0561363958aec923d13.png" style=""/></p><p><br/></p>'),
	(17, 'be0265bc1f449bb9', '5', '骏远背包网', '/images//rTop_799481c115b577d876e8a22f6b685c26.png', NULL, '1626332398', 0, '', 0, NULL, '', '', '', 0, '', '', '<p><img src="/images//rTop_e82da4b0300bd3cc60463ca55c09d5c8.jpg" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_cec76db66b9815220c5757f4c105f4ff.jpg" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png" style=""/></p><p><br/></p>'),
	(21, '8d89454cb6c4253b', '5', '曲靖蓝鲸网络科技', '/images//rTop_7dfa2876d90c3b58e9b1b1c3b011f907.png', NULL, '1626336446', 0, '', 0, NULL, '', '', '', 0, '', '', '<p><img src="/images//rTop_14b9732630de806123dc198c6917ec2f.jpg" style=""/></p><p><img src="/images//rTop_6b8402933fb621e9c463ffb51dc8ea00.png"/></p><p><img src="/images//rTop_eae59115ca190c743e8ec9191aba2b90.jpg" style=""/></p><p><img src="/images//rTop_ed1cd734f85194620ded9b0f094959e0.png" style=""/></p><p><img src="/images//rTop_a600b3ac38d4ead7a11cb7fdcc270bb9.png" style=""/></p><p><br/></p>');
/*!40000 ALTER TABLE `rtop_extends_atlas` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_download 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `col_id` varchar(50) DEFAULT NULL COMMENT '模型标识',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `org_img` varchar(120) DEFAULT NULL COMMENT '首图',
  `img_lists` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='下载模型';

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='招聘模型';

-- 正在导出表  rmtop.rtop_extends_job 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_job` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_message 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '留言姓名',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `demand` varchar(200) DEFAULT NULL COMMENT '需求',
  `img_lists` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '提交ip',
  `email` varchar(80) DEFAULT NULL,
  `col_id` int(11) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言模型';

-- 正在导出表  rmtop.rtop_extends_message 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_extends_message` ENABLE KEYS */;

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
  `img_lists` varchar(160) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0' COMMENT '产品类型',
  `content` text COMMENT '产品描述',
  `tags` varchar(100) DEFAULT '' COMMENT '产品标签',
  `view_path` varchar(160) DEFAULT NULL COMMENT '产品模版',
  `turl` varchar(160) DEFAULT NULL COMMENT '跳转url',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(11) DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_product 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_product` DISABLE KEYS */;
INSERT INTO `rtop_extends_product` (`id`, `uqid`, `col_id`, `seo_title`, `seo_key`, `seo_des`, `property`, `title`, `org_img`, `img_lists`, `product_type`, `content`, `tags`, `view_path`, `turl`, `create_time`, `update_time`, `delete_time`) VALUES
	(5, '3f9ceb15e9600eea', 17, '响应式', '自适应', '自适应的资讯模板，适合资讯密集型网站使用。', '0', '生物科技有限公司企业官网模版', '/images//rTop_ba276b56c5b265e71251c0b86a63c64c.jpg', NULL, 0, '<p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_fd78f44756e7ef0ba0cc0c47581a10d3.png" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png" style=""/></p><p><br/></p>', '', '', '', 1626186082, 1626253056, 0),
	(6, 'df71e4b066449b80', 17, '绿色环保塑料实业公司', '模板', '这是一套响应式网站模版，适用于企业官网、资讯发布、专题网站，整体大气简洁。', '0', '绿色环保塑料实业公司', '/images//rTop_932599936196425b8b6a3f7ef33b6e7a.jpg', NULL, 0, '<p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_fd78f44756e7ef0ba0cc0c47581a10d3.png" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png" style=""/></p><p><br/></p>', '响应式', '', '', 1626247084, 1626253148, 0),
	(7, 'be07b56bccf997a5', 17, '响应式多功能模块化主题', '自适应', '主色调为浅蓝色，采用简洁经典的页面布局', '0', '幼儿园官网', '/images//rTop_67a3e8ff2365258e20333d50c86b597b.jpg', NULL, 0, '<p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_fd78f44756e7ef0ba0cc0c47581a10d3.png" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png" style=""/></p><p><br/></p><h2 style="box-sizing: border-box; margin-bottom: 16px; line-height: 1.25; color: inherit; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); outline: 0px !important; margin-top: 0px !important;">幼儿园官网</h2><p style="box-sizing: border-box; outline: 0px !important; margin-top: 0px; margin-bottom: 0px !important;">这是一套响应式网站模版，适用于企业官网、资讯发布、专题网站，整体大气简洁。</p><p style="box-sizing: border-box; outline: 0px !important; margin-top: 0px; margin-bottom: 0px !important;"><br/></p><h4 class="page-title" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.2; color: inherit; font-size: 20px; outline: 0px !important;">更新日志</h4><h2 style="box-sizing: border-box; margin-bottom: 16px; line-height: 1.25; color: inherit; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); outline: 0px !important; margin-top: 0px !important;">v1.1</h2><ul style="box-sizing: border-box; margin-bottom: 16px; padding-left: 2em; outline: 0px !important;" class=" list-paddingleft-2"><li><p>支持 RmTop V2 版本</p></li><li><p>删除包含文件中parsed结尾文件</p></li></ul><h2 style="box-sizing: border-box; margin-top: 24px; margin-bottom: 16px; line-height: 1.25; color: inherit; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); outline: 0px !important;">v1.0</h2><ul style="box-sizing: border-box; padding-left: 2em; outline: 0px !important;" class=" list-paddingleft-2"><li><p>图片优化</p></li></ul><p><br/></p>', '', '', '', 1626247607, 1626253217, 0),
	(8, 'c7589e8b6d5d2061', 17, '响应式多功能模块化主题', '自适应', '适应于企业、产品型公司以及各种企业集团网站使用', '0', '美食餐饮管理企业官网', '/images//rTop_dd06e74230ea7a7af7051c9650a0f012.jpg', NULL, 0, '<p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_fd78f44756e7ef0ba0cc0c47581a10d3.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png" style=""/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png"/></p><p><br/></p><h4 class="page-title" style="color: inherit; white-space: normal; box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.2; font-size: 20px; text-align: left; outline: 0px !important;">更新日志</h4><p style="white-space: normal;"><br/></p><h2 style="color: inherit; white-space: normal; box-sizing: border-box; margin-bottom: 16px; line-height: 1.25; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); text-align: left; outline: 0px !important; margin-top: 0px !important;">v1.1</h2><p style="text-align: left; text-indent: 0em;">支持 RmTop V2 版本</p><h2 style="color: inherit; white-space: normal; box-sizing: border-box; margin-top: 24px; margin-bottom: 16px; line-height: 1.25; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); text-align: left; outline: 0px !important;">v1.0</h2><p style="text-align: left;">修复手机端显示导航栏</p><p style="text-align: left;">图片优化</p><p><br/></p>', '', '', '', 1626247799, 1626253285, 0),
	(9, '3529ba78be792b0d', 17, 'HTML5模板', '响应式多功能模块化主题', '模板基于bootstrap响应式布局，兼容PC、平板、手机等主流媒体浏览器', '0', '物流运输企业官网', '/images//rTop_de05bea4d4373ab5a0fbd1ea6da2c500.png', NULL, 0, '<p><img src="/images//rTop_e4159a3a52929fb5d283f706df402705.png" style=""/></p><p><img src="/images//rTop_6c39a0235ec86f20e6ce22b4542bcc83.png" style=""/></p><p><img src="/images//rTop_fd78f44756e7ef0ba0cc0c47581a10d3.png" style=""/></p><p><img src="/images//rTop_2fd57bd9bf3dbe772ad6c7a0f29f62ec.png" style=""/></p><p><img src="/images//rTop_edabcca78cc0edd23584c04e3b4978fe.png" style=""/></p><p><img src="/images//rTop_6753c1d679d5e3dfd500bc778731809d.png"/></p><p><img src="/images//rTop_329ec9205cd3780a922aa8321ed2fdf3.png"/></p><p><br/></p><p><span style="font-size: 20px;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">上传时间</span></strong></span></p><p>&nbsp; &nbsp;2021.07.14&nbsp;</p>', '', '', '', 1626248221, 1626253338, 0),
	(10, '8220ff89686dac45', 17, '响应式多功能模块化主题', '自适应', '一款紫色大气的整形美容，女性美容，医疗美容，女性美容整形医院网站响应式织梦模板dedecms下载。包含： 关于我们、服务项目、案例展示、新闻动态、联系我们等模块页面。', '0', '美容整形医院官网', '/images//rTop_67ed9a1c0a51b732cb983f41d463438e.png', NULL, 0, '<p><img src="/images//rTop_c383ce25e8571e5c9f13eae317099cdd.jpg"/></p><p><br/></p><p><span style="color: rgba(0, 0, 0, 0.85); font-family: &quot;microsoft yahei&quot;; font-size: 14px; letter-spacing: 0.2px; background-color: #FFFFFF;">一款紫色大气的整形美容，女性美容，医疗美容，女性美容整形医院网站响应式模板。包含： 关于我们、服务项目、案例展示、新闻动态、联系我们等模块页面。</span></p>', '', '', '', 1626248449, 1626253389, 0);
/*!40000 ALTER TABLE `rtop_extends_product` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_product_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_product_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `value` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_product_params 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_product_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_product_params` (`id`, `sid`, `type`, `key`, `title`, `value`) VALUES
	(1, 1, 'text', 'free_price', '价格', '1888.00'),
	(4, 1, 'text', 'fs', '风水', 'BFDGDFS'),
	(5, 5, 'text', 'free_price', '价格', '1888.00'),
	(6, 6, 'text', 'free_price', '价格', '988.00'),
	(7, 7, 'text', 'free_price', '价格', '688.00'),
	(8, 8, 'text', 'free_price', '价格', '12200.00'),
	(9, 9, 'text', 'free_price', '价格', '1888.00'),
	(10, 10, 'text', 'free_price', '价格', '1688.00'),
	(11, 5, 'text', 'author', '作者', ''),
	(12, 5, 'file', 'author', '作者头像', ''),
	(13, 5, 'file', 'author_img', '作者头像', ''),
	(14, 6, 'text', 'author', '作者', 'Karn'),
	(15, 6, 'text', 'author_img', '作者头像', ''),
	(16, 6, 'file', 'author_img', '作者头像', ''),
	(17, 5, 'text', 'versions', '版本', 'rmTop v1.0.1'),
	(18, 6, 'text', 'versions', '版本', 'rmTop v1.0.1'),
	(19, 7, 'text', 'author', '作者', 'Karn'),
	(20, 7, 'file', 'author_img', '作者头像', ''),
	(21, 7, 'text', 'versions', '版本', 'rmTop v1.0.1'),
	(22, 8, 'text', 'author', '作者', 'Karn'),
	(23, 8, 'file', 'author_img', '作者头像', ''),
	(24, 8, 'text', 'versions', '版本', 'rmTop v1.0.1'),
	(25, 9, 'text', 'author', '作者', 'Karn'),
	(26, 9, 'text', 'author_img', '作者头像', ''),
	(27, 9, 'text', 'versions', '版本', 'rmTop v1.0.1'),
	(28, 10, 'text', 'author', '作者', 'Karn'),
	(29, 10, 'file', 'author_img', '作者头像', ''),
	(30, 10, 'text', 'versions', '版本', 'rmTop v1.0.1');
/*!40000 ALTER TABLE `rtop_extends_product_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '单页标题',
  `img_lists` varchar(255) DEFAULT NULL,
  `text` text COMMENT '单页内容',
  `view_path` varchar(255) DEFAULT NULL COMMENT '模板',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `create_time` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `col_id` int(11) DEFAULT NULL COMMENT '模型标识',
  `author` varchar(120) DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `tags` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_extends_single 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single` DISABLE KEYS */;
INSERT INTO `rtop_extends_single` (`id`, `uqid`, `seo_title`, `seo_key`, `seo_des`, `title`, `img_lists`, `text`, `view_path`, `views`, `create_time`, `doc_type`, `col_id`, `author`, `access`, `tags`) VALUES
	(1, '0', 'RmTop-CMS ', 'RmTop-CMS ', 'RmTop-CMS ', NULL, NULL, '', '0', 0, NULL, NULL, 1, '', 0, 'RmTop-CMS '),
	(2, '0', 'RmTop-CMS 服务内容', 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '服务内容', NULL, NULL, '<p>1231</p>', '0', 0, '1623312766', NULL, 2, '', 0, 'RmTop-CMS 服务购买|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|'),
	(3, '0', 'RmTop-CMS 文档中心', 'RmTop-CMS文档中心|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', 'RmTop-CMS文档中心|免费CMS的系统|CMS|专业定制版|企业官网系统|定制企业官网|', '1', '1', '<p>231313</p>', '0', 0, '1625456614', NULL, 4, '', 0, 'RmTop-CMS 文档中心'),
	(6, '0', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '1625456905', NULL, 6, NULL, 0, NULL),
	(8, '0', 'RmTop-CMS ', 'RmTop-CMS ', '关于我们简介', NULL, NULL, '<p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; font-size: 14px; background-color: #FFFFFF;"></span></p><p style="margin: 0px auto 10px; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;入目三分科技是一家拥有自主开发、研发能力的软件公司，2017年成立于昆明，秉承开源是基础软件的未来这一理念，入目三分科技持续扩大影响力，专注于内容管理系统的研发及开源生态建设。</span></p><p style="margin: 0px auto 10px; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;RmTop-CMS 内容管理系统，是理想的大规模站群和内容管理解决方案，目前，已被应用在多家企业的实际生产环境中，涉及教育、互联网、政府、银行、航空、医疗、保险、证券、制造业等多个行业。</span></p><p style="margin: 0px auto; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px auto; padding: 0px; box-sizing: border-box; color: #000000; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;">&nbsp; &nbsp;与时俱进，做好用的系统！</span></p><p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; background-color: #FFFFFF; font-size: 16px;"><br/></span></p><p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; background-color: #FFFFFF; font-size: 16px;"><br/></span></p><p style="text-align: center;"><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; background-color: #FFFFFF; font-size: 16px;"><img src="/images//rTop_d346297396a4de901125ef140ce7a894.png"/></span></p><p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; background-color: #FFFFFF; font-size: 16px;">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; background-color: #FFFFFF; font-size: 16px;">&nbsp; &nbsp;</span></p><p style="margin: 0px auto 10px; padding: 0px; box-sizing: border-box; overflow-wrap: break-word; line-height: 33px; color: rgb(63, 62, 62); font-family: &quot;Source Sans Pro&quot;, Tahoma, &quot;Microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"></p><p><span style="color: #545454; font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, serif; font-size: 14px; background-color: #FFFFFF;"></span><br/></p>', NULL, 0, '1625487341', NULL, 8, NULL, 0, 'RmTop-CMS ');
/*!40000 ALTER TABLE `rtop_extends_single` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_single_params 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_single_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'text',
  `key` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='单面额外参数';

-- 正在导出表  rmtop.rtop_extends_single_params 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `rtop_extends_single_params` DISABLE KEYS */;
INSERT INTO `rtop_extends_single_params` (`id`, `sid`, `type`, `key`, `title`, `value`) VALUES
	(1, 1, 'text', 'verison', '版本号', 'rmTop 1.2.0 '),
	(7, 2, 'text', 'free_price', '免费价格', '0'),
	(8, 2, 'text', 'base_price', '基础版价格', '1800'),
	(9, 2, 'text', 'specialty_price', '专业版价格', '5888'),
	(11, 2, 'text', 'page_title', '页面标题', '服务内容'),
	(12, 1, 'text', 'copyright', '著作权', '152463aas'),
	(13, 1, 'file', 'weixinewm', '微信公众号', '/images//rTop_ccaae79ea33783170ff917d66993ce8d.png'),
	(14, 1, 'file', 'kefu_weixin', '客服微信', '/images//rTop_11a41762775ef047b2f35b0e2aa5e7c3.jpg'),
	(16, 4, 'text', 'wdtitle', '文档标题', '文档服务中心'),
	(17, 4, 'textarea', 'wddes', '文档描述', '了解如何使用 RmTop-CMS系统 创建快速、安全、跨平台的 Web 应用和服务。 浏览教程、示例代码、基础知识、API 参考和更多内容。'),
	(18, 1, 'text', 'title_key', '标题关键词', '开源'),
	(19, 1, 'textarea', 'title_des', '服务简述', 'RmTop-CMS是入目三分科技有限公司开发的免费+开源的企业内容管理系统，专注企业建站用户需求\r\n<br>\r\n提供海量各行业模板，降低中小企业网站建设、网络营销成本，致力于打造用户舒适的建站体验'),
	(20, 1, 'text', 'sys_update', '更新信息(输入更新信息ID)', '1'),
	(21, 1, 'text', 'free_down', '免费下载地址', ''),
	(22, 8, 'file', 'ouer_map', '地图信息', '/images//rTop_877f0db798b5095b27b4703e86c2f35b.png'),
	(23, 17, 'text', 'free_price', '价格', ''),
	(24, 17, 'text', 'free_price', '价格', '');
/*!40000 ALTER TABLE `rtop_extends_single_params` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_extends_video 结构
CREATE TABLE IF NOT EXISTS `rtop_extends_video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uqid` varchar(80) NOT NULL DEFAULT '0',
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_key` varchar(120) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '视频标题',
  `img_lists` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
  `create_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='文章列表';

-- 正在导出表  rmtop.rtop_information 的数据：1 rows
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

-- 正在导出表  rmtop.rtop_migrations 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `rtop_migrations` DISABLE KEYS */;
INSERT INTO `rtop_migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
	(20181113071924, 'CreateRulesTable', '2021-06-13 14:41:20', '2021-06-13 14:41:20', 0),
	(20210604015133, 'SysRoles', '2021-06-13 14:41:20', '2021-06-13 14:41:20', 0),
	(20210604015139, 'SysRules', '2021-06-13 14:41:20', '2021-06-13 14:41:21', 0);
/*!40000 ALTER TABLE `rtop_migrations` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_navs 结构
CREATE TABLE IF NOT EXISTS `rtop_navs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL COMMENT '分组ID',
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `title` varchar(150) DEFAULT NULL COMMENT '导航名称',
  `url` varchar(255) DEFAULT NULL COMMENT '导航URl',
  `click_times` int(11) DEFAULT NULL COMMENT '点击次数',
  `target` varchar(60) DEFAULT NULL COMMENT '打开方式',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` int(11) DEFAULT '0',
  `nav_type` int(11) DEFAULT '0' COMMENT '内部栏目',
  `column_id` varchar(11) DEFAULT NULL COMMENT '栏目ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_navs 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `rtop_navs` DISABLE KEYS */;
INSERT INTO `rtop_navs` (`id`, `group_id`, `pid`, `title`, `url`, `click_times`, `target`, `create_time`, `update_time`, `delete_time`, `sort`, `status`, `nav_type`, `column_id`) VALUES
	(29, 7, 0, '首页', '', NULL, '0', 1625455168, 1625455168, 0, 1, 0, 0, '1'),
	(30, 7, 0, '服务', '', NULL, '1', 1625455329, 1625455329, 0, 2, 0, 0, '2'),
	(31, 7, 0, '动态', '', NULL, '0', 1625455387, 1625455387, 0, 4, 0, 0, '3'),
	(32, 7, 0, '文档', '', NULL, '0', 1625455445, 1625455445, 0, 5, 0, 0, '4'),
	(33, 7, 0, '案例', '', NULL, '0', 1625455457, 1625455457, 0, 6, 0, 0, '5'),
	(35, 7, 0, '反馈', '', NULL, '0', 1625455574, 1625455574, 0, 10, 0, 0, '7'),
	(36, 7, 0, '关于', '', NULL, '0', 1625487359, 1625487359, 0, 11, 0, 0, '8'),
	(37, 8, 0, '新手指引', '', NULL, '1', 1625811370, 1625811370, 0, 1, 0, 0, '9'),
	(38, 8, 0, '产品介绍', '', NULL, '1', 1625811418, 1625811418, 0, 2, 0, 0, '10'),
	(39, 8, 0, '操作手册', '', NULL, '1', 1625811442, 1625811442, 0, 3, 0, 0, '11'),
	(40, 8, 0, '模板知识', '', NULL, '1', 1625811474, 1625811474, 0, 4, 0, 0, '13'),
	(41, 8, 0, 'SEO知识', '', NULL, '1', 1625811516, 1625811516, 0, 6, 0, 0, '15'),
	(42, 8, 0, '安全中心', '', NULL, '1', 1625813010, 1625813010, 0, 6, 0, 0, '16'),
	(43, 7, 0, '模板', '', NULL, '0', 1625815594, 1625815594, 0, 3, 0, 0, '17');
/*!40000 ALTER TABLE `rtop_navs` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_navs_category 结构
CREATE TABLE IF NOT EXISTS `rtop_navs_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL COMMENT '分组名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_navs_category 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `rtop_navs_category` DISABLE KEYS */;
INSERT INTO `rtop_navs_category` (`id`, `title`, `sort`, `create_time`) VALUES
	(2, '底部导航', 2, '1617549550'),
	(3, '侧导航栏', 3, '1617549564'),
	(4, '侧边导航', 4, '1617585437'),
	(6, '新闻中心', 5, '1624878826'),
	(7, '顶部导航', 1, '1625208782'),
	(8, '文档中心', 6, '1625811311');
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

-- 导出  表 rmtop.rtop_system_log 结构
CREATE TABLE IF NOT EXISTS `rtop_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统运行日志';

-- 正在导出表  rmtop.rtop_system_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_system_log` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_system_visitor 结构
CREATE TABLE IF NOT EXISTS `rtop_system_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '访问ip',
  `times` int(11) DEFAULT '0' COMMENT '访问次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站访客记录';

-- 正在导出表  rmtop.rtop_system_visitor 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_system_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_system_visitor` ENABLE KEYS */;

-- 导出  表 rmtop.rtop_sys_role 结构
CREATE TABLE IF NOT EXISTS `rtop_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_title` varchar(100) NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_sym` varchar(100) NOT NULL DEFAULT '' COMMENT '角色标识符',
  `role_org_img` varchar(150) NOT NULL DEFAULT '' COMMENT '角色图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  rmtop.rtop_sys_role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_sys_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_sys_role` ENABLE KEYS */;

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

-- 正在导出表  rmtop.rtop_sys_rule 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `rtop_sys_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtop_sys_rule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
