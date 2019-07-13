/*
 Navicat Premium Data Transfer

 Source Server         : lesson_group
 Source Server Type    : MySQL
 Source Server Version : 100222
 Source Host           : 106.12.72.248:3306
 Source Schema         : lesson3_group2

 Target Server Type    : MySQL
 Target Server Version : 100222
 File Encoding         : 65001

 Date: 08/07/2019 10:59:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '演员名字',
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '演员性别',
  `age` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '演员年龄',
  `nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO `actor` VALUES (1, '刘德华', '男', '50', '中国');
INSERT INTO `actor` VALUES (2, '古天乐', '男', '50', '中国');
INSERT INTO `actor` VALUES (3, '林嘉欣', '女', '45', '中国');
INSERT INTO `actor` VALUES (4, '汤姆', '男', '45', '美国');
INSERT INTO `actor` VALUES (5, '周冬雨', '女', '28', '中国');

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `city_id` int(20) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影院名字',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `city_id`(`city_id`) USING BTREE,
  CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, 1, '成龙国际影城');
INSERT INTO `cinema` VALUES (2, 2, '乐视影院');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名字',
  ` rand` int(11) NULL DEFAULT NULL COMMENT '城市级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '上海', 1);
INSERT INTO `city` VALUES (2, '南京', 2);
INSERT INTO `city` VALUES (3, '北京', 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NULL DEFAULT NULL,
  `move_id` int(20) NULL DEFAULT NULL,
  `collectTime` datetime(0) NULL DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `move_id`(`move_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`move_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 1, 1, '2019-07-08 10:30:48');

-- ----------------------------
-- Table structure for director
-- ----------------------------
DROP TABLE IF EXISTS `director`;
CREATE TABLE `director`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  ` gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导演性别',
  ` age` int(15) NULL DEFAULT NULL COMMENT ' 导演年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of director
-- ----------------------------
INSERT INTO `director` VALUES (1, '导演1', '男', 35);
INSERT INTO `director` VALUES (2, '导演2', '男', 30);
INSERT INTO `director` VALUES (3, '导演3', '男', 30);
INSERT INTO `director` VALUES (4, '邓超', '男', 50);
INSERT INTO `director` VALUES (5, '宫崎骏', '男', 68);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影名字',
  `director_id` int(20) NULL DEFAULT NULL COMMENT '电影导演',
  `releaseday` int(20) NULL DEFAULT NULL COMMENT '上映天数',
  `releasetime` datetime(0) NULL DEFAULT NULL COMMENT '上映时间',
  `duration` int(20) NULL DEFAULT NULL COMMENT '影片时长',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '影片页面',
  `brief` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '影片介绍',
  `variety_id` int(20) NULL DEFAULT NULL COMMENT '影片类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `director_id`(`director_id`) USING BTREE,
  INDEX `variety_id`(`variety_id`) USING BTREE,
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`variety_id`) REFERENCES `variety` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '蜘蛛侠', 1, 4, '2019-07-06 09:15:50', 125, NULL, '美国片', 1);
INSERT INTO `movie` VALUES (2, '扫赌2', 2, 7, '2019-07-08 10:34:31', 100, NULL, '毒品市场维持四分天下的格局', 2);
INSERT INTO `movie` VALUES (3, '狮子王', 3, 8, '2019-07-08 10:40:51', 118, NULL, '小狮子辛巴，经过朋友的陪伴，成为了森林之王', 1);
INSERT INTO `movie` VALUES (4, '银河补习班', 4, 5, '2019-07-09 10:50:18', 147, NULL, '航天员意外失联，他回忆起自己最了不起的爸爸', 4);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `movie_id` int(20) NULL DEFAULT NULL,
  `count` int(20) NULL DEFAULT NULL,
  `user_id` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `电影编号`(`movie_id`) USING BTREE,
  INDEX `用户编号`(`user_id`) USING BTREE,
  CONSTRAINT `用户编号` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `电影编号` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, 1, 1);
INSERT INTO `order` VALUES (2, 1, 2, 2);

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NULL DEFAULT NULL COMMENT ' 出演电影',
  `actor_id` int(20) NULL DEFAULT NULL COMMENT '出演主演员',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `movie_id`(`movie_id`) USING BTREE,
  INDEX `actor_id`(`actor_id`) USING BTREE,
  CONSTRAINT `play_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `play_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of play
-- ----------------------------
INSERT INTO `play` VALUES (1, 1, 1);
INSERT INTO `play` VALUES (2, 1, 2);

-- ----------------------------
-- Table structure for round
-- ----------------------------
DROP TABLE IF EXISTS `round`;
CREATE TABLE `round`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cinama_id` int(20) NULL DEFAULT NULL COMMENT '对应的影院',
  `movid_id` int(20) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL COMMENT '开演时间',
  `price` int(15) NULL DEFAULT NULL COMMENT '场次价格',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cinama_id`(`cinama_id`) USING BTREE,
  INDEX `movid_id`(`movid_id`) USING BTREE,
  CONSTRAINT `round_ibfk_1` FOREIGN KEY (`cinama_id`) REFERENCES `cinema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `round_ibfk_2` FOREIGN KEY (`movid_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of round
-- ----------------------------
INSERT INTO `round` VALUES (1, 1, 1, '2019-07-08 10:32:58', 38);
INSERT INTO `round` VALUES (2, 2, 1, '2019-07-08 10:33:27', 30);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  ` name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  ` phone` int(11) NULL DEFAULT NULL COMMENT ' ',
  `gender` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT ' 性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '用户1', 1111111, '男');
INSERT INTO `user` VALUES (2, '用户2', 222222, '男');
INSERT INTO `user` VALUES (3, '用户3', 333333, '男');
INSERT INTO `user` VALUES (4, '用户4', 44444, '男');

-- ----------------------------
-- Table structure for variety
-- ----------------------------
DROP TABLE IF EXISTS `variety`;
CREATE TABLE `variety`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电影类型标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of variety
-- ----------------------------
INSERT INTO `variety` VALUES (1, '冒险');
INSERT INTO `variety` VALUES (2, '戏剧');
INSERT INTO `variety` VALUES (3, '惊悚');
INSERT INTO `variety` VALUES (4, '家庭');

SET FOREIGN_KEY_CHECKS = 1;
