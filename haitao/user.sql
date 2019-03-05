/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 18:37:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(50) DEFAULT NULL,
  `a_content` varchar(50) DEFAULT NULL,
  `a_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', null, '文章1', null);
INSERT INTO `article` VALUES ('2', null, '文章2', null);
INSERT INTO `article` VALUES ('3', null, '文章3', null);
INSERT INTO `article` VALUES ('4', null, '文章4', null);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `self_price` varchar(10) DEFAULT NULL,
  `goods_num` varchar(11) DEFAULT NULL,
  `goods_img` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT '0' COMMENT '0正常 1删除 2待支付',
  `num` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('16', '17', '5', '新款秋冬女鞋', '171', '980', 'images\\manolo blahnik_pop_SH4921_010.png', '1', '6');
INSERT INTO `cart` VALUES ('17', '17', '12', '新中式书桌椅', '4567', '1230', '20181205\\0455780bfe3890d4c98be9d4ebbfd08c.jpg', '1', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT NULL,
  `is_nav` tinyint(4) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '家具', '0', '1', '1', null);
INSERT INTO `category` VALUES ('2', '家电', '0', '1', '1', null);
INSERT INTO `category` VALUES ('3', '进口食品', '0', '1', '1', null);
INSERT INTO `category` VALUES ('4', '彩妆', '0', '1', '1', null);
INSERT INTO `category` VALUES ('5', '洗衣机', '2', '1', '2', null);
INSERT INTO `category` VALUES ('6', '卧室家具', '1', '1', '2', null);
INSERT INTO `category` VALUES ('7', '床头柜', '6', '1', '2', null);
INSERT INTO `category` VALUES ('8', '衣柜', '6', '1', '2', null);
INSERT INTO `category` VALUES ('9', '书房儿童', '1', '1', '2', null);
INSERT INTO `category` VALUES ('10', '儿童床', '9', '1', '2', null);
INSERT INTO `category` VALUES ('11', '巧克力', '3', '1', '2', null);
INSERT INTO `category` VALUES ('13', '办公零食', '3', '1', '2', null);
INSERT INTO `category` VALUES ('15', '粉底液', '4', '1', '2', null);
INSERT INTO `category` VALUES ('16', '口红', '4', '1', '2', null);
INSERT INTO `category` VALUES ('17', '眼线笔', '4', '1', '2', null);
INSERT INTO `category` VALUES ('18', '抽烟机', '2', '1', '2', null);
INSERT INTO `category` VALUES ('20', '美妆护理', '0', '1', '2', '1542354241');
INSERT INTO `category` VALUES ('21', '护肤品', '5', '1', '2', '1542354475');
INSERT INTO `category` VALUES ('22', '精品女装', '0', '1', '2', '1542415850');
INSERT INTO `category` VALUES ('27', '毛妮毛衣', '22', '1', '2', '1542422431');
INSERT INTO `category` VALUES ('28', '手机数码', '0', '1', '1', '1542762867');
INSERT INTO `category` VALUES ('29', '客厅家具', '1', '1', '2', '1542955774');
INSERT INTO `category` VALUES ('30', '女士下装', '22', '1', '2', '1542955969');
INSERT INTO `category` VALUES ('31', '当季流行', '22', '1', '2', '1542955993');
INSERT INTO `category` VALUES ('32', '家居服', '22', '1', '2', '1542956020');
INSERT INTO `category` VALUES ('33', '男士护肤', '20', '1', '2', '1542956056');
INSERT INTO `category` VALUES ('34', '身体女性', '20', '1', '2', '1542956129');
INSERT INTO `category` VALUES ('35', '厨房卫浴', '1', '1', '2', '1542956147');
INSERT INTO `category` VALUES ('36', '灯饰照明', '1', '1', '2', '1542956180');
INSERT INTO `category` VALUES ('38', '电脑整机', '28', '1', '2', '1542956291');
INSERT INTO `category` VALUES ('39', '硬件储存', '28', '1', '2', '1542956353');
INSERT INTO `category` VALUES ('40', '新品手机', '28', '1', '2', '1542956747');
INSERT INTO `category` VALUES ('48', '书房', '9', '1', '2', '1543489163');

-- ----------------------------
-- Table structure for com
-- ----------------------------
DROP TABLE IF EXISTS `com`;
CREATE TABLE `com` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `com_text` varchar(20) DEFAULT NULL,
  `com_is` int(1) DEFAULT '1',
  `pay_is` int(1) DEFAULT '1',
  PRIMARY KEY (`com_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com
-- ----------------------------
INSERT INTO `com` VALUES ('25', '洗面奶', '洗漱用品', '把脸洗白白', '2', '1');
INSERT INTO `com` VALUES ('16', '搓澡巾', '水果', '阿萨德a', '2', '2');
INSERT INTO `com` VALUES ('15', '卫生巾', '水果', '按时', '2', '2');
INSERT INTO `com` VALUES ('14', 'rgs', '水果', 'rs', '2', '1');
INSERT INTO `com` VALUES ('13', 'rgs', '水果', 'rs', '2', '1');
INSERT INTO `com` VALUES ('11', '按时', '水果', '按时', '2', '2');
INSERT INTO `com` VALUES ('12', '打算', '水果', '阿萨德a', '2', '2');
INSERT INTO `com` VALUES ('18', '按时', '水果', '按时', '1', '2');
INSERT INTO `com` VALUES ('19', 'rgs', '水果', '阿萨德a', '1', '2');
INSERT INTO `com` VALUES ('20', 'rgs', '水果', 'rs', '1', '1');
INSERT INTO `com` VALUES ('21', '按时', '水果', '按时', '1', '2');
INSERT INTO `com` VALUES ('22', '打算', '水果', '阿萨德a', '1', '2');
INSERT INTO `com` VALUES ('23', 'asa', '水果', 'dcasc', '1', '1');
INSERT INTO `com` VALUES ('24', 'rgs', '水果', 'rs', '1', '1');
INSERT INTO `com` VALUES ('26', 'av', '水果', 'Dbdd', '1', '2');
INSERT INTO `com` VALUES ('27', '小黑裙洗发水', '洗漱用品', '洗头发用的不能吃哦', '1', '1');
INSERT INTO `com` VALUES ('28', '安全套', '生活用品', '增加安全措施', '1', '1');
INSERT INTO `com` VALUES ('29', '印度神油', '生活用品', '增加润滑', '1', '1');

