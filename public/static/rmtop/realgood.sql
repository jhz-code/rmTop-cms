# Host: 127.0.0.1  (Version: 5.5.53)
# Date: 2021-03-18 19:26:06
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "gw_article"
#

CREATE TABLE `gw_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `update_time` varchar(255) DEFAULT NULL,
  `content` text,
  `views` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `topimg` varchar(255) DEFAULT NULL,
  `cate` int(11) DEFAULT '0' COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文章列表';

#
# Data for table "gw_article"
#

INSERT INTO `gw_article` VALUES (1,'文章1','1578727662','0','1578727679','<p>文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1文章1</p>',2,0,NULL,0),(2,'QUANZHOU JUNYUAN COMMERCIAL AND TRADING CO,LTD','1578727674','0','1608968073','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal;\">We are willing to deal with every problems quickly, we insist that everything doesn&#39;t happen at once, we believe that the only way for a business relationship to work is based on a foundation of mutual trust.</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal;\">Quanzhou Junyuan Commercial And Trade Co., Ltd. is an enterprise which integrates its commerce and trade into a whole. We are also a diversified, export-oriented enterprise integrated with professional bag design, sales and export. Located in Nanpu Industrial Area, Quanzhou City. It enjoys a good working environment. Furthermore, we also have associated manufacturers with advanced equipment and all the products was controlled under strict QC procedures, with SGS certifications to ensure the quality.</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal;\">We emphasize development, and introduce new products into the market every year. The Design patent certifications and Brands are valuable corporate assets. The quality products and reasonable price is greatly satisfied by international markets.</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal;\">The company joined alibaba 2 years ago and became the KA supplier, with $678000 trade assurance limit, have the ability for long-term production and supply, and to ensure the security of your payment. We also offer free visualized production &amp; dropshipping support services, to keep buyers updated with the latest production status. The company also take an active part in alibaba activities within two years, and has obtained Champion Group in alibaba orange battle twice.</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial; font-size: 14px; white-space: normal;\">Quanzhou Junyuan Commercial And Trade Co., Ltd. would like to express our desire to establish business relations with you on the basis of equality and mutual benefit.</p><p><br/></p>',59,1,'/upload/20201226\\3cfa81ef041ea6b28fdbf0a894249399.png',0),(3,'萨达','1578727683','0','1578727688','<p>哒哒哒哒哒哒多多多</p>',3,0,NULL,0),(4,'uS','1579083111','0','1579083527','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: Arial;\">We are willing to deal with every problems quickly, we insist that everything doesn&#39;t happen at once, we believe that the only way for a business relationship to work is based on a foundation of mutual trust.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: Arial;\">Quanzhou Junyuan Commercial And Trade Co., Ltd. is an enterprise which integrates its commerce and trade into a whole. We are also a diversified, export-oriented enterprise integrated with professional bag design, sales and export. Located in Nanpu Industrial Area, Quanzhou City. It enjoys a good working environment. Furthermore, we also have associated manufacturers with advanced equipment and all the products was controlled under strict QC procedures, with SGS certifications to ensure the quality.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: Arial;\">We emphasize development, and introduce new products into the market every year. The Design patent certifications and Brands are valuable corporate assets. The quality products and reasonable price is greatly satisfied by international markets.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: Arial;\">The company joined alibaba 2 years ago and became the KA supplier, with $678000 trade assurance limit, have the ability for long-term production and supply, and to ensure the security of your payment. We also offer free visualized production &amp; dropshipping support services, to keep buyers updated with the latest production status. The company also take an active part in alibaba activities within two years, and has obtained Champion Group in alibaba orange battle twice.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: Arial;\">Quanzhou Junyuan Commercial And Trade Co., Ltd. would like to express our desire to establish business relations with you on the basis of equality and mutual benefit.</p><p><img src=\"/ueditor/php/upload/image/20200114/1578995576786445.jpg\" alt=\"1578995576786445.jpg\"/></p>',4,0,'/upload/20200115/2d368900c11a483348f1932a971ce15a.jpg',0),(5,'是谁的发发发f','1579083509','0','1579083524','<p>是谁的发发发fwssdddo</p>',2,0,'',0),(6,' Donate school backpack and school bag to remote mountainous regions.','1579252690','0','1608968062','<p>On Thursday, January 16th,Alina,VP of QUANZHOU JUNYUAN COMMERCIAL AND TRADING CO,LTD go to poor village to donate school backpack and school bag to students.</p><p>Let them fell warmly in this cold winter.</p><p>Plant a tree,reap forest</p><p>Devote a love,gain hopeness.</p><p>Love saving, start now, take love to home.</p><p>JUNYUAN keep energy,keep moving,keep kindess,try to KEEP PERFECT.</p><p><br/></p>',42,1,'/upload/20201226\\b7cfd1a6e4f8851ac37274637a6069ff.png',0),(7,'MARCH EXPO GREAT PROMOTION','1583129393','0','1608971358','<p><br/></p><p><img src=\"/upload/20201226\\965714272984cdeac04a5bb41c8a46df.jpg\" width=\"767\" height=\"602\"/></p><p>ALIBABA VERIFIED SUPPLIERS</p><p>Professional sourcing made efficient.</p><p>Premium OEM Factory.</p><p>ISO9001,CPSIA,ASTM,BSCI,CE,ROHS.</p><p>7*24 Hours Online Service.</p><p>Low MOQ Customized.Fast Delivery.</p><p>Free Logo &amp; Free Sample For Special Item.</p><p>One-stop Bag Customization Service Provider</p><p>Wechat/What’s App:0086 17750020688</p><p>USD20 CASH OFF IF ORDER REACH USD200</p><p>USD40 CASH OFF IF ORDER REACH USD500</p><p>USD80 CASH OFF IF ORDER REACH USD1000</p><p>USD130 CASH OFF IF ORDER REACH USD2000</p><p>www.junyuanbags.com</p><p><br/></p>',32,1,'/upload/20201226\\6ce26386d59135904dd1d267f9f505c6.png',1);

#
# Structure for table "gw_article_cate"
#

CREATE TABLE `gw_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='咨询分类';

#
# Data for table "gw_article_cate"
#

INSERT INTO `gw_article_cate` VALUES (1,'Industry News',NULL,'0',NULL),(2,'Company News',NULL,'0',NULL),(3,'Product videos',NULL,'0',NULL),(4,'Product videos',NULL,'0',NULL);

#
# Structure for table "gw_blog"
#

CREATE TABLE `gw_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `views` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `topimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "gw_blog"
#

