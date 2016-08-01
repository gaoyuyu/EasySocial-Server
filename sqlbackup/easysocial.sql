/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : easysocial

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-01 13:06:21
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '7', '1', '0', '倒霉熊', '2016-06-29 11:07:08');
INSERT INTO `comment` VALUES ('2', '7', '1', '1', '魔法禁书', '2016-06-29 11:07:20');
INSERT INTO `comment` VALUES ('3', '7', '1', '1', '好饿DJ具体', '2016-06-29 11:07:31');
INSERT INTO `comment` VALUES ('4', '7', '1', '1', '理解理解', '2016-06-29 11:07:46');
INSERT INTO `comment` VALUES ('5', '6', '1', '0', '阿桔', '2016-06-29 11:08:23');
INSERT INTO `comment` VALUES ('6', '6', '1', '1', '愿意', '2016-06-29 11:08:35');
INSERT INTO `comment` VALUES ('7', '7', '1', '0', '八菱科技', '2016-06-29 11:21:51');
INSERT INTO `comment` VALUES ('8', '7', '1', '0', '古巨基', '2016-06-29 11:22:04');
INSERT INTO `comment` VALUES ('9', '7', '1', '0', '佛祖', '2016-06-29 11:32:55');
INSERT INTO `comment` VALUES ('10', '7', '1', '1', '啊路哈去看', '2016-06-29 11:33:11');
INSERT INTO `comment` VALUES ('11', '7', '1', '1', 'IP啊路佛祖YY域名', '2016-06-29 11:33:40');
INSERT INTO `comment` VALUES ('12', '6', '1', '1', '每月', '2016-06-29 11:37:00');
INSERT INTO `comment` VALUES ('13', '6', '1', '0', '人数', '2016-06-29 11:37:07');
INSERT INTO `comment` VALUES ('14', '6', '1', '1', '嗨喽', '2016-06-29 11:37:12');
INSERT INTO `comment` VALUES ('15', '9', '1', '0', 'hey,bro~', '2016-07-25 18:44:01');
INSERT INTO `comment` VALUES ('16', '9', '1', '1', 'got you,yoyo', '2016-07-25 18:44:11');
INSERT INTO `comment` VALUES ('17', '8', '1', '0', 'hello', '2016-07-25 18:44:41');
INSERT INTO `comment` VALUES ('18', '8', '1', '1', 'io', '2016-07-25 18:44:48');
INSERT INTO `comment` VALUES ('19', '6', '1', '1', 'kokokokokoko', '2016-07-25 19:25:00');
INSERT INTO `comment` VALUES ('20', '9', '1', '0', 'op', '2016-08-01 11:09:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '1', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('2', '2', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('3', '3', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('4', '4', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('5', '7', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('6', '6', '1', '1', '2016-06-29 11:07:08');
INSERT INTO `favorite` VALUES ('7', '8', '1', '1', '2016-07-25 18:45:07');
INSERT INTO `favorite` VALUES ('8', '9', '1', '1', '2016-07-26 17:09:04');
INSERT INTO `favorite` VALUES ('9', '9', '1', '1', '2016-07-26 17:09:20');
INSERT INTO `favorite` VALUES ('10', '9', '1', '1', '2016-07-26 17:09:23');
INSERT INTO `favorite` VALUES ('11', '9', '1', '1', '2016-07-26 17:09:25');
INSERT INTO `favorite` VALUES ('12', '9', '1', '1', '2016-07-26 17:09:26');
INSERT INTO `favorite` VALUES ('13', '9', '1', '1', '2016-07-26 17:09:27');
INSERT INTO `favorite` VALUES ('14', '9', '1', '1', '2016-07-26 17:09:28');
INSERT INTO `favorite` VALUES ('15', '9', '1', '1', '2016-07-26 17:09:29');
INSERT INTO `favorite` VALUES ('16', '9', '1', '1', '2016-07-26 17:15:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tweet
-- ----------------------------
INSERT INTO `tweet` VALUES ('1', '11', '两个人相处久了，难免会抱怨一句 你变了。其实，我们并没有改变，我们只是越来越接近真实的对方而已。', 'http://192.168.11.117/easysocial/Public/tweetpic/4cf73f9782d48ee462278860227a0341.jpeg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('2', '1', '等不起的人就不要等了，你的痴情感动不了一个不爱你的人。伤害你的不是对方的绝情，而是你心存幻想的坚持。勇敢点，转个身！你必须放弃一些东西，才能获得更圆满的自己！', 'http://192.168.11.117/easysocial/Public/tweetpic/14e577c439bc1ef48ca12764a36b7201.jpg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('3', '2', '给自己一些时间 。原谅做过很多傻事的自己 。接受自己，爱自己 。过去的都会过去，该来的都在路上 。', 'http://192.168.11.117/easysocial/Public/tweetpic/77f4fc7d6a20747826a0570019bfded1.jpeg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('4', '1', '其实，一件事，就算再美好，一旦没有结果，就不要再纠缠，久了你会倦，会累，如果抓不住，那么你就要适时放手，久了你会神伤，会心碎。任何事，任何人，都会成为过去。', 'http://192.168.11.117/easysocial/Public/tweetpic/1362381110802.jpg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('5', '2', '不要散布你的困惑和苦厄，更不要炫耀你的幸福和喜乐。那只会使它们变得廉价。做个有骨气的人，戴一副合法的表情，纵有千言万语，只与自己说。', 'http://192.168.11.117/easysocial/Public/tweetpic/1449040049226.jpg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('6', '11', '所谓“聊得来”的深层含义其实是：读懂你的内心，听懂你的说话，与你的见识同步，配得上你的好，并能互相给予慰藉、理解和力量。', 'http://192.168.11.117/easysocial/Public/tweetpic/1451887997800.jpg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('7', '1', '避免失望的最好办法，就是不寄希望于任何人、任何事。期待，是所有心痛的根源，心不动，则不痛。', 'http://192.168.11.117/easysocial/Public/tweetpic/cee6f6bd9fcd889c5e075447562b71e4.jpg', '2016-06-28 15:15:37', '800', '600');
INSERT INTO `tweet` VALUES ('8', '1', 'Success', 'http://192.168.11.117/easysocial/Public/tweetpic/1469438692_917394980.jpg', '2016-07-25 17:24:52', '1536', '1280');
INSERT INTO `tweet` VALUES ('9', '1', 'Brige', 'http://192.168.11.117/easysocial/Public/tweetpic/1469438927_523438719.jpg', '2016-07-25 17:28:47', '1536', '1280');

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
INSERT INTO `video` VALUES ('1', '未知小电影', 'http://data.vod.itc.cn/?new=/134/254/8qoaCXUIovFdt1gLOlJitB.mp4&vid=1001883384&plat=17&mkey=zODjT9WGnUfZSPKp9b0wPn3fyI5KBNUV&ch=tv&prod=app', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('2', '妈妈走进房间后发现儿子在做那种事时应该怎么办？主持人给出了爆笑的回答', 'http://us.sinaimg.cn/001fZzKOjx073DrC9y7605040100b5DL0k01.mp4?KID=unistore,video&Expires=1470029221&ssig=LTKXRr4bU7', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('3', '央视直播失误集锦第三季，全程高能！', 'http://us.sinaimg.cn/000zgUDLjx073rUeYtNJ05040100uDa80k01.mp4?KID=unistore,video&Expires=1470026703&ssig=%2BrIKmaytim', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('4', '校园疯狂版咋了爸爸，跳的不错哦！', 'http://us.sinaimg.cn/002OsU4ajx073vQs0VqL05040100Et8k0k01.mp4?KID=unistore,video&Expires=1470026639&ssig=tXrN7ODuMf', '2016-06-29 11:07:08');
INSERT INTO `video` VALUES ('5', '美国纽约一爱狗女网友养了两只哈士奇，可是最近却很头疼…每天早上准备出门上班，两只二哈早已经把大门死死堵住，不让主人出门…一看主人出来就嗷嗷大叫…二哈：从我身上踩过吧…', 'http://us.sinaimg.cn/000OAczajx0713ujqOPt010401001CBJ0k01.mp4?KID=unistore,video&Expires=1470030067&ssig=9j1yinIBOq', '2016-06-29 11:07:08');