-- ----------------------------
-- Table structure for enroll
-- ----------------------------
DROP TABLE IF EXISTS `enroll`;
CREATE TABLE `enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` varchar(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enroll
-- ----------------------------
INSERT INTO `enroll` VALUES ('27', '17631001644', '5788', '1551338094', '0');

-- ----------------------------
-- Table structure for fenlei
-- ----------------------------
DROP TABLE IF EXISTS `fenlei`;
CREATE TABLE `fenlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fenlei
-- ----------------------------
INSERT INTO `fenlei` VALUES ('1', '水果');
INSERT INTO `fenlei` VALUES ('2', '蔬菜');
INSERT INTO `fenlei` VALUES ('3', '生活用品');
INSERT INTO `fenlei` VALUES ('4', '洗漱用品');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(45) DEFAULT NULL,
  `goods_text` varchar(20) DEFAULT NULL,
  `self_price` float DEFAULT NULL,
  `market_price` float DEFAULT NULL,
  `is_sell` tinyint(4) DEFAULT NULL,
  `is_new` tinyint(4) DEFAULT '2',
  `is_best` tinyint(4) DEFAULT '2',
  `is_hot` tinyint(4) DEFAULT '2',
  `goods_num` int(11) DEFAULT NULL,
  `goods_score` int(11) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_imgs` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `goods_desc` text,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `tu` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `fk_shop_goods_shop_category_idx` (`cate_id`) USING BTREE,
  KEY `fk_shop_goods_shop_brand1_idx` (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('5', '新款秋冬女鞋', '好皮，质量好，价格便宜', '171', '180', '1', '2', '1', '1', '980', '13', 'images\\manolo blahnik_pop_SH4921_010.png', '20181205\\d68927346e7cd6e00bf9014642ee2911.jpg|20181205\\393997b7260ebfc666f52296464f0e12.jpg|20181205\\6cde2dadaf355e37f289904443588f0a.jpg|', '1542768685', '<img src=\"http://www.shop.com/public/goodseditimgs/20181205\\1e82bad629e1fc4c459d50d1942c3960.gif\" alt=\"a\">', '31', '10', '1');
INSERT INTO `goods` VALUES ('7', '华为mete 20 pro', '配置高，速度快', '6999', '7103', '1', '1', '1', '1', '353', '130', 'images\\1540539988858 (1).png', '20181205\\cd84226720fd581cebdef0a708eae82a.jpg|20181205\\9e126baeea0b1ed3c93c8938405e700b.jpg|20181205\\aa566390c39b6d7d3e7fe42f806b7b00.jpg|', '1542856094', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\374b15309500721fcc93911c5dcb56a5.jpg\" alt=\"a\">', '40', '26', '1');
INSERT INTO `goods` VALUES ('8', '软皮沙发', '好皮，质量好，价格便宜', '4228', '5321', '1', '1', '1', '1', '123', '34', '20181129\\2f1d7cd0f40e3171c2e10c6d77feac52.jpg', '20181206\\080de00237297d467300c37fccc85aee.jpg|20181206\\381a00af613baff66a60cc6ac80f459a.jpg|20181206\\dee5038671e3090c4e60e2f22e6123bb.jpg|', '1542955760', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\db1a99dceeff78cc94400ad0504c68b6.jpg\" alt=\"a\">', '29', '3', '0');
INSERT INTO `goods` VALUES ('9', '休闲裤', '配置高，速度快', '122', '323', '1', '1', '2', '2', '23', '34', '20181129\\63434d6c0c02988572655972d353525e.jpg', '20181206\\37051b59a4c44f53eb478acf80f396a6.jpg|20181206\\cbaf2286a8fa5b5ecff6170bd189d345.jpg|20181206\\7bd6e1dde351bd5c067a11782011bbad.jpg|', '1542956401', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\64b979cdafb58aabe7981d8ea8a1bac2.jpg\" alt=\"a\">', '30', '14', '0');
INSERT INTO `goods` VALUES ('10', '阔腿裤', '好皮，质量好，价格便宜', '234', '354', '1', '1', '1', '2', '500', '55', '20181129\\352121b92b50f3bf03709379d94f267f.jpg', '20181206\\62b4663df46c27b22045f1fc781365bb.jpg|20181206\\31a10ce30f09d50ff7c8e69360cf5b70.jpg|20181206\\61e0cf89560e4e4a57ee9e8e64cb52da.jpg|', '1542956435', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\fedd4109fe20635c9f5cdbfeac619857.jpg\" alt=\"a\">', '30', '14', '0');
INSERT INTO `goods` VALUES ('11', '牛仔裤', '配置高，速度快', '34', '45', '1', '1', '1', '2', '23', '23', '20181129\\59dbcfab6f85a8f4142e16b36f9ad4c5.jpg', '20181206\\4082e68244bc0aea3328957c59bdb0d1.webp|20181206\\1ade099b6cd36d613a53726712520a67.jpg|20181206\\0cf7e5b1e3dcd3e93d1961a50f30e4f2.webp|', '1542956467', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\e90429778f5d3a10189d887df102d0bd.jpg\" alt=\"a\">', '30', '14', '0');
INSERT INTO `goods` VALUES ('12', '新中式书桌椅', '好皮，质量好，价格便宜', '4567', '6785', '1', '1', '2', '2', '1230', '100', '20181205\\0455780bfe3890d4c98be9d4ebbfd08c.jpg', '20181205\\151845b6ac0c799e347d78a6b9fe8815.jpg|20181205\\ad76013b093fc27933e39e1c7279862b.jpg|20181205\\629e5e7a50dd4b2eff6e832c4cb9c042.jpg|', '1542956606', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\748bb5a2218d4b41afac6ff879b6608a.jpg\" alt=\"a\">', '48', '19', '0');
INSERT INTO `goods` VALUES ('13', '水晶吊灯', '配置高，速度快', '3456', '5467', '1', '1', '1', '2', '13', '453', '20181129\\c81b4969d60e9f220a14fbb5b39a7c30.jpg', '20181205\\cd84226720fd581cebdef0a708eae82a.jpg|20181205\\9e126baeea0b1ed3c93c8938405e700b.jpg|20181205\\aa566390c39b6d7d3e7fe42f806b7b00.jpg|', '1542956633', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\bcdce7d14f0a77d153c147400d5cca24.jpg\" alt=\"a\">', '36', '16', '0');
INSERT INTO `goods` VALUES ('14', '浴霸集成', '好皮，质量好，价格便宜', '322', '445', '1', '1', '1', '2', '23', '144', '20181129\\89ec3f7248a6411f80b3fe4049bfaa48.jpg', '20181206\\080de00237297d467300c37fccc85aee.jpg|20181206\\381a00af613baff66a60cc6ac80f459a.jpg|20181206\\dee5038671e3090c4e60e2f22e6123bb.jpg|', '1542956680', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\9857dc84d5778d712cf0d401208701db.gif\" alt=\"a\">', '35', '18', '0');
INSERT INTO `goods` VALUES ('15', '浴花洒套装', '配置高，速度快', '34', '45', '1', '1', '1', '2', '34', '235', '20181129\\dcf1998e18e35b47faec9475c91c5cef.jpg', '20181206\\37051b59a4c44f53eb478acf80f396a6.jpg|20181206\\cbaf2286a8fa5b5ecff6170bd189d345.jpg|20181206\\7bd6e1dde351bd5c067a11782011bbad.jpg|', '1542956705', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\be9a72ef97352571733d94192c87480f.jpg\" alt=\"a\">', '35', '18', '0');
INSERT INTO `goods` VALUES ('16', '华为mete20', '好皮，质量好，价格便宜', '6788', '7897', '1', '1', '1', '2', '235', '58', '20181205\\a3d8c9cff9ae5265c1637a9802843fba.PNG', '20181206\\62b4663df46c27b22045f1fc781365bb.jpg|20181206\\31a10ce30f09d50ff7c8e69360cf5b70.jpg|20181206\\61e0cf89560e4e4a57ee9e8e64cb52da.jpg|', '1542956768', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\79c5484f049410b7624f89cf3739ae9c.jpg\" alt=\"a\">', '40', '26', '0');
INSERT INTO `goods` VALUES ('17', '小天鹅洗衣机', '配置高，速度快', '556', '674', '1', '1', '1', '2', '1000', '23', '20181129\\452d2fcb49cae48fe4a4d4ffc511f2ca.jpg', '20181206\\4082e68244bc0aea3328957c59bdb0d1.webp|20181206\\1ade099b6cd36d613a53726712520a67.jpg|20181206\\0cf7e5b1e3dcd3e93d1961a50f30e4f2.webp|', '1542969475', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\0d73031353f6940ad2cbb33fd463e861.jpg\" alt=\"a\">', '5', '1', '0');
INSERT INTO `goods` VALUES ('18', '鞋', '好皮，质量好，价格便宜', '100', '200', '1', '1', '1', '1', '234', '10', '20181203\\20fc4301f47efe7ee8f6458143fbb6f8.PNG', '20181206\\56f4fe88f232a2fe5dd775815956ac86.jpg|20181206\\cd953e60f21902d8629e7612563a127f.jpg|20181206\\403c0233f60d4526a30bd328d86657e4.jpg|', '1543453833', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\f79c8f91152197671de5448af20ccb7b.jpg\" alt=\"a\">', '22', '14', '0');
INSERT INTO `goods` VALUES ('19', '收纳架', '配置高，速度快', '89', '96', '1', '1', '1', '2', '24', '322', '20181129\\5610dd76e134397f7ce00a231451eb20.jpg', '20181206\\1a5ac8a1c4a529a6900e45de191efd49.jpg|20181206\\f86dc72fbeabfcb4fb0d8a61b8240bf5.jpg|20181206\\65e9f67ed37fba6bc6f5d6ce001fd87f.jpg|', '1543489473', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\cfe2b05946067da2848b827e32f67a28.jpg\" alt=\"a\">', '35', '20', '0');
INSERT INTO `goods` VALUES ('20', '小天鹅', '好皮，质量好，价格便宜', '3456', '5464', '1', '1', '1', '2', '658', '454', '20181129\\fdb9d3501fac8ece38a1c693292587ca.jpg', '20181206\\32d82d88228cd48a6344b9701bf05af4.jpg|20181206\\d4631f6013c39ef61f1f4d4152a01247.jpg|20181206\\be75c16a5d6b7623734180a084045218.jpg|20181206\\bd98738ecb21ffc9be2e7e5775ba97dc.jpg|', '1543489712', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1709f1d41541de8ff1084483dba8a29a.jpg\" alt=\"a\">', '5', '1', '0');
INSERT INTO `goods` VALUES ('21', '美的洗衣机', '配置高，速度快', '5678', '7895', '1', '1', '1', '2', '4567', '56', '20181129\\24202fefebe9b2df00919e1c28f1611d.jpg', '20181206\\1e132a4b16f25cced74a201b8ec7b3f5.jpg|20181206\\c26b5795b33467c4d69b2b7cd936ab79.jpg|20181206\\65b9a6e7029f29f4eed3800b4d6befb1.gif|', '1543489956', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\d3c379dd4b60faa272b875ae3400e0be.jpg\" alt=\"a\">', '5', '10', '0');
INSERT INTO `goods` VALUES ('22', '苏泊尔抽烟机', '好皮，质量好，价格便宜', '3256', '5467', '1', '1', '1', '2', '234', '356', '20181129\\2f05ba33d820de3bf85518d75edc8dd6.jpg', '20181206\\07caf33918335c56f7e07e91300f4dcf.jpg|20181206\\b900ce97c5b94162c00f7f6219236077.png|20181206\\efc80b40bf1976753bb4f38158d9e168.jpg|', '1543490073', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\098599d29abead7b8099610e49384d5d.jpg\" alt=\"a\">', '18', '12', '0');
INSERT INTO `goods` VALUES ('23', '德芙巧克力礼盒送女友', '配置高，速度快', '234', '345', '1', '1', '1', '2', '234', '234', '20181129\\3ab1d63a32264dcd9851088e6703df0d.jpg', '20181206\\a02dfec2312634f1c1584b9ceeae138b.jpg|20181206\\0f74c658f183822636cea0056688e111.jpg|20181206\\51a6219636eae84229dd5f9671f58f09.jpg|20181206\\b221aaea7ece6b39510597da187c0e99.jpg|', '1543490315', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\bb098481d21de7d3aa59035491ca112c.jpg\" alt=\"a\">', '11', '21', '0');
INSERT INTO `goods` VALUES ('24', '圣诞节德芙巧克力礼盒', '好皮，质量好，价格便宜', '123', '234', '1', '1', '1', '2', '121', '123', '20181129\\bf07b4c1abb5a6d45a3322280cbf9002.jpg', '20181206\\2c7d22b1312a5c266503f6baae4b6592.jpg|20181206\\7b2504aceb277e930ab4fc1a68a78b1b.jpg|20181206\\10a8829aad2baa711ac8ab1f002bc545.jpg|', '1543490349', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\56214044ae0dc0456ddb229be8a1c4e6.jpg\" alt=\"a\">', '11', '21', '0');
INSERT INTO `goods` VALUES ('25', '圣诞节德芙巧克力礼盒啊', '配置高，速度快', '235', '432', '1', '1', '1', '2', '23', '23', '20181129\\54d04c7e7cfa325ea1f634646df8fec8.jpg', '20181206\\cd8e1824d50957420fd5fb25ac384fd0.webp|20181206\\93646ea4bd5c74cdcfc88d8961ff1a3b.webp|20181206\\1de4f5ec233eda996296a157bf94d57c.webp|20181206\\a695a5545454835eea1d347f39937ff3.webp|', '1543490408', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\4de2288571332ffcbedf3fb1b3fe3a3f.jpg\" alt=\"a\">', '11', '21', '0');
INSERT INTO `goods` VALUES ('26', '创意德芙巧克力礼盒', '好皮，质量好，价格便宜', '234', '346', '1', '1', '2', '2', '34', '223', '20181129\\6a800ff0e1978190caafb4ca04027b01.jpg', '20181206\\119344fedc38f1262d91de452f8b105a.jpg|20181206\\bd7101f39d9df25bacceb3a0fb87c0d5.jpg|20181206\\ca27b70e150304520ce7a751ef44bf8e.jpg|20181206\\14729bef1f9d9d847b5bd84f9cd442c4.jpg|', '1543490456', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1f673f124bfcc9f7461bc06750caae3d.jpg\" alt=\"a\">', '11', '21', '0');
INSERT INTO `goods` VALUES ('27', '三只松鼠_碧根果', '配置高，速度快', '50', '78', '1', '1', '1', '2', '65', '56', '20181129\\49a85c5f5ef60fb08137565d61372dff.jpg', '20181206\\7c3583052525f42b62b06c9d08b925df.png|20181206\\3e08dff0578eb38654250880aef41e88.jpg|20181206\\fd5762c30357c13fe5ef08121b11de2b.jpg|20181206\\93a9ac9e67ff8427935c4af9307428b5.jpg|', '1543490752', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\5dbcdcd537fc2a64566038bceef5574e.jpg\" alt=\"a\">', '13', '23', '0');
INSERT INTO `goods` VALUES ('28', '三只松鼠 坚果大礼包1373g*2盒', '好皮，质量好，价格便宜', '345', '456', '1', '1', '1', '2', '311', '87', '20181129\\0095d710a703603192b2fd5d91044d68.jpg', '20181206\\fb1e2e49a2e05b08fc342ff5c7438fef.jpg|20181206\\1922d4a3d28b0ed4c3939dc79afd2014.jpg|20181206\\0292d5eb22fea122efee4736f43fd3d8.jpg|20181206\\9f0d1af989f715259b9616ccd3aa21b0.jpg|', '1543490819', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1b44c8f7b1ba31c7b7da7a1c391a7370.jpg\" alt=\"a\">', '13', '23', '0');
INSERT INTO `goods` VALUES ('29', '迪奥烈艳蓝金唇膏口红正品专柜999哑光', '配置高，速度快', '299', '299', '1', '1', '1', '1', '515', '234', '20181129\\6ef15a2b40e660004b67b298a1b4c0fe.jpg', '20181206\\29a4080c776e4ca7d4601345852d7386.jpg|20181206\\67911264ebf16a49f60f52c529dfd649.jpg|20181206\\435d8b3c8f742eb9109e5e26e08650a8.jpg|20181206\\a81c07b324f3fd42bbf6a0593a13c7a5.jpg|', '1543491104', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\650f889f3e8abe219ae19ec6d101cba7.jpg\" alt=\"a\">', '16', '24', '0');
INSERT INTO `goods` VALUES ('30', '眼线液笔', '好皮，质量好，价格便宜', '23', '34', '1', '1', '1', '2', '633', '13', '20181129\\24ed0bbe463d739dace3051644dc21f9.jpg', '20181206\\1a0e20f705187236d1c80b06dc378a56.webp|20181206\\4746b174e0dc7e2ffb2eca12f32a4e76.webp|20181206\\8f4a2e0bfacc05de8087b730acdfcd03.webp|20181206\\0f74935d1898728b4dddbc00261c2769.webp|', '1543491217', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\a0ef232a4f1502fda6fa53b636e18489.png\" alt=\"a\">', '17', '24', '0');
INSERT INTO `goods` VALUES ('31', '纪梵希绒雾哑光粉底液持续着妆遮瑕控油', '配置高，速度快', '234', '356', '1', '1', '1', '1', '462', '123', '20181129\\8a7d61effa25faab08d6df5cccac711e.jpg', '20181206\\591de75998412983ef225e1acf92dbe5.webp|20181206\\4484c17c6c9f2c28d0425fdce0f701c8.webp|20181206\\892d192b2c74c7851627cf19a1e2c809.webp|20181206\\808131a3722593a060cfa7a660705bbf.webp|', '1543491336', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\e243a34ffbcb53639c583526efe54b79.jpg\" alt=\"a\">', '15', '25', '0');
INSERT INTO `goods` VALUES ('32', '阿玛尼红气垫', '好皮，质量好，价格便宜', '234', '124', '1', '1', '1', '2', '425', '134', '20181129\\447f2b74910abc3bfc1726d86a9701b4.jpg', '20181206\\aeb9c9cdf44f1aff2d3b467ba9bb2854.jpg|20181206\\b493e29725d3d70e6f1c6babcbd674f8.jpg|20181206\\35bad6ea84b690dee24ee9f715778b1a.jpg|20181206\\af98d5b9cf6b95db1da040cfa4d79fad.jpg|', '1543491475', '<img src=\"http://www.shop.com/public/goodseditimgs/20181205\\1e82bad629e1fc4c459d50d1942c3960.gif\" alt=\"a\">', '15', '25', '0');
INSERT INTO `goods` VALUES ('33', '精品女装 意大利纯羊绒重磅高领', '配置高，速度快', '1362', '2355', '1', '1', '2', '2', '421', '124', '20181129\\9c09d2670149481800ae03ac7b93be3a.jpg', '20181206\\e6461fa2e3f13c31da49f48d731136bd.jpg|20181206\\619c452dfedc180e4a897c4727e73eea.jpg|20181206\\5db6133aff94bc734825eeae6dca3c32.jpg|20181206\\b7122afef0aab22c2f6a7ffc005edb69.jpg|', '1543491630', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\374b15309500721fcc93911c5dcb56a5.jpg\" alt=\"a\">', '27', '17', '0');
INSERT INTO `goods` VALUES ('34', 'Nike 耐克官方SPORTSWEAR', '好皮，质量好，价格便宜', '3244', '3456', '1', '1', '1', '2', '234', '123', '20181129\\fd9dc7ec5d7fc69507199f160113f321.jpg', '20181205\\cd84226720fd581cebdef0a708eae82a.jpg|20181205\\9e126baeea0b1ed3c93c8938405e700b.jpg|20181205\\aa566390c39b6d7d3e7fe42f806b7b00.jpg|', '1543491731', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\db1a99dceeff78cc94400ad0504c68b6.jpg\" alt=\"a\">', '27', '17', '0');
INSERT INTO `goods` VALUES ('35', 'Nike耐克官方NIKE ', '配置高，速度快', '134', '435', '1', '1', '1', '2', '516', '14', '20181129\\1362e75c32a1a03db5f6940d44cebcdd.PNG', '20181206\\080de00237297d467300c37fccc85aee.jpg|20181206\\381a00af613baff66a60cc6ac80f459a.jpg|20181206\\dee5038671e3090c4e60e2f22e6123bb.jpg|', '1543491808', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\64b979cdafb58aabe7981d8ea8a1bac2.jpg\" alt=\"a\">', '31', '17', '0');
INSERT INTO `goods` VALUES ('36', 'Adidas阿迪达斯三叶草外套女装', '好皮，质量好，价格便宜', '578', '789', '1', '1', '1', '2', '523', '32', '20181129\\4511277806616b937a9d47d6ea5453f8.jpg', '20181206\\37051b59a4c44f53eb478acf80f396a6.jpg|20181206\\cbaf2286a8fa5b5ecff6170bd189d345.jpg|20181206\\7bd6e1dde351bd5c067a11782011bbad.jpg|', '1543491921', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\fedd4109fe20635c9f5cdbfeac619857.jpg\" alt=\"a\">', '31', '14', '0');
INSERT INTO `goods` VALUES ('37', '阿弥陀福么么哒', '配置高，速度快', '35', '40', '1', '1', '1', '1', '1111', '123', '20181205\\a.jpg', '20181205\\cd84226720fd581cebdef0a708eae82a.jpg|20181205\\9e126baeea0b1ed3c93c8938405e700b.jpg|20181205\\aa566390c39b6d7d3e7fe42f806b7b00.jpg|', '1544000396', '<img src=\"http://www.shop.com/public/goodseditimgs/20181205\\1e82bad629e1fc4c459d50d1942c3960.gif\" alt=\"a\">', '10', '27', '0');
INSERT INTO `goods` VALUES ('38', '虎帝床头柜简约现代北欧收纳柜抽屉式储物柜迷你免安装热销小柜子', null, '218', '376', '1', '1', '1', '2', '100000', '109', '20181206\\3f3443f1adc81baf2e758c3e611d3bdd.jpg', '20181206\\080de00237297d467300c37fccc85aee.jpg|20181206\\381a00af613baff66a60cc6ac80f459a.jpg|20181206\\dee5038671e3090c4e60e2f22e6123bb.jpg|', '1544058650', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\374b15309500721fcc93911c5dcb56a5.jpg\" alt=\"a\">', '7', '3', '0');
INSERT INTO `goods` VALUES ('39', '床头柜简约现代经济型收纳柜子组装储物柜卧室简易床边柜带小书架', '好皮，质量好，价格便宜', '136', '206', '1', '2', '1', '1', '1200000', '68', '20181206\\e985e00543b23604f7213d7c84d2a148.jpg', '20181206\\37051b59a4c44f53eb478acf80f396a6.jpg|20181206\\cbaf2286a8fa5b5ecff6170bd189d345.jpg|20181206\\7bd6e1dde351bd5c067a11782011bbad.jpg|', '1544058811', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\db1a99dceeff78cc94400ad0504c68b6.jpg\" alt=\"a\">', '7', '1', '0');
INSERT INTO `goods` VALUES ('40', '简易衣柜组装板式衣橱单人塑料收纳储物柜子简约现代经济型省空间', '配置高，速度快', '109', '630', '1', '1', '1', '1', '1936698', '54', '20181206\\b0a9d0bad3a6f268217cd975f8440dd4.jpg', '20181206\\62b4663df46c27b22045f1fc781365bb.jpg|20181206\\31a10ce30f09d50ff7c8e69360cf5b70.jpg|20181206\\61e0cf89560e4e4a57ee9e8e64cb52da.jpg|', '1544058975', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\64b979cdafb58aabe7981d8ea8a1bac2.jpg\" alt=\"a\">', '7', '1', '0');
INSERT INTO `goods` VALUES ('41', '简易大衣柜简约现代经济型组装塑料单人寝室宿舍小户型家用挂衣橱', '好皮，质量好，价格便宜', '110', '618', '1', '1', '1', '1', '5', '45', '20181206\\60496840f3839bce8601fab2d1c5b37e.jpg', '20181206\\4082e68244bc0aea3328957c59bdb0d1.webp|20181206\\1ade099b6cd36d613a53726712520a67.jpg|20181206\\0cf7e5b1e3dcd3e93d1961a50f30e4f2.webp|', '1544059133', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\fedd4109fe20635c9f5cdbfeac619857.jpg\" alt=\"a\">', '8', '19', '0');
INSERT INTO `goods` VALUES ('42', '卧室衣柜简约现代经济型双人储物柜简易组装多功能可拆卸衣柜布艺', '配置高，速度快', '189', '778', '1', '2', '1', '1', '8164470', '89', '20181206\\5d7bf36138f8552d8f151714d634eccd.jpg', '20181206\\56f4fe88f232a2fe5dd775815956ac86.jpg|20181206\\cd953e60f21902d8629e7612563a127f.jpg|20181206\\403c0233f60d4526a30bd328d86657e4.jpg|', '1544059322', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\e90429778f5d3a10189d887df102d0bd.jpg\" alt=\"a\">', '8', '19', '0');
INSERT INTO `goods` VALUES ('43', '简易衣柜子简约现代经济型组装塑料布宿舍收纳实木寝室布艺挂衣橱', '好皮，质量好，价格便宜', '89', '238', '1', '2', '1', '1', '541265', '17', '20181206\\b04c46d86dbb2b3163a23faf79185ff8.jpg', '20181206\\1a5ac8a1c4a529a6900e45de191efd49.jpg|20181206\\f86dc72fbeabfcb4fb0d8a61b8240bf5.jpg|20181206\\65e9f67ed37fba6bc6f5d6ce001fd87f.jpg|', '1544059444', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\748bb5a2218d4b41afac6ff879b6608a.jpg\" alt=\"a\">', '8', '1', '0');
INSERT INTO `goods` VALUES ('44', '儿童床带护栏男孩女孩公主单人床实木小边床婴儿加宽床拼接床大床', '配置高，速度快', '188', '376', '1', '1', '1', '2', '148596251', '96', '20181206\\c1d61ab420cbef404c8766060c321f4d.jpg', '20181206\\32d82d88228cd48a6344b9701bf05af4.jpg|20181206\\d4631f6013c39ef61f1f4d4152a01247.jpg|20181206\\be75c16a5d6b7623734180a084045218.jpg|20181206\\bd98738ecb21ffc9be2e7e5775ba97dc.jpg|', '1544059758', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\bcdce7d14f0a77d153c147400d5cca24.jpg\" alt=\"a\">', '10', '3', '0');
INSERT INTO `goods` VALUES ('45', '儿童床男孩单人床女孩公主床多功能加宽床婴儿床拼接大床边床实木', '好皮，质量好，价格便宜', '324', '489', '1', '1', '2', '1', '9584152', '87', '20181206\\7f1da7d352a29902ea79e232beed245f.jpg', '20181206\\1e132a4b16f25cced74a201b8ec7b3f5.jpg|20181206\\c26b5795b33467c4d69b2b7cd936ab79.jpg|20181206\\65b9a6e7029f29f4eed3800b4d6befb1.gif|', '1544059991', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\9857dc84d5778d712cf0d401208701db.gif\" alt=\"a\">', '10', '19', '0');
INSERT INTO `goods` VALUES ('46', '云边有个小卖部 张嘉佳的新书2018 从你的全世界路过 让我留在你身边作者 青春文学小说书', '配置高，速度快', '30.2', '40', '1', '1', '2', '1', '48562518', '56', '20181206\\ebc07257d293ebd5b202af7fa7c00404.jpg', '20181206\\07caf33918335c56f7e07e91300f4dcf.jpg|20181206\\b900ce97c5b94162c00f7f6219236077.png|20181206\\efc80b40bf1976753bb4f38158d9e168.jpg|', '1544060291', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\be9a72ef97352571733d94192c87480f.jpg\" alt=\"a\">', '48', '27', '0');
INSERT INTO `goods` VALUES ('47', '【当当网 正版包邮】你坏 大冰2018作品 我不 乖摸摸头 阿弥陀佛么么哒 好吗好的后20', '好皮，质量好，价格便宜', '37.9', '45', '1', '1', '2', '1', '48658', '15', '20181206\\d1155002b139769afdffc505a6329f2a.jpg', '20181206\\a02dfec2312634f1c1584b9ceeae138b.jpg|20181206\\0f74c658f183822636cea0056688e111.jpg|20181206\\51a6219636eae84229dd5f9671f58f09.jpg|20181206\\b221aaea7ece6b39510597da187c0e99.jpg|', '1544074847', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\79c5484f049410b7624f89cf3739ae9c.jpg\" alt=\"a\">', '48', '27', '0');
INSERT INTO `goods` VALUES ('48', '双电机自动清洗抽油烟机壁挂式抽烟机家用侧吸式厨房吸油烟机特价', '配置高，速度快', '678', '729', '1', '2', '1', '1', '5841', '152', '20181206\\9694570de7388490aa413ec92b67c676.jpg', '20181206\\2c7d22b1312a5c266503f6baae4b6592.jpg|20181206\\7b2504aceb277e930ab4fc1a68a78b1b.jpg|20181206\\10a8829aad2baa711ac8ab1f002bc545.jpg|', '1544075105', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\0d73031353f6940ad2cbb33fd463e861.jpg\" alt=\"a\">', '29', '10', '0');
INSERT INTO `goods` VALUES ('49', '菜刀 厨师专用家用切片切肉不锈钢斩骨免磨硬锋利无比阳江斩切刀', '好皮，质量好，价格便宜', '37.9', '58', '1', '1', '1', '2', '56263538', '120', '20181206\\9f85cc69c413157d1010eec9a07480fe.webp', '20181206\\cd8e1824d50957420fd5fb25ac384fd0.webp|20181206\\93646ea4bd5c74cdcfc88d8961ff1a3b.webp|20181206\\1de4f5ec233eda996296a157bf94d57c.webp|20181206\\a695a5545454835eea1d347f39937ff3.webp|', '1544075261', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\f79c8f91152197671de5448af20ccb7b.jpg\" alt=\"a\">', '35', '12', '0');
INSERT INTO `goods` VALUES ('50', '全屋灯具套餐组合简约现代三室两厅简约套装吸顶灯两室一厅客厅灯', '配置高，速度快', '107.9', '148', '1', '2', '2', '1', '258451235', '145', '20181206\\5b0ce323f6028ebb40729b268a5a87c3.jpg', '20181206\\119344fedc38f1262d91de452f8b105a.jpg|20181206\\bd7101f39d9df25bacceb3a0fb87c0d5.jpg|20181206\\ca27b70e150304520ce7a751ef44bf8e.jpg|20181206\\14729bef1f9d9d847b5bd84f9cd442c4.jpg|', '1544075460', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\cfe2b05946067da2848b827e32f67a28.jpg\" alt=\"a\">', '36', '8', '0');
INSERT INTO `goods` VALUES ('51', '小天鹅 TB65-C1208H 6.5公斤单筒全自动波轮洗衣机静音童锁带甩干', '好皮，质量好，价格便宜', '1299', '1500', '1', '2', '1', '1', '64158551', '150', '20181206\\aeabc92afd17686e16f069b197609b75.png', '20181206\\7c3583052525f42b62b06c9d08b925df.png|20181206\\3e08dff0578eb38654250880aef41e88.jpg|20181206\\fd5762c30357c13fe5ef08121b11de2b.jpg|20181206\\93a9ac9e67ff8427935c4af9307428b5.jpg|', '1544075630', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1709f1d41541de8ff1084483dba8a29a.jpg\" alt=\"a\">', '5', '1', '0');
INSERT INTO `goods` VALUES ('52', 'um/优盟 CXW-220-UT103S抽油烟机家用厨房大吸力侧吸式顶吸抽烟机', '配置高，速度快', '1579', '2278', '1', '2', '1', '2', '1227534', '125', '20181206\\903a9aabc391f3f61c08bc1c63d9295e.jpg', '20181206\\fb1e2e49a2e05b08fc342ff5c7438fef.jpg|20181206\\1922d4a3d28b0ed4c3939dc79afd2014.jpg|20181206\\0292d5eb22fea122efee4736f43fd3d8.jpg|20181206\\9f0d1af989f715259b9616ccd3aa21b0.jpg|', '1544075805', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\d3c379dd4b60faa272b875ae3400e0be.jpg\" alt=\"a\">', '18', '19', '0');
INSERT INTO `goods` VALUES ('53', '诺梵松露型黑巧克力礼盒装送女友零食400g散装批发（代可可脂）', '好皮，质量好，价格便宜', '16.9', '38', '1', '2', '2', '1', '476520145', '512', '20181206\\4b78c8579558c0ec9aa51c50deda82a9.jpg', '20181206\\29a4080c776e4ca7d4601345852d7386.jpg|20181206\\67911264ebf16a49f60f52c529dfd649.jpg|20181206\\435d8b3c8f742eb9109e5e26e08650a8.jpg|20181206\\a81c07b324f3fd42bbf6a0593a13c7a5.jpg|', '1544075941', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\098599d29abead7b8099610e49384d5d.jpg\" alt=\"a\">', '11', '23', '0');
INSERT INTO `goods` VALUES ('54', '靖江特产猪肉脯肉干肉片散装5斤整箱1斤蜜汁香辣味500g零食铺小吃', '配置高，速度快', '59', '69', '1', '2', '2', '1', '485962474', '152', '20181206\\6bf813f73d24e1cd16e8af5886f5d356.webp', '20181206\\1a0e20f705187236d1c80b06dc378a56.webp|20181206\\4746b174e0dc7e2ffb2eca12f32a4e76.webp|20181206\\8f4a2e0bfacc05de8087b730acdfcd03.webp|20181206\\0f74935d1898728b4dddbc00261c2769.webp|', '1544076046', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\bb098481d21de7d3aa59035491ca112c.jpg\" alt=\"a\">', '13', '23', '0');
INSERT INTO `goods` VALUES ('55', '【试用装】新版江原道粉底液水漾美肌粉底液小样妆感轻薄养肤试色', '好皮，质量好，价格便宜', '269', '509', '1', '2', '1', '2', '2147483647', '150', '20181206\\ec28656168109572a9ac59237b1c9535.webp', '20181206\\591de75998412983ef225e1acf92dbe5.webp|20181206\\4484c17c6c9f2c28d0425fdce0f701c8.webp|20181206\\892d192b2c74c7851627cf19a1e2c809.webp|20181206\\808131a3722593a060cfa7a660705bbf.webp|', '1544076210', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\56214044ae0dc0456ddb229be8a1c4e6.jpg\" alt=\"a\">', '15', '0', '0');
INSERT INTO `goods` VALUES ('56', '3支 哑光口红持久保湿不脱色韩国防水豆沙色唇膏正品学生款可爱女', '配置高，速度快', '68', '109', '1', '2', '2', '1', '62156215', '15', '20181206\\852feaaecda4ba806f111884328e9ace.jpg', '20181206\\aeb9c9cdf44f1aff2d3b467ba9bb2854.jpg|20181206\\b493e29725d3d70e6f1c6babcbd674f8.jpg|20181206\\35bad6ea84b690dee24ee9f715778b1a.jpg|20181206\\af98d5b9cf6b95db1da040cfa4d79fad.jpg|', '1544076372', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\4de2288571332ffcbedf3fb1b3fe3a3f.jpg\" alt=\"a\">', '16', '25', '0');
INSERT INTO `goods` VALUES ('57', '买1送1眼线液胶笔女防水防汗不脱色膏持久不晕染网红伪素颜初学者', '好皮，质量好，价格便宜', '58', '68', '1', '2', '2', '1', '2147483647', '15', '20181206\\d507e41e82c74de9f9446a389259669c.jpg', '20181206\\e6461fa2e3f13c31da49f48d731136bd.jpg|20181206\\619c452dfedc180e4a897c4727e73eea.jpg|20181206\\5db6133aff94bc734825eeae6dca3c32.jpg|20181206\\b7122afef0aab22c2f6a7ffc005edb69.jpg|', '1544076585', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1f673f124bfcc9f7461bc06750caae3d.jpg\" alt=\"a\">', '17', '25', '0');
INSERT INTO `goods` VALUES ('58', '自然堂凝时鲜颜套装补水保湿抗皱护肤化妆品官方旗舰店官网正品女', '配置高，速度快', '410', '420', '1', '2', '1', '1', '2147483647', '150', '20181206\\1ef226eae14b3dea3810bac34a899a72.jpg', '20181206\\e921f1105f6b2bf4ee1794ff0d23f196.jpg|20181206\\27ea2597a535887d06eb9f007949b99d.jpg|20181206\\5cda4117346c25be3cffd1e7050cae85.jpg|20181206\\ea8ed1715c1cc4c73edee2250ffe1e85.jpg|', '1544076747', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\5dbcdcd537fc2a64566038bceef5574e.jpg\" alt=\"a\">', '21', '25', '0');
INSERT INTO `goods` VALUES ('59', '自然堂雪域护肤化妆品套装补水保湿女官方旗舰店官网正品专柜套装 ', '好皮，质量好，价格便宜', '465', '480', '1', '2', '2', '1', '2147483647', '102', '20181206\\7fcdd7c3f422ea21415ab9dc1ca640a0.jpg', '20181206\\af1fad5c16ea8a004f77909bcb2ac175.jpg|20181206\\adecc181b0e138d6aad07423d94ee470.jpg|20181206\\45e539ebdb0e6b5ad59f9c19c9f9b143.jpg|20181206\\8a5ec1be9fd9085e47df044f0f3ab444.jpg|', '1544076864', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\1b44c8f7b1ba31c7b7da7a1c391a7370.jpg\" alt=\"a\">', '33', '25', '0');
INSERT INTO `goods` VALUES ('60', '百雀羚草本水嫩倍现护肤套装女补水保湿控油化妆品套装 水乳 霜', '配置高，速度快', '168', '179', '1', '2', '1', '1', '8795621', '150', '20181206\\4f2456de491f6d10c1e61c2eb20ecc1f.jpg', '20181206\\4c6196c001b609e7e84677e5092d00c2.jpg|20181206\\68363e10a7950f617772db9e7554b122.jpg|20181206\\b85d3b78b9d8a495a8ec70df78ab2b30.jpg|20181206\\ba4455828c8fbad8dce5c6f726ba3c9a.jpg|', '1544076966', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\650f889f3e8abe219ae19ec6d101cba7.jpg\" alt=\"a\">', '34', '25', '0');
INSERT INTO `goods` VALUES ('61', '2018秋冬新款韩版加绒加厚套头毛衣女半高领拼色针织衫内搭打底衫', '好皮，质量好，价格便宜', '188', '288', '1', '2', '1', '2', '2147483647', '100', '20181206\\df515227a81da0d43e04da7100ddf38b.jpg', '20181206\\6aac320b2a9867a062ac3670407fc13a.jpg|20181206\\19518033c38580b96b264f169051e56f.jpg|20181206\\f24667e7b53d93143c0c2d3b9a63d83a.jpg|20181206\\53c2d189b2b678bea5913e21c6f8598a.jpg|', '1544077139', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\a0ef232a4f1502fda6fa53b636e18489.png\" alt=\"a\">', '27', '22', '0');
INSERT INTO `goods` VALUES ('62', ' 男士时尚毛衣保暖冬季', '配置高，速度快', '81', '851', '1', '2', '1', '1', '21966', '15', '20181206\\0171488e52a7bcf40ab3eff0b7b4fde0.jpg', '20181206\\3245e1b367ac7162c784fc57401ac722.jpg|20181206\\3e7fca5a2d4271d2382b1c3b3c3182e2.jpg|20181206\\3bcca50dae1ade0444baa3bf45f9c051.jpg|', '1544077473', '<img src=\"http://www.shop.com/public/goodseditimgs/20181206\\e243a34ffbcb53639c583526efe54b79.jpg\" alt=\"a\">', '27', '22', '0');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(30) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL,
  `order_amount` float DEFAULT NULL COMMENT '订单总金额',
  `pay_type` int(11) DEFAULT '1' COMMENT '支付方式1支付宝 2货到付款 3银行卡转账',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('44', '201902280714430', '17', '855', '1', '1551338083');
INSERT INTO `order` VALUES ('45', '201902280734058', '17', '4567', '1', '1551339245');

-- ----------------------------
-- Table structure for order_address
-- ----------------------------
DROP TABLE IF EXISTS `order_address`;
CREATE TABLE `order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `province` varchar(20) DEFAULT NULL,
  `consignee_name` varchar(30) DEFAULT NULL,
  `consignee_tel` char(11) DEFAULT NULL,
  `detailed_address` varchar(100) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_address
-- ----------------------------
INSERT INTO `order_address` VALUES ('27', '17', '44', '1', '河北省邯郸市馆陶县', '罗晓遥', '17631001644', '王桥乡罗庄村', '1551338109');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(30) DEFAULT NULL,
  `self_price` decimal(10,0) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('23', '17', '44', '5', '新款秋冬女鞋', '171', 'images\\manolo blahnik_pop_SH4921_010.png', '5', '1551338083');
INSERT INTO `order_detail` VALUES ('24', '17', '45', '12', '新中式书桌椅', '4567', '20181205\\0455780bfe3890d4c98be9d4ebbfd08c.jpg', '1', '1551339245');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_tel` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('16', '15512739286', '4297f44b13955235245b2497399d7a93');
INSERT INTO `user` VALUES ('17', '17631001644', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user1
-- ----------------------------
INSERT INTO `user1` VALUES ('2', '刘沁茹', '123');

-- ----------------------------
-- Table structure for user_article
-- ----------------------------
DROP TABLE IF EXISTS `user_article`;
CREATE TABLE `user_article` (
  `user_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_article
-- ----------------------------