INSERT INTO `gw_blog` VALUES (1,'1578724467','1582948453','金大师228','<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/upload/20200115/4013a2eea87551483ab0bf723aefd797.jpg\"/></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">1月10日晚间，微信公众号“上海衡源企业”发布一篇文章，称上海银行副行长黄涛违法发放265亿元贷款，落款为上海衡源企业发展有限公司法定代表人徐国良。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">对此，上海银行11日发布声明称，徐某某及其实际控制的上海衡源企业发展有限公司等多家企业，因严重拖欠巨额债务被该行及其他债权人依法诉至多家法院，其已深陷债务危机及严重失信局面。为掩盖真相、混淆视听，谋取不法利益，徐某某利用自媒体散布严重失实言论，恶意损害该行声誉，并严重侵害该行高管的合法权益。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">“我行已在第一时间向公安机关报案，后续我行将依法配合公安机关查证事实、还原真相。对恶意传播上述严重失实信息的网络载体，我行保留依法追究其法律责任的权利。”上海银行表示。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">关于此事，上海银行方面对《每日经济新闻》记者表示：“目前很多事情已经进入司法，后续情况会及时公布。”</span></p><p><br/></p>',18,0,'/upload/20200115/2f9dc540fa46d7c2ea26a52367cf4ed0.jpg'),(2,'1578726190','1578726676','博客2','<p>哒哒哒哒哒哒多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多</p>',0,0,NULL),(3,'1578726198','1578726203','是','<p>测试赛所所所所所所所所所所所所所所所所所所</p>',0,0,NULL),(4,'1578726665','1578726676','查实的','<p>达到</p>',0,0,NULL),(5,'1582944997','0','How to choose outdoor travel bag? Eight categories make you clear','<p>A good waist bag should not only be practical, but also be able to stand and match well. It is suitable for: gym, city jogging, marathon, etc. and all fitness sports~</p><p>Outdoor men&#39;s and women&#39;s running and riding waistpack</p><p>A small and portable waist bag, small size, but enough to accommodate carry on items. High quality nylon fabric, accessories, various back methods, whatever you want.</p><p>Running waistpack sports kettle waistpack</p><p>The lightweight and breathable sponge mesh design can prevent sweat from seeping into the bag and has strong stability. No matter riding or climbing, your belongings will not shake due to movement. Suitable for a variety of environments, such as travel, outing, camping, cycling, fishing, etc.</p><p>Unique design, no lock, hands free, waist storage balance movement, fashionable modeling, multi mouth design convenient to listen to music, bid farewell to the silence of movement. At the same time, it can effectively reduce the shaking caused by the movement. Wearing it is like a close fitting clothing, light and soft, comfortable to use.</p><p>Multifunctional sports bag outdoor small waist bag</p><p>The close fitting design, using light and thin fabric, can produce excellent close fitting and comfortable feeling, so that you don&#39;t swing in the movement, more flexible.</p><p>Outdoor sports running waistpack for men and women</p><p>The pocket can hold 6-inch mobile phone, key, energy stick and pocket money. Safe and reflective night running device, breathable and sweat-wicking, effectively prevent water splashing. Let you fall in love with cool run~</p><p>Cross the boundary between classic and fashion, do not follow the design of non square and round tread distance, innovate fashion with unique simple style, release your hands, and let your change, mobile phone and small items go with you!</p><p>Running mobile arm bag sports arm bag</p><p>Fashionable and dynamic design, comfortable and breathable fabric, listening to music while exercising, decompression and relaxation mode, touch operation, multi-purpose use, when exercising, your mobile phone and key will never worry about no place to put!</p><p>Mobile bag running mobile arm bag</p><p>The close fitting design is suitable for various sizes of mobile phones. The earphone hole design can put keys, pocket money and cards.</p><p>Double bag mobile phone arm bag, 3D stereo design, prismatic shading, color matching design is simple and dynamic. Very suitable for gym, running, hiking, cycling, outdoor sports. Enjoy the joy of sports, running is more exciting.</p><p>Running mobile arm bag arm bag with arm bag</p><p>Independent main bag and sub bag design, the items can be classified and placed, the main bin can receive large items such as change, and the sub bin can receive car keys and other items. With it, there is no place for sports items</p><p><br/></p>',3,1,'/upload/20201228\\1b64a5cd304888c87ef441a2ff6156c0.jpg'),(6,'1582944997','1582945003','How to choose outdoor travel bag? Eight categories make you clear','<p>A good waist bag should not only be practical, but also be able to stand and match well. It is suitable for: gym, city jogging, marathon, etc. and all fitness sports~</p><p>Outdoor men&#39;s and women&#39;s running and riding waistpack</p><p>A small and portable waist bag, small size, but enough to accommodate carry on items. High quality nylon fabric, accessories, various back methods, whatever you want.</p><p>Running waistpack sports kettle waistpack</p><p>The lightweight and breathable sponge mesh design can prevent sweat from seeping into the bag and has strong stability. No matter riding or climbing, your belongings will not shake due to movement. Suitable for a variety of environments, such as travel, outing, camping, cycling, fishing, etc.</p><p>Unique design, no lock, hands free, waist storage balance movement, fashionable modeling, multi mouth design convenient to listen to music, bid farewell to the silence of movement. At the same time, it can effectively reduce the shaking caused by the movement. Wearing it is like a close fitting clothing, light and soft, comfortable to use.</p><p>Multifunctional sports bag outdoor small waist bag</p><p>The close fitting design, using light and thin fabric, can produce excellent close fitting and comfortable feeling, so that you don&#39;t swing in the movement, more flexible.</p><p>Outdoor sports running waistpack for men and women</p><p>The pocket can hold 6-inch mobile phone, key, energy stick and pocket money. Safe and reflective night running device, breathable and sweat-wicking, effectively prevent water splashing. Let you fall in love with cool run~</p><p>Cross the boundary between classic and fashion, do not follow the design of non square and round tread distance, innovate fashion with unique simple style, release your hands, and let your change, mobile phone and small items go with you!</p><p>Running mobile arm bag sports arm bag</p><p>Fashionable and dynamic design, comfortable and breathable fabric, listening to music while exercising, decompression and relaxation mode, touch operation, multi-purpose use, when exercising, your mobile phone and key will never worry about no place to put!</p><p>Mobile bag running mobile arm bag</p><p>The close fitting design is suitable for various sizes of mobile phones. The earphone hole design can put keys, pocket money and cards.</p><p>Double bag mobile phone arm bag, 3D stereo design, prismatic shading, color matching design is simple and dynamic. Very suitable for gym, running, hiking, cycling, outdoor sports. Enjoy the joy of sports, running is more exciting.</p><p>Running mobile arm bag arm bag with arm bag</p><p>Independent main bag and sub bag design, the items can be classified and placed, the main bin can receive large items such as change, and the sub bin can receive car keys and other items. With it, there is no place for sports items</p><p><br/></p>',0,0,'/upload/20200229/6f839ab6368946a577126195d16ae67f.jpg'),(7,'1582945151','0','How to pack diapers correctly? 90% of parents are wrong','<p>Do you really bag your baby with diapers?</p><p>This must do every day, a few inadvertent small movements, may bring harm to the baby.</p><p>The mistakes parents often make when they pack diapers</p><p>1. Feet raised too high</p><p>When some parents change diapers for the baby, they lift the baby&#39;s feet up, almost the whole back is lifted up, several times a day, which is very harmful to the baby&#39;s spine.</p><p>Note: when lifting the baby&#39;s buttocks, the legs should not be more than 45 degrees away from the bed.</p><p>Baby&#39;s legs are not more than 45 ° from the ground</p><p>2. Touch the baby&#39;s foot</p><p>When changing diapers, if you touch the sole of your baby&#39;s feet, it will trigger the baby&#39;s original reflex - step reflex, which will make the baby kick and kick at random. If you are not careful, you may get it in the stool!</p><p>Don&#39;t touch your baby&#39;s feet when lifting his legs.</p><p>3. Every time I change a diaper, I wash my butt</p><p>Wash your baby&#39;s butt with warm water in the morning and evening every day. If your baby has a lot of poop, it&#39;s recommended to wash it. If you pull less poop, you don&#39;t need to wash it. Rinse the wet tissue with warm water, wash off the mucus on it, and then wipe your baby&#39;s butt (you can also use cotton soft tissue to wipe the baby&#39;s butt with warm water). Baby&#39;s skin will naturally secrete a layer of oil, forming a protective film, if over cleaning, it will destroy the protective film, easy to red ass oh.</p><p>4. Change the diaper immediately after feeding</p><p>When you are full, turn the baby around, so that the baby can easily spit out milk. If you have enough urine, please change the diaper before feeding.</p><p>5. Put the clean diaper under in advance when changing the diaper</p><p>In this way, the baby&#39;s small butt is raised. Long term operation is not conducive to the baby&#39;s spine, and dirty diapers are easy to contaminate new diapers. Mr. an, yuezi&#39;s tutor for Yuesao, suggests that you can put a disposable diaper under the baby&#39;s butt, so that you are not afraid that the baby is changing the diaper.</p><p>Before changing diapers, a disposable diaper pad can be placed under the baby&#39;s butt.</p><p>Parents should pay attention to the above five mistakes. Don&#39;t make them again, or the baby will be upset!</p><p>Show you the right diaper process</p><p>Tool preparation:</p><p>Clean diapers, baby specific wet tissue, baby specific dry tissue, diaper pad (disposable care pad), special small towel, special butt basin and warm water.</p><p>Emotional preparation:</p><p>Smile and communicate with your baby: &quot;little baby, Auntie changed your diapers, we are clean babies.&quot;.</p><p>Operation steps:</p><p>》(1) Judge whether the baby&#39;s diaper is full or stinky. There is a long yellow line running through the diaper, which is the urine volume display strip. When all the display strips turn blue, it means that they should be replaced. Gently open the leak proof enclosure to see if the baby stinks.</p><p>》(2) Let the baby lie flat on the diaper pad, untie the waist patch of the diaper, and then stick it back to avoid sticking to the baby&#39;s delicate skin. The male baby often starts to pee at this time, so after untiing the diaper, still leave the first half of the diaper at the penis for a few seconds, waiting for him to finish peeing.</p><p>》(3) After opening the diaper, if there is feces, wipe the residual feces around the anus with a relatively clean diaper inner surface.</p><p>Hold the baby&#39;s ankles in one hand and lift them up. A finger is clamped between the baby&#39;s ankles to avoid the baby&#39;s pain caused by the compression of the two legs. The legs are not more than 45 degrees from the bed, and the dirty diapers are pulled out. Note: do not touch the baby&#39;s sole during operation.</p><p>》(4) If there is a large area of fecal contamination, clean the baby&#39;s buttocks.</p><p>》(5) After the buttocks are clean and dry, open the new diapers, hold up the baby&#39;s buttocks, place the new diapers under the baby&#39;s buttocks, wrap the rear side of the diapers around the buttocks, with the top edge reaching the waist, and the folding line in the middle of the diapers is at the bottom of the buttocks;</p><p>Advantages of baoleye marketing team</p><p>1. Support agent push and drainage. Every month, the team will sign up for some shopping malls or shopping malls push activities. Agents in the team can participate free of charge, and all traffic belongs to the agent. For example, the Miss Universe competition sponsored by baoleye team in August 2017 is very popular on the spot, and the push and drainage for the agent is very successful.</p><p>How to pack diapers correctly? 90% of parents are wrong</p><p>2. Hand teaching agent Internet precise drainage (Theory + Practice)</p><p>3. A full-time customer service specialist is set up in the team to serve each agent and the agents recruited by the agent, so as to ensure the fastest response to your problems.</p><p>4. A full-time material number specialist is set up in the team to take real photos and collect a large number of Miffy diaper materials every day, only for the team of baoleye</p><p>Internal sharing.</p><p>5. Baole group&#39;s highest standard warehouse is located in Jilin Province, covering an area of more than 20000 square meters, with complete fire-fighting facilities, occupying favorable geographical positions in the three eastern provinces, Beijing, Tianjin, etc. Although Mifei diapers are issued by yuncang, Hangzhou headquarters, and promised to deliver within 72 hours without the agent&#39;s own packing and delivery, Baole group will store a large number of spot goods for the agent, and more effectively solve the problems in the three northeastern provinces The problem of customers&#39; receiving time limit, together with the headquarters of Miffy company, occupies one south and one north, giving customers a faster and more pleasant shopping experience.</p><p>How to pack diapers correctly? 90% of parents are wrong</p><p>6. Excellent training course of Miffy business school, internal training of baolexi team, and theme sharing.</p><p>Miffy diapers Product Brief:</p><p>1. International brand, Royal Dutch classic, international Miffy cartoon image endorsement.</p><p><br/></p><p><br/></p>',18,1,'/upload/20201228\\8e587b101248f81337b48955b9ad405c.JPG'),(8,'1582945438','0','Easy to change, let the backpack become your right-hand man!','<p><br/></p><p><br/></p><p><img src=\"/upload/20201228\\755589c8b9c532f34096ddf399ebabdc.jpg\"/></p><p>In fact, a good backpack is as important as a mobile phone. Go out, mobile phone in hand, I have, smart phone has been integrated into every part of our daily life. The same is true of the backpack, which can bring us a sense of relaxation and security during the journey.</p><p>This sense of security is not only because it contains our necessities, but also because it can bring us comfortable company and become our right-hand assistant in life and work. Therefore, it is very important to choose a suitable backpack for you. So, someone may ask: what kind of backpack can be regarded as a right-hand assistant? Next, let&#39;s go to understand with Xiaobian.</p><p><br/></p><p><br/></p>',25,1,'/upload/20201228\\3cfde3e1b188c81987a045f2ab67864a.jpg');

