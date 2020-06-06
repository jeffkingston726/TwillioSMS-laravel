/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : sms_distributor

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 21/05/2020 15:17:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('039c70e7cfa4715c2e10550da1c13fba2bc484d9b684c5bd6edb5166335b679cf5669376d6081523', 4, 3, 'authToken', '[]', 0, '2020-04-21 23:56:51', '2020-04-21 23:56:51', '2021-04-21 23:56:51');
INSERT INTO `oauth_access_tokens` VALUES ('11161fc46931c71899b38ec21d4ee4545eff51bfc27a205271d6e8cf0e3c29a91fb45c84da6be03c', 1, 3, 'authToken', '[]', 0, '2020-04-18 20:28:09', '2020-04-18 20:28:09', '2021-04-18 20:28:09');
INSERT INTO `oauth_access_tokens` VALUES ('14d6817a6f43d290537e73450c26964d992eee947ada3b369062c0e14135d76027a0b2896ab11bad', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:10:18', '2020-04-20 02:10:18', '2021-04-20 02:10:18');
INSERT INTO `oauth_access_tokens` VALUES ('1aca108d9db960530828ffc1f12a703570d5f470a12db9da3e890fd228a2dcbc82b89478065e8562', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:11:47', '2020-04-20 02:11:47', '2021-04-20 02:11:47');
INSERT INTO `oauth_access_tokens` VALUES ('1d52a4eadca8a3057106b8856dbba08efe91c24c39c11002425107b4536ea8b3e5d172a9aa4a7162', 4, 3, 'authToken', '[]', 1, '2020-04-22 05:41:06', '2020-04-22 05:41:06', '2021-04-22 05:41:06');
INSERT INTO `oauth_access_tokens` VALUES ('20f441c48611b3d696067839ed6b17aa298c6859e68e6ecf94421aceef6c448e54df442d37e10a9d', 4, 3, 'authToken', '[]', 0, '2020-04-22 05:39:24', '2020-04-22 05:39:24', '2021-04-22 05:39:24');
INSERT INTO `oauth_access_tokens` VALUES ('23f8daad9ea959d9f7ffa86501b29be5b2b05de60980016e9f6d738520f28573207061d2ded1fb62', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:09:43', '2020-04-20 02:09:43', '2021-04-20 02:09:43');
INSERT INTO `oauth_access_tokens` VALUES ('2687599c48650fa86d6de2dfd2570fc8af125b95954f7f61cc1a19b85a67ea282eb82484ec266975', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:26:07', '2020-04-20 01:26:07', '2021-04-20 01:26:07');
INSERT INTO `oauth_access_tokens` VALUES ('2d7ba04dbe1bbdbab2ff5880d7ff6d98a525acdcc6b8051cc1a25d38f890a69998fcb999a014caad', 4, 3, 'authToken', '[]', 1, '2020-04-20 18:48:05', '2020-04-20 18:48:05', '2021-04-20 18:48:05');
INSERT INTO `oauth_access_tokens` VALUES ('2f086058149088b6713cd8e60d13c0d68f6bfba2aa8bf2d3ae24842a4d71f42881f3de49393d1493', 3, 3, 'authToken', '[]', 0, '2020-04-18 20:33:50', '2020-04-18 20:33:50', '2021-04-18 20:33:50');
INSERT INTO `oauth_access_tokens` VALUES ('41ca121a0999d4dc777eef89cc5318c43bfc741793f3b3b1fec6b604fc008cc6b8f8196b0f6c0d1f', 5, 3, 'authToken', '[]', 0, '2020-04-20 01:14:50', '2020-04-20 01:14:50', '2021-04-20 01:14:50');
INSERT INTO `oauth_access_tokens` VALUES ('4401ead462542c08cfcd953db22ef0463823ddb40e83c8604dd33d8c49af8ef8fa5b9ef5a3de3d26', 4, 3, 'authToken', '[]', 1, '2020-04-22 03:53:57', '2020-04-22 03:53:57', '2021-04-22 03:53:57');
INSERT INTO `oauth_access_tokens` VALUES ('4607dafc8dfd8aa195a303d04780dc757db851162c1c737b3a7e4cf3aac5f285bf7578c52ce23a13', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:20:57', '2020-04-20 02:20:57', '2021-04-20 02:20:57');
INSERT INTO `oauth_access_tokens` VALUES ('4d7e27cb172d3c004f6316a7b7e22fb4130170f524632f30e22e36613a9d6c5678c276ab09221847', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:19:00', '2020-04-20 02:19:00', '2021-04-20 02:19:00');
INSERT INTO `oauth_access_tokens` VALUES ('4e53032ce538a74a0044cd51fe13081a5b6519b0d420b2dafe91ce78e11897fe879fc6d934e0cd8e', 4, 3, 'authToken', '[]', 0, '2020-04-21 03:26:52', '2020-04-21 03:26:52', '2021-04-21 03:26:52');
INSERT INTO `oauth_access_tokens` VALUES ('50732ecc62242adf9db61bda08c70ac5192e90d838b0266cc3093d9875ca7fc110dc46b7a9031ab0', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:26:21', '2020-04-20 01:26:21', '2021-04-20 01:26:21');
INSERT INTO `oauth_access_tokens` VALUES ('510ff509ce2c1ee7d78cce185d7c83d97dfada2bcd088d4b3a4731e87514ecd1dfbd136f23b31898', 4, 3, 'authToken', '[]', 0, '2020-04-22 05:40:36', '2020-04-22 05:40:36', '2021-04-22 05:40:36');
INSERT INTO `oauth_access_tokens` VALUES ('56529bd6ac75b62c0a728b51e2cd7a4a95fce1efaa2bd70dfdfdbf8177a0c9c90d7431fbaa13783e', 4, 3, 'authToken', '[]', 0, '2020-04-23 00:52:17', '2020-04-23 00:52:17', '2021-04-23 00:52:17');
INSERT INTO `oauth_access_tokens` VALUES ('59bbe4bb2d07f38339b21522ae6140b971c4eed02aad292fe899aa71d3aa1acc09ae552b8fc302ab', 4, 3, 'authToken', '[]', 1, '2020-04-20 18:44:30', '2020-04-20 18:44:30', '2021-04-20 18:44:30');
INSERT INTO `oauth_access_tokens` VALUES ('5f15b5ed0e77e1b5e0bb216d9fb1e7fdddb157cdd802bfbdbd967502f42d115392b9914d3f56edf6', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:18:08', '2020-04-20 02:18:08', '2021-04-20 02:18:08');
INSERT INTO `oauth_access_tokens` VALUES ('6102d983782427a6c76ab54fc307729cb2ad515e9e5c9f88e18bc94cb5fb40b1c5a0ebb9cbd8f9e0', 2, 3, 'authToken', '[]', 0, '2020-04-19 05:05:12', '2020-04-19 05:05:12', '2021-04-19 05:05:12');
INSERT INTO `oauth_access_tokens` VALUES ('6b5e4ea8c8c7831fdc953126a589d98ac5fbbd9188d884bc5a77de705a605feacfa5c4c3541b5466', 4, 3, 'authToken', '[]', 0, '2020-04-23 11:29:12', '2020-04-23 11:29:12', '2021-04-23 11:29:12');
INSERT INTO `oauth_access_tokens` VALUES ('6bf7428b94e9c0b43db1a9cb00170885fb894b0d70dda6f44c4cf63fa4de03f8eb3e1ca51fd97e1b', 4, 3, 'authToken', '[]', 1, '2020-04-20 18:43:45', '2020-04-20 18:43:45', '2021-04-20 18:43:45');
INSERT INTO `oauth_access_tokens` VALUES ('81327aa3c29c69b69963a628edbf9da3c5176265893eacb20eaf79acc4b6e0e7c53a7a71c59835ce', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:00:03', '2020-04-20 02:00:03', '2021-04-20 02:00:03');
INSERT INTO `oauth_access_tokens` VALUES ('849bde79a5c5911ca0b92126dba9d0b2a4c37ed9d8433e4378edea54b127198daea8aebea4090a9a', 4, 3, 'authToken', '[]', 1, '2020-04-20 19:03:25', '2020-04-20 19:03:25', '2021-04-20 19:03:25');
INSERT INTO `oauth_access_tokens` VALUES ('8a254051bd3a7ed44671a508aed49d984afa3e04772cce6747ddc3c28089d65e5a4c0fcb3c6cc95d', 4, 3, 'authToken', '[]', 0, '2020-04-22 03:16:30', '2020-04-22 03:16:30', '2021-04-22 03:16:30');
INSERT INTO `oauth_access_tokens` VALUES ('915bb100677baef8ca7da5ae8533054553029cae3c77a0b18802701525b60a620a110054601f6a08', 2, 3, 'authToken', '[]', 0, '2020-04-19 23:51:41', '2020-04-19 23:51:41', '2021-04-19 23:51:41');
INSERT INTO `oauth_access_tokens` VALUES ('9988d40d49b71eb28f92212b252e182ddc2848f666c1a9aa9a04d269e49ac9f6ebbf2447c5c16531', 2, 3, 'authToken', '[]', 0, '2020-04-18 20:28:33', '2020-04-18 20:28:33', '2021-04-18 20:28:33');
INSERT INTO `oauth_access_tokens` VALUES ('a2a4e0af59b3b9c7d92c6c8382b75f74784128dfc8dceaa7db3b3557053a83c4b512d545aa463ca5', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:14:05', '2020-04-20 01:14:05', '2021-04-20 01:14:05');
INSERT INTO `oauth_access_tokens` VALUES ('a5262028ba9bc7ddb86efaf95c39bfe3e0231fb1fb3f107b527bfea10dc969ffeb62945af955c9bc', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:26:33', '2020-04-20 01:26:33', '2021-04-20 01:26:33');
INSERT INTO `oauth_access_tokens` VALUES ('a830c3bd70f51e2158f0676108d4b50513a4fdc4dbfd7da277f0fb6dda0a768fe2395f73218fd252', 4, 3, 'authToken', '[]', 1, '2020-04-22 03:54:29', '2020-04-22 03:54:29', '2021-04-22 03:54:29');
INSERT INTO `oauth_access_tokens` VALUES ('b5cf7c607044f26af824188f216b33c1aed33d39942f4048077f8fc8759b6a1a4ce33d5d7269611e', 4, 3, 'authToken', '[]', 0, '2020-04-20 02:43:59', '2020-04-20 02:43:59', '2021-04-20 02:43:59');
INSERT INTO `oauth_access_tokens` VALUES ('b97cfa08169b549e645efe63df0b84f7baa20eeeab3a36901cae15bc602b7cd86d76226e981239fe', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:59:20', '2020-04-20 01:59:20', '2021-04-20 01:59:20');
INSERT INTO `oauth_access_tokens` VALUES ('c8f34513d38a2a0f6d35fa08927356152639cb998f5b653e480a4ff2fd9a2cbd7cc392f2ba80e4b4', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:26:18', '2020-04-20 01:26:18', '2021-04-20 01:26:18');
INSERT INTO `oauth_access_tokens` VALUES ('ce570cecc22be918e78a02ab0f7336ff5a36137856171ee1c183d3534cfb6c2dc1a20e64ae7afd6e', 4, 3, 'authToken', '[]', 0, '2020-04-23 11:29:08', '2020-04-23 11:29:08', '2021-04-23 11:29:08');
INSERT INTO `oauth_access_tokens` VALUES ('ea6428d6ff870ee9e7a8a259f5e77e6948ae536867a70d09d9e7a90a8c9fffc660aa2e5278f06652', 4, 3, 'authToken', '[]', 0, '2020-04-20 01:25:28', '2020-04-20 01:25:28', '2021-04-20 01:25:28');
INSERT INTO `oauth_access_tokens` VALUES ('ef57ba5a7297bd16abf9f9314c9b513c1347336d0c52eeb725740830ad3bc97aa1261333f461bb3d', 4, 3, 'authToken', '[]', 1, '2020-04-23 00:51:38', '2020-04-23 00:51:38', '2021-04-23 00:51:38');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'r6PhFVvVn5mvCvjGHgRQryWbiTbcm3GCSpmGuYMf', 'http://localhost', 1, 0, 0, '2020-04-18 16:35:33', '2020-04-18 16:35:33');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'eCM2sT8Qj5j7Iz9OuiPW59YhHZG38i7nIq8A6hly', 'http://localhost', 0, 1, 0, '2020-04-18 16:35:33', '2020-04-18 16:35:33');
INSERT INTO `oauth_clients` VALUES (3, NULL, 'Laravel Personal Access Client', 'YpoLelGTrVedOzFr0zClcUFr3kww4Ng1Ww4seBwG', 'http://localhost', 1, 0, 0, '2020-04-18 16:35:45', '2020-04-18 16:35:45');
INSERT INTO `oauth_clients` VALUES (4, NULL, 'Laravel Password Grant Client', '5FKkqEcL1fzEYeNQ0amDst4Q5aDGP5hEfP914vpW', 'http://localhost', 0, 1, 0, '2020-04-18 16:35:46', '2020-04-18 16:35:46');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2020-04-18 16:35:33', '2020-04-18 16:35:33');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 3, '2020-04-18 16:35:46', '2020-04-18 16:35:46');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 0 COMMENT '0: deactive, 1: active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, 'aaabbb', 'malong.seraph204@gmail.com', NULL, '$2y$10$ewhToSzCaTxqpjekjaMoguIGrDXTBpsSzsvFSoR/AzUgTZ26HT6HW', 1, 1, NULL, '2020-04-20 01:14:05', '2020-04-20 08:18:10');

SET FOREIGN_KEY_CHECKS = 1;
