/*
 Navicat Premium Data Transfer

 Source Server         : SMS
 Source Server Type    : MySQL
 Source Server Version : 50647
 Source Host           : 216.14.112.162:3306
 Source Schema         : brickmag_sms_distributor

 Target Server Type    : MySQL
 Target Server Version : 50647
 File Encoding         : 65001

 Date: 24/04/2020 09:31:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sms
-- ----------------------------
INSERT INTO `sms` VALUES (3, 4, '+13108947469', 'This is a Test Message', 'out', '2020-04-23 20:26:43', '2020-04-23 20:26:43');
INSERT INTO `sms` VALUES (4, 4, '+1 718 593 4451', 'This is a Test Message', 'out', '2020-04-23 20:26:44', '2020-04-23 20:26:44');
INSERT INTO `sms` VALUES (5, 4, '7709067715', 'Hello this is another test from our latest sms platform! :)', 'out', '2020-04-23 20:33:34', '2020-04-23 20:33:34');
INSERT INTO `sms` VALUES (6, 4, '7703783346', 'Hello this is another test from our latest sms platform! :)', 'out', '2020-04-23 20:33:34', '2020-04-23 20:33:34');
INSERT INTO `sms` VALUES (7, 4, '6785207106', 'Hello this is another test from our latest sms platform! :)', 'out', '2020-04-23 20:33:34', '2020-04-23 20:33:34');
INSERT INTO `sms` VALUES (8, 4, '6787872723', 'Hello this is another test from our latest sms platform! :)', 'out', '2020-04-23 20:33:34', '2020-04-23 20:33:34');
INSERT INTO `sms` VALUES (9, 4, '6784813625', 'Hello this is another test from our latest sms platform! :)', 'out', '2020-04-23 20:33:35', '2020-04-23 20:33:35');
INSERT INTO `sms` VALUES (10, NULL, '+16784813625', 'Reply from andrew', 'in', '2020-04-23 20:34:19', '2020-04-23 20:34:19');
INSERT INTO `sms` VALUES (11, NULL, '+16785207106', 'K', 'in', '2020-04-23 20:35:23', '2020-04-23 20:35:23');
INSERT INTO `sms` VALUES (12, NULL, '+16787872723', 'Got it!', 'in', '2020-04-23 21:10:15', '2020-04-23 21:10:15');

SET FOREIGN_KEY_CHECKS = 1;