#
# Structure for table "gw_customer_eval"
#

CREATE TABLE `gw_customer_eval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `cname` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `content` text COMMENT '评价',
  `job` varchar(255) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='客户评价';

#
# Data for table "gw_customer_eval"
#

INSERT INTO `gw_customer_eval` VALUES (1,'1578644524','1579084260','刘德华','CEO','/upload/20200111\\57689baf2cc13a894845d7d192b5d578.jpg','杠杠的达到大蛇大蛇',NULL),(2,'1578734506','1579084679','Seven','CTO','/upload/20200111\\7f139c6e8cc2f08935a6fd00a87782a5.jpg','I want to buy ten bags',NULL),(3,'1578734526','1578734657','达到','大萨达','/upload/20200111\\5d624fbb70f367f702b2c1a8813c9bc6.jpg','打',NULL),(4,'1579083483','1579083490','d','d','/upload/20200115/6662fcdab3691a2876cd3802b47e58a7.jpg','dd',NULL),(5,'1579083946','0','Tim','America','/upload/20210318\\e48834e9b8e70b65a038d06ba651ed55.gif','Jamie and Marvin were a pleasure to work with. They were able to understand my requirements and ship a sample to me right away. During the customization process, Jamie was very attentive to all my requests. I would gladly work with Jamie and Marvin again.',NULL),(6,'1579084551','0','Aelxs','CEO','/upload/20210318\\d87905174e9a7b8b37c82d737a1313ac.jpg','product was of very high quality. and every details was carefully made. worked with Annie and he was very attentive and communicative.',NULL),(7,'1579084555','0','Robben','CEO','/upload/20210318\\6d179fbf800beb098ae7676621f48bd1.jpg','Marvin made a sample of our prototype backpack. Jamie dealt with our order and her communication was excellent. She was very thorough when reviewing the specification',NULL);

#
# Structure for table "gw_factory"
#

CREATE TABLE `gw_factory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `downs` int(11) DEFAULT '0',
  `fileurl` varchar(255) DEFAULT NULL,
  `od` int(11) DEFAULT '0',
  `topimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='工厂文件';

#
# Data for table "gw_factory"
#

INSERT INTO `gw_factory` VALUES (1,'Design patent certificate','工作簿1.xlsx','0.01','1578736352','1582702194',0,'/upload/20200111\\1e3a3f3c38ec1038e7397edec660ac16.xlsx',5,'/upload/20200115/647b6d0a7e81330afdb65bbd3427665e.jpg'),(2,'达到','工作簿1.xlsx','0.01','1578736681','1578736810',0,'/upload/20200111\\2e3cf31c12064db1a130c8b678ad07c5.xlsx',0,NULL),(3,'撒大大','工作簿1.xlsx','0.01','1578736879','1578736889',0,'/upload/20200111\\e1445dc94928930794ccff5aedbc271a.xlsx',0,NULL),(4,'Trademark certificate','Trademark certificate.xls','0.26','1578737041','1582702194',0,'/upload/20200115/7d6d44a92af79a5f624d6085e5a3af87.xls',9,'/upload/20200115/5590a3c994a15bae9af82249d6e379ee.jpg'),(5,'D','2020国家公务员考试面试名单gm.xlsx','3.52','1579083366','1579083373',0,'/upload/20200115/8ffd8474c814e84ffcfcdd29a4523b3b.xlsx',0,''),(6,'Patent registration','222.doc','0.01','1582698830','1582699658',0,'/upload/20200226/c2d60ff0add5c1af7383c65c4a125b73.doc',0,'/upload/20200226/c16a17e3957d1c7e11730b5cd2c356dc.jpg'),(7,'Patent registration','222.doc','0.01','1582699023','1582699653',0,'/upload/20200226/53bae6db25e9678710ede03e2c64ab97.doc',0,'/upload/20200226/9b53f35c9c59e39fdf606556655209c9.jpg'),(8,'Patent registration','222.doc','0.01','1582699076','1582699662',0,'/upload/20200226/d0da9838753ca3488dc7f8b0d3734751.doc',0,'/upload/20200226/8f40e85e808f3e07b5f20539a036b04a.jpg'),(9,'Patent registration','222.doc','0.01','1582699097','1582699663',0,'/upload/20200226/a1bc3c31f207b7b13e1f083e9790b94c.doc',0,'/upload/20200226/b460ccf86dd290be12630980bddffae1.jpg'),(10,'Patent registration','ASTM测试报告.doc','2.16','1582699424','1582699665',0,'/upload/20200226/0409a9c44e826ef3a88f53128e4a6f37.doc',0,'/upload/20200226/5d306d90284fee185e7404944a997763.jpg'),(11,'Patent registration','CE和ROHS测试报告.doc','1.97','1582699557','1582699667',0,'/upload/20200226/91db9ff1078ee57603d2cbb4ce8f9193.doc',0,'/upload/20200226/abe99af29439001194804a47f4f024a5.jpg'),(12,'Patent registration','1.doc','0.01','1582700867','1582702194',0,'/upload/20200226/fecb7851224e75660e04e071460896ee.doc',0,'/upload/20200226/9741d04c93a3d76f60459707005af996.png'),(13,'Patent registration','1.doc','0.01','1582700887','1582702194',0,'/upload/20200226/901b488e482aaad996b999dfa365e9cb.doc',0,'/upload/20200226/197177763d35b8b6bfbe70ee456efaea.png'),(14,'Patent registration','1.doc','0.01','1582700913','1582702194',0,'/upload/20200226/ae0f375c618aaadc1d3f2f948cdaa82a.doc',0,'/upload/20200226/83f5530654246bae98915c3aae64aa00.png'),(15,'Patent registration','1.doc','0.01','1582700932','1582702194',0,'/upload/20200226/aad35954a82cc35c6132e37da4c86f73.doc',0,'/upload/20200226/29b903039b1f87146da8994b2b8d5293.png'),(16,'Patent registration','1.doc','0.01','1582700959','1582702194',0,'/upload/20200226/b47ac0be22537e07d15347851379ce04.doc',0,'/upload/20200226/01ec121d5588dc437f8d5b642e228e17.jpg'),(17,'Patent registration','1.doc','0.01','1582700973','1582702194',0,'/upload/20200226/10f2e2a37645dd36faeea33dadcb7660.doc',0,'/upload/20200226/fe1243a0c0e0b6249df7c029a1561f9e.jpg'),(18,'Patent registration','1.doc','0.01','1582700991','1582702194',0,'/upload/20200226/8f99aa2ea5d5194679788d0ad8551361.doc',0,'/upload/20200226/086f3be6caf18d71d1f69b4681ce2948.jpg'),(19,'Patent registration','1.doc','0.01','1582701008','1582702194',0,'/upload/20200226/cb655f9e9f0b14536f67a46aa5ad8980.doc',0,'/upload/20200226/e0735ae4f6f8a5c81bc9ebe9e9499463.jpg'),(20,'Patent registration','ASTM测试报告 (2).doc','1.66','1582701038','1582702194',0,'/upload/20200226/0d5e5032d51acfb467a320e0804b0051.doc',0,'/upload/20200226/ebd6092451eb0c6c28ea440d617c8c50.png'),(21,'Patent registration','ASTM测试报告 (2).doc','1.66','1582701038','1582702194',0,'/upload/20200226/0d5e5032d51acfb467a320e0804b0051.doc',0,'/upload/20200226/ebd6092451eb0c6c28ea440d617c8c50.png'),(22,'Patent registration','CE和ROHS测试报告 (2).doc','1.80','1582701060','1582702194',0,'/upload/20200226/5d7ce1e3acd736b820393fdddf468113.doc',0,'/upload/20200226/28f7c854e69acff3c32273162c526152.png'),(23,'Patent registration','fda测试报告.doc','1.17','1582701082','1582702194',0,'/upload/20200226/f0dd0234585f65b7267daa254d200ebe.doc',0,'/upload/20200226/b97cac7265b57944e90ac83d490728c5.png'),(24,'Patent registration','ios认证证书.doc','0.49','1582701103','1582702194',0,'/upload/20200226/27614cd33d09ad61b956bb1dfcee5092.doc',0,'/upload/20200226/ea163b7b32f03e43338c559dfb02f2b0.png'),(25,'Certificate registration','ASTM测试报告.doc','1.66','1582702234','1582702868',0,'/upload/20200226/bda6f848d5114f1d036ae009fe1070fc.doc',0,'/upload/20200226/eb15b2ce040f7a78fd40c484c49bae08.png'),(26,'Certificate registration','CE和ROHS测试报告.doc','1.80','1582702361','1582702868',0,'/upload/20200226/0ffe7e7373be509fa5a3644d6ac2f225.doc',0,'/upload/20200226/39345940dacbafe4452a6421ce3c009e.png'),(27,'Certificate registration','fda测试报告.doc','1.17','1582702383','1582702868',0,'/upload/20200226/0d7ce9605d6f2b7e33a284f45961ecb8.doc',0,'/upload/20200226/b2eeae66634266a4b20b91a3aa507254.png'),(28,'Certificate registration','ios认证证书.doc','0.49','1582702411','1582702868',0,'/upload/20200226/79ab871e4c91e9d16ee5f21aacfa386b.doc',0,'/upload/20200226/226ef564d86bdc12ff1187905e3c346e.png'),(29,'Certificate registration','商标注册证.doc','0.01','1582702503','1582702868',0,'/upload/20200226/57c85b4fa43e63547a02dd686de541c2.doc',0,'/upload/20200226/c07ded288e2956f4a418a6d37dcb3577.png'),(30,'Certificate registration','商标注册证.doc','0.01','1582702535','1582702868',0,'/upload/20200226/1b22cd3373714f153b8a53cacec659b1.doc',0,'/upload/20200226/6070cd9c8372bd4788421f2863b8e4ca.png'),(31,'Certificate registration','ce证书.doc','0.01','1582702597','1582702868',0,'/upload/20200226/e85168ca9a912b1dd0cffb46f4a1dc7b.doc',0,'/upload/20200226/d7bf6d746d13fa70e88a5af9d997d795.png'),(32,'Certificate registration','商标注册证.doc','0.01','1582702630','1582702868',0,'/upload/20200226/74fe91d7e597d1f1a0a321bcc82211da.doc',0,'/upload/20200226/92d954c36dd626ea7e435ec939fc6ff8.jpg'),(33,'Certificate registration','外观设计专利证书.doc','0.01','1582702650','1582702868',0,'/upload/20200226/3022abc56e696085944dd61d4fdef873.doc',0,'/upload/20200226/94137576ce70e72bffa1427a1c311f5b.jpg'),(34,'Certificate registration','外观专利登录副本.doc','0.01','1582702668','1582702868',0,'/upload/20200226/1e9ad37f4112c67016deda06e7a9297a.doc',0,'/upload/20200226/76b6b6a9109d017d1368493143ae8c1b.jpg'),(35,'Certificate registration','childrens product certificate.doc','0.01','1582702686','1582702709',0,'/upload/20200226/fb92f487b83ded6dde2c84c6db0682a7.doc',0,'/upload/20200226/2aa2941e7b01440cb0cafbfd405c038b.jpg'),(36,'Certificate registration','childrens product certificate.doc','0.01','1582702720','1582702868',0,'/upload/20200226/21f4286f526970b872ee323dbd15447f.doc',0,'/upload/20200226/01207e2c9708af6aa671a7a98e46dd4b.jpg'),(37,'Certificate registration','childrens product certificate.doc','0.01','1582702739','1582702868',0,'/upload/20200226/93a4bbda3ea93fec71ac0d086001ab98.doc',0,'/upload/20200226/f8ecac000841817911f046746e148361.jpg'),(38,'Certificate registration','Trademark registration certificate.doc','0.01','1582703416','0',0,'/upload/20200226/dc88e33ea0ae07ddc5d114f513bd19ec.doc',16,'/upload/20200226/0d8f819007db7de3e3643e5a376ce59f.jpg'),(39,'Certificate registration','Appearance design patent certificate.doc','0.01','1582703562','0',0,'/upload/20200226/fa0ac6cbe77245a52397a78d021e81fc.doc',15,'/upload/20200226/9eda6af8260321cac979bec5ddb4a5b4.jpg'),(40,'Certificate registration','Copy of patent register.doc','0.01','1582703634','0',0,'/upload/20200226/a970f0b205520dbc60a0a8f07a9bce23.doc',14,'/upload/20200226/446dd7adc229bd04e32d3c011b570a74.jpg'),(41,'Certificate registration','Copy of patent register.doc','0.01','1582703695','0',0,'/upload/20200226/213196418c386795fa4928ff88aeb60b.doc',13,'/upload/20200226/67e823c23444f0e797e0a6fcb94a7df3.jpg'),(42,'Certificate registration','childrens product certificate.doc','0.01','1582703736','0',0,'/upload/20200226/b6caa7879a518e9fa71e1fbd6fad25dd.doc',12,'/upload/20200226/704db542e65ec1aa5bb1c3a7c7a60658.jpg'),(43,'Certificate registration','childrens product certificate.doc','0.01','1582703763','0',0,'/upload/20200226/50b09086f06b704e3b19947abd9b0d01.doc',11,'/upload/20200226/0a7d759fb5dff6e011f1b89077da623a.jpg'),(44,'Certificate registration','ASTM Test Report.doc','1.66','1582703858','0',0,'/upload/20200226/00eb7971259301fd3a30c17d73adea50.doc',10,'/upload/20200226/91e603c12a4feaa628e05f78d48cf683.png'),(45,'Certificate registration','CE and ROHS test report.doc','1.80','1582703923','0',0,'/upload/20200226/28a256759a54c9564c23f81228fdfefb.doc',9,'/upload/20200226/c24cb5462668f4c9960770d86151f49a.png'),(46,'Certificate registration','CE certificate.doc','0.01','1582703976','0',0,'/upload/20200226/3bbf740d94f749eaec6f78488c3cbd85.doc',8,'/upload/20200226/13ef0288787030a77578830f763a25b3.png'),(47,'Certificate registration','FDA test report.doc','1.17','1582704024','0',0,'/upload/20200226/443b723cc3a249b39dc8ae3b6f39bf7a.doc',7,'/upload/20200226/32d777cfc78485e299f33812637359df.png'),(48,'Certificate registration','IOS certificate.doc','0.49','1582704088','0',0,'/upload/20200226/9517c75018dc8a024710d03980b4bf97.doc',6,'/upload/20200226/bedf01bdf39c5d887cf90a81be78c76c.png'),(49,'Certificate registration','RoHS certificate.doc','0.01','1582704144','0',0,'/upload/20200226/0c5e8cf8429589563391ac71dba0e378.doc',5,'/upload/20200226/f073c7c8ad82e635a6670b656cd0e4e2.png'),(50,'Certificate registration','trademark.doc','0.01','1582704188','0',0,'/upload/20200226/24fd4ac9295c36ba540c917b1c6e7061.doc',4,'/upload/20200226/310e99ede46b187aaa0a171626012725.png'),(51,'Certificate registration','trademark.doc','0.01','1582704226','0',0,'/upload/20200226/83dd7101fdea5047216bfdda634eddbf.doc',3,'/upload/20200226/7f61c47d6245ceb4c31f239590ca781d.png'),(52,'ISO quality management system certification','ISO.doc','0.45','1589941828','0',0,'/upload/20200520/49a9b4340cddbcf83c7840d82851fcc1.doc',2,'/upload/20200520/30f6d9fdd13b38492bed3cedbf542e99.jpg'),(53,'ISO quality management system certification','ISO.doc','0.47','1589941902','0',0,'/upload/20200520/18cb487d425d5c2a10f6936bb1be923f.doc',1,'/upload/20200520/d34ce5b924bb1610341b6a8515ef69d6.jpg');

#
# Structure for table "gw_lunbo"
#

CREATE TABLE `gw_lunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `od` int(11) DEFAULT '0' COMMENT 'asc',
  `gurl` varchar(255) DEFAULT NULL,
  `topimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='首页轮播';

#
# Data for table "gw_lunbo"
#

INSERT INTO `gw_lunbo` VALUES (1,'1578644524','1578896887','轮播1',1,'http://www.gwstr.com','/upload/20200110\\b7a59d085fecc4c57dc432e9c1f94769.jpg'),(2,'1578644707','1578896889','轮播2',2,'http://www.gwstr.com','/upload/20200110\\5e764041543ff22b062a2497e21e8513.jpg'),(3,'1578645067','1578645077','轮播6',2,'2',''),(4,'1578896926','1608881657','轮播1',1,'/','/upload/20200519/28a9670d9bf30e16c5bf4daa5cdffb1e.jpg'),(5,'1578896948','1608881655','轮播2',2,'/','/upload/20200519/614475db995dee51427e559eca4eb7d2.jpg'),(6,'1578896968','1579082687','轮播3',3,'/','/upload/20200115/aaf34b2e2542256c0c1b29588571ca9b.jpg'),(7,'1579082719','1608881653','轮播3',3,'/','/upload/20200519/1235424b0a479fdd6b0187f6ab119eb8.jpg'),(8,'1608883010','0','轮播1',1,'/','/upload/20201225\\82aa0a3df9a40739eb886b7c71d7cd40.jpg'),(9,'1608883038','0','轮播2',2,'/','/upload/20201225\\2354e2abb1d3b80dc59e0b4cd81d9e99.jpg'),(10,'1608883066','0','轮播3',3,'/','/upload/20201225\\7e384886ad1e4c3d9e5e44bb402cac79.jpg'),(11,'1608883103','0','轮播4',4,'/','/upload/20201225\\277d28a34920c88899017b8320078cf9.jpg');

#
# Structure for table "gw_messages"
#

CREATE TABLE `gw_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `msg_title` varchar(255) DEFAULT NULL,
  `nsubject` varchar(255) DEFAULT NULL COMMENT '学科',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `whatsapp` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言信息';

