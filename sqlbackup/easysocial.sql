/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : easysocial

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-10 11:39:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'aid',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `gender` int(11) DEFAULT NULL COMMENT '性别 1-男 0-女',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'Necrom', '高玉宇', '740514999@qq.com', '1qa2ws', 'Just a little bit...', '1', 'http://192.168.11.117/easysocial/Public/avatar/1469526351_510370747.jpg');
INSERT INTO `account` VALUES ('2', '鹰山仁', 'Amazons', '1967745787@qq.com', '1qa2ws', 'WER', '1', 'http://192.168.11.117/easysocial/Public/avatar/hawk.jpg');
INSERT INTO `account` VALUES ('11', '美月', 'SaassKope', '740514999@qq.com', '1qa2ws', 'CYUI', '1', 'http://192.168.11.117/easysocial/Public/avatar/moon.jpg');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `favorite`
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'fid',
  `tid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `isfavor` int(11) DEFAULT '0' COMMENT '是否点赞 0-否 1-是',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1');
INSERT INTO `test` VALUES ('2');

-- ----------------------------
-- Table structure for `tweet`
-- ----------------------------
DROP TABLE IF EXISTS `tweet`;
CREATE TABLE `tweet` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'tid',
  `aid` int(11) DEFAULT NULL COMMENT '作者id',
  `content` varchar(255) DEFAULT NULL COMMENT '推特内容',
  `picture` varchar(255) DEFAULT NULL COMMENT '推特图片地址',
  `create_time` varchar(255) DEFAULT NULL COMMENT '发表时间',
  `pic_width` varchar(255) DEFAULT NULL COMMENT '图片宽度',
  `pic_height` varchar(255) DEFAULT NULL COMMENT '图片高度',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tweet
-- ----------------------------
INSERT INTO `tweet` VALUES ('8', '1', '两个人相处久了，难免会抱怨一句 你变了。其实，我们并没有改变，我们只是越来越接近真实的对方而已。', 'http://192.168.11.117/easysocial/Public/tweetpic/1469438692_917394980.jpg', '2016-07-25 17:24:52', '1536', '1280');
INSERT INTO `tweet` VALUES ('9', '1', '等不起的人就不要等了，你的痴情感动不了一个不爱你的人。伤害你的不是对方的绝情，而是你心存幻想的坚持。勇敢点，转个身！你必须放弃一些东西，才能获得更圆满的自己！', 'http://192.168.11.117/easysocial/Public/tweetpic/1469438927_523438719.jpg', '2016-07-25 17:28:47', '1536', '1280');
INSERT INTO `tweet` VALUES ('10', '1', '给自己一些时间 。原谅做过很多傻事的自己 。接受自己，爱自己 。过去的都会过去，该来的都在路上 。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216179_20356328.jpg', '2016-08-03 17:22:59', '1536', '1280');
INSERT INTO `tweet` VALUES ('11', '1', '所谓“聊得来”的深层含义其实是：读懂你的内心，听懂你的说话，与你的见识同步，配得上你的好，并能互相给予慰藉、理解和力量。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216199_1558796710.jpg', '2016-08-03 17:23:19', '1536', '1280');
INSERT INTO `tweet` VALUES ('12', '1', '不要散布你的困惑和苦厄，更不要炫耀你的幸福和喜乐。那只会使它们变得廉价。做个有骨气的人，戴一副合法的表情，纵有千言万语，只与自己说。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216213_1565239428.jpg', '2016-08-03 17:23:33', '1536', '1280');
INSERT INTO `tweet` VALUES ('13', '1', '避免失望的最好办法，就是不寄希望于任何人、任何事。期待，是所有心痛的根源，心不动，则不痛。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216225_1654883851.jpg', '2016-08-03 17:23:45', '1536', '1280');
INSERT INTO `tweet` VALUES ('14', '1', '在一段感情中最心酸的事便是：对方已经决定跟你分手了，只是还没想好充分的理由，而你却还在计划着两个人下一步。然而更心酸的是，在你发现这个事实之前，你还在懊恼，还以为是自己没有更好的珍惜。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216241_739143559.jpg', '2016-08-03 17:24:01', '1536', '1280');
INSERT INTO `tweet` VALUES ('15', '1', '陪伴与懂得， 比爱情更加重要。一个人最幸福的时刻，就是找对了人，他宠着你、纵容你并深爱着你的一切。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216252_1967360581.jpg', '2016-08-03 17:24:12', '1536', '1280');
INSERT INTO `tweet` VALUES ('16', '1', '抱抱你的电水壶吧，一直为你烧水喝，你却只会把杯子捧在手心里。它还不能想不开，不开了你会觉得它有毛病。', 'http://192.168.11.117/easysocial/Public/tweetpic/1470216262_2092963766.jpg', '2016-08-03 17:24:22', '1536', '1280');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `vid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'vid',
  `video_title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `video_url` text COMMENT '视频地址',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '【发现最热视频】没穿就糗大了！超市门口cos玛丽莲梦露_标清', 'http://192.168.11.117/easysocial/Public/video/a.mp4', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('2', '【大哥太会享受了，身体受得了吗？】搞笑视频 搞笑集锦 笑死人不偿命_标清', 'http://192.168.11.117/easysocial/Public/video/b.flv', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('3', '搞笑视频笑死人：国外失误集锦搞笑视频傻缺剪辑（01）_标清', 'http://192.168.11.117/easysocial/Public/video/c.flv', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('4', '【妹子第一次看A V的反应简直太可 耻了】幽默搞笑视频  傻缺恶搞吐槽视频  笑死人不偿命！ 小破孩驾到第90期_高清', 'http://192.168.11.117/easysocial/Public/video/d.mp4', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('5', '【和美女玩刺激的游戏，输了就的脱衣服】搞笑视频 傻缺集锦 幽默搞笑吐槽 国外恶搞_高清', 'http://192.168.11.117/easysocial/Public/video/e.mp4', '2016-06-29 11:07:08');