#
# Data for table "gw_messages"
#

INSERT INTO `gw_messages` VALUES (1,'1615968197','1615968216','123456','127.0.0.1','游客3731',NULL,'5464646',NULL,'footer',NULL,NULL,NULL,NULL);

#
# Structure for table "gw_partner"
#

CREATE TABLE `gw_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='合作';

#
# Data for table "gw_partner"
#

INSERT INTO `gw_partner` VALUES (1,'ANC','/upload/20210318\\f738c018064b00992256054e30c5ee4c.png','','1615964725','0',0);

#
# Structure for table "gw_photowall"
#

CREATE TABLE `gw_photowall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='照片墙';

#
# Data for table "gw_photowall"
#

INSERT INTO `gw_photowall` VALUES (1,'We Wall','/upload/20210317\\07713c23031e384deed309731c30b6ab.jpg','1615972717','1615972717','0'),(2,'Edg FA','/upload/20210317\\e41bc0f7427333196d0d3422b7e1995a.jpg','1615972737','1615972737','0'),(3,'CkF WWE','/upload/20210317\\9e1d9706e2704a508dc48c0503d076ad.jpg','1615972762','1615972762','0');

#
# Structure for table "gw_tellus"
#

CREATE TABLE `gw_tellus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_add` varchar(255) DEFAULT NULL,
  `firm_emil` varchar(255) DEFAULT NULL,
  `firm_live` varchar(255) DEFAULT NULL,
  `firm_phone` varchar(255) DEFAULT NULL,
  `firm_gdtell` varchar(255) DEFAULT NULL,
  `Facebook` varchar(255) DEFAULT NULL,
  `Linkedin` varchar(255) DEFAULT NULL,
  `Twitter` varchar(255) DEFAULT NULL,
  `Instagram` varchar(255) DEFAULT NULL,
  `keepus` text COMMENT '保持联系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系我们';

#
# Data for table "gw_tellus"
#

INSERT INTO `gw_tellus` VALUES (1,'3F,Boya Building,Nanpu Industrial Area,Quanzhou,Fujian,China','marvin@junyuanbags.com','','0086-17750020688','0086-595-22868052','','','iverson51940','','<ul class=\"ny-con-ul clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>111</p></li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><p><br/></p>');

#
# Structure for table "gw_videos"
#

CREATE TABLE `gw_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `videourl` text,
  `topimg` varchar(400) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `hot` int(11) DEFAULT '0' COMMENT '1',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='视频';

#
# Data for table "gw_videos"
#

INSERT INTO `gw_videos` VALUES (1,'视频1','<p>送送送送送送所所所所所所所所所所</p>','/upload/20200111\\27fd6c12123efa3024eaa940385f4768.mp4','/upload/20200111\\74ac8b8674bb96a75faa21c2921db8a2.jpg','1578644524','1579073449',1,17),(2,'唇色深s','<p style=\"white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">《京东用户注册协议》</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">版本更新日期：2019年8月24日</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">版本生效日期：2019年8月31日</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">一、服务条款的确认及接受</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、京东网站（指jd.com及其移动客户端软件、应用程序，以下称“本网站”）各项电子服务的所有权和运作权归属于“京东”所有，本网站提供的服务将完全按照其发布的服务条款和操作规则严格执行。您确认所有服务条款并完成注册程序时，本协议在您与本网站间成立并发生法律效力，同时您成为本网站正式用户。</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; text-indent: 2em; line-height: 21px; font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、根据国家法律法规变化及本网站运营需要，京东有权对本协议条款及相关规则不时地进行修改，修改后的内容一旦以任何形式公布在本网站上即生效，并取代此前相关内容，您应不时关注本网站公告、提示信息及协议、规则等相关内容的变动。您知悉并确认，如您不同意更新后的内容，应立即停止使用本网站；如您继续使用本网站，即视为知悉变动内容并同意接受。</span></strong></p><p><br/></p>','/upload/20200115/d39fbfbce9a3b86b3853ffbcf1e4cdaf.mp4','/upload/20200111\\ad219208c56ea28a368799f9839dc927.jpg','1578707738','1579073451',1,6),(8,'唇色深s',NULL,NULL,'/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579073438','1579081478',0,0),(9,'Waterproof Nylon Unisex Outdoor Travel Bag, Gym Bags with Sneaker Compartments 3','<p>Waterproof Nylon Unisex Outdoor Travel Bag, Gym Bags with Sneaker Compartments 3</p>','/upload/20200115/0e33532c04dfd25128b2b13f87d7dc01.MOV','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579073439','0',0,64),(10,'Quanzhou Junyuan Trading Company Show','<p>Quanzhou Junyuan Trading Company Show</p>','/upload/20200115/0e33532c04dfd25128b2b13f87d7dc01.MOV','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579082275','0',0,60),(11,'CESHI','<p>D3</p>','/upload/20200115/7e9ba795a73b599a6fa09a379ce5e7dd.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579083722','1579085535',0,14),(12,'test','<p>dsdsa</p>','/upload/20200115/f1cc671e6b8abf36ef9e9ff553f0fe94.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579083756','1579084384',0,5),(13,'阿玛尼','<p>轰轰轰吼吼吼</p>','/upload/20200115/21dee154192985253cdda8f6132e82f2.MOV','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579084812','1579138945',0,12),(15,'网络推广','<p>111<br/></p>','/upload/20200116/69cd945f1629dc56c58aa47ddc98fb64.qlv','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1579139790','1579139812',0,1),(16,'Backpack Black Technology','<p>Led creative backpack is equipped with a full-color LED screen, which allows you to edit and send all kinds of text and pictures, change the expression bag anytime and anywhere, and easily absorb powder and turn around the table.</p>','/upload/20200302/37b5c7ba132ee17f5349ef24961fd22e.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583132251','0',0,4),(17,'Military backpack','<p>For outdoor tourism, mountaineering, cycling, hiking, forest crossing, field operations</p>','/upload/20200302/fa9a2bc507d3e85c1cfa0ff0a782a7b4.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583132718','0',0,7),(18,'Multi function computer bag','<p>Multi function computer bag</p>','/upload/20200302/6fd4f3b74a8886acfc639d01d693a01a.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583132910','0',0,7),(19,'High capacity computer',NULL,'/upload/20200302/e7d2f415b0d39d72059e787c27a8eaf0.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583133609','0',1,9),(20,'Versatile leisure backpack',NULL,'/upload/20200302/76de5aa82ddb0698798496c47a545619.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583133742','0',1,19),(21,'Computer backpack with USB charging interface of headset',NULL,'/upload/20200302/3f089703cbba18af67ebb99b18012fab.mp4','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583133912','0',0,7),(22,'Cool trend Backpack','<p>Let you turn around on the street</p>','/upload/20200302/9d431d9e0db33b29a6d458a658e0b4aa.mov','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583134156','0',0,11),(23,'Versatile trend Backpack','<p>Versatile trend Backpack</p>','/upload/20200302/79c3b6b0ca413d7585fbeac23f4b1089.mov','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583134245','0',0,9),(24,'Versatile trend Backpack','<p>Versatile trend Backpack</p>','/upload/20200302/0c4ae81b46a634d1c618222912bf088f.png','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583134245','1583134524',0,1),(25,'Camouflage handbag','<p>Camouflage handbag</p>','/upload/20200302/0d4c5066ca613d6d49bf9fea94ca57f8.mov','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583134676','0',0,2),(26,'Camouflage handbag','<p>Camouflage handbag</p>','/upload/20200302/8c42ca121fe22336b079998cabd67fa9.mov','/upload/20201228\\fcaf4d827e6131ee4af5f42eedae272e.jpg','1583134925','0',0,16),(27,'Cool bag','<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">Surgical face masks are intended for wearing on the face (over the nose and mouth) and represent a physical barrier for fluids and larger particles. The masks should stop the transmision infectious agents between medical personnel and patient during surgical procedure, also stop transmission infectious agents from mouth and nose of asymptotic disease carriers or patients who have the clinical simptoms to healthy population.</span><br/><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">Firstly, tha face mask are using during surgical procedure to protect users from splashing potentialy contaminated particles and liquids. Also, face masks may be used in emergency situation as epidemic and pandemic, their function is to reduce the risk of spreading infection. The face mask have three layers with elastic band for positioning, one colour, universal size, dimensions 175mm x 95 mm, single use only. We are producing type II R. This product meets the requirements of the standard EN 14683.</span><br/><br/><strong style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\">CONTENTS OF SURGICAL FACE MASK</strong><br/><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">Nonwoven spunbond polypropylen 20-25 g/m². Bottom layer width 200 mm and upper layer width 185 mm. Nonwoven melt blown spunbond polypropylen 20-25 g/m². Middle layer - filter, width 185 mm. Plasticized wire consist aluminium wire coated with plastic mass. Length 100 mm and width 2 mm. The wire is placed on the top of the mask, above nose. Elastic bands for ears – Lycra coated by polyester fibers with high level of extensibility. Bands are placed on the both side of mask. Length 150-200 mm in a non-streched position.</span><br/><br/><strong style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\">PACKAGING</strong><br/><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">Surgical, non-sterile mask 10/1, 20/1, 30/1, 40/1, 50/1 packed in PE bags or packed in carton box 10, 20, 30, 40 and 50 pieces</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"/upload/20201228\\02ac355bc02a320de7a91bcb64f4477f.jpg\"/></span></p>','/upload/20200306/3b89e8d29a609bddef85bd1045db4f43.mov','/upload/20201228\\17c38dc145cab268652e92ed45ea33e9.jpg','1583457728','0',1,13);

#
# Structure for table "gw_webadmin"
#

CREATE TABLE `gw_webadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '登陆账户',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `mobile` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` varchar(255) DEFAULT NULL,
  `logintimes` int(11) DEFAULT '0' COMMENT '登陆次数',
  `delete_time` varchar(255) DEFAULT '0',
  `create_time` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lasttime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员列表';

#
# Data for table "gw_webadmin"
#

INSERT INTO `gw_webadmin` VALUES (4,'15060635933','0bcfd06df4dc41ccca3c3a4e454f7061','15060635933','127.0.0.1','1616060227',67,'0','1578991535','Fjjdjdj@qq.com','2021-03-18 10:46:07');

#
# Structure for table "gw_webbrowse"
#

CREATE TABLE `gw_webbrowse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "gw_webbrowse"
#

INSERT INTO `gw_webbrowse` VALUES (1,'127.0.0.1','1578466847',0),(2,'127.0.0.1','1578467226',0);

#
# Structure for table "gw_webconfig"
#

CREATE TABLE `gw_webconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `webname` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `contactus` text COMMENT '联系我们',
  `aboutus` text COMMENT '关于我们',
  `problems` text COMMENT '常见问题',
  `wzlogo` varchar(255) DEFAULT NULL,
  `dzlogo` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `wkeyword` varchar(255) DEFAULT NULL,
  `webdes` varchar(255) DEFAULT NULL,
  `records` varchar(255) DEFAULT NULL COMMENT '版权所有',
  `fwpasswrod` varchar(255) DEFAULT NULL COMMENT '访问密码',
  `adrs` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `wachat` varchar(255) DEFAULT NULL,
  `contantimg` varchar(255) DEFAULT NULL,
  `orgimg` text COMMENT '照片墙',
  `showVideoPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='官网配置';

#
# Data for table "gw_webconfig"
#

INSERT INTO `gw_webconfig` VALUES (1,'1578467226','1615971472','traffic signal light | solar traffic signal controller | loop detector | traffic signal lights for sale | led street lightL AND TRADING CO,LTD','官网','','<section><p style=\"box-sizing: inherit; margin-top: 0px; color: rgb(102, 102, 102); padding-top: 20px; margin-bottom: 0px !important;\">Quanzhou Realgood nonwoven Co.,Ltd established at 2003 located in quanzhou city, Quanzhou Realgood nonwoven Co.,Ltd established at 2003 located in quanzhou city,</p><p style=\"box-sizing: inherit; margin-top: 0px; color: rgb(102, 102, 102); padding-top: 20px; margin-bottom: 0px !important;\">Quanzhou Realgood nonwoven Co.,Ltd established at 2003 located in quanzhou city, Quanzhou Realgood nonwoven Co.,Ltd established</p><p><img src=\"http://www.fw.com/home/images/sss.png\" alt=\"\"/></p></section><p><section><p><img src=\"http://www.fw.com/home/images/sss.png\" alt=\"\"/></p><h3 style=\"box-sizing: inherit; font-family: inherit; line-height: 1.1; color: rgb(7, 140, 41); margin-top: 0px; margin-bottom: 10px; font-size: 24px; position: relative;\">COMMITMENT</h3><p style=\"box-sizing: inherit; margin-top: 0px; color: rgb(102, 102, 102); padding-top: 20px; margin-bottom: 0px !important;\">Quanzhou Realgood nonwoven Co.,Ltd established at 2003 located in quanzhou city, Quanzhou Realgood nonwoven Co.,Ltd established at 2003 located in quanzhou city,</p></section></p><p><br/></p>','<ul class=\"col-md-12 clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><h4 style=\"box-sizing: inherit; font-family: inherit; line-height: 33px; color: inherit; margin: 0px; font-size: 18px; padding: 0px;\">Q：Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?</h4><p style=\"box-sizing: inherit; margin-top: 10px; margin-bottom: 0px; color: rgb(102, 102, 102); overflow: hidden;\">A：Yes,but we will charge for the sample in advance,The fee can be refunded in full if you place an order meeting our MOQ afterwards.</p></li><li><h4 style=\"box-sizing: inherit; font-family: inherit; line-height: 33px; color: inherit; margin: 0px; font-size: 18px; padding: 0px;\">Q：Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?</h4><p style=\"box-sizing: inherit; margin-top: 10px; margin-bottom: 0px; color: rgb(102, 102, 102); overflow: hidden;\">A：Yes,but we will charge for the sample in advance,The fee can be refunded in full if you place an order meeting our MOQ afterwards.</p></li><li><h4 style=\"box-sizing: inherit; font-family: inherit; line-height: 33px; color: inherit; margin: 0px; font-size: 18px; padding: 0px;\">Q：Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?</h4><p style=\"box-sizing: inherit; margin-top: 10px; margin-bottom: 0px; color: rgb(102, 102, 102); overflow: hidden;\">A：Yes,but we will charge for the sample in advance,The fee can be refunded in full if you place an order meeting our MOQ afterwards.</p></li><li><h4 style=\"box-sizing: inherit; font-family: inherit; line-height: 33px; color: inherit; margin: 0px; font-size: 18px; padding: 0px;\">Q：Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?</h4><p style=\"box-sizing: inherit; margin-top: 10px; margin-bottom: 0px; color: rgb(102, 102, 102); overflow: hidden;\">A：Yes,but we will charge for the sample in advance,The fee can be refunded in full if you place an order meeting our MOQ afterwards.</p></li><li><h4 style=\"box-sizing: inherit; font-family: inherit; line-height: 33px; color: inherit; margin: 0px; font-size: 18px; padding: 0px;\">Q：Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?Can I ask for one sample before placing orders?</h4><p style=\"box-sizing: inherit; margin-top: 10px; margin-bottom: 0px; color: rgb(102, 102, 102); overflow: hidden;\">A：Yes,but we will charge for the sample in advance,The fee can be refunded in full if you place an order meeting our MOQ afterwards.</p></li></ul><p><br/></p>','/upload/20210316\\4d54a3a732c855b5f4491363bf3ee769.jpg','/upload/20201228\\13a8caf226cef3bf4ca49ff9db7754dc.JPG','http://www.gwstr.com/Desk.html','Quanzhou Junyuan\'s main Backpack Bag ,Diaper Bag ,Sterilizer Bag.Welcome to contact us.','Quanzhou Junyuan\'s main Backpack Bag ,Diaper Bag ,Sterilizer Bag.Welcome to contact us.','COPYRIGHT © QUANZHOU CITY,FUJIAN PROVINCE,CHINA. ALL RIGHTS RESERVED',NULL,'福建省泉州市xxxxx','183XXXXXXXX','A54S5@SDS.COM','154548SDFD','/upload/20210317\\bab6b9e05c8d1c3b6501439f177d7121.jpg','a:7:{i:0;s:53:\"/upload/20210317\\f111ce5b4c3dface30dcf972390b3b25.jpg\";i:1;s:53:\"/upload/20210317\\58181448a4fab177350d5de2acdf6f1d.jpg\";i:2;s:53:\"/upload/20210317\\4b257f4c9121aed2c709c66b881ad6f9.jpg\";i:3;s:53:\"/upload/20210317\\c7e3828cf03bd60f430ef727ea9573c6.jpg\";i:4;s:53:\"/upload/20210317\\70378e869ad303e7db3b398a449e9040.jpg\";i:5;s:53:\"/upload/20210317\\0eac2c0ebe9455ba8c5236f3ff1259bc.jpg\";i:6;s:53:\"/upload/20210317\\924fc8679ded3dc1560e83402460cf8e.jpg\";}','/upload/20210317\\af13a9c886754760bd7fb67c997e8361.mp4');

#
# Structure for table "gw_webnav"
#

CREATE TABLE `gw_webnav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `od` int(11) DEFAULT '0' COMMENT '排序',
  `delete_time` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='导航';

#
# Data for table "gw_webnav"
#

INSERT INTO `gw_webnav` VALUES (1,'产品','1578470581','1578470581',2,'0'),(2,'关于我们','1578470581','1578470581',3,'0'),(3,'联系我们','1578470581','1578470581',4,'0');

#
# Structure for table "gw_webproduc_cate"
#

CREATE TABLE `gw_webproduc_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0' COMMENT '父级id',
  `od` int(11) DEFAULT '0',
  `topimg` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "gw_webproduc_cate"
#

INSERT INTO `gw_webproduc_cate` VALUES (1,'PP Spunbond Nonwoven Fabric','1608973899','0',0,1,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm&amp;300mm arrow high flux traffic light with pedestrian traffic light. used in intersection and parking lot system.'),(2,'Mask Nonwoven Fabric','1608973911','0',0,2,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.'),(3,'Meltblown Nonwoven Fabric','1608973927','0',0,3,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(4,'Mask Nose Wire & Earloop','1608973940','0',0,4,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.'),(5,'SS SSS SMS Nonwoven Fabric','1608973962','0',0,5,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(6,'Nonwoven Table Cloth Roll','1608973975','0',0,6,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(7,'Pre cut TNT Tablecloth','1608973988','0',0,7,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(8,'Furniture Upholstery Fabric','1608974003','0',0,8,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(9,'Agriculture Nonwoven Fabric','1608974017','0',0,9,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(10,'Laminated Nonwoven Fabric','1608974033','0',0,10,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(11,'Embossed Nonwoven Fabric','1608974052','0',0,11,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.'),(12,'Perforated Nonwoven Fabric','1608974061','0',0,12,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.'),(13,'Disposable Nonwoven bedsheet','1608974070','0',0,13,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(14,'Printed Nonwoven Fabric','1608974080','0',0,14,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.'),(15,'Nonwoven Bag','1608974090','0',0,15,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','200mm pedestrian traffic light with arrow traffic signal or full ball traffic light with countdown timer sets for various traffic light applications.'),(16,'Mask','1608974099','0',0,16,'/upload/20201226\\e34b3241d46eda37399279c29134e4ee.jpg','100mm traffic signals light with traffic light module. It used at junctions, toll station, dockyards, warehouses or road construction.');

#
# Structure for table "gw_webproduct"
#

CREATE TABLE `gw_webproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT '0',
  `proname` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `orgimg` text COMMENT '图片',
  `note` varchar(255) DEFAULT NULL COMMENT '便签',
  `cate` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `des` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `serial_pay` varchar(226) DEFAULT NULL,
  `producing` varchar(255) DEFAULT NULL,
  `prod_clolr` varchar(255) DEFAULT NULL,
  `prod_port` varchar(255) DEFAULT NULL,
  `prod_time` varchar(255) DEFAULT NULL,
  `content` text,
  `labels` varchar(255) DEFAULT NULL,
  `topimg` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `update_time` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `fileName` varchar(255) DEFAULT NULL,
  `fileSize` varchar(255) DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `Specifications` text,
  `Project` text,
  `packaging` varchar(255) DEFAULT NULL COMMENT 'packaging',
  `charateristics` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `showVideoPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COMMENT='产品';

#
# Data for table "gw_webproduct"
#

INSERT INTO `gw_webproduct` VALUES (219,'1583395015','0','Wholesale custom logo printed sport travel gym duffel bag fashion custom foldable sport gym bag','/upload/20201228\\8dc6769c721c7f07733ea9aa5b90dbaf.JPG,/upload/20201228\\762b8075b75ee52b0a272183a62bd4cd.JPG',NULL,0,8,'Wholesale custom logo printed sport travel gym duffel bag fashion custom foldable sport gym bag','','TT,L/C,Credit Card,Trade Assurance','China','Customize','Xiamen,Shenzhen,Yiwu','25-45 days','<p><img src=\"/ueditor/php/upload/image/20190926/1569490092.jpg\" alt=\"1569490092.jpg\"/></p>','Wholesale custom','/upload/20201228\\8dc6769c721c7f07733ea9aa5b90dbaf.JPG',0,0,'1609128518',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'1583395122','0','Custom Sport Jean Travel Bag Fashion Denim Travel Duffle Bag With Shoe Sneaker Compartment','/upload/20201226\\88d955d6eded02a37a80700e84ba5caf.jpg,/upload/20201226\\4fd379a5a991aca155c3970ca39dcdc2.jpg',NULL,0,8,'Custom Sport Jean Travel Bag Fashion Denim Travel Duffle Bag With Shoe Sneaker Compartment','xfddwfg','TT,L/C,Credit Card,Trade Assurance','China','Customize','Xiamen,Shenzhen,Yiwu','25-45 days','<p><img src=\"/ueditor/php/upload/image/20190926/1569490092.jpg\" alt=\"1569490092.jpg\"/></p>','Custom Sport Jean Travel Bag','/upload/20201226\\88d955d6eded02a37a80700e84ba5caf.jpg',0,0,'1608978209',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'1583395219','0','Waterproof Nylon Unisex Outdoor Travel Bag Gym Bags with Sneaker Compartments Inner Laptop Compartment','/upload/20201228\\54352a11b6a82ae531316acc52682b09.jpg,/upload/20201228\\7bf76a3e2530097c5716249c0ff8e101.jpg',NULL,0,8,'Waterproof Nylon Unisex Outdoor Travel Bag Gym Bags with Sneaker Compartments Inner Laptop Compartment','Xiamen,Shenzhen,Yiwu','TT,L/C,Credit Card,Trade Assurance','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','<p><img src=\"/ueditor/php/upload/image/20190926/1569490092.jpg\" alt=\"1569490092.jpg\"/></p>','Waterproof','/upload/20201228\\54352a11b6a82ae531316acc52682b09.jpg',0,1,'1615887848',5,'主推口罩材料.doc','0.57','/upload/20201228\\67c8c23fe8a58bd9d4324f10857688a0.doc','<p><img src=\"/upload/20201228\\c86ba2fbbd77157227015a883b549f50.png\"/></p>','<p><img src=\"/upload/20201228\\0b04e3150c80cc736bb82947ff2c4e30.jpg\"/></p>','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','Xiamen,Shenzhen,Yiwu','/upload/20210316\\7d3856b51d96873d887d62ef72101a14.mp4');
