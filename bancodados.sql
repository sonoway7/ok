/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36)
 Source Host           : localhost:3306
 Source Schema         : viper

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36)
 File Encoding         : 65001

 Date: 27/12/2023 13:21:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affiliate_histories
-- ----------------------------
DROP TABLE IF EXISTS `affiliate_histories`;
CREATE TABLE `affiliate_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `inviter` int(10) UNSIGNED NOT NULL,
  `commission` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `commission_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deposited` tinyint(4) NULL DEFAULT 0,
  `deposited_amount` decimal(10, 2) NULL DEFAULT 0.00,
  `losses` bigint(20) NULL DEFAULT 0,
  `losses_amount` decimal(10, 2) NULL DEFAULT 0.00,
  `commission_paid` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `affiliate_histories_user_id_index`(`user_id`) USING BTREE,
  INDEX `affiliate_histories_inviter_index`(`inviter`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of affiliate_histories
-- ----------------------------
INSERT INTO `affiliate_histories` VALUES (1, 74, 70, 20.00, 'cpa', 1, 40.00, 0, 0.00, 0.00, 0, '2023-10-22 12:12:32', '2023-10-22 12:15:57');
INSERT INTO `affiliate_histories` VALUES (2, 75, 28, 40.00, 'revshare', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-22 12:14:22', '2023-10-22 12:14:22');
INSERT INTO `affiliate_histories` VALUES (3, 75, 28, 20.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-22 12:14:22', '2023-10-22 12:14:22');
INSERT INTO `affiliate_histories` VALUES (4, 77, 28, 40.00, 'revshare', 1, 20.00, 0, 0.00, 0.00, 0, '2023-10-22 12:27:31', '2023-10-22 15:48:43');
INSERT INTO `affiliate_histories` VALUES (5, 77, 28, 20.00, 'cpa', 1, 40.00, 0, 0.00, 0.00, 0, '2023-10-22 12:27:31', '2023-10-22 15:48:43');
INSERT INTO `affiliate_histories` VALUES (6, 80, 70, 20.00, 'cpa', 1, 40.00, 0, 0.00, 0.00, 0, '2023-10-22 15:11:48', '2023-10-22 15:17:48');
INSERT INTO `affiliate_histories` VALUES (7, 81, 70, 20.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-22 15:18:01', '2023-10-22 15:18:01');
INSERT INTO `affiliate_histories` VALUES (8, 86, 63, 40.00, 'revshare', 1, 50.00, 0, 0.00, 0.00, 0, '2023-10-23 04:29:59', '2023-10-23 04:34:19');
INSERT INTO `affiliate_histories` VALUES (9, 86, 63, 20.00, 'cpa', 1, 100.00, 0, 0.00, 0.00, 1, '2023-10-23 04:29:59', '2023-10-23 04:34:19');
INSERT INTO `affiliate_histories` VALUES (10, 88, 28, 40.00, 'revshare', 1, 10.00, 20, 7.20, 0.00, 0, '2023-10-23 15:34:53', '2023-10-24 20:32:21');
INSERT INTO `affiliate_histories` VALUES (11, 88, 28, 20.00, 'cpa', 1, 20.00, 0, 0.00, 20.00, 1, '2023-10-23 15:34:53', '2023-10-24 13:54:52');
INSERT INTO `affiliate_histories` VALUES (12, 90, 28, 40.00, 'revshare', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-23 16:59:24', '2023-10-23 16:59:24');
INSERT INTO `affiliate_histories` VALUES (13, 90, 28, 20.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-23 16:59:24', '2023-10-23 16:59:24');
INSERT INTO `affiliate_histories` VALUES (14, 115, 98, 20.00, 'revshare', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-26 15:01:22', '2023-10-26 15:01:22');
INSERT INTO `affiliate_histories` VALUES (15, 115, 98, 20.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2023-10-26 15:01:22', '2023-10-26 15:01:22');
INSERT INTO `affiliate_histories` VALUES (16, 117, 98, 20.00, 'revshare', 1, 15.00, 30, 5.40, 0.00, 0, '2023-10-26 16:05:13', '2023-10-26 16:14:10');
INSERT INTO `affiliate_histories` VALUES (17, 117, 98, 20.00, 'cpa', 1, 15.00, 0, 0.00, 20.00, 1, '2023-10-26 16:05:13', '2023-10-26 16:06:41');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'https://xgames777.bet/vgames/exclusive/fortunetiger', '8pujcgLZhqjuHY5rQXJ2hjaEO2FSbd-metaZm9ydHVuZW1vdXNlLnBuZw==-.png', 'home', '...', '2023-12-18 19:34:03', '2023-12-19 23:49:38');
INSERT INTO `banners` VALUES (2, 'https://xgames777.bet/vgames/exclusive/fortunetiger', 'qS2XCXCJPtKPld3EzZk7JhNr4wStlG-metaZm9ydHVuZXJhYmJpdC5wbmc=-.png', 'home', '...', '2023-12-18 19:39:33', '2023-12-19 23:50:45');
INSERT INTO `banners` VALUES (3, 'https://xgames777.bet/vgames/exclusive/fortunetiger', 'lwHEgxeaAe1GVVJuqGFuM8li7rELs3-metaZm9ydHVuZW94LnBuZw==-.png', 'home', '....', '2023-12-18 19:39:50', '2023-12-19 23:51:11');
INSERT INTO `banners` VALUES (4, 'https://xgames777.bet/vgames/exclusive/fortunetiger', 'qEizyfvZv9Qr7A2uLx3QokkJ4APX1L-metaYmFubmVyMS5wbmc=-.png', 'carousel', '...', '2023-12-19 23:54:39', '2023-12-19 23:54:39');
INSERT INTO `banners` VALUES (5, 'https://xgames777.bet/vgames/exclusive/fortunetiger', '1PlYZ99yNaSSPA9fUVKIUgHQ1MnZ76-metaaGFsbG93ZW5fZGVfYXBvc3Rhcy5qcGc=-.jpg', 'carousel', '...', '2023-12-19 23:55:44', '2023-12-19 23:55:44');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for debug
-- ----------------------------
DROP TABLE IF EXISTS `debug`;
CREATE TABLE `debug`  (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of debug
-- ----------------------------
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"ca6328c8-af83-4f5d-a574-5f4ffea2b42d\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"82a56113-1d2a-47a0-9d94-c0aecd1f6dd2\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"0c42a844-cfda-43fb-bad9-4640d83fc026\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"0c42a844-cfda-43fb-bad9-4640d83fc026\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"4a8fb9e3-678d-4172-aa37-425e6ee2fda5\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"79cf85d6-0bac-40f5-92d4-433b561a4d1a\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"3fc9b81c-729a-4989-8617-b5abfae8b864\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"3ca0cc99-bfee-4b4e-a2d1-3d0185863f63\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"4640993b-88a8-4cc6-8ac2-f6753aac88f7\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"df6d01f9-d9d1-4e20-a44d-e8916670f519\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"e813796b-4ad2-4d71-bab9-c5eed79c2769\",\"typeTransaction\":\"PIX\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"d42474f6-4054-4f34-a87b-418c9d5e102a\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"ded8ed60-c6cc-46ee-a6c0-05da29a870c5\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"6b00c4c8-9aa8-4360-9641-8094b8ccd29f\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"a7dd36ab-92ad-40ae-a7d4-f6a24dd8c4e5\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"b1ba7266-ac87-4c61-bd0c-451b134ee2a3\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"8967c1e5-88fb-4ef6-be00-768e42241fd6\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"36867711-4504-47b0-9944-d1215e80a9ba\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"685f9dd0-62f0-46da-8985-d86572baa4b0\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"d6572e15-bcf8-433b-9c76-95da4ec14da6\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"f7dbac15-24a6-4f47-9b7d-8a46e9eb415d\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"8ed42a86-3fd4-41a8-a0f2-6afccc63b315\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"ada041a3-bd4b-4e35-9779-87355e0f54f0\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"7d414190-a425-48e8-85e8-b00fead3b7ae\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"93c8b97c-bf04-4553-8f15-30cafe191191\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"096ef608-830a-4d2d-9408-ae088cfe4889\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"04279031-a7e8-4d0e-a6ae-e94496a88eb3\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"ca711c60-783a-47df-9f87-89b2e287764e\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"1fde1e97-924b-4dd4-b6ab-33351f1ea035\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"3763b2dc-5298-4073-9172-27e7ca401dfb\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"e0fca72a-e345-4e2d-a7df-c8c79c7babc0\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"9b3a486e-f9cb-4b1c-8b8b-ac0498289453\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');
INSERT INTO `debug` VALUES ('{\"idTransaction\":\"c7a3b20d-b589-49ee-9250-d76cb7b577ce\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"acquirer_message\":null,\"acquirer_return_code\":null}');

-- ----------------------------
-- Table structure for deposits
-- ----------------------------
DROP TABLE IF EXISTS `deposits`;
CREATE TABLE `deposits`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `deposits_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deposits
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for fivers_games
-- ----------------------------
DROP TABLE IF EXISTS `fivers_games`;
CREATE TABLE `fivers_games`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fivers_provider_id` int(11) NOT NULL,
  `casino_category_id` int(11) NOT NULL,
  `game_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `game_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `views` bigint(20) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 880 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fivers_games
-- ----------------------------
INSERT INTO `fivers_games` VALUES (1, 1, 1, 'vs243mwarrior', 'Monkey Warrior', 'fivers/vs243mwarrior.png', 0, 1, '2023-12-23 23:23:31', '2023-12-23 23:23:31');
INSERT INTO `fivers_games` VALUES (2, 1, 1, 'vs20doghouse', 'The Dog House', 'fivers/vs20doghouse.png', 0, 1, '2023-12-23 23:23:32', '2023-12-23 23:23:32');
INSERT INTO `fivers_games` VALUES (3, 1, 1, 'vs40pirate', 'Pirate Gold', 'fivers/vs40pirate.png', 0, 1, '2023-12-23 23:23:33', '2023-12-23 23:23:33');
INSERT INTO `fivers_games` VALUES (4, 1, 1, 'vs20rhino', 'Great Rhino', 'fivers/vs20rhino.png', 0, 1, '2023-12-23 23:23:35', '2023-12-23 23:23:35');
INSERT INTO `fivers_games` VALUES (5, 1, 1, 'vs25pandagold', 'Panda Fortune', 'fivers/vs25pandagold.png', 0, 1, '2023-12-23 23:23:37', '2023-12-23 23:23:37');
INSERT INTO `fivers_games` VALUES (6, 1, 1, 'vs4096bufking', 'Buffalo King', 'fivers/vs4096bufking.png', 0, 1, '2023-12-23 23:23:39', '2023-12-23 23:23:39');
INSERT INTO `fivers_games` VALUES (7, 1, 1, 'vs25pyramid', 'Pyramid King', 'fivers/vs25pyramid.png', 0, 1, '2023-12-23 23:23:40', '2023-12-23 23:23:40');
INSERT INTO `fivers_games` VALUES (8, 1, 1, 'vs5ultrab', 'Ultra Burn', 'fivers/vs5ultrab.png', 0, 1, '2023-12-23 23:23:42', '2023-12-23 23:23:42');
INSERT INTO `fivers_games` VALUES (9, 1, 1, 'vs5ultra', 'Ultra Hold and Spin', 'fivers/vs5ultra.png', 0, 1, '2023-12-23 23:23:43', '2023-12-23 23:23:43');
INSERT INTO `fivers_games` VALUES (10, 1, 1, 'vs25jokerking', 'Joker King', 'fivers/vs25jokerking.png', 0, 1, '2023-12-23 23:23:45', '2023-12-23 23:23:45');
INSERT INTO `fivers_games` VALUES (11, 1, 1, 'vs10returndead', 'Return of the Dead', 'fivers/vs10returndead.png', 0, 1, '2023-12-23 23:23:47', '2023-12-23 23:23:47');
INSERT INTO `fivers_games` VALUES (12, 1, 1, 'vs10madame', 'Madame Destiny', 'fivers/vs10madame.png', 0, 1, '2023-12-23 23:23:48', '2023-12-23 23:23:48');
INSERT INTO `fivers_games` VALUES (13, 1, 1, 'vs15diamond', 'Diamond Strike', 'fivers/vs15diamond.png', 0, 1, '2023-12-23 23:23:50', '2023-12-23 23:23:50');
INSERT INTO `fivers_games` VALUES (14, 1, 1, 'vs25aztecking', 'Aztec King', 'fivers/vs25aztecking.png', 0, 1, '2023-12-23 23:23:52', '2023-12-23 23:23:52');
INSERT INTO `fivers_games` VALUES (15, 1, 1, 'vs25wildspells', 'Wild Spells', 'fivers/vs25wildspells.png', 0, 1, '2023-12-23 23:23:53', '2023-12-23 23:23:53');
INSERT INTO `fivers_games` VALUES (16, 1, 1, 'vs10bbbonanza', 'Big Bass Bonanza', 'fivers/vs10bbbonanza.png', 0, 1, '2023-12-23 23:23:55', '2023-12-23 23:23:55');
INSERT INTO `fivers_games` VALUES (17, 1, 1, 'vs10cowgold', 'Cowboys Gold', 'fivers/vs10cowgold.png', 0, 1, '2023-12-23 23:23:56', '2023-12-23 23:23:56');
INSERT INTO `fivers_games` VALUES (18, 1, 1, 'vs25tigerwar', 'The Tiger Warrior', 'fivers/vs25tigerwar.png', 0, 1, '2023-12-23 23:23:58', '2023-12-23 23:23:58');
INSERT INTO `fivers_games` VALUES (19, 1, 1, 'vs25mustang', 'Mustang Gold', 'fivers/vs25mustang.png', 0, 1, '2023-12-23 23:24:00', '2023-12-23 23:24:00');
INSERT INTO `fivers_games` VALUES (20, 1, 1, 'vs25hotfiesta', 'Hotfiesta', 'fivers/vs25hotfiesta.png', 0, 1, '2023-12-23 23:24:00', '2023-12-23 23:24:00');
INSERT INTO `fivers_games` VALUES (21, 1, 1, 'vs243dancingpar', 'Dance Party', 'fivers/vs243dancingpar.png', 0, 1, '2023-12-23 23:24:04', '2023-12-23 23:24:04');
INSERT INTO `fivers_games` VALUES (22, 1, 1, 'vs576treasures', 'Wild Wild Riches', 'fivers/vs576treasures.png', 0, 1, '2023-12-23 23:24:06', '2023-12-23 23:24:06');
INSERT INTO `fivers_games` VALUES (23, 1, 1, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'fivers/vs20hburnhs.png', 0, 1, '2023-12-23 23:24:08', '2023-12-23 23:24:08');
INSERT INTO `fivers_games` VALUES (24, 1, 1, 'vs20emptybank', 'Empty the Bank', 'fivers/vs20emptybank.png', 0, 1, '2023-12-23 23:24:09', '2023-12-23 23:24:09');
INSERT INTO `fivers_games` VALUES (25, 1, 1, 'vs20midas', 'The Hand of Midas', 'fivers/vs20midas.png', 0, 1, '2023-12-23 23:24:11', '2023-12-23 23:24:11');
INSERT INTO `fivers_games` VALUES (26, 1, 1, 'vs20olympgate', 'Gates of Olympus', 'fivers/vs20olympgate.png', 0, 1, '2023-12-23 23:24:13', '2023-12-23 23:24:13');
INSERT INTO `fivers_games` VALUES (27, 1, 1, 'vswayslight', 'Lucky Lightning', 'fivers/vswayslight.png', 0, 1, '2023-12-23 23:24:14', '2023-12-23 23:24:14');
INSERT INTO `fivers_games` VALUES (28, 1, 1, 'vs20vegasmagic', 'Vegas Magic', 'fivers/vs20vegasmagic.png', 0, 1, '2023-12-23 23:24:16', '2023-12-23 23:24:16');
INSERT INTO `fivers_games` VALUES (29, 1, 1, 'vs20fruitparty', 'Fruit Party', 'fivers/vs20fruitparty.png', 0, 1, '2023-12-23 23:24:17', '2023-12-23 23:24:17');
INSERT INTO `fivers_games` VALUES (30, 1, 1, 'vs20fparty2', 'Fruit Party 2', 'fivers/vs20fparty2.png', 0, 1, '2023-12-23 23:24:19', '2023-12-23 23:24:19');
INSERT INTO `fivers_games` VALUES (31, 1, 1, 'vswaysdogs', 'The Dog House Megaways', 'fivers/vswaysdogs.png', 0, 1, '2023-12-23 23:24:20', '2023-12-23 23:24:20');
INSERT INTO `fivers_games` VALUES (32, 1, 1, 'vs50juicyfr', 'Juicy Fruits', 'fivers/vs50juicyfr.png', 0, 1, '2023-12-23 23:24:22', '2023-12-23 23:24:22');
INSERT INTO `fivers_games` VALUES (33, 1, 1, 'vs25pandatemple', 'Panda Fortune 2', 'fivers/vs25pandatemple.png', 0, 1, '2023-12-23 23:24:23', '2023-12-23 23:24:23');
INSERT INTO `fivers_games` VALUES (34, 1, 1, 'vswaysbufking', 'Buffalo King Megaways', 'fivers/vswaysbufking.png', 0, 1, '2023-12-23 23:24:25', '2023-12-23 23:24:25');
INSERT INTO `fivers_games` VALUES (35, 1, 1, 'vs40wildwest', 'Wild West Gold', 'fivers/vs40wildwest.png', 0, 1, '2023-12-23 23:24:27', '2023-12-23 23:24:27');
INSERT INTO `fivers_games` VALUES (36, 1, 1, 'vs20chickdrop', 'Chicken Drop', 'fivers/vs20chickdrop.png', 0, 1, '2023-12-23 23:24:28', '2023-12-23 23:24:28');
INSERT INTO `fivers_games` VALUES (37, 1, 1, 'vs40spartaking', 'Spartan King', 'fivers/vs40spartaking.png', 0, 1, '2023-12-23 23:24:30', '2023-12-23 23:24:30');
INSERT INTO `fivers_games` VALUES (38, 1, 1, 'vswaysrhino', 'Great Rhino Megaways', 'fivers/vswaysrhino.png', 0, 1, '2023-12-23 23:24:32', '2023-12-23 23:24:32');
INSERT INTO `fivers_games` VALUES (39, 1, 1, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'fivers/vs20sbxmas.png', 0, 1, '2023-12-23 23:24:33', '2023-12-23 23:24:33');
INSERT INTO `fivers_games` VALUES (40, 1, 1, 'vs10fruity2', 'Extra Juicy', 'fivers/vs10fruity2.png', 0, 1, '2023-12-23 23:24:35', '2023-12-23 23:24:35');
INSERT INTO `fivers_games` VALUES (41, 1, 1, 'vs10egypt', 'Ancient Egypt', 'fivers/vs10egypt.png', 0, 1, '2023-12-23 23:24:36', '2023-12-23 23:24:36');
INSERT INTO `fivers_games` VALUES (42, 1, 1, 'vs5drhs', 'Dragon Hot Hold and Spin', 'fivers/vs5drhs.png', 0, 1, '2023-12-23 23:24:37', '2023-12-23 23:24:37');
INSERT INTO `fivers_games` VALUES (43, 1, 1, 'vs12bbb', 'Bigger Bass Bonanza', 'fivers/vs12bbb.png', 0, 1, '2023-12-23 23:24:39', '2023-12-23 23:24:39');
INSERT INTO `fivers_games` VALUES (44, 1, 1, 'vs20tweethouse', 'The Tweety House', 'fivers/vs20tweethouse.png', 0, 1, '2023-12-23 23:24:40', '2023-12-23 23:24:40');
INSERT INTO `fivers_games` VALUES (45, 1, 1, 'vswayslions', '5 Lions Megaways', 'fivers/vswayslions.png', 0, 1, '2023-12-23 23:24:42', '2023-12-23 23:24:42');
INSERT INTO `fivers_games` VALUES (46, 1, 1, 'vswayssamurai', 'Rise of Samurai Megaways', 'fivers/vswayssamurai.png', 0, 1, '2023-12-23 23:24:44', '2023-12-23 23:24:44');
INSERT INTO `fivers_games` VALUES (47, 1, 1, 'vs50pixie', 'Pixie Wings', 'fivers/vs50pixie.png', 0, 1, '2023-12-23 23:24:45', '2023-12-23 23:24:45');
INSERT INTO `fivers_games` VALUES (48, 1, 1, 'vs10floatdrg', 'Floating Dragon', 'fivers/vs10floatdrg.png', 0, 1, '2023-12-23 23:24:47', '2023-12-23 23:24:47');
INSERT INTO `fivers_games` VALUES (49, 1, 1, 'vs20fruitsw', 'Sweet Bonanza', 'fivers/vs20fruitsw.png', 0, 1, '2023-12-23 23:24:48', '2023-12-23 23:24:48');
INSERT INTO `fivers_games` VALUES (50, 1, 1, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'fivers/vs20rhinoluxe.png', 0, 1, '2023-12-23 23:24:50', '2023-12-23 23:24:50');
INSERT INTO `fivers_games` VALUES (51, 1, 1, 'vswaysmadame', 'Madame Destiny Megaways', 'fivers/vswaysmadame.png', 0, 1, '2023-12-23 23:24:51', '2023-12-23 23:24:51');
INSERT INTO `fivers_games` VALUES (52, 1, 1, 'vs1024temuj', 'Temujin Treasures', 'fivers/vs1024temuj.png', 0, 1, '2023-12-23 23:24:52', '2023-12-23 23:24:52');
INSERT INTO `fivers_games` VALUES (53, 1, 1, 'vs40pirgold', 'Pirate Gold Deluxe', 'fivers/vs40pirgold.png', 0, 1, '2023-12-23 23:24:54', '2023-12-23 23:24:54');
INSERT INTO `fivers_games` VALUES (54, 1, 1, 'vs25mmouse', 'Money Mouse', 'fivers/vs25mmouse.png', 0, 1, '2023-12-23 23:24:55', '2023-12-23 23:24:55');
INSERT INTO `fivers_games` VALUES (55, 1, 1, 'vs10threestar', 'Three Star Fortune', 'fivers/vs10threestar.png', 0, 1, '2023-12-23 23:24:57', '2023-12-23 23:24:57');
INSERT INTO `fivers_games` VALUES (56, 1, 1, 'vs1ball', 'Lucky Dragon Ball', 'fivers/vs1ball.png', 0, 1, '2023-12-23 23:24:58', '2023-12-23 23:24:58');
INSERT INTO `fivers_games` VALUES (57, 1, 1, 'vs243lionsgold', '5 Lions', 'fivers/vs243lionsgold.png', 0, 1, '2023-12-23 23:25:00', '2023-12-23 23:25:00');
INSERT INTO `fivers_games` VALUES (58, 1, 1, 'vs10egyptcls', 'Ancient Egypt Classic', 'fivers/vs10egyptcls.png', 0, 1, '2023-12-23 23:25:01', '2023-12-23 23:25:01');
INSERT INTO `fivers_games` VALUES (59, 1, 1, 'vs25davinci', 'Da Vinci Treasure', 'fivers/vs25davinci.png', 0, 1, '2023-12-23 23:25:03', '2023-12-23 23:25:03');
INSERT INTO `fivers_games` VALUES (60, 1, 1, 'vs7776secrets', 'Aztec Treasure', 'fivers/vs7776secrets.png', 0, 1, '2023-12-23 23:25:04', '2023-12-23 23:25:04');
INSERT INTO `fivers_games` VALUES (61, 1, 1, 'vs25wolfgold', 'Wolf Gold', 'fivers/vs25wolfgold.png', 0, 1, '2023-12-23 23:25:06', '2023-12-23 23:25:06');
INSERT INTO `fivers_games` VALUES (62, 1, 1, 'vs50safariking', 'Safari King', 'fivers/vs50safariking.png', 0, 1, '2023-12-23 23:25:07', '2023-12-23 23:25:07');
INSERT INTO `fivers_games` VALUES (63, 1, 1, 'vs25peking', 'Peking Luck', 'fivers/vs25peking.png', 0, 1, '2023-12-23 23:25:09', '2023-12-23 23:25:09');
INSERT INTO `fivers_games` VALUES (64, 1, 1, 'vs25asgard', 'Asgard', 'fivers/vs25asgard.png', 0, 1, '2023-12-23 23:25:10', '2023-12-23 23:25:10');
INSERT INTO `fivers_games` VALUES (65, 1, 1, 'vs25vegas', 'Vegas Nights', 'fivers/vs25vegas.png', 0, 1, '2023-12-23 23:25:12', '2023-12-23 23:25:12');
INSERT INTO `fivers_games` VALUES (66, 1, 1, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'fivers/vs25scarabqueen.png', 0, 1, '2023-12-23 23:25:13', '2023-12-23 23:25:13');
INSERT INTO `fivers_games` VALUES (67, 1, 1, 'vs20starlight', 'Starlight Princess', 'fivers/vs20starlight.png', 0, 1, '2023-12-23 23:25:15', '2023-12-23 23:25:15');
INSERT INTO `fivers_games` VALUES (68, 1, 1, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'fivers/vs10bookoftut.png', 0, 1, '2023-12-23 23:25:17', '2023-12-23 23:25:17');
INSERT INTO `fivers_games` VALUES (69, 1, 1, 'vs9piggybank', 'Piggy Bank Bills', 'fivers/vs9piggybank.png', 0, 1, '2023-12-23 23:25:18', '2023-12-23 23:25:18');
INSERT INTO `fivers_games` VALUES (70, 1, 1, 'vs5drmystery', 'Dragon Kingdom Mystery', 'fivers/vs5drmystery.png', 0, 1, '2023-12-23 23:25:20', '2023-12-23 23:25:20');
INSERT INTO `fivers_games` VALUES (71, 1, 1, 'vs20eightdragons', 'Eight Dragons', 'fivers/vs20eightdragons.png', 0, 1, '2023-12-23 23:25:22', '2023-12-23 23:25:22');
INSERT INTO `fivers_games` VALUES (72, 1, 1, 'vs1024lionsd', '5 Lions Dance', 'fivers/vs1024lionsd.png', 0, 1, '2023-12-23 23:25:23', '2023-12-23 23:25:23');
INSERT INTO `fivers_games` VALUES (73, 1, 1, 'vs25rio', 'Heart of Rio', 'fivers/vs25rio.png', 0, 1, '2023-12-23 23:25:25', '2023-12-23 23:25:25');
INSERT INTO `fivers_games` VALUES (74, 1, 1, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'fivers/vs10nudgeit.png', 0, 1, '2023-12-23 23:25:26', '2023-12-23 23:25:26');
INSERT INTO `fivers_games` VALUES (75, 1, 1, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'fivers/vs10bxmasbnza.png', 0, 1, '2023-12-23 23:25:28', '2023-12-23 23:25:28');
INSERT INTO `fivers_games` VALUES (76, 1, 1, 'vs20santawonder', 'Santa\'s Wonderland', 'fivers/vs20santawonder.png', 0, 1, '2023-12-23 23:25:30', '2023-12-23 23:25:30');
INSERT INTO `fivers_games` VALUES (77, 1, 1, 'vs10bblpop', 'Bubble Pop', 'fivers/vs10bblpop.png', 0, 1, '2023-12-23 23:25:31', '2023-12-23 23:25:31');
INSERT INTO `fivers_games` VALUES (78, 1, 1, 'vs25btygold', 'Bounty Gold', 'fivers/vs25btygold.png', 0, 1, '2023-12-23 23:25:32', '2023-12-23 23:25:32');
INSERT INTO `fivers_games` VALUES (79, 1, 1, 'vs88hockattack', 'Hockey Attack™', 'fivers/vs88hockattack.png', 0, 1, '2023-12-23 23:25:36', '2023-12-23 23:25:36');
INSERT INTO `fivers_games` VALUES (80, 1, 1, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'fivers/vswaysbbb.png', 0, 1, '2023-12-23 23:25:38', '2023-12-23 23:25:38');
INSERT INTO `fivers_games` VALUES (81, 1, 1, 'vs10bookfallen', 'Book of the Fallen', 'fivers/vs10bookfallen.png', 0, 1, '2023-12-23 23:25:39', '2023-12-23 23:25:39');
INSERT INTO `fivers_games` VALUES (82, 1, 1, 'vs40bigjuan', 'Big Juan', 'fivers/vs40bigjuan.png', 0, 1, '2023-12-23 23:25:41', '2023-12-23 23:25:41');
INSERT INTO `fivers_games` VALUES (83, 1, 1, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'fivers/vs20bermuda.png', 0, 1, '2023-12-23 23:25:43', '2023-12-23 23:25:43');
INSERT INTO `fivers_games` VALUES (84, 1, 1, 'vs10starpirate', 'Star Pirates Code', 'fivers/vs10starpirate.png', 0, 1, '2023-12-23 23:25:44', '2023-12-23 23:25:44');
INSERT INTO `fivers_games` VALUES (85, 1, 1, 'vswayswest', 'Mystic Chief', 'fivers/vswayswest.png', 0, 1, '2023-12-23 23:25:46', '2023-12-23 23:25:46');
INSERT INTO `fivers_games` VALUES (86, 1, 1, 'vs20daydead', 'Day of Dead', 'fivers/vs20daydead.png', 0, 1, '2023-12-23 23:25:48', '2023-12-23 23:25:48');
INSERT INTO `fivers_games` VALUES (87, 1, 1, 'vs20candvil', 'Candy Village', 'fivers/vs20candvil.png', 0, 1, '2023-12-23 23:25:49', '2023-12-23 23:25:49');
INSERT INTO `fivers_games` VALUES (88, 1, 1, 'vs20wildboost', 'Wild Booster', 'fivers/vs20wildboost.png', 0, 1, '2023-12-23 23:25:50', '2023-12-23 23:25:50');
INSERT INTO `fivers_games` VALUES (89, 1, 1, 'vswayshammthor', 'Power of Thor Megaways', 'fivers/vswayshammthor.png', 0, 1, '2023-12-23 23:25:52', '2023-12-23 23:25:52');
INSERT INTO `fivers_games` VALUES (90, 1, 1, 'vs243lions', '5 Lions', 'fivers/vs243lions.png', 0, 1, '2023-12-23 23:25:53', '2023-12-23 23:25:53');
INSERT INTO `fivers_games` VALUES (91, 1, 1, 'vs5super7', 'Super 7s', 'fivers/vs5super7.png', 0, 1, '2023-12-23 23:25:55', '2023-12-23 23:25:55');
INSERT INTO `fivers_games` VALUES (92, 1, 1, 'vs1masterjoker', 'Master Joker', 'fivers/vs1masterjoker.png', 0, 1, '2023-12-23 23:25:57', '2023-12-23 23:25:57');
INSERT INTO `fivers_games` VALUES (93, 1, 1, 'vs20kraken', 'Release the Kraken', 'fivers/vs20kraken.png', 0, 1, '2023-12-23 23:25:58', '2023-12-23 23:25:58');
INSERT INTO `fivers_games` VALUES (94, 1, 1, 'vs10firestrike', 'Fire Strike', 'fivers/vs10firestrike.png', 0, 1, '2023-12-23 23:26:00', '2023-12-23 23:26:00');
INSERT INTO `fivers_games` VALUES (95, 1, 1, 'vs243fortune', 'Caishen\'s Gold', 'fivers/vs243fortune.png', 0, 1, '2023-12-23 23:26:01', '2023-12-23 23:26:01');
INSERT INTO `fivers_games` VALUES (96, 1, 1, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'fivers/vs20aladdinsorc.png', 0, 1, '2023-12-23 23:26:03', '2023-12-23 23:26:03');
INSERT INTO `fivers_games` VALUES (97, 1, 1, 'vs243fortseren', 'Greek Gods', 'fivers/vs243fortseren.png', 0, 1, '2023-12-23 23:26:05', '2023-12-23 23:26:05');
INSERT INTO `fivers_games` VALUES (98, 1, 1, 'vs25chilli', 'Chilli Heat', 'fivers/vs25chilli.png', 0, 1, '2023-12-23 23:26:06', '2023-12-23 23:26:06');
INSERT INTO `fivers_games` VALUES (99, 1, 1, 'vs8magicjourn', 'Magic Journey', 'fivers/vs8magicjourn.png', 0, 1, '2023-12-23 23:26:08', '2023-12-23 23:26:08');
INSERT INTO `fivers_games` VALUES (100, 1, 1, 'vs20leprexmas', 'Leprechaun Carol', 'fivers/vs20leprexmas.png', 0, 1, '2023-12-23 23:26:09', '2023-12-23 23:26:09');
INSERT INTO `fivers_games` VALUES (101, 1, 1, 'vs7pigs', '7 Piggies', 'fivers/vs7pigs.png', 0, 1, '2023-12-23 23:26:11', '2023-12-23 23:26:11');
INSERT INTO `fivers_games` VALUES (102, 1, 1, 'vs243caishien', 'Caishen\'s Cash', 'fivers/vs243caishien.png', 0, 1, '2023-12-23 23:26:12', '2023-12-23 23:26:12');
INSERT INTO `fivers_games` VALUES (103, 1, 1, 'vs5joker', 'Joker\'s Jewels', 'fivers/vs5joker.png', 0, 1, '2023-12-23 23:26:13', '2023-12-23 23:26:13');
INSERT INTO `fivers_games` VALUES (104, 1, 1, 'vs25gladiator', 'Wild Gladiator', 'fivers/vs25gladiator.png', 0, 1, '2023-12-23 23:26:15', '2023-12-23 23:26:15');
INSERT INTO `fivers_games` VALUES (105, 1, 1, 'vs25goldpig', 'Golden Pig', 'fivers/vs25goldpig.png', 0, 1, '2023-12-23 23:26:16', '2023-12-23 23:26:16');
INSERT INTO `fivers_games` VALUES (106, 1, 1, 'vs25goldrush', 'Gold Rush', 'fivers/vs25goldrush.png', 0, 1, '2023-12-23 23:26:18', '2023-12-23 23:26:18');
INSERT INTO `fivers_games` VALUES (107, 1, 1, 'vs25dragonkingdom', 'Dragon Kingdom', 'fivers/vs25dragonkingdom.png', 0, 1, '2023-12-23 23:26:20', '2023-12-23 23:26:20');
INSERT INTO `fivers_games` VALUES (108, 1, 1, 'vs1dragon8', '888 Dragons', 'fivers/vs1dragon8.png', 0, 1, '2023-12-23 23:26:22', '2023-12-23 23:26:22');
INSERT INTO `fivers_games` VALUES (109, 1, 1, 'vs5aztecgems', 'Aztec Gems', 'fivers/vs5aztecgems.png', 0, 1, '2023-12-23 23:26:23', '2023-12-23 23:26:23');
INSERT INTO `fivers_games` VALUES (110, 1, 1, 'vs20hercpeg', 'Hercules and Pegasus', 'fivers/vs20hercpeg.png', 0, 1, '2023-12-23 23:26:25', '2023-12-23 23:26:25');
INSERT INTO `fivers_games` VALUES (111, 1, 1, 'vs7fire88', 'Fire 88', 'fivers/vs7fire88.png', 0, 1, '2023-12-23 23:26:26', '2023-12-23 23:26:26');
INSERT INTO `fivers_games` VALUES (112, 1, 1, 'vs20honey', 'Honey Honey Honey', 'fivers/vs20honey.png', 0, 1, '2023-12-23 23:26:28', '2023-12-23 23:26:28');
INSERT INTO `fivers_games` VALUES (113, 1, 1, 'vs25safari', 'Hot Safari', 'fivers/vs25safari.png', 0, 1, '2023-12-23 23:26:29', '2023-12-23 23:26:29');
INSERT INTO `fivers_games` VALUES (114, 1, 1, 'vs25journey', 'Journey to the West', 'fivers/vs25journey.png', 0, 1, '2023-12-23 23:26:31', '2023-12-23 23:26:31');
INSERT INTO `fivers_games` VALUES (115, 1, 1, 'vs20chicken', 'The Great Chicken Escape', 'fivers/vs20chicken.png', 0, 1, '2023-12-23 23:26:33', '2023-12-23 23:26:33');
INSERT INTO `fivers_games` VALUES (116, 1, 1, 'vs1fortunetree', 'Tree of Riches', 'fivers/vs1fortunetree.png', 0, 1, '2023-12-23 23:26:34', '2023-12-23 23:26:34');
INSERT INTO `fivers_games` VALUES (117, 1, 1, 'vs20wildpix', 'Wild Pixies', 'fivers/vs20wildpix.png', 0, 1, '2023-12-23 23:26:36', '2023-12-23 23:26:36');
INSERT INTO `fivers_games` VALUES (118, 1, 1, 'vs15fairytale', 'Fairytale Fortune', 'fivers/vs15fairytale.png', 0, 1, '2023-12-23 23:26:38', '2023-12-23 23:26:38');
INSERT INTO `fivers_games` VALUES (119, 1, 1, 'vs20santa', 'Santa', 'fivers/vs20santa.png', 0, 1, '2023-12-23 23:26:39', '2023-12-23 23:26:39');
INSERT INTO `fivers_games` VALUES (120, 1, 1, 'vs10vampwolf', 'Vampires vs Wolves', 'fivers/vs10vampwolf.png', 0, 1, '2023-12-23 23:26:41', '2023-12-23 23:26:41');
INSERT INTO `fivers_games` VALUES (121, 1, 1, 'vs50aladdin', '3 Genie Wishes', 'fivers/vs50aladdin.png', 0, 1, '2023-12-23 23:26:42', '2023-12-23 23:26:42');
INSERT INTO `fivers_games` VALUES (122, 1, 1, 'vs50hercules', 'Hercules Son of Zeus', 'fivers/vs50hercules.png', 0, 1, '2023-12-23 23:26:43', '2023-12-23 23:26:43');
INSERT INTO `fivers_games` VALUES (123, 1, 1, 'vs7776aztec', 'Aztec Bonanza', 'fivers/vs7776aztec.png', 0, 1, '2023-12-23 23:26:44', '2023-12-23 23:26:44');
INSERT INTO `fivers_games` VALUES (124, 1, 1, 'vs5trdragons', 'Triple Dragons', 'fivers/vs5trdragons.png', 0, 1, '2023-12-23 23:26:46', '2023-12-23 23:26:46');
INSERT INTO `fivers_games` VALUES (125, 1, 1, 'vs40madwheel', 'The Wild Machine', 'fivers/vs40madwheel.png', 0, 1, '2023-12-23 23:26:47', '2023-12-23 23:26:47');
INSERT INTO `fivers_games` VALUES (126, 1, 1, 'vs25newyear', 'Lucky New Year', 'fivers/vs25newyear.png', 0, 1, '2023-12-23 23:26:49', '2023-12-23 23:26:49');
INSERT INTO `fivers_games` VALUES (127, 1, 1, 'vs40frrainbow', 'Fruit Rainbow', 'fivers/vs40frrainbow.png', 0, 1, '2023-12-23 23:26:51', '2023-12-23 23:26:51');
INSERT INTO `fivers_games` VALUES (128, 1, 1, 'vs50kingkong', 'Mighty Kong', 'fivers/vs50kingkong.png', 0, 1, '2023-12-23 23:26:52', '2023-12-23 23:26:52');
INSERT INTO `fivers_games` VALUES (129, 1, 1, 'vs20godiva', 'Lady Godiva', 'fivers/vs20godiva.png', 0, 1, '2023-12-23 23:26:54', '2023-12-23 23:26:54');
INSERT INTO `fivers_games` VALUES (130, 1, 1, 'vs9madmonkey', 'Monkey Madness', 'fivers/vs9madmonkey.png', 0, 1, '2023-12-23 23:26:55', '2023-12-23 23:26:55');
INSERT INTO `fivers_games` VALUES (131, 1, 1, 'vs1tigers', 'Triple Tigers', 'fivers/vs1tigers.png', 0, 1, '2023-12-23 23:26:56', '2023-12-23 23:26:56');
INSERT INTO `fivers_games` VALUES (132, 1, 1, 'vs9chen', 'Master Chen\'s Fortune', 'fivers/vs9chen.png', 0, 1, '2023-12-23 23:26:58', '2023-12-23 23:26:58');
INSERT INTO `fivers_games` VALUES (133, 1, 1, 'vs5hotburn', 'Hot to burn', 'fivers/vs5hotburn.png', 0, 1, '2023-12-23 23:27:00', '2023-12-23 23:27:00');
INSERT INTO `fivers_games` VALUES (134, 1, 1, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'fivers/vs25dwarves_new.png', 0, 1, '2023-12-23 23:27:01', '2023-12-23 23:27:01');
INSERT INTO `fivers_games` VALUES (135, 1, 1, 'vs25sea', 'Great Reef', 'fivers/vs25sea.png', 0, 1, '2023-12-23 23:27:02', '2023-12-23 23:27:02');
INSERT INTO `fivers_games` VALUES (136, 1, 1, 'vs20leprechaun', 'Leprechaun Song', 'fivers/vs20leprechaun.png', 0, 1, '2023-12-23 23:27:03', '2023-12-23 23:27:03');
INSERT INTO `fivers_games` VALUES (137, 1, 1, 'vs7monkeys', '7 Monkeys', 'fivers/vs7monkeys.png', 0, 1, '2023-12-23 23:27:05', '2023-12-23 23:27:05');
INSERT INTO `fivers_games` VALUES (138, 1, 1, 'vs50chinesecharms', 'Lucky Dragons', 'fivers/vs50chinesecharms.png', 0, 1, '2023-12-23 23:27:07', '2023-12-23 23:27:07');
INSERT INTO `fivers_games` VALUES (139, 1, 1, 'vs18mashang', 'Treasure Horse', 'fivers/vs18mashang.png', 0, 1, '2023-12-23 23:27:08', '2023-12-23 23:27:08');
INSERT INTO `fivers_games` VALUES (140, 1, 1, 'vs5spjoker', 'Super Joker', 'fivers/vs5spjoker.png', 0, 1, '2023-12-23 23:27:10', '2023-12-23 23:27:10');
INSERT INTO `fivers_games` VALUES (141, 1, 1, 'vs20egypttrs', 'Egyptian Fortunes', 'fivers/vs20egypttrs.png', 0, 1, '2023-12-23 23:27:12', '2023-12-23 23:27:12');
INSERT INTO `fivers_games` VALUES (142, 1, 1, 'vs25queenofgold', 'Queen of Gold', 'fivers/vs25queenofgold.png', 0, 1, '2023-12-23 23:27:14', '2023-12-23 23:27:14');
INSERT INTO `fivers_games` VALUES (143, 1, 1, 'vs9hotroll', 'Hot Chilli', 'fivers/vs9hotroll.png', 0, 1, '2023-12-23 23:27:15', '2023-12-23 23:27:15');
INSERT INTO `fivers_games` VALUES (144, 1, 1, 'vs4096jurassic', 'Jurassic Giants', 'fivers/vs4096jurassic.png', 0, 1, '2023-12-23 23:27:16', '2023-12-23 23:27:16');
INSERT INTO `fivers_games` VALUES (145, 1, 1, 'vs3train', 'Gold Train', 'fivers/vs3train.png', 0, 1, '2023-12-23 23:27:18', '2023-12-23 23:27:18');
INSERT INTO `fivers_games` VALUES (146, 1, 1, 'vs40beowulf', 'Beowulf', 'fivers/vs40beowulf.png', 0, 1, '2023-12-23 23:27:19', '2023-12-23 23:27:19');
INSERT INTO `fivers_games` VALUES (147, 1, 1, 'vs20bl', 'Busy Bees', 'fivers/vs20bl.png', 0, 1, '2023-12-23 23:27:21', '2023-12-23 23:27:21');
INSERT INTO `fivers_games` VALUES (148, 1, 1, 'vs1money', 'Money Money Money', 'fivers/vs1money.png', 0, 1, '2023-12-23 23:27:22', '2023-12-23 23:27:22');
INSERT INTO `fivers_games` VALUES (149, 1, 1, 'vs1600drago', 'Drago - Jewels of Fortune', 'fivers/vs1600drago.png', 0, 1, '2023-12-23 23:27:24', '2023-12-23 23:27:24');
INSERT INTO `fivers_games` VALUES (150, 1, 1, 'vs1fufufu', 'Fu Fu Fu', 'fivers/vs1fufufu.png', 0, 1, '2023-12-23 23:27:26', '2023-12-23 23:27:26');
INSERT INTO `fivers_games` VALUES (151, 1, 1, 'vs40streetracer', 'Street Racer', 'fivers/vs40streetracer.png', 0, 1, '2023-12-23 23:27:26', '2023-12-23 23:27:26');
INSERT INTO `fivers_games` VALUES (152, 1, 1, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'fivers/vs9aztecgemsdx.png', 0, 1, '2023-12-23 23:27:28', '2023-12-23 23:27:28');
INSERT INTO `fivers_games` VALUES (153, 1, 1, 'vs20gorilla', 'Jungle Gorilla', 'fivers/vs20gorilla.png', 0, 1, '2023-12-23 23:27:29', '2023-12-23 23:27:29');
INSERT INTO `fivers_games` VALUES (154, 1, 1, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'fivers/vswayswerewolf.png', 0, 1, '2023-12-23 23:27:30', '2023-12-23 23:27:30');
INSERT INTO `fivers_games` VALUES (155, 1, 1, 'vswayshive', 'Star Bounty', 'fivers/vswayshive.png', 0, 1, '2023-12-23 23:27:32', '2023-12-23 23:27:32');
INSERT INTO `fivers_games` VALUES (156, 1, 1, 'vs25samurai', 'Rise of Samurai', 'fivers/vs25samurai.png', 0, 1, '2023-12-23 23:27:34', '2023-12-23 23:27:34');
INSERT INTO `fivers_games` VALUES (157, 1, 1, 'vs25walker', 'Wild Walker', 'fivers/vs25walker.png', 0, 1, '2023-12-23 23:27:35', '2023-12-23 23:27:35');
INSERT INTO `fivers_games` VALUES (158, 1, 1, 'vs20goldfever', 'Gems Bonanza', 'fivers/vs20goldfever.png', 0, 1, '2023-12-23 23:27:36', '2023-12-23 23:27:36');
INSERT INTO `fivers_games` VALUES (159, 1, 1, 'vs25bkofkngdm', 'Book of Kingdoms', 'fivers/vs25bkofkngdm.png', 0, 1, '2023-12-23 23:27:38', '2023-12-23 23:27:38');
INSERT INTO `fivers_games` VALUES (160, 1, 1, 'vs10goldfish', 'Fishin Reels', 'fivers/vs10goldfish.png', 0, 1, '2023-12-23 23:27:39', '2023-12-23 23:27:39');
INSERT INTO `fivers_games` VALUES (161, 1, 1, 'vs1024dtiger', 'The Dragon Tiger', 'fivers/vs1024dtiger.png', 0, 1, '2023-12-23 23:27:40', '2023-12-23 23:27:40');
INSERT INTO `fivers_games` VALUES (162, 1, 1, 'vs20xmascarol', 'Christmas Carol Megaways', 'fivers/vs20xmascarol.png', 0, 1, '2023-12-23 23:27:42', '2023-12-23 23:27:42');
INSERT INTO `fivers_games` VALUES (163, 1, 1, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'fivers/vs10mayangods.png', 0, 1, '2023-12-23 23:27:44', '2023-12-23 23:27:44');
INSERT INTO `fivers_games` VALUES (164, 1, 1, 'vs20bonzgold', 'Bonanza Gold', 'fivers/vs20bonzgold.png', 0, 1, '2023-12-23 23:27:45', '2023-12-23 23:27:45');
INSERT INTO `fivers_games` VALUES (165, 1, 1, 'vs40voodoo', 'Voodoo Magic', 'fivers/vs40voodoo.png', 0, 1, '2023-12-23 23:27:46', '2023-12-23 23:27:46');
INSERT INTO `fivers_games` VALUES (166, 1, 1, 'vs25gldox', 'Golden Ox', 'fivers/vs25gldox.png', 0, 1, '2023-12-23 23:27:48', '2023-12-23 23:27:48');
INSERT INTO `fivers_games` VALUES (167, 1, 1, 'vs10wildtut', 'Mysterious Egypt', 'fivers/vs10wildtut.png', 0, 1, '2023-12-23 23:27:49', '2023-12-23 23:27:49');
INSERT INTO `fivers_games` VALUES (168, 1, 1, 'vs10eyestorm', 'Eye of the Storm', 'fivers/vs10eyestorm.png', 0, 1, '2023-12-23 23:27:51', '2023-12-23 23:27:51');
INSERT INTO `fivers_games` VALUES (169, 1, 1, 'vs117649starz', 'Starz Megaways', 'fivers/vs117649starz.png', 0, 1, '2023-12-23 23:27:52', '2023-12-23 23:27:52');
INSERT INTO `fivers_games` VALUES (170, 1, 1, 'vs10amm', 'The Amazing Money Machine', 'fivers/vs10amm.png', 0, 1, '2023-12-23 23:27:54', '2023-12-23 23:27:54');
INSERT INTO `fivers_games` VALUES (171, 1, 1, 'vs20magicpot', 'The Magic Cauldron - Enchanted Brew', 'fivers/vs20magicpot.png', 0, 1, '2023-12-23 23:27:56', '2023-12-23 23:27:56');
INSERT INTO `fivers_games` VALUES (172, 1, 1, 'vswayselements', 'Elemental Gems Megaways', 'fivers/vswayselements.png', 0, 1, '2023-12-23 23:27:57', '2023-12-23 23:27:57');
INSERT INTO `fivers_games` VALUES (173, 1, 1, 'vswayschilheat', 'Chilli Heat Megaways', 'fivers/vswayschilheat.png', 0, 1, '2023-12-23 23:27:59', '2023-12-23 23:27:59');
INSERT INTO `fivers_games` VALUES (174, 1, 1, 'vs10luckcharm', 'Lucky Grace And Charm', 'fivers/vs10luckcharm.png', 0, 1, '2023-12-23 23:28:01', '2023-12-23 23:28:01');
INSERT INTO `fivers_games` VALUES (175, 1, 1, 'vswaysaztecking', 'Aztec King Megaways', 'fivers/vswaysaztecking.png', 0, 1, '2023-12-23 23:28:03', '2023-12-23 23:28:03');
INSERT INTO `fivers_games` VALUES (176, 1, 1, 'vs20phoenixf', 'Phoenix Forge', 'fivers/vs20phoenixf.png', 0, 1, '2023-12-23 23:28:04', '2023-12-23 23:28:04');
INSERT INTO `fivers_games` VALUES (177, 1, 1, 'vs576hokkwolf', 'Hokkaido Wolf', 'fivers/vs576hokkwolf.png', 0, 1, '2023-12-23 23:28:06', '2023-12-23 23:28:06');
INSERT INTO `fivers_games` VALUES (178, 1, 1, 'vs20trsbox', 'Treasure Wild', 'fivers/vs20trsbox.png', 0, 1, '2023-12-23 23:28:08', '2023-12-23 23:28:08');
INSERT INTO `fivers_games` VALUES (179, 1, 1, 'vs243chargebull', 'Raging Bull', 'fivers/vs243chargebull.png', 0, 1, '2023-12-23 23:28:09', '2023-12-23 23:28:09');
INSERT INTO `fivers_games` VALUES (180, 1, 1, 'vswaysbankbonz', 'Cash Bonanza', 'fivers/vswaysbankbonz.png', 0, 1, '2023-12-23 23:28:10', '2023-12-23 23:28:10');
INSERT INTO `fivers_games` VALUES (181, 1, 1, 'vs20pbonanza', 'Pyramid Bonanza', 'fivers/vs20pbonanza.png', 0, 1, '2023-12-23 23:28:12', '2023-12-23 23:28:12');
INSERT INTO `fivers_games` VALUES (182, 1, 1, 'vs243empcaishen', 'Emperor Caishen', 'fivers/vs243empcaishen.png', 0, 1, '2023-12-23 23:28:13', '2023-12-23 23:28:13');
INSERT INTO `fivers_games` VALUES (183, 1, 1, 'vs25tigeryear', 'New Year Tiger Treasures ™', 'fivers/vs25tigeryear.png', 0, 1, '2023-12-23 23:28:15', '2023-12-23 23:28:15');
INSERT INTO `fivers_games` VALUES (184, 1, 1, 'vs20amuleteg', 'Fortune of Giza™', 'fivers/vs20amuleteg.png', 0, 1, '2023-12-23 23:28:16', '2023-12-23 23:28:16');
INSERT INTO `fivers_games` VALUES (185, 1, 1, 'vs10runes', 'Gates of Valhalla™', 'fivers/vs10runes.png', 0, 1, '2023-12-23 23:28:19', '2023-12-23 23:28:19');
INSERT INTO `fivers_games` VALUES (186, 1, 1, 'vs25goldparty', 'Gold Party®', 'fivers/vs25goldparty.png', 0, 1, '2023-12-23 23:28:20', '2023-12-23 23:28:20');
INSERT INTO `fivers_games` VALUES (187, 1, 1, 'vswaysxjuicy', 'Extra Juicy Megaways™', 'fivers/vswaysxjuicy.png', 0, 1, '2023-12-23 23:28:22', '2023-12-23 23:28:22');
INSERT INTO `fivers_games` VALUES (188, 1, 1, 'vs40wanderw', 'Wild Depths™', 'fivers/vs40wanderw.png', 0, 1, '2023-12-23 23:28:24', '2023-12-23 23:28:24');
INSERT INTO `fivers_games` VALUES (189, 1, 1, 'vs4096magician', 'Magician\'s Secrets™', 'fivers/vs4096magician.png', 0, 1, '2023-12-23 23:28:25', '2023-12-23 23:28:25');
INSERT INTO `fivers_games` VALUES (190, 1, 1, 'vs20smugcove', 'Smugglers Cove™', 'fivers/vs20smugcove.png', 0, 1, '2023-12-23 23:28:27', '2023-12-23 23:28:27');
INSERT INTO `fivers_games` VALUES (191, 1, 1, 'vswayscryscav', 'Crystal Caverns Megaways™', 'fivers/vswayscryscav.png', 0, 1, '2023-12-23 23:28:29', '2023-12-23 23:28:29');
INSERT INTO `fivers_games` VALUES (192, 1, 1, 'vs20superx', 'Super X™', 'fivers/vs20superx.png', 0, 1, '2023-12-23 23:28:30', '2023-12-23 23:28:30');
INSERT INTO `fivers_games` VALUES (193, 1, 1, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'fivers/vs20rockvegas.png', 0, 1, '2023-12-23 23:28:32', '2023-12-23 23:28:32');
INSERT INTO `fivers_games` VALUES (194, 1, 1, 'vs25copsrobbers', 'Cash Patrol', 'fivers/vs25copsrobbers.png', 0, 1, '2023-12-23 23:28:35', '2023-12-23 23:28:35');
INSERT INTO `fivers_games` VALUES (195, 1, 1, 'vs20colcashzone', 'Colossal Cash Zone', 'fivers/vs20colcashzone.png', 0, 1, '2023-12-23 23:28:36', '2023-12-23 23:28:36');
INSERT INTO `fivers_games` VALUES (196, 1, 1, 'vs20ultim5', 'The Ultimate 5', 'fivers/vs20ultim5.png', 0, 1, '2023-12-23 23:28:38', '2023-12-23 23:28:38');
INSERT INTO `fivers_games` VALUES (197, 1, 1, 'vs20bchprty', 'Wild Beach Party', 'fivers/vs20bchprty.png', 0, 1, '2023-12-23 23:28:39', '2023-12-23 23:28:39');
INSERT INTO `fivers_games` VALUES (198, 1, 1, 'vs10bookazteck', 'Book of Aztec King', 'fivers/vs10bookazteck.png', 0, 1, '2023-12-23 23:28:40', '2023-12-23 23:28:40');
INSERT INTO `fivers_games` VALUES (199, 1, 1, 'vs50mightra', 'Might of Ra', 'fivers/vs50mightra.png', 0, 1, '2023-12-23 23:28:41', '2023-12-23 23:28:41');
INSERT INTO `fivers_games` VALUES (200, 1, 1, 'vs25bullfiesta', 'Bull Fiesta', 'fivers/vs25bullfiesta.png', 0, 1, '2023-12-23 23:28:42', '2023-12-23 23:28:42');
INSERT INTO `fivers_games` VALUES (201, 1, 1, 'vs20rainbowg', 'Rainbow Gold', 'fivers/vs20rainbowg.png', 0, 1, '2023-12-23 23:28:44', '2023-12-23 23:28:44');
INSERT INTO `fivers_games` VALUES (202, 1, 1, 'vs10tictac', 'Tic Tac Take', 'fivers/vs10tictac.png', 0, 1, '2023-12-23 23:28:45', '2023-12-23 23:28:45');
INSERT INTO `fivers_games` VALUES (203, 1, 1, 'vs243discolady', 'Disco Lady', 'fivers/vs243discolady.png', 0, 1, '2023-12-23 23:28:47', '2023-12-23 23:28:47');
INSERT INTO `fivers_games` VALUES (204, 1, 1, 'vs243queenie', 'Queenie', 'fivers/vs243queenie.png', 0, 1, '2023-12-23 23:28:49', '2023-12-23 23:28:49');
INSERT INTO `fivers_games` VALUES (205, 1, 1, 'vs20farmfest', 'Barn Festival', 'fivers/vs20farmfest.png', 0, 1, '2023-12-23 23:28:50', '2023-12-23 23:28:50');
INSERT INTO `fivers_games` VALUES (206, 1, 1, 'vs10chkchase', 'Chicken Chase', 'fivers/vs10chkchase.png', 0, 1, '2023-12-23 23:28:51', '2023-12-23 23:28:51');
INSERT INTO `fivers_games` VALUES (207, 1, 1, 'vswayswildwest', 'Wild West Gold Megaways', 'fivers/vswayswildwest.png', 0, 1, '2023-12-23 23:28:52', '2023-12-23 23:28:52');
INSERT INTO `fivers_games` VALUES (208, 1, 1, 'vs20mustanggld2', 'Clover Gold', 'fivers/vs20mustanggld2.png', 0, 1, '2023-12-23 23:28:54', '2023-12-23 23:28:54');
INSERT INTO `fivers_games` VALUES (209, 1, 1, 'vs20drtgold', 'Drill That Gold', 'fivers/vs20drtgold.png', 0, 1, '2023-12-23 23:28:55', '2023-12-23 23:28:55');
INSERT INTO `fivers_games` VALUES (210, 1, 1, 'vs10spiritadv', 'Spirit of Adventure', 'fivers/vs10spiritadv.png', 0, 1, '2023-12-23 23:28:57', '2023-12-23 23:28:57');
INSERT INTO `fivers_games` VALUES (211, 1, 1, 'vs10firestrike2', 'Fire Strike 2', 'fivers/vs10firestrike2.png', 0, 1, '2023-12-23 23:28:58', '2023-12-23 23:28:58');
INSERT INTO `fivers_games` VALUES (212, 1, 1, 'vs40cleoeye', 'Eye of Cleopatra', 'fivers/vs40cleoeye.png', 0, 1, '2023-12-23 23:29:00', '2023-12-23 23:29:00');
INSERT INTO `fivers_games` VALUES (213, 1, 1, 'vs20gobnudge', 'Goblin Heist Powernudge', 'fivers/vs20gobnudge.png', 0, 1, '2023-12-23 23:29:01', '2023-12-23 23:29:01');
INSERT INTO `fivers_games` VALUES (214, 1, 1, 'vs20stickysymbol', 'The Great Stick-up', 'fivers/vs20stickysymbol.png', 0, 1, '2023-12-23 23:29:02', '2023-12-23 23:29:02');
INSERT INTO `fivers_games` VALUES (215, 1, 1, 'vswayszombcarn', 'Zombie Carnival', 'fivers/vswayszombcarn.png', 0, 1, '2023-12-23 23:29:03', '2023-12-23 23:29:03');
INSERT INTO `fivers_games` VALUES (216, 1, 1, 'vs50northgard', 'North Guardians', 'fivers/vs50northgard.png', 0, 1, '2023-12-23 23:29:05', '2023-12-23 23:29:05');
INSERT INTO `fivers_games` VALUES (217, 1, 1, 'vs20sugarrush', 'Sugar Rush', 'fivers/vs20sugarrush.png', 0, 1, '2023-12-23 23:29:08', '2023-12-23 23:29:08');
INSERT INTO `fivers_games` VALUES (218, 1, 1, 'vs20cleocatra', 'Cleocatra', 'fivers/vs20cleocatra.png', 0, 1, '2023-12-23 23:29:09', '2023-12-23 23:29:09');
INSERT INTO `fivers_games` VALUES (219, 1, 1, 'vs5littlegem', 'Little Gem Hold and Spin', 'fivers/vs5littlegem.png', 0, 1, '2023-12-23 23:29:11', '2023-12-23 23:29:11');
INSERT INTO `fivers_games` VALUES (220, 1, 1, 'vs10egrich', 'Queen of Gods', 'fivers/vs10egrich.png', 0, 1, '2023-12-23 23:29:13', '2023-12-23 23:29:13');
INSERT INTO `fivers_games` VALUES (221, 1, 1, 'vs243koipond', 'Koi Pond', 'fivers/vs243koipond.png', 0, 1, '2023-12-23 23:29:15', '2023-12-23 23:29:15');
INSERT INTO `fivers_games` VALUES (222, 1, 1, 'vs40samurai3', 'Rise of Samurai 3', 'fivers/vs40samurai3.png', 0, 1, '2023-12-23 23:29:16', '2023-12-23 23:29:16');
INSERT INTO `fivers_games` VALUES (223, 1, 1, 'vs40cosmiccash', 'Cosmic Cash', 'fivers/vs40cosmiccash.png', 0, 1, '2023-12-23 23:29:18', '2023-12-23 23:29:18');
INSERT INTO `fivers_games` VALUES (224, 1, 1, 'vs25bomb', 'Bomb Bonanza', 'fivers/vs25bomb.png', 0, 1, '2023-12-23 23:29:19', '2023-12-23 23:29:19');
INSERT INTO `fivers_games` VALUES (225, 1, 1, 'vs1024mahjpanda', 'Mahjong Panda', 'fivers/vs1024mahjpanda.png', 0, 1, '2023-12-23 23:29:21', '2023-12-23 23:29:21');
INSERT INTO `fivers_games` VALUES (226, 1, 1, 'vs10coffee', 'Coffee Wild', 'fivers/vs10coffee.png', 0, 1, '2023-12-23 23:29:22', '2023-12-23 23:29:22');
INSERT INTO `fivers_games` VALUES (227, 1, 1, 'vs100sh', 'Shining Hot 100', 'fivers/vs100sh.png', 0, 1, '2023-12-23 23:29:24', '2023-12-23 23:29:24');
INSERT INTO `fivers_games` VALUES (228, 1, 1, 'vs20sh', 'Shining Hot 20', 'fivers/vs20sh.png', 0, 1, '2023-12-23 23:29:25', '2023-12-23 23:29:25');
INSERT INTO `fivers_games` VALUES (229, 1, 1, 'vs40sh', 'Shining Hot 40', 'fivers/vs40sh.png', 0, 1, '2023-12-23 23:29:27', '2023-12-23 23:29:27');
INSERT INTO `fivers_games` VALUES (230, 1, 1, 'vs5sh', 'Shining Hot 5', 'fivers/vs5sh.png', 0, 1, '2023-12-23 23:29:28', '2023-12-23 23:29:28');
INSERT INTO `fivers_games` VALUES (231, 1, 1, 'vswaysjkrdrop', 'Tropical Tiki', 'fivers/vswaysjkrdrop.png', 0, 1, '2023-12-23 23:29:30', '2023-12-23 23:29:30');
INSERT INTO `fivers_games` VALUES (232, 1, 1, 'vs243ckemp', 'Cheeky Emperor', 'fivers/vs243ckemp.png', 0, 1, '2023-12-23 23:29:32', '2023-12-23 23:29:32');
INSERT INTO `fivers_games` VALUES (233, 1, 1, 'vs40hotburnx', 'Hot To Burn Extreme', 'fivers/vs40hotburnx.png', 0, 1, '2023-12-23 23:29:33', '2023-12-23 23:29:33');
INSERT INTO `fivers_games` VALUES (234, 1, 1, 'vs1024gmayhem', 'Gorilla Mayhem', 'fivers/vs1024gmayhem.png', 0, 1, '2023-12-23 23:29:34', '2023-12-23 23:29:34');
INSERT INTO `fivers_games` VALUES (235, 1, 1, 'vs20octobeer', 'Octobeer Fortunes', 'fivers/vs20octobeer.png', 0, 1, '2023-12-23 23:29:36', '2023-12-23 23:29:36');
INSERT INTO `fivers_games` VALUES (236, 1, 1, 'vs10txbigbass', 'Big Bass Splash', 'fivers/vs10txbigbass.png', 0, 1, '2023-12-23 23:29:38', '2023-12-23 23:29:38');
INSERT INTO `fivers_games` VALUES (237, 1, 1, 'vs100firehot', 'Fire Hot 100', 'fivers/vs100firehot.png', 0, 1, '2023-12-23 23:29:39', '2023-12-23 23:29:39');
INSERT INTO `fivers_games` VALUES (238, 1, 1, 'vs20fh', 'Fire Hot 20', 'fivers/vs20fh.png', 0, 1, '2023-12-23 23:29:40', '2023-12-23 23:29:40');
INSERT INTO `fivers_games` VALUES (239, 1, 1, 'vs40firehot', 'Fire Hot 40', 'fivers/vs40firehot.png', 0, 1, '2023-12-23 23:29:41', '2023-12-23 23:29:41');
INSERT INTO `fivers_games` VALUES (240, 1, 1, 'vs5firehot', 'Fire Hot 5', 'fivers/vs5firehot.png', 0, 1, '2023-12-23 23:29:43', '2023-12-23 23:29:43');
INSERT INTO `fivers_games` VALUES (241, 1, 1, 'vs20wolfie', 'Greedy Wolf', 'fivers/vs20wolfie.png', 0, 1, '2023-12-23 23:29:44', '2023-12-23 23:29:44');
INSERT INTO `fivers_games` VALUES (242, 1, 1, 'vs20underground', 'Down the Rails', 'fivers/vs20underground.png', 0, 1, '2023-12-23 23:29:45', '2023-12-23 23:29:45');
INSERT INTO `fivers_games` VALUES (243, 1, 1, 'vs10mmm', 'Magic Money Maze', 'fivers/vs10mmm.png', 0, 1, '2023-12-23 23:29:47', '2023-12-23 23:29:47');
INSERT INTO `fivers_games` VALUES (244, 1, 1, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'fivers/vswaysfltdrg.png', 0, 1, '2023-12-23 23:29:49', '2023-12-23 23:29:49');
INSERT INTO `fivers_games` VALUES (245, 1, 1, 'vs20trswild2', 'Black Bull', 'fivers/vs20trswild2.png', 0, 1, '2023-12-23 23:29:51', '2023-12-23 23:29:51');
INSERT INTO `fivers_games` VALUES (246, 1, 1, 'vswaysstrwild', 'Candy Stars', 'fivers/vswaysstrwild.png', 0, 1, '2023-12-23 23:29:52', '2023-12-23 23:29:52');
INSERT INTO `fivers_games` VALUES (247, 1, 1, 'vs10crownfire', 'Crown of Fire', 'fivers/vs10crownfire.png', 0, 1, '2023-12-23 23:29:54', '2023-12-23 23:29:54');
INSERT INTO `fivers_games` VALUES (248, 1, 1, 'vs20muertos', 'Muertos Multiplier Megaways', 'fivers/vs20muertos.png', 0, 1, '2023-12-23 23:29:55', '2023-12-23 23:29:55');
INSERT INTO `fivers_games` VALUES (249, 1, 1, 'vswayslofhero', 'Legend of Heroes', 'fivers/vswayslofhero.png', 0, 1, '2023-12-23 23:29:57', '2023-12-23 23:29:57');
INSERT INTO `fivers_games` VALUES (250, 1, 1, 'vs5strh', 'Striking Hot 5', 'fivers/vs5strh.png', 0, 1, '2023-12-23 23:29:58', '2023-12-23 23:29:58');
INSERT INTO `fivers_games` VALUES (251, 1, 1, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'fivers/vs10snakeeyes.png', 0, 1, '2023-12-23 23:30:00', '2023-12-23 23:30:00');
INSERT INTO `fivers_games` VALUES (252, 1, 1, 'vswaysbook', 'Book of Golden Sands', 'fivers/vswaysbook.png', 0, 1, '2023-12-23 23:30:02', '2023-12-23 23:30:02');
INSERT INTO `fivers_games` VALUES (253, 1, 1, 'vs20mparty', 'Wild Hop and Drop', 'fivers/vs20mparty.png', 0, 1, '2023-12-23 23:30:03', '2023-12-23 23:30:03');
INSERT INTO `fivers_games` VALUES (254, 1, 1, 'vs20swordofares', 'Sword of Ares', 'fivers/vs20swordofares.png', 0, 1, '2023-12-23 23:30:05', '2023-12-23 23:30:05');
INSERT INTO `fivers_games` VALUES (255, 1, 1, 'vswaysfrywld', 'Spin & Score Megaways', 'fivers/vswaysfrywld.png', 0, 1, '2023-12-23 23:30:05', '2023-12-23 23:30:05');
INSERT INTO `fivers_games` VALUES (256, 1, 1, 'vswaysconcoll', 'Sweet PowerNudge™', 'fivers/vswaysconcoll.jpg', 0, 1, '2023-12-23 23:30:06', '2023-12-23 23:30:06');
INSERT INTO `fivers_games` VALUES (257, 1, 1, 'vs20lcount', 'Gems of Serengeti™', 'fivers/vs20lcount.jpg', 0, 1, '2023-12-23 23:30:06', '2023-12-23 23:30:06');
INSERT INTO `fivers_games` VALUES (258, 1, 1, 'vs20sparta', 'Shield of Sparta', 'fivers/vs20sparta.jpg', 0, 1, '2023-12-23 23:30:07', '2023-12-23 23:30:07');
INSERT INTO `fivers_games` VALUES (259, 1, 1, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'fivers/vs10bbkir.jpg', 0, 1, '2023-12-23 23:30:07', '2023-12-23 23:30:07');
INSERT INTO `fivers_games` VALUES (260, 1, 1, 'vswayspizza', 'Pizza Pizza Pizza', 'fivers/vswayspizza.jpg', 0, 1, '2023-12-23 23:30:07', '2023-12-23 23:30:07');
INSERT INTO `fivers_games` VALUES (261, 1, 1, 'vs20dugems', 'Hot Pepper™', 'fivers/vs20dugems.jpg', 0, 1, '2023-12-23 23:30:08', '2023-12-23 23:30:08');
INSERT INTO `fivers_games` VALUES (262, 1, 1, 'vs20clspwrndg', 'Sweet PowerNudge', 'fivers/vs20clspwrndg.jpg', 0, 1, '2023-12-23 23:30:08', '2023-12-23 23:30:08');
INSERT INTO `fivers_games` VALUES (263, 1, 1, 'vswaysfuryodin', 'Fury of Odin Megaways™', 'fivers/vswaysfuryodin.jpg', 0, 1, '2023-12-23 23:30:09', '2023-12-23 23:30:09');
INSERT INTO `fivers_games` VALUES (264, 1, 1, 'vs20sugarcoins', 'Viking Forge', 'fivers/vs20sugarcoins.png', 0, 1, '2023-12-23 23:30:10', '2023-12-23 23:30:10');
INSERT INTO `fivers_games` VALUES (265, 1, 1, 'vs20olympgrace', 'Grace of Ebisu', 'fivers/vs20olympgrace.png', 0, 1, '2023-12-23 23:30:12', '2023-12-23 23:30:12');
INSERT INTO `fivers_games` VALUES (266, 1, 1, 'vs20starlightx', 'Starlight Princess 1000', 'fivers/vs20starlightx.png', 0, 1, '2023-12-23 23:30:14', '2023-12-23 23:30:14');
INSERT INTO `fivers_games` VALUES (267, 1, 1, 'vswaysmoneyman', 'The Money Men Megaways', 'fivers/vswaysmoneyman.png', 0, 1, '2023-12-23 23:30:15', '2023-12-23 23:30:15');
INSERT INTO `fivers_games` VALUES (268, 1, 1, 'vs40demonpots', 'Demon Pots', 'fivers/vs40demonpots.png', 0, 1, '2023-12-23 23:30:17', '2023-12-23 23:30:17');
INSERT INTO `fivers_games` VALUES (269, 1, 1, 'vswaystut', 'John Hunter and the Book of Tut Megaways', 'fivers/vswaystut.png', 0, 1, '2023-12-23 23:30:18', '2023-12-23 23:30:18');
INSERT INTO `fivers_games` VALUES (270, 1, 1, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'fivers/vs10gdchalleng.png', 0, 1, '2023-12-23 23:30:20', '2023-12-23 23:30:20');
INSERT INTO `fivers_games` VALUES (271, 1, 1, 'vs20yisunshin', 'Yi Sun Shin', 'fivers/vs20yisunshin.png', 0, 1, '2023-12-23 23:30:21', '2023-12-23 23:30:21');
INSERT INTO `fivers_games` VALUES (272, 1, 1, 'vs20candyblitz', 'Candy Blitz', 'fivers/vs20candyblitz.png', 0, 1, '2023-12-23 23:30:23', '2023-12-23 23:30:23');
INSERT INTO `fivers_games` VALUES (273, 1, 1, 'vswaysstrlght', 'Fortunes of Aztec', 'fivers/vswaysstrlght.png', 0, 1, '2023-12-23 23:30:24', '2023-12-23 23:30:24');
INSERT INTO `fivers_games` VALUES (274, 1, 1, 'vs40infwild', 'Infective Wild', 'fivers/vs40infwild.png', 0, 1, '2023-12-23 23:30:26', '2023-12-23 23:30:26');
INSERT INTO `fivers_games` VALUES (275, 1, 1, 'vs20gravity', 'Gravity Bonanza', 'fivers/vs20gravity.png', 0, 1, '2023-12-23 23:30:27', '2023-12-23 23:30:27');
INSERT INTO `fivers_games` VALUES (276, 1, 1, 'vs40rainbowr', 'Rainbow Reels', 'fivers/vs40rainbowr.png', 0, 1, '2023-12-23 23:30:28', '2023-12-23 23:30:28');
INSERT INTO `fivers_games` VALUES (277, 1, 1, 'vs20bnnzdice', 'Sweet Bonanza Dice', 'fivers/vs20bnnzdice.png', 0, 1, '2023-12-23 23:30:30', '2023-12-23 23:30:30');
INSERT INTO `fivers_games` VALUES (278, 1, 1, 'vs10bhallbnza', 'Big Bass Halloween', 'fivers/vs10bhallbnza.png', 0, 1, '2023-12-23 23:30:31', '2023-12-23 23:30:31');
INSERT INTO `fivers_games` VALUES (279, 1, 1, 'vswaysraghex', 'Tundra\'s Fortune', 'fivers/vswaysraghex.png', 0, 1, '2023-12-23 23:30:33', '2023-12-23 23:30:33');
INSERT INTO `fivers_games` VALUES (280, 1, 1, 'vs20maskgame', 'Cash Chips', 'fivers/vs20maskgame.png', 0, 1, '2023-12-23 23:30:34', '2023-12-23 23:30:34');
INSERT INTO `fivers_games` VALUES (281, 1, 1, 'vs5gemstone', 'Gemstone', 'fivers/vs5gemstone.png', 0, 1, '2023-12-23 23:30:36', '2023-12-23 23:30:36');
INSERT INTO `fivers_games` VALUES (282, 1, 1, 'vs1024mahjwins', 'Mahjong Wins', 'fivers/vs1024mahjwins.png', 0, 1, '2023-12-23 23:30:37', '2023-12-23 23:30:37');
INSERT INTO `fivers_games` VALUES (283, 1, 1, 'vs20procount', 'Wisdom of Athena', 'fivers/vs20procount.png', 0, 1, '2023-12-23 23:30:39', '2023-12-23 23:30:39');
INSERT INTO `fivers_games` VALUES (284, 1, 1, 'vs20forge', 'Forge of Olympus', 'fivers/vs20forge.png', 0, 1, '2023-12-23 23:30:40', '2023-12-23 23:30:40');
INSERT INTO `fivers_games` VALUES (285, 1, 1, 'vswaysbbhas', 'Big Bass Hold & Spinner Megaways', 'fivers/vswaysbbhas.png', 0, 1, '2023-12-23 23:30:42', '2023-12-23 23:30:42');
INSERT INTO `fivers_games` VALUES (286, 1, 1, 'vs20earthquake', 'Cyclops Smash', 'fivers/vs20earthquake.png', 0, 1, '2023-12-23 23:30:43', '2023-12-23 23:30:43');
INSERT INTO `fivers_games` VALUES (287, 1, 1, 'vs20saiman', 'Saiyan Mania', 'fivers/vs20saiman.png', 0, 1, '2023-12-23 23:30:44', '2023-12-23 23:30:44');
INSERT INTO `fivers_games` VALUES (288, 1, 1, 'vs20piggybank', 'Piggy Bankers', 'fivers/vs20piggybank.png', 0, 1, '2023-12-23 23:30:45', '2023-12-23 23:30:45');
INSERT INTO `fivers_games` VALUES (289, 1, 1, 'vs20lvlup', 'Pub Kings', 'fivers/vs20lvlup.png', 0, 1, '2023-12-23 23:30:47', '2023-12-23 23:30:47');
INSERT INTO `fivers_games` VALUES (290, 1, 1, 'vs10trail', 'Mustang Trail', 'fivers/vs10trail.png', 0, 1, '2023-12-23 23:30:48', '2023-12-23 23:30:48');
INSERT INTO `fivers_games` VALUES (291, 1, 1, 'vs20supermania', 'Supermania', 'fivers/vs20supermania.png', 0, 1, '2023-12-23 23:30:50', '2023-12-23 23:30:50');
INSERT INTO `fivers_games` VALUES (292, 1, 1, 'vs50dmdcascade', 'Diamond Cascade', 'fivers/vs50dmdcascade.png', 0, 1, '2023-12-23 23:30:51', '2023-12-23 23:30:51');
INSERT INTO `fivers_games` VALUES (293, 1, 1, 'vs20lobcrab', 'Lobster Bob\'s Crazy Crab Shack', 'fivers/vs20lobcrab.png', 0, 1, '2023-12-23 23:30:53', '2023-12-23 23:30:53');
INSERT INTO `fivers_games` VALUES (294, 1, 1, 'vs20wildparty', '3 Buzzing Wilds', 'fivers/vs20wildparty.png', 0, 1, '2023-12-23 23:30:54', '2023-12-23 23:30:54');
INSERT INTO `fivers_games` VALUES (295, 1, 1, 'vs20doghousemh', 'The Dog House Multihold', 'fivers/vs20doghousemh.png', 0, 1, '2023-12-23 23:30:56', '2023-12-23 23:30:56');
INSERT INTO `fivers_games` VALUES (296, 1, 1, 'vs20splmystery', 'Spellbinding Mystery', 'fivers/vs20splmystery.png', 0, 1, '2023-12-23 23:30:57', '2023-12-23 23:30:57');
INSERT INTO `fivers_games` VALUES (297, 1, 1, 'vs20cashmachine', 'Cash Box', 'fivers/vs20cashmachine.png', 0, 1, '2023-12-23 23:30:59', '2023-12-23 23:30:59');
INSERT INTO `fivers_games` VALUES (298, 1, 1, 'vs50jucier', 'Sky Bounty', 'fivers/vs50jucier.png', 0, 1, '2023-12-23 23:31:00', '2023-12-23 23:31:00');
INSERT INTO `fivers_games` VALUES (299, 1, 1, 'vs243nudge4gold', 'Hellvis Wild', 'fivers/vs243nudge4gold.png', 0, 1, '2023-12-23 23:31:02', '2023-12-23 23:31:02');
INSERT INTO `fivers_games` VALUES (300, 1, 1, 'vs25jokrace', 'Joker Race', 'fivers/vs25jokrace.png', 0, 1, '2023-12-23 23:31:04', '2023-12-23 23:31:04');
INSERT INTO `fivers_games` VALUES (301, 1, 1, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'fivers/vs20hstgldngt.png', 0, 1, '2023-12-23 23:31:05', '2023-12-23 23:31:05');
INSERT INTO `fivers_games` VALUES (302, 1, 1, 'vs20beefed', 'Fat Panda', 'fivers/vs20beefed.png', 0, 1, '2023-12-23 23:31:07', '2023-12-23 23:31:07');
INSERT INTO `fivers_games` VALUES (303, 1, 1, 'vs20jewelparty', 'Jewel Rush', 'fivers/vs20jewelparty.png', 0, 1, '2023-12-23 23:31:08', '2023-12-23 23:31:08');
INSERT INTO `fivers_games` VALUES (304, 1, 1, 'vs9outlaw', 'Pirates Pub', 'fivers/vs9outlaw.png', 0, 1, '2023-12-23 23:31:10', '2023-12-23 23:31:10');
INSERT INTO `fivers_games` VALUES (305, 1, 1, 'vswaysfrbugs', 'Frogs & Bugs', 'fivers/vswaysfrbugs.png', 0, 1, '2023-12-23 23:31:11', '2023-12-23 23:31:11');
INSERT INTO `fivers_games` VALUES (306, 1, 1, 'vs20lampinf', 'Lamp Of Infinity', 'fivers/vs20lampinf.png', 0, 1, '2023-12-23 23:31:13', '2023-12-23 23:31:13');
INSERT INTO `fivers_games` VALUES (307, 1, 1, 'vs4096robber', 'Robber Strike', 'fivers/vs4096robber.png', 0, 1, '2023-12-23 23:31:14', '2023-12-23 23:31:14');
INSERT INTO `fivers_games` VALUES (308, 1, 1, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'fivers/vs10fdrasbf.png', 0, 1, '2023-12-23 23:31:16', '2023-12-23 23:31:16');
INSERT INTO `fivers_games` VALUES (309, 1, 1, 'vs20clustwild', 'Sticky Bees', 'fivers/vs20clustwild.png', 0, 1, '2023-12-23 23:31:17', '2023-12-23 23:31:17');
INSERT INTO `fivers_games` VALUES (310, 1, 1, 'vs25spotz', 'Knight Hot Spotz', 'fivers/vs25spotz.png', 0, 1, '2023-12-23 23:31:19', '2023-12-23 23:31:19');
INSERT INTO `fivers_games` VALUES (311, 1, 1, 'vs20excalibur', 'Excalibur Unleashed', 'fivers/vs20excalibur.png', 0, 1, '2023-12-23 23:31:20', '2023-12-23 23:31:20');
INSERT INTO `fivers_games` VALUES (312, 1, 1, 'vs20stickywild', 'Wild Bison Charge', 'fivers/vs20stickywild.png', 0, 1, '2023-12-23 23:31:22', '2023-12-23 23:31:22');
INSERT INTO `fivers_games` VALUES (313, 1, 1, 'vs25holiday', 'Holiday Ride', 'fivers/vs25holiday.png', 0, 1, '2023-12-23 23:31:23', '2023-12-23 23:31:23');
INSERT INTO `fivers_games` VALUES (314, 1, 1, 'vs20mvwild', 'Jasmine Dreams', 'fivers/vs20mvwild.png', 0, 1, '2023-12-23 23:31:25', '2023-12-23 23:31:25');
INSERT INTO `fivers_games` VALUES (315, 1, 1, 'vs10kingofdth', 'Kingdom of the Dead', 'fivers/vs10kingofdth.png', 0, 1, '2023-12-23 23:31:26', '2023-12-23 23:31:26');
INSERT INTO `fivers_games` VALUES (316, 1, 1, 'vswaysultrcoin', 'Cowboy Coins', 'fivers/vswaysultrcoin.png', 0, 1, '2023-12-23 23:31:28', '2023-12-23 23:31:28');
INSERT INTO `fivers_games` VALUES (317, 1, 1, 'vs10gizagods', 'Gods of Giza', 'fivers/vs10gizagods.png', 0, 1, '2023-12-23 23:31:29', '2023-12-23 23:31:29');
INSERT INTO `fivers_games` VALUES (318, 1, 1, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'fivers/vswaysrsm.png', 0, 1, '2023-12-23 23:31:31', '2023-12-23 23:31:31');
INSERT INTO `fivers_games` VALUES (319, 1, 1, 'vswaysmonkey', '3 Dancing Monkeys', 'fivers/vswaysmonkey.png', 0, 1, '2023-12-23 23:31:33', '2023-12-23 23:31:33');
INSERT INTO `fivers_games` VALUES (320, 1, 1, 'vs20hotzone', 'African Elephant', 'fivers/vs20hotzone.png', 0, 1, '2023-12-23 23:31:35', '2023-12-23 23:31:35');
INSERT INTO `fivers_games` VALUES (321, 1, 1, 'vs10bbhas', 'Big Bass - Hold & Spinner', 'fivers/vs10bbhas.png', 0, 1, '2023-12-23 23:31:36', '2023-12-23 23:31:36');
INSERT INTO `fivers_games` VALUES (322, 1, 1, 'vs1024moonsh', 'Moonshot', 'fivers/vs1024moonsh.png', 0, 1, '2023-12-23 23:31:37', '2023-12-23 23:31:37');
INSERT INTO `fivers_games` VALUES (323, 1, 1, 'vswaysredqueen', 'The Red Queen', 'fivers/vswaysredqueen.png', 0, 1, '2023-12-23 23:31:38', '2023-12-23 23:31:38');
INSERT INTO `fivers_games` VALUES (324, 1, 1, 'vs20framazon', 'Fruits of the Amazon', 'fivers/vs20framazon.png', 0, 1, '2023-12-23 23:31:39', '2023-12-23 23:31:39');
INSERT INTO `fivers_games` VALUES (325, 1, 1, 'vs20sknights', 'The Knight King', 'fivers/vs20sknights.png', 0, 1, '2023-12-23 23:31:41', '2023-12-23 23:31:41');
INSERT INTO `fivers_games` VALUES (326, 1, 1, 'vs20goldclust', 'Rabbit Garden', 'fivers/vs20goldclust.png', 0, 1, '2023-12-23 23:31:42', '2023-12-23 23:31:42');
INSERT INTO `fivers_games` VALUES (327, 1, 1, 'vswaysmorient', 'Mystery of the Orient', 'fivers/vswaysmorient.png', 0, 1, '2023-12-23 23:31:44', '2023-12-23 23:31:44');
INSERT INTO `fivers_games` VALUES (328, 1, 1, 'vs10powerlines', 'Peak Power', 'fivers/vs10powerlines.png', 0, 1, '2023-12-23 23:31:45', '2023-12-23 23:31:45');
INSERT INTO `fivers_games` VALUES (329, 1, 1, 'vs12tropicana', 'Club Tropicana', 'fivers/vs12tropicana.png', 0, 1, '2023-12-23 23:31:47', '2023-12-23 23:31:47');
INSERT INTO `fivers_games` VALUES (330, 1, 1, 'vs25archer', 'Fire Archer', 'fivers/vs25archer.png', 0, 1, '2023-12-23 23:31:48', '2023-12-23 23:31:48');
INSERT INTO `fivers_games` VALUES (331, 1, 1, 'vs20gatotfury', 'Gatot Kaca\'s Fury', 'fivers/vs20gatotfury.png', 0, 1, '2023-12-23 23:31:50', '2023-12-23 23:31:50');
INSERT INTO `fivers_games` VALUES (332, 1, 1, 'vs20mochimon', 'Mochimon', 'fivers/vs20mochimon.png', 0, 1, '2023-12-23 23:31:51', '2023-12-23 23:31:51');
INSERT INTO `fivers_games` VALUES (333, 1, 1, 'vs10fisheye', 'Fish Eye', 'fivers/vs10fisheye.png', 0, 1, '2023-12-23 23:31:53', '2023-12-23 23:31:53');
INSERT INTO `fivers_games` VALUES (334, 1, 1, 'vs20superlanche', 'Monster Superlanche', 'fivers/vs20superlanche.png', 0, 1, '2023-12-23 23:31:54', '2023-12-23 23:31:54');
INSERT INTO `fivers_games` VALUES (335, 1, 1, 'vswaysftropics', 'Frozen Tropics', 'fivers/vswaysftropics.png', 0, 1, '2023-12-23 23:31:56', '2023-12-23 23:31:56');
INSERT INTO `fivers_games` VALUES (336, 1, 1, 'vswaysincwnd', 'Gold Oasis', 'fivers/vswaysincwnd.png', 0, 1, '2023-12-23 23:31:57', '2023-12-23 23:31:57');
INSERT INTO `fivers_games` VALUES (337, 1, 1, 'vs25spgldways', 'Secret City Gold', 'fivers/vs25spgldways.png', 0, 1, '2023-12-23 23:31:59', '2023-12-23 23:31:59');
INSERT INTO `fivers_games` VALUES (338, 1, 1, 'vswayswwhex', 'Wild Wild Bananas', 'fivers/vswayswwhex.png', 0, 1, '2023-12-23 23:32:00', '2023-12-23 23:32:00');
INSERT INTO `fivers_games` VALUES (339, 2, 1, 'SGReturnToTheFeature', 'Return to the Future', 'fivers/SGReturnToTheFeature.png', 0, 1, '2023-12-23 23:32:03', '2023-12-23 23:32:03');
INSERT INTO `fivers_games` VALUES (340, 2, 1, 'SGTabernaDeLosMuertosUltra', 'Tevena de los Muirtos Ultra', 'fivers/SGTabernaDeLosMuertosUltra.png', 0, 1, '2023-12-23 23:32:03', '2023-12-23 23:32:03');
INSERT INTO `fivers_games` VALUES (341, 2, 1, 'SGTotemTowers', 'Totem towers', 'fivers/SGTotemTowers.png', 0, 1, '2023-12-23 23:32:03', '2023-12-23 23:32:03');
INSERT INTO `fivers_games` VALUES (342, 2, 1, 'SGChristmasGiftRush', 'Christmas Kipoot Rush', 'fivers/SGChristmasGiftRush.png', 0, 1, '2023-12-23 23:32:04', '2023-12-23 23:32:04');
INSERT INTO `fivers_games` VALUES (343, 2, 1, 'SGOrbsOfAtlantis', 'Overs of Atlantis', 'fivers/SGOrbsOfAtlantis.png', 0, 1, '2023-12-23 23:32:04', '2023-12-23 23:32:04');
INSERT INTO `fivers_games` VALUES (344, 2, 1, 'SGBeforeTimeRunsOut', 'Before Time Runner Out', 'fivers/SGBeforeTimeRunsOut.png', 0, 1, '2023-12-23 23:32:05', '2023-12-23 23:32:05');
INSERT INTO `fivers_games` VALUES (345, 2, 1, 'SGTechnoTumble', 'Techno tumble', 'fivers/SGTechnoTumble.png', 0, 1, '2023-12-23 23:32:05', '2023-12-23 23:32:05');
INSERT INTO `fivers_games` VALUES (346, 2, 1, 'SGWealthInn', 'Wells Inn', 'fivers/SGWealthInn.png', 0, 1, '2023-12-23 23:32:06', '2023-12-23 23:32:06');
INSERT INTO `fivers_games` VALUES (347, 2, 1, 'SGHappyApe', 'Happy ape', 'fivers/SGHappyApe.png', 0, 1, '2023-12-23 23:32:06', '2023-12-23 23:32:06');
INSERT INTO `fivers_games` VALUES (348, 2, 1, 'SGTabernaDeLosMuertos', 'Tevena di los Muertos', 'fivers/SGTabernaDeLosMuertos.png', 0, 1, '2023-12-23 23:32:07', '2023-12-23 23:32:07');
INSERT INTO `fivers_games` VALUES (349, 2, 1, 'SGNaughtySanta', 'Notty Santa', 'fivers/SGNaughtySanta.png', 0, 1, '2023-12-23 23:32:07', '2023-12-23 23:32:07');
INSERT INTO `fivers_games` VALUES (350, 2, 1, 'SGFaCaiShenDeluxe', 'Pakai Sen Deluxe', 'fivers/SGFaCaiShenDeluxe.png', 0, 1, '2023-12-23 23:32:08', '2023-12-23 23:32:08');
INSERT INTO `fivers_games` VALUES (351, 2, 1, 'SGHeySushi', 'Hey sushi', 'fivers/SGHeySushi.png', 0, 1, '2023-12-23 23:32:08', '2023-12-23 23:32:08');
INSERT INTO `fivers_games` VALUES (352, 2, 1, 'SGKnockoutFootballRush', 'Knockout football rush', 'fivers/SGKnockoutFootballRush.png', 0, 1, '2023-12-23 23:32:09', '2023-12-23 23:32:09');
INSERT INTO `fivers_games` VALUES (353, 2, 1, 'SGColossalGems', 'Closal Gems', 'fivers/SGColossalGems.png', 0, 1, '2023-12-23 23:32:09', '2023-12-23 23:32:09');
INSERT INTO `fivers_games` VALUES (354, 2, 1, 'SGHotHotHalloween', 'hot hot halloween', 'fivers/SGHotHotHalloween.png', 0, 1, '2023-12-23 23:32:10', '2023-12-23 23:32:10');
INSERT INTO `fivers_games` VALUES (355, 2, 1, 'SGLuckyFortuneCat', 'Lucky fortune cat', 'fivers/SGLuckyFortuneCat.png', 0, 1, '2023-12-23 23:32:10', '2023-12-23 23:32:10');
INSERT INTO `fivers_games` VALUES (356, 2, 1, 'SGHotHotFruit', 'hot hot fruit', 'fivers/SGHotHotFruit.png', 0, 1, '2023-12-23 23:32:11', '2023-12-23 23:32:11');
INSERT INTO `fivers_games` VALUES (357, 2, 1, 'SGMountMazuma', 'Mount Majuma', 'fivers/SGMountMazuma.png', 0, 1, '2023-12-23 23:32:11', '2023-12-23 23:32:11');
INSERT INTO `fivers_games` VALUES (358, 2, 1, 'SGWildTrucks', 'Wild Trucks', 'fivers/SGWildTrucks.png', 0, 1, '2023-12-23 23:32:11', '2023-12-23 23:32:11');
INSERT INTO `fivers_games` VALUES (359, 2, 1, 'SGLuckyLucky', 'Lucky Lucky', 'fivers/SGLuckyLucky.png', 0, 1, '2023-12-23 23:32:12', '2023-12-23 23:32:12');
INSERT INTO `fivers_games` VALUES (360, 2, 1, 'SGKnockoutFootball', 'Knockout football', 'fivers/SGKnockoutFootball.png', 0, 1, '2023-12-23 23:32:12', '2023-12-23 23:32:12');
INSERT INTO `fivers_games` VALUES (361, 2, 1, 'SGJump', 'Jump!', 'fivers/SGJump.png', 0, 1, '2023-12-23 23:32:13', '2023-12-23 23:32:13');
INSERT INTO `fivers_games` VALUES (362, 2, 1, 'SGPumpkinPatch', 'Pumpkin patch', 'fivers/SGPumpkinPatch.png', 0, 1, '2023-12-23 23:32:14', '2023-12-23 23:32:14');
INSERT INTO `fivers_games` VALUES (363, 2, 1, 'SGWaysOfFortune', 'Way of Fortune', 'fivers/SGWaysOfFortune.png', 0, 1, '2023-12-23 23:32:14', '2023-12-23 23:32:14');
INSERT INTO `fivers_games` VALUES (364, 2, 1, 'SGFourDivineBeasts', 'For Devine Beasts', 'fivers/SGFourDivineBeasts.png', 0, 1, '2023-12-23 23:32:14', '2023-12-23 23:32:14');
INSERT INTO `fivers_games` VALUES (365, 2, 1, 'SGPandaPanda', 'Panda panda', 'fivers/SGPandaPanda.png', 0, 1, '2023-12-23 23:32:15', '2023-12-23 23:32:15');
INSERT INTO `fivers_games` VALUES (366, 2, 1, 'SGOceansCall', 'Ocean\'s Call', 'fivers/SGOceansCall.png', 0, 1, '2023-12-23 23:32:15', '2023-12-23 23:32:15');
INSERT INTO `fivers_games` VALUES (367, 2, 1, 'SGScruffyScallywags', 'Scruffy Skellywex', 'fivers/SGScruffyScallywags.png', 0, 1, '2023-12-23 23:32:16', '2023-12-23 23:32:16');
INSERT INTO `fivers_games` VALUES (368, 2, 1, 'SGNuwa', 'Nuwa', 'fivers/SGNuwa.png', 0, 1, '2023-12-23 23:32:16', '2023-12-23 23:32:16');
INSERT INTO `fivers_games` VALUES (369, 2, 1, 'SGTheKoiGate', 'Koi gate', 'fivers/SGTheKoiGate.png', 0, 1, '2023-12-23 23:32:17', '2023-12-23 23:32:17');
INSERT INTO `fivers_games` VALUES (370, 2, 1, 'SGFaCaiShen', 'Pacaishen', 'fivers/SGFaCaiShen.png', 0, 1, '2023-12-23 23:32:17', '2023-12-23 23:32:17');
INSERT INTO `fivers_games` VALUES (371, 2, 1, 'SG12Zodiacs', '12 zodiacs', 'fivers/SG12Zodiacs.png', 0, 1, '2023-12-23 23:32:18', '2023-12-23 23:32:18');
INSERT INTO `fivers_games` VALUES (372, 2, 1, 'SGFireRooster', 'Fire rooster', 'fivers/SGFireRooster.png', 0, 1, '2023-12-23 23:32:18', '2023-12-23 23:32:18');
INSERT INTO `fivers_games` VALUES (373, 2, 1, 'SGFenghuang', 'Phoenix', 'fivers/SGFenghuang.png', 0, 1, '2023-12-23 23:32:19', '2023-12-23 23:32:19');
INSERT INTO `fivers_games` VALUES (374, 2, 1, 'SGBirdOfThunder', 'Bird of Thunder', 'fivers/SGBirdOfThunder.png', 0, 1, '2023-12-23 23:32:19', '2023-12-23 23:32:19');
INSERT INTO `fivers_games` VALUES (375, 2, 1, 'SGTheDeadEscape', 'The Dead Escape', 'fivers/SGTheDeadEscape.png', 0, 1, '2023-12-23 23:32:20', '2023-12-23 23:32:20');
INSERT INTO `fivers_games` VALUES (376, 2, 1, 'SGBombsAway', 'Bombs Away', 'fivers/SGBombsAway.png', 0, 1, '2023-12-23 23:32:20', '2023-12-23 23:32:20');
INSERT INTO `fivers_games` VALUES (377, 2, 1, 'SGGoldRush', 'Gold rush', 'fivers/SGGoldRush.png', 0, 1, '2023-12-23 23:32:21', '2023-12-23 23:32:21');
INSERT INTO `fivers_games` VALUES (378, 2, 1, 'SGRuffledUp', 'Ruffled up', 'fivers/SGRuffledUp.png', 0, 1, '2023-12-23 23:32:21', '2023-12-23 23:32:21');
INSERT INTO `fivers_games` VALUES (379, 2, 1, 'SGRomanEmpire', 'Roman empire', 'fivers/SGRomanEmpire.png', 0, 1, '2023-12-23 23:32:22', '2023-12-23 23:32:22');
INSERT INTO `fivers_games` VALUES (380, 2, 1, 'SGCoyoteCrash', 'Coyote crash', 'fivers/SGCoyoteCrash.png', 0, 1, '2023-12-23 23:32:22', '2023-12-23 23:32:22');
INSERT INTO `fivers_games` VALUES (381, 2, 1, 'SGWickedWitch', 'Wickt Location', 'fivers/SGWickedWitch.png', 0, 1, '2023-12-23 23:32:23', '2023-12-23 23:32:23');
INSERT INTO `fivers_games` VALUES (382, 2, 1, 'SGDragonsThrone', 'Dragon\'s Throne', 'fivers/SGDragonsThrone.png', 0, 1, '2023-12-23 23:32:23', '2023-12-23 23:32:23');
INSERT INTO `fivers_games` VALUES (383, 2, 1, 'SGBuggyBonus', 'Buggy bonus', 'fivers/SGBuggyBonus.png', 0, 1, '2023-12-23 23:32:23', '2023-12-23 23:32:23');
INSERT INTO `fivers_games` VALUES (384, 2, 1, 'SGGlamRock', 'Glam rock', 'fivers/SGGlamRock.png', 0, 1, '2023-12-23 23:32:24', '2023-12-23 23:32:24');
INSERT INTO `fivers_games` VALUES (385, 2, 1, 'SGSuperTwister', 'Super twister', 'fivers/SGSuperTwister.png', 0, 1, '2023-12-23 23:32:24', '2023-12-23 23:32:24');
INSERT INTO `fivers_games` VALUES (386, 2, 1, 'SGKanesInferno', 'Keynes Inferno', 'fivers/SGKanesInferno.png', 0, 1, '2023-12-23 23:32:25', '2023-12-23 23:32:25');
INSERT INTO `fivers_games` VALUES (387, 2, 1, 'SGTreasureTomb', 'Treasure Tomb', 'fivers/SGTreasureTomb.png', 0, 1, '2023-12-23 23:32:25', '2023-12-23 23:32:25');
INSERT INTO `fivers_games` VALUES (388, 2, 1, 'SGJugglenaut', 'Jugglenut', 'fivers/SGJugglenaut.png', 0, 1, '2023-12-23 23:32:26', '2023-12-23 23:32:26');
INSERT INTO `fivers_games` VALUES (389, 2, 1, 'SGGalacticCash', 'Glactic Cash', 'fivers/SGGalacticCash.png', 0, 1, '2023-12-23 23:32:26', '2023-12-23 23:32:26');
INSERT INTO `fivers_games` VALUES (390, 2, 1, 'SGZeus2', 'Zeus 2', 'fivers/SGZeus2.png', 0, 1, '2023-12-23 23:32:27', '2023-12-23 23:32:27');
INSERT INTO `fivers_games` VALUES (391, 2, 1, 'SGTheDragonCastle', 'Dragon castle', 'fivers/SGTheDragonCastle.png', 0, 1, '2023-12-23 23:32:27', '2023-12-23 23:32:27');
INSERT INTO `fivers_games` VALUES (392, 2, 1, 'SGKingTutsTomb', 'King Teeth Tomb', 'fivers/SGKingTutsTomb.png', 0, 1, '2023-12-23 23:32:27', '2023-12-23 23:32:27');
INSERT INTO `fivers_games` VALUES (393, 2, 1, 'SGCarnivalCash', 'Carnival cash', 'fivers/SGCarnivalCash.png', 0, 1, '2023-12-23 23:32:28', '2023-12-23 23:32:28');
INSERT INTO `fivers_games` VALUES (394, 2, 1, 'SGTreasureDiver', 'Treasure diver', 'fivers/SGTreasureDiver.png', 0, 1, '2023-12-23 23:32:28', '2023-12-23 23:32:28');
INSERT INTO `fivers_games` VALUES (395, 2, 1, 'SGLittleGreenMoney', 'Little Green Money', 'fivers/SGLittleGreenMoney.png', 0, 1, '2023-12-23 23:32:29', '2023-12-23 23:32:29');
INSERT INTO `fivers_games` VALUES (396, 2, 1, 'SGMonsterMashCash', 'Monster Mash Cash', 'fivers/SGMonsterMashCash.png', 0, 1, '2023-12-23 23:32:29', '2023-12-23 23:32:29');
INSERT INTO `fivers_games` VALUES (397, 2, 1, 'SGShaolinFortunes100', 'Xiaolin Fortune 100', 'fivers/SGShaolinFortunes100.png', 0, 1, '2023-12-23 23:32:30', '2023-12-23 23:32:30');
INSERT INTO `fivers_games` VALUES (398, 2, 1, 'SGShaolinFortunes243', 'Xiaolin Fortune', 'fivers/SGShaolinFortunes243.png', 0, 1, '2023-12-23 23:32:30', '2023-12-23 23:32:30');
INSERT INTO `fivers_games` VALUES (399, 2, 1, 'SGWeirdScience', 'Weird Science', 'fivers/SGWeirdScience.png', 0, 1, '2023-12-23 23:32:31', '2023-12-23 23:32:31');
INSERT INTO `fivers_games` VALUES (400, 2, 1, 'SGBlackbeardsBounty', 'Blackbeards Bounty', 'fivers/SGBlackbeardsBounty.png', 0, 1, '2023-12-23 23:32:31', '2023-12-23 23:32:31');
INSERT INTO `fivers_games` VALUES (401, 2, 1, 'SGDrFeelgood', 'Dr. Feelgood', 'fivers/SGDrFeelgood.png', 0, 1, '2023-12-23 23:32:31', '2023-12-23 23:32:31');
INSERT INTO `fivers_games` VALUES (402, 2, 1, 'SGVikingsPlunder', 'Vikings plunder', NULL, 0, 1, '2023-12-23 23:32:36', '2023-12-23 23:32:36');
INSERT INTO `fivers_games` VALUES (403, 2, 1, 'SGDoubleODollars', 'Double O Dollars', 'fivers/SGDoubleODollars.png', 0, 1, '2023-12-23 23:32:36', '2023-12-23 23:32:36');
INSERT INTO `fivers_games` VALUES (404, 2, 1, 'SGSpaceFortune', 'Space fortune', 'fivers/SGSpaceFortune.png', 0, 1, '2023-12-23 23:32:37', '2023-12-23 23:32:37');
INSERT INTO `fivers_games` VALUES (405, 2, 1, 'SGPamperMe', 'Pamper me', 'fivers/SGPamperMe.png', 0, 1, '2023-12-23 23:32:37', '2023-12-23 23:32:37');
INSERT INTO `fivers_games` VALUES (406, 2, 1, 'SGZeus', 'Zeus', 'fivers/SGZeus.png', 0, 1, '2023-12-23 23:32:38', '2023-12-23 23:32:38');
INSERT INTO `fivers_games` VALUES (407, 2, 1, 'SGSOS', 'S.O.S.!', 'fivers/SGSOS.png', 0, 1, '2023-12-23 23:32:38', '2023-12-23 23:32:38');
INSERT INTO `fivers_games` VALUES (408, 2, 1, 'SGPoolShark', 'Full shark', 'fivers/SGPoolShark.png', 0, 1, '2023-12-23 23:32:39', '2023-12-23 23:32:39');
INSERT INTO `fivers_games` VALUES (409, 2, 1, 'SGEgyptianDreams', 'Egyptian Dreams', 'fivers/SGEgyptianDreams.png', 0, 1, '2023-12-23 23:32:39', '2023-12-23 23:32:39');
INSERT INTO `fivers_games` VALUES (410, 2, 1, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'fivers/SGBarnstormerBucks.png', 0, 1, '2023-12-23 23:32:40', '2023-12-23 23:32:40');
INSERT INTO `fivers_games` VALUES (411, 2, 1, 'SGSuperStrike', 'Super strike', 'fivers/SGSuperStrike.png', 0, 1, '2023-12-23 23:32:40', '2023-12-23 23:32:40');
INSERT INTO `fivers_games` VALUES (412, 2, 1, 'SGJungleRumble', 'Jungle rumble', 'fivers/SGJungleRumble.png', 0, 1, '2023-12-23 23:32:41', '2023-12-23 23:32:41');
INSERT INTO `fivers_games` VALUES (413, 2, 1, 'SGArcticWonders', 'Arctic Wonders', 'fivers/SGArcticWonders.png', 0, 1, '2023-12-23 23:32:41', '2023-12-23 23:32:41');
INSERT INTO `fivers_games` VALUES (414, 2, 1, 'SGTowerOfPizza', 'Tower of Pizza', 'fivers/SGTowerOfPizza.png', 0, 1, '2023-12-23 23:32:42', '2023-12-23 23:32:42');
INSERT INTO `fivers_games` VALUES (415, 2, 1, 'SGMummyMoney', 'Mummy money', 'fivers/SGMummyMoney.png', 0, 1, '2023-12-23 23:32:42', '2023-12-23 23:32:42');
INSERT INTO `fivers_games` VALUES (416, 2, 1, 'SGBikiniIsland', 'bikini island', 'fivers/SGBikiniIsland.png', 0, 1, '2023-12-23 23:32:43', '2023-12-23 23:32:43');
INSERT INTO `fivers_games` VALUES (417, 2, 1, 'SGQueenOfQueens1024', 'Queen of Queens II', 'fivers/SGQueenOfQueens1024.png', 0, 1, '2023-12-23 23:32:43', '2023-12-23 23:32:43');
INSERT INTO `fivers_games` VALUES (418, 2, 1, 'SGDragonsRealm', 'Dragon\'s Realm', 'fivers/SGDragonsRealm.png', 0, 1, '2023-12-23 23:32:44', '2023-12-23 23:32:44');
INSERT INTO `fivers_games` VALUES (419, 2, 1, 'SGAllForOne', 'All for one', 'fivers/SGAllForOne.png', 0, 1, '2023-12-23 23:32:44', '2023-12-23 23:32:44');
INSERT INTO `fivers_games` VALUES (420, 2, 1, 'SGFlyingHigh', 'Flying high', 'fivers/SGFlyingHigh.png', 0, 1, '2023-12-23 23:32:44', '2023-12-23 23:32:44');
INSERT INTO `fivers_games` VALUES (421, 2, 1, 'SGMrBling', 'Mr. Bling', 'fivers/SGMrBling.png', 0, 1, '2023-12-23 23:32:45', '2023-12-23 23:32:45');
INSERT INTO `fivers_games` VALUES (422, 2, 1, 'SGMysticFortune', 'Mystic Fortune', 'fivers/SGMysticFortune.png', 0, 1, '2023-12-23 23:32:45', '2023-12-23 23:32:45');
INSERT INTO `fivers_games` VALUES (423, 2, 1, 'SGPuckerUpPrince', 'Funker up prince', 'fivers/SGPuckerUpPrince.png', 0, 1, '2023-12-23 23:32:46', '2023-12-23 23:32:46');
INSERT INTO `fivers_games` VALUES (424, 2, 1, 'SGSirBlingalot', 'Bring it all', 'fivers/SGSirBlingalot.png', 0, 1, '2023-12-23 23:32:46', '2023-12-23 23:32:46');
INSERT INTO `fivers_games` VALUES (425, 2, 1, 'SGCashReef', 'Cash leaf', 'fivers/SGCashReef.png', 0, 1, '2023-12-23 23:32:47', '2023-12-23 23:32:47');
INSERT INTO `fivers_games` VALUES (426, 2, 1, 'SGQueenOfQueens243', 'Queen of queens', 'fivers/SGQueenOfQueens243.png', 0, 1, '2023-12-23 23:32:47', '2023-12-23 23:32:47');
INSERT INTO `fivers_games` VALUES (427, 2, 1, 'SGRideEmCowboy', 'Lytham Cowboy (Pick Game)', 'fivers/SGRideEmCowboy.png', 0, 1, '2023-12-23 23:32:48', '2023-12-23 23:32:48');
INSERT INTO `fivers_games` VALUES (428, 2, 1, 'SGGrapeEscape', 'The Graph Escape', 'fivers/SGGrapeEscape.png', 0, 1, '2023-12-23 23:32:48', '2023-12-23 23:32:48');
INSERT INTO `fivers_games` VALUES (429, 2, 1, 'SGGoldenUnicorn', 'Golden unicorn', 'fivers/SGGoldenUnicorn.png', 0, 1, '2023-12-23 23:32:48', '2023-12-23 23:32:48');
INSERT INTO `fivers_games` VALUES (430, 2, 1, 'SGFrontierFortunes', 'Frontier Fortune', 'fivers/SGFrontierFortunes.png', 0, 1, '2023-12-23 23:32:49', '2023-12-23 23:32:49');
INSERT INTO `fivers_games` VALUES (431, 2, 1, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'fivers/SGIndianCashCatcher.png', 0, 1, '2023-12-23 23:32:49', '2023-12-23 23:32:49');
INSERT INTO `fivers_games` VALUES (432, 2, 1, 'SGSkysTheLimit', 'Sky\'s the Limit', 'fivers/SGSkysTheLimit.png', 0, 1, '2023-12-23 23:32:50', '2023-12-23 23:32:50');
INSERT INTO `fivers_games` VALUES (433, 2, 1, 'SGTheBigDeal', 'The Big Deal', 'fivers/SGTheBigDeal.png', 0, 1, '2023-12-23 23:32:50', '2023-12-23 23:32:50');
INSERT INTO `fivers_games` VALUES (434, 2, 1, 'SGCashosaurus', 'Cashosaurus', 'fivers/SGCashosaurus.png', 0, 1, '2023-12-23 23:32:51', '2023-12-23 23:32:51');
INSERT INTO `fivers_games` VALUES (435, 2, 1, 'SGDiscoFunk', 'Disco funk', 'fivers/SGDiscoFunk.png', 0, 1, '2023-12-23 23:32:51', '2023-12-23 23:32:51');
INSERT INTO `fivers_games` VALUES (436, 2, 1, 'SGCalaverasExplosivas', 'Calaveras Explociba', 'fivers/SGCalaverasExplosivas.png', 0, 1, '2023-12-23 23:32:52', '2023-12-23 23:32:52');
INSERT INTO `fivers_games` VALUES (437, 2, 1, 'SGNewYearsBash', 'New Year Bessie', 'fivers/SGNewYearsBash.png', 0, 1, '2023-12-23 23:32:52', '2023-12-23 23:32:52');
INSERT INTO `fivers_games` VALUES (438, 2, 1, 'SGNineTails', 'Nine Tales', 'fivers/SGNineTails.png', 0, 1, '2023-12-23 23:32:53', '2023-12-23 23:32:53');
INSERT INTO `fivers_games` VALUES (439, 2, 1, 'SGMysticFortuneDeluxe', 'Mystic Fortune Deluxe', 'fivers/SGMysticFortuneDeluxe.png', 0, 1, '2023-12-23 23:32:53', '2023-12-23 23:32:53');
INSERT INTO `fivers_games` VALUES (440, 2, 1, 'SGLuckyDurian', 'Lucky durian', 'fivers/SGLuckyDurian.png', 0, 1, '2023-12-23 23:32:54', '2023-12-23 23:32:54');
INSERT INTO `fivers_games` VALUES (441, 2, 1, 'SGDiscoBeats', 'Disco beat', 'fivers/SGDiscoBeats.png', 0, 1, '2023-12-23 23:32:54', '2023-12-23 23:32:54');
INSERT INTO `fivers_games` VALUES (442, 2, 1, 'SGLanternLuck', 'Lantern lucky', 'fivers/SGLanternLuck.png', 0, 1, '2023-12-23 23:32:55', '2023-12-23 23:32:55');
INSERT INTO `fivers_games` VALUES (443, 2, 1, 'SGBombRunner', 'Boom runner', 'fivers/SGBombRunner.png', 0, 1, '2023-12-23 23:32:55', '2023-12-23 23:32:55');
INSERT INTO `fivers_games` VALUES (444, 3, 1, 'sun_of_egypt', 'SUN OF EGYPT', 'fivers/sun_of_egypt.jpe', 0, 1, '2023-12-23 23:32:57', '2023-12-23 23:32:57');
INSERT INTO `fivers_games` VALUES (445, 3, 1, 'sun_of_egypt_2', 'SUN OF EGYPT 2', 'fivers/sun_of_egypt_2.jpg', 0, 1, '2023-12-23 23:32:58', '2023-12-23 23:32:58');
INSERT INTO `fivers_games` VALUES (446, 3, 1, 'happy_fish', 'HAPPY FISH', 'fivers/happy_fish.jpg', 0, 1, '2023-12-23 23:32:58', '2023-12-23 23:32:58');
INSERT INTO `fivers_games` VALUES (447, 3, 1, 'queen_of_the_sun', 'QUEEN OF THE SUN', 'fivers/queen_of_the_sun.jpg', 0, 1, '2023-12-23 23:32:59', '2023-12-23 23:32:59');
INSERT INTO `fivers_games` VALUES (448, 3, 1, 'tiger_jungle', 'TIGER JUNGLE', 'fivers/tiger_jungle.jpg', 0, 1, '2023-12-23 23:32:59', '2023-12-23 23:32:59');
INSERT INTO `fivers_games` VALUES (449, 3, 1, 'black_wolf', 'BLACK WOLF', 'fivers/black_wolf.jpg', 0, 1, '2023-12-23 23:33:00', '2023-12-23 23:33:00');
INSERT INTO `fivers_games` VALUES (450, 3, 1, 'hit_the_gold', 'HIT THE GOLD', 'fivers/hit_the_gold.jpg', 0, 1, '2023-12-23 23:33:00', '2023-12-23 23:33:00');
INSERT INTO `fivers_games` VALUES (451, 3, 1, 'candy_boom', 'CANDY BOOM', 'fivers/candy_boom.jpg', 0, 1, '2023-12-23 23:33:01', '2023-12-23 23:33:01');
INSERT INTO `fivers_games` VALUES (452, 3, 1, 'scarab_riches', 'SCARAB RICHES', 'fivers/scarab_riches.jpe', 0, 1, '2023-12-23 23:33:01', '2023-12-23 23:33:01');
INSERT INTO `fivers_games` VALUES (453, 3, 1, 'golden_dancing_lion', 'GOLDEN DANCING LION', 'fivers/golden_dancing_lion.jpg', 0, 1, '2023-12-23 23:33:02', '2023-12-23 23:33:02');
INSERT INTO `fivers_games` VALUES (454, 3, 1, 'dragon_pearls', 'DRAGON PEARLS', 'fivers/dragon_pearls.jpeg', 0, 1, '2023-12-23 23:33:02', '2023-12-23 23:33:02');
INSERT INTO `fivers_games` VALUES (455, 3, 1, '3_coins', '3 COINS', 'fivers/3_coins.jpg', 0, 1, '2023-12-23 23:33:03', '2023-12-23 23:33:03');
INSERT INTO `fivers_games` VALUES (456, 3, 1, 'super_rich_god', 'SUPER RICH GOD', 'fivers/super_rich_god.jpg', 0, 1, '2023-12-23 23:33:03', '2023-12-23 23:33:03');
INSERT INTO `fivers_games` VALUES (457, 3, 1, '15_dragon_pearls', '15 DRAGON PEARLS', 'fivers/15_dragon_pearls.jpeg', 0, 1, '2023-12-23 23:33:03', '2023-12-23 23:33:03');
INSERT INTO `fivers_games` VALUES (458, 3, 1, 'aztec_sun', 'AZTEC SUN', 'fivers/aztec_sun.jpe', 0, 1, '2023-12-23 23:33:04', '2023-12-23 23:33:04');
INSERT INTO `fivers_games` VALUES (459, 3, 1, 'scarab_temple', 'SCARAB TEMPLE', 'fivers/scarab_temple.jpeg', 0, 1, '2023-12-23 23:33:04', '2023-12-23 23:33:04');
INSERT INTO `fivers_games` VALUES (460, 3, 1, 'gods_temple_deluxe', 'GODS TEMPLE DELUXE', 'fivers/gods_temple_deluxe.png', 0, 1, '2023-12-23 23:33:08', '2023-12-23 23:33:08');
INSERT INTO `fivers_games` VALUES (461, 3, 1, 'book_of_sun', 'BOOK OF SUN', 'fivers/book_of_sun.jpg', 0, 1, '2023-12-23 23:33:08', '2023-12-23 23:33:08');
INSERT INTO `fivers_games` VALUES (462, 3, 1, '777_gems', '777 GEMS', 'fivers/777_gems.jpeg', 0, 1, '2023-12-23 23:33:09', '2023-12-23 23:33:09');
INSERT INTO `fivers_games` VALUES (463, 3, 1, 'book_of_sun_multichance', 'BOOK OF SUN MULTICHANCE', 'fivers/book_of_sun_multichance.jpg', 0, 1, '2023-12-23 23:33:09', '2023-12-23 23:33:09');
INSERT INTO `fivers_games` VALUES (464, 3, 1, 'olympian_gods', 'OLYMPIAN GODS', 'fivers/olympian_gods.jpeg', 0, 1, '2023-12-23 23:33:10', '2023-12-23 23:33:10');
INSERT INTO `fivers_games` VALUES (465, 3, 1, '777_gems_respin', '777 GEMS RESPIN', 'fivers/777_gems_respin.jpg', 0, 1, '2023-12-23 23:33:10', '2023-12-23 23:33:10');
INSERT INTO `fivers_games` VALUES (466, 3, 1, 'tigers_gold', 'TIGERS GOLD', 'fivers/tigers_gold.jpe', 0, 1, '2023-12-23 23:33:11', '2023-12-23 23:33:11');
INSERT INTO `fivers_games` VALUES (467, 3, 1, 'moon_sisters', 'MOON SISTERS', NULL, 0, 1, '2023-12-23 23:33:15', '2023-12-23 23:33:15');
INSERT INTO `fivers_games` VALUES (468, 3, 1, 'book_of_sun_choice', 'BOOK OF SUN CHOICE', 'fivers/book_of_sun_choice.jpg', 0, 1, '2023-12-23 23:33:15', '2023-12-23 23:33:15');
INSERT INTO `fivers_games` VALUES (469, 3, 1, 'super_marble', 'SUPER MARBLE', 'fivers/super_marble.jpg', 0, 1, '2023-12-23 23:33:16', '2023-12-23 23:33:16');
INSERT INTO `fivers_games` VALUES (470, 3, 1, 'buddha_fortune', 'BUDDHA FORTUNE', 'fivers/buddha_fortune.jpg', 0, 1, '2023-12-23 23:33:16', '2023-12-23 23:33:16');
INSERT INTO `fivers_games` VALUES (471, 3, 1, 'great_panda', 'GREAT PANDA', 'fivers/great_panda.jpg', 0, 1, '2023-12-23 23:33:17', '2023-12-23 23:33:17');
INSERT INTO `fivers_games` VALUES (472, 3, 1, '15_golden_eggs', '15 GOLDEN EGGS', 'fivers/15_golden_eggs.png', 0, 1, '2023-12-23 23:33:17', '2023-12-23 23:33:17');
INSERT INTO `fivers_games` VALUES (473, 3, 1, 'thunder_of_olympus', 'THUNDER OF OLYMPUS', 'fivers/thunder_of_olympus.jpe', 0, 1, '2023-12-23 23:33:18', '2023-12-23 23:33:18');
INSERT INTO `fivers_games` VALUES (474, 3, 1, 'eye_of_gold', 'EYE OF GOLD', 'fivers/eye_of_gold.jpg', 0, 1, '2023-12-23 23:33:18', '2023-12-23 23:33:18');
INSERT INTO `fivers_games` VALUES (475, 3, 1, 'tiger_stone', 'TIGER STONE', 'fivers/tiger_stone.jpg', 0, 1, '2023-12-23 23:33:19', '2023-12-23 23:33:19');
INSERT INTO `fivers_games` VALUES (476, 3, 1, 'magic_apple', 'MAGIC APPLE', 'fivers/magic_apple.jpg', 0, 1, '2023-12-23 23:33:19', '2023-12-23 23:33:19');
INSERT INTO `fivers_games` VALUES (477, 3, 1, 'wolf_saga', 'WOLF SAGA', 'fivers/wolf_saga.png', 0, 1, '2023-12-23 23:33:20', '2023-12-23 23:33:20');
INSERT INTO `fivers_games` VALUES (478, 3, 1, 'magic_ball', 'MAGIC BALL', 'fivers/magic_ball.jpg', 0, 1, '2023-12-23 23:33:20', '2023-12-23 23:33:20');
INSERT INTO `fivers_games` VALUES (479, 3, 1, 'scarab_boost', 'SCARAB BOOST', 'fivers/scarab_boost.jpg', 0, 1, '2023-12-23 23:33:20', '2023-12-23 23:33:20');
INSERT INTO `fivers_games` VALUES (480, 3, 1, 'wukong', 'WUKONG', 'fivers/wukong.jpg', 0, 1, '2023-12-23 23:33:21', '2023-12-23 23:33:21');
INSERT INTO `fivers_games` VALUES (481, 3, 1, 'pearl_diver', 'PEARL DIVER', 'fivers/pearl_diver.jpg', 0, 1, '2023-12-23 23:33:21', '2023-12-23 23:33:21');
INSERT INTO `fivers_games` VALUES (482, 3, 1, '3_coins_egypt', '3 COINS EGYPT', 'fivers/3_coins_egypt.jpg', 0, 1, '2023-12-23 23:33:22', '2023-12-23 23:33:22');
INSERT INTO `fivers_games` VALUES (483, 3, 1, 'ganesha_boost', 'GANESHA BOOST', 'fivers/ganesha_boost.jpg', 0, 1, '2023-12-23 23:33:22', '2023-12-23 23:33:22');
INSERT INTO `fivers_games` VALUES (484, 3, 1, 'wolf_night', 'WOLF NIGHT', 'fivers/wolf_night.jpg', 0, 1, '2023-12-23 23:33:23', '2023-12-23 23:33:23');
INSERT INTO `fivers_games` VALUES (485, 3, 1, 'book_of_wizard', 'BOOK OF WIZARD', 'fivers/book_of_wizard.jpg', 0, 1, '2023-12-23 23:33:23', '2023-12-23 23:33:23');
INSERT INTO `fivers_games` VALUES (486, 3, 1, 'lord_fortune_2', 'LORD FORTUNE 2', 'fivers/lord_fortune_2.jpg', 0, 1, '2023-12-23 23:33:24', '2023-12-23 23:33:24');
INSERT INTO `fivers_games` VALUES (487, 3, 1, 'gold_express', 'GOLD EXPRESS', 'fivers/gold_express.jpg', 0, 1, '2023-12-23 23:33:24', '2023-12-23 23:33:24');
INSERT INTO `fivers_games` VALUES (488, 3, 1, 'book_of_wizard_crystal', 'BOOK OF WIZARD CRYSTAL', 'fivers/book_of_wizard_crystal.jpg', 0, 1, '2023-12-23 23:33:25', '2023-12-23 23:33:25');
INSERT INTO `fivers_games` VALUES (489, 3, 1, 'pearl_diver_2', 'PEARL DIVER 2', 'fivers/pearl_diver_2.jpg', 0, 1, '2023-12-23 23:33:25', '2023-12-23 23:33:25');
INSERT INTO `fivers_games` VALUES (490, 3, 1, 'sun_of_egypt_3', 'SUN OF EGYPT 3', 'fivers/sun_of_egypt_3.jpg', 0, 1, '2023-12-23 23:33:26', '2023-12-23 23:33:26');
INSERT INTO `fivers_games` VALUES (491, 3, 1, 'caishen_wealth', 'CAISHEN WEALTH', 'fivers/caishen_wealth.jpg', 0, 1, '2023-12-23 23:33:26', '2023-12-23 23:33:26');
INSERT INTO `fivers_games` VALUES (492, 3, 1, 'aztec_fire', 'AZTEC FIRE', 'fivers/aztec_fire.jpg', 0, 1, '2023-12-23 23:33:27', '2023-12-23 23:33:27');
INSERT INTO `fivers_games` VALUES (493, 4, 1, 'hand_of_gold', 'HAND OF GOLD', 'fivers/hand_of_gold.png', 0, 1, '2023-12-23 23:33:29', '2023-12-23 23:33:29');
INSERT INTO `fivers_games` VALUES (494, 4, 1, 'legend_of_cleopatra', 'LEGEND OF CLEOPATRA', 'fivers/legend_of_cleopatra.jpg', 0, 1, '2023-12-23 23:33:29', '2023-12-23 23:33:29');
INSERT INTO `fivers_games` VALUES (495, 4, 1, '40_joker_staxx', '40 JOKER STAXX', 'fivers/40_joker_staxx.png', 0, 1, '2023-12-23 23:33:30', '2023-12-23 23:33:30');
INSERT INTO `fivers_games` VALUES (496, 4, 1, 'burning_wins', 'BURNING WINS', 'fivers/burning_wins.png', 0, 1, '2023-12-23 23:33:30', '2023-12-23 23:33:30');
INSERT INTO `fivers_games` VALUES (497, 4, 1, 'book_of_gold', 'BOOK OF GOLD', 'fivers/book_of_gold.png', 0, 1, '2023-12-23 23:33:31', '2023-12-23 23:33:31');
INSERT INTO `fivers_games` VALUES (498, 4, 1, '100_joker_staxx', '100 JOKER STAXX', 'fivers/100_joker_staxx.png', 0, 1, '2023-12-23 23:33:31', '2023-12-23 23:33:31');
INSERT INTO `fivers_games` VALUES (499, 4, 1, 'book_of_gold_classic', 'BOOK OF GOLD CLASSIC', 'fivers/book_of_gold_classic.png', 0, 1, '2023-12-23 23:33:32', '2023-12-23 23:33:32');
INSERT INTO `fivers_games` VALUES (500, 4, 1, 'book_of_gold_multichance', 'BOOK OF GOLD MULTICHANCE', 'fivers/book_of_gold_multichance.png', 0, 1, '2023-12-23 23:33:32', '2023-12-23 23:33:32');
INSERT INTO `fivers_games` VALUES (501, 4, 1, 'buffalo_xmas', 'BUFFALO XMAS', 'fivers/buffalo_xmas.png', 0, 1, '2023-12-23 23:33:33', '2023-12-23 23:33:33');
INSERT INTO `fivers_games` VALUES (502, 5, 1, '67', 'Golden eggs', 'fivers/67.png', 0, 1, '2023-12-23 23:33:35', '2023-12-23 23:33:35');
INSERT INTO `fivers_games` VALUES (503, 5, 1, '161', 'Hercules', 'fivers/161.png', 0, 1, '2023-12-23 23:33:35', '2023-12-23 23:33:35');
INSERT INTO `fivers_games` VALUES (504, 5, 1, '16', 'Super 5', 'fivers/16.png', 0, 1, '2023-12-23 23:33:36', '2023-12-23 23:33:36');
INSERT INTO `fivers_games` VALUES (505, 5, 1, '72', 'Happy Rich Year', 'fivers/72.png', 0, 1, '2023-12-23 23:33:36', '2023-12-23 23:33:36');
INSERT INTO `fivers_games` VALUES (506, 5, 1, '1', 'Fruit King', 'fivers/1.png', 0, 1, '2023-12-23 23:33:37', '2023-12-23 23:33:37');
INSERT INTO `fivers_games` VALUES (507, 5, 1, '163', 'Neja Advent', 'fivers/163.png', 0, 1, '2023-12-23 23:33:37', '2023-12-23 23:33:37');
INSERT INTO `fivers_games` VALUES (508, 5, 1, '26', '777', 'fivers/26.png', 0, 1, '2023-12-23 23:33:38', '2023-12-23 23:33:38');
INSERT INTO `fivers_games` VALUES (509, 5, 1, '50', 'Good fortune', 'fivers/50.png', 0, 1, '2023-12-23 23:33:38', '2023-12-23 23:33:38');
INSERT INTO `fivers_games` VALUES (510, 5, 1, '31', 'God of war', 'fivers/31.png', 0, 1, '2023-12-23 23:33:39', '2023-12-23 23:33:39');
INSERT INTO `fivers_games` VALUES (511, 5, 1, '64', 'Zeus', 'fivers/64.png', 0, 1, '2023-12-23 23:33:39', '2023-12-23 23:33:39');
INSERT INTO `fivers_games` VALUES (512, 5, 1, '69', 'Pasaycen', 'fivers/69.png', 0, 1, '2023-12-23 23:33:39', '2023-12-23 23:33:39');
INSERT INTO `fivers_games` VALUES (513, 5, 1, '89', 'Thor', 'fivers/89.png', 0, 1, '2023-12-23 23:33:40', '2023-12-23 23:33:40');
INSERT INTO `fivers_games` VALUES (514, 5, 1, '46', 'Wolf moon', 'fivers/46.png', 0, 1, '2023-12-23 23:33:40', '2023-12-23 23:33:40');
INSERT INTO `fivers_games` VALUES (515, 5, 1, '139', 'Fire chibi', 'fivers/139.png', 0, 1, '2023-12-23 23:33:41', '2023-12-23 23:33:41');
INSERT INTO `fivers_games` VALUES (516, 5, 1, '15', 'Gu Gu Gu', 'fivers/15.png', 0, 1, '2023-12-23 23:33:41', '2023-12-23 23:33:41');
INSERT INTO `fivers_games` VALUES (517, 5, 1, '140', 'Fire Chibi 2', 'fivers/140.png', 0, 1, '2023-12-23 23:33:42', '2023-12-23 23:33:42');
INSERT INTO `fivers_games` VALUES (518, 5, 1, '8', 'So Sweet', 'fivers/8.png', 0, 1, '2023-12-23 23:33:42', '2023-12-23 23:33:42');
INSERT INTO `fivers_games` VALUES (519, 5, 1, '147', 'Flower fortune', 'fivers/147.png', 0, 1, '2023-12-23 23:33:43', '2023-12-23 23:33:43');
INSERT INTO `fivers_games` VALUES (520, 5, 1, '113', 'Flying Kai Shen', 'fivers/113.png', 0, 1, '2023-12-23 23:33:44', '2023-12-23 23:33:44');
INSERT INTO `fivers_games` VALUES (521, 5, 1, '58', 'Gu Gu Gu 2', 'fivers/58.png', 0, 1, '2023-12-23 23:33:45', '2023-12-23 23:33:45');
INSERT INTO `fivers_games` VALUES (522, 5, 1, '128', 'Wheel money', 'fivers/128.png', 0, 1, '2023-12-23 23:33:45', '2023-12-23 23:33:45');
INSERT INTO `fivers_games` VALUES (523, 5, 1, '5', 'Mr Rich', 'fivers/5.png', 0, 1, '2023-12-23 23:33:46', '2023-12-23 23:33:46');
INSERT INTO `fivers_games` VALUES (524, 5, 1, '180', 'Gu Gu Gu 3', 'fivers/180.png', 0, 1, '2023-12-23 23:33:46', '2023-12-23 23:33:46');
INSERT INTO `fivers_games` VALUES (525, 5, 1, '118', 'SkullSkull', 'fivers/118.png', 0, 1, '2023-12-23 23:33:47', '2023-12-23 23:33:47');
INSERT INTO `fivers_games` VALUES (526, 5, 1, '148', 'Fortune totem', 'fivers/148.png', 0, 1, '2023-12-23 23:33:47', '2023-12-23 23:33:47');
INSERT INTO `fivers_games` VALUES (527, 5, 1, '144', 'Diamond treasure', 'fivers/144.png', 0, 1, '2023-12-23 23:33:48', '2023-12-23 23:33:48');
INSERT INTO `fivers_games` VALUES (528, 5, 1, '19', 'Hot spin', 'fivers/19.png', 0, 1, '2023-12-23 23:33:48', '2023-12-23 23:33:48');
INSERT INTO `fivers_games` VALUES (529, 5, 1, '112', 'Pyramid radar', 'fivers/112.png', 0, 1, '2023-12-23 23:33:48', '2023-12-23 23:33:48');
INSERT INTO `fivers_games` VALUES (530, 5, 1, '160', 'Pa Kai Shen2', 'fivers/160.png', 0, 1, '2023-12-23 23:33:49', '2023-12-23 23:33:49');
INSERT INTO `fivers_games` VALUES (531, 5, 1, '132', 'Miou', 'fivers/132.png', 0, 1, '2023-12-23 23:33:49', '2023-12-23 23:33:49');
INSERT INTO `fivers_games` VALUES (532, 5, 1, '47', 'Pharaoh gold', 'fivers/47.png', 0, 1, '2023-12-23 23:33:50', '2023-12-23 23:33:50');
INSERT INTO `fivers_games` VALUES (533, 5, 1, '13', 'Sakura legend', 'fivers/13.png', 0, 1, '2023-12-23 23:33:50', '2023-12-23 23:33:50');
INSERT INTO `fivers_games` VALUES (534, 5, 1, '34', 'Gopher\'s War', 'fivers/34.png', 0, 1, '2023-12-23 23:33:51', '2023-12-23 23:33:51');
INSERT INTO `fivers_games` VALUES (535, 5, 1, '59', 'Summer mood', 'fivers/59.png', 0, 1, '2023-12-23 23:33:51', '2023-12-23 23:33:51');
INSERT INTO `fivers_games` VALUES (536, 5, 1, '76', 'Won won won', 'fivers/76.png', 0, 1, '2023-12-23 23:33:52', '2023-12-23 23:33:52');
INSERT INTO `fivers_games` VALUES (537, 5, 1, '95', 'Football boots', 'fivers/95.png', 0, 1, '2023-12-23 23:33:52', '2023-12-23 23:33:52');
INSERT INTO `fivers_games` VALUES (538, 5, 1, '57', 'The Beast War', 'fivers/57.png', 0, 1, '2023-12-23 23:33:53', '2023-12-23 23:33:53');
INSERT INTO `fivers_games` VALUES (539, 5, 1, '17', 'Great lion', 'fivers/17.png', 0, 1, '2023-12-23 23:33:53', '2023-12-23 23:33:53');
INSERT INTO `fivers_games` VALUES (540, 5, 1, '20', '888', 'fivers/20.png', 0, 1, '2023-12-23 23:33:54', '2023-12-23 23:33:54');
INSERT INTO `fivers_games` VALUES (541, 5, 1, '182', 'Thor 2', 'fivers/182.png', 0, 1, '2023-12-23 23:33:54', '2023-12-23 23:33:54');
INSERT INTO `fivers_games` VALUES (542, 5, 1, '66', 'Fire 777', 'fivers/66.png', 0, 1, '2023-12-23 23:33:55', '2023-12-23 23:33:55');
INSERT INTO `fivers_games` VALUES (543, 5, 1, '2', 'God of Chess', 'fivers/2.png', 0, 1, '2023-12-23 23:33:55', '2023-12-23 23:33:55');
INSERT INTO `fivers_games` VALUES (544, 5, 1, '21', 'Big wolf', 'fivers/21.png', 0, 1, '2023-12-23 23:33:56', '2023-12-23 23:33:56');
INSERT INTO `fivers_games` VALUES (545, 5, 1, '197', 'Dragon\'s Treasure', 'fivers/197.png', 0, 1, '2023-12-23 23:33:56', '2023-12-23 23:33:56');
INSERT INTO `fivers_games` VALUES (546, 5, 1, '208', 'Money tree', 'fivers/208.png', 0, 1, '2023-12-23 23:33:57', '2023-12-23 23:33:57');
INSERT INTO `fivers_games` VALUES (547, 5, 1, '212', 'Burning Si-Yow', 'fivers/212.png', 0, 1, '2023-12-23 23:33:58', '2023-12-23 23:33:58');
INSERT INTO `fivers_games` VALUES (548, 5, 1, '214', 'Ninja raccoon', 'fivers/214.png', 0, 1, '2023-12-23 23:33:58', '2023-12-23 23:33:58');
INSERT INTO `fivers_games` VALUES (549, 5, 1, '218', 'Dollar night', 'fivers/218.png', 0, 1, '2023-12-23 23:33:58', '2023-12-23 23:33:58');
INSERT INTO `fivers_games` VALUES (550, 6, 1, 'greatwall', 'The Great Wall Treasure', 'fivers/greatwall.png', 0, 1, '2023-12-23 23:34:00', '2023-12-23 23:34:00');
INSERT INTO `fivers_games` VALUES (551, 6, 1, 'chinesenewyear', 'Chinese New Year', 'fivers/chinesenewyear.png', 0, 1, '2023-12-23 23:34:01', '2023-12-23 23:34:01');
INSERT INTO `fivers_games` VALUES (552, 6, 1, 'jewellerystore', 'Jewelry store', 'fivers/jewellerystore.png', 0, 1, '2023-12-23 23:34:01', '2023-12-23 23:34:01');
INSERT INTO `fivers_games` VALUES (553, 6, 1, 'redcliff', 'Red cliff', 'fivers/redcliff.png', 0, 1, '2023-12-23 23:34:02', '2023-12-23 23:34:02');
INSERT INTO `fivers_games` VALUES (554, 6, 1, 'ElvenPrincesses', 'Elven Princess', 'fivers/ElvenPrincesses.png', 0, 1, '2023-12-23 23:34:02', '2023-12-23 23:34:02');
INSERT INTO `fivers_games` VALUES (555, 6, 1, 'robinzon', 'Robinson', 'fivers/robinzon.png', 0, 1, '2023-12-23 23:34:03', '2023-12-23 23:34:03');
INSERT INTO `fivers_games` VALUES (556, 6, 1, 'aeronauts', 'Aeronauts', 'fivers/aeronauts.png', 0, 1, '2023-12-23 23:34:03', '2023-12-23 23:34:03');
INSERT INTO `fivers_games` VALUES (557, 6, 1, 'monsterlab', 'Monster rap', 'fivers/monsterlab.png', 0, 1, '2023-12-23 23:34:04', '2023-12-23 23:34:04');
INSERT INTO `fivers_games` VALUES (558, 6, 1, 'TriptotheFuture', 'Trip to the Future', 'fivers/TriptotheFuture.jpg', 0, 1, '2023-12-23 23:34:04', '2023-12-23 23:34:04');
INSERT INTO `fivers_games` VALUES (559, 6, 1, 'NukeWorld', 'Nook World', 'fivers/NukeWorld.jpg', 0, 1, '2023-12-23 23:34:05', '2023-12-23 23:34:05');
INSERT INTO `fivers_games` VALUES (560, 6, 1, 'legendofkaan', 'Legend of Khan', 'fivers/legendofkaan.png', 0, 1, '2023-12-23 23:34:05', '2023-12-23 23:34:05');
INSERT INTO `fivers_games` VALUES (561, 6, 1, 'LivingTales', 'Night of the Living Tales', 'fivers/LivingTales.jpg', 0, 1, '2023-12-23 23:34:06', '2023-12-23 23:34:06');
INSERT INTO `fivers_games` VALUES (562, 6, 1, 'IceMania', 'Ice mania', 'fivers/IceMania.jpg', 0, 1, '2023-12-23 23:34:06', '2023-12-23 23:34:06');
INSERT INTO `fivers_games` VALUES (563, 6, 1, 'ValleyOfDreams', 'Valley of Dreams', 'fivers/ValleyOfDreams.png', 0, 1, '2023-12-23 23:34:06', '2023-12-23 23:34:06');
INSERT INTO `fivers_games` VALUES (564, 6, 1, 'FruitNova', 'Fruit Nova', 'fivers/FruitNova.jpg', 0, 1, '2023-12-23 23:34:07', '2023-12-23 23:34:07');
INSERT INTO `fivers_games` VALUES (565, 6, 1, 'TreeOfLight', 'Tree of light', 'fivers/TreeOfLight.png', 0, 1, '2023-12-23 23:34:07', '2023-12-23 23:34:07');
INSERT INTO `fivers_games` VALUES (566, 6, 1, 'TempleOfDead', 'Temple of the dead', 'fivers/TempleOfDead.png', 0, 1, '2023-12-23 23:34:08', '2023-12-23 23:34:08');
INSERT INTO `fivers_games` VALUES (567, 6, 1, 'RunesOfDestiny', 'Runes of Destiny', 'fivers/RunesOfDestiny.png', 0, 1, '2023-12-23 23:34:08', '2023-12-23 23:34:08');
INSERT INTO `fivers_games` VALUES (568, 6, 1, 'EllensFortune', 'Ellen Fortune', 'fivers/EllensFortune.jpg', 0, 1, '2023-12-23 23:34:09', '2023-12-23 23:34:09');
INSERT INTO `fivers_games` VALUES (569, 6, 1, 'UnlimitedWishes', 'Unlimited Wishes', 'fivers/UnlimitedWishes.jpg', 0, 1, '2023-12-23 23:34:09', '2023-12-23 23:34:09');
INSERT INTO `fivers_games` VALUES (570, 6, 1, 'FoodFeast', 'Food fist', 'fivers/FoodFeast.jpg', 0, 1, '2023-12-23 23:34:10', '2023-12-23 23:34:10');
INSERT INTO `fivers_games` VALUES (571, 6, 1, 'EpicLegends', 'Epic legends', 'fivers/EpicLegends.jpg', 0, 1, '2023-12-23 23:34:10', '2023-12-23 23:34:10');
INSERT INTO `fivers_games` VALUES (572, 6, 1, 'SweetSugar', 'Sweet sugar', 'fivers/SweetSugar.png', 0, 1, '2023-12-23 23:34:11', '2023-12-23 23:34:11');
INSERT INTO `fivers_games` VALUES (573, 6, 1, 'CycleofLuck', 'Cycle of Luck', 'fivers/CycleofLuck.jpg', 0, 1, '2023-12-23 23:34:11', '2023-12-23 23:34:11');
INSERT INTO `fivers_games` VALUES (574, 6, 1, 'GangsterNight', 'Gangster night', 'fivers/GangsterNight.jpg', 0, 1, '2023-12-23 23:34:12', '2023-12-23 23:34:12');
INSERT INTO `fivers_games` VALUES (575, 6, 1, 'GoldOfSirens', 'Gold of sirens', 'fivers/GoldOfSirens.jpg', 0, 1, '2023-12-23 23:34:12', '2023-12-23 23:34:12');
INSERT INTO `fivers_games` VALUES (576, 6, 1, 'BloodyBrilliant', 'Bloody brilliant', 'fivers/BloodyBrilliant.jpg', 0, 1, '2023-12-23 23:34:13', '2023-12-23 23:34:13');
INSERT INTO `fivers_games` VALUES (577, 6, 1, 'TempleOfDeadBonusBuy', 'Temple of the Dead BB', 'fivers/TempleOfDeadBonusBuy.jpg', 0, 1, '2023-12-23 23:34:13', '2023-12-23 23:34:13');
INSERT INTO `fivers_games` VALUES (578, 6, 1, 'ShadowOfLuxor', 'Shadow of Luxor', 'fivers/ShadowOfLuxor.jpg', 0, 1, '2023-12-23 23:34:14', '2023-12-23 23:34:14');
INSERT INTO `fivers_games` VALUES (579, 6, 1, 'CycleofLuckBonusBuy', 'Cycle of Luck BB', 'fivers/CycleofLuckBonusBuy.jpg', 0, 1, '2023-12-23 23:34:14', '2023-12-23 23:34:14');
INSERT INTO `fivers_games` VALUES (580, 6, 1, 'AnubisMoon', 'Anubis moon', 'fivers/AnubisMoon.jpg', 0, 1, '2023-12-23 23:34:14', '2023-12-23 23:34:14');
INSERT INTO `fivers_games` VALUES (581, 6, 1, 'FruitDisco', 'Fruit disco', 'fivers/FruitDisco.jpg', 0, 1, '2023-12-23 23:34:15', '2023-12-23 23:34:15');
INSERT INTO `fivers_games` VALUES (582, 6, 1, 'FruitSuperNova30', 'Fruit Super Nova 30', 'fivers/FruitSuperNova30.jpg', 0, 1, '2023-12-23 23:34:15', '2023-12-23 23:34:15');
INSERT INTO `fivers_games` VALUES (583, 6, 1, 'CurseOfThePharaoh', 'Curse of the Pharaoh', 'fivers/CurseOfThePharaoh.jpg', 0, 1, '2023-12-23 23:34:16', '2023-12-23 23:34:16');
INSERT INTO `fivers_games` VALUES (584, 6, 1, 'GoldOfSirensBonusBuy', 'Gold of Sirens BB', 'fivers/GoldOfSirensBonusBuy.jpg', 0, 1, '2023-12-23 23:34:16', '2023-12-23 23:34:16');
INSERT INTO `fivers_games` VALUES (585, 6, 1, 'FruitSuperNova60', 'Fruit Super Nova 60', 'fivers/FruitSuperNova60.jpg', 0, 1, '2023-12-23 23:34:17', '2023-12-23 23:34:17');
INSERT INTO `fivers_games` VALUES (586, 6, 1, 'CurseofthePharaohBonusBuy', 'Curse of the Pharaoh BB', 'fivers/CurseofthePharaohBonusBuy.jpg', 0, 1, '2023-12-23 23:34:17', '2023-12-23 23:34:17');
INSERT INTO `fivers_games` VALUES (587, 6, 1, 'FruitSuperNova100', 'Fruit Super Nova 100', 'fivers/FruitSuperNova100.jpg', 0, 1, '2023-12-23 23:34:18', '2023-12-23 23:34:18');
INSERT INTO `fivers_games` VALUES (588, 6, 1, 'ChristmasReach', 'Christmas lychee', 'fivers/ChristmasReach.jpg', 0, 1, '2023-12-23 23:34:18', '2023-12-23 23:34:18');
INSERT INTO `fivers_games` VALUES (589, 6, 1, 'FruitSuperNova80', 'Whoft Super Nova 80', 'fivers/FruitSuperNova80.jpg', 0, 1, '2023-12-23 23:34:19', '2023-12-23 23:34:19');
INSERT INTO `fivers_games` VALUES (590, 6, 1, 'DragonsTavern', 'Dragon\'s Tavern', 'fivers/DragonsTavern.jpg', 0, 1, '2023-12-23 23:34:19', '2023-12-23 23:34:19');
INSERT INTO `fivers_games` VALUES (591, 6, 1, 'ChristmasReachBonusBuy', 'Christmas Riti BB', 'fivers/ChristmasReachBonusBuy.jpg', 0, 1, '2023-12-23 23:34:20', '2023-12-23 23:34:20');
INSERT INTO `fivers_games` VALUES (592, 6, 1, 'WildOverlords', 'Wild overlord', 'fivers/WildOverlords.jpg', 0, 1, '2023-12-23 23:34:20', '2023-12-23 23:34:20');
INSERT INTO `fivers_games` VALUES (593, 6, 1, 'DragonsTavernBonusBuy', 'Dragon\'s Tavern BB', 'fivers/DragonsTavernBonusBuy.jpg', 0, 1, '2023-12-23 23:34:21', '2023-12-23 23:34:21');
INSERT INTO `fivers_games` VALUES (594, 6, 1, 'BudaiReels', 'Budai reels', 'fivers/BudaiReels.jpg', 0, 1, '2023-12-23 23:34:21', '2023-12-23 23:34:21');
INSERT INTO `fivers_games` VALUES (595, 6, 1, 'BudaiReelsBonusBuy', 'Budai Lil\'s BB', 'fivers/BudaiReelsBonusBuy.jpeg', 0, 1, '2023-12-23 23:34:22', '2023-12-23 23:34:22');
INSERT INTO `fivers_games` VALUES (596, 6, 1, 'MoneyMinter', 'Money minter', 'fivers/MoneyMinter.jpeg', 0, 1, '2023-12-23 23:34:22', '2023-12-23 23:34:22');
INSERT INTO `fivers_games` VALUES (597, 6, 1, 'JuicyGems', 'Watch gem', 'fivers/JuicyGems.jpg', 0, 1, '2023-12-23 23:34:23', '2023-12-23 23:34:23');
INSERT INTO `fivers_games` VALUES (598, 6, 1, 'JuicyGemsBB', 'Watch Gem BB', 'fivers/JuicyGemsBB.jpg', 0, 1, '2023-12-23 23:34:23', '2023-12-23 23:34:23');
INSERT INTO `fivers_games` VALUES (599, 6, 1, 'TheGreatestCatch', 'The Greatest Catch', 'fivers/TheGreatestCatch.jpg', 0, 1, '2023-12-23 23:34:23', '2023-12-23 23:34:23');
INSERT INTO `fivers_games` VALUES (600, 6, 1, 'TheGreatestCatchBonusBuy', 'The Greatest Catch BB', 'fivers/TheGreatestCatchBonusBuy.jpg', 0, 1, '2023-12-23 23:34:24', '2023-12-23 23:34:24');
INSERT INTO `fivers_games` VALUES (601, 6, 1, 'TreeOfLightBB', 'Tree of Light BB', 'fivers/TreeOfLightBB.jpg', 0, 1, '2023-12-23 23:34:24', '2023-12-23 23:34:24');
INSERT INTO `fivers_games` VALUES (602, 6, 1, 'WolfHiding', 'Wolf Hiding', 'fivers/WolfHiding.jpg', 0, 1, '2023-12-23 23:34:25', '2023-12-23 23:34:25');
INSERT INTO `fivers_games` VALUES (603, 6, 1, 'CaminoDeChili', 'Camino de Chili', 'fivers/CaminoDeChili.jpg', 0, 1, '2023-12-23 23:34:25', '2023-12-23 23:34:25');
INSERT INTO `fivers_games` VALUES (604, 6, 1, 'CandyDreamsSweetPlanet', 'candy dreams', 'fivers/CandyDreamsSweetPlanet.jpg', 0, 1, '2023-12-23 23:34:26', '2023-12-23 23:34:26');
INSERT INTO `fivers_games` VALUES (605, 6, 1, 'WildOverlordsBonusBuy', 'Wild Overlord BB', 'fivers/WildOverlordsBonusBuy.jpg', 0, 1, '2023-12-23 23:34:26', '2023-12-23 23:34:26');
INSERT INTO `fivers_games` VALUES (606, 6, 1, 'TempleOfThunder', 'Temple of Thunder', 'fivers/TempleOfThunder.jpg', 0, 1, '2023-12-23 23:34:27', '2023-12-23 23:34:27');
INSERT INTO `fivers_games` VALUES (607, 7, 1, 'WildTriads', 'WildTriads', 'fivers/WildTriads.png', 0, 1, '2023-12-23 23:34:29', '2023-12-23 23:34:29');
INSERT INTO `fivers_games` VALUES (608, 7, 1, 'GoldenDragon', 'Golden Dragon', 'fivers/GoldenDragon.png', 0, 1, '2023-12-23 23:34:29', '2023-12-23 23:34:29');
INSERT INTO `fivers_games` VALUES (609, 7, 1, 'ReelsOfFortune', 'Reels Of Fortune', 'fivers/ReelsOfFortune.png', 0, 1, '2023-12-23 23:34:30', '2023-12-23 23:34:30');
INSERT INTO `fivers_games` VALUES (610, 7, 1, 'GoldenAmazon', 'Golden Amazon', 'fivers/GoldenAmazon.png', 0, 1, '2023-12-23 23:34:30', '2023-12-23 23:34:30');
INSERT INTO `fivers_games` VALUES (611, 7, 1, 'MonkeyLuck', 'MonkeyLuck', 'fivers/MonkeyLuck.png', 0, 1, '2023-12-23 23:34:31', '2023-12-23 23:34:31');
INSERT INTO `fivers_games` VALUES (612, 7, 1, 'LeagueOfChampions', 'League Of Champions', 'fivers/LeagueOfChampions.png', 0, 1, '2023-12-23 23:34:31', '2023-12-23 23:34:31');
INSERT INTO `fivers_games` VALUES (613, 7, 1, 'MadMonkeyH5', 'MadMonkey', 'fivers/MadMonkeyH5.png', 0, 1, '2023-12-23 23:34:32', '2023-12-23 23:34:32');
INSERT INTO `fivers_games` VALUES (614, 7, 1, 'DynastyEmpire', 'Dynasty Empire', 'fivers/DynastyEmpire.png', 0, 1, '2023-12-23 23:34:32', '2023-12-23 23:34:32');
INSERT INTO `fivers_games` VALUES (615, 7, 1, 'SuperKids', 'SuperKids', 'fivers/SuperKids.png', 0, 1, '2023-12-23 23:34:33', '2023-12-23 23:34:33');
INSERT INTO `fivers_games` VALUES (616, 7, 1, 'HotVolcanoH5', 'HotVolcano', 'fivers/HotVolcanoH5.png', 0, 1, '2023-12-23 23:34:33', '2023-12-23 23:34:33');
INSERT INTO `fivers_games` VALUES (617, 7, 1, 'Huluwa', 'Huluwa', 'fivers/Huluwa.png', 0, 1, '2023-12-23 23:34:34', '2023-12-23 23:34:34');
INSERT INTO `fivers_games` VALUES (618, 7, 1, 'LegendOfLinkH5', 'LegendOfLink', 'fivers/LegendOfLinkH5.png', 0, 1, '2023-12-23 23:34:34', '2023-12-23 23:34:34');
INSERT INTO `fivers_games` VALUES (619, 7, 1, 'DetectiveBlackCat', 'DetectiveBlackCat', 'fivers/DetectiveBlackCat.png', 0, 1, '2023-12-23 23:34:35', '2023-12-23 23:34:35');
INSERT INTO `fivers_games` VALUES (620, 7, 1, 'ChilliGoldH5', 'Chilli Gold', 'fivers/ChilliGoldH5.png', 0, 1, '2023-12-23 23:34:35', '2023-12-23 23:34:35');
INSERT INTO `fivers_games` VALUES (621, 7, 1, 'SilverLionH5', 'Silver Lion', 'fivers/SilverLionH5.png', 0, 1, '2023-12-23 23:34:36', '2023-12-23 23:34:36');
INSERT INTO `fivers_games` VALUES (622, 7, 1, 'ThunderingZeus', 'ThunderingZeus', 'fivers/ThunderingZeus.png', 0, 1, '2023-12-23 23:34:36', '2023-12-23 23:34:36');
INSERT INTO `fivers_games` VALUES (623, 7, 1, 'DragonPalaceH5', 'Dragon Palace', 'fivers/DragonPalaceH5.png', 0, 1, '2023-12-23 23:34:36', '2023-12-23 23:34:36');
INSERT INTO `fivers_games` VALUES (624, 7, 1, 'MadMonkey2', 'MadMonkey', 'fivers/MadMonkey2.png', 0, 1, '2023-12-23 23:34:37', '2023-12-23 23:34:37');
INSERT INTO `fivers_games` VALUES (625, 7, 1, 'MedusaCurse', 'Medusa Curse', 'fivers/MedusaCurse.png', 0, 1, '2023-12-23 23:34:37', '2023-12-23 23:34:37');
INSERT INTO `fivers_games` VALUES (626, 7, 1, 'BattleHeroes', 'Battle Heroes', 'fivers/BattleHeroes.png', 0, 1, '2023-12-23 23:34:38', '2023-12-23 23:34:38');
INSERT INTO `fivers_games` VALUES (627, 7, 1, 'NeptunesGoldH5', 'Neptunes Gold', 'fivers/NeptunesGoldH5.png', 0, 1, '2023-12-23 23:34:38', '2023-12-23 23:34:38');
INSERT INTO `fivers_games` VALUES (628, 7, 1, 'HeroesNeverDie', 'Heroes Never Die', 'fivers/HeroesNeverDie.png', 0, 1, '2023-12-23 23:34:39', '2023-12-23 23:34:39');
INSERT INTO `fivers_games` VALUES (629, 7, 1, 'WildWildWitch', 'Wild Wild Witch', 'fivers/WildWildWitch.png', 0, 1, '2023-12-23 23:34:39', '2023-12-23 23:34:39');
INSERT INTO `fivers_games` VALUES (630, 7, 1, 'WildKartRacers', 'Wild Kart Racers', 'fivers/WildKartRacers.png', 0, 1, '2023-12-23 23:34:40', '2023-12-23 23:34:40');
INSERT INTO `fivers_games` VALUES (631, 7, 1, 'KingDinosaur', 'KingDinosaur', 'fivers/KingDinosaur.png', 0, 1, '2023-12-23 23:34:40', '2023-12-23 23:34:40');
INSERT INTO `fivers_games` VALUES (632, 7, 1, 'GoldenGenie', 'GoldenGenie', 'fivers/GoldenGenie.png', 0, 1, '2023-12-23 23:34:41', '2023-12-23 23:34:41');
INSERT INTO `fivers_games` VALUES (633, 7, 1, 'UltimateFighter', 'UltimateFighter', 'fivers/UltimateFighter.png', 0, 1, '2023-12-23 23:34:41', '2023-12-23 23:34:41');
INSERT INTO `fivers_games` VALUES (634, 7, 1, 'EverlastingSpins', 'EverlastingSpins', 'fivers/EverlastingSpins.png', 0, 1, '2023-12-23 23:34:42', '2023-12-23 23:34:42');
INSERT INTO `fivers_games` VALUES (635, 7, 1, 'Zoomania', 'Zoomania', 'fivers/Zoomania.png', 0, 1, '2023-12-23 23:34:42', '2023-12-23 23:34:42');
INSERT INTO `fivers_games` VALUES (636, 7, 1, 'LaserCats', 'Laser Cats', 'fivers/LaserCats.png', 0, 1, '2023-12-23 23:34:43', '2023-12-23 23:34:43');
INSERT INTO `fivers_games` VALUES (637, 7, 1, 'DiamondFortune', 'DiamondFortune', 'fivers/DiamondFortune.png', 0, 1, '2023-12-23 23:34:43', '2023-12-23 23:34:43');
INSERT INTO `fivers_games` VALUES (638, 7, 1, 'GoldenClaw', 'GoldenClaw', 'fivers/GoldenClaw.png', 0, 1, '2023-12-23 23:34:44', '2023-12-23 23:34:44');
INSERT INTO `fivers_games` VALUES (639, 7, 1, 'PandaWarrior', 'PandaWarrior', 'fivers/PandaWarrior.png', 0, 1, '2023-12-23 23:34:44', '2023-12-23 23:34:44');
INSERT INTO `fivers_games` VALUES (640, 7, 1, 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'fivers/RoyalGoldenDragon.png', 0, 1, '2023-12-23 23:34:44', '2023-12-23 23:34:44');
INSERT INTO `fivers_games` VALUES (641, 7, 1, 'MegaMaya', 'MegaMaya', 'fivers/MegaMaya.png', 0, 1, '2023-12-23 23:34:45', '2023-12-23 23:34:45');
INSERT INTO `fivers_games` VALUES (642, 7, 1, 'MegaPhoenix', 'MegaPhoenix', 'fivers/MegaPhoenix.png', 0, 1, '2023-12-23 23:34:45', '2023-12-23 23:34:45');
INSERT INTO `fivers_games` VALUES (643, 7, 1, 'DolphinGoldH5', 'DolphinGold', 'fivers/DolphinGoldH5.png', 0, 1, '2023-12-23 23:34:48', '2023-12-23 23:34:48');
INSERT INTO `fivers_games` VALUES (644, 7, 1, 'DragonKingH5', 'DragonKing', 'fivers/DragonKingH5.png', 0, 1, '2023-12-23 23:34:48', '2023-12-23 23:34:48');
INSERT INTO `fivers_games` VALUES (645, 7, 1, 'LuckyPandaH5', 'LuckyPanda', 'fivers/LuckyPandaH5.png', 0, 1, '2023-12-23 23:34:49', '2023-12-23 23:34:49');
INSERT INTO `fivers_games` VALUES (646, 8, 1, 'btball5x20', 'Crazy Basketball', 'fivers/btball5x20.png', 0, 1, '2023-12-23 23:34:51', '2023-12-23 23:34:51');
INSERT INTO `fivers_games` VALUES (647, 8, 1, 'dnp', 'DragonPhoenix Prosper', 'fivers/dnp.png', 0, 1, '2023-12-23 23:34:52', '2023-12-23 23:34:52');
INSERT INTO `fivers_games` VALUES (648, 8, 1, 'crystal', 'Glory of Heroes', 'fivers/crystal.png', 0, 1, '2023-12-23 23:34:53', '2023-12-23 23:34:53');
INSERT INTO `fivers_games` VALUES (649, 8, 1, 'fls', 'FULUSHOU', 'fivers/fls.png', 0, 1, '2023-12-23 23:34:53', '2023-12-23 23:34:53');
INSERT INTO `fivers_games` VALUES (650, 8, 1, 'fourss', 'Four Holy Beasts', 'fivers/fourss.png', 0, 1, '2023-12-23 23:34:54', '2023-12-23 23:34:54');
INSERT INTO `fivers_games` VALUES (651, 8, 1, 'casino', '3D Slot', 'fivers/casino.png', 0, 1, '2023-12-23 23:34:54', '2023-12-23 23:34:54');
INSERT INTO `fivers_games` VALUES (652, 8, 1, 'crazy5x243', 'Crazy GO GO GO', 'fivers/crazy5x243.png', 0, 1, '2023-12-23 23:34:55', '2023-12-23 23:34:55');
INSERT INTO `fivers_games` VALUES (653, 8, 1, 'rocknight', 'RocknRoll Night', 'fivers/rocknight.png', 0, 1, '2023-12-23 23:34:55', '2023-12-23 23:34:55');
INSERT INTO `fivers_games` VALUES (654, 8, 1, 'bluesea', 'Blue Sea', 'fivers/bluesea.png', 0, 1, '2023-12-23 23:34:56', '2023-12-23 23:34:56');
INSERT INTO `fivers_games` VALUES (655, 8, 1, 'circus', 'Crazy Circus', 'fivers/circus.png', 0, 1, '2023-12-23 23:34:56', '2023-12-23 23:34:56');
INSERT INTO `fivers_games` VALUES (656, 8, 1, 'bikini', 'Bikini Party', 'fivers/bikini.png', 0, 1, '2023-12-23 23:34:57', '2023-12-23 23:34:57');
INSERT INTO `fivers_games` VALUES (657, 8, 1, 'foryouth5x25', 'SO YOUNG', 'fivers/foryouth5x25.png', 0, 1, '2023-12-23 23:34:57', '2023-12-23 23:34:57');
INSERT INTO `fivers_games` VALUES (658, 8, 1, 'fourbeauty', 'Four Beauties', 'fivers/fourbeauty.png', 0, 1, '2023-12-23 23:34:58', '2023-12-23 23:34:58');
INSERT INTO `fivers_games` VALUES (659, 8, 1, 'sweethouse', 'Candy House', 'fivers/sweethouse.png', 0, 1, '2023-12-23 23:34:58', '2023-12-23 23:34:58');
INSERT INTO `fivers_games` VALUES (660, 8, 1, 'legend5x25', 'Legend of the King', 'fivers/legend5x25.png', 0, 1, '2023-12-23 23:34:58', '2023-12-23 23:34:58');
INSERT INTO `fivers_games` VALUES (661, 8, 1, 'opera', 'Beijing opera', 'fivers/opera.jpeg', 0, 1, '2023-12-23 23:34:59', '2023-12-23 23:34:59');
INSERT INTO `fivers_games` VALUES (662, 8, 1, 'bigred', 'Big Red', 'fivers/bigred.jpeg', 0, 1, '2023-12-23 23:34:59', '2023-12-23 23:34:59');
INSERT INTO `fivers_games` VALUES (663, 8, 1, 'wrathofthor', 'Wrath of Thor', 'fivers/wrathofthor.png', 0, 1, '2023-12-23 23:35:00', '2023-12-23 23:35:00');
INSERT INTO `fivers_games` VALUES (664, 8, 1, 'boxingarena', 'Boxing Arena', 'fivers/boxingarena.jpeg', 0, 1, '2023-12-23 23:35:00', '2023-12-23 23:35:00');
INSERT INTO `fivers_games` VALUES (665, 8, 1, 'fantasyforest', 'Elf Kingdom', 'fivers/fantasyforest.png', 0, 1, '2023-12-23 23:35:01', '2023-12-23 23:35:01');
INSERT INTO `fivers_games` VALUES (666, 8, 1, 'egyptian', 'Egyptian Empire', 'fivers/egyptian.png', 0, 1, '2023-12-23 23:35:01', '2023-12-23 23:35:01');
INSERT INTO `fivers_games` VALUES (667, 8, 1, 'hotpotfeast', 'Hotpot Feast', 'fivers/hotpotfeast.png', 0, 1, '2023-12-23 23:35:02', '2023-12-23 23:35:02');
INSERT INTO `fivers_games` VALUES (668, 8, 1, 'magician', 'Magician', 'fivers/magician.png', 0, 1, '2023-12-23 23:35:02', '2023-12-23 23:35:02');
INSERT INTO `fivers_games` VALUES (669, 8, 1, 'galaxywars', 'Galaxy Wars', 'fivers/galaxywars.png', 0, 1, '2023-12-23 23:35:03', '2023-12-23 23:35:03');
INSERT INTO `fivers_games` VALUES (670, 8, 1, 'easyrider', 'Easy Rider', 'fivers/easyrider.png', 0, 1, '2023-12-23 23:35:03', '2023-12-23 23:35:03');
INSERT INTO `fivers_games` VALUES (671, 8, 1, 'goldjade5x50', 'Jin Yu Man Tang', 'fivers/goldjade5x50.png', 0, 1, '2023-12-23 23:35:04', '2023-12-23 23:35:04');
INSERT INTO `fivers_games` VALUES (672, 8, 1, 'shokudo', 'shokudo', 'fivers/shokudo.jpeg', 0, 1, '2023-12-23 23:35:04', '2023-12-23 23:35:04');
INSERT INTO `fivers_games` VALUES (673, 8, 1, 'train', 'Treasure Hunt Trip', 'fivers/train.png', 0, 1, '2023-12-23 23:35:05', '2023-12-23 23:35:05');
INSERT INTO `fivers_games` VALUES (674, 8, 1, 'lovefighters', 'Love Fighters', 'fivers/lovefighters.png', 0, 1, '2023-12-23 23:35:05', '2023-12-23 23:35:05');
INSERT INTO `fivers_games` VALUES (675, 8, 1, 'genie', 'Aladdin\'s Wish', 'fivers/genie.png', 0, 1, '2023-12-23 23:35:06', '2023-12-23 23:35:06');
INSERT INTO `fivers_games` VALUES (676, 8, 1, 'garden', 'Little Big Garden', 'fivers/garden.png', 0, 1, '2023-12-23 23:35:06', '2023-12-23 23:35:06');
INSERT INTO `fivers_games` VALUES (677, 8, 1, 'alchemist', 'Crazy Alchemist', 'fivers/alchemist.png', 0, 1, '2023-12-23 23:35:07', '2023-12-23 23:35:07');
INSERT INTO `fivers_games` VALUES (678, 8, 1, 'dinosaur5x25', 'Dinosaur World', 'fivers/dinosaur5x25.png', 0, 1, '2023-12-23 23:35:07', '2023-12-23 23:35:07');
INSERT INTO `fivers_games` VALUES (679, 8, 1, 'tombshadow', 'Tomb Shadow', 'fivers/tombshadow.png', 0, 1, '2023-12-23 23:35:08', '2023-12-23 23:35:08');
INSERT INTO `fivers_games` VALUES (680, 8, 1, 'clash', 'Clash of Three kingdoms', 'fivers/clash.png', 0, 1, '2023-12-23 23:35:08', '2023-12-23 23:35:08');
INSERT INTO `fivers_games` VALUES (681, 8, 1, 'magicbean', 'Magic Bean Legend', 'fivers/magicbean.png', 0, 1, '2023-12-23 23:35:09', '2023-12-23 23:35:09');
INSERT INTO `fivers_games` VALUES (682, 8, 1, 'secretdate', 'Secret Date', 'fivers/secretdate.png', 0, 1, '2023-12-23 23:35:09', '2023-12-23 23:35:09');
INSERT INTO `fivers_games` VALUES (683, 8, 1, 'bacteria', 'Germ Lab', 'fivers/bacteria.png', 0, 1, '2023-12-23 23:35:10', '2023-12-23 23:35:10');
INSERT INTO `fivers_games` VALUES (684, 8, 1, 'baseball', 'Baseball Frenzy', 'fivers/baseball.png', 0, 1, '2023-12-23 23:35:10', '2023-12-23 23:35:10');
INSERT INTO `fivers_games` VALUES (685, 8, 1, 'museum', 'Wondrous Museum', 'fivers/museum.png', 0, 1, '2023-12-23 23:35:10', '2023-12-23 23:35:10');
INSERT INTO `fivers_games` VALUES (686, 8, 1, 'mysticalstones', 'Mystical Stones', 'fivers/mysticalstones.png', 0, 1, '2023-12-23 23:35:11', '2023-12-23 23:35:11');
INSERT INTO `fivers_games` VALUES (687, 8, 1, 'sincity', 'Sin City', 'fivers/sincity.png', 0, 1, '2023-12-23 23:35:12', '2023-12-23 23:35:12');
INSERT INTO `fivers_games` VALUES (688, 8, 1, 'wheel', 'Secrets of The Pentagram', 'fivers/wheel.png', 0, 1, '2023-12-23 23:35:12', '2023-12-23 23:35:12');
INSERT INTO `fivers_games` VALUES (689, 8, 1, 'westwild', 'West Wild', 'fivers/westwild.png', 0, 1, '2023-12-23 23:35:13', '2023-12-23 23:35:13');
INSERT INTO `fivers_games` VALUES (690, 8, 1, 'halloween', 'Witch Winnings', 'fivers/halloween.png', 0, 1, '2023-12-23 23:35:13', '2023-12-23 23:35:13');
INSERT INTO `fivers_games` VALUES (691, 8, 1, 'bloodmoon', 'Blood Wolf legend', 'fivers/bloodmoon.png', 0, 1, '2023-12-23 23:35:14', '2023-12-23 23:35:14');
INSERT INTO `fivers_games` VALUES (692, 8, 1, 'dragonball2', 'Heroes of the East', 'fivers/dragonball2.png', 0, 1, '2023-12-23 23:35:14', '2023-12-23 23:35:14');
INSERT INTO `fivers_games` VALUES (693, 8, 1, 'muaythai', 'Muaythai', 'fivers/muaythai.png', 0, 1, '2023-12-23 23:35:15', '2023-12-23 23:35:15');
INSERT INTO `fivers_games` VALUES (694, 8, 1, 'sailor', 'Sailor Princess', 'fivers/sailor.png', 0, 1, '2023-12-23 23:35:15', '2023-12-23 23:35:15');
INSERT INTO `fivers_games` VALUES (695, 8, 1, 'nightclub', 'Infinity Club', 'fivers/nightclub.png', 0, 1, '2023-12-23 23:35:16', '2023-12-23 23:35:16');
INSERT INTO `fivers_games` VALUES (696, 8, 1, 'nezha', 'Nezha Legend', 'fivers/nezha.png', 0, 1, '2023-12-23 23:35:16', '2023-12-23 23:35:16');
INSERT INTO `fivers_games` VALUES (697, 8, 1, 'bird', 'Bird Island', 'fivers/bird.png', 0, 1, '2023-12-23 23:35:17', '2023-12-23 23:35:17');
INSERT INTO `fivers_games` VALUES (698, 8, 1, 'honor', 'Field Of Honor', 'fivers/honor.png', 0, 1, '2023-12-23 23:35:17', '2023-12-23 23:35:17');
INSERT INTO `fivers_games` VALUES (699, 8, 1, 'train2', 'Treasure Hunt Trip 2', 'fivers/train2.png', 0, 1, '2023-12-23 23:35:18', '2023-12-23 23:35:18');
INSERT INTO `fivers_games` VALUES (700, 8, 1, 'shiningstars', 'ShiningStars', 'fivers/shiningstars.png', 0, 1, '2023-12-23 23:35:18', '2023-12-23 23:35:18');
INSERT INTO `fivers_games` VALUES (701, 8, 1, 'tgow2plus', 'Cai Shen Dao Plus', 'fivers/tgow2plus.png', 0, 1, '2023-12-23 23:35:19', '2023-12-23 23:35:19');
INSERT INTO `fivers_games` VALUES (702, 8, 1, 'peeping', 'Peeping', 'fivers/peeping.png', 0, 1, '2023-12-23 23:35:19', '2023-12-23 23:35:19');
INSERT INTO `fivers_games` VALUES (703, 9, 1, 'piggy-gold', 'Piggy Gold', 'fivers/piggy-gold.png', 0, 1, '2023-12-23 23:35:21', '2023-12-23 23:35:21');
INSERT INTO `fivers_games` VALUES (704, 9, 1, 'ganesha-gold', 'Ganesha Gold', 'fivers/ganesha-gold.png', 0, 1, '2023-12-23 23:35:21', '2023-12-23 23:35:21');
INSERT INTO `fivers_games` VALUES (705, 9, 1, 'jungle-delight', 'Jungle Delight', 'fivers/jungle-delight.png', 0, 1, '2023-12-23 23:35:22', '2023-12-23 23:35:22');
INSERT INTO `fivers_games` VALUES (706, 9, 1, 'double-fortune', 'Double Fortune', 'fivers/double-fortune.png', 0, 1, '2023-12-23 23:35:23', '2023-12-23 23:35:23');
INSERT INTO `fivers_games` VALUES (707, 9, 1, 'the-great-icescape', 'The Great Icescape', 'fivers/the-great-icescape.png', 0, 1, '2023-12-23 23:35:23', '2023-12-23 23:35:23');
INSERT INTO `fivers_games` VALUES (708, 9, 1, 'captains-bounty', 'Captain\'s Bounty', 'fivers/captains-bounty.png', 0, 1, '2023-12-23 23:35:24', '2023-12-23 23:35:24');
INSERT INTO `fivers_games` VALUES (709, 9, 1, 'leprechaun-riches', 'Leprechaun Riches', 'fivers/leprechaun-riches.png', 0, 1, '2023-12-23 23:35:24', '2023-12-23 23:35:24');
INSERT INTO `fivers_games` VALUES (710, 9, 1, 'mahjong-ways', 'Mahjong Ways', 'fivers/mahjong-ways.png', 0, 1, '2023-12-23 23:35:25', '2023-12-23 23:35:25');
INSERT INTO `fivers_games` VALUES (711, 9, 1, 'fortune-mouse', 'Fortune Mouse', 'fivers/fortune-mouse.png', 0, 1, '2023-12-23 23:35:25', '2023-12-23 23:35:25');
INSERT INTO `fivers_games` VALUES (712, 9, 1, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'fivers/gem-saviour-conquest.png', 0, 1, '2023-12-23 23:35:26', '2023-12-23 23:35:26');
INSERT INTO `fivers_games` VALUES (713, 9, 1, 'candy-burst', 'Candy Burst', 'fivers/candy-burst.png', 0, 1, '2023-12-23 23:35:26', '2023-12-23 23:35:26');
INSERT INTO `fivers_games` VALUES (714, 9, 1, 'bikini-paradise', 'Bikini Paradise', 'fivers/bikini-paradise.png', 0, 1, '2023-12-23 23:35:27', '2023-12-23 23:35:27');
INSERT INTO `fivers_games` VALUES (715, 9, 1, 'mahjong-ways2', 'Mahjong Ways 2', 'fivers/mahjong-ways2.png', 0, 1, '2023-12-23 23:35:27', '2023-12-23 23:35:27');
INSERT INTO `fivers_games` VALUES (716, 9, 1, 'ganesha-fortune', 'Ganesha Fortune', 'fivers/ganesha-fortune.png', 0, 1, '2023-12-23 23:35:28', '2023-12-23 23:35:28');
INSERT INTO `fivers_games` VALUES (717, 9, 1, 'phoenix-rises', 'Phoenix Rises', 'fivers/phoenix-rises.png', 0, 1, '2023-12-23 23:35:28', '2023-12-23 23:35:28');
INSERT INTO `fivers_games` VALUES (718, 9, 1, 'wild-fireworks', 'Wild Fireworks', 'fivers/wild-fireworks.png', 0, 1, '2023-12-23 23:35:29', '2023-12-23 23:35:29');
INSERT INTO `fivers_games` VALUES (719, 9, 1, 'treasures-aztec', 'Treasures of Aztec', 'fivers/treasures-aztec.png', 0, 1, '2023-12-23 23:35:29', '2023-12-23 23:35:29');
INSERT INTO `fivers_games` VALUES (720, 9, 1, 'queen-bounty', 'Queen of Bounty', 'fivers/queen-bounty.jpg', 0, 1, '2023-12-23 23:35:30', '2023-12-23 23:35:30');
INSERT INTO `fivers_games` VALUES (721, 9, 1, 'jewels-prosper', 'Jewels of Prosperity', 'fivers/jewels-prosper.jpg', 0, 1, '2023-12-23 23:35:30', '2023-12-23 23:35:30');
INSERT INTO `fivers_games` VALUES (722, 9, 1, 'galactic-gems', 'Galactic Gems', 'fivers/galactic-gems.png', 0, 1, '2023-12-23 23:35:31', '2023-12-23 23:35:31');
INSERT INTO `fivers_games` VALUES (723, 9, 1, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'fivers/gdn-ice-fire.png', 0, 1, '2023-12-23 23:35:31', '2023-12-23 23:35:31');
INSERT INTO `fivers_games` VALUES (724, 9, 1, 'fortune-ox', 'Fortune Ox', 'fivers/fortune-ox.png', 0, 1, '2023-12-23 23:35:32', '2023-12-23 23:35:32');
INSERT INTO `fivers_games` VALUES (725, 9, 1, 'wild-bandito', 'Wild Bandito', 'fivers/wild-bandito.jpg', 0, 1, '2023-12-23 23:35:32', '2023-12-23 23:35:32');
INSERT INTO `fivers_games` VALUES (726, 9, 1, 'candy-bonanza', 'Candy Bonanza', 'fivers/candy-bonanza.jpg', 0, 1, '2023-12-23 23:35:32', '2023-12-23 23:35:32');
INSERT INTO `fivers_games` VALUES (727, 9, 1, 'majestic-ts', 'Majestic Treasures', 'fivers/majestic-ts.jpg', 0, 1, '2023-12-23 23:35:33', '2023-12-23 23:35:33');
INSERT INTO `fivers_games` VALUES (728, 9, 1, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'fivers/crypt-fortune.png', 0, 1, '2023-12-23 23:35:33', '2023-12-23 23:35:33');
INSERT INTO `fivers_games` VALUES (729, 9, 1, 'sprmkt-spree', 'Supermarket Spree', 'fivers/sprmkt-spree.png', 0, 1, '2023-12-23 23:35:34', '2023-12-23 23:35:34');
INSERT INTO `fivers_games` VALUES (730, 9, 1, 'lgd-monkey-kg', 'Legendary Monkey King', 'fivers/lgd-monkey-kg.png', 0, 1, '2023-12-23 23:35:34', '2023-12-23 23:35:34');
INSERT INTO `fivers_games` VALUES (731, 9, 1, 'spirit-wonder', 'Spirited Wonders', 'fivers/spirit-wonder.jpg', 0, 1, '2023-12-23 23:35:35', '2023-12-23 23:35:35');
INSERT INTO `fivers_games` VALUES (732, 9, 1, 'emoji-riches', 'Emoji Riches', 'fivers/emoji-riches.png', 0, 1, '2023-12-23 23:35:35', '2023-12-23 23:35:35');
INSERT INTO `fivers_games` VALUES (733, 9, 1, 'fortune-tiger', 'Fortune Tiger', 'fivers/fortune-tiger.jpg', 0, 1, '2023-12-23 23:35:36', '2023-12-23 23:35:36');
INSERT INTO `fivers_games` VALUES (734, 9, 1, 'garuda-gems', 'Garuda Gems', 'fivers/garuda-gems.png', 0, 1, '2023-12-23 23:35:36', '2023-12-23 23:35:36');
INSERT INTO `fivers_games` VALUES (735, 9, 1, 'dest-sun-moon', 'Destiny of Sun & Moon', 'fivers/dest-sun-moon.png', 0, 1, '2023-12-23 23:35:37', '2023-12-23 23:35:37');
INSERT INTO `fivers_games` VALUES (736, 9, 1, 'btrfly-blossom', 'Butterfly Blossom', 'fivers/btrfly-blossom.jpeg', 0, 1, '2023-12-23 23:35:37', '2023-12-23 23:35:37');
INSERT INTO `fivers_games` VALUES (737, 9, 1, 'rooster-rbl', 'Rooster Rumble', 'fivers/rooster-rbl.jpg', 0, 1, '2023-12-23 23:35:38', '2023-12-23 23:35:38');
INSERT INTO `fivers_games` VALUES (738, 9, 1, 'battleground', 'Battleground Royale', 'fivers/battleground.jpg', 0, 1, '2023-12-23 23:35:38', '2023-12-23 23:35:38');
INSERT INTO `fivers_games` VALUES (739, 9, 1, 'prosper-ftree', 'Prosperity Fortune Tree', 'fivers/prosper-ftree.png', 0, 1, '2023-12-23 23:35:39', '2023-12-23 23:35:39');
INSERT INTO `fivers_games` VALUES (740, 9, 1, 'fortune-rabbit', 'Fortune Rabbit', 'fivers/fortune-rabbit.jpg', 0, 1, '2023-12-23 23:35:40', '2023-12-23 23:35:40');
INSERT INTO `fivers_games` VALUES (741, 10, 1, 'vs5ultrab', 'Ultra Burn', 'fivers/vs5ultrab.png', 0, 1, '2023-12-23 23:35:43', '2023-12-23 23:35:43');
INSERT INTO `fivers_games` VALUES (742, 10, 1, 'vs5ultra', 'Ultra Hold and Spin', 'fivers/vs5ultra.png', 0, 1, '2023-12-23 23:35:44', '2023-12-23 23:35:44');
INSERT INTO `fivers_games` VALUES (743, 10, 1, 'vs10returndead', 'Return of the Dead', 'fivers/vs10returndead.png', 0, 1, '2023-12-23 23:35:45', '2023-12-23 23:35:45');
INSERT INTO `fivers_games` VALUES (744, 10, 1, 'vs10bbbonanza', 'Big Bass Bonanza', 'fivers/vs10bbbonanza.png', 0, 1, '2023-12-23 23:35:46', '2023-12-23 23:35:46');
INSERT INTO `fivers_games` VALUES (745, 10, 1, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'fivers/vs20hburnhs.png', 0, 1, '2023-12-23 23:35:47', '2023-12-23 23:35:47');
INSERT INTO `fivers_games` VALUES (746, 10, 1, 'vswayslight', 'Lucky Lightning', 'fivers/vswayslight.png', 0, 1, '2023-12-23 23:35:48', '2023-12-23 23:35:48');
INSERT INTO `fivers_games` VALUES (747, 10, 1, 'vs12bbb', 'Bigger Bass Bonanza', 'fivers/vs12bbb.png', 0, 1, '2023-12-23 23:35:49', '2023-12-23 23:35:49');
INSERT INTO `fivers_games` VALUES (748, 10, 1, 'vs10floatdrg', 'Floating Dragon', 'fivers/vs10floatdrg.png', 0, 1, '2023-12-23 23:35:50', '2023-12-23 23:35:50');
INSERT INTO `fivers_games` VALUES (749, 10, 1, 'vs1024temuj', 'Temujin Treasures', 'fivers/vs1024temuj.png', 0, 1, '2023-12-23 23:35:52', '2023-12-23 23:35:52');
INSERT INTO `fivers_games` VALUES (750, 10, 1, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'fivers/vs10bxmasbnza.png', 0, 1, '2023-12-23 23:35:53', '2023-12-23 23:35:53');
INSERT INTO `fivers_games` VALUES (751, 10, 1, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'fivers/vswaysbbb.png', 0, 1, '2023-12-23 23:35:54', '2023-12-23 23:35:54');
INSERT INTO `fivers_games` VALUES (752, 10, 1, 'vs40bigjuan', 'Big Juan', 'fivers/vs40bigjuan.png', 0, 1, '2023-12-23 23:35:55', '2023-12-23 23:35:55');
INSERT INTO `fivers_games` VALUES (753, 10, 1, 'vs10starpirate', 'Star Pirates Code', 'fivers/vs10starpirate.png', 0, 1, '2023-12-23 23:35:57', '2023-12-23 23:35:57');
INSERT INTO `fivers_games` VALUES (754, 10, 1, 'vs5hotburn', 'Hot to burn', 'fivers/vs5hotburn.png', 0, 1, '2023-12-23 23:35:57', '2023-12-23 23:35:57');
INSERT INTO `fivers_games` VALUES (755, 10, 1, 'vs25bkofkngdm', 'Book of Kingdoms', 'fivers/vs25bkofkngdm.png', 0, 1, '2023-12-23 23:35:58', '2023-12-23 23:35:58');
INSERT INTO `fivers_games` VALUES (756, 10, 1, 'vs10eyestorm', 'Eye of the Storm', 'fivers/vs10eyestorm.png', 0, 1, '2023-12-23 23:35:58', '2023-12-23 23:35:58');
INSERT INTO `fivers_games` VALUES (757, 10, 1, 'vs10amm', 'The Amazing Money Machine', 'fivers/vs10amm.png', 0, 1, '2023-12-23 23:35:59', '2023-12-23 23:35:59');
INSERT INTO `fivers_games` VALUES (758, 10, 1, 'vs10luckcharm', 'Lucky Grace And Charm', 'fivers/vs10luckcharm.png', 0, 1, '2023-12-23 23:35:59', '2023-12-23 23:35:59');
INSERT INTO `fivers_games` VALUES (759, 10, 1, 'vs25goldparty', 'Gold Party®', 'fivers/vs25goldparty.png', 0, 1, '2023-12-23 23:36:00', '2023-12-23 23:36:00');
INSERT INTO `fivers_games` VALUES (760, 10, 1, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'fivers/vs20rockvegas.png', 0, 1, '2023-12-23 23:36:00', '2023-12-23 23:36:00');
INSERT INTO `fivers_games` VALUES (761, 10, 1, 'vs10tictac', 'Tic Tac Take', 'fivers/vs10tictac.png', 0, 1, '2023-12-23 23:36:01', '2023-12-23 23:36:01');
INSERT INTO `fivers_games` VALUES (762, 10, 1, 'vs243queenie', 'Queenie', 'fivers/vs243queenie.png', 0, 1, '2023-12-23 23:36:01', '2023-12-23 23:36:01');
INSERT INTO `fivers_games` VALUES (763, 10, 1, 'vs10spiritadv', 'Spirit of Adventure', 'fivers/vs10spiritadv.png', 0, 1, '2023-12-23 23:36:02', '2023-12-23 23:36:02');
INSERT INTO `fivers_games` VALUES (764, 10, 1, 'vs5littlegem', 'Little Gem Hold and Spin', 'fivers/vs5littlegem.png', 0, 1, '2023-12-23 23:36:02', '2023-12-23 23:36:02');
INSERT INTO `fivers_games` VALUES (765, 11, 1, '100', 'Baccarat', 'fivers/100.webp', 0, 1, '2023-12-23 23:36:06', '2023-12-23 23:36:06');
INSERT INTO `fivers_games` VALUES (766, 11, 1, '102', 'Fortune Baccarat', 'fivers/102.webp', 0, 1, '2023-12-23 23:36:07', '2023-12-23 23:36:07');
INSERT INTO `fivers_games` VALUES (767, 11, 1, '105', 'Speed Fortune Baccarat', 'fivers/105.webp', 0, 1, '2023-12-23 23:36:10', '2023-12-23 23:36:10');
INSERT INTO `fivers_games` VALUES (768, 11, 1, '106', 'VIP Fortune Baccarat', 'fivers/106.webp', 0, 1, '2023-12-23 23:36:11', '2023-12-23 23:36:11');
INSERT INTO `fivers_games` VALUES (769, 11, 1, '107', 'Italian Baccarat', 'fivers/107.webp', 0, 1, '2023-12-23 23:36:13', '2023-12-23 23:36:13');
INSERT INTO `fivers_games` VALUES (770, 11, 1, '120', 'Knockout Baccarat', 'fivers/120.webp', 0, 1, '2023-12-23 23:36:14', '2023-12-23 23:36:14');
INSERT INTO `fivers_games` VALUES (771, 11, 1, '130', 'Super 6 Baccarat', 'fivers/130.webp', 0, 1, '2023-12-23 23:36:15', '2023-12-23 23:36:15');
INSERT INTO `fivers_games` VALUES (772, 11, 1, '150', 'Dragon Tiger', 'fivers/150.webp', 0, 1, '2023-12-23 23:36:17', '2023-12-23 23:36:17');
INSERT INTO `fivers_games` VALUES (773, 11, 1, '170', 'No Commission Baccarat', 'fivers/170.webp', 0, 1, '2023-12-23 23:36:19', '2023-12-23 23:36:19');
INSERT INTO `fivers_games` VALUES (774, 11, 1, '171', 'VIP No Commission Speed Cricket Baccarat', 'fivers/171.webp', 0, 1, '2023-12-23 23:36:21', '2023-12-23 23:36:21');
INSERT INTO `fivers_games` VALUES (775, 11, 1, '1000', 'Italian Roulette', 'fivers/1000.webp', 0, 1, '2023-12-23 23:36:23', '2023-12-23 23:36:23');
INSERT INTO `fivers_games` VALUES (776, 11, 1, '5001', 'Auto Roulette', 'fivers/5001.webp', 0, 1, '2023-12-23 23:36:25', '2023-12-23 23:36:25');
INSERT INTO `fivers_games` VALUES (777, 11, 1, '32100', 'Casino Marina Baccarat 1', 'fivers/32100.webp', 0, 1, '2023-12-23 23:36:26', '2023-12-23 23:36:26');
INSERT INTO `fivers_games` VALUES (778, 11, 1, '32101', 'Casino Marina Baccarat 2', 'fivers/32101.webp', 0, 1, '2023-12-23 23:36:28', '2023-12-23 23:36:28');
INSERT INTO `fivers_games` VALUES (779, 11, 1, '32102', 'Casino Marina Baccarat 3', 'fivers/32102.webp', 0, 1, '2023-12-23 23:36:30', '2023-12-23 23:36:30');
INSERT INTO `fivers_games` VALUES (780, 11, 1, '32103', 'Casino Marina Baccarat 4', 'fivers/32103.webp', 0, 1, '2023-12-23 23:36:32', '2023-12-23 23:36:32');
INSERT INTO `fivers_games` VALUES (781, 11, 1, '221000', 'Speed Roulette', 'fivers/221000.webp', 0, 1, '2023-12-23 23:36:32', '2023-12-23 23:36:32');
INSERT INTO `fivers_games` VALUES (782, 11, 1, '221002', 'Speed Auto Roulette', 'fivers/221002.webp', 0, 1, '2023-12-23 23:36:33', '2023-12-23 23:36:33');
INSERT INTO `fivers_games` VALUES (783, 11, 1, '221003', 'Diamond Roulette', 'fivers/221003.webp', 0, 1, '2023-12-23 23:36:35', '2023-12-23 23:36:35');
INSERT INTO `fivers_games` VALUES (784, 11, 1, '221004', 'Prestige Auto Roulette', 'fivers/221004.webp', 0, 1, '2023-12-23 23:36:36', '2023-12-23 23:36:36');
INSERT INTO `fivers_games` VALUES (785, 11, 1, '221005', 'Namaste Roulette', 'fivers/221005.webp', 0, 1, '2023-12-23 23:36:38', '2023-12-23 23:36:38');
INSERT INTO `fivers_games` VALUES (786, 11, 1, '224100', 'Ultimate Sic Bo', 'fivers/224100.webp', 0, 1, '2023-12-23 23:36:39', '2023-12-23 23:36:39');
INSERT INTO `fivers_games` VALUES (787, 11, 1, '228000', 'Andar Bahar', 'fivers/228000.webp', 0, 1, '2023-12-23 23:36:41', '2023-12-23 23:36:41');
INSERT INTO `fivers_games` VALUES (788, 11, 1, '228001', 'Lucky 7', 'fivers/228001.webp', 0, 1, '2023-12-23 23:36:43', '2023-12-23 23:36:43');
INSERT INTO `fivers_games` VALUES (789, 11, 1, '228100', 'Ultimate Andar Bahar', 'fivers/228100.webp', 0, 1, '2023-12-23 23:36:44', '2023-12-23 23:36:44');
INSERT INTO `fivers_games` VALUES (790, 11, 1, '321000', 'Casino Marina Roulette 1', 'fivers/321000.webp', 0, 1, '2023-12-23 23:36:46', '2023-12-23 23:36:46');
INSERT INTO `fivers_games` VALUES (791, 11, 1, '321001', 'Casino Marina Roulette 2', 'fivers/321001.webp', 0, 1, '2023-12-23 23:36:48', '2023-12-23 23:36:48');
INSERT INTO `fivers_games` VALUES (792, 11, 1, '411000', 'Spanish Roulette', 'fivers/411000.webp', 0, 1, '2023-12-23 23:36:50', '2023-12-23 23:36:50');
INSERT INTO `fivers_games` VALUES (793, 11, 1, '431000', 'Ruleta del Sol', 'fivers/431000.webp', 0, 1, '2023-12-23 23:36:52', '2023-12-23 23:36:52');
INSERT INTO `fivers_games` VALUES (794, 11, 1, '481002', 'EZ Dealer Roulette Japanese', 'fivers/481002.webp', 0, 1, '2023-12-23 23:36:52', '2023-12-23 23:36:52');
INSERT INTO `fivers_games` VALUES (795, 11, 1, '481003', 'EZ Dealer Roulette Mandarin', 'fivers/481003.webp', 0, 1, '2023-12-23 23:36:54', '2023-12-23 23:36:54');
INSERT INTO `fivers_games` VALUES (796, 11, 1, '501000', 'Turkish Roulette', 'fivers/501000.webp', 0, 1, '2023-12-23 23:36:55', '2023-12-23 23:36:55');
INSERT INTO `fivers_games` VALUES (797, 11, 1, '541000', 'Ultimate Roulette', 'fivers/541000.webp', 0, 1, '2023-12-23 23:36:57', '2023-12-23 23:36:57');
INSERT INTO `fivers_games` VALUES (798, 11, 1, '601000', 'Russian Roulette', 'fivers/601000.webp', 0, 1, '2023-12-23 23:36:58', '2023-12-23 23:36:58');
INSERT INTO `fivers_games` VALUES (799, 11, 1, '611000', 'Portomaso Roulette 2', 'fivers/611000.webp', 0, 1, '2023-12-23 23:36:59', '2023-12-23 23:36:59');
INSERT INTO `fivers_games` VALUES (800, 11, 1, '611001', 'Oracle Real Roulette', 'fivers/611001.webp', 0, 1, '2023-12-23 23:37:00', '2023-12-23 23:37:00');
INSERT INTO `fivers_games` VALUES (801, 11, 1, '611003', 'Oracle 360 Roulette', 'fivers/611003.webp', 0, 1, '2023-12-23 23:37:01', '2023-12-23 23:37:01');
INSERT INTO `fivers_games` VALUES (802, 12, 1, 'DoubleBallRou001', 'Double Ball Roulette', 'fivers/DoubleBallRou001.webp', 0, 1, '2023-12-23 23:37:03', '2023-12-23 23:37:03');
INSERT INTO `fivers_games` VALUES (803, 12, 1, 'AndarBahar000001', 'Super Andar Bahar', 'fivers/AndarBahar000001.webp', 0, 1, '2023-12-23 23:37:04', '2023-12-23 23:37:04');
INSERT INTO `fivers_games` VALUES (804, 12, 1, 'HoldemTable00001', 'Casino Hold\'em', 'fivers/HoldemTable00001.webp', 0, 1, '2023-12-23 23:37:05', '2023-12-23 23:37:05');
INSERT INTO `fivers_games` VALUES (805, 12, 1, 'BacBo00000000001', 'Bac Bo', 'fivers/BacBo00000000001.webp', 0, 1, '2023-12-23 23:37:06', '2023-12-23 23:37:06');
INSERT INTO `fivers_games` VALUES (806, 12, 1, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'fivers/PTBaccarat000001.webp', 0, 1, '2023-12-23 23:37:08', '2023-12-23 23:37:08');
INSERT INTO `fivers_games` VALUES (807, 12, 1, 'lr6t4k3lcd4qgyrk', 'Grand Casino Roulette', 'fivers/lr6t4k3lcd4qgyrk.webp', 0, 1, '2023-12-23 23:37:10', '2023-12-23 23:37:10');
INSERT INTO `fivers_games` VALUES (808, 12, 1, 'TopDice000000001', 'Football Studio Dice', 'fivers/TopDice000000001.webp', 0, 1, '2023-12-23 23:37:11', '2023-12-23 23:37:11');
INSERT INTO `fivers_games` VALUES (809, 12, 1, 'Monopoly00000001', 'MONOPOLY Live', 'fivers/Monopoly00000001.webp', 0, 1, '2023-12-23 23:37:13', '2023-12-23 23:37:13');
INSERT INTO `fivers_games` VALUES (810, 12, 1, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'fivers/ovu5cwp54ccmymck.webp', 0, 1, '2023-12-23 23:37:14', '2023-12-23 23:37:14');
INSERT INTO `fivers_games` VALUES (811, 12, 1, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'fivers/ovu5h6b3ujb4y53w.webp', 0, 1, '2023-12-23 23:37:16', '2023-12-23 23:37:16');
INSERT INTO `fivers_games` VALUES (812, 12, 1, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'fivers/ndgv45bghfuaaebf.webp', 0, 1, '2023-12-23 23:37:17', '2023-12-23 23:37:17');
INSERT INTO `fivers_games` VALUES (813, 12, 1, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'fivers/lv2kzclunt2qnxo5.webp', 0, 1, '2023-12-23 23:37:18', '2023-12-23 23:37:18');
INSERT INTO `fivers_games` VALUES (814, 12, 1, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'fivers/qsf63ownyvbqnz33.webp', 0, 1, '2023-12-23 23:37:18', '2023-12-23 23:37:18');
INSERT INTO `fivers_games` VALUES (815, 12, 1, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'fivers/leqhceumaq6qfoug.webp', 0, 1, '2023-12-23 23:37:20', '2023-12-23 23:37:20');
INSERT INTO `fivers_games` VALUES (816, 12, 1, 'DragonTiger00001', 'Dragon Tiger', 'fivers/DragonTiger00001.webp', 0, 1, '2023-12-23 23:37:22', '2023-12-23 23:37:22');
INSERT INTO `fivers_games` VALUES (817, 12, 1, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'fivers/nmwde3fd7hvqhq43.webp', 0, 1, '2023-12-23 23:37:24', '2023-12-23 23:37:24');
INSERT INTO `fivers_games` VALUES (818, 12, 1, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'fivers/qgqrrnuqvltnvejx.webp', 0, 1, '2023-12-23 23:37:25', '2023-12-23 23:37:25');
INSERT INTO `fivers_games` VALUES (819, 12, 1, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'fivers/nmwdzhbg7hvqh6a7.webp', 0, 1, '2023-12-23 23:37:27', '2023-12-23 23:37:27');
INSERT INTO `fivers_games` VALUES (820, 12, 1, '48z5pjps3ntvqc1b', 'Auto-Roulette', 'fivers/48z5pjps3ntvqc1b.webp', 0, 1, '2023-12-23 23:37:28', '2023-12-23 23:37:28');
INSERT INTO `fivers_games` VALUES (821, 12, 1, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'fivers/SpeedAutoRo00001.webp', 0, 1, '2023-12-23 23:37:30', '2023-12-23 23:37:30');
INSERT INTO `fivers_games` VALUES (822, 12, 1, 'GoldVaultRo00001', 'Gold Vault Roulette', 'fivers/GoldVaultRo00001.webp', 0, 1, '2023-12-23 23:37:31', '2023-12-23 23:37:31');
INSERT INTO `fivers_games` VALUES (823, 12, 1, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'fivers/o4kyj7tgpwqqy4m4.webp', 0, 1, '2023-12-23 23:37:33', '2023-12-23 23:37:33');
INSERT INTO `fivers_games` VALUES (824, 12, 1, 'TRPTable00000001', 'Triple Card Poker', 'fivers/TRPTable00000001.webp', 0, 1, '2023-12-23 23:37:34', '2023-12-23 23:37:34');
INSERT INTO `fivers_games` VALUES (825, 12, 1, 'peekbaccarat0001', 'Peek Baccarat', 'fivers/peekbaccarat0001.webp', 0, 1, '2023-12-23 23:37:35', '2023-12-23 23:37:35');
INSERT INTO `fivers_games` VALUES (826, 12, 1, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'fivers/qgonc7t4ucdiel4o.webp', 0, 1, '2023-12-23 23:37:36', '2023-12-23 23:37:36');
INSERT INTO `fivers_games` VALUES (827, 12, 1, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'fivers/k2oswnib7jjaaznw.webp', 0, 1, '2023-12-23 23:37:36', '2023-12-23 23:37:36');
INSERT INTO `fivers_games` VALUES (828, 12, 1, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'fivers/ovu5fzje4ccmyqnr.webp', 0, 1, '2023-12-23 23:37:38', '2023-12-23 23:37:38');
INSERT INTO `fivers_games` VALUES (829, 12, 1, 'BonsaiBacc000003', 'Bonsai Speed Baccarat C', 'fivers/BonsaiBacc000003.webp', 0, 1, '2023-12-23 23:37:40', '2023-12-23 23:37:40');
INSERT INTO `fivers_games` VALUES (830, 12, 1, 'LightningTable01', 'Lightning Roulette', NULL, 0, 1, '2023-12-23 23:37:42', '2023-12-23 23:37:42');
INSERT INTO `fivers_games` VALUES (831, 12, 1, 'CrazyTime0000002', 'Crazy Time A', 'fivers/CrazyTime0000002.webp', 0, 1, '2023-12-23 23:37:43', '2023-12-23 23:37:43');
INSERT INTO `fivers_games` VALUES (832, 12, 1, 'NoCommBac0000001', 'No Commission Baccarat', 'fivers/NoCommBac0000001.webp', 0, 1, '2023-12-23 23:37:44', '2023-12-23 23:37:44');
INSERT INTO `fivers_games` VALUES (833, 12, 1, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'fivers/XxxtremeLigh0001.webp', 0, 1, '2023-12-23 23:37:46', '2023-12-23 23:37:46');
INSERT INTO `fivers_games` VALUES (834, 12, 1, 'teenpattitable01', 'Teen Patti', 'fivers/teenpattitable01.webp', 0, 1, '2023-12-23 23:37:48', '2023-12-23 23:37:48');
INSERT INTO `fivers_games` VALUES (835, 12, 1, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'fivers/ndgvwvgthfuaad3q.webp', 0, 1, '2023-12-23 23:37:48', '2023-12-23 23:37:48');
INSERT INTO `fivers_games` VALUES (836, 12, 1, 'nxpkul2hgclallno', 'Speed Baccarat I', 'fivers/nxpkul2hgclallno.webp', 0, 1, '2023-12-23 23:37:50', '2023-12-23 23:37:50');
INSERT INTO `fivers_games` VALUES (837, 12, 1, 'SBCTable00000001', 'Side Bet City', 'fivers/SBCTable00000001.webp', 0, 1, '2023-12-23 23:37:51', '2023-12-23 23:37:51');
INSERT INTO `fivers_games` VALUES (838, 12, 1, 'ndgvs3tqhfuaadyg', 'Baccarat C', 'fivers/ndgvs3tqhfuaadyg.webp', 0, 1, '2023-12-23 23:37:52', '2023-12-23 23:37:52');
INSERT INTO `fivers_games` VALUES (839, 12, 1, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'fivers/obj64qcnqfunjelj.webp', 0, 1, '2023-12-23 23:37:53', '2023-12-23 23:37:53');
INSERT INTO `fivers_games` VALUES (840, 12, 1, 'rep5aor7nyjl7qli', 'Speed Baccarat 6', 'fivers/rep5aor7nyjl7qli.webp', 0, 1, '2023-12-23 23:37:55', '2023-12-23 23:37:55');
INSERT INTO `fivers_games` VALUES (841, 12, 1, '7nyiaws9tgqrzaz3', 'Football Studio Roulette', 'fivers/7nyiaws9tgqrzaz3.webp', 0, 1, '2023-12-23 23:37:57', '2023-12-23 23:37:57');
INSERT INTO `fivers_games` VALUES (842, 12, 1, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'fivers/ndgvz5mlhfuaad6e.webp', 0, 1, '2023-12-23 23:37:58', '2023-12-23 23:37:58');
INSERT INTO `fivers_games` VALUES (843, 12, 1, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'fivers/ovu5dsly4ccmynil.webp', 0, 1, '2023-12-23 23:38:00', '2023-12-23 23:38:00');
INSERT INTO `fivers_games` VALUES (844, 12, 1, 'rep5ca4ynyjl7wdw', 'Speed Baccarat 7', 'fivers/rep5ca4ynyjl7wdw.webp', 0, 1, '2023-12-23 23:38:02', '2023-12-23 23:38:02');
INSERT INTO `fivers_games` VALUES (845, 12, 1, 'TopCard000000001', 'Football Studio', 'fivers/TopCard000000001.webp', 0, 1, '2023-12-23 23:38:02', '2023-12-23 23:38:02');
INSERT INTO `fivers_games` VALUES (846, 12, 1, '7x0b1tgh7agmf6hv', 'Immersive Roulette', 'fivers/7x0b1tgh7agmf6hv.webp', 0, 1, '2023-12-23 23:38:03', '2023-12-23 23:38:03');
INSERT INTO `fivers_games` VALUES (847, 12, 1, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'fivers/qgqrucipvltnvnvq.webp', 0, 1, '2023-12-23 23:38:04', '2023-12-23 23:38:04');
INSERT INTO `fivers_games` VALUES (848, 12, 1, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'fivers/ovu5fbxm4ccmypmb.webp', 0, 1, '2023-12-23 23:38:06', '2023-12-23 23:38:06');
INSERT INTO `fivers_games` VALUES (849, 12, 1, 'vctlz20yfnmp1ylr', 'Roulette', 'fivers/vctlz20yfnmp1ylr.webp', 0, 1, '2023-12-23 23:38:07', '2023-12-23 23:38:07');
INSERT INTO `fivers_games` VALUES (850, 12, 1, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'fivers/ocye5hmxbsoyrcii.webp', 0, 1, '2023-12-23 23:38:09', '2023-12-23 23:38:09');
INSERT INTO `fivers_games` VALUES (851, 12, 1, '60i0lcfx5wkkv3sy', 'Baccarat B', 'fivers/60i0lcfx5wkkv3sy.webp', 0, 1, '2023-12-23 23:38:09', '2023-12-23 23:38:09');
INSERT INTO `fivers_games` VALUES (852, 12, 1, 'BonsaiBacc000001', 'Bonsai Speed Baccarat A', 'fivers/BonsaiBacc000001.webp', 0, 1, '2023-12-23 23:38:10', '2023-12-23 23:38:10');
INSERT INTO `fivers_games` VALUES (853, 12, 1, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', 'fivers/01rb77cq1gtenhmo.webp', 0, 1, '2023-12-23 23:38:12', '2023-12-23 23:38:12');
INSERT INTO `fivers_games` VALUES (854, 12, 1, 'CrazyTime0000001', 'Crazy Time', 'fivers/CrazyTime0000001.webp', 0, 1, '2023-12-23 23:38:13', '2023-12-23 23:38:13');
INSERT INTO `fivers_games` VALUES (855, 12, 1, 'lkcbrbdckjxajdol', 'Speed Roulette', 'fivers/lkcbrbdckjxajdol.webp', 0, 1, '2023-12-23 23:38:15', '2023-12-23 23:38:15');
INSERT INTO `fivers_games` VALUES (856, 12, 1, 'AmericanTable001', 'American Roulette', 'fivers/AmericanTable001.webp', 0, 1, '2023-12-23 23:38:16', '2023-12-23 23:38:16');
INSERT INTO `fivers_games` VALUES (857, 12, 1, 'qsf7bpfvyvbqolwp', 'Speed Baccarat 3', 'fivers/qsf7bpfvyvbqolwp.webp', 0, 1, '2023-12-23 23:38:18', '2023-12-23 23:38:18');
INSERT INTO `fivers_games` VALUES (858, 12, 1, 'qsf7alptyvbqohva', 'Speed Baccarat 2', 'fivers/qsf7alptyvbqohva.webp', 0, 1, '2023-12-23 23:38:20', '2023-12-23 23:38:20');
INSERT INTO `fivers_games` VALUES (859, 12, 1, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'fivers/nxpj4wumgclak2lx.webp', 0, 1, '2023-12-23 23:38:22', '2023-12-23 23:38:22');
INSERT INTO `fivers_games` VALUES (860, 12, 1, 'ndgv76kehfuaaeec', 'No Commission Speed Baccarat A', 'fivers/ndgv76kehfuaaeec.webp', 0, 1, '2023-12-23 23:38:22', '2023-12-23 23:38:22');
INSERT INTO `fivers_games` VALUES (861, 12, 1, 'BonsaiBacc000002', 'Bonsai Speed Baccarat B', 'fivers/BonsaiBacc000002.webp', 0, 1, '2023-12-23 23:38:23', '2023-12-23 23:38:23');
INSERT INTO `fivers_games` VALUES (862, 12, 1, 'qsf65xtoyvbqoaop', 'Speed Baccarat 1', 'fivers/qsf65xtoyvbqoaop.webp', 0, 1, '2023-12-23 23:38:25', '2023-12-23 23:38:25');
INSERT INTO `fivers_games` VALUES (863, 12, 1, 'oytmvb9m1zysmc44', 'Baccarat A', 'fivers/oytmvb9m1zysmc44.webp', 0, 1, '2023-12-23 23:38:27', '2023-12-23 23:38:27');
INSERT INTO `fivers_games` VALUES (864, 12, 1, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'fivers/zixzea8nrf1675oh.webp', 0, 1, '2023-12-23 23:38:28', '2023-12-23 23:38:28');
INSERT INTO `fivers_games` VALUES (865, 12, 1, 'LightningBac0001', 'Lightning Baccarat', NULL, 0, 1, '2023-12-23 23:38:30', '2023-12-23 23:38:30');
INSERT INTO `fivers_games` VALUES (866, 12, 1, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'fivers/ocye2ju2bsoyq6vv.webp', 0, 1, '2023-12-23 23:38:31', '2023-12-23 23:38:31');
INSERT INTO `fivers_games` VALUES (867, 12, 1, 'FanTan0000000001', 'Fan Tan', 'fivers/FanTan0000000001.webp', 0, 1, '2023-12-23 23:38:33', '2023-12-23 23:38:33');
INSERT INTO `fivers_games` VALUES (868, 12, 1, 'CSPTable00000001', 'Caribbean Stud Poker', 'fivers/CSPTable00000001.webp', 0, 1, '2023-12-23 23:38:34', '2023-12-23 23:38:34');
INSERT INTO `fivers_games` VALUES (869, 12, 1, 'SuperSicBo000001', 'Super Sic Bo', 'fivers/SuperSicBo000001.webp', 0, 1, '2023-12-23 23:38:36', '2023-12-23 23:38:36');
INSERT INTO `fivers_games` VALUES (870, 12, 1, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'fivers/o4kymodby2fa2c7g.webp', 0, 1, '2023-12-23 23:38:38', '2023-12-23 23:38:38');
INSERT INTO `fivers_games` VALUES (871, 12, 1, 'MOWDream00000001', 'Dream Catcher', 'fivers/MOWDream00000001.webp', 0, 1, '2023-12-23 23:38:40', '2023-12-23 23:38:40');
INSERT INTO `fivers_games` VALUES (872, 12, 1, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'fivers/qgqrhfvsvltnueqf.webp', 0, 1, '2023-12-23 23:38:40', '2023-12-23 23:38:40');
INSERT INTO `fivers_games` VALUES (873, 12, 1, 'LightningDice001', 'Lightning Dice', NULL, 0, 1, '2023-12-23 23:38:42', '2023-12-23 23:38:42');
INSERT INTO `fivers_games` VALUES (874, 12, 1, 'MonBigBaller0001', 'MONOPOLY Big Baller', NULL, 0, 1, '2023-12-23 23:38:43', '2023-12-23 23:38:43');
INSERT INTO `fivers_games` VALUES (875, 12, 1, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'fivers/o4kylkahpwqqy57w.webp', 0, 1, '2023-12-23 23:38:45', '2023-12-23 23:38:45');
INSERT INTO `fivers_games` VALUES (876, 12, 1, 'f1f4rm9xgh4j3u2z', 'Auto-Roulette La Partage', 'fivers/f1f4rm9xgh4j3u2z.webp', 0, 1, '2023-12-23 23:38:46', '2023-12-23 23:38:46');
INSERT INTO `fivers_games` VALUES (877, 12, 1, 'ETHTable00000001', 'Extreme Texas Hold\'em', 'fivers/ETHTable00000001.webp', 0, 1, '2023-12-23 23:38:47', '2023-12-23 23:38:47');
INSERT INTO `fivers_games` VALUES (878, 12, 1, 'qgqrv4asvltnvuty', 'Speed Baccarat X', 'fivers/qgqrv4asvltnvuty.webp', 0, 1, '2023-12-23 23:38:49', '2023-12-23 23:38:49');
INSERT INTO `fivers_games` VALUES (879, 12, 1, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'fivers/ovu5eja74ccmyoiq.webp', 0, 1, '2023-12-23 23:38:52', '2023-12-23 23:38:52');

-- ----------------------------
-- Table structure for fivers_providers
-- ----------------------------
DROP TABLE IF EXISTS `fivers_providers`;
CREATE TABLE `fivers_providers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `views` bigint(20) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fivers_providers
-- ----------------------------
INSERT INTO `fivers_providers` VALUES (1, 'PRAGMATIC', 'Pragmatic Play', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (2, 'HABANERO', 'Habanero', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (3, 'BOOONGO', 'Booongo', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (4, 'PLAYSON', 'Playson', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (5, 'CQ9', 'CQ9', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (6, 'EVOPLAY', 'Evoplay', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (7, 'TOPTREND', 'TopTrend Gaming', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (8, 'DREAMTECH', 'DreamTech', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (9, 'PGSOFT', 'PG Soft', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (10, 'REELKINGDOM', 'Reel Kingdom', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (11, 'EZUGI', 'Ezugi', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');
INSERT INTO `fivers_providers` VALUES (12, 'EVOLUTION', 'Evolution', 1, 1, '2023-12-23 23:11:21', '2023-12-23 23:11:21');

-- ----------------------------
-- Table structure for game_exclusives
-- ----------------------------
DROP TABLE IF EXISTS `game_exclusives`;
CREATE TABLE `game_exclusives`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `winLength` bigint(20) NOT NULL DEFAULT 3,
  `loseLength` bigint(20) NOT NULL DEFAULT 20,
  `influencer_winLength` bigint(20) NOT NULL DEFAULT 20,
  `influencer_loseLength` bigint(20) NOT NULL DEFAULT 1,
  `iconsJson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NULL DEFAULT 1,
  `views` bigint(20) NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `game_exclusives_category_id_foreign`(`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of game_exclusives
-- ----------------------------
INSERT INTO `game_exclusives` VALUES (1, 9, 'fortunetiger', 'Fortune Tiger', '<p>&nbsp;Diz a lenda que existe um imperador de mil anos que governa um império chamado Imortal. O segredo de sua imortalidade é seu raro tigre dourado que sempre fica ao seu lado como guardião. Possui lindo pelo listrado que brilha como a luz do sol e um par de olhos dourados que podem arrebatar a alma de quem olha para eles. Não só este tigre mantém a paz em Immortal, mas também concedeu ao imperador uma vida imortal. O tigre só dá à luz uma vez a cada doze anos, e este ano é um desses anos! O imperador está muito animado em convidar o povo para testemunhar o milagre. Diz-se que uma chuva dourada cairá do céu quando o filhote de tigre nascer. A chuva tem o poder de fertilizar o solo e curar todo tipo de doenças. Jogue “Fortune Tiger” agora para testemunhar o nascimento do tigre dourado e ser abençoado com uma vida inteira de sorte!\\n\\nFortune Tiger é um vídeo slot de 3 cilindros e 3 linhas com respins e multiplicador x10. O recurso Fortune Tiger pode ser acionado aleatoriamente durante qualquer giro! Se houver 1 ou mais símbolos adicionais (seja um símbolo escolhido aleatoriamente ou um símbolo Wild) aparecendo nas bobinas, todas as bobinas girarão novamente! Além disso, quando todos os símbolos nos rolos estiverem envolvidos numa vitória, a vitória será multiplicada por x10.&nbsp;</p>', 'mk2R9W6GNeocbopKDvkrh0cM78oukO-metaZm9ydHVuZS10aWdlci1kaXZ1bGdhY2FvLmpwZw==-.jpg', 'Lq6sofAr3rU4AvAbUaw2dazLpOhoFD-metadGlnZXItMi5wbmc=-.png', 1, 30, 30, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 1865, '2023-10-07 16:18:46', '2023-12-20 00:14:23');
INSERT INTO `game_exclusives` VALUES (2, 9, 'fortuneox', 'Fortune OX', '<p>&nbsp;Ox is the second of the 12-year periodic sequence of animals in the Chinese zodiac. It plays an important role throughout China agriculture history and acts as the symbol of “productivity” due to its diligence and tenacity. The ancient Chinese always said: “Farming is best done in the year of the Ox”. This is because there is always fair weather in every year of the Ox, making all the work go smoothly! The Ox also represents an auspicious animal. Legend has it, there is an immortal person who rides his mighty Ox in Mount Taibai. It is said that whoever has the chance to touch the horns of the Ox will be blessed with happiness for their whole life! However, this immortal person and his ox are hard to track, and only the destined few can meet them and be blessed with good luck! Play “Fortune Ox” now, let the Ox bless you with good fortune and prosperity! Fortune Ox is a 3-reel, 3-row (for reel 1 and 3) and 4-row (for reel 2) video slot featuring respins until win and x10 multiplier. Fortune Ox Feature may be randomly triggered during any spin! During the Fortune Ox Feature, when the first and third reel share the same symbols, all reels will respin until there is a win! Not only that, full reels win will reward x10 wins too!&nbsp;</p>', 'v9Y8flwXWH7NxQGHVQ0qAbvwYvUTsY-metaZm9ydHVuZS10aWdlci1kaXZ1bGdhY2FvLnBuZw==-.png', 'eSwugWYqXBDiRKo4V3a93fivawpzqc-metab3gucG5n-.png', 1, 30, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 474, '2023-10-07 16:58:11', '2023-11-28 16:54:42');
INSERT INTO `game_exclusives` VALUES (3, 9, 'fortunemouse', 'Fortune Mouse', '<p>&nbsp;Legend has it that the Jade Emperor organized a river crossing competition to select twelve animals to be the twelve zodiac signs. Many animals enthusiastically entered after hearing about this news. On the day of the competition, the cow was ahead of the race. But unbeknownst to the cow, the clever mouse had been hiding on the cow’s back. When the cow was about to cross the finish line, the mouse jumped off the cow’s back and thus became the first of the zodiac signs.<br>Mice are not only clever; they were also regarded as a symbol of wealth during ancient times. It was said that if your home had mice stealing food, it meant your family was rich and prosperous enough to have a surplus of food at home for the mice to steal! So let “Fortune Mouse” bring you unlimited luck and endless wealth in the year of the Mouse!<br>Fortune Mouse is a 3-reel, 3-row video slot featuring respins until win. 3 Wild symbols may be added to the middle reel during any spin in the Fortune Mouse Feature. The first and third reel will respin until there is a win. Be awarded with 1000x of the total bet in Maximum Win when Wild symbols occupy all the reels!&nbsp;</p>', 'Knn2Qh5Gq4QyOKWds0gxcJpFFv8ZqG-metaZm9ydHVuZSBtb3VzZS5wbmc=-.png', 'BsJCiMUt4sLYcvRUaw4zqAjsUW4oqk-metabW91c2UucG5n-.png', 1, 30, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 516, '2023-10-07 17:06:52', '2023-11-22 16:21:19');
INSERT INTO `game_exclusives` VALUES (4, 9, 'fortunepanda', 'Fortune Panda', '<p>\"Uma emocionante jornada que promete trazer grandes ganhos financeiros! Bem-vindo ao Panda, a nova adição à Família Fortune.\"</p>', 'YIoo9HT7MihiVmNWKcI2FIW1WZrEvU-metaZm9ydHVuZXBhbmRhLnBuZw==-.png', 'x9jw5Eu29n3UIJzr6ud8zhdqiO8u4d-metacGFuZGEucG5n-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 513, '2023-10-07 20:18:52', '2023-11-23 11:02:57');
INSERT INTO `game_exclusives` VALUES (5, 10, 'phoenixrises', 'Phoenix Rises', '<p>&nbsp;Ressurge das cinzas para trazer sorte até você. Venha se divertir com nossa nova atração!&nbsp;</p>', 'PCXR4RCPk9RLDn1HsufExp71pZqUCQ-metacGhvZW5peC1yaXNlcy5qcGc=-.jpg', 'x7iN6vEcayfBZIQoy7XC7zbe2UVgns-metaZmVuaXgucG5n-.png', 1, 20, 20, 1, '{\n    \"success\": true,\n    \"data\": [\n        {\n            \"icon_name\": \"Symbol_0\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 0,\n            \"win_4\": 0,\n            \"win_5\": 0,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_1\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 0,\n            \"win_4\": 0,\n            \"win_5\": 0,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_2\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 20,\n            \"win_4\": 50,\n            \"win_5\": 120,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_3\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 15,\n            \"win_4\": 45,\n            \"win_5\": 100,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_4\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 10,\n            \"win_4\": 45,\n            \"win_5\": 80,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_5\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 6,\n            \"win_4\": 15,\n            \"win_5\": 50,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_6\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 30,\n            \"win_4\": 60,\n            \"win_5\": 150,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_7\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 5,\n            \"win_4\": 10,\n            \"win_5\": 40,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_8\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 5,\n            \"win_4\": 10,\n            \"win_5\": 40,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_9\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 10,\n            \"win_4\": 45,\n            \"win_5\": 80,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        }\n    ],\n    \"message\": \"List icons success\"\n}', 1, 373, '2023-10-07 20:58:18', '2023-11-22 12:34:32');
INSERT INTO `game_exclusives` VALUES (6, 10, 'queenofbounty', 'Queen of Bounty', '<p>Queen of Bounty</p>', 'xrRXaL88Iff3ULrsQLHsXmyaM3Y2NL-metaY2FwYS5wbmc=-.png', 'D4KfDqMiKGkeNYXnnTNdofzXAuohRj-metadGVzb3VyZS5wbmc=-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 4, '2023-10-07 21:43:26', '2023-11-22 12:35:42');
INSERT INTO `game_exclusives` VALUES (7, 10, 'treasuresofaztec', 'Treasures of Aztec', '<p>Treasures of Aztec</p>', 'KHExUPRNFajcxZWzdoPdzCe4O2h5Pr-metaYXp0ZWMucG5n-.png', 'SvaQYvS346lt4Qt4UTdAJ5k34Iv6Ew-metaMTM1NzUzOS5wbmc=-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 263, '2023-10-07 22:22:00', '2023-11-22 16:21:21');
INSERT INTO `game_exclusives` VALUES (8, 10, 'bikiniparadise', 'Bikini Paradise', '<p>Bikini Paradise</p>', 'fZADwOr23g2Hx5y7YLKGk2FnLMYlLm-metaYmlraW5pLXBhcmFkaXNlLmpwZw==-.jpg', 'zSBdC8WTBkhpKWeL1qBv4ZU5NR3bdY-metaMjc5MzkzMy5wbmc=-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 28, '2023-10-08 22:57:29', '2023-11-22 16:21:22');
INSERT INTO `game_exclusives` VALUES (9, 10, 'hoodvswoolf', 'Hood VS Wolf', '<p>Hood VS Wolf</p>', 'VRHFIg7KH8dogUT5lK9xdqE5pVr7AC-metaaG9vZHZjd29sZi5wbmc=-.png', 'llnN2dNJTN2FAyFYDvoW4pGhX6mQkQ-metadHJhbnNmZXJpci5wbmc=-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 18, '2023-10-08 23:07:30', '2023-11-22 16:21:22');
INSERT INTO `game_exclusives` VALUES (10, 10, 'jackfrost', 'Jack Frost´s', '<p>Jack Frost´s</p>', 'uutSKVtwTeceqW6lXsERHhTSlTnu1r-metaamFja2Zyb3N0LnBuZw==-.png', 'ciJKswrHRTZocwtMtDfIjerQp7y8od-metaMjQ5MjAyNi5wbmc=-.png', 1, 20, 20, 1, '{\n\"success\": true,\n\"data\": [\n{\n\"icon_name\": \"Symbol_0\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_1\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 0,\n\"win_4\": 0,\n\"win_5\": 0,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_2\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 50,\n\"win_4\": 250,\n\"win_5\": 2500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_3\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 20,\n\"win_4\": 100,\n\"win_5\": 1000,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_4\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 15,\n\"win_4\": 50,\n\"win_5\": 500,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_5\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 10,\n\"win_4\": 25,\n\"win_5\": 200,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_6\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 5,\n\"win_4\": 20,\n\"win_5\": 100,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_7\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 4,\n\"win_4\": 15,\n\"win_5\": 75,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n},\n{\n\"icon_name\": \"Symbol_8\",\n\"win_1\": 0,\n\"win_2\": 0,\n\"win_3\": 3,\n\"win_4\": 10,\n\"win_5\": 50,\n\"win_6\": 0,\n\"wild_card\": null,\n\"free_spin\": null,\n\"free_num\": 0,\n\"scaler_spin\": null\n}\n],\n\"message\": \"List icons success\"\n}', 1, 10, '2023-10-09 20:23:13', '2023-11-22 17:16:37');
INSERT INTO `game_exclusives` VALUES (11, 10, 'songkranparty', 'Song Kran Party', '<p>Song Kran Party</p>', 'Pw3uLU7FMRJP3CexPbcfS626QXyOdP-metac29uZ2tyYW4ucG5n-.png', '6li5RylQgxWOwFaKx5ijUbfG8GJ2x7-metaMTQ3MTQzNS0yMDAucG5n-.png', 1, 20, 20, 1, '{\n    \"success\": true,\n    \"data\": [\n        {\n            \"icon_name\": \"Symbol_0\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 0,\n            \"win_4\": 0,\n            \"win_5\": 0,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_1\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 0,\n            \"win_4\": 0,\n            \"win_5\": 0,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_2\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 20,\n            \"win_4\": 50,\n            \"win_5\": 120,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_3\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 15,\n            \"win_4\": 45,\n            \"win_5\": 100,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_4\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 10,\n            \"win_4\": 45,\n            \"win_5\": 80,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_5\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 6,\n            \"win_4\": 15,\n            \"win_5\": 50,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_6\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 30,\n            \"win_4\": 60,\n            \"win_5\": 150,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_7\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 5,\n            \"win_4\": 10,\n            \"win_5\": 40,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_8\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 5,\n            \"win_4\": 10,\n            \"win_5\": 40,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        },\n        {\n            \"icon_name\": \"Symbol_9\",\n            \"win_1\": 0,\n            \"win_2\": 0,\n            \"win_3\": 10,\n            \"win_4\": 45,\n            \"win_5\": 80,\n            \"win_6\": 0,\n            \"wild_card\": null,\n            \"free_spin\": null,\n            \"free_num\": 0,\n            \"scaler_spin\": null\n        }\n    ],\n    \"message\": \"List icons success\"\n}', 0, 19, '2023-10-09 20:25:21', '2023-11-22 12:17:05');
INSERT INTO `game_exclusives` VALUES (12, 10, 'fortunerabbit', 'Fortune Rabbit', '<p>Fortune Rabbit</p>', '1RR2Nx53VXjLjwCiYxQ4s5vmahnQ0W-metacmFiYml0LnBuZw==-.png', 'G6c2v0xJxlqTdY3nPMhk4MsyF0cuem-metacmFiaWl0aWNvbi5wbmc=-.png', 1, 20, 20, 1, '[]', 1, 970, '2023-10-10 20:45:45', '2023-11-22 12:50:27');

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_service` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `technology` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `has_lobby` tinyint(4) NOT NULL DEFAULT 0,
  `is_mobile` tinyint(4) NOT NULL DEFAULT 0,
  `has_freespins` tinyint(4) NOT NULL DEFAULT 0,
  `has_tables` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `views` bigint(20) NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES (2, 7, 'Fortune Tiger', 'd2eca6ec0cee46189bcc99620e08f844', '45PcOZKe8thultp9Z1IFpO7UE9dbOx-metadGh1bWItbWFnbmF0YS1mb3J0dW5lLnBuZw==-.png', 'slots', 'PGSoft', 'slotegrator', 'HTML5', 0, 1, 0, 0, 'pgsoft-fortune-tiger', 0, 72, '2023-09-24 22:19:54', '2023-10-07 00:27:07');
INSERT INTO `games` VALUES (3, 8, 'Mines', '7c34301b8c194a99a80bf1082f353bdd', 'PDv47vjk9evn1ynVZS7oXjzRIcxJFd-metabWluZXNwcm8tdGh1bWIucG5n-.png', 'mini games', 'Spribe', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'spribe-mines', 0, 28, '2023-09-29 20:31:04', '2023-10-02 21:20:32');
INSERT INTO `games` VALUES (4, 7, 'Fortune Ox', 'a05e42412e1b4ea2aa385d46cab73815', 'OmGtj5H94ZHXIMIdOdQJBMxbidDUwq-metadGh1bWItZm9ydHVuZW94LnBuZw==-.png', 'slots', 'PGSoft', 'slotegrator', 'HTML5', 0, 1, 0, 0, 'pgsoft-fortune-ox', 0, 5, '2023-09-29 20:39:25', '2023-09-30 06:52:06');
INSERT INTO `games` VALUES (5, 7, 'Fortune Rabbit', 'c3befcf4f6e24010a5bc41da10054f23', 'HvVGCyDvICECXlM3KQClrJNl75ReF1-metadGh1bWItZm9ydHVuZXJhYmJpdC5wbmc=-.png', 'slots', 'PGSoft', 'slotegrator', 'HTML5', 0, 1, 0, 0, 'pgsoft-fortune-rabbit', 0, 12, '2023-09-29 20:42:38', '2023-10-02 12:31:56');
INSERT INTO `games` VALUES (6, 3, 'Aviator', '5b1b299bf4f04b9f84643730a882e682', '8WhyWMX9WocMSTzisdYpTQ2Wv2bHD3-metadGh1bWItYXZpYXRvci1tYWduYXRhLnBuZw==-.png', 'crash', 'PragmaticPlayLive', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'pragmaticplaylive-aviator', 0, 8, '2023-09-29 22:51:21', '2023-10-02 19:50:15');
INSERT INTO `games` VALUES (7, 3, 'Spaceman', 'db196682b2fca3650b42526b642fac3a16a374b5', 'UuvpLelMvtK7LGFTl55ZMq0dM4Jzik-metac3BhY2VtYW4tdGh1bWIucG5n-.png', 'crash', 'PragmaticPlayLive', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'pragmaticplaylive-spaceman', 0, 5, '2023-09-29 23:04:09', '2023-09-30 13:30:31');
INSERT INTO `games` VALUES (8, 7, 'Fortune Mouse', 'b50151fecdcc409b82d2e1542d9c7531', 'oE9xGt81IrgaOoviohAYAahIyVyvfd-metaQnlsTHpkV28xRy1iOTg0NGUwOWFhNjNkYWMwNWI4MjY5NDg0MWEwZjNlNC5wbmc=-.png', 'slots', 'PGSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'pgsoft-fortune-mouse', 0, 16, '2023-09-30 03:11:56', '2023-10-04 09:39:27');
INSERT INTO `games` VALUES (9, 3, 'JetX', 'cfcd1ed15cf62e9cde42482e2dcc0699f2f30d6f', '3xsmvSHyyJCAaJ15Jodn8T01wzAtug-metadGh1bWJqZXR4LnBuZw==-.png', 'slots', 'SmartSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'smartsoft-jetx', 0, 7, '2023-09-30 03:21:43', '2023-10-02 21:03:46');
INSERT INTO `games` VALUES (10, 1, 'Plinko X', 'f6573dfe5225f0d3eb56fc99a4e0eca894268f1e', 'NPAHmHXFnyAESnzOF8sp51YVZ7y59u-metadGh1bWItcGxpbmtveC5wbmc=-.png', 'slots', 'SmartSoft', NULL, 'HTML5', 0, 0, 0, 0, 'smartsoft-plinko-x', 0, 0, '2023-09-30 03:24:06', '2023-09-30 07:26:41');
INSERT INTO `games` VALUES (11, 7, 'Piggy Gold', 'fe21a6cfa2e94e6087a0fdc86dae2f3b', 'wYIGgatRNObHuWwE4ucXnKAWqVHkMv-metacGdzX3BpZ2d5Z29sZC1lbi1VUy5wbmcuZTUyMzY3MTAyYzA0YWM0OGE2ZDRjN2Y1ODFiNDA3NTYucG5n-.png', 'slots', 'PGSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'pgsoft-piggy-gold', 0, 3, '2023-09-30 03:37:33', '2023-09-30 19:11:12');
INSERT INTO `games` VALUES (12, 3, 'Balloon', '9d102c4944c742acbb3ac49dad3bda1e', '2AJCX333BJFDNqHiUtCg5y7n1tFIBO-metadGh1bWItYmFsbG9vbi5wbmc=-.png', 'slots', 'SmartSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'smartsoft-balloon', 0, 9, '2023-09-30 11:03:43', '2023-10-02 20:58:20');
INSERT INTO `games` VALUES (16, 4, 'Plinko', 'd3ea2911ae7c4a1c8230117db0295318', 'ChVHzBeeTgGgxfnzKEJhAhhSAzLrk1-metaaW1hZ2VtXzIwMjMtMDktMzBfMTUxNzA5OTg0LnBuZw==-.png', 'mini games', 'Spribe', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'spribe-plinko', 0, 5, '2023-09-30 12:17:37', '2023-09-30 19:53:28');
INSERT INTO `games` VALUES (14, 7, 'Gates of Olympus Mobile', '260d4a6e9f99c91940517ac650330683f6f42408', 'EUuXwKqZfTUJ433ha5FicmDifZjweG-metadGh1bWItZ2F0ZXMtb2Ytb2x5bXB1cy5wbmc=-.png', 'slots', 'PragmaticPlay', 'slotegrator', 'HTML5', 0, 1, 0, 0, 'pragmaticplay-gates-of-olympus-mobile', 0, 3, '2023-09-30 11:47:52', '2023-10-01 15:59:54');
INSERT INTO `games` VALUES (15, 3, 'Cappadocia', '40f1aaa03a5c403ea3148b17e1894ece', 'WqZ6M9oli8VmY4USb6TUrU3p52kWnT-metadGh1bWItY2FwcGFkb2NpYS5wbmc=-.png', 'slots', 'SmartSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'smartsoft-cappadocia', 0, 11, '2023-09-30 12:02:05', '2023-10-02 20:27:12');
INSERT INTO `games` VALUES (17, 3, 'Football x', 'eb2fbec7b7095e687125e86536e22bf661867bec', 'XZvLSNPGhEcFGMNxfoiJwoSqVY1N0c-metaaW1hZ2VtXzIwMjMtMTAtMDJfMTQ0ODAwMjAwLnBuZw==-.png', 'Crash', 'SmartSoft', 'slotegrator', 'HTML5', 0, 0, 0, 0, 'smartsoft-football-x', 0, 2, '2023-10-02 11:48:04', '2023-10-02 20:03:42');

-- ----------------------------
-- Table structure for games_hashes
-- ----------------------------
DROP TABLE IF EXISTS `games_hashes`;
CREATE TABLE `games_hashes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `games_hashes_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games_hashes
-- ----------------------------

-- ----------------------------
-- Table structure for games_keys
-- ----------------------------
DROP TABLE IF EXISTS `games_keys`;
CREATE TABLE `games_keys`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `merchant_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `merchant_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `merchant_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agent_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agent_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `api_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games_keys
-- ----------------------------
INSERT INTO `games_keys` VALUES (1, 'https://gis.slotegrator.com/api/index.php/v1', '872add307caf001a1c0d309e3c44d2e0', '53da63c70a2836740b3faa7c07b26aa153e35dce', 'vipersorteaqui', '42e08730150d7f6ae2e4ac16e809b214', '5fe0ba2168919685a966c7bf71d2cec5', 'https://api.fiverscool.com', '2023-11-30 18:03:08', '2023-12-25 23:34:13');

-- ----------------------------
-- Table structure for games_kscinus
-- ----------------------------
DROP TABLE IF EXISTS `games_kscinus`;
CREATE TABLE `games_kscinus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cover` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `rtp` decimal(10, 2) NULL DEFAULT 0.00,
  `category_id` tinyint(4) NULL DEFAULT 0,
  `developer` varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT 2,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money_ratio` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `device` tinyint(4) NULL DEFAULT 0,
  `views` bigint(20) NULL DEFAULT 0,
  `status` tinyint(4) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games_kscinus
-- ----------------------------

-- ----------------------------
-- Table structure for gateways
-- ----------------------------
DROP TABLE IF EXISTS `gateways`;
CREATE TABLE `gateways`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `suitpay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_production` tinyint(4) NULL DEFAULT 0,
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_webhook_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bspay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bspay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bspay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gateways
-- ----------------------------
INSERT INTO `gateways` VALUES (1, 'https://ws.suitpay.app/api/v1/', 'wincassinos_1695754053301', '8fc3400804ae1c85b821d3d414027254e4352fe03ff8fe6898e8d67c962afcaf4782894d85ec4e6c9cc1e3e65a74f788', 0, 'pk_test_qq5m52FFatQmJ9Y6nVsmW3Wj', 'sk_test_XJ9fyX3XDO6w4u6YMSoetZRe', NULL, '2023-11-30 18:05:51', '2023-12-19 18:47:29', 'https://api.bspay.co/v1/', 'NjU4MWI0MDg5ZmQyMGE4NWNjMWZhNTQxOnhnYW1lc0BnbWFpbC5jb20=', 'eGdhbWVzQGdtYWlsLmNvbTo2NTgxYjQwODlmZDIwYTg1Y2MxZmE1NDE6MTcwMjk5OTUzNTQ1NQ==');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_09_24_214554_add_field_to_users_table', 2);
INSERT INTO `migrations` VALUES (6, '2023_09_24_215008_create_wallets_table', 2);
INSERT INTO `migrations` VALUES (7, '2023_09_24_215356_create_games_table', 2);
INSERT INTO `migrations` VALUES (8, '2023_09_24_215619_create_games_hashes_table', 2);
INSERT INTO `migrations` VALUES (9, '2023_09_24_215903_create_orders_table', 2);
INSERT INTO `migrations` VALUES (10, '2023_09_24_233733_create_settings_table', 3);
INSERT INTO `migrations` VALUES (11, '2023_09_24_211517_create_teams_table', 4);
INSERT INTO `migrations` VALUES (12, '2023_09_24_214013_add_team_id_to_users_table', 5);
INSERT INTO `migrations` VALUES (13, '2023_09_25_113635_create_withdrawals_table', 6);
INSERT INTO `migrations` VALUES (14, '2023_09_25_113654_create_deposits_table', 6);
INSERT INTO `migrations` VALUES (15, '2023_09_25_204419_add_fields_to_settings_table', 7);
INSERT INTO `migrations` VALUES (16, '2023_09_24_214008_create_categories_table', 8);
INSERT INTO `migrations` VALUES (17, '2023_09_27_214903_create_wallet_changes_table', 9);
INSERT INTO `migrations` VALUES (18, '2023_09_30_230009_create_transactions_table', 10);
INSERT INTO `migrations` VALUES (19, '2023_10_01_171432_add_smtp_to_settings_table', 11);
INSERT INTO `migrations` VALUES (20, '2023_10_02_213820_create_affiliate_histories_table', 12);
INSERT INTO `migrations` VALUES (22, '2023_10_07_183921_create_game_exclusives_table', 13);
INSERT INTO `migrations` VALUES (23, '2023_10_08_111755_add_fields_to_game_exclusives_table', 14);
INSERT INTO `migrations` VALUES (24, '2023_10_10_010619_create_soccer_categories_table', 15);
INSERT INTO `migrations` VALUES (25, '2023_10_10_010632_create_soccer_matches_table', 15);
INSERT INTO `migrations` VALUES (26, '2023_10_10_010641_create_soccer_bets_table', 15);
INSERT INTO `migrations` VALUES (27, '2023_10_11_144956_create_system_wallets_table', 16);
INSERT INTO `migrations` VALUES (31, '2023_10_12_185145_create_permission_tables', 18);
INSERT INTO `migrations` VALUES (30, '2023_10_12_183005_create_teams_table', 17);
INSERT INTO `migrations` VALUES (32, '2023_10_13_005036_add_is_admin_to_users_table', 19);
INSERT INTO `migrations` VALUES (33, '2023_10_16_103614_create_permission_tables', 20);
INSERT INTO `migrations` VALUES (34, '2023_10_17_105300_create_suit_pay_payments_table', 21);
INSERT INTO `migrations` VALUES (35, '2023_10_17_212504_create_notifications_table', 22);
INSERT INTO `migrations` VALUES (36, '2023_10_21_112530_create_bet_sections_table', 23);
INSERT INTO `migrations` VALUES (37, '2023_10_21_112532_create_bet_categories_table', 24);
INSERT INTO `migrations` VALUES (38, '2023_10_21_112826_create_bet_events_table', 25);
INSERT INTO `migrations` VALUES (39, '2023_10_21_112906_create_bet_users_table', 26);
INSERT INTO `migrations` VALUES (40, '2023_10_23_115759_add_auth_to_users_table', 27);
INSERT INTO `migrations` VALUES (41, '2023_10_25_132459_create_game_pragmatics_table', 28);
INSERT INTO `migrations` VALUES (42, '2023_10_25_140317_create_game_logs_table', 28);
INSERT INTO `migrations` VALUES (43, '2023_10_25_150440_create_jpg_table', 29);
INSERT INTO `migrations` VALUES (44, '2023_10_25_152044_create_sessions_table', 29);
INSERT INTO `migrations` VALUES (45, '2023_11_30_195548_create_gateways_table', 30);
INSERT INTO `migrations` VALUES (46, '2023_11_30_195557_create_games_keys_table', 31);
INSERT INTO `migrations` VALUES (47, '2023_11_30_195609_create_setting_mails_table', 32);
INSERT INTO `migrations` VALUES (48, '2023_12_18_172721_create_banners_table', 33);
INSERT INTO `migrations` VALUES (49, '2023_12_19_121013_add_customization_to_settings_table', 34);
INSERT INTO `migrations` VALUES (50, '2023_12_19_123142_add_bspay_to_gateways_table', 34);
INSERT INTO `migrations` VALUES (51, '2023_12_23_224032_create_fivers_providers_table', 35);
INSERT INTO `migrations` VALUES (52, '2023_12_23_224105_create_fivers_games_table', 35);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 28);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type`, `notifiable_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('e29ae377-b93f-4671-84f1-5c1bcaa71cb6', 'App\\Notifications\\NewWithdrawalNotification', 'App\\Models\\User', 1, '{\"message\":\"Ol\\u00e1 Administrador, Foi solicitado um saque de R$50,00 , pelo usu\\u00e1rioAdmin\"}', NULL, '2023-12-20 19:44:35', '2023-12-20 19:44:35');
INSERT INTO `notifications` VALUES ('e715c15f-db24-47d0-a2e2-f41068a96c38', 'App\\Notifications\\NewWithdrawalNotification', 'App\\Models\\User', 1, '{\"message\":\"Ol\\u00e1 Administrador, Foi solicitado um saque de R$50,00 , pelo usu\\u00e1rioAdmin\"}', NULL, '2023-12-20 19:44:42', '2023-12-20 19:44:42');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `providers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refunded` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `round_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
INSERT INTO `password_reset_tokens` VALUES ('edvaldoadsblack@gmail.com', 'q0s1UsMm7BUlFrGrdMoO8G7Cr7gFIVYCXywH6OAuJCPmqIJjqrR6V7PPWyFT', '2023-10-02 12:43:29');
INSERT INTO `password_reset_tokens` VALUES ('vinenzosoftware@gmail.com', 'Si5Wm3B5uTCykPnXtUwMXComYwkhNHgEcnTB9IFVDdvFCPdN7xamtgjBzg7I', '2023-10-16 14:44:57');
INSERT INTO `password_reset_tokens` VALUES ('mel2014.fa@gmail.com', 'keqaaO91H1vsUlKW9imfzsk6wWHctzBZG5msMXn6T1HEmGovFcqihaCyasHQ', '2023-10-21 10:01:45');
INSERT INTO `password_reset_tokens` VALUES ('geosimar@gmail.com', 'rWeWvDFvx6fRTgxcSX7DZ4clY0EtdWRJuYegx7LdjraQjVGet9q4WIwTvCXK', '2023-10-21 22:52:50');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name`, `guard_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28');
INSERT INTO `permissions` VALUES (2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25');
INSERT INTO `permissions` VALUES (3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10');
INSERT INTO `permissions` VALUES (4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35');
INSERT INTO `permissions` VALUES (5, 'admin-create', 'api', '2023-10-12 18:56:02', '2023-11-22 12:29:37');
INSERT INTO `permissions` VALUES (6, 'admin-edit', 'api', '2023-10-12 18:56:27', '2023-11-22 12:30:56');
INSERT INTO `permissions` VALUES (7, 'admin-delete', 'api', '2023-10-12 18:56:55', '2023-11-22 12:32:23');
INSERT INTO `permissions` VALUES (8, 'category-view', 'api', '2023-10-12 19:01:31', '2023-11-22 12:33:30');
INSERT INTO `permissions` VALUES (9, 'category-create', 'api', '2023-10-12 19:01:46', '2023-11-22 12:35:30');
INSERT INTO `permissions` VALUES (10, 'category-edit', 'api', '2023-10-12 19:01:59', '2023-11-22 12:37:17');
INSERT INTO `permissions` VALUES (11, 'category-delete', 'api', '2023-10-12 19:02:09', '2023-11-22 12:44:05');
INSERT INTO `permissions` VALUES (12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27');
INSERT INTO `permissions` VALUES (13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36');
INSERT INTO `permissions` VALUES (14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44');
INSERT INTO `permissions` VALUES (15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54');
INSERT INTO `permissions` VALUES (16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49');
INSERT INTO `permissions` VALUES (17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01');
INSERT INTO `permissions` VALUES (18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11');
INSERT INTO `permissions` VALUES (19, 'wallet-delete', 'api', '2023-10-12 19:06:18', '2023-11-22 12:44:20');
INSERT INTO `permissions` VALUES (20, 'deposit-view', 'api', '2023-10-12 19:06:44', '2023-11-22 12:44:05');
INSERT INTO `permissions` VALUES (21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56');
INSERT INTO `permissions` VALUES (22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05');
INSERT INTO `permissions` VALUES (23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00');
INSERT INTO `permissions` VALUES (24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11');
INSERT INTO `permissions` VALUES (25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31');
INSERT INTO `permissions` VALUES (26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40');
INSERT INTO `permissions` VALUES (27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51');
INSERT INTO `permissions` VALUES (28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00');
INSERT INTO `permissions` VALUES (29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09');
INSERT INTO `permissions` VALUES (30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36');
INSERT INTO `permissions` VALUES (31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47');
INSERT INTO `permissions` VALUES (32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56');
INSERT INTO `permissions` VALUES (33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06');
INSERT INTO `permissions` VALUES (34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19');
INSERT INTO `permissions` VALUES (35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06');
INSERT INTO `permissions` VALUES (36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46');
INSERT INTO `permissions` VALUES (37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57');
INSERT INTO `permissions` VALUES (38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06');
INSERT INTO `permissions` VALUES (39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19');
INSERT INTO `permissions` VALUES (40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
INSERT INTO `role_has_permissions` VALUES (37, 1);
INSERT INTO `role_has_permissions` VALUES (38, 1);
INSERT INTO `role_has_permissions` VALUES (39, 1);
INSERT INTO `role_has_permissions` VALUES (40, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name`, `guard_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'api', '2023-10-12 16:20:41', '2023-11-22 12:17:25');
INSERT INTO `roles` VALUES (2, 'afiliado', 'api', '2023-10-12 16:21:08', '2023-11-22 12:19:31');
INSERT INTO `roles` VALUES (3, '3', 'api', '2023-11-22 12:17:38', '2023-11-22 12:17:38');
INSERT INTO `roles` VALUES (87, '3', 'web', '2023-11-22 13:02:37', '2023-11-22 13:02:37');
INSERT INTO `roles` VALUES (88, 'Smith', 'api', '2023-11-22 13:02:41', '2023-11-22 13:02:41');

-- ----------------------------
-- Table structure for setting_mails
-- ----------------------------
DROP TABLE IF EXISTS `setting_mails`;
CREATE TABLE `setting_mails`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `software_smtp_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting_mails
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `software_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_logo_white` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `software_logo_black` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint(20) NULL DEFAULT 20,
  `ngr_percent` bigint(20) NULL DEFAULT 20,
  `soccer_percentage` bigint(20) NULL DEFAULT 30,
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint(20) NULL DEFAULT 0,
  `min_deposit` decimal(10, 2) NULL DEFAULT 20.00,
  `max_deposit` decimal(10, 2) NULL DEFAULT 0.00,
  `min_withdrawal` decimal(10, 2) NULL DEFAULT 20.00,
  `max_withdrawal` decimal(10, 2) NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint(4) NULL DEFAULT 0,
  `rollover` bigint(20) NULL DEFAULT 10,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discord` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tiktok` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active_gateway` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'bspay',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'Viper', 'Viiper plataforma de Cassino', 'uploads/V83e4sf9QFOrhuMEa2jn8JjIsfFKkHBdIBeCl8s7.png', 'uploads/VPo5zHHko0YWTIN1vanlJzhiL05DPgit5jeTNRsy.png', 'uploads/2g5deqPtSQnhICP68VzuRRViO27adMwmdVxLrdd0.png', 'BRL', 'dot', 'left', 20, 20, 30, 'R$', 'local', 100, 20.00, 50000.00, 20.00, 50000.00, '2023-09-24 17:40:05', '2023-12-25 23:42:26', 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'bspay');

-- ----------------------------
-- Table structure for suit_pay_payments
-- ----------------------------
DROP TABLE IF EXISTS `suit_pay_payments`;
CREATE TABLE `suit_pay_payments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `withdrawal_id` bigint(20) NULL DEFAULT NULL,
  `pix_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pix_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `suit_pay_payments_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of suit_pay_payments
-- ----------------------------
INSERT INTO `suit_pay_payments` VALUES (3, 'd42474f6-4054-4f34-a87b-418c9d5e102a', 43, 3, '39341719828', 'document', 17.00, 'Saque direto', 1, '2023-10-19 12:08:25', '2023-10-19 12:08:28');
INSERT INTO `suit_pay_payments` VALUES (4, 'ded8ed60-c6cc-46ee-a6c0-05da29a870c5', 43, 4, '39341719828', 'document', 33.00, 'Saque direto', 1, '2023-10-19 14:26:05', '2023-10-19 14:26:08');
INSERT INTO `suit_pay_payments` VALUES (5, '6b00c4c8-9aa8-4360-9641-8094b8ccd29f', 50, 5, '87986108304', 'document', 40.00, 'Saque direto', 1, '2023-10-19 19:43:47', '2023-10-19 19:43:49');
INSERT INTO `suit_pay_payments` VALUES (6, 'a7dd36ab-92ad-40ae-a7d4-f6a24dd8c4e5', 47, 6, '49699514892', 'document', 10.00, 'Saque direto', 1, '2023-10-20 12:45:46', '2023-10-20 12:45:52');
INSERT INTO `suit_pay_payments` VALUES (8, 'b1ba7266-ac87-4c61-bd0c-451b134ee2a3', 67, 7, '64b4aed4-abc9-4d2c-95b9-dfc5ec7d9c3f', 'randomKey', 20.00, 'Saque direto', 1, '2023-10-22 10:53:50', '2023-10-22 10:53:52');
INSERT INTO `suit_pay_payments` VALUES (9, '8967c1e5-88fb-4ef6-be00-768e42241fd6', 28, 8, '11964438809', 'phoneNumber', 20.00, 'Saque direto', 1, '2023-10-22 11:03:13', '2023-10-22 11:03:16');
INSERT INTO `suit_pay_payments` VALUES (10, '36867711-4504-47b0-9944-d1215e80a9ba', 28, 8, '11964438809', 'phoneNumber', 20.00, 'Saque direto', 1, '2023-10-22 11:03:17', '2023-10-22 11:03:19');
INSERT INTO `suit_pay_payments` VALUES (11, '685f9dd0-62f0-46da-8985-d86572baa4b0', 28, 9, '11964438809', 'phoneNumber', 30.00, 'Saque direto', 1, '2023-10-22 11:08:02', '2023-10-22 11:08:04');
INSERT INTO `suit_pay_payments` VALUES (12, 'd6572e15-bcf8-433b-9c76-95da4ec14da6', 28, 9, '11964438809', 'phoneNumber', 30.00, 'Saque direto', 1, '2023-10-22 11:08:05', '2023-10-22 11:08:07');
INSERT INTO `suit_pay_payments` VALUES (13, 'f7dbac15-24a6-4f47-9b7d-8a46e9eb415d', 28, 9, '11964438809', 'phoneNumber', 30.00, 'Saque direto', 1, '2023-10-22 11:08:09', '2023-10-22 11:08:12');
INSERT INTO `suit_pay_payments` VALUES (14, '8ed42a86-3fd4-41a8-a0f2-6afccc63b315', 28, 10, '11964438809', 'phoneNumber', 20.00, 'Saque direto', 1, '2023-10-22 11:24:13', '2023-10-22 11:24:14');
INSERT INTO `suit_pay_payments` VALUES (15, 'ada041a3-bd4b-4e35-9779-87355e0f54f0', 36, 13, 'Beatricepaula6@gmail.com', 'email', 20.00, 'Saque direto', 1, '2023-10-22 15:08:48', '2023-10-22 15:08:50');
INSERT INTO `suit_pay_payments` VALUES (16, '7d414190-a425-48e8-85e8-b00fead3b7ae', 29, 16, '31986288680', 'phoneNumber', 20.00, 'Saque direto', 1, '2023-10-22 15:16:08', '2023-10-22 15:16:10');
INSERT INTO `suit_pay_payments` VALUES (17, '93c8b97c-bf04-4553-8f15-30cafe191191', 30, 15, '05661916604', 'document', 10.00, 'Saque direto', 1, '2023-10-22 15:16:13', '2023-10-22 15:16:15');
INSERT INTO `suit_pay_payments` VALUES (18, '096ef608-830a-4d2d-9408-ae088cfe4889', 68, 14, '154.819.876-51', 'document', 10.00, 'Saque direto', 1, '2023-10-22 15:16:22', '2023-10-22 15:16:24');
INSERT INTO `suit_pay_payments` VALUES (19, '04279031-a7e8-4d0e-a6ae-e94496a88eb3', 67, 17, '64b4aed4-abc9-4d2c-95b9-dfc5ec7d9c3f', 'randomKey', 20.00, 'Saque direto', 1, '2023-10-22 17:27:05', '2023-10-22 17:27:07');
INSERT INTO `suit_pay_payments` VALUES (20, 'ca711c60-783a-47df-9f87-89b2e287764e', 69, 18, '70346693683', 'document', 10.00, 'Saque direto', 1, '2023-10-22 19:17:31', '2023-10-22 19:17:33');
INSERT INTO `suit_pay_payments` VALUES (21, '1fde1e97-924b-4dd4-b6ab-33351f1ea035', 97, 20, '06939327320', 'document', 40.00, 'Saque direto', 1, '2023-10-24 12:45:26', '2023-10-24 12:45:28');
INSERT INTO `suit_pay_payments` VALUES (22, '3763b2dc-5298-4073-9172-27e7ca401dfb', 97, 21, '06939327320', 'document', 50.00, 'Saque direto', 1, '2023-10-24 17:48:01', '2023-10-24 17:48:04');
INSERT INTO `suit_pay_payments` VALUES (23, 'e0fca72a-e345-4e2d-a7df-c8c79c7babc0', 97, 22, '06939327320', 'document', 30.00, 'Saque direto', 1, '2023-10-25 15:58:07', '2023-10-25 15:58:09');
INSERT INTO `suit_pay_payments` VALUES (24, '9b3a486e-f9cb-4b1c-8b8b-ac0498289453', 114, 23, '075.719.523-79', 'document', 20.00, 'Saque direto', 1, '2023-10-26 14:04:11', '2023-10-26 14:04:13');
INSERT INTO `suit_pay_payments` VALUES (25, 'c7a3b20d-b589-49ee-9250-d76cb7b577ce', 116, 24, '712.161.164-31', 'document', 20.00, 'Saque direto', 1, '2023-10-26 17:11:37', '2023-10-26 17:11:45');

-- ----------------------------
-- Table structure for system_wallets
-- ----------------------------
DROP TABLE IF EXISTS `system_wallets`;
CREATE TABLE `system_wallets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(27, 12) NOT NULL DEFAULT 0.000000000000,
  `balance_min` decimal(27, 12) NOT NULL DEFAULT 10000.100000000000,
  `pay_upto_percentage` decimal(4, 2) NOT NULL DEFAULT 45.00,
  `mode` enum('balance_min','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of system_wallets
-- ----------------------------
INSERT INTO `system_wallets` VALUES (1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_user_team_id_index`(`team_id`) USING BTREE,
  INDEX `team_user_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of team_user
-- ----------------------------

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teams
-- ----------------------------

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `status` tinyint(4) NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `transactions_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of transactions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(4) NULL DEFAULT 3,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cpf` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `token_time` bigint(20) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logged_in` tinyint(4) NULL DEFAULT 0,
  `banned` tinyint(4) NULL DEFAULT 0,
  `inviter` int(10) UNSIGNED NULL DEFAULT NULL,
  `affiliate_revenue_share` decimal(20, 2) NULL DEFAULT 0.00,
  `affiliate_cpa` decimal(20, 2) NULL DEFAULT 0.00,
  `affiliate_baseline` decimal(20, 2) NULL DEFAULT 0.00,
  `is_demo_agent` tinyint(4) NULL DEFAULT 0,
  `oauth_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `oauth_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kscinus` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 0, 'Admin', 1, NULL, NULL, NULL, 'admin@demo.com', NULL, '$2y$10$8IViREJTQIAXRY7n9D3UDuhes4bNjBTSaz0E/in5uNb1LX6ZWgNQq', '0oYT4M941i02jN5Bmp3Tsm8hPmbzBbTsgCICS0K8hWMhq6dyUXqumCn6i7nl', 1696659991, 'ff8e95055e285d0e5d0cbd733a6ffb20b042c539d61ab8b2b28358a152cdc09e', 0, 0, 10, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-24 18:13:49', '2023-11-23 11:03:20', 1);
INSERT INTO `users` VALUES (9, 3, 'Demo', 0, NULL, NULL, NULL, 'demo@demo.com', NULL, '$2y$10$8IViREJTQIAXRY7n9D3UDuhes4bNjBTSaz0E/in5uNb1LX6ZWgNQq', 'sxXtju8O977LWzgQMMvSY7ZIA7KyUG2L4z9PB3q0KUDhL5izYGAl1EhAn00T', 1696039783, '26cc23caaf6fe22498959b44666540c1e6198bc89cdbb65a1ddece66de949c40', 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-26 20:52:04', '2023-11-23 10:24:00', 1);
INSERT INTO `users` VALUES (10, 3, 'Bia', 0, NULL, NULL, NULL, 'bia@demo.com', NULL, '$2y$10$Ai7RP1KDxwz9NtNj7pysOOGOmJNJ.K2sR3YMe7VFYxpRSaqA.1yue', 'wJwxuISXHx6RpQHRZufhd39vXb53oDGbzwZNXYLmsPOBJknougloFRZPyfvL', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-26 20:53:41', '2023-09-26 20:53:41', 0);
INSERT INTO `users` VALUES (11, 3, 'Lorenzo', 0, NULL, NULL, NULL, 'lorenzo@demo.com', NULL, '$2y$10$4FkWKkI/i1QU9NjzqqoLcupDZMxzAlxu94lKeLOFS0Ci4NzRHoJdG', 'SJANoVfdGn3CPGY2Q0LwMZipnu99Vz3OHUB4XCYnzt9Fm12bW8h6VlrKXJe3', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-26 20:54:45', '2023-09-26 20:54:45', 0);
INSERT INTO `users` VALUES (12, 3, 'luis', 0, NULL, NULL, NULL, 'luis@demo.com', NULL, '$2y$10$7sLIbgokVppjLLv3uDi9QOFRIln.G4Cb8T8flR2e9ywasGrNveWQO', 'rHrl5zAYPVTgxvzcgPiLZqn0YxhUg1kpnHKdeRkEARqasWOUb7MfnVHDdpCn', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-26 22:43:11', '2023-09-26 22:43:11', 0);
INSERT INTO `users` VALUES (29, 3, 'Fayk Bruna', 0, NULL, NULL, NULL, 'faykbruna@hotmail.com', NULL, '$2y$10$ErCif5oI65kDUmrkwxN0sebQDgRIrqPgjGrZRmKRI/RHX9TLRo/vC', 'NXzatrmqEyFDkYqG8QXSOhBpidExHDSMVFjYOFrEoCqhT9iMhGJty0PftVVQ', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-13 19:02:01', '2023-10-22 08:54:21', 0);
INSERT INTO `users` VALUES (14, 3, 'Davi Santana', 0, NULL, NULL, NULL, 'davi.automation2023@gmail.com', NULL, '$2y$10$jT7DXvEYJDLu0dhchoKfue282PS7rn4n6NfCenPjlEK3ToCrUh5/u', 'kKa3bDfjpSVVt0Lm9qORleYX1AJSCQEWBaRqokI5ta0lruT376Ld6Hb54wPS', 1696433932, '81f861db51956cc82af456716048ce018a20573804b2876cff26915459359dda', 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-29 20:34:18', '2023-09-29 20:34:18', 0);
INSERT INTO `users` VALUES (15, 3, 'Joyce Priscila da Silva santos', 0, NULL, NULL, NULL, 'joycepriscila3740@gmail.com', NULL, '$2y$10$BPKT50Htlvl9D0Rtv3cmK.nlPgKIeryrmaX0fyoHiu/NQi4DigUtu', 'MawqPVIxzckkZ1kfV841TyO4wE2b8IL88WBxzpnFmJXuHE3onZGwGPOYWy6e', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-29 21:01:05', '2023-09-29 21:01:05', 0);
INSERT INTO `users` VALUES (20, 3, 'Aislan', 0, NULL, NULL, NULL, 'mkt.projetocarim@gmail.com', NULL, '$2y$10$04ktbMtfzSgrUkFhGDNzbesqy5Y9sr3yEDocADAGAeVbyvHX1AXS2', 'o5pvBXHA4vbOvCOVJRpLZvOTeeCLa1UlDNVBYrMTvo9aacVaL407gGAHPQNl', 1696299891, 'edf7ec0c52e9364ce041e81f63509e4bb3068a2e50db7e093ef08238fd20508f', 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-02 11:51:51', '2023-10-02 11:51:51', 0);
INSERT INTO `users` VALUES (17, 3, 'Murilo', 0, NULL, NULL, NULL, 'muriloecommerce2020@gmail.com', NULL, '$2y$10$4dyj6XHBDfP2kqxEwsMi9eLF23J5WBj4u3m.CJFtRHSCO/uGQRoYq', 'g3Z3A4dWjl59juUrCjseJRUwAJKmaQO2wDfWqF8HsWvO4YJxwcJ1DNRITw6S', 1696074703, '584f9e05f7c27a151e4c68cdc84d4402006fe254f12503cf27ee74027043e10d', 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-09-30 05:25:20', '2023-09-30 05:25:20', 0);
INSERT INTO `users` VALUES (18, 3, 'dsadsad', 0, NULL, NULL, NULL, 'vmelojob@gmail.com', NULL, '$2y$10$A4/BO2d0ON2AHLBD8aRYMu8BTC6jhxGhWR/KeBTKDTSB1bmghlsqi', 'z6Vab0Rjl9haOmlJ6Ahu5InuPKZYm17xQLwX44p0AXeFWsuW5SB8EcB4krVp', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-01 15:30:53', '2023-10-01 15:30:53', 0);
INSERT INTO `users` VALUES (19, 3, 'Lucky Clover', 0, NULL, NULL, NULL, 'contatoluckyclover@gmail.com', NULL, '$2y$10$Cqxvkuf2LAPIwio9dfslK.H7Fj.iH9pdIPyvujFItlMhos7PxI47q', 'p9vwGrmt9f3AY21He4k0mvzAWhsEvSheVacxezgB16gEn6TfEyTzmCdj41xO', 1696355438, 'aa43db2153f166833ebc6ca6cc8e9c43e34f3962be9912422741fb344d171553', 0, 0, 20, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-01 19:20:31', '2023-10-01 19:20:31', 0);
INSERT INTO `users` VALUES (21, 3, 'Filipe Santana', 0, NULL, NULL, NULL, 'edvaldoadsblack@gmail.com', NULL, '$2y$10$yJD9v2.DSR.hmuccSkl5uukuh5okYnOxbGeugI1lXDJu8.LoqH16u', '8NgHv4dVIWO7Kv8qJVfF24YX3IV7V3q40O4XhdkwkG3VXlWEy4ZBcqg1hnm0', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-02 12:36:32', '2023-10-02 12:36:32', 0);
INSERT INTO `users` VALUES (22, 3, 'MuriloF', 0, NULL, NULL, NULL, 'murilloms@gmail.com', NULL, '$2y$10$rkoZ1d5u/ptrJIIOyTK6W.urgP2MOUI6iZtu87LknuNdyGg8atMnO', 'NNOkrNe9lWnyxvWWB992FlMEHrLKi4GAfccW1N1wk4L5bltXA03k7yzwsIAF', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-02 17:57:51', '2023-10-02 17:57:51', 0);
INSERT INTO `users` VALUES (23, 3, 'Nerfanda', 0, NULL, NULL, NULL, 'fernandalovedemi@gmail.com', NULL, '$2y$10$2dSNSWYr2l6bmZ7Jb/XTluBgGZ0LUegz8LOulKkKID4Md786AaFDS', 'IRSYqopwiyqQaRDGtHFA0MD2CtWzQXvstTRYcD7RZHjr05w1L62bcNtWrvhd', 1696302225, 'fa40bd37e71733d539a562e73a7e5686c4533ced5cde51219483f2572e42003b', 0, 0, 19, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-02 20:55:48', '2023-10-02 20:55:48', 0);
INSERT INTO `users` VALUES (24, 3, 'Rodrigo', 0, NULL, NULL, NULL, 'gomesdealmeidarodrigo@gmail.com', NULL, '$2y$10$qJaw2kK..Opa.DZos1rR2ugj1HAretHY0HQ0zcOo59vnDz42gxJYy', 'epiSfOf2PW6ZYP4bBb9vxYLByuuQpv3rCidNEcQ7VSrLX8ITwViSal9AVD7y', 1696467952, 'a17487bcb1b2e8f3e7afcc387142673f8262f8e98615cf55b285e43cb1be1dfa', 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-04 19:05:54', '2023-10-04 19:05:54', 0);
INSERT INTO `users` VALUES (27, 3, 'Afiliado', 0, NULL, NULL, NULL, 'afiliado@demo.com', NULL, '$2y$10$nMD0exjrshZ5h/K1Shv/XuW9e.pGA.iWE49NX.opd53QOVkifl5fS', NULL, NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-12 22:20:35', '2023-10-12 22:20:35', 0);
INSERT INTO `users` VALUES (28, 0, 'Fabio cred', 0, NULL, NULL, NULL, 'mel2014.fa@gmail.com', NULL, '$2y$10$I6bCURBl3wwIc4fsOCdtBuJZzduHwuxT23HO8s.hp6sR5IUoRuInm', 'UcDlKJJrhRkqcYejq2Gh2AqJ61gmrja77P0bzbiQS4wFro8yOwNPmCsCGCO0', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', NULL, '2023-10-21 10:29:17', 0);
INSERT INTO `users` VALUES (30, 3, 'Lili', 0, NULL, NULL, NULL, 'lilianesalatiel1310@gmail.com', NULL, '$2y$10$fvf.C5ug2hfpgYkhWzqe/uoxRPGQx4kU7czfhcpG.ztLZ7otmG5UG', 'Tk9QjK5ZGx4Fvj3ZGiHuLzbFAsZT55YElY9yLiCSkSkKk1zXXbnHvG6HVQCI', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-13 19:03:50', '2023-10-22 09:09:35', 0);
INSERT INTO `users` VALUES (31, 3, 'Cláudio Vitorino de aquino', 0, NULL, NULL, NULL, 'claudiovitorinocadeira@hotmail.com', NULL, '$2y$10$hoEuSaDql0WC3UR5RvggwehgR/m4i8rrA2kxw/E5yxI7gsVe8XGyq', 'JzmhkuJYtOdEvSeaZQ3P7qbNVOru2jLrmcUb05f7vlo3UPIp0mGfJIvBHc4s', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-14 15:11:32', '2023-10-14 15:11:32', 0);
INSERT INTO `users` VALUES (32, 3, 'Roberto França', 0, NULL, NULL, NULL, 'robertofranca96@gmail.com', NULL, '$2y$10$VKIm5SilNdFh1mBiNCxA8.fNnT8bqGaIVTX6BH0ZDyJMbcYVa83jK', 'SGA0pQrfQewOuEddgkbm88DGDisJb1GekMd7u2NjGcDEsQRSM7AIadyiA0ZN', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-14 16:50:00', '2023-10-14 16:50:00', 0);
INSERT INTO `users` VALUES (33, 3, 'Cícero França', 0, NULL, NULL, NULL, 'ciceroromaodefranca@gmail.com', NULL, '$2y$10$S5KH0d2m/K2LQmyKHbcJxez0uRlstVxwyhD0Ex/1lYwESpGHrpRZS', 'sTy8dfuBAstbRcPN3B0ZaJPnOFNGQIfoJC9zaFxykFIaLd77VOSFDnvl07Tw', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-15 03:55:57', '2023-10-15 03:55:57', 0);
INSERT INTO `users` VALUES (34, 3, 'Cristiano Souza', 0, NULL, NULL, NULL, 'cristianosouza@gmail.com', NULL, '$2y$10$UaHFlYNdGqYo4wAG.ml2iO6L4ww.ElDzh9CMyF6P.47X8BXvpvuPS', 'MRyMX1B5ReZhBbzjrAcWQoqJP9JMoFF3fZitOpgML1EQrCphrWHpSWQn8GRX', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-16 16:24:24', '2023-10-16 18:32:16', 0);
INSERT INTO `users` VALUES (35, 3, 'Fayk', 0, NULL, NULL, NULL, 'faykbrunadepaula@hotmail.com', NULL, '$2y$10$qLRiTKf.HutcXr0EKkftUufYxYBikPfaarDo8wJxzOyoJW9Y9PfzO', 'HauiDyE7Oqa4DP3DYFzSThzshZVC1g2Ay3eEFuPwIVyL63uaCp6g8hON0eEC', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 1, NULL, NULL, 'active', '2023-10-16 17:32:55', '2023-10-16 18:04:31', 0);
INSERT INTO `users` VALUES (36, 3, 'Beatrice', 0, NULL, NULL, NULL, 'beatricepaula6@gmail.com', NULL, '$2y$10$cOL3vy9e3CYAW6vj1ZFXF.4Hk8Yr5hWsbK8oB5VNTtbSdPhu8qavW', 't2tYRViMdqgtzLd8aztHcXsXoH8bCeYx1JEN1qdzvlLhhqqi2HCim8V8pjSB', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-17 15:50:12', '2023-10-22 20:32:24', 0);
INSERT INTO `users` VALUES (37, 3, 'Ian Augusto', 0, NULL, NULL, NULL, 'ianzin.zzz017@gmail.com', NULL, '$2y$10$IOEt3R78xjQR/ENpAE.sV.bExLLJeNMPQq.Ux1WRxM79luanMRz5y', 'echS6c28WMwe2xKC3xGbEpuKO4QN2eX9i3w3kpRl50PbMVckWG7zVb1F1tmu', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-17 19:34:44', '2023-10-17 19:34:44', 0);
INSERT INTO `users` VALUES (38, 3, 'Flavia', 0, NULL, NULL, NULL, 'flavinhasousa437@gmail.com', NULL, '$2y$10$lVdManPp.LO6FgoYLkVM1OTO6RzSeWy8uDkmRbLfj0ah7VDUcCqDK', 'Xnh06k5MzPJSJxjKRKRNC9Rrvfr1JOA3ZlBoN9g3VKy2bVn0hoIdsig3X2kF', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 08:05:55', '2023-10-19 08:05:55', 0);
INSERT INTO `users` VALUES (39, 3, 'Kaiquecosta14', 0, NULL, NULL, NULL, 'kaiquecosta1311@icloud.com', NULL, '$2y$10$Z9ZzXkt2y1ECBBsqTTxGSOUP6z.bg0HejYAYe83yeg4OWX7.Bugfq', 'mgvugekiTdNe8vXktQJ6x8FGOcOp6XsMStaOEt1O2wamj26l8N1MTBtw9JBN', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 08:52:01', '2023-10-19 08:52:01', 0);
INSERT INTO `users` VALUES (40, 3, 'Jonilson', 0, NULL, NULL, NULL, 'jonilsomdossantos20@gmail.com', NULL, '$2y$10$gCuzyLhG6Z6NyCsjMMStPelVryDLf8pkQiXqW9FbI7QWRM00KgBPi', '47mDAeGJZqYwtF3A7c52llgqxsXi3MYNdHKIcxDaDPaGLuhQEQz2NvbQm0bc', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 08:59:05', '2023-10-19 08:59:05', 0);
INSERT INTO `users` VALUES (41, 3, 'Silvana468', 0, NULL, NULL, NULL, 'silvanacamargo6605@gmail.com', NULL, '$2y$10$QtUwUCfHzKCcFAS/9J5A1u3LbyGVujR4UYpLch.IdfBWFyY64Seoe', 'ncPrH6Gg9EA6dk4ZKSV8nkaTfrHQgg4c0JXDANc8ZPzjwnwtVUB0g4sp6CxH', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 11:00:54', '2023-10-19 11:00:54', 0);
INSERT INTO `users` VALUES (42, 3, 'Leya', 0, NULL, NULL, NULL, 'nenej0361@gmail.com', NULL, '$2y$10$pOzLjglPnHgDQyfmlg4iHuYRXmnzBm0qwFLP27p17h0XreX8rjhmS', '51SUGzMZkjsRj8f6IgZADNnn5JP1E47Rho3hRenoLOtL1pk9N2PxwUw3pBVx', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 11:23:01', '2023-10-19 11:23:01', 0);
INSERT INTO `users` VALUES (43, 3, 'Daiane.moura', 0, NULL, NULL, NULL, 'daiane.anacarolina6@gmail.com', NULL, '$2y$10$TEF/iomS07Y7521.lRTuXeHDPpd7w1OM5JR4eq/nkFDzotvgTpR/m', 'QwOAzZkCGjrmzpAyRSqR18CeRMXqfL2WRyKRwJgjY4cclPCvrHiNdNG9NR7H', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 11:48:11', '2023-10-19 11:48:11', 0);
INSERT INTO `users` VALUES (44, 3, 'RAFAEL MARANHÃO', 0, NULL, NULL, NULL, 'rafael@engenhodagua.com', NULL, '$2y$10$nh06RHarbRhvH84gap7Jce1F2u24Z9MX0wRYAsLcGJnGAwnHOpZBW', 'rVAcnRBt3g1Dtu8ImS6s8vBAvdTphGg9G7nHXSrsRMGFdlfk0OzXC9tuau96', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 12:29:59', '2023-10-19 12:29:59', 0);
INSERT INTO `users` VALUES (45, 3, 'Marcelovitor83', 0, NULL, NULL, NULL, 'marcelovitor83@outlook.com', NULL, '$2y$10$KeOR/NWAJdqf5f4tsHpCFOJN/pgZB2KNuZSt4WW6SZ1kZAQ2CuoOu', '2NUF6jGWglRaCP934YVh7tqQyN0DcLrxxbwQVZc20ysQKgQieI6NBXmuMtAW', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 13:06:14', '2023-10-19 13:06:14', 0);
INSERT INTO `users` VALUES (46, 3, 'Edsr', 0, NULL, NULL, NULL, 'edermatos35@gmail.com', NULL, '$2y$10$X4WHs4g/7f05ltcILvJ.geBkYlfjF4fv9cAQEgfJ7b03liV3S49mq', 'ZdOcSgCZLweH03Gwpec4jdp75p0QlVSylI8qHUotlghF3EZuttqTQJhKiffg', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 13:09:52', '2023-10-19 13:09:52', 0);
INSERT INTO `users` VALUES (47, 3, 'Josemaebrito', 0, NULL, NULL, NULL, 'josemarcarneiro80@gmail.com', NULL, '$2y$10$GPej05.FhT2zB16WWjM7wuQDvjuJVa6TVmsqA1u9RODthxM8LJnyS', '3ZUN1Jebxxxd48tAu1sCB43jW2uWYfMvG6S8OcGqSjblYe3vfI93oZSsjcek', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 16:21:47', '2023-10-19 16:21:47', 0);
INSERT INTO `users` VALUES (48, 3, 'Valdelice Feitosa', 0, NULL, NULL, NULL, 'valfeitosa0815@gmail.com', NULL, '$2y$10$TTnYSRUD129/VM9rLE6y4.OjdC0LLV1jmpLnKY2RGgD6H1A2frcru', '7nfoX9bKvRoMF3FFiasayIcGXSiUS9mynJzbatkm4Q79XkVxrQQsRAVurssx', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 18:07:27', '2023-10-19 18:07:27', 0);
INSERT INTO `users` VALUES (49, 3, 'Vhcfgjncgjn', 0, NULL, NULL, NULL, 'rosanafeitosadelimafeitosa@gmail.com', NULL, '$2y$10$BIJMVVayVBLehq/tNlM5g.7VsixGqPYhSrsb14bl4VUJR5M1bVHxm', 'XumaSPdP0j5uI4E32De2aIkY3oJwEwyNDFYqpuFD98DROYtgcLhIORVaHBQX', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 18:55:21', '2023-10-19 18:55:21', 0);
INSERT INTO `users` VALUES (50, 3, 'Josuel13027681', 0, NULL, NULL, NULL, 'josueldasilvacordeirovagnerlov@gmail.com', NULL, '$2y$10$fMY3ndRsrfrSec5fYuhtfuPGubI7i9pGxbtR5TiFSeYw0zQAQHscC', 'LpkhQ6jKmgXwhrBokz8rZk3dc6Br6nkzo85tDwpTvRKDBzrLNmTgP2wGj2PK', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 19:11:39', '2023-10-19 19:11:39', 0);
INSERT INTO `users` VALUES (51, 3, 'Wesley', 0, NULL, NULL, NULL, 'wesleysilvabatista26@gmail.com', NULL, '$2y$10$.Uakojb5ZIphtbjKFCIk2eCkLZqNg90sA.uRk.Qr2AjwwW6qHgwSG', '0CFxlp80oGDnPnKmkvQC9z6q3xz5668aNYFsJwzSpkob5npiCmCutYQt8Jbt', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 19:24:53', '2023-10-19 19:24:53', 0);
INSERT INTO `users` VALUES (52, 3, 'CHARLES SILVA QUIXABEIRA', 0, NULL, NULL, NULL, 'chan-charles@hotmail.com', NULL, '$2y$10$U8rJHG3y4LnuGChwsHADU.tGLGrDRwWbhrUVSnZz1aQ8tqarUjJQK', 'rXX0q3GDZ7juLUdz3FbrYCCAEjoGxwsrUN7UjyqFni1mIHm23uWFs3UYtAzI', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 19:25:23', '2023-10-19 19:25:23', 0);
INSERT INTO `users` VALUES (53, 3, 'Lidiana', 0, NULL, NULL, NULL, 'lidianagp1@gmail.com', NULL, '$2y$10$JijfeZMtaPRDv0TbIxlde.XWTBxBqEgbOmyTrpe6cEyL/hxXF0TEy', 'XPSfybWNgKIreg3xfL1TCKAf2Ajy1oeSPgHRlaGQeNMo6Mq1uJPDFDMlaFIq', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 19:31:15', '2023-10-19 19:31:15', 0);
INSERT INTO `users` VALUES (54, 3, 'Sergiocred', 0, NULL, NULL, NULL, 'sergiocred20@gmail.com', NULL, '$2y$10$kAC8li7GeMcSfIJqHluW0eELrSi1ZeVbFIMDUrKF3lkwfmj8mzbua', 'xMFN35YaVmg7cLHQ09dYb5ET4zn0IpOfn5n7kTOTYWiOc8s40znKWRQ5VZET', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 20:07:52', '2023-10-19 20:07:52', 0);
INSERT INTO `users` VALUES (55, 3, 'Jonas', 0, NULL, NULL, NULL, 'wesleyjonas763@gmail.com', NULL, '$2y$10$OLJVLM0hFXEj/I.as6v91uai5RAQjfEFXQPzp4vRHZLeWleeyRpcC', '9EOjWhOtjJHdpqDQzb9QbYxCxbs2SbJXHPaIj9SQRzeTd6E915kwb8r4jiBg', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-19 23:19:04', '2023-10-19 23:19:04', 0);
INSERT INTO `users` VALUES (56, 3, 'Robson', 0, NULL, NULL, NULL, 'robiincell@hotmail.com', NULL, '$2y$10$G.w9JhdcYcfx6JFENzd.Ee2XWY5SnrTwoljhai9RvjDzI816Mm7bi', 'FTZUKdrMmQUVSX9ITBhQgVYxyhvjv3Y0xNHJH5whmlYTAZ86Fgvn1TQgx2rV', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-20 03:51:10', '2023-10-20 03:51:10', 0);
INSERT INTO `users` VALUES (57, 3, 'Eumarciana', 0, NULL, NULL, NULL, 'marcianaa297@gmail.com', NULL, '$2y$10$cEYV9VwoWirvtXvnxprYN.SgX/z1Wx/1IpVo2iVVmRhPIJn6Cicm6', 'baf7dbU7TrYcXGNfSwojRIyh1jC7c5GDNy4jVny9fvHVQ6rwKYgjh5p6rX6l', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-20 11:25:42', '2023-10-20 11:25:42', 0);
INSERT INTO `users` VALUES (58, 3, 'Ana Flávia', 0, NULL, NULL, NULL, 'anaflavia.va241@gmail.com', NULL, '$2y$10$cEblVlwfX7izBKJYjhNlBuMsUW7DZxvkdQfngJmSJBkE/a2NUophm', 'aSqIUIRiagWXCUItMgTbTRdNmIXRMCLm42nTk3Dasvgaz6M2pqeM1Eo1Pi6E', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-20 18:04:31', '2023-10-20 18:04:31', 0);
INSERT INTO `users` VALUES (59, 3, 'Jaci del canali', 0, NULL, NULL, NULL, 'producao@sulcatarinense.net', NULL, '$2y$10$SO8D4dULzm1ojU1tbtIXt.ZLLnnwK9Rkcls.i6zAjWx.J1fXHaaRa', 'hnMQIu9ot02CuTIHH98eCHgS6YRtCaTr0Q99MRVqlNQ7XObnSkHuysEF0xCK', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 10:11:33', '2023-10-21 10:11:33', 0);
INSERT INTO `users` VALUES (60, 3, 'Raquel Carvalho', 0, NULL, NULL, NULL, 'raqueljulia2008@hotmail.com', NULL, '$2y$10$kYiH6Js9eFlCB6RJUYMF.unktZduSSQPxo4l9PYnBa1BaC6Wol/Mm', '4PyfsPCLp8KRPk81z0IlaG4LfGT5hfg9AiwAgMDz4Dd2h3utPGhfCsgvVZ68', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 10:21:50', '2023-10-21 10:21:50', 0);
INSERT INTO `users` VALUES (61, 3, 'Daniel1704', 0, NULL, NULL, NULL, 'dduartecamargo1993@gmail.com', NULL, '$2y$10$4FidjMgarRsfMN/BbLFCIeNEfo5PYPJzBcpVD4.YwrfWRZxpmzHNu', 's7sfUWjNSW3lkvRXAZFAbShdW5Zu1hbI8PjH8QK7ibdB75twMJD51FM2ZmDy', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 10:28:51', '2023-10-21 10:28:51', 0);
INSERT INTO `users` VALUES (62, 3, 'Adriano 123', 0, NULL, NULL, NULL, 'depaulaferreira.a@gmail.com', NULL, '$2y$10$lRbdeSauag3H6Y/69XzfguIszs/LIstdh.ouRj4/1hOE6c8sMY9QW', 'zflb7w14nlJHp7IgkBf1k5uzZzW3XKdnqelQZuXLkmh69OwLR1KrFtS3pH2B', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 11:02:37', '2023-10-21 11:02:37', 0);
INSERT INTO `users` VALUES (63, 3, 'Mário lucio de Paula Filho', 0, NULL, NULL, NULL, 'mariomanuellasophia@gmail.com', NULL, '$2y$10$1OhredihUHK/1xw4Ca322.nKGgTHbJCwKAcgKM5.KBapkxPPzQwKi', 'cDTqyl3Ftqxcaig1X7mEf28UgI0nJQxJbicUTp1FGbaxTKXlb3DM7gvrZMSh', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 19:16:05', '2023-10-21 19:20:48', 0);
INSERT INTO `users` VALUES (64, 3, 'geosimarg', 0, NULL, NULL, NULL, 'geosimar@gmail.com', NULL, '$2y$10$EkL5cAMqnKVtqfRnbp49xuqTjmPZMUk6cuQopP/8nLETxmdVAhe9u', 'fDAGRm5MQZzpwUfplBQEUUcqgFJpoZmWA94tmyCmdxIIVwLmmWvFPO0cgBcM', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-21 22:51:57', '2023-11-16 19:24:47', 0);
INSERT INTO `users` VALUES (65, 3, 'roberto072014', 0, NULL, NULL, NULL, 'litamarmachado@hotmail.com', NULL, '$2y$10$5q4gwe8UhMXSXNy9WEgiqeL7oeu9u2LUS1j8EnCNfAEeUQupX91wu', 'fMk219YGkLDi4gXwz3XD8taJRPRADdtZEZqSVGRthVDjXc8rf805fb1YkaHn', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 05:09:40', '2023-10-22 05:09:40', 0);
INSERT INTO `users` VALUES (66, 3, 'Valdinho', 0, NULL, NULL, NULL, 'ferisvaldo254@gmail.com', NULL, '$2y$10$QAf.dKCku81ZSZOqc5NF2uEnBFZwNNHtk1PDcKzpJPMYirNK3jtpS', 'k3mIRlG26Yg7e82LEE9hIdabrjJmPgGqggSh8ypw4W1SJkwGbrs6X2uWaS1z', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 09:12:47', '2023-10-22 09:12:47', 0);
INSERT INTO `users` VALUES (67, 3, 'Felipe Bruno', 0, NULL, NULL, NULL, 'mastersync2016@gmail.com', NULL, '$2y$10$OaYv.YcL12FIMMA99C6SK.eIZUKWMBBBuI60Z5c3Dy7FQq4SE8GPW', '8Nzum9ZxI00ybMdTB9gqULcQ6zoRVUTTERk8LUBtMis4Zik0Zo6WQIHEVTX4', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 09:19:54', '2023-10-22 20:49:21', 0);
INSERT INTO `users` VALUES (68, 3, 'evilly', 0, NULL, NULL, NULL, 'evillyy70@gmail.com', NULL, '$2y$10$cSSdmhShB8hskIJaWGq3Jet6yThb1y5o8BkrSvkOAIEbKnT.K8ETC', 'RCA82AEUKwhOiLMmzPsn8x7xKQkwqSE52yrmMahjQVbkQZ9Ey5IdZanXYKiu', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 09:49:13', '2023-10-22 09:49:13', 0);
INSERT INTO `users` VALUES (69, 3, 'Gabriel', 0, NULL, NULL, NULL, 'hahaboe718@gmail.com', NULL, '$2y$10$MUzPv.w.nRE7ZoGu/dSWVOoDz5lpPasYJEBMCFU9gGC05xYwJlvWO', 'i9TQnYZdqFmcTALJnWk3P6BbQpmqhEXQW2lhqmKEWlbQS4crW6Nqypp3H7eZ', NULL, NULL, 0, 0, NULL, 40.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 09:55:58', '2023-10-22 09:55:58', 0);
INSERT INTO `users` VALUES (70, 3, 'Andress Eduardo duque pontes', 0, NULL, NULL, NULL, 'duquepontes2018@gmail.com', NULL, '$2y$10$ETaYh9DXobYkIVHrcj5.YO0QpOxxRN8Xdo00../a.R7syBoC1zbSu', '3AfKb35s3CmkS7ZtLI4Zmj4oFn94KdMdK1zij429hFxVD08va9E7NLiFA1u2', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 11:42:17', '2023-10-22 11:42:17', 0);
INSERT INTO `users` VALUES (71, 3, 'Daniel gomes', 0, NULL, NULL, NULL, 'Danegomessilva432@gmail.com', NULL, '$2y$10$l.jm4CyqB5Ms5TV0cF.PNusKTNjicYBJ46tqi0/Nt07bERHBfRWue', 'WD0mTKK8w5FQt7nDuVYMIoRpEn6QgAEwl4eTBQLGrIXnWpKH0VeIL5OcQG5x', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 11:48:43', '2023-10-22 11:48:43', 0);
INSERT INTO `users` VALUES (72, 3, 'Marcelo Martins', 0, NULL, NULL, NULL, 'jaquelinesillvaa6@gmail.com', NULL, '$2y$10$dPPxviYB0DG554gA76qEyuIrd22pPYfx0gx6YJ5W.58EqNr9V.AWe', 'M07xnZWnRHSga2cglxDwiYCbo3gYrs59dqMav9breYnnjykBf5bK8SY5U4bd', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 11:49:26', '2023-10-22 11:49:26', 0);
INSERT INTO `users` VALUES (73, 3, 'Christian Jacson Santos Da Silva', 0, NULL, NULL, NULL, 'christianjs.cj@gmail.com', NULL, '$2y$10$62I3N3M/Af98oUG8mDZaPORvH1T9s1YjJ/gLfY4WdIGDgEql9kd5C', 'RBr3fB4op2JYAZXW1fVoQpMIldvsNx9PDh6kvZSIjrNKYOsT18SQBu5QHo2H', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:04:14', '2023-10-22 12:04:14', 0);
INSERT INTO `users` VALUES (74, 3, 'Fillipe Laurindo da silva', 0, NULL, NULL, NULL, 'fillipevaqueiro10@gmail.com', NULL, '$2y$10$LJ69UeQyzvpf9S866wsFEuh32ZKXhu1X9pNgc1sL//l7Wpq7bEU8i', 'nl5cyxM3cjTSgj9z10a025hAgItGEaXWbfvtXooP9jJTndRdFmFhjMVoPMix', NULL, NULL, 0, 0, 70, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:12:32', '2023-10-22 12:12:32', 0);
INSERT INTO `users` VALUES (75, 3, 'Antônia Auricleia Pereira Lima', 0, NULL, NULL, NULL, 'cleinhalima64@gmail.com', NULL, '$2y$10$WFlyta1YVEKzVjGOaqhRJe2xCqgpC6oF/Hqp4TpOEq8mbJFU0TyzG', 'MzGF1KG7moMa71RDGtz5nhri0eBS9R9F7zEumZwdSJdeb4qNjFUnLyOFaOnD', NULL, NULL, 0, 0, 28, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:14:22', '2023-10-22 12:14:22', 0);
INSERT INTO `users` VALUES (76, 3, 'Higor', 0, NULL, NULL, NULL, 'bezerrahigor05@gmail.com', NULL, '$2y$10$ogS/PNDboJ47ox/Q/MYrpuAbA/TTUsv4NedKQXK6zC8dwN0isavzO', 'Y3G9IWbuRPdrvCG2EgC2PqFiGaunyWzpV9gSPdDg44zdwBZGEHsmhvbmUHMU', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:15:21', '2023-10-22 12:15:21', 0);
INSERT INTO `users` VALUES (77, 3, 'Dasdores34', 0, NULL, NULL, NULL, 'dasdoreandrade255@gmail.com', NULL, '$2y$10$NlwkPf8WYsH0qicCYTqN1OjNA5aPGQBuO2JNREOVIY.eFXISjNj6C', 'zE8QWSpfKUv76GCxsN8eC5CaPVZm6Ifrr7DZtlhVXZkvtMJNHZbPWeUU16iy', NULL, NULL, 0, 0, 28, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:27:31', '2023-10-22 12:27:31', 0);
INSERT INTO `users` VALUES (78, 3, 'Manoel Nogueira da Silva', 0, NULL, NULL, NULL, 'manoelnogueira539@gmail.com', NULL, '$2y$10$/JH.a/em2Nkuu7Sw0epmteW.1bCykqrc7/PhRQCfpSZ4qiv4J0uAG', 'SaxXXMHyif36qRMlSa2XwdanqqsHqvvS3IkUs3Al403RnjLlurjPGPFbTqte', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 12:31:25', '2023-10-22 12:31:25', 0);
INSERT INTO `users` VALUES (79, 3, 'Dalila Rosa De Souza', 0, NULL, NULL, NULL, 'alvesdalila559@gmail.com', NULL, '$2y$10$LyPu0M.uRp5sAjElkY/Yru/zdUTdQX5cT36rxavogXMLMCWKYLb6y', 'atdMtNwO9GrpDnB8T1s0uQiAxawURUvffr4kiaIXrDy2NT2P8iTOewjnPQcD', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 14:19:33', '2023-10-22 14:19:33', 0);
INSERT INTO `users` VALUES (80, 3, 'Adna', 0, NULL, NULL, NULL, 'Adnamercia15@gmail.com', NULL, '$2y$10$bNiQ..r/md68XT/YpYPlg.wdwHQR4S2sfMvxNNl8O1TU/SduxgveW', 'jd3eyM9uowfn6QcR8ED9tXhNKHkRpnDmgfz2Nclgzjn6y38s0b5GYRhd0UJO', NULL, NULL, 0, 0, 70, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 15:11:48', '2023-10-22 15:11:48', 0);
INSERT INTO `users` VALUES (81, 3, 'José Carlos de souza Ferraz', 0, NULL, NULL, NULL, 'desouzaferrazjosecarlos172@gimai', NULL, '$2y$10$vHvoVXi6XrdX1xby0NvJmOA94Tvi2cKBErYRFswVCWwpEuFgd1CL.', 'IVWXN2XlwJqnVfVzruyaucKp2hDXrKr9QlVFwWW3L5yP7n1fgdcuU0rWvY1j', NULL, NULL, 0, 0, 70, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 15:18:01', '2023-10-22 15:18:01', 0);
INSERT INTO `users` VALUES (82, 3, 'WINDSON MELKBALGASPAR SILVA TERTO', 0, NULL, NULL, NULL, 'windsonmelck45@gmail.com', NULL, '$2y$10$mcLJWXy/e0igatba3DTwdOh/1U30F6.Q81.H7OLX5qtGr3Gw6oQP2', 'I1ZaHfIg7jNkdTQ62yo2b7ZimXpIxMnIjgBQPG6DEaeIlpMvh2PCjlKVyJ6W', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 16:19:54', '2023-10-22 16:19:54', 0);
INSERT INTO `users` VALUES (83, 3, 'Tk', 0, NULL, NULL, NULL, 'sousatatia88@gmail.com', NULL, '$2y$10$mErB./nYMwSRd5btSCefvONavdUCjitjo16Xkfosf1EzrnDWM2M0i', 'wycdlss2eHYk9MNJ6yk37msFvpQ79pdBD0pXGBFJ59z1SvjIa2c8VbCiuOqC', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 17:47:01', '2023-10-22 17:47:01', 0);
INSERT INTO `users` VALUES (84, 3, 'Lucaw12', 0, NULL, NULL, NULL, 'santolucas891@gmail.com', NULL, '$2y$10$SdNl/ux5YCUPxBV6W.A.LuTRPjJY2uqZqhP0y/0c0iQI.ojAKjQ56', 'WWitpwjK9jqreCtsYIXsLpffZ9hS9REFYomLP5q1V5peQ2axarL1U5Do1OOY', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 20:47:34', '2023-10-22 20:47:34', 0);
INSERT INTO `users` VALUES (85, 3, 'CLEVSON CARVALHO SANTOS', 0, NULL, NULL, NULL, 'santosclev00@gmail.com', NULL, '$2y$10$3M9gpMUBzuUudRDy0GoaSu5N/DwicrbYp/AGOzoXi7pg7RvyhmdpW', 'I7TCRsaILIcJ4ycVW5CYLVylDOucldFzZP19teaLoqZ8M8ntLrVr84cha0ec', NULL, NULL, 0, 0, NULL, 0.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-22 20:54:44', '2023-10-23 13:28:54', 0);
INSERT INTO `users` VALUES (86, 3, 'Maykol', 0, NULL, NULL, NULL, 'maykolhenrique470@gmail.com', NULL, '$2y$10$uwLgSMAevPNfF1z0SQAo/OS4pe9PHtMjV9UWg6irMxhH/5dQ6xAe.', 'Hq4bcYNu44vaxhcAyIpIkwpUcaQg7SX1pyI2V64qzKyxTkkvHBu9wGjjXuQK', NULL, NULL, 0, 0, 63, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 04:29:59', '2023-10-23 04:29:59', 0);
INSERT INTO `users` VALUES (87, 3, 'Henrique', 0, NULL, NULL, NULL, 'henriqueferraz1995@gmail.com', NULL, '$2y$10$trk4Xp6ya1SizN6LsEJCt./gO9C9Egg/VM5JVHRneUEhyNh.wRL0.', 'U0HJUznat85EjB59rnhrIQvtVfrr4izy3Hc3ehdRVUeEBOXAQTJ4pI4azltE', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 05:26:55', '2023-10-23 05:26:55', 0);
INSERT INTO `users` VALUES (88, 3, 'Fabrício alceno Alves', 0, NULL, NULL, NULL, 'fabricioalvessalitre@gmail.com', NULL, '$2y$10$W78QSAFAbLsm9NPNoKTdsOHPv9xrv7s/uBDuQvyxEzcEPHL/JraxW', 'tbMlgQupjivkJZHOIJ0tva8gLXGTuEkrQd97aWPlXnOIRvMIhrWbzuMbP0Ap', NULL, NULL, 0, 0, 28, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 15:34:53', '2023-10-24 20:24:08', 0);
INSERT INTO `users` VALUES (89, 3, 'Santorel', 0, NULL, NULL, NULL, 'carlossantorelli12@gmail.com', NULL, '$2y$10$lBO5alTDA2MiQLzyY3iuQ.M8L7rXKgyLXyqPopyE/xTb5ewtKMfXC', '9E6HnO2CR387Wd9RXluP84NGv4f1WLn8lfL8PpXPyBtZ8ea0YNq9TBh9defb', NULL, NULL, 0, 0, NULL, 20.00, 40.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 16:35:19', '2023-10-24 21:28:27', 0);
INSERT INTO `users` VALUES (90, 3, 'Helbert Willians da Silva', 0, NULL, NULL, NULL, 'helbertwillians82@gmail.com', NULL, '$2y$10$T8P7Z5veNe9q4opeEGHpneQcRJhm5TpiufQL4paZNQ5r.qMQAyXqG', 'FQi78oQHcgvsij98gVo2BmPiuAGqMBixB4IKBkNVCxHer01CnPnhhIjF4Hes', NULL, NULL, 0, 0, 28, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 16:59:24', '2023-10-23 16:59:24', 0);
INSERT INTO `users` VALUES (91, 3, 'Antônio Cardoso Oliveira Júnior', 0, NULL, NULL, NULL, 'Antoniocardoso891949@gmail.com', NULL, '$2y$10$fHXEvOLAj19.CJ4R9vaiDOshEs.xS9RafihA9KQ7rHdxLoUXJS2tC', 'xhSd32tNQrm4CKo4i3IzSRk3Vy7BfWkfE7UeNhihdyq3PMopkiuPd0WTJVji', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 17:59:36', '2023-10-23 17:59:36', 0);
INSERT INTO `users` VALUES (92, 3, 'Simone de souza', 0, NULL, NULL, NULL, 'simonesouzacl78@gmail.com', NULL, '$2y$10$s9emv7R50r5VmV9PKP1clOqOlDTzdDhMg6cSPuTQzrQ6er3XICSE2', 'WOoTswrWYqZ12iOhExZQ2O7TWwyBpZee19cTZwSRnlEWJKN42zvW4O1PlG5i', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 18:49:38', '2023-10-23 18:49:38', 0);
INSERT INTO `users` VALUES (93, 3, 'Vilmar Feitosa costa', 0, NULL, NULL, NULL, 'vilmarfeitosa.parambu72@gmail.com', NULL, '$2y$10$5q3hUr5iVPp7DGWo.sKrquN2R.RHVhNtVi6PW5jjqoUh9PQa.EWFS', 'TVJe1vs5PAWI0OQd3fFGKt0aT9NnLl1XFO1zmBGWbhFtVm94uxNPgYm8neJA', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 18:50:10', '2023-10-23 18:50:10', 0);
INSERT INTO `users` VALUES (95, 3, 'Victor Salatiel', 0, NULL, NULL, NULL, 'victormsalatiel@hotmail.com', NULL, '$2y$10$rfOGOuFn183Ttfs1mRns3uM9QdcPemUx0nx9Nk38NltKgXCcMRU8y', NULL, NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-23 20:00:41', '2023-10-23 20:00:41', 0);
INSERT INTO `users` VALUES (96, 3, 'QUEZIA MARIA DA SILVA', 0, NULL, NULL, NULL, 'queziamariasilva632@gmail.com', NULL, '$2y$10$uFxjTR79AUs8oZA75ceJTuBf8kmSNwM3weESzbtOvzerRdvNb3HYS', '2A3A032izxdtZFnpOvpHGkKlIXcc44RYwiv0ZWyJ8Y0KnsZWsJm1DpnODcNY', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 08:56:19', '2023-10-24 08:56:19', 0);
INSERT INTO `users` VALUES (97, 3, 'fernando gmer de lima', 0, NULL, NULL, NULL, 'fernandoamorimdelima2@gmail.com', NULL, '$2y$10$ECyMD6WWlGYjn.mbszepmOP1z0s6FfuV9J04gCgg07r9NP/Rzp6Hy', 'UVJRsy9OvF98sDz0qr7FW00jlKeAk6HN0mvqxzUxIh44p8lPSK4kokgKtPzb', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 09:08:11', '2023-10-24 09:08:11', 0);
INSERT INTO `users` VALUES (98, 3, 'humberto', 0, NULL, NULL, NULL, 'humberto@hotmail.com', NULL, '$2y$10$R2qJ.d8KKZPMDNE6VsjPkucOdXmiMEhs7JPz0KPg3NshVJHnFCmBe', 'LJXDGk8kZ9JgCB0dyDs6HsK2So9nbiJzmCKyXN42oopgMGUxXJAs3qnU8a0g', NULL, NULL, 0, 0, NULL, 20.00, 20.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 09:14:12', '2023-11-22 11:17:33', 0);
INSERT INTO `users` VALUES (99, 3, 'Maria ludmila Ferreira', 0, NULL, NULL, NULL, 'marialudmilaferreira6@gmail.com', NULL, '$2y$10$sd2Ma6.hsO6dl0FUEV6treehwXgd2B0Bd7A6n5Z8NUOHV1U8ZMOOG', NULL, NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 09:15:02', '2023-10-24 09:15:02', 0);
INSERT INTO `users` VALUES (100, 3, 'Mattheste', 0, NULL, NULL, NULL, 'Matheusdemetrioesteves1999@gmail.com', NULL, '$2y$10$ktCX4XS1J8/BbM1L7pDw6.aUM8SCVLC70bQ/6oqTq36sfkz7tbap2', 'LzXtROV3KfaVJBCrJkJx5lN91OtyV5LmRQUy5Ay8d9yubCyPryAySiFl6OQK', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 11:58:24', '2023-10-24 11:58:24', 0);
INSERT INTO `users` VALUES (101, 3, 'Lucas Dias', 0, NULL, NULL, NULL, 'lucasalves.al152@gmail.com', NULL, '$2y$10$U1V3P1dz0PYNlSkv.ANzFernLQkU3cqmoApBjtVzd2KdgpuXDa5pe', 'whFonmcTBOl6IMBMPWJcNC4KnioUAwHtGWRFJ7f7mVD8c83ub8WSZ41AnfMG', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 15:30:27', '2023-10-24 15:30:27', 0);
INSERT INTO `users` VALUES (102, 3, 'Eliane Maria de Souza', 0, NULL, NULL, NULL, 'helianemary35@gmail.com', NULL, '$2y$10$OmgVDcCZdxLG5.69w.3JQ.zwDQOjmMmlZRkNTtAougZPbSoan1o2K', '028gxH979rcuBgeilVpCE7Zc3SWGO5lJuvMli0eoPgfvwPiq0960TFgxflsU', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 17:18:01', '2023-10-24 17:18:01', 0);
INSERT INTO `users` VALUES (103, 3, 'Maria Rosineide de lima Silva', 0, NULL, NULL, NULL, 'Irosineide07@gmail.com', NULL, '$2y$10$jIFfU2/PMWv17BqrHNchF.RdjYQpOMxAAT8/.FyVA28y6cKLjIQW2', 'LLJRDW6mWlarxbjE9ZqnJdnxK6T196EfOByFL9SOiP60wToMq6slyTpsMZxY', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 17:20:42', '2023-10-24 17:20:42', 0);
INSERT INTO `users` VALUES (104, 3, 'Paloma leite', 0, NULL, NULL, NULL, 'palomaleitte9@gmail.com', NULL, '$2y$10$9IjeIV9PCz55Qc7aIliywuOsZQPTboTks3nrv4rMsvraLFLjWYBES', '7t7MstqJDppdDIX26iH7beV38eZE3mHYY9wscee42XK7oVmVu0AEAAZYymLF', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 17:43:44', '2023-10-24 17:43:44', 0);
INSERT INTO `users` VALUES (105, 3, 'Poliana', 0, NULL, NULL, NULL, 'polianasilva4323@gmail.com', NULL, '$2y$10$Sa8mYm3cotHn8pHjBFHi4.kti.72vOv.VKbap9pUGphcL7QeGZrjG', 'eVD1U2YfVdFAcyRtv0zprD7EpOtreY3USG4Txs2vf6yuF0g50XSqoVgrHmDs', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 17:55:23', '2023-10-24 17:55:23', 0);
INSERT INTO `users` VALUES (106, 3, 'Jaquelinexavierdossantos', 0, NULL, NULL, NULL, 'mariasocorroxavier124@gmeil.com', NULL, '$2y$10$rwztHR0QWEbcbJ6VmZqauepGALnBWAroXoTx.xAGmt2vHje3ejW7y', 'ohIj0YBgIb4TzNHZHBQRGLPXA9HCRz8KBlnF1m3xAVJVIXLulFjVIKCJHl3l', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-24 18:06:04', '2023-10-24 18:06:04', 0);
INSERT INTO `users` VALUES (107, 3, 'francinaldo235', 0, NULL, NULL, NULL, 'sfrancinaldo978@gmail.com', NULL, '$2y$10$EB0YJKuKUcdQ3T7pG8ThSehvjhzo5WEdb3bJxnyoJ1apI8G4x6/lW', 'EGPB4dFmJ1cJtsSVsfXo9aBj8hhkPVQ5xW77ZZnr1t3AHcRLUkVHhtCGhv9T', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 00:28:32', '2023-10-25 00:29:24', 0);
INSERT INTO `users` VALUES (108, 3, 'Joseigor23', 0, NULL, NULL, NULL, 'sjoseigor483@gmail.com', NULL, '$2y$10$gwdAyptMCKGSY5DlreuMg.IgZyg99Sl.sLGYyZSNPj0Vr8pCBpCLC', 'zZRWq0MNIrurrcw1jvjW5PqWxwJojDpEDnJsfpPLBjKum8AOUTUkIUHmFZyw', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 02:53:24', '2023-10-25 02:53:24', 0);
INSERT INTO `users` VALUES (109, 3, 'beicin33', 0, NULL, NULL, NULL, 'brittobruno256@gmail.com', NULL, '$2y$10$Nl.lxuaHX8QZdXCvRg2UKeiuzO5ESGgBlzJyLIXiFaAJXq6d6Aemy', '9cx64QLNTIjLyF9Mf9wZVwMs1MFb4p3NlmerhrEZrk4QrWjvxMoZi9IXNp5E', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 09:54:47', '2023-10-25 09:54:47', 0);
INSERT INTO `users` VALUES (110, 3, 'Martins', 0, NULL, NULL, NULL, 'sfcmilvolts@gmail.com', NULL, '$2y$10$yOnn0v7dZoDNLwxdA24plOZbMV1rLKJlv4c6HkAQ6zls9ladingIO', 'ViTrwauDQkwNkUYTadvXymZkyBf4X9uchDSqebiNGXT9l8UKmzHx0tHqG8Ws', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 10:08:05', '2023-10-25 10:08:05', 0);
INSERT INTO `users` VALUES (111, 3, 'Jose0397', 0, NULL, NULL, NULL, 'joseclaudionorduke10@gmail.com', NULL, '$2y$10$wfYTokcqf6f3oyS0pWk8MeeiYaL8SiNB4JJ7ZfXzAnTWE/3ybqp8O', 'gBJizy3tiXgHBjFZuubNnO7dPEt0tXY8TY87XTiPxFRJi7ua2QSEE05Y2kpj', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 10:38:23', '2023-10-25 10:38:23', 0);
INSERT INTO `users` VALUES (112, 3, 'Yasmin Oliveira', 0, NULL, NULL, NULL, 'yasmin_tecseg@hotmail.com', NULL, '$2y$10$qQs99J0p4c/8qBxBR9YMOOYw03w0TGcvlaZQPA5tSsn7ne/8/rV1a', 'slZprQXNGUccfNW4ZDACiHxXb9RtrVxu8Qrg7PPvxm9Fq16e80ulFsJ6JWMk', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 15:59:43', '2023-10-25 15:59:43', 0);
INSERT INTO `users` VALUES (113, 3, 'José Caio De Oliveira', 0, NULL, NULL, NULL, 'co8479075@gmail.com', NULL, '$2y$10$Bbs4rT4eeSYptZB5XV4ZXubiQcS6KtrB.YTDAPamdA8jbfGk.Rk9e', 'qTVqLpBGO53c0QbHkxEWTxDi9vfel0trs7Yg9DCvRIGhHzUHH0ZgpzZnO9ix', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-25 16:14:58', '2023-10-25 16:14:58', 0);
INSERT INTO `users` VALUES (114, 3, 'Romario Sousa da mata', 0, NULL, NULL, NULL, 'romariosousadamatafabricia@gmail.com', NULL, '$2y$10$Hxbm3ProRn5dE71ittSVbefGkrQZm0fZ/DwYirL0GwqESqtuUSGjy', 'QklpSCNrXLUSAz7zZ8fIJ2uW2Odivcl4kXYk7dC17D9ODU18qaVZSfL08XDH', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-26 10:19:55', '2023-10-26 10:19:55', 0);
INSERT INTO `users` VALUES (115, 3, 'Dione', 0, NULL, NULL, NULL, 'dionenegadi3510@gmail.com', NULL, '$2y$10$KkibBF.dhaB5ftvkM0VUpuIfpxe/wRMDuS.vM3Ja.hZCjmxwNhjA6', 'lrBwYXtpb8VSSMcfwH9MWx0F6WkREGPeCu2Ca2OxVQOkBZABFkyFNDCBDJM6', NULL, NULL, 0, 0, 98, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-26 15:01:22', '2023-10-26 15:01:22', 0);
INSERT INTO `users` VALUES (116, 3, 'Bancaastro', 0, NULL, NULL, NULL, 'martinsjhavan@gmail.com', NULL, '$2y$10$OSSdvGWljLZ0QfMZXRDdFeBBXoI6Gw4DdV2YS4.t/nHS4qvtyxUXi', 'AbRqKlZ97mUFiIkSAW4TWyAooZeKj8yzSzZzZ7mBLEOgcjgxXMT1TKCf1R2W', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-26 15:48:19', '2023-10-26 15:48:19', 0);
INSERT INTO `users` VALUES (117, 3, 'Ana Maria', 0, NULL, NULL, NULL, 'anamary.gata2008@hotmail.com', NULL, '$2y$10$DV7glg/GX1OrZ/qCvaRHvOlZi7PLB9TXnRgDrCBKX01cYiJINHZdS', '9diA1FoqexBOgkLyI96vf47F2SExikLC6lAm7UL4rOvlGf5cCoCGcDstXTQ8', NULL, NULL, 0, 0, 98, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-26 16:05:13', '2023-10-26 16:05:13', 0);
INSERT INTO `users` VALUES (118, 3, 'Pedro Victor', 0, NULL, NULL, NULL, 'pedrovictorcavalcanti2@gmail.com', NULL, '$2y$10$Ta36y56Z0ii65h2fxHJtVeynfsb28Ji/7U/bGPXeKEMrk72Qq41A2', 'pCD2EQjEhF1dazAJcmP36xU2Ya9i3jRfLYFahEl28Gwnr2n01O1nyqDYpwZp', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-26 17:59:33', '2023-10-26 17:59:33', 0);
INSERT INTO `users` VALUES (119, 3, 'Aline', 0, NULL, NULL, NULL, 'aline.costasouza11@gmail.com', NULL, '$2y$10$usQ9LJHKoCzsRf6xWYSp/eNl.lW330GAvSDjUGrxEoPajWiQamAhu', 'WfzndEsGZGidaRVMlZFL8OXjWnKNb7JXfBpTRKgv6eghgBYOoH03JeYamQus', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-27 05:00:02', '2023-10-27 05:00:02', 0);
INSERT INTO `users` VALUES (120, 3, 'Yvynah', 0, NULL, NULL, NULL, 'yvynahameilda@gmail.com', NULL, '$2y$10$XoVQyGXOdB8J8aDzZuuM9eIciUkf0diaMg15V/capcIN3HHs9Zo.u', 'y7qCHpZwSYyrOApnRm6nWz26zIIQUSQ6URLjXtLtApCWu79fRA9cmNjE4xgG', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-27 10:56:22', '2023-10-27 10:56:22', 0);
INSERT INTO `users` VALUES (121, 3, 'Yvynah Thayuana', 0, NULL, NULL, NULL, 'yvynahalmeida@gmail.com', NULL, '$2y$10$zGXZyqNkD1gs9DhjaIqVq.M.RiBlZxpZNMIARnMSHhLjLiLJ8DK.m', 'IGrRhPUTm5bg12qpIo58tC0uFDVgxmwGMWSVANG7CIBs1ktWcZguNCQDspq1', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-27 11:02:58', '2023-11-22 12:24:06', 0);
INSERT INTO `users` VALUES (122, 3, 'Alessandro braz da Silva', 0, NULL, NULL, NULL, 'braz050406@gmail.com', NULL, '$2y$10$f8lKWGw9HUzNOk.C531LT.EZDR4H2MLU1LpwTy8FFZUiuMQcM/RVu', '8MV5YvDeMplwMuVH89s1T0P6LIyOGx5Sj0lpdd9cfg49MuquUQdiVlHiV4Af', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-10-27 13:50:17', '2023-11-22 12:23:06', 0);
INSERT INTO `users` VALUES (125, 3, 'Marcos', 0, NULL, NULL, NULL, 'marcos.back2021@gmail.com', NULL, '$2y$10$MRPm8KyKbj2RlpAYpibizeUYoZ4yKxxHMxpSoQGklbmuHfTBov.zG', 'INQB7FEkm671dUsx60bNh37kF3nN7XVGGCPl3rwVaVHfApqD783vBiiUG1I7', NULL, NULL, 0, 0, NULL, 0.00, 100.00, 0.00, 0, NULL, NULL, 'active', '2023-10-27 16:52:51', '2023-11-22 12:22:07', 0);
INSERT INTO `users` VALUES (129, 3, 'Ramy Soeg', 0, NULL, NULL, NULL, 'ramysoeg@gmail.com', NULL, '$2y$10$e95T6zbYrLpfIWKs.SP/6OnEtrz76jSH8sPGaPNuXmCsqF77X3nti', NULL, NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-11-23 02:55:00', '2023-11-23 02:56:40', 1);
INSERT INTO `users` VALUES (130, 3, 'Teste', 0, NULL, NULL, '(12) 34561-2345', 'nubmoises321@gmail.com', NULL, '$2y$10$qsYOcxpIkswbw8BpyW..G.AmHxCS.g/VwsOS5jWHi6yu2iZhNY/zi', 'CBgHW8MNAa1Yec2y31Drmip2BMw8Lj0irGktyLnEEVl159FS6qoSVgjXmM5W', NULL, NULL, 0, 0, NULL, 0.00, 0.00, 0.00, 0, NULL, NULL, 'active', '2023-11-23 03:09:29', '2023-11-23 11:32:20', 1);

-- ----------------------------
-- Table structure for wallet_changes
-- ----------------------------
DROP TABLE IF EXISTS `wallet_changes`;
CREATE TABLE `wallet_changes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `change` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value_bonus` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `value_total` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `value_roi` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `value_entry` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2616 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wallet_changes
-- ----------------------------
INSERT INTO `wallet_changes` VALUES (1, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-27 21:14:35', '2023-09-27 21:14:35');
INSERT INTO `wallet_changes` VALUES (2, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-27 21:14:51', '2023-09-27 21:14:51');
INSERT INTO `wallet_changes` VALUES (3, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-27 21:14:57', '2023-09-27 21:14:57');
INSERT INTO `wallet_changes` VALUES (4, 'Fortune Tiger win', '250.00', 0.00, 250.00, 250.00, 0.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:34', '2023-09-29 20:10:34');
INSERT INTO `wallet_changes` VALUES (5, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:36', '2023-09-29 20:10:36');
INSERT INTO `wallet_changes` VALUES (6, 'Fortune Tiger play', '-337.5', 0.00, 337.50, 0.00, 337.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:39', '2023-09-29 20:10:39');
INSERT INTO `wallet_changes` VALUES (7, 'Fortune Tiger play', '-262.5', 0.00, 262.50, 0.00, 262.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:42', '2023-09-29 20:10:42');
INSERT INTO `wallet_changes` VALUES (8, 'Fortune Tiger play', '-237.5', 0.00, 237.50, 0.00, 237.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:44', '2023-09-29 20:10:44');
INSERT INTO `wallet_changes` VALUES (9, 'Fortune Tiger win', '212.63', 0.00, 212.63, -24.87, 237.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:44', '2023-09-29 20:10:44');
INSERT INTO `wallet_changes` VALUES (10, 'Fortune Tiger win', '0.00', 0.00, 0.00, -237.50, 237.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:45', '2023-09-29 20:10:45');
INSERT INTO `wallet_changes` VALUES (11, 'Fortune Tiger win', '232.77', 0.00, 232.77, -4.73, 237.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:46', '2023-09-29 20:10:46');
INSERT INTO `wallet_changes` VALUES (12, 'Fortune Tiger win', '408.21', 0.00, 408.21, 170.71, 237.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:47', '2023-09-29 20:10:47');
INSERT INTO `wallet_changes` VALUES (13, 'Fortune Tiger play', '-1866.11', 0.00, 1866.11, 0.00, 1866.11, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:52', '2023-09-29 20:10:52');
INSERT INTO `wallet_changes` VALUES (14, 'Fortune Tiger win', '35.00', 0.00, 35.00, -1831.11, 1866.11, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:53', '2023-09-29 20:10:53');
INSERT INTO `wallet_changes` VALUES (15, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:54', '2023-09-29 20:10:54');
INSERT INTO `wallet_changes` VALUES (16, 'Fortune Tiger win', '1866.11', 0.00, 1866.11, 1831.12, 34.99, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:55', '2023-09-29 20:10:55');
INSERT INTO `wallet_changes` VALUES (17, 'Fortune Tiger play', '-466.53', 0.00, 466.53, 0.00, 466.53, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:55', '2023-09-29 20:10:55');
INSERT INTO `wallet_changes` VALUES (18, 'Fortune Tiger play', '-69.98', 0.00, 69.98, 0.00, 69.98, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:56', '2023-09-29 20:10:56');
INSERT INTO `wallet_changes` VALUES (19, 'Fortune Tiger win', '307.91', 0.00, 307.91, 237.93, 69.98, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:57', '2023-09-29 20:10:57');
INSERT INTO `wallet_changes` VALUES (20, 'Fortune Tiger play', '-153.95', 0.00, 153.95, 0.00, 153.95, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:59', '2023-09-29 20:10:59');
INSERT INTO `wallet_changes` VALUES (21, 'Fortune Tiger win', '87.19', 0.00, 87.19, -66.76, 153.95, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:10:59', '2023-09-29 20:10:59');
INSERT INTO `wallet_changes` VALUES (22, 'Fortune Tiger play', '-133.28', 0.00, 133.28, 0.00, 133.28, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:00', '2023-09-29 20:11:00');
INSERT INTO `wallet_changes` VALUES (23, 'Fortune Tiger play', '-251.91', 0.00, 251.91, 0.00, 251.91, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:01', '2023-09-29 20:11:01');
INSERT INTO `wallet_changes` VALUES (24, 'Fortune Tiger win', '28.43', 0.00, 28.43, -223.48, 251.91, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:01', '2023-09-29 20:11:01');
INSERT INTO `wallet_changes` VALUES (25, 'Fortune Tiger play', '-78.09', 0.00, 78.09, 0.00, 78.09, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:02', '2023-09-29 20:11:02');
INSERT INTO `wallet_changes` VALUES (26, 'Fortune Tiger win', '161.64', 0.00, 161.64, 83.55, 78.09, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:03', '2023-09-29 20:11:03');
INSERT INTO `wallet_changes` VALUES (27, 'Fortune Tiger win', '222.52', 0.00, 222.52, 144.43, 78.09, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:03', '2023-09-29 20:11:03');
INSERT INTO `wallet_changes` VALUES (28, 'Fortune Tiger play', '-76.93', 0.00, 76.93, 0.00, 76.93, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:04', '2023-09-29 20:11:04');
INSERT INTO `wallet_changes` VALUES (29, 'Fortune Tiger play', '-192.83', 0.00, 192.83, 0.00, 192.83, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:05', '2023-09-29 20:11:05');
INSERT INTO `wallet_changes` VALUES (30, 'Fortune Tiger win', '101.24', 0.00, 101.24, -91.59, 192.83, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:06', '2023-09-29 20:11:06');
INSERT INTO `wallet_changes` VALUES (31, 'Fortune Tiger win', '311.81', 0.00, 311.81, 118.98, 192.83, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:11:06', '2023-09-29 20:11:06');
INSERT INTO `wallet_changes` VALUES (32, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:22', '2023-09-29 20:12:22');
INSERT INTO `wallet_changes` VALUES (33, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:23', '2023-09-29 20:12:23');
INSERT INTO `wallet_changes` VALUES (34, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:27', '2023-09-29 20:12:27');
INSERT INTO `wallet_changes` VALUES (35, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:28', '2023-09-29 20:12:28');
INSERT INTO `wallet_changes` VALUES (36, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:32', '2023-09-29 20:12:32');
INSERT INTO `wallet_changes` VALUES (37, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:33', '2023-09-29 20:12:33');
INSERT INTO `wallet_changes` VALUES (38, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:37', '2023-09-29 20:12:37');
INSERT INTO `wallet_changes` VALUES (39, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:38', '2023-09-29 20:12:38');
INSERT INTO `wallet_changes` VALUES (40, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:42', '2023-09-29 20:12:42');
INSERT INTO `wallet_changes` VALUES (41, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:43', '2023-09-29 20:12:43');
INSERT INTO `wallet_changes` VALUES (42, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:51', '2023-09-29 20:12:51');
INSERT INTO `wallet_changes` VALUES (43, 'Fortune Tiger win', '1.20', 0.00, 1.20, -0.80, 2.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:12:52', '2023-09-29 20:12:52');
INSERT INTO `wallet_changes` VALUES (44, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:00', '2023-09-29 20:13:00');
INSERT INTO `wallet_changes` VALUES (45, 'Fortune Tiger win', '2.50', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:01', '2023-09-29 20:13:01');
INSERT INTO `wallet_changes` VALUES (46, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:05', '2023-09-29 20:13:05');
INSERT INTO `wallet_changes` VALUES (47, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:06', '2023-09-29 20:13:06');
INSERT INTO `wallet_changes` VALUES (48, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:09', '2023-09-29 20:13:09');
INSERT INTO `wallet_changes` VALUES (49, 'Fortune Tiger win', '12.50', 0.00, 12.50, 10.00, 2.50, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:10', '2023-09-29 20:13:10');
INSERT INTO `wallet_changes` VALUES (50, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:44', '2023-09-29 20:13:44');
INSERT INTO `wallet_changes` VALUES (51, 'Fortune Tiger win', '250.00', 0.00, 250.00, 200.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:45', '2023-09-29 20:13:45');
INSERT INTO `wallet_changes` VALUES (52, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:54', '2023-09-29 20:13:54');
INSERT INTO `wallet_changes` VALUES (53, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:13:55', '2023-09-29 20:13:55');
INSERT INTO `wallet_changes` VALUES (54, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:00', '2023-09-29 20:14:00');
INSERT INTO `wallet_changes` VALUES (55, 'Fortune Tiger win', '50.00', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:01', '2023-09-29 20:14:01');
INSERT INTO `wallet_changes` VALUES (56, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:07', '2023-09-29 20:14:07');
INSERT INTO `wallet_changes` VALUES (57, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:08', '2023-09-29 20:14:08');
INSERT INTO `wallet_changes` VALUES (58, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:13', '2023-09-29 20:14:13');
INSERT INTO `wallet_changes` VALUES (59, 'Fortune Tiger win', '60.00', 0.00, 60.00, 10.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:14', '2023-09-29 20:14:14');
INSERT INTO `wallet_changes` VALUES (60, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:28', '2023-09-29 20:14:28');
INSERT INTO `wallet_changes` VALUES (61, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:29', '2023-09-29 20:14:29');
INSERT INTO `wallet_changes` VALUES (62, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:31', '2023-09-29 20:14:31');
INSERT INTO `wallet_changes` VALUES (63, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:32', '2023-09-29 20:14:32');
INSERT INTO `wallet_changes` VALUES (64, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:35', '2023-09-29 20:14:35');
INSERT INTO `wallet_changes` VALUES (65, 'Fortune Tiger win', '50.00', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:36', '2023-09-29 20:14:36');
INSERT INTO `wallet_changes` VALUES (66, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:39', '2023-09-29 20:14:39');
INSERT INTO `wallet_changes` VALUES (67, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:40', '2023-09-29 20:14:40');
INSERT INTO `wallet_changes` VALUES (68, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:42', '2023-09-29 20:14:42');
INSERT INTO `wallet_changes` VALUES (69, 'Fortune Tiger win', '80.00', 0.00, 80.00, 30.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:43', '2023-09-29 20:14:43');
INSERT INTO `wallet_changes` VALUES (70, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:49', '2023-09-29 20:14:49');
INSERT INTO `wallet_changes` VALUES (71, 'Fortune Tiger win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:50', '2023-09-29 20:14:50');
INSERT INTO `wallet_changes` VALUES (72, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:53', '2023-09-29 20:14:53');
INSERT INTO `wallet_changes` VALUES (73, 'Fortune Tiger win', '160.00', 0.00, 160.00, 110.00, 50.00, 'Fortune Tiger', 'demo@demo.com', '2023-09-29 20:14:54', '2023-09-29 20:14:54');
INSERT INTO `wallet_changes` VALUES (74, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:31', '2023-09-29 20:28:31');
INSERT INTO `wallet_changes` VALUES (75, 'Fortune Tiger win', '0.45', 0.00, 0.45, -0.30, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:32', '2023-09-29 20:28:32');
INSERT INTO `wallet_changes` VALUES (76, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:43', '2023-09-29 20:28:43');
INSERT INTO `wallet_changes` VALUES (77, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:44', '2023-09-29 20:28:44');
INSERT INTO `wallet_changes` VALUES (78, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:49', '2023-09-29 20:28:49');
INSERT INTO `wallet_changes` VALUES (79, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:50', '2023-09-29 20:28:50');
INSERT INTO `wallet_changes` VALUES (80, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:54', '2023-09-29 20:28:54');
INSERT INTO `wallet_changes` VALUES (81, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:55', '2023-09-29 20:28:55');
INSERT INTO `wallet_changes` VALUES (82, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:28:59', '2023-09-29 20:28:59');
INSERT INTO `wallet_changes` VALUES (83, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:00', '2023-09-29 20:29:00');
INSERT INTO `wallet_changes` VALUES (84, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:05', '2023-09-29 20:29:05');
INSERT INTO `wallet_changes` VALUES (85, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:06', '2023-09-29 20:29:06');
INSERT INTO `wallet_changes` VALUES (86, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:08', '2023-09-29 20:29:08');
INSERT INTO `wallet_changes` VALUES (87, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:10', '2023-09-29 20:29:10');
INSERT INTO `wallet_changes` VALUES (88, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:21', '2023-09-29 20:29:21');
INSERT INTO `wallet_changes` VALUES (89, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:22', '2023-09-29 20:29:22');
INSERT INTO `wallet_changes` VALUES (90, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:24', '2023-09-29 20:29:24');
INSERT INTO `wallet_changes` VALUES (91, 'Fortune Tiger win', '0.45', 0.00, 0.45, -0.30, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:25', '2023-09-29 20:29:25');
INSERT INTO `wallet_changes` VALUES (92, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:32', '2023-09-29 20:29:32');
INSERT INTO `wallet_changes` VALUES (93, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:33', '2023-09-29 20:29:33');
INSERT INTO `wallet_changes` VALUES (94, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:35', '2023-09-29 20:29:35');
INSERT INTO `wallet_changes` VALUES (95, 'Fortune Tiger win', '1.20', 0.00, 1.20, 0.45, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 20:29:36', '2023-09-29 20:29:36');
INSERT INTO `wallet_changes` VALUES (96, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'admin@demo.com', '2023-09-29 20:32:39', '2023-09-29 20:32:39');
INSERT INTO `wallet_changes` VALUES (97, 'Mines win', '0.61', 0.00, 0.61, 0.31, 0.30, 'Mines', 'admin@demo.com', '2023-09-29 20:33:11', '2023-09-29 20:33:11');
INSERT INTO `wallet_changes` VALUES (98, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:22', '2023-09-29 20:35:22');
INSERT INTO `wallet_changes` VALUES (99, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:23', '2023-09-29 20:35:23');
INSERT INTO `wallet_changes` VALUES (100, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:29', '2023-09-29 20:35:29');
INSERT INTO `wallet_changes` VALUES (101, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:30', '2023-09-29 20:35:30');
INSERT INTO `wallet_changes` VALUES (102, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:45', '2023-09-29 20:35:45');
INSERT INTO `wallet_changes` VALUES (103, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:46', '2023-09-29 20:35:46');
INSERT INTO `wallet_changes` VALUES (104, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:50', '2023-09-29 20:35:50');
INSERT INTO `wallet_changes` VALUES (105, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:51', '2023-09-29 20:35:51');
INSERT INTO `wallet_changes` VALUES (106, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:57', '2023-09-29 20:35:57');
INSERT INTO `wallet_changes` VALUES (107, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:35:57', '2023-09-29 20:35:57');
INSERT INTO `wallet_changes` VALUES (108, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:01', '2023-09-29 20:36:01');
INSERT INTO `wallet_changes` VALUES (109, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:02', '2023-09-29 20:36:02');
INSERT INTO `wallet_changes` VALUES (110, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:09', '2023-09-29 20:36:09');
INSERT INTO `wallet_changes` VALUES (111, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:10', '2023-09-29 20:36:10');
INSERT INTO `wallet_changes` VALUES (112, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:14', '2023-09-29 20:36:14');
INSERT INTO `wallet_changes` VALUES (113, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:15', '2023-09-29 20:36:15');
INSERT INTO `wallet_changes` VALUES (114, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:26', '2023-09-29 20:36:26');
INSERT INTO `wallet_changes` VALUES (115, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:27', '2023-09-29 20:36:27');
INSERT INTO `wallet_changes` VALUES (116, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:32', '2023-09-29 20:36:32');
INSERT INTO `wallet_changes` VALUES (117, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:33', '2023-09-29 20:36:33');
INSERT INTO `wallet_changes` VALUES (118, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:40', '2023-09-29 20:36:40');
INSERT INTO `wallet_changes` VALUES (119, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:41', '2023-09-29 20:36:41');
INSERT INTO `wallet_changes` VALUES (120, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:45', '2023-09-29 20:36:45');
INSERT INTO `wallet_changes` VALUES (121, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:46', '2023-09-29 20:36:46');
INSERT INTO `wallet_changes` VALUES (122, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:50', '2023-09-29 20:36:50');
INSERT INTO `wallet_changes` VALUES (123, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:51', '2023-09-29 20:36:51');
INSERT INTO `wallet_changes` VALUES (124, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:55', '2023-09-29 20:36:55');
INSERT INTO `wallet_changes` VALUES (125, 'Fortune Tiger win', '1.50', 0.00, 1.50, -1.00, 2.50, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:36:56', '2023-09-29 20:36:56');
INSERT INTO `wallet_changes` VALUES (126, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:24', '2023-09-29 20:37:24');
INSERT INTO `wallet_changes` VALUES (127, 'Fortune Tiger win', '10.00', 0.00, 10.00, 5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:26', '2023-09-29 20:37:26');
INSERT INTO `wallet_changes` VALUES (128, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:33', '2023-09-29 20:37:33');
INSERT INTO `wallet_changes` VALUES (129, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:34', '2023-09-29 20:37:34');
INSERT INTO `wallet_changes` VALUES (130, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:40', '2023-09-29 20:37:40');
INSERT INTO `wallet_changes` VALUES (131, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:41', '2023-09-29 20:37:41');
INSERT INTO `wallet_changes` VALUES (132, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:50', '2023-09-29 20:37:50');
INSERT INTO `wallet_changes` VALUES (133, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:51', '2023-09-29 20:37:51');
INSERT INTO `wallet_changes` VALUES (134, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:57', '2023-09-29 20:37:57');
INSERT INTO `wallet_changes` VALUES (135, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:37:58', '2023-09-29 20:37:58');
INSERT INTO `wallet_changes` VALUES (136, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:03', '2023-09-29 20:38:03');
INSERT INTO `wallet_changes` VALUES (137, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:04', '2023-09-29 20:38:04');
INSERT INTO `wallet_changes` VALUES (138, 'Fortune Tiger play', '-5', 0.00, 5.00, 0.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:11', '2023-09-29 20:38:11');
INSERT INTO `wallet_changes` VALUES (139, 'Fortune Tiger win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:12', '2023-09-29 20:38:12');
INSERT INTO `wallet_changes` VALUES (140, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:23', '2023-09-29 20:38:23');
INSERT INTO `wallet_changes` VALUES (141, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:24', '2023-09-29 20:38:24');
INSERT INTO `wallet_changes` VALUES (142, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:32', '2023-09-29 20:38:32');
INSERT INTO `wallet_changes` VALUES (143, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:34', '2023-09-29 20:38:34');
INSERT INTO `wallet_changes` VALUES (144, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:38', '2023-09-29 20:38:38');
INSERT INTO `wallet_changes` VALUES (145, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:39', '2023-09-29 20:38:39');
INSERT INTO `wallet_changes` VALUES (146, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:43', '2023-09-29 20:38:43');
INSERT INTO `wallet_changes` VALUES (147, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:44', '2023-09-29 20:38:44');
INSERT INTO `wallet_changes` VALUES (148, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:48', '2023-09-29 20:38:48');
INSERT INTO `wallet_changes` VALUES (149, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:49', '2023-09-29 20:38:49');
INSERT INTO `wallet_changes` VALUES (150, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:58', '2023-09-29 20:38:58');
INSERT INTO `wallet_changes` VALUES (151, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:38:59', '2023-09-29 20:38:59');
INSERT INTO `wallet_changes` VALUES (152, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:39:08', '2023-09-29 20:39:08');
INSERT INTO `wallet_changes` VALUES (153, 'Fortune Tiger win', '500.00', 0.00, 500.00, 490.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:39:13', '2023-09-29 20:39:13');
INSERT INTO `wallet_changes` VALUES (154, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 20:40:15', '2023-09-29 20:40:15');
INSERT INTO `wallet_changes` VALUES (155, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 20:40:16', '2023-09-29 20:40:16');
INSERT INTO `wallet_changes` VALUES (156, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:40:20', '2023-09-29 20:40:20');
INSERT INTO `wallet_changes` VALUES (157, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'davi.automation2023@gmail.com', '2023-09-29 20:40:21', '2023-09-29 20:40:21');
INSERT INTO `wallet_changes` VALUES (158, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:42', '2023-09-29 21:31:42');
INSERT INTO `wallet_changes` VALUES (159, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:43', '2023-09-29 21:31:43');
INSERT INTO `wallet_changes` VALUES (160, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:46', '2023-09-29 21:31:46');
INSERT INTO `wallet_changes` VALUES (161, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:47', '2023-09-29 21:31:47');
INSERT INTO `wallet_changes` VALUES (162, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:49', '2023-09-29 21:31:49');
INSERT INTO `wallet_changes` VALUES (163, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:50', '2023-09-29 21:31:50');
INSERT INTO `wallet_changes` VALUES (164, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:55', '2023-09-29 21:31:55');
INSERT INTO `wallet_changes` VALUES (165, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:31:56', '2023-09-29 21:31:56');
INSERT INTO `wallet_changes` VALUES (166, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:00', '2023-09-29 21:32:00');
INSERT INTO `wallet_changes` VALUES (167, 'Fortune Rabbit win', '3.00', 0.00, 3.00, 1.00, 2.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:01', '2023-09-29 21:32:01');
INSERT INTO `wallet_changes` VALUES (168, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:15', '2023-09-29 21:32:15');
INSERT INTO `wallet_changes` VALUES (169, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:16', '2023-09-29 21:32:16');
INSERT INTO `wallet_changes` VALUES (170, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:20', '2023-09-29 21:32:20');
INSERT INTO `wallet_changes` VALUES (171, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:21', '2023-09-29 21:32:21');
INSERT INTO `wallet_changes` VALUES (172, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:24', '2023-09-29 21:32:24');
INSERT INTO `wallet_changes` VALUES (173, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:25', '2023-09-29 21:32:25');
INSERT INTO `wallet_changes` VALUES (174, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:26', '2023-09-29 21:32:26');
INSERT INTO `wallet_changes` VALUES (175, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'admin@demo.com', '2023-09-29 21:32:27', '2023-09-29 21:32:27');
INSERT INTO `wallet_changes` VALUES (176, 'Penalty Shoot Out Mobile win', '1244.64', 0.00, 1244.64, 1244.64, 0.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:01', '2023-09-29 21:43:01');
INSERT INTO `wallet_changes` VALUES (177, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:03', '2023-09-29 21:43:03');
INSERT INTO `wallet_changes` VALUES (178, 'Penalty Shoot Out Mobile play', '-1365.55', 0.00, 1365.55, 0.00, 1365.55, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:06', '2023-09-29 21:43:06');
INSERT INTO `wallet_changes` VALUES (179, 'Penalty Shoot Out Mobile play', '-796.57', 0.00, 796.57, 0.00, 796.57, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:09', '2023-09-29 21:43:09');
INSERT INTO `wallet_changes` VALUES (180, 'Penalty Shoot Out Mobile play', '-341.39', 0.00, 341.39, 0.00, 341.39, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:10', '2023-09-29 21:43:10');
INSERT INTO `wallet_changes` VALUES (181, 'Penalty Shoot Out Mobile win', '534.84', 0.00, 534.84, 193.45, 341.39, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:11', '2023-09-29 21:43:11');
INSERT INTO `wallet_changes` VALUES (182, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -341.39, 341.39, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:12', '2023-09-29 21:43:12');
INSERT INTO `wallet_changes` VALUES (183, 'Penalty Shoot Out Mobile win', '176.50', 0.00, 176.50, -164.89, 341.39, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:13', '2023-09-29 21:43:13');
INSERT INTO `wallet_changes` VALUES (184, 'Penalty Shoot Out Mobile win', '1211.95', 0.00, 1211.95, 870.56, 341.39, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:14', '2023-09-29 21:43:14');
INSERT INTO `wallet_changes` VALUES (185, 'Penalty Shoot Out Mobile play', '-7271.7', 0.00, 7271.70, 0.00, 7271.70, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:20', '2023-09-29 21:43:20');
INSERT INTO `wallet_changes` VALUES (186, 'Penalty Shoot Out Mobile win', '35.00', 0.00, 35.00, -7236.70, 7271.70, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:21', '2023-09-29 21:43:21');
INSERT INTO `wallet_changes` VALUES (187, 'Penalty Shoot Out Mobile play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:21', '2023-09-29 21:43:21');
INSERT INTO `wallet_changes` VALUES (188, 'Penalty Shoot Out Mobile win', '7271.70', 0.00, 7271.70, 7236.71, 34.99, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:22', '2023-09-29 21:43:22');
INSERT INTO `wallet_changes` VALUES (189, 'Penalty Shoot Out Mobile play', '-1454.34', 0.00, 1454.34, 0.00, 1454.34, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:23', '2023-09-29 21:43:23');
INSERT INTO `wallet_changes` VALUES (190, 'Penalty Shoot Out Mobile play', '-1512.52', 0.00, 1512.52, 0.00, 1512.52, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:24', '2023-09-29 21:43:24');
INSERT INTO `wallet_changes` VALUES (191, 'Penalty Shoot Out Mobile win', '756.26', 0.00, 756.26, -756.26, 1512.52, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:24', '2023-09-29 21:43:24');
INSERT INTO `wallet_changes` VALUES (192, 'Penalty Shoot Out Mobile play', '-1221.65', 0.00, 1221.65, 0.00, 1221.65, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:27', '2023-09-29 21:43:27');
INSERT INTO `wallet_changes` VALUES (193, 'Penalty Shoot Out Mobile win', '229.79', 0.00, 229.79, -991.86, 1221.65, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:27', '2023-09-29 21:43:27');
INSERT INTO `wallet_changes` VALUES (194, 'Penalty Shoot Out Mobile play', '-772.08', 0.00, 772.08, 0.00, 772.08, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:28', '2023-09-29 21:43:28');
INSERT INTO `wallet_changes` VALUES (195, 'Penalty Shoot Out Mobile play', '-567.48', 0.00, 567.48, 0.00, 567.48, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:29', '2023-09-29 21:43:29');
INSERT INTO `wallet_changes` VALUES (196, 'Penalty Shoot Out Mobile win', '976.07', 0.00, 976.07, 408.59, 567.48, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:29', '2023-09-29 21:43:29');
INSERT INTO `wallet_changes` VALUES (197, 'Penalty Shoot Out Mobile play', '-1249.37', 0.00, 1249.37, 0.00, 1249.37, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:30', '2023-09-29 21:43:30');
INSERT INTO `wallet_changes` VALUES (198, 'Penalty Shoot Out Mobile win', '835.29', 0.00, 835.29, -414.08, 1249.37, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:31', '2023-09-29 21:43:31');
INSERT INTO `wallet_changes` VALUES (199, 'Penalty Shoot Out Mobile win', '890.55', 0.00, 890.55, -358.82, 1249.37, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:31', '2023-09-29 21:43:31');
INSERT INTO `wallet_changes` VALUES (200, 'Penalty Shoot Out Mobile play', '-1432.16', 0.00, 1432.16, 0.00, 1432.16, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:32', '2023-09-29 21:43:32');
INSERT INTO `wallet_changes` VALUES (201, 'Penalty Shoot Out Mobile play', '-946.71', 0.00, 946.71, 0.00, 946.71, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:33', '2023-09-29 21:43:33');
INSERT INTO `wallet_changes` VALUES (202, 'Penalty Shoot Out Mobile win', '307.15', 0.00, 307.15, -639.56, 946.71, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:34', '2023-09-29 21:43:34');
INSERT INTO `wallet_changes` VALUES (203, 'Penalty Shoot Out Mobile win', '802.70', 0.00, 802.70, -144.01, 946.71, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:43:34', '2023-09-29 21:43:34');
INSERT INTO `wallet_changes` VALUES (204, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:22', '2023-09-29 21:44:22');
INSERT INTO `wallet_changes` VALUES (205, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:23', '2023-09-29 21:44:23');
INSERT INTO `wallet_changes` VALUES (206, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:25', '2023-09-29 21:44:25');
INSERT INTO `wallet_changes` VALUES (207, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:31', '2023-09-29 21:44:31');
INSERT INTO `wallet_changes` VALUES (208, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:37', '2023-09-29 21:44:37');
INSERT INTO `wallet_changes` VALUES (209, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:38', '2023-09-29 21:44:38');
INSERT INTO `wallet_changes` VALUES (210, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:39', '2023-09-29 21:44:39');
INSERT INTO `wallet_changes` VALUES (211, 'Penalty Shoot Out Mobile win', '9.60', 0.00, 9.60, 4.60, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:44', '2023-09-29 21:44:44');
INSERT INTO `wallet_changes` VALUES (212, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:53', '2023-09-29 21:44:53');
INSERT INTO `wallet_changes` VALUES (213, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:53', '2023-09-29 21:44:53');
INSERT INTO `wallet_changes` VALUES (214, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:44:55', '2023-09-29 21:44:55');
INSERT INTO `wallet_changes` VALUES (215, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:01', '2023-09-29 21:45:01');
INSERT INTO `wallet_changes` VALUES (216, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:07', '2023-09-29 21:45:07');
INSERT INTO `wallet_changes` VALUES (217, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:08', '2023-09-29 21:45:08');
INSERT INTO `wallet_changes` VALUES (218, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:09', '2023-09-29 21:45:09');
INSERT INTO `wallet_changes` VALUES (219, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:15', '2023-09-29 21:45:15');
INSERT INTO `wallet_changes` VALUES (220, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:16', '2023-09-29 21:45:16');
INSERT INTO `wallet_changes` VALUES (221, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:17', '2023-09-29 21:45:17');
INSERT INTO `wallet_changes` VALUES (222, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:24', '2023-09-29 21:45:24');
INSERT INTO `wallet_changes` VALUES (223, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:33', '2023-09-29 21:45:33');
INSERT INTO `wallet_changes` VALUES (224, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:33', '2023-09-29 21:45:33');
INSERT INTO `wallet_changes` VALUES (225, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:36', '2023-09-29 21:45:36');
INSERT INTO `wallet_changes` VALUES (226, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:43', '2023-09-29 21:45:43');
INSERT INTO `wallet_changes` VALUES (227, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:44', '2023-09-29 21:45:44');
INSERT INTO `wallet_changes` VALUES (228, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:45', '2023-09-29 21:45:45');
INSERT INTO `wallet_changes` VALUES (229, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:51', '2023-09-29 21:45:51');
INSERT INTO `wallet_changes` VALUES (230, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:52', '2023-09-29 21:45:52');
INSERT INTO `wallet_changes` VALUES (231, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:45:56', '2023-09-29 21:45:56');
INSERT INTO `wallet_changes` VALUES (232, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:05', '2023-09-29 21:46:05');
INSERT INTO `wallet_changes` VALUES (233, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:12', '2023-09-29 21:46:12');
INSERT INTO `wallet_changes` VALUES (234, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:13', '2023-09-29 21:46:13');
INSERT INTO `wallet_changes` VALUES (235, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:15', '2023-09-29 21:46:15');
INSERT INTO `wallet_changes` VALUES (236, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:20', '2023-09-29 21:46:20');
INSERT INTO `wallet_changes` VALUES (237, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:21', '2023-09-29 21:46:21');
INSERT INTO `wallet_changes` VALUES (238, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:26', '2023-09-29 21:46:26');
INSERT INTO `wallet_changes` VALUES (239, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:33', '2023-09-29 21:46:33');
INSERT INTO `wallet_changes` VALUES (240, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:39', '2023-09-29 21:46:39');
INSERT INTO `wallet_changes` VALUES (241, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:40', '2023-09-29 21:46:40');
INSERT INTO `wallet_changes` VALUES (242, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:41', '2023-09-29 21:46:41');
INSERT INTO `wallet_changes` VALUES (243, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:46', '2023-09-29 21:46:46');
INSERT INTO `wallet_changes` VALUES (244, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:52', '2023-09-29 21:46:52');
INSERT INTO `wallet_changes` VALUES (245, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:53', '2023-09-29 21:46:53');
INSERT INTO `wallet_changes` VALUES (246, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-09-29 21:46:54', '2023-09-29 21:46:54');
INSERT INTO `wallet_changes` VALUES (247, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:32', '2023-09-29 21:47:32');
INSERT INTO `wallet_changes` VALUES (248, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:33', '2023-09-29 21:47:33');
INSERT INTO `wallet_changes` VALUES (249, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:38', '2023-09-29 21:47:38');
INSERT INTO `wallet_changes` VALUES (250, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:39', '2023-09-29 21:47:39');
INSERT INTO `wallet_changes` VALUES (251, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:43', '2023-09-29 21:47:43');
INSERT INTO `wallet_changes` VALUES (252, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:44', '2023-09-29 21:47:44');
INSERT INTO `wallet_changes` VALUES (253, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:49', '2023-09-29 21:47:49');
INSERT INTO `wallet_changes` VALUES (254, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:50', '2023-09-29 21:47:50');
INSERT INTO `wallet_changes` VALUES (255, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:56', '2023-09-29 21:47:56');
INSERT INTO `wallet_changes` VALUES (256, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:47:57', '2023-09-29 21:47:57');
INSERT INTO `wallet_changes` VALUES (257, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:02', '2023-09-29 21:48:02');
INSERT INTO `wallet_changes` VALUES (258, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:03', '2023-09-29 21:48:03');
INSERT INTO `wallet_changes` VALUES (259, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:06', '2023-09-29 21:48:06');
INSERT INTO `wallet_changes` VALUES (260, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:07', '2023-09-29 21:48:07');
INSERT INTO `wallet_changes` VALUES (261, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:11', '2023-09-29 21:48:11');
INSERT INTO `wallet_changes` VALUES (262, 'Fortune Tiger win', '1.50', 0.00, 1.50, 0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:12', '2023-09-29 21:48:12');
INSERT INTO `wallet_changes` VALUES (263, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:18', '2023-09-29 21:48:18');
INSERT INTO `wallet_changes` VALUES (264, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:19', '2023-09-29 21:48:19');
INSERT INTO `wallet_changes` VALUES (265, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:26', '2023-09-29 21:48:26');
INSERT INTO `wallet_changes` VALUES (266, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:27', '2023-09-29 21:48:27');
INSERT INTO `wallet_changes` VALUES (267, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:32', '2023-09-29 21:48:32');
INSERT INTO `wallet_changes` VALUES (268, 'Fortune Tiger win', '2.25', 0.00, 2.25, 1.50, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:33', '2023-09-29 21:48:33');
INSERT INTO `wallet_changes` VALUES (269, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-29 21:48:51', '2023-09-29 21:48:51');
INSERT INTO `wallet_changes` VALUES (270, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'admin@demo.com', '2023-09-29 22:31:24', '2023-09-29 22:31:24');
INSERT INTO `wallet_changes` VALUES (271, 'Mines win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Mines', 'admin@demo.com', '2023-09-29 22:31:54', '2023-09-29 22:31:54');
INSERT INTO `wallet_changes` VALUES (272, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'admin@demo.com', '2023-09-29 22:31:59', '2023-09-29 22:31:59');
INSERT INTO `wallet_changes` VALUES (273, 'Mines win', '32.80', 0.00, 32.80, 22.80, 10.00, 'Mines', 'admin@demo.com', '2023-09-29 22:32:15', '2023-09-29 22:32:15');
INSERT INTO `wallet_changes` VALUES (274, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:15', '2023-09-29 22:36:15');
INSERT INTO `wallet_changes` VALUES (275, 'Fortune Ox win', '5.00', 0.00, 5.00, -5.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:16', '2023-09-29 22:36:16');
INSERT INTO `wallet_changes` VALUES (276, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:20', '2023-09-29 22:36:20');
INSERT INTO `wallet_changes` VALUES (277, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:22', '2023-09-29 22:36:22');
INSERT INTO `wallet_changes` VALUES (278, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:26', '2023-09-29 22:36:26');
INSERT INTO `wallet_changes` VALUES (279, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:27', '2023-09-29 22:36:27');
INSERT INTO `wallet_changes` VALUES (280, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:32', '2023-09-29 22:36:32');
INSERT INTO `wallet_changes` VALUES (281, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:33', '2023-09-29 22:36:33');
INSERT INTO `wallet_changes` VALUES (282, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:46', '2023-09-29 22:36:46');
INSERT INTO `wallet_changes` VALUES (283, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:47', '2023-09-29 22:36:47');
INSERT INTO `wallet_changes` VALUES (284, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:50', '2023-09-29 22:36:50');
INSERT INTO `wallet_changes` VALUES (285, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:51', '2023-09-29 22:36:51');
INSERT INTO `wallet_changes` VALUES (286, 'Fortune Ox play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:53', '2023-09-29 22:36:53');
INSERT INTO `wallet_changes` VALUES (287, 'Fortune Ox win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Ox', 'admin@demo.com', '2023-09-29 22:36:54', '2023-09-29 22:36:54');
INSERT INTO `wallet_changes` VALUES (288, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'admin@demo.com', '2023-09-30 03:38:06', '2023-09-30 03:38:06');
INSERT INTO `wallet_changes` VALUES (289, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'admin@demo.com', '2023-09-30 03:38:07', '2023-09-30 03:38:07');
INSERT INTO `wallet_changes` VALUES (290, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'admin@demo.com', '2023-09-30 03:38:12', '2023-09-30 03:38:12');
INSERT INTO `wallet_changes` VALUES (291, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'admin@demo.com', '2023-09-30 03:38:13', '2023-09-30 03:38:13');
INSERT INTO `wallet_changes` VALUES (292, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:26:55', '2023-09-30 05:26:55');
INSERT INTO `wallet_changes` VALUES (293, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:26:57', '2023-09-30 05:26:57');
INSERT INTO `wallet_changes` VALUES (294, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:04', '2023-09-30 05:27:04');
INSERT INTO `wallet_changes` VALUES (295, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:05', '2023-09-30 05:27:05');
INSERT INTO `wallet_changes` VALUES (296, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:11', '2023-09-30 05:27:11');
INSERT INTO `wallet_changes` VALUES (297, 'Fortune Tiger win', '2.50', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:13', '2023-09-30 05:27:13');
INSERT INTO `wallet_changes` VALUES (298, 'Fortune Tiger play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:36', '2023-09-30 05:27:36');
INSERT INTO `wallet_changes` VALUES (299, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:37', '2023-09-30 05:27:37');
INSERT INTO `wallet_changes` VALUES (300, 'Fortune Tiger win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:46', '2023-09-30 05:27:46');
INSERT INTO `wallet_changes` VALUES (301, 'Fortune Tiger win', '50.00', 0.00, 50.00, 47.50, 2.50, 'Fortune Tiger', 'muriloecommerce2020@gmail.com', '2023-09-30 05:27:50', '2023-09-30 05:27:50');
INSERT INTO `wallet_changes` VALUES (302, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:30:41', '2023-09-30 05:30:41');
INSERT INTO `wallet_changes` VALUES (303, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:30:42', '2023-09-30 05:30:42');
INSERT INTO `wallet_changes` VALUES (304, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:30:50', '2023-09-30 05:30:50');
INSERT INTO `wallet_changes` VALUES (305, 'Fortune Ox win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:30:52', '2023-09-30 05:30:52');
INSERT INTO `wallet_changes` VALUES (306, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:06', '2023-09-30 05:31:06');
INSERT INTO `wallet_changes` VALUES (307, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:07', '2023-09-30 05:31:07');
INSERT INTO `wallet_changes` VALUES (308, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:14', '2023-09-30 05:31:14');
INSERT INTO `wallet_changes` VALUES (309, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:15', '2023-09-30 05:31:15');
INSERT INTO `wallet_changes` VALUES (310, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:29', '2023-09-30 05:31:29');
INSERT INTO `wallet_changes` VALUES (311, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:30', '2023-09-30 05:31:30');
INSERT INTO `wallet_changes` VALUES (312, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:37', '2023-09-30 05:31:37');
INSERT INTO `wallet_changes` VALUES (313, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:38', '2023-09-30 05:31:38');
INSERT INTO `wallet_changes` VALUES (314, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:43', '2023-09-30 05:31:43');
INSERT INTO `wallet_changes` VALUES (315, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:44', '2023-09-30 05:31:44');
INSERT INTO `wallet_changes` VALUES (316, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:48', '2023-09-30 05:31:48');
INSERT INTO `wallet_changes` VALUES (317, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:49', '2023-09-30 05:31:49');
INSERT INTO `wallet_changes` VALUES (318, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:56', '2023-09-30 05:31:56');
INSERT INTO `wallet_changes` VALUES (319, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:31:57', '2023-09-30 05:31:57');
INSERT INTO `wallet_changes` VALUES (320, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:06', '2023-09-30 05:32:06');
INSERT INTO `wallet_changes` VALUES (321, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:07', '2023-09-30 05:32:07');
INSERT INTO `wallet_changes` VALUES (322, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:12', '2023-09-30 05:32:12');
INSERT INTO `wallet_changes` VALUES (323, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:13', '2023-09-30 05:32:13');
INSERT INTO `wallet_changes` VALUES (324, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:17', '2023-09-30 05:32:17');
INSERT INTO `wallet_changes` VALUES (325, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:18', '2023-09-30 05:32:18');
INSERT INTO `wallet_changes` VALUES (326, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:22', '2023-09-30 05:32:22');
INSERT INTO `wallet_changes` VALUES (327, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:23', '2023-09-30 05:32:23');
INSERT INTO `wallet_changes` VALUES (328, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:27', '2023-09-30 05:32:27');
INSERT INTO `wallet_changes` VALUES (329, 'Fortune Ox win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:28', '2023-09-30 05:32:28');
INSERT INTO `wallet_changes` VALUES (330, 'Fortune Ox play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:32', '2023-09-30 05:32:32');
INSERT INTO `wallet_changes` VALUES (331, 'Fortune Ox win', '60.00', 0.00, 60.00, 58.00, 2.00, 'Fortune Ox', 'muriloecommerce2020@gmail.com', '2023-09-30 05:32:33', '2023-09-30 05:32:33');
INSERT INTO `wallet_changes` VALUES (332, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:33:42', '2023-09-30 05:33:42');
INSERT INTO `wallet_changes` VALUES (333, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:33:42', '2023-09-30 05:33:42');
INSERT INTO `wallet_changes` VALUES (334, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:33:50', '2023-09-30 05:33:50');
INSERT INTO `wallet_changes` VALUES (335, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:33:57', '2023-09-30 05:33:57');
INSERT INTO `wallet_changes` VALUES (336, 'Penalty Shoot Out Mobile play', '-2', 0.00, 2.00, 0.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:16', '2023-09-30 05:34:16');
INSERT INTO `wallet_changes` VALUES (337, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:16', '2023-09-30 05:34:16');
INSERT INTO `wallet_changes` VALUES (338, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:19', '2023-09-30 05:34:19');
INSERT INTO `wallet_changes` VALUES (339, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:27', '2023-09-30 05:34:27');
INSERT INTO `wallet_changes` VALUES (340, 'Penalty Shoot Out Mobile play', '-2', 0.00, 2.00, 0.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:34', '2023-09-30 05:34:34');
INSERT INTO `wallet_changes` VALUES (341, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:34', '2023-09-30 05:34:34');
INSERT INTO `wallet_changes` VALUES (342, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:39', '2023-09-30 05:34:39');
INSERT INTO `wallet_changes` VALUES (343, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:52', '2023-09-30 05:34:52');
INSERT INTO `wallet_changes` VALUES (344, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:53', '2023-09-30 05:34:53');
INSERT INTO `wallet_changes` VALUES (345, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:34:56', '2023-09-30 05:34:56');
INSERT INTO `wallet_changes` VALUES (346, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:05', '2023-09-30 05:35:05');
INSERT INTO `wallet_changes` VALUES (347, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:20', '2023-09-30 05:35:20');
INSERT INTO `wallet_changes` VALUES (348, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:26', '2023-09-30 05:35:26');
INSERT INTO `wallet_changes` VALUES (349, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:27', '2023-09-30 05:35:27');
INSERT INTO `wallet_changes` VALUES (350, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:31', '2023-09-30 05:35:31');
INSERT INTO `wallet_changes` VALUES (351, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:40', '2023-09-30 05:35:40');
INSERT INTO `wallet_changes` VALUES (352, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:53', '2023-09-30 05:35:53');
INSERT INTO `wallet_changes` VALUES (353, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:54', '2023-09-30 05:35:54');
INSERT INTO `wallet_changes` VALUES (354, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:35:57', '2023-09-30 05:35:57');
INSERT INTO `wallet_changes` VALUES (355, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:36:03', '2023-09-30 05:36:03');
INSERT INTO `wallet_changes` VALUES (356, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:36:09', '2023-09-30 05:36:09');
INSERT INTO `wallet_changes` VALUES (357, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:36:09', '2023-09-30 05:36:09');
INSERT INTO `wallet_changes` VALUES (358, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:36:13', '2023-09-30 05:36:13');
INSERT INTO `wallet_changes` VALUES (359, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'muriloecommerce2020@gmail.com', '2023-09-30 05:36:18', '2023-09-30 05:36:18');
INSERT INTO `wallet_changes` VALUES (360, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:37:23', '2023-09-30 05:37:23');
INSERT INTO `wallet_changes` VALUES (361, 'JetX win', '0.00', 0.00, 0.00, -0.20, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:37:44', '2023-09-30 05:37:44');
INSERT INTO `wallet_changes` VALUES (362, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:37:49', '2023-09-30 05:37:49');
INSERT INTO `wallet_changes` VALUES (363, 'JetX win', '0.40', 0.00, 0.40, 0.20, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:38:01', '2023-09-30 05:38:01');
INSERT INTO `wallet_changes` VALUES (364, 'JetX win', '0.00', 0.00, 0.00, -0.20, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:38:21', '2023-09-30 05:38:21');
INSERT INTO `wallet_changes` VALUES (365, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:38:21', '2023-09-30 05:38:21');
INSERT INTO `wallet_changes` VALUES (366, 'JetX win', '0.00', 0.00, 0.00, -0.20, 0.20, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:38:39', '2023-09-30 05:38:39');
INSERT INTO `wallet_changes` VALUES (367, 'JetX play', '-0.6', 0.00, 0.60, 0.00, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:38:52', '2023-09-30 05:38:52');
INSERT INTO `wallet_changes` VALUES (368, 'JetX win', '1.07', 0.00, 1.07, 0.47, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:06', '2023-09-30 05:39:06');
INSERT INTO `wallet_changes` VALUES (369, 'JetX win', '0.00', 0.00, 0.00, -0.60, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:12', '2023-09-30 05:39:12');
INSERT INTO `wallet_changes` VALUES (370, 'JetX play', '-0.6', 0.00, 0.60, 0.00, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:14', '2023-09-30 05:39:14');
INSERT INTO `wallet_changes` VALUES (371, 'JetX win', '1.28', 0.00, 1.28, 0.68, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:30', '2023-09-30 05:39:30');
INSERT INTO `wallet_changes` VALUES (372, 'JetX win', '0.00', 0.00, 0.00, -0.60, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:57', '2023-09-30 05:39:57');
INSERT INTO `wallet_changes` VALUES (373, 'JetX play', '-0.6', 0.00, 0.60, 0.00, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:39:57', '2023-09-30 05:39:57');
INSERT INTO `wallet_changes` VALUES (374, 'JetX win', '0.00', 0.00, 0.00, -0.60, 0.60, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:40:14', '2023-09-30 05:40:14');
INSERT INTO `wallet_changes` VALUES (375, 'JetX play', '-1', 0.00, 1.00, 0.00, 1.00, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:41:34', '2023-09-30 05:41:34');
INSERT INTO `wallet_changes` VALUES (376, 'JetX win', '0.00', 0.00, 0.00, -1.00, 1.00, 'JetX', 'muriloecommerce2020@gmail.com', '2023-09-30 05:41:51', '2023-09-30 05:41:51');
INSERT INTO `wallet_changes` VALUES (377, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:42:33', '2023-09-30 05:42:33');
INSERT INTO `wallet_changes` VALUES (378, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:42:48', '2023-09-30 05:42:48');
INSERT INTO `wallet_changes` VALUES (379, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:42:53', '2023-09-30 05:42:53');
INSERT INTO `wallet_changes` VALUES (380, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:06', '2023-09-30 05:43:06');
INSERT INTO `wallet_changes` VALUES (381, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:11', '2023-09-30 05:43:11');
INSERT INTO `wallet_changes` VALUES (382, 'Aviator win', '0.21', 0.00, 0.21, 0.11, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:26', '2023-09-30 05:43:26');
INSERT INTO `wallet_changes` VALUES (383, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:37', '2023-09-30 05:43:37');
INSERT INTO `wallet_changes` VALUES (384, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:44', '2023-09-30 05:43:44');
INSERT INTO `wallet_changes` VALUES (385, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:43:49', '2023-09-30 05:43:49');
INSERT INTO `wallet_changes` VALUES (386, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:00', '2023-09-30 05:44:00');
INSERT INTO `wallet_changes` VALUES (387, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:06', '2023-09-30 05:44:06');
INSERT INTO `wallet_changes` VALUES (388, 'Aviator win', '0.15', 0.00, 0.15, 0.05, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:16', '2023-09-30 05:44:16');
INSERT INTO `wallet_changes` VALUES (389, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:32', '2023-09-30 05:44:32');
INSERT INTO `wallet_changes` VALUES (390, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:46', '2023-09-30 05:44:46');
INSERT INTO `wallet_changes` VALUES (391, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:44:51', '2023-09-30 05:44:51');
INSERT INTO `wallet_changes` VALUES (392, 'Aviator win', '0.22', 0.00, 0.22, 0.12, 0.10, 'Aviator', 'muriloecommerce2020@gmail.com', '2023-09-30 05:45:06', '2023-09-30 05:45:06');
INSERT INTO `wallet_changes` VALUES (393, 'Spaceman play', '-1', 0.00, 1.00, 0.00, 1.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:47:43', '2023-09-30 05:47:43');
INSERT INTO `wallet_changes` VALUES (394, 'Spaceman win', '1.82', 0.00, 1.82, 0.82, 1.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:03', '2023-09-30 05:48:03');
INSERT INTO `wallet_changes` VALUES (395, 'Spaceman win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:05', '2023-09-30 05:48:05');
INSERT INTO `wallet_changes` VALUES (396, 'Spaceman play', '-2', 0.00, 2.00, 0.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:17', '2023-09-30 05:48:17');
INSERT INTO `wallet_changes` VALUES (397, 'Spaceman win', '3.68', 0.00, 3.68, 1.68, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:38', '2023-09-30 05:48:38');
INSERT INTO `wallet_changes` VALUES (398, 'Spaceman win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:40', '2023-09-30 05:48:40');
INSERT INTO `wallet_changes` VALUES (399, 'Spaceman play', '-2', 0.00, 2.00, 0.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:53', '2023-09-30 05:48:53');
INSERT INTO `wallet_changes` VALUES (400, 'Spaceman win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:48:58', '2023-09-30 05:48:58');
INSERT INTO `wallet_changes` VALUES (401, 'Spaceman play', '-2', 0.00, 2.00, 0.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:49:12', '2023-09-30 05:49:12');
INSERT INTO `wallet_changes` VALUES (402, 'Spaceman win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:49:19', '2023-09-30 05:49:19');
INSERT INTO `wallet_changes` VALUES (403, 'Spaceman play', '-12', 0.00, 12.00, 0.00, 12.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:50:24', '2023-09-30 05:50:24');
INSERT INTO `wallet_changes` VALUES (404, 'Spaceman win', '16.44', 0.00, 16.44, 4.44, 12.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:50:37', '2023-09-30 05:50:37');
INSERT INTO `wallet_changes` VALUES (405, 'Spaceman win', '0.00', 0.00, 0.00, -12.00, 12.00, 'Spaceman', 'muriloecommerce2020@gmail.com', '2023-09-30 05:50:38', '2023-09-30 05:50:38');
INSERT INTO `wallet_changes` VALUES (406, 'Fortune Ox play', '-1.4', 0.00, 1.40, 0.00, 1.40, 'Fortune Ox', 'davi.automation2023@gmail.com', '2023-09-30 06:53:47', '2023-09-30 06:53:47');
INSERT INTO `wallet_changes` VALUES (407, 'Fortune Ox win', '0.00', 0.00, 0.00, -1.40, 1.40, 'Fortune Ox', 'davi.automation2023@gmail.com', '2023-09-30 06:53:48', '2023-09-30 06:53:48');
INSERT INTO `wallet_changes` VALUES (408, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:55:09', '2023-09-30 06:55:09');
INSERT INTO `wallet_changes` VALUES (409, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:55:17', '2023-09-30 06:55:17');
INSERT INTO `wallet_changes` VALUES (410, 'Aviator play', '-2', 0.00, 2.00, 0.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:56:22', '2023-09-30 06:56:22');
INSERT INTO `wallet_changes` VALUES (411, 'Aviator win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:56:32', '2023-09-30 06:56:32');
INSERT INTO `wallet_changes` VALUES (412, 'Aviator play', '-2', 0.00, 2.00, 0.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:56:38', '2023-09-30 06:56:38');
INSERT INTO `wallet_changes` VALUES (413, 'Aviator win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:56:53', '2023-09-30 06:56:53');
INSERT INTO `wallet_changes` VALUES (414, 'Aviator play', '-2', 0.00, 2.00, 0.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:00', '2023-09-30 06:57:00');
INSERT INTO `wallet_changes` VALUES (415, 'Aviator win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:16', '2023-09-30 06:57:16');
INSERT INTO `wallet_changes` VALUES (416, 'Aviator play', '-2', 0.00, 2.00, 0.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:21', '2023-09-30 06:57:21');
INSERT INTO `wallet_changes` VALUES (417, 'Aviator win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:32', '2023-09-30 06:57:32');
INSERT INTO `wallet_changes` VALUES (418, 'Aviator play', '-2', 0.00, 2.00, 0.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:39', '2023-09-30 06:57:39');
INSERT INTO `wallet_changes` VALUES (419, 'Aviator win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:57:54', '2023-09-30 06:57:54');
INSERT INTO `wallet_changes` VALUES (420, 'Aviator play', '-5', 0.00, 5.00, 0.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:00', '2023-09-30 06:58:00');
INSERT INTO `wallet_changes` VALUES (421, 'Aviator win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:09', '2023-09-30 06:58:09');
INSERT INTO `wallet_changes` VALUES (422, 'Aviator play', '-5', 0.00, 5.00, 0.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:14', '2023-09-30 06:58:14');
INSERT INTO `wallet_changes` VALUES (423, 'Aviator win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:34', '2023-09-30 06:58:34');
INSERT INTO `wallet_changes` VALUES (424, 'Aviator play', '-5', 0.00, 5.00, 0.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:39', '2023-09-30 06:58:39');
INSERT INTO `wallet_changes` VALUES (425, 'Aviator win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:49', '2023-09-30 06:58:49');
INSERT INTO `wallet_changes` VALUES (426, 'Aviator play', '-5', 0.00, 5.00, 0.00, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:58:57', '2023-09-30 06:58:57');
INSERT INTO `wallet_changes` VALUES (427, 'Aviator win', '38.20', 0.00, 38.20, 33.20, 5.00, 'Aviator', 'davi.automation2023@gmail.com', '2023-09-30 06:59:24', '2023-09-30 06:59:24');
INSERT INTO `wallet_changes` VALUES (428, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:02:28', '2023-09-30 07:02:28');
INSERT INTO `wallet_changes` VALUES (429, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:02:29', '2023-09-30 07:02:29');
INSERT INTO `wallet_changes` VALUES (430, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:02:31', '2023-09-30 07:02:31');
INSERT INTO `wallet_changes` VALUES (431, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:02:44', '2023-09-30 07:02:44');
INSERT INTO `wallet_changes` VALUES (432, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:02:52', '2023-09-30 07:02:52');
INSERT INTO `wallet_changes` VALUES (433, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:00', '2023-09-30 07:03:00');
INSERT INTO `wallet_changes` VALUES (434, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:07', '2023-09-30 07:03:07');
INSERT INTO `wallet_changes` VALUES (435, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:08', '2023-09-30 07:03:08');
INSERT INTO `wallet_changes` VALUES (436, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:14', '2023-09-30 07:03:14');
INSERT INTO `wallet_changes` VALUES (437, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:19', '2023-09-30 07:03:19');
INSERT INTO `wallet_changes` VALUES (438, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:24', '2023-09-30 07:03:24');
INSERT INTO `wallet_changes` VALUES (439, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:30', '2023-09-30 07:03:30');
INSERT INTO `wallet_changes` VALUES (440, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:45', '2023-09-30 07:03:45');
INSERT INTO `wallet_changes` VALUES (441, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:46', '2023-09-30 07:03:46');
INSERT INTO `wallet_changes` VALUES (442, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:50', '2023-09-30 07:03:50');
INSERT INTO `wallet_changes` VALUES (443, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:03:54', '2023-09-30 07:03:54');
INSERT INTO `wallet_changes` VALUES (444, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:03', '2023-09-30 07:04:03');
INSERT INTO `wallet_changes` VALUES (445, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:04', '2023-09-30 07:04:04');
INSERT INTO `wallet_changes` VALUES (446, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:05', '2023-09-30 07:04:05');
INSERT INTO `wallet_changes` VALUES (447, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:11', '2023-09-30 07:04:11');
INSERT INTO `wallet_changes` VALUES (448, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:11', '2023-09-30 07:04:11');
INSERT INTO `wallet_changes` VALUES (449, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:15', '2023-09-30 07:04:15');
INSERT INTO `wallet_changes` VALUES (450, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:23', '2023-09-30 07:04:23');
INSERT INTO `wallet_changes` VALUES (451, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:24', '2023-09-30 07:04:24');
INSERT INTO `wallet_changes` VALUES (452, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:26', '2023-09-30 07:04:26');
INSERT INTO `wallet_changes` VALUES (453, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:31', '2023-09-30 07:04:31');
INSERT INTO `wallet_changes` VALUES (454, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:32', '2023-09-30 07:04:32');
INSERT INTO `wallet_changes` VALUES (455, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:34', '2023-09-30 07:04:34');
INSERT INTO `wallet_changes` VALUES (456, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:40', '2023-09-30 07:04:40');
INSERT INTO `wallet_changes` VALUES (457, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:40', '2023-09-30 07:04:40');
INSERT INTO `wallet_changes` VALUES (458, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:42', '2023-09-30 07:04:42');
INSERT INTO `wallet_changes` VALUES (459, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:47', '2023-09-30 07:04:47');
INSERT INTO `wallet_changes` VALUES (460, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:04:53', '2023-09-30 07:04:53');
INSERT INTO `wallet_changes` VALUES (461, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:00', '2023-09-30 07:05:00');
INSERT INTO `wallet_changes` VALUES (462, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:01', '2023-09-30 07:05:01');
INSERT INTO `wallet_changes` VALUES (463, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:03', '2023-09-30 07:05:03');
INSERT INTO `wallet_changes` VALUES (464, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:10', '2023-09-30 07:05:10');
INSERT INTO `wallet_changes` VALUES (465, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:11', '2023-09-30 07:05:11');
INSERT INTO `wallet_changes` VALUES (466, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:13', '2023-09-30 07:05:13');
INSERT INTO `wallet_changes` VALUES (467, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:21', '2023-09-30 07:05:21');
INSERT INTO `wallet_changes` VALUES (468, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:21', '2023-09-30 07:05:21');
INSERT INTO `wallet_changes` VALUES (469, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:23', '2023-09-30 07:05:23');
INSERT INTO `wallet_changes` VALUES (470, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:32', '2023-09-30 07:05:32');
INSERT INTO `wallet_changes` VALUES (471, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:32', '2023-09-30 07:05:32');
INSERT INTO `wallet_changes` VALUES (472, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:33', '2023-09-30 07:05:33');
INSERT INTO `wallet_changes` VALUES (473, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:38', '2023-09-30 07:05:38');
INSERT INTO `wallet_changes` VALUES (474, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:43', '2023-09-30 07:05:43');
INSERT INTO `wallet_changes` VALUES (475, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:44', '2023-09-30 07:05:44');
INSERT INTO `wallet_changes` VALUES (476, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:47', '2023-09-30 07:05:47');
INSERT INTO `wallet_changes` VALUES (477, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:54', '2023-09-30 07:05:54');
INSERT INTO `wallet_changes` VALUES (478, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:54', '2023-09-30 07:05:54');
INSERT INTO `wallet_changes` VALUES (479, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:05:56', '2023-09-30 07:05:56');
INSERT INTO `wallet_changes` VALUES (480, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:03', '2023-09-30 07:06:03');
INSERT INTO `wallet_changes` VALUES (481, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:09', '2023-09-30 07:06:09');
INSERT INTO `wallet_changes` VALUES (482, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:10', '2023-09-30 07:06:10');
INSERT INTO `wallet_changes` VALUES (483, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:11', '2023-09-30 07:06:11');
INSERT INTO `wallet_changes` VALUES (484, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:16', '2023-09-30 07:06:16');
INSERT INTO `wallet_changes` VALUES (485, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:17', '2023-09-30 07:06:17');
INSERT INTO `wallet_changes` VALUES (486, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:19', '2023-09-30 07:06:19');
INSERT INTO `wallet_changes` VALUES (487, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:24', '2023-09-30 07:06:24');
INSERT INTO `wallet_changes` VALUES (488, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:25', '2023-09-30 07:06:25');
INSERT INTO `wallet_changes` VALUES (489, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:28', '2023-09-30 07:06:28');
INSERT INTO `wallet_changes` VALUES (490, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:37', '2023-09-30 07:06:37');
INSERT INTO `wallet_changes` VALUES (491, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:38', '2023-09-30 07:06:38');
INSERT INTO `wallet_changes` VALUES (492, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:39', '2023-09-30 07:06:39');
INSERT INTO `wallet_changes` VALUES (493, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:45', '2023-09-30 07:06:45');
INSERT INTO `wallet_changes` VALUES (494, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:50', '2023-09-30 07:06:50');
INSERT INTO `wallet_changes` VALUES (495, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:06:55', '2023-09-30 07:06:55');
INSERT INTO `wallet_changes` VALUES (496, 'Penalty Shoot Out Mobile win', '153.60', 0.00, 153.60, 148.60, 5.00, 'Penalty Shoot Out Mobile', 'davi.automation2023@gmail.com', '2023-09-30 07:07:03', '2023-09-30 07:07:03');
INSERT INTO `wallet_changes` VALUES (497, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:08:21', '2023-09-30 07:08:21');
INSERT INTO `wallet_changes` VALUES (498, 'Mines win', '1.19', 0.00, 1.19, 0.89, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:09:17', '2023-09-30 07:09:17');
INSERT INTO `wallet_changes` VALUES (499, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:09:45', '2023-09-30 07:09:45');
INSERT INTO `wallet_changes` VALUES (500, 'Mines win', '0.00', 0.00, 0.00, -0.30, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:09:51', '2023-09-30 07:09:51');
INSERT INTO `wallet_changes` VALUES (501, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:09:59', '2023-09-30 07:09:59');
INSERT INTO `wallet_changes` VALUES (502, 'Mines win', '0.00', 0.00, 0.00, -0.30, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:10:14', '2023-09-30 07:10:14');
INSERT INTO `wallet_changes` VALUES (503, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:10:23', '2023-09-30 07:10:23');
INSERT INTO `wallet_changes` VALUES (504, 'Mines win', '0.00', 0.00, 0.00, -0.30, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:10:26', '2023-09-30 07:10:26');
INSERT INTO `wallet_changes` VALUES (505, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:10:32', '2023-09-30 07:10:32');
INSERT INTO `wallet_changes` VALUES (506, 'Mines win', '0.00', 0.00, 0.00, -0.30, 0.30, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:10:53', '2023-09-30 07:10:53');
INSERT INTO `wallet_changes` VALUES (507, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:10', '2023-09-30 07:11:10');
INSERT INTO `wallet_changes` VALUES (508, 'Mines win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:21', '2023-09-30 07:11:21');
INSERT INTO `wallet_changes` VALUES (509, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:27', '2023-09-30 07:11:27');
INSERT INTO `wallet_changes` VALUES (510, 'Mines win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:45', '2023-09-30 07:11:45');
INSERT INTO `wallet_changes` VALUES (511, 'Mines play', '-20', 0.00, 20.00, 0.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:55', '2023-09-30 07:11:55');
INSERT INTO `wallet_changes` VALUES (512, 'Mines win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:11:58', '2023-09-30 07:11:58');
INSERT INTO `wallet_changes` VALUES (513, 'Mines play', '-20', 0.00, 20.00, 0.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:06', '2023-09-30 07:12:06');
INSERT INTO `wallet_changes` VALUES (514, 'Mines win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:11', '2023-09-30 07:12:11');
INSERT INTO `wallet_changes` VALUES (515, 'Mines play', '-20', 0.00, 20.00, 0.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:17', '2023-09-30 07:12:17');
INSERT INTO `wallet_changes` VALUES (516, 'Mines win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:29', '2023-09-30 07:12:29');
INSERT INTO `wallet_changes` VALUES (517, 'Mines play', '-20', 0.00, 20.00, 0.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:36', '2023-09-30 07:12:36');
INSERT INTO `wallet_changes` VALUES (518, 'Mines win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Mines', 'davi.automation2023@gmail.com', '2023-09-30 07:12:50', '2023-09-30 07:12:50');
INSERT INTO `wallet_changes` VALUES (519, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:16', '2023-09-30 07:14:16');
INSERT INTO `wallet_changes` VALUES (520, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:17', '2023-09-30 07:14:17');
INSERT INTO `wallet_changes` VALUES (521, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:27', '2023-09-30 07:14:27');
INSERT INTO `wallet_changes` VALUES (522, 'Fortune Rabbit win', '0.40', 0.00, 0.40, -1.60, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:28', '2023-09-30 07:14:28');
INSERT INTO `wallet_changes` VALUES (523, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:46', '2023-09-30 07:14:46');
INSERT INTO `wallet_changes` VALUES (524, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:47', '2023-09-30 07:14:47');
INSERT INTO `wallet_changes` VALUES (525, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:54', '2023-09-30 07:14:54');
INSERT INTO `wallet_changes` VALUES (526, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:55', '2023-09-30 07:14:55');
INSERT INTO `wallet_changes` VALUES (527, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:14:59', '2023-09-30 07:14:59');
INSERT INTO `wallet_changes` VALUES (528, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:00', '2023-09-30 07:15:00');
INSERT INTO `wallet_changes` VALUES (529, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:05', '2023-09-30 07:15:05');
INSERT INTO `wallet_changes` VALUES (530, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:06', '2023-09-30 07:15:06');
INSERT INTO `wallet_changes` VALUES (531, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:11', '2023-09-30 07:15:11');
INSERT INTO `wallet_changes` VALUES (532, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:12', '2023-09-30 07:15:12');
INSERT INTO `wallet_changes` VALUES (533, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:16', '2023-09-30 07:15:16');
INSERT INTO `wallet_changes` VALUES (534, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:17', '2023-09-30 07:15:17');
INSERT INTO `wallet_changes` VALUES (535, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:22', '2023-09-30 07:15:22');
INSERT INTO `wallet_changes` VALUES (536, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:23', '2023-09-30 07:15:23');
INSERT INTO `wallet_changes` VALUES (537, 'Fortune Rabbit play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:29', '2023-09-30 07:15:29');
INSERT INTO `wallet_changes` VALUES (538, 'Fortune Rabbit win', '7.00', 0.00, 7.00, 5.00, 2.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:15:30', '2023-09-30 07:15:30');
INSERT INTO `wallet_changes` VALUES (539, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:02', '2023-09-30 07:16:02');
INSERT INTO `wallet_changes` VALUES (540, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:03', '2023-09-30 07:16:03');
INSERT INTO `wallet_changes` VALUES (541, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:08', '2023-09-30 07:16:08');
INSERT INTO `wallet_changes` VALUES (542, 'Fortune Rabbit win', '10.00', 0.00, 10.00, -10.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:09', '2023-09-30 07:16:09');
INSERT INTO `wallet_changes` VALUES (543, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:20', '2023-09-30 07:16:20');
INSERT INTO `wallet_changes` VALUES (544, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:21', '2023-09-30 07:16:21');
INSERT INTO `wallet_changes` VALUES (545, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:25', '2023-09-30 07:16:25');
INSERT INTO `wallet_changes` VALUES (546, 'Fortune Rabbit win', '340.00', 0.00, 340.00, 320.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:26', '2023-09-30 07:16:26');
INSERT INTO `wallet_changes` VALUES (547, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:39', '2023-09-30 07:16:39');
INSERT INTO `wallet_changes` VALUES (548, 'Fortune Rabbit win', '4.00', 0.00, 4.00, -16.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:41', '2023-09-30 07:16:41');
INSERT INTO `wallet_changes` VALUES (549, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:56', '2023-09-30 07:16:56');
INSERT INTO `wallet_changes` VALUES (550, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:16:57', '2023-09-30 07:16:57');
INSERT INTO `wallet_changes` VALUES (551, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:02', '2023-09-30 07:17:02');
INSERT INTO `wallet_changes` VALUES (552, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:03', '2023-09-30 07:17:03');
INSERT INTO `wallet_changes` VALUES (553, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:07', '2023-09-30 07:17:07');
INSERT INTO `wallet_changes` VALUES (554, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:08', '2023-09-30 07:17:08');
INSERT INTO `wallet_changes` VALUES (555, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:13', '2023-09-30 07:17:13');
INSERT INTO `wallet_changes` VALUES (556, 'Fortune Rabbit win', '12.00', 0.00, 12.00, -8.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:14', '2023-09-30 07:17:14');
INSERT INTO `wallet_changes` VALUES (557, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:22', '2023-09-30 07:17:22');
INSERT INTO `wallet_changes` VALUES (558, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:23', '2023-09-30 07:17:23');
INSERT INTO `wallet_changes` VALUES (559, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:27', '2023-09-30 07:17:27');
INSERT INTO `wallet_changes` VALUES (560, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:28', '2023-09-30 07:17:28');
INSERT INTO `wallet_changes` VALUES (561, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:33', '2023-09-30 07:17:33');
INSERT INTO `wallet_changes` VALUES (562, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:34', '2023-09-30 07:17:34');
INSERT INTO `wallet_changes` VALUES (563, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:38', '2023-09-30 07:17:38');
INSERT INTO `wallet_changes` VALUES (564, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:39', '2023-09-30 07:17:39');
INSERT INTO `wallet_changes` VALUES (565, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:43', '2023-09-30 07:17:43');
INSERT INTO `wallet_changes` VALUES (566, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:44', '2023-09-30 07:17:44');
INSERT INTO `wallet_changes` VALUES (567, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:48', '2023-09-30 07:17:48');
INSERT INTO `wallet_changes` VALUES (568, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:49', '2023-09-30 07:17:49');
INSERT INTO `wallet_changes` VALUES (569, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:53', '2023-09-30 07:17:53');
INSERT INTO `wallet_changes` VALUES (570, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:54', '2023-09-30 07:17:54');
INSERT INTO `wallet_changes` VALUES (571, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:58', '2023-09-30 07:17:58');
INSERT INTO `wallet_changes` VALUES (572, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:17:59', '2023-09-30 07:17:59');
INSERT INTO `wallet_changes` VALUES (573, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:18:03', '2023-09-30 07:18:03');
INSERT INTO `wallet_changes` VALUES (574, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:18:04', '2023-09-30 07:18:04');
INSERT INTO `wallet_changes` VALUES (575, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:18:10', '2023-09-30 07:18:10');
INSERT INTO `wallet_changes` VALUES (576, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:18:11', '2023-09-30 07:18:11');
INSERT INTO `wallet_changes` VALUES (577, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:05', '2023-09-30 07:19:05');
INSERT INTO `wallet_changes` VALUES (578, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -14.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:06', '2023-09-30 07:19:06');
INSERT INTO `wallet_changes` VALUES (579, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:13', '2023-09-30 07:19:13');
INSERT INTO `wallet_changes` VALUES (580, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:14', '2023-09-30 07:19:14');
INSERT INTO `wallet_changes` VALUES (581, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:18', '2023-09-30 07:19:18');
INSERT INTO `wallet_changes` VALUES (582, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:19', '2023-09-30 07:19:19');
INSERT INTO `wallet_changes` VALUES (583, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:22', '2023-09-30 07:19:22');
INSERT INTO `wallet_changes` VALUES (584, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:23', '2023-09-30 07:19:23');
INSERT INTO `wallet_changes` VALUES (585, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:27', '2023-09-30 07:19:27');
INSERT INTO `wallet_changes` VALUES (586, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:28', '2023-09-30 07:19:28');
INSERT INTO `wallet_changes` VALUES (587, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:32', '2023-09-30 07:19:32');
INSERT INTO `wallet_changes` VALUES (588, 'Fortune Rabbit win', '18.00', 0.00, 18.00, -2.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:33', '2023-09-30 07:19:33');
INSERT INTO `wallet_changes` VALUES (589, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:38', '2023-09-30 07:19:38');
INSERT INTO `wallet_changes` VALUES (590, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:39', '2023-09-30 07:19:39');
INSERT INTO `wallet_changes` VALUES (591, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:44', '2023-09-30 07:19:44');
INSERT INTO `wallet_changes` VALUES (592, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -14.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:45', '2023-09-30 07:19:45');
INSERT INTO `wallet_changes` VALUES (593, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:51', '2023-09-30 07:19:51');
INSERT INTO `wallet_changes` VALUES (594, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:52', '2023-09-30 07:19:52');
INSERT INTO `wallet_changes` VALUES (595, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:57', '2023-09-30 07:19:57');
INSERT INTO `wallet_changes` VALUES (596, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:19:57', '2023-09-30 07:19:57');
INSERT INTO `wallet_changes` VALUES (597, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:05', '2023-09-30 07:20:05');
INSERT INTO `wallet_changes` VALUES (598, 'Fortune Rabbit win', '8.00', 0.00, 8.00, -12.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:06', '2023-09-30 07:20:06');
INSERT INTO `wallet_changes` VALUES (599, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:13', '2023-09-30 07:20:13');
INSERT INTO `wallet_changes` VALUES (600, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:14', '2023-09-30 07:20:14');
INSERT INTO `wallet_changes` VALUES (601, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:18', '2023-09-30 07:20:18');
INSERT INTO `wallet_changes` VALUES (602, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:19', '2023-09-30 07:20:19');
INSERT INTO `wallet_changes` VALUES (603, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:24', '2023-09-30 07:20:24');
INSERT INTO `wallet_changes` VALUES (604, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:25', '2023-09-30 07:20:25');
INSERT INTO `wallet_changes` VALUES (605, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:28', '2023-09-30 07:20:28');
INSERT INTO `wallet_changes` VALUES (606, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:29', '2023-09-30 07:20:29');
INSERT INTO `wallet_changes` VALUES (607, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:41', '2023-09-30 07:20:41');
INSERT INTO `wallet_changes` VALUES (608, 'Fortune Rabbit win', '9.00', 0.00, 9.00, -1.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:42', '2023-09-30 07:20:42');
INSERT INTO `wallet_changes` VALUES (609, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:47', '2023-09-30 07:20:47');
INSERT INTO `wallet_changes` VALUES (610, 'Fortune Rabbit win', '2.00', 0.00, 2.00, -8.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:48', '2023-09-30 07:20:48');
INSERT INTO `wallet_changes` VALUES (611, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:54', '2023-09-30 07:20:54');
INSERT INTO `wallet_changes` VALUES (612, 'Fortune Rabbit win', '5.00', 0.00, 5.00, -5.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:20:55', '2023-09-30 07:20:55');
INSERT INTO `wallet_changes` VALUES (613, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:00', '2023-09-30 07:21:00');
INSERT INTO `wallet_changes` VALUES (614, 'Fortune Rabbit win', '4.00', 0.00, 4.00, -6.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:01', '2023-09-30 07:21:01');
INSERT INTO `wallet_changes` VALUES (615, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:09', '2023-09-30 07:21:09');
INSERT INTO `wallet_changes` VALUES (616, 'Fortune Rabbit win', '2.00', 0.00, 2.00, -8.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:10', '2023-09-30 07:21:10');
INSERT INTO `wallet_changes` VALUES (617, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:15', '2023-09-30 07:21:15');
INSERT INTO `wallet_changes` VALUES (618, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:16', '2023-09-30 07:21:16');
INSERT INTO `wallet_changes` VALUES (619, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:19', '2023-09-30 07:21:19');
INSERT INTO `wallet_changes` VALUES (620, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:20', '2023-09-30 07:21:20');
INSERT INTO `wallet_changes` VALUES (621, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:24', '2023-09-30 07:21:24');
INSERT INTO `wallet_changes` VALUES (622, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:25', '2023-09-30 07:21:25');
INSERT INTO `wallet_changes` VALUES (623, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:29', '2023-09-30 07:21:29');
INSERT INTO `wallet_changes` VALUES (624, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:30', '2023-09-30 07:21:30');
INSERT INTO `wallet_changes` VALUES (625, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:40', '2023-09-30 07:21:40');
INSERT INTO `wallet_changes` VALUES (626, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:41', '2023-09-30 07:21:41');
INSERT INTO `wallet_changes` VALUES (627, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:45', '2023-09-30 07:21:45');
INSERT INTO `wallet_changes` VALUES (628, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:46', '2023-09-30 07:21:46');
INSERT INTO `wallet_changes` VALUES (629, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:50', '2023-09-30 07:21:50');
INSERT INTO `wallet_changes` VALUES (630, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:51', '2023-09-30 07:21:51');
INSERT INTO `wallet_changes` VALUES (631, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:55', '2023-09-30 07:21:55');
INSERT INTO `wallet_changes` VALUES (632, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:21:56', '2023-09-30 07:21:56');
INSERT INTO `wallet_changes` VALUES (633, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:00', '2023-09-30 07:22:00');
INSERT INTO `wallet_changes` VALUES (634, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:01', '2023-09-30 07:22:01');
INSERT INTO `wallet_changes` VALUES (635, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:04', '2023-09-30 07:22:04');
INSERT INTO `wallet_changes` VALUES (636, 'Fortune Rabbit win', '25.00', 0.00, 25.00, 15.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:05', '2023-09-30 07:22:05');
INSERT INTO `wallet_changes` VALUES (637, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:22', '2023-09-30 07:22:22');
INSERT INTO `wallet_changes` VALUES (638, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:23', '2023-09-30 07:22:23');
INSERT INTO `wallet_changes` VALUES (639, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:26', '2023-09-30 07:22:26');
INSERT INTO `wallet_changes` VALUES (640, 'Fortune Rabbit win', '165.00', 0.00, 165.00, 155.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:27', '2023-09-30 07:22:27');
INSERT INTO `wallet_changes` VALUES (641, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:37', '2023-09-30 07:22:37');
INSERT INTO `wallet_changes` VALUES (642, 'Fortune Rabbit win', '3.00', 0.00, 3.00, -7.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:38', '2023-09-30 07:22:38');
INSERT INTO `wallet_changes` VALUES (643, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:42', '2023-09-30 07:22:42');
INSERT INTO `wallet_changes` VALUES (644, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:43', '2023-09-30 07:22:43');
INSERT INTO `wallet_changes` VALUES (645, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:47', '2023-09-30 07:22:47');
INSERT INTO `wallet_changes` VALUES (646, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:48', '2023-09-30 07:22:48');
INSERT INTO `wallet_changes` VALUES (647, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:51', '2023-09-30 07:22:51');
INSERT INTO `wallet_changes` VALUES (648, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:52', '2023-09-30 07:22:52');
INSERT INTO `wallet_changes` VALUES (649, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:56', '2023-09-30 07:22:56');
INSERT INTO `wallet_changes` VALUES (650, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:22:57', '2023-09-30 07:22:57');
INSERT INTO `wallet_changes` VALUES (651, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:23:01', '2023-09-30 07:23:01');
INSERT INTO `wallet_changes` VALUES (652, 'Fortune Rabbit win', '615.00', 0.00, 615.00, 605.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 07:23:02', '2023-09-30 07:23:02');
INSERT INTO `wallet_changes` VALUES (653, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'davi.automation2023@gmail.com', '2023-09-30 07:25:22', '2023-09-30 07:25:22');
INSERT INTO `wallet_changes` VALUES (654, 'JetX win', '0.35', 0.00, 0.35, 0.15, 0.20, 'JetX', 'davi.automation2023@gmail.com', '2023-09-30 07:25:37', '2023-09-30 07:25:37');
INSERT INTO `wallet_changes` VALUES (655, 'JetX win', '0.00', 0.00, 0.00, -0.20, 0.20, 'JetX', 'davi.automation2023@gmail.com', '2023-09-30 07:26:13', '2023-09-30 07:26:13');
INSERT INTO `wallet_changes` VALUES (656, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:25', '2023-09-30 07:27:25');
INSERT INTO `wallet_changes` VALUES (657, 'Fortune Mouse win', '2.50', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:25', '2023-09-30 07:27:25');
INSERT INTO `wallet_changes` VALUES (658, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:41', '2023-09-30 07:27:41');
INSERT INTO `wallet_changes` VALUES (659, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:42', '2023-09-30 07:27:42');
INSERT INTO `wallet_changes` VALUES (660, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:46', '2023-09-30 07:27:46');
INSERT INTO `wallet_changes` VALUES (661, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:47', '2023-09-30 07:27:47');
INSERT INTO `wallet_changes` VALUES (662, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:53', '2023-09-30 07:27:53');
INSERT INTO `wallet_changes` VALUES (663, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:27:54', '2023-09-30 07:27:54');
INSERT INTO `wallet_changes` VALUES (664, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:01', '2023-09-30 07:28:01');
INSERT INTO `wallet_changes` VALUES (665, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:02', '2023-09-30 07:28:02');
INSERT INTO `wallet_changes` VALUES (666, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:07', '2023-09-30 07:28:07');
INSERT INTO `wallet_changes` VALUES (667, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:08', '2023-09-30 07:28:08');
INSERT INTO `wallet_changes` VALUES (668, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:12', '2023-09-30 07:28:12');
INSERT INTO `wallet_changes` VALUES (669, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:13', '2023-09-30 07:28:13');
INSERT INTO `wallet_changes` VALUES (670, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:19', '2023-09-30 07:28:19');
INSERT INTO `wallet_changes` VALUES (671, 'Fortune Mouse win', '2.50', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:20', '2023-09-30 07:28:20');
INSERT INTO `wallet_changes` VALUES (672, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:26', '2023-09-30 07:28:26');
INSERT INTO `wallet_changes` VALUES (673, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:27', '2023-09-30 07:28:27');
INSERT INTO `wallet_changes` VALUES (674, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:40', '2023-09-30 07:28:40');
INSERT INTO `wallet_changes` VALUES (675, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:41', '2023-09-30 07:28:41');
INSERT INTO `wallet_changes` VALUES (676, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:46', '2023-09-30 07:28:46');
INSERT INTO `wallet_changes` VALUES (677, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:47', '2023-09-30 07:28:47');
INSERT INTO `wallet_changes` VALUES (678, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:52', '2023-09-30 07:28:52');
INSERT INTO `wallet_changes` VALUES (679, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:28:53', '2023-09-30 07:28:53');
INSERT INTO `wallet_changes` VALUES (680, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:02', '2023-09-30 07:29:02');
INSERT INTO `wallet_changes` VALUES (681, 'Fortune Mouse win', '1.50', 0.00, 1.50, -1.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:03', '2023-09-30 07:29:03');
INSERT INTO `wallet_changes` VALUES (682, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:12', '2023-09-30 07:29:12');
INSERT INTO `wallet_changes` VALUES (683, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:13', '2023-09-30 07:29:13');
INSERT INTO `wallet_changes` VALUES (684, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:19', '2023-09-30 07:29:19');
INSERT INTO `wallet_changes` VALUES (685, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:20', '2023-09-30 07:29:20');
INSERT INTO `wallet_changes` VALUES (686, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:26', '2023-09-30 07:29:26');
INSERT INTO `wallet_changes` VALUES (687, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:27', '2023-09-30 07:29:27');
INSERT INTO `wallet_changes` VALUES (688, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:31', '2023-09-30 07:29:31');
INSERT INTO `wallet_changes` VALUES (689, 'Fortune Mouse win', '2.50', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:32', '2023-09-30 07:29:32');
INSERT INTO `wallet_changes` VALUES (690, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:38', '2023-09-30 07:29:38');
INSERT INTO `wallet_changes` VALUES (691, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:39', '2023-09-30 07:29:39');
INSERT INTO `wallet_changes` VALUES (692, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:45', '2023-09-30 07:29:45');
INSERT INTO `wallet_changes` VALUES (693, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:46', '2023-09-30 07:29:46');
INSERT INTO `wallet_changes` VALUES (694, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:50', '2023-09-30 07:29:50');
INSERT INTO `wallet_changes` VALUES (695, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:52', '2023-09-30 07:29:52');
INSERT INTO `wallet_changes` VALUES (696, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:55', '2023-09-30 07:29:55');
INSERT INTO `wallet_changes` VALUES (697, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:29:56', '2023-09-30 07:29:56');
INSERT INTO `wallet_changes` VALUES (698, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:00', '2023-09-30 07:30:00');
INSERT INTO `wallet_changes` VALUES (699, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:01', '2023-09-30 07:30:01');
INSERT INTO `wallet_changes` VALUES (700, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:06', '2023-09-30 07:30:06');
INSERT INTO `wallet_changes` VALUES (701, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:07', '2023-09-30 07:30:07');
INSERT INTO `wallet_changes` VALUES (702, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:11', '2023-09-30 07:30:11');
INSERT INTO `wallet_changes` VALUES (703, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:12', '2023-09-30 07:30:12');
INSERT INTO `wallet_changes` VALUES (704, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:17', '2023-09-30 07:30:17');
INSERT INTO `wallet_changes` VALUES (705, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:17', '2023-09-30 07:30:17');
INSERT INTO `wallet_changes` VALUES (706, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:21', '2023-09-30 07:30:21');
INSERT INTO `wallet_changes` VALUES (707, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:22', '2023-09-30 07:30:22');
INSERT INTO `wallet_changes` VALUES (708, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:27', '2023-09-30 07:30:27');
INSERT INTO `wallet_changes` VALUES (709, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:28', '2023-09-30 07:30:28');
INSERT INTO `wallet_changes` VALUES (710, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:32', '2023-09-30 07:30:32');
INSERT INTO `wallet_changes` VALUES (711, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:33', '2023-09-30 07:30:33');
INSERT INTO `wallet_changes` VALUES (712, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:37', '2023-09-30 07:30:37');
INSERT INTO `wallet_changes` VALUES (713, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:38', '2023-09-30 07:30:38');
INSERT INTO `wallet_changes` VALUES (714, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:42', '2023-09-30 07:30:42');
INSERT INTO `wallet_changes` VALUES (715, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:43', '2023-09-30 07:30:43');
INSERT INTO `wallet_changes` VALUES (716, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:47', '2023-09-30 07:30:47');
INSERT INTO `wallet_changes` VALUES (717, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:48', '2023-09-30 07:30:48');
INSERT INTO `wallet_changes` VALUES (718, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:53', '2023-09-30 07:30:53');
INSERT INTO `wallet_changes` VALUES (719, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:54', '2023-09-30 07:30:54');
INSERT INTO `wallet_changes` VALUES (720, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:57', '2023-09-30 07:30:57');
INSERT INTO `wallet_changes` VALUES (721, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:30:58', '2023-09-30 07:30:58');
INSERT INTO `wallet_changes` VALUES (722, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:02', '2023-09-30 07:31:02');
INSERT INTO `wallet_changes` VALUES (723, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:03', '2023-09-30 07:31:03');
INSERT INTO `wallet_changes` VALUES (724, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:07', '2023-09-30 07:31:07');
INSERT INTO `wallet_changes` VALUES (725, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:08', '2023-09-30 07:31:08');
INSERT INTO `wallet_changes` VALUES (726, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:14', '2023-09-30 07:31:14');
INSERT INTO `wallet_changes` VALUES (727, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.50, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:15', '2023-09-30 07:31:15');
INSERT INTO `wallet_changes` VALUES (728, 'Fortune Mouse play', '-2.5', 0.00, 2.50, 0.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:19', '2023-09-30 07:31:19');
INSERT INTO `wallet_changes` VALUES (729, 'Fortune Mouse win', '16.50', 0.00, 16.50, 14.00, 2.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:20', '2023-09-30 07:31:20');
INSERT INTO `wallet_changes` VALUES (730, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:42', '2023-09-30 07:31:42');
INSERT INTO `wallet_changes` VALUES (731, 'Fortune Mouse win', '20.00', 0.00, 20.00, 7.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:43', '2023-09-30 07:31:43');
INSERT INTO `wallet_changes` VALUES (732, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:52', '2023-09-30 07:31:52');
INSERT INTO `wallet_changes` VALUES (733, 'Fortune Mouse win', '7.50', 0.00, 7.50, -5.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:31:53', '2023-09-30 07:31:53');
INSERT INTO `wallet_changes` VALUES (734, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:01', '2023-09-30 07:32:01');
INSERT INTO `wallet_changes` VALUES (735, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:02', '2023-09-30 07:32:02');
INSERT INTO `wallet_changes` VALUES (736, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:06', '2023-09-30 07:32:06');
INSERT INTO `wallet_changes` VALUES (737, 'Fortune Mouse win', '7.50', 0.00, 7.50, -5.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:07', '2023-09-30 07:32:07');
INSERT INTO `wallet_changes` VALUES (738, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:12', '2023-09-30 07:32:12');
INSERT INTO `wallet_changes` VALUES (739, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:13', '2023-09-30 07:32:13');
INSERT INTO `wallet_changes` VALUES (740, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:17', '2023-09-30 07:32:17');
INSERT INTO `wallet_changes` VALUES (741, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:18', '2023-09-30 07:32:18');
INSERT INTO `wallet_changes` VALUES (742, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:22', '2023-09-30 07:32:22');
INSERT INTO `wallet_changes` VALUES (743, 'Fortune Mouse win', '37.50', 0.00, 37.50, 25.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:23', '2023-09-30 07:32:23');
INSERT INTO `wallet_changes` VALUES (744, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:29', '2023-09-30 07:32:29');
INSERT INTO `wallet_changes` VALUES (745, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:30', '2023-09-30 07:32:30');
INSERT INTO `wallet_changes` VALUES (746, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:35', '2023-09-30 07:32:35');
INSERT INTO `wallet_changes` VALUES (747, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:36', '2023-09-30 07:32:36');
INSERT INTO `wallet_changes` VALUES (748, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:41', '2023-09-30 07:32:41');
INSERT INTO `wallet_changes` VALUES (749, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:42', '2023-09-30 07:32:42');
INSERT INTO `wallet_changes` VALUES (750, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:46', '2023-09-30 07:32:46');
INSERT INTO `wallet_changes` VALUES (751, 'Fortune Mouse win', '12.50', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:47', '2023-09-30 07:32:47');
INSERT INTO `wallet_changes` VALUES (752, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:55', '2023-09-30 07:32:55');
INSERT INTO `wallet_changes` VALUES (753, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:32:56', '2023-09-30 07:32:56');
INSERT INTO `wallet_changes` VALUES (754, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:00', '2023-09-30 07:33:00');
INSERT INTO `wallet_changes` VALUES (755, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:01', '2023-09-30 07:33:01');
INSERT INTO `wallet_changes` VALUES (756, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:05', '2023-09-30 07:33:05');
INSERT INTO `wallet_changes` VALUES (757, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:06', '2023-09-30 07:33:06');
INSERT INTO `wallet_changes` VALUES (758, 'Fortune Mouse play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:11', '2023-09-30 07:33:11');
INSERT INTO `wallet_changes` VALUES (759, 'Fortune Mouse win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:12', '2023-09-30 07:33:12');
INSERT INTO `wallet_changes` VALUES (760, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:28', '2023-09-30 07:33:28');
INSERT INTO `wallet_changes` VALUES (761, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:29', '2023-09-30 07:33:29');
INSERT INTO `wallet_changes` VALUES (762, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:33', '2023-09-30 07:33:33');
INSERT INTO `wallet_changes` VALUES (763, 'Fortune Mouse win', '20.00', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:34', '2023-09-30 07:33:34');
INSERT INTO `wallet_changes` VALUES (764, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:39', '2023-09-30 07:33:39');
INSERT INTO `wallet_changes` VALUES (765, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:40', '2023-09-30 07:33:40');
INSERT INTO `wallet_changes` VALUES (766, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:44', '2023-09-30 07:33:44');
INSERT INTO `wallet_changes` VALUES (767, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:45', '2023-09-30 07:33:45');
INSERT INTO `wallet_changes` VALUES (768, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:49', '2023-09-30 07:33:49');
INSERT INTO `wallet_changes` VALUES (769, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:50', '2023-09-30 07:33:50');
INSERT INTO `wallet_changes` VALUES (770, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:54', '2023-09-30 07:33:54');
INSERT INTO `wallet_changes` VALUES (771, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:55', '2023-09-30 07:33:55');
INSERT INTO `wallet_changes` VALUES (772, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:33:59', '2023-09-30 07:33:59');
INSERT INTO `wallet_changes` VALUES (773, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:00', '2023-09-30 07:34:00');
INSERT INTO `wallet_changes` VALUES (774, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:04', '2023-09-30 07:34:04');
INSERT INTO `wallet_changes` VALUES (775, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:05', '2023-09-30 07:34:05');
INSERT INTO `wallet_changes` VALUES (776, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:10', '2023-09-30 07:34:10');
INSERT INTO `wallet_changes` VALUES (777, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:11', '2023-09-30 07:34:11');
INSERT INTO `wallet_changes` VALUES (778, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:24', '2023-09-30 07:34:24');
INSERT INTO `wallet_changes` VALUES (779, 'Fortune Mouse win', '20.00', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:25', '2023-09-30 07:34:25');
INSERT INTO `wallet_changes` VALUES (780, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:30', '2023-09-30 07:34:30');
INSERT INTO `wallet_changes` VALUES (781, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:31', '2023-09-30 07:34:31');
INSERT INTO `wallet_changes` VALUES (782, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:35', '2023-09-30 07:34:35');
INSERT INTO `wallet_changes` VALUES (783, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:36', '2023-09-30 07:34:36');
INSERT INTO `wallet_changes` VALUES (784, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:40', '2023-09-30 07:34:40');
INSERT INTO `wallet_changes` VALUES (785, 'Fortune Mouse win', '60.00', 0.00, 60.00, 40.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:41', '2023-09-30 07:34:41');
INSERT INTO `wallet_changes` VALUES (786, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:50', '2023-09-30 07:34:50');
INSERT INTO `wallet_changes` VALUES (787, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:51', '2023-09-30 07:34:51');
INSERT INTO `wallet_changes` VALUES (788, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:55', '2023-09-30 07:34:55');
INSERT INTO `wallet_changes` VALUES (789, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:34:56', '2023-09-30 07:34:56');
INSERT INTO `wallet_changes` VALUES (790, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:00', '2023-09-30 07:35:00');
INSERT INTO `wallet_changes` VALUES (791, 'Fortune Mouse win', '20.00', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:01', '2023-09-30 07:35:01');
INSERT INTO `wallet_changes` VALUES (792, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:07', '2023-09-30 07:35:07');
INSERT INTO `wallet_changes` VALUES (793, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:08', '2023-09-30 07:35:08');
INSERT INTO `wallet_changes` VALUES (794, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:12', '2023-09-30 07:35:12');
INSERT INTO `wallet_changes` VALUES (795, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:13', '2023-09-30 07:35:13');
INSERT INTO `wallet_changes` VALUES (796, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:17', '2023-09-30 07:35:17');
INSERT INTO `wallet_changes` VALUES (797, 'Fortune Mouse win', '60.00', 0.00, 60.00, 40.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:18', '2023-09-30 07:35:18');
INSERT INTO `wallet_changes` VALUES (798, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:26', '2023-09-30 07:35:26');
INSERT INTO `wallet_changes` VALUES (799, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:27', '2023-09-30 07:35:27');
INSERT INTO `wallet_changes` VALUES (800, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:30', '2023-09-30 07:35:30');
INSERT INTO `wallet_changes` VALUES (801, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:31', '2023-09-30 07:35:31');
INSERT INTO `wallet_changes` VALUES (802, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:35', '2023-09-30 07:35:35');
INSERT INTO `wallet_changes` VALUES (803, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:36', '2023-09-30 07:35:36');
INSERT INTO `wallet_changes` VALUES (804, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:40', '2023-09-30 07:35:40');
INSERT INTO `wallet_changes` VALUES (805, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:41', '2023-09-30 07:35:41');
INSERT INTO `wallet_changes` VALUES (806, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:47', '2023-09-30 07:35:47');
INSERT INTO `wallet_changes` VALUES (807, 'Fortune Mouse win', '120.00', 0.00, 120.00, 100.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:35:48', '2023-09-30 07:35:48');
INSERT INTO `wallet_changes` VALUES (808, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:04', '2023-09-30 07:36:04');
INSERT INTO `wallet_changes` VALUES (809, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:05', '2023-09-30 07:36:05');
INSERT INTO `wallet_changes` VALUES (810, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:10', '2023-09-30 07:36:10');
INSERT INTO `wallet_changes` VALUES (811, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:11', '2023-09-30 07:36:11');
INSERT INTO `wallet_changes` VALUES (812, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:17', '2023-09-30 07:36:17');
INSERT INTO `wallet_changes` VALUES (813, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:18', '2023-09-30 07:36:18');
INSERT INTO `wallet_changes` VALUES (814, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:24', '2023-09-30 07:36:24');
INSERT INTO `wallet_changes` VALUES (815, 'Fortune Mouse win', '12.00', 0.00, 12.00, -8.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:25', '2023-09-30 07:36:25');
INSERT INTO `wallet_changes` VALUES (816, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:31', '2023-09-30 07:36:31');
INSERT INTO `wallet_changes` VALUES (817, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:32', '2023-09-30 07:36:32');
INSERT INTO `wallet_changes` VALUES (818, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:36', '2023-09-30 07:36:36');
INSERT INTO `wallet_changes` VALUES (819, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:37', '2023-09-30 07:36:37');
INSERT INTO `wallet_changes` VALUES (820, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:41', '2023-09-30 07:36:41');
INSERT INTO `wallet_changes` VALUES (821, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:42', '2023-09-30 07:36:42');
INSERT INTO `wallet_changes` VALUES (822, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:45', '2023-09-30 07:36:45');
INSERT INTO `wallet_changes` VALUES (823, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:46', '2023-09-30 07:36:46');
INSERT INTO `wallet_changes` VALUES (824, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:50', '2023-09-30 07:36:50');
INSERT INTO `wallet_changes` VALUES (825, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:51', '2023-09-30 07:36:51');
INSERT INTO `wallet_changes` VALUES (826, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:55', '2023-09-30 07:36:55');
INSERT INTO `wallet_changes` VALUES (827, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:36:56', '2023-09-30 07:36:56');
INSERT INTO `wallet_changes` VALUES (828, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:00', '2023-09-30 07:37:00');
INSERT INTO `wallet_changes` VALUES (829, 'Fortune Mouse win', '120.00', 0.00, 120.00, 100.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:01', '2023-09-30 07:37:01');
INSERT INTO `wallet_changes` VALUES (830, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:16', '2023-09-30 07:37:16');
INSERT INTO `wallet_changes` VALUES (831, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:17', '2023-09-30 07:37:17');
INSERT INTO `wallet_changes` VALUES (832, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:22', '2023-09-30 07:37:22');
INSERT INTO `wallet_changes` VALUES (833, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:23', '2023-09-30 07:37:23');
INSERT INTO `wallet_changes` VALUES (834, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:28', '2023-09-30 07:37:28');
INSERT INTO `wallet_changes` VALUES (835, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:29', '2023-09-30 07:37:29');
INSERT INTO `wallet_changes` VALUES (836, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:33', '2023-09-30 07:37:33');
INSERT INTO `wallet_changes` VALUES (837, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:34', '2023-09-30 07:37:34');
INSERT INTO `wallet_changes` VALUES (838, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:38', '2023-09-30 07:37:38');
INSERT INTO `wallet_changes` VALUES (839, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:39', '2023-09-30 07:37:39');
INSERT INTO `wallet_changes` VALUES (840, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:43', '2023-09-30 07:37:43');
INSERT INTO `wallet_changes` VALUES (841, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:44', '2023-09-30 07:37:44');
INSERT INTO `wallet_changes` VALUES (842, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:48', '2023-09-30 07:37:48');
INSERT INTO `wallet_changes` VALUES (843, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:49', '2023-09-30 07:37:49');
INSERT INTO `wallet_changes` VALUES (844, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:53', '2023-09-30 07:37:53');
INSERT INTO `wallet_changes` VALUES (845, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:54', '2023-09-30 07:37:54');
INSERT INTO `wallet_changes` VALUES (846, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:57', '2023-09-30 07:37:57');
INSERT INTO `wallet_changes` VALUES (847, 'Fortune Mouse win', '400.00', 0.00, 400.00, 380.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:37:58', '2023-09-30 07:37:58');
INSERT INTO `wallet_changes` VALUES (848, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:25', '2023-09-30 07:38:25');
INSERT INTO `wallet_changes` VALUES (849, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:26', '2023-09-30 07:38:26');
INSERT INTO `wallet_changes` VALUES (850, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:30', '2023-09-30 07:38:30');
INSERT INTO `wallet_changes` VALUES (851, 'Fortune Mouse win', '200.00', 0.00, 200.00, 180.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:31', '2023-09-30 07:38:31');
INSERT INTO `wallet_changes` VALUES (852, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:53', '2023-09-30 07:38:53');
INSERT INTO `wallet_changes` VALUES (853, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:54', '2023-09-30 07:38:54');
INSERT INTO `wallet_changes` VALUES (854, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:58', '2023-09-30 07:38:58');
INSERT INTO `wallet_changes` VALUES (855, 'Fortune Mouse win', '150.00', 0.00, 150.00, 125.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:38:59', '2023-09-30 07:38:59');
INSERT INTO `wallet_changes` VALUES (856, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:13', '2023-09-30 07:39:13');
INSERT INTO `wallet_changes` VALUES (857, 'Fortune Mouse win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:14', '2023-09-30 07:39:14');
INSERT INTO `wallet_changes` VALUES (858, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:20', '2023-09-30 07:39:20');
INSERT INTO `wallet_changes` VALUES (859, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:21', '2023-09-30 07:39:21');
INSERT INTO `wallet_changes` VALUES (860, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:26', '2023-09-30 07:39:26');
INSERT INTO `wallet_changes` VALUES (861, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:26', '2023-09-30 07:39:26');
INSERT INTO `wallet_changes` VALUES (862, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:30', '2023-09-30 07:39:30');
INSERT INTO `wallet_changes` VALUES (863, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:31', '2023-09-30 07:39:31');
INSERT INTO `wallet_changes` VALUES (864, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:35', '2023-09-30 07:39:35');
INSERT INTO `wallet_changes` VALUES (865, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:36', '2023-09-30 07:39:36');
INSERT INTO `wallet_changes` VALUES (866, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:43', '2023-09-30 07:39:43');
INSERT INTO `wallet_changes` VALUES (867, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:44', '2023-09-30 07:39:44');
INSERT INTO `wallet_changes` VALUES (868, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:53', '2023-09-30 07:39:53');
INSERT INTO `wallet_changes` VALUES (869, 'Fortune Mouse win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:39:54', '2023-09-30 07:39:54');
INSERT INTO `wallet_changes` VALUES (870, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:01', '2023-09-30 07:40:01');
INSERT INTO `wallet_changes` VALUES (871, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:02', '2023-09-30 07:40:02');
INSERT INTO `wallet_changes` VALUES (872, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:06', '2023-09-30 07:40:06');
INSERT INTO `wallet_changes` VALUES (873, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:07', '2023-09-30 07:40:07');
INSERT INTO `wallet_changes` VALUES (874, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:11', '2023-09-30 07:40:11');
INSERT INTO `wallet_changes` VALUES (875, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:12', '2023-09-30 07:40:12');
INSERT INTO `wallet_changes` VALUES (876, 'Fortune Mouse win', '375.00', 0.00, 375.00, 350.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:40:22', '2023-09-30 07:40:22');
INSERT INTO `wallet_changes` VALUES (877, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:05', '2023-09-30 07:41:05');
INSERT INTO `wallet_changes` VALUES (878, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:06', '2023-09-30 07:41:06');
INSERT INTO `wallet_changes` VALUES (879, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:13', '2023-09-30 07:41:13');
INSERT INTO `wallet_changes` VALUES (880, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:14', '2023-09-30 07:41:14');
INSERT INTO `wallet_changes` VALUES (881, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:18', '2023-09-30 07:41:18');
INSERT INTO `wallet_changes` VALUES (882, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:19', '2023-09-30 07:41:19');
INSERT INTO `wallet_changes` VALUES (883, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:22', '2023-09-30 07:41:22');
INSERT INTO `wallet_changes` VALUES (884, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:23', '2023-09-30 07:41:23');
INSERT INTO `wallet_changes` VALUES (885, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:27', '2023-09-30 07:41:27');
INSERT INTO `wallet_changes` VALUES (886, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:28', '2023-09-30 07:41:28');
INSERT INTO `wallet_changes` VALUES (887, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:34', '2023-09-30 07:41:34');
INSERT INTO `wallet_changes` VALUES (888, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:35', '2023-09-30 07:41:35');
INSERT INTO `wallet_changes` VALUES (889, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:39', '2023-09-30 07:41:39');
INSERT INTO `wallet_changes` VALUES (890, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:40', '2023-09-30 07:41:40');
INSERT INTO `wallet_changes` VALUES (891, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:44', '2023-09-30 07:41:44');
INSERT INTO `wallet_changes` VALUES (892, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:45', '2023-09-30 07:41:45');
INSERT INTO `wallet_changes` VALUES (893, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:49', '2023-09-30 07:41:49');
INSERT INTO `wallet_changes` VALUES (894, 'Fortune Mouse win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:50', '2023-09-30 07:41:50');
INSERT INTO `wallet_changes` VALUES (895, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:54', '2023-09-30 07:41:54');
INSERT INTO `wallet_changes` VALUES (896, 'Fortune Mouse win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:41:55', '2023-09-30 07:41:55');
INSERT INTO `wallet_changes` VALUES (897, 'Fortune Mouse play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:42:01', '2023-09-30 07:42:01');
INSERT INTO `wallet_changes` VALUES (898, 'Fortune Mouse win', '515.00', 0.00, 515.00, 490.00, 25.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 07:42:02', '2023-09-30 07:42:02');
INSERT INTO `wallet_changes` VALUES (899, 'Spaceman play', '-10', 0.00, 10.00, 0.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:48:21', '2023-09-30 07:48:21');
INSERT INTO `wallet_changes` VALUES (900, 'Spaceman win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:48:31', '2023-09-30 07:48:31');
INSERT INTO `wallet_changes` VALUES (901, 'Spaceman play', '-10', 0.00, 10.00, 0.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:48:44', '2023-09-30 07:48:44');
INSERT INTO `wallet_changes` VALUES (902, 'Spaceman win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:49:05', '2023-09-30 07:49:05');
INSERT INTO `wallet_changes` VALUES (903, 'Spaceman play', '-10', 0.00, 10.00, 0.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:49:18', '2023-09-30 07:49:18');
INSERT INTO `wallet_changes` VALUES (904, 'Spaceman win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:49:27', '2023-09-30 07:49:27');
INSERT INTO `wallet_changes` VALUES (905, 'Spaceman play', '-10', 0.00, 10.00, 0.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:49:41', '2023-09-30 07:49:41');
INSERT INTO `wallet_changes` VALUES (906, 'Spaceman win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Spaceman', 'davi.automation2023@gmail.com', '2023-09-30 07:50:13', '2023-09-30 07:50:13');
INSERT INTO `wallet_changes` VALUES (907, 'Cappadocia play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Cappadocia', 'admin@demo.com', '2023-09-30 12:05:03', '2023-09-30 12:05:03');
INSERT INTO `wallet_changes` VALUES (908, 'Cappadocia win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Cappadocia', 'admin@demo.com', '2023-09-30 12:05:07', '2023-09-30 12:05:07');
INSERT INTO `wallet_changes` VALUES (909, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:41', '2023-09-30 12:05:41');
INSERT INTO `wallet_changes` VALUES (910, 'Balloon win', '0.55', 0.00, 0.55, 0.05, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:42', '2023-09-30 12:05:42');
INSERT INTO `wallet_changes` VALUES (911, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:43', '2023-09-30 12:05:43');
INSERT INTO `wallet_changes` VALUES (912, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:45', '2023-09-30 12:05:45');
INSERT INTO `wallet_changes` VALUES (913, 'Balloon win', '0.52', 0.00, 0.52, 0.02, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:46', '2023-09-30 12:05:46');
INSERT INTO `wallet_changes` VALUES (914, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:47', '2023-09-30 12:05:47');
INSERT INTO `wallet_changes` VALUES (915, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:48', '2023-09-30 12:05:48');
INSERT INTO `wallet_changes` VALUES (916, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:52', '2023-09-30 12:05:52');
INSERT INTO `wallet_changes` VALUES (917, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:53', '2023-09-30 12:05:53');
INSERT INTO `wallet_changes` VALUES (918, 'Balloon win', '0.63', 0.00, 0.63, 0.13, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:55', '2023-09-30 12:05:55');
INSERT INTO `wallet_changes` VALUES (919, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:56', '2023-09-30 12:05:56');
INSERT INTO `wallet_changes` VALUES (920, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:05:57', '2023-09-30 12:05:57');
INSERT INTO `wallet_changes` VALUES (921, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 12:06:03', '2023-09-30 12:06:03');
INSERT INTO `wallet_changes` VALUES (922, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:18:37', '2023-09-30 12:18:37');
INSERT INTO `wallet_changes` VALUES (923, 'Plinko win', '0.30', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:18:38', '2023-09-30 12:18:38');
INSERT INTO `wallet_changes` VALUES (924, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:18:53', '2023-09-30 12:18:53');
INSERT INTO `wallet_changes` VALUES (925, 'Plinko win', '0.33', 0.00, 0.33, 0.03, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:18:53', '2023-09-30 12:18:53');
INSERT INTO `wallet_changes` VALUES (926, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:08', '2023-09-30 12:19:08');
INSERT INTO `wallet_changes` VALUES (927, 'Plinko win', '0.33', 0.00, 0.33, 0.03, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:09', '2023-09-30 12:19:09');
INSERT INTO `wallet_changes` VALUES (928, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:10', '2023-09-30 12:19:10');
INSERT INTO `wallet_changes` VALUES (929, 'Plinko win', '0.30', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:11', '2023-09-30 12:19:11');
INSERT INTO `wallet_changes` VALUES (930, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:13', '2023-09-30 12:19:13');
INSERT INTO `wallet_changes` VALUES (931, 'Plinko win', '0.15', 0.00, 0.15, -0.15, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:13', '2023-09-30 12:19:13');
INSERT INTO `wallet_changes` VALUES (932, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:15', '2023-09-30 12:19:15');
INSERT INTO `wallet_changes` VALUES (933, 'Plinko win', '0.15', 0.00, 0.15, -0.15, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:15', '2023-09-30 12:19:15');
INSERT INTO `wallet_changes` VALUES (934, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:17', '2023-09-30 12:19:17');
INSERT INTO `wallet_changes` VALUES (935, 'Plinko win', '0.96', 0.00, 0.96, 0.66, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:17', '2023-09-30 12:19:17');
INSERT INTO `wallet_changes` VALUES (936, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:19', '2023-09-30 12:19:19');
INSERT INTO `wallet_changes` VALUES (937, 'Plinko win', '0.63', 0.00, 0.63, 0.33, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:20', '2023-09-30 12:19:20');
INSERT INTO `wallet_changes` VALUES (938, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:21', '2023-09-30 12:19:21');
INSERT INTO `wallet_changes` VALUES (939, 'Plinko win', '0.30', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:22', '2023-09-30 12:19:22');
INSERT INTO `wallet_changes` VALUES (940, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:23', '2023-09-30 12:19:23');
INSERT INTO `wallet_changes` VALUES (941, 'Plinko win', '0.21', 0.00, 0.21, -0.09, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:24', '2023-09-30 12:19:24');
INSERT INTO `wallet_changes` VALUES (942, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:25', '2023-09-30 12:19:25');
INSERT INTO `wallet_changes` VALUES (943, 'Plinko win', '0.15', 0.00, 0.15, -0.15, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:26', '2023-09-30 12:19:26');
INSERT INTO `wallet_changes` VALUES (944, 'Plinko play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:27', '2023-09-30 12:19:27');
INSERT INTO `wallet_changes` VALUES (945, 'Plinko win', '0.30', 0.00, 0.30, 0.00, 0.30, 'Plinko', 'admin@demo.com', '2023-09-30 12:19:28', '2023-09-30 12:19:28');
INSERT INTO `wallet_changes` VALUES (946, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:03', '2023-09-30 12:25:03');
INSERT INTO `wallet_changes` VALUES (947, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:04', '2023-09-30 12:25:04');
INSERT INTO `wallet_changes` VALUES (948, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:14', '2023-09-30 12:25:14');
INSERT INTO `wallet_changes` VALUES (949, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -4.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:16', '2023-09-30 12:25:16');
INSERT INTO `wallet_changes` VALUES (950, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:22', '2023-09-30 12:25:22');
INSERT INTO `wallet_changes` VALUES (951, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:23', '2023-09-30 12:25:23');
INSERT INTO `wallet_changes` VALUES (952, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:27', '2023-09-30 12:25:27');
INSERT INTO `wallet_changes` VALUES (953, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -4.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:28', '2023-09-30 12:25:28');
INSERT INTO `wallet_changes` VALUES (954, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:36', '2023-09-30 12:25:36');
INSERT INTO `wallet_changes` VALUES (955, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:37', '2023-09-30 12:25:37');
INSERT INTO `wallet_changes` VALUES (956, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:41', '2023-09-30 12:25:41');
INSERT INTO `wallet_changes` VALUES (957, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:42', '2023-09-30 12:25:42');
INSERT INTO `wallet_changes` VALUES (958, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:48', '2023-09-30 12:25:48');
INSERT INTO `wallet_changes` VALUES (959, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:49', '2023-09-30 12:25:49');
INSERT INTO `wallet_changes` VALUES (960, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:53', '2023-09-30 12:25:53');
INSERT INTO `wallet_changes` VALUES (961, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:54', '2023-09-30 12:25:54');
INSERT INTO `wallet_changes` VALUES (962, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:25:59', '2023-09-30 12:25:59');
INSERT INTO `wallet_changes` VALUES (963, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:00', '2023-09-30 12:26:00');
INSERT INTO `wallet_changes` VALUES (964, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:03', '2023-09-30 12:26:03');
INSERT INTO `wallet_changes` VALUES (965, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:04', '2023-09-30 12:26:04');
INSERT INTO `wallet_changes` VALUES (966, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:07', '2023-09-30 12:26:07');
INSERT INTO `wallet_changes` VALUES (967, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:08', '2023-09-30 12:26:08');
INSERT INTO `wallet_changes` VALUES (968, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:11', '2023-09-30 12:26:11');
INSERT INTO `wallet_changes` VALUES (969, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:12', '2023-09-30 12:26:12');
INSERT INTO `wallet_changes` VALUES (970, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:19', '2023-09-30 12:26:19');
INSERT INTO `wallet_changes` VALUES (971, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:20', '2023-09-30 12:26:20');
INSERT INTO `wallet_changes` VALUES (972, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:24', '2023-09-30 12:26:24');
INSERT INTO `wallet_changes` VALUES (973, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:25', '2023-09-30 12:26:25');
INSERT INTO `wallet_changes` VALUES (974, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:29', '2023-09-30 12:26:29');
INSERT INTO `wallet_changes` VALUES (975, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:30', '2023-09-30 12:26:30');
INSERT INTO `wallet_changes` VALUES (976, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:34', '2023-09-30 12:26:34');
INSERT INTO `wallet_changes` VALUES (977, 'Fortune Rabbit win', '220.00', 0.00, 220.00, 210.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:35', '2023-09-30 12:26:35');
INSERT INTO `wallet_changes` VALUES (978, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:56', '2023-09-30 12:26:56');
INSERT INTO `wallet_changes` VALUES (979, 'Fortune Rabbit win', '9.00', 0.00, 9.00, -1.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:26:57', '2023-09-30 12:26:57');
INSERT INTO `wallet_changes` VALUES (980, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:05', '2023-09-30 12:27:05');
INSERT INTO `wallet_changes` VALUES (981, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:06', '2023-09-30 12:27:06');
INSERT INTO `wallet_changes` VALUES (982, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:09', '2023-09-30 12:27:09');
INSERT INTO `wallet_changes` VALUES (983, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:10', '2023-09-30 12:27:10');
INSERT INTO `wallet_changes` VALUES (984, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:14', '2023-09-30 12:27:14');
INSERT INTO `wallet_changes` VALUES (985, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:15', '2023-09-30 12:27:15');
INSERT INTO `wallet_changes` VALUES (986, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:19', '2023-09-30 12:27:19');
INSERT INTO `wallet_changes` VALUES (987, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:20', '2023-09-30 12:27:20');
INSERT INTO `wallet_changes` VALUES (988, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:25', '2023-09-30 12:27:25');
INSERT INTO `wallet_changes` VALUES (989, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:26', '2023-09-30 12:27:26');
INSERT INTO `wallet_changes` VALUES (990, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:30', '2023-09-30 12:27:30');
INSERT INTO `wallet_changes` VALUES (991, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:31', '2023-09-30 12:27:31');
INSERT INTO `wallet_changes` VALUES (992, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:36', '2023-09-30 12:27:36');
INSERT INTO `wallet_changes` VALUES (993, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:37', '2023-09-30 12:27:37');
INSERT INTO `wallet_changes` VALUES (994, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:40', '2023-09-30 12:27:40');
INSERT INTO `wallet_changes` VALUES (995, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:41', '2023-09-30 12:27:41');
INSERT INTO `wallet_changes` VALUES (996, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:45', '2023-09-30 12:27:45');
INSERT INTO `wallet_changes` VALUES (997, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:46', '2023-09-30 12:27:46');
INSERT INTO `wallet_changes` VALUES (998, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:49', '2023-09-30 12:27:49');
INSERT INTO `wallet_changes` VALUES (999, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:50', '2023-09-30 12:27:50');
INSERT INTO `wallet_changes` VALUES (1000, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:54', '2023-09-30 12:27:54');
INSERT INTO `wallet_changes` VALUES (1001, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:55', '2023-09-30 12:27:55');
INSERT INTO `wallet_changes` VALUES (1002, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:58', '2023-09-30 12:27:58');
INSERT INTO `wallet_changes` VALUES (1003, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:27:59', '2023-09-30 12:27:59');
INSERT INTO `wallet_changes` VALUES (1004, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:04', '2023-09-30 12:28:04');
INSERT INTO `wallet_changes` VALUES (1005, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:05', '2023-09-30 12:28:05');
INSERT INTO `wallet_changes` VALUES (1006, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:09', '2023-09-30 12:28:09');
INSERT INTO `wallet_changes` VALUES (1007, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:10', '2023-09-30 12:28:10');
INSERT INTO `wallet_changes` VALUES (1008, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:16', '2023-09-30 12:28:16');
INSERT INTO `wallet_changes` VALUES (1009, 'Fortune Rabbit win', '2.00', 0.00, 2.00, -8.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:17', '2023-09-30 12:28:17');
INSERT INTO `wallet_changes` VALUES (1010, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:22', '2023-09-30 12:28:22');
INSERT INTO `wallet_changes` VALUES (1011, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:23', '2023-09-30 12:28:23');
INSERT INTO `wallet_changes` VALUES (1012, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:28', '2023-09-30 12:28:28');
INSERT INTO `wallet_changes` VALUES (1013, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:29', '2023-09-30 12:28:29');
INSERT INTO `wallet_changes` VALUES (1014, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:34', '2023-09-30 12:28:34');
INSERT INTO `wallet_changes` VALUES (1015, 'Fortune Rabbit win', '15.00', 0.00, 15.00, 5.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:35', '2023-09-30 12:28:35');
INSERT INTO `wallet_changes` VALUES (1016, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:41', '2023-09-30 12:28:41');
INSERT INTO `wallet_changes` VALUES (1017, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:42', '2023-09-30 12:28:42');
INSERT INTO `wallet_changes` VALUES (1018, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:46', '2023-09-30 12:28:46');
INSERT INTO `wallet_changes` VALUES (1019, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:47', '2023-09-30 12:28:47');
INSERT INTO `wallet_changes` VALUES (1020, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:50', '2023-09-30 12:28:50');
INSERT INTO `wallet_changes` VALUES (1021, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:51', '2023-09-30 12:28:51');
INSERT INTO `wallet_changes` VALUES (1022, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:55', '2023-09-30 12:28:55');
INSERT INTO `wallet_changes` VALUES (1023, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -4.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:28:56', '2023-09-30 12:28:56');
INSERT INTO `wallet_changes` VALUES (1024, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:01', '2023-09-30 12:29:01');
INSERT INTO `wallet_changes` VALUES (1025, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:02', '2023-09-30 12:29:02');
INSERT INTO `wallet_changes` VALUES (1026, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:07', '2023-09-30 12:29:07');
INSERT INTO `wallet_changes` VALUES (1027, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:08', '2023-09-30 12:29:08');
INSERT INTO `wallet_changes` VALUES (1028, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:11', '2023-09-30 12:29:11');
INSERT INTO `wallet_changes` VALUES (1029, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:12', '2023-09-30 12:29:12');
INSERT INTO `wallet_changes` VALUES (1030, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:16', '2023-09-30 12:29:16');
INSERT INTO `wallet_changes` VALUES (1031, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:17', '2023-09-30 12:29:17');
INSERT INTO `wallet_changes` VALUES (1032, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:24', '2023-09-30 12:29:24');
INSERT INTO `wallet_changes` VALUES (1033, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:25', '2023-09-30 12:29:25');
INSERT INTO `wallet_changes` VALUES (1034, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:28', '2023-09-30 12:29:28');
INSERT INTO `wallet_changes` VALUES (1035, 'Fortune Rabbit win', '6.00', 0.00, 6.00, -4.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:29', '2023-09-30 12:29:29');
INSERT INTO `wallet_changes` VALUES (1036, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:35', '2023-09-30 12:29:35');
INSERT INTO `wallet_changes` VALUES (1037, 'Fortune Rabbit win', '10.00', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:36', '2023-09-30 12:29:36');
INSERT INTO `wallet_changes` VALUES (1038, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:40', '2023-09-30 12:29:40');
INSERT INTO `wallet_changes` VALUES (1039, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:41', '2023-09-30 12:29:41');
INSERT INTO `wallet_changes` VALUES (1040, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:46', '2023-09-30 12:29:46');
INSERT INTO `wallet_changes` VALUES (1041, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:47', '2023-09-30 12:29:47');
INSERT INTO `wallet_changes` VALUES (1042, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:57', '2023-09-30 12:29:57');
INSERT INTO `wallet_changes` VALUES (1043, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:29:58', '2023-09-30 12:29:58');
INSERT INTO `wallet_changes` VALUES (1044, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:01', '2023-09-30 12:30:01');
INSERT INTO `wallet_changes` VALUES (1045, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:02', '2023-09-30 12:30:02');
INSERT INTO `wallet_changes` VALUES (1046, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:05', '2023-09-30 12:30:05');
INSERT INTO `wallet_changes` VALUES (1047, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:06', '2023-09-30 12:30:06');
INSERT INTO `wallet_changes` VALUES (1048, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:10', '2023-09-30 12:30:10');
INSERT INTO `wallet_changes` VALUES (1049, 'Fortune Rabbit win', '8.00', 0.00, 8.00, -2.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:11', '2023-09-30 12:30:11');
INSERT INTO `wallet_changes` VALUES (1050, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:16', '2023-09-30 12:30:16');
INSERT INTO `wallet_changes` VALUES (1051, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:17', '2023-09-30 12:30:17');
INSERT INTO `wallet_changes` VALUES (1052, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:21', '2023-09-30 12:30:21');
INSERT INTO `wallet_changes` VALUES (1053, 'Fortune Rabbit win', '4.00', 0.00, 4.00, -6.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:22', '2023-09-30 12:30:22');
INSERT INTO `wallet_changes` VALUES (1054, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:28', '2023-09-30 12:30:28');
INSERT INTO `wallet_changes` VALUES (1055, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:29', '2023-09-30 12:30:29');
INSERT INTO `wallet_changes` VALUES (1056, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:32', '2023-09-30 12:30:32');
INSERT INTO `wallet_changes` VALUES (1057, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:33', '2023-09-30 12:30:33');
INSERT INTO `wallet_changes` VALUES (1058, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:37', '2023-09-30 12:30:37');
INSERT INTO `wallet_changes` VALUES (1059, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:38', '2023-09-30 12:30:38');
INSERT INTO `wallet_changes` VALUES (1060, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:41', '2023-09-30 12:30:41');
INSERT INTO `wallet_changes` VALUES (1061, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:42', '2023-09-30 12:30:42');
INSERT INTO `wallet_changes` VALUES (1062, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:48', '2023-09-30 12:30:48');
INSERT INTO `wallet_changes` VALUES (1063, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:48', '2023-09-30 12:30:48');
INSERT INTO `wallet_changes` VALUES (1064, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:52', '2023-09-30 12:30:52');
INSERT INTO `wallet_changes` VALUES (1065, 'Fortune Rabbit win', '225.00', 0.00, 225.00, 215.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:30:53', '2023-09-30 12:30:53');
INSERT INTO `wallet_changes` VALUES (1066, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:12', '2023-09-30 12:31:12');
INSERT INTO `wallet_changes` VALUES (1067, 'Fortune Rabbit win', '15.00', 0.00, 15.00, 5.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:13', '2023-09-30 12:31:13');
INSERT INTO `wallet_changes` VALUES (1068, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:17', '2023-09-30 12:31:17');
INSERT INTO `wallet_changes` VALUES (1069, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:18', '2023-09-30 12:31:18');
INSERT INTO `wallet_changes` VALUES (1070, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:27', '2023-09-30 12:31:27');
INSERT INTO `wallet_changes` VALUES (1071, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:28', '2023-09-30 12:31:28');
INSERT INTO `wallet_changes` VALUES (1072, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:31', '2023-09-30 12:31:31');
INSERT INTO `wallet_changes` VALUES (1073, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:32', '2023-09-30 12:31:32');
INSERT INTO `wallet_changes` VALUES (1074, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:36', '2023-09-30 12:31:36');
INSERT INTO `wallet_changes` VALUES (1075, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:37', '2023-09-30 12:31:37');
INSERT INTO `wallet_changes` VALUES (1076, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:41', '2023-09-30 12:31:41');
INSERT INTO `wallet_changes` VALUES (1077, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:42', '2023-09-30 12:31:42');
INSERT INTO `wallet_changes` VALUES (1078, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:45', '2023-09-30 12:31:45');
INSERT INTO `wallet_changes` VALUES (1079, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:46', '2023-09-30 12:31:46');
INSERT INTO `wallet_changes` VALUES (1080, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:49', '2023-09-30 12:31:49');
INSERT INTO `wallet_changes` VALUES (1081, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:50', '2023-09-30 12:31:50');
INSERT INTO `wallet_changes` VALUES (1082, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:54', '2023-09-30 12:31:54');
INSERT INTO `wallet_changes` VALUES (1083, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:55', '2023-09-30 12:31:55');
INSERT INTO `wallet_changes` VALUES (1084, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:58', '2023-09-30 12:31:58');
INSERT INTO `wallet_changes` VALUES (1085, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:31:59', '2023-09-30 12:31:59');
INSERT INTO `wallet_changes` VALUES (1086, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:03', '2023-09-30 12:32:03');
INSERT INTO `wallet_changes` VALUES (1087, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:04', '2023-09-30 12:32:04');
INSERT INTO `wallet_changes` VALUES (1088, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:08', '2023-09-30 12:32:08');
INSERT INTO `wallet_changes` VALUES (1089, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:09', '2023-09-30 12:32:09');
INSERT INTO `wallet_changes` VALUES (1090, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:13', '2023-09-30 12:32:13');
INSERT INTO `wallet_changes` VALUES (1091, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:14', '2023-09-30 12:32:14');
INSERT INTO `wallet_changes` VALUES (1092, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:18', '2023-09-30 12:32:18');
INSERT INTO `wallet_changes` VALUES (1093, 'Fortune Rabbit win', '18.00', 0.00, 18.00, 8.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:19', '2023-09-30 12:32:19');
INSERT INTO `wallet_changes` VALUES (1094, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:23', '2023-09-30 12:32:23');
INSERT INTO `wallet_changes` VALUES (1095, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:24', '2023-09-30 12:32:24');
INSERT INTO `wallet_changes` VALUES (1096, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:28', '2023-09-30 12:32:28');
INSERT INTO `wallet_changes` VALUES (1097, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:29', '2023-09-30 12:32:29');
INSERT INTO `wallet_changes` VALUES (1098, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:32', '2023-09-30 12:32:32');
INSERT INTO `wallet_changes` VALUES (1099, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:33', '2023-09-30 12:32:33');
INSERT INTO `wallet_changes` VALUES (1100, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:36', '2023-09-30 12:32:36');
INSERT INTO `wallet_changes` VALUES (1101, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:37', '2023-09-30 12:32:37');
INSERT INTO `wallet_changes` VALUES (1102, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:42', '2023-09-30 12:32:42');
INSERT INTO `wallet_changes` VALUES (1103, 'Fortune Rabbit win', '3.00', 0.00, 3.00, -7.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:43', '2023-09-30 12:32:43');
INSERT INTO `wallet_changes` VALUES (1104, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:48', '2023-09-30 12:32:48');
INSERT INTO `wallet_changes` VALUES (1105, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:49', '2023-09-30 12:32:49');
INSERT INTO `wallet_changes` VALUES (1106, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:52', '2023-09-30 12:32:52');
INSERT INTO `wallet_changes` VALUES (1107, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:32:53', '2023-09-30 12:32:53');
INSERT INTO `wallet_changes` VALUES (1108, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:02', '2023-09-30 12:33:02');
INSERT INTO `wallet_changes` VALUES (1109, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:03', '2023-09-30 12:33:03');
INSERT INTO `wallet_changes` VALUES (1110, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:06', '2023-09-30 12:33:06');
INSERT INTO `wallet_changes` VALUES (1111, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:07', '2023-09-30 12:33:07');
INSERT INTO `wallet_changes` VALUES (1112, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:11', '2023-09-30 12:33:11');
INSERT INTO `wallet_changes` VALUES (1113, 'Fortune Rabbit win', '170.00', 0.00, 170.00, 160.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:12', '2023-09-30 12:33:12');
INSERT INTO `wallet_changes` VALUES (1114, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:21', '2023-09-30 12:33:21');
INSERT INTO `wallet_changes` VALUES (1115, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:22', '2023-09-30 12:33:22');
INSERT INTO `wallet_changes` VALUES (1116, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:26', '2023-09-30 12:33:26');
INSERT INTO `wallet_changes` VALUES (1117, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:27', '2023-09-30 12:33:27');
INSERT INTO `wallet_changes` VALUES (1118, 'Fortune Rabbit play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:33', '2023-09-30 12:33:33');
INSERT INTO `wallet_changes` VALUES (1119, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:34', '2023-09-30 12:33:34');
INSERT INTO `wallet_changes` VALUES (1120, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:51', '2023-09-30 12:33:51');
INSERT INTO `wallet_changes` VALUES (1121, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:52', '2023-09-30 12:33:52');
INSERT INTO `wallet_changes` VALUES (1122, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:56', '2023-09-30 12:33:56');
INSERT INTO `wallet_changes` VALUES (1123, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:33:57', '2023-09-30 12:33:57');
INSERT INTO `wallet_changes` VALUES (1124, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:00', '2023-09-30 12:34:00');
INSERT INTO `wallet_changes` VALUES (1125, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:01', '2023-09-30 12:34:01');
INSERT INTO `wallet_changes` VALUES (1126, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:14', '2023-09-30 12:34:14');
INSERT INTO `wallet_changes` VALUES (1127, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:18', '2023-09-30 12:34:18');
INSERT INTO `wallet_changes` VALUES (1128, 'Fortune Rabbit win', '140.00', 0.00, 140.00, 120.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:23', '2023-09-30 12:34:23');
INSERT INTO `wallet_changes` VALUES (1129, 'Fortune Rabbit win', '540.00', 0.00, 540.00, 520.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:30', '2023-09-30 12:34:30');
INSERT INTO `wallet_changes` VALUES (1130, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:37', '2023-09-30 12:34:37');
INSERT INTO `wallet_changes` VALUES (1131, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:41', '2023-09-30 12:34:41');
INSERT INTO `wallet_changes` VALUES (1132, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:34:46', '2023-09-30 12:34:46');
INSERT INTO `wallet_changes` VALUES (1133, 'Fortune Rabbit play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:35:07', '2023-09-30 12:35:07');
INSERT INTO `wallet_changes` VALUES (1134, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:35:08', '2023-09-30 12:35:08');
INSERT INTO `wallet_changes` VALUES (1135, 'Fortune Rabbit play', '-6', 0.00, 6.00, 0.00, 6.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:35:22', '2023-09-30 12:35:22');
INSERT INTO `wallet_changes` VALUES (1136, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -6.00, 6.00, 'Fortune Rabbit', 'davi.automation2023@gmail.com', '2023-09-30 12:35:23', '2023-09-30 12:35:23');
INSERT INTO `wallet_changes` VALUES (1137, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:30:00', '2023-09-30 13:30:00');
INSERT INTO `wallet_changes` VALUES (1138, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:30:01', '2023-09-30 13:30:01');
INSERT INTO `wallet_changes` VALUES (1139, 'Spaceman play', '-1', 0.00, 1.00, 0.00, 1.00, 'Spaceman', 'admin@demo.com', '2023-09-30 13:30:59', '2023-09-30 13:30:59');
INSERT INTO `wallet_changes` VALUES (1140, 'Spaceman win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Spaceman', 'admin@demo.com', '2023-09-30 13:31:22', '2023-09-30 13:31:22');
INSERT INTO `wallet_changes` VALUES (1141, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:26', '2023-09-30 13:33:26');
INSERT INTO `wallet_changes` VALUES (1142, 'Balloon win', '0.72', 0.00, 0.72, 0.22, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:29', '2023-09-30 13:33:29');
INSERT INTO `wallet_changes` VALUES (1143, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:31', '2023-09-30 13:33:31');
INSERT INTO `wallet_changes` VALUES (1144, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:32', '2023-09-30 13:33:32');
INSERT INTO `wallet_changes` VALUES (1145, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:34', '2023-09-30 13:33:34');
INSERT INTO `wallet_changes` VALUES (1146, 'Balloon play', '-0.5', 0.00, 0.50, 0.00, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:37', '2023-09-30 13:33:37');
INSERT INTO `wallet_changes` VALUES (1147, 'Balloon win', '0.84', 0.00, 0.84, 0.34, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:41', '2023-09-30 13:33:41');
INSERT INTO `wallet_changes` VALUES (1148, 'Balloon win', '0.00', 0.00, 0.00, -0.50, 0.50, 'Balloon', 'admin@demo.com', '2023-09-30 13:33:42', '2023-09-30 13:33:42');
INSERT INTO `wallet_changes` VALUES (1149, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:35:26', '2023-09-30 13:35:26');
INSERT INTO `wallet_changes` VALUES (1150, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:35:27', '2023-09-30 13:35:27');
INSERT INTO `wallet_changes` VALUES (1151, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:40:57', '2023-09-30 13:40:57');
INSERT INTO `wallet_changes` VALUES (1152, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:40:58', '2023-09-30 13:40:58');
INSERT INTO `wallet_changes` VALUES (1153, 'Fortune Tiger play', '-0.75', 0.00, 0.75, 0.00, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:41:01', '2023-09-30 13:41:01');
INSERT INTO `wallet_changes` VALUES (1154, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.75, 0.75, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 13:41:02', '2023-09-30 13:41:02');
INSERT INTO `wallet_changes` VALUES (1155, 'Mines play', '-0.3', 0.00, 0.30, 0.00, 0.30, 'Mines', 'admin@demo.com', '2023-09-30 13:41:30', '2023-09-30 13:41:30');
INSERT INTO `wallet_changes` VALUES (1156, 'Mines win', '0.37', 0.00, 0.37, 0.07, 0.30, 'Mines', 'admin@demo.com', '2023-09-30 13:41:35', '2023-09-30 13:41:35');
INSERT INTO `wallet_changes` VALUES (1157, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:12', '2023-09-30 14:19:12');
INSERT INTO `wallet_changes` VALUES (1158, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:13', '2023-09-30 14:19:13');
INSERT INTO `wallet_changes` VALUES (1159, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:17', '2023-09-30 14:19:17');
INSERT INTO `wallet_changes` VALUES (1160, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:17', '2023-09-30 14:19:17');
INSERT INTO `wallet_changes` VALUES (1161, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:21', '2023-09-30 14:19:21');
INSERT INTO `wallet_changes` VALUES (1162, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:22', '2023-09-30 14:19:22');
INSERT INTO `wallet_changes` VALUES (1163, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:30', '2023-09-30 14:19:30');
INSERT INTO `wallet_changes` VALUES (1164, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:31', '2023-09-30 14:19:31');
INSERT INTO `wallet_changes` VALUES (1165, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:34', '2023-09-30 14:19:34');
INSERT INTO `wallet_changes` VALUES (1166, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:35', '2023-09-30 14:19:35');
INSERT INTO `wallet_changes` VALUES (1167, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:40', '2023-09-30 14:19:40');
INSERT INTO `wallet_changes` VALUES (1168, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:41', '2023-09-30 14:19:41');
INSERT INTO `wallet_changes` VALUES (1169, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:45', '2023-09-30 14:19:45');
INSERT INTO `wallet_changes` VALUES (1170, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:46', '2023-09-30 14:19:46');
INSERT INTO `wallet_changes` VALUES (1171, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:57', '2023-09-30 14:19:57');
INSERT INTO `wallet_changes` VALUES (1172, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:19:58', '2023-09-30 14:19:58');
INSERT INTO `wallet_changes` VALUES (1173, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:07', '2023-09-30 14:20:07');
INSERT INTO `wallet_changes` VALUES (1174, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:08', '2023-09-30 14:20:08');
INSERT INTO `wallet_changes` VALUES (1175, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:16', '2023-09-30 14:20:16');
INSERT INTO `wallet_changes` VALUES (1176, 'Fortune Tiger win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:17', '2023-09-30 14:20:17');
INSERT INTO `wallet_changes` VALUES (1177, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:26', '2023-09-30 14:20:26');
INSERT INTO `wallet_changes` VALUES (1178, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:27', '2023-09-30 14:20:27');
INSERT INTO `wallet_changes` VALUES (1179, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:29', '2023-09-30 14:20:29');
INSERT INTO `wallet_changes` VALUES (1180, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:30', '2023-09-30 14:20:30');
INSERT INTO `wallet_changes` VALUES (1181, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:32', '2023-09-30 14:20:32');
INSERT INTO `wallet_changes` VALUES (1182, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:33', '2023-09-30 14:20:33');
INSERT INTO `wallet_changes` VALUES (1183, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:38', '2023-09-30 14:20:38');
INSERT INTO `wallet_changes` VALUES (1184, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:39', '2023-09-30 14:20:39');
INSERT INTO `wallet_changes` VALUES (1185, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:41', '2023-09-30 14:20:41');
INSERT INTO `wallet_changes` VALUES (1186, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:43', '2023-09-30 14:20:43');
INSERT INTO `wallet_changes` VALUES (1187, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:45', '2023-09-30 14:20:45');
INSERT INTO `wallet_changes` VALUES (1188, 'Fortune Tiger win', '40.00', 0.00, 40.00, 15.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:46', '2023-09-30 14:20:46');
INSERT INTO `wallet_changes` VALUES (1189, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:51', '2023-09-30 14:20:51');
INSERT INTO `wallet_changes` VALUES (1190, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:52', '2023-09-30 14:20:52');
INSERT INTO `wallet_changes` VALUES (1191, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:55', '2023-09-30 14:20:55');
INSERT INTO `wallet_changes` VALUES (1192, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:56', '2023-09-30 14:20:56');
INSERT INTO `wallet_changes` VALUES (1193, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:58', '2023-09-30 14:20:58');
INSERT INTO `wallet_changes` VALUES (1194, 'Fortune Tiger win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:20:59', '2023-09-30 14:20:59');
INSERT INTO `wallet_changes` VALUES (1195, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:03', '2023-09-30 14:21:03');
INSERT INTO `wallet_changes` VALUES (1196, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:04', '2023-09-30 14:21:04');
INSERT INTO `wallet_changes` VALUES (1197, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:13', '2023-09-30 14:21:13');
INSERT INTO `wallet_changes` VALUES (1198, 'Fortune Tiger win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:14', '2023-09-30 14:21:14');
INSERT INTO `wallet_changes` VALUES (1199, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:17', '2023-09-30 14:21:17');
INSERT INTO `wallet_changes` VALUES (1200, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:18', '2023-09-30 14:21:18');
INSERT INTO `wallet_changes` VALUES (1201, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:20', '2023-09-30 14:21:20');
INSERT INTO `wallet_changes` VALUES (1202, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:21', '2023-09-30 14:21:21');
INSERT INTO `wallet_changes` VALUES (1203, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:26', '2023-09-30 14:21:26');
INSERT INTO `wallet_changes` VALUES (1204, 'Fortune Tiger win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:27', '2023-09-30 14:21:27');
INSERT INTO `wallet_changes` VALUES (1205, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:33', '2023-09-30 14:21:33');
INSERT INTO `wallet_changes` VALUES (1206, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:34', '2023-09-30 14:21:34');
INSERT INTO `wallet_changes` VALUES (1207, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:36', '2023-09-30 14:21:36');
INSERT INTO `wallet_changes` VALUES (1208, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:37', '2023-09-30 14:21:37');
INSERT INTO `wallet_changes` VALUES (1209, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:39', '2023-09-30 14:21:39');
INSERT INTO `wallet_changes` VALUES (1210, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:40', '2023-09-30 14:21:40');
INSERT INTO `wallet_changes` VALUES (1211, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:42', '2023-09-30 14:21:42');
INSERT INTO `wallet_changes` VALUES (1212, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:21:43', '2023-09-30 14:21:43');
INSERT INTO `wallet_changes` VALUES (1213, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:44:48', '2023-09-30 14:44:48');
INSERT INTO `wallet_changes` VALUES (1214, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-09-30 14:44:49', '2023-09-30 14:44:49');
INSERT INTO `wallet_changes` VALUES (1215, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:04', '2023-09-30 19:12:04');
INSERT INTO `wallet_changes` VALUES (1216, 'Piggy Gold win', '3.75', 0.00, 3.75, 2.50, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:06', '2023-09-30 19:12:06');
INSERT INTO `wallet_changes` VALUES (1217, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:13', '2023-09-30 19:12:13');
INSERT INTO `wallet_changes` VALUES (1218, 'Piggy Gold win', '3.75', 0.00, 3.75, 2.50, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:14', '2023-09-30 19:12:14');
INSERT INTO `wallet_changes` VALUES (1219, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:25', '2023-09-30 19:12:25');
INSERT INTO `wallet_changes` VALUES (1220, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:26', '2023-09-30 19:12:26');
INSERT INTO `wallet_changes` VALUES (1221, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:31', '2023-09-30 19:12:31');
INSERT INTO `wallet_changes` VALUES (1222, 'Piggy Gold win', '3.75', 0.00, 3.75, 2.50, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:32', '2023-09-30 19:12:32');
INSERT INTO `wallet_changes` VALUES (1223, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:36', '2023-09-30 19:12:36');
INSERT INTO `wallet_changes` VALUES (1224, 'Piggy Gold win', '10.00', 0.00, 10.00, 8.75, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:37', '2023-09-30 19:12:37');
INSERT INTO `wallet_changes` VALUES (1225, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:44', '2023-09-30 19:12:44');
INSERT INTO `wallet_changes` VALUES (1226, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:45', '2023-09-30 19:12:45');
INSERT INTO `wallet_changes` VALUES (1227, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:49', '2023-09-30 19:12:49');
INSERT INTO `wallet_changes` VALUES (1228, 'Piggy Gold win', '3.75', 0.00, 3.75, 2.50, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:50', '2023-09-30 19:12:50');
INSERT INTO `wallet_changes` VALUES (1229, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:55', '2023-09-30 19:12:55');
INSERT INTO `wallet_changes` VALUES (1230, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:12:56', '2023-09-30 19:12:56');
INSERT INTO `wallet_changes` VALUES (1231, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:00', '2023-09-30 19:13:00');
INSERT INTO `wallet_changes` VALUES (1232, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:01', '2023-09-30 19:13:01');
INSERT INTO `wallet_changes` VALUES (1233, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:05', '2023-09-30 19:13:05');
INSERT INTO `wallet_changes` VALUES (1234, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:06', '2023-09-30 19:13:06');
INSERT INTO `wallet_changes` VALUES (1235, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:10', '2023-09-30 19:13:10');
INSERT INTO `wallet_changes` VALUES (1236, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:11', '2023-09-30 19:13:11');
INSERT INTO `wallet_changes` VALUES (1237, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:20', '2023-09-30 19:13:20');
INSERT INTO `wallet_changes` VALUES (1238, 'Piggy Gold win', '3.75', 0.00, 3.75, 2.50, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:21', '2023-09-30 19:13:21');
INSERT INTO `wallet_changes` VALUES (1239, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:25', '2023-09-30 19:13:25');
INSERT INTO `wallet_changes` VALUES (1240, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:26', '2023-09-30 19:13:26');
INSERT INTO `wallet_changes` VALUES (1241, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:31', '2023-09-30 19:13:31');
INSERT INTO `wallet_changes` VALUES (1242, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:32', '2023-09-30 19:13:32');
INSERT INTO `wallet_changes` VALUES (1243, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:38', '2023-09-30 19:13:38');
INSERT INTO `wallet_changes` VALUES (1244, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:39', '2023-09-30 19:13:39');
INSERT INTO `wallet_changes` VALUES (1245, 'Piggy Gold play', '-1.25', 0.00, 1.25, 0.00, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:43', '2023-09-30 19:13:43');
INSERT INTO `wallet_changes` VALUES (1246, 'Piggy Gold win', '0.00', 0.00, 0.00, -1.25, 1.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:44', '2023-09-30 19:13:44');
INSERT INTO `wallet_changes` VALUES (1247, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:58', '2023-09-30 19:13:58');
INSERT INTO `wallet_changes` VALUES (1248, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:13:59', '2023-09-30 19:13:59');
INSERT INTO `wallet_changes` VALUES (1249, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:02', '2023-09-30 19:14:02');
INSERT INTO `wallet_changes` VALUES (1250, 'Piggy Gold win', '6.75', 0.00, 6.75, 4.50, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:03', '2023-09-30 19:14:03');
INSERT INTO `wallet_changes` VALUES (1251, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:08', '2023-09-30 19:14:08');
INSERT INTO `wallet_changes` VALUES (1252, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:09', '2023-09-30 19:14:09');
INSERT INTO `wallet_changes` VALUES (1253, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:15', '2023-09-30 19:14:15');
INSERT INTO `wallet_changes` VALUES (1254, 'Piggy Gold win', '6.75', 0.00, 6.75, 4.50, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:16', '2023-09-30 19:14:16');
INSERT INTO `wallet_changes` VALUES (1255, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:26', '2023-09-30 19:14:26');
INSERT INTO `wallet_changes` VALUES (1256, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:27', '2023-09-30 19:14:27');
INSERT INTO `wallet_changes` VALUES (1257, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:30', '2023-09-30 19:14:30');
INSERT INTO `wallet_changes` VALUES (1258, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:31', '2023-09-30 19:14:31');
INSERT INTO `wallet_changes` VALUES (1259, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:35', '2023-09-30 19:14:35');
INSERT INTO `wallet_changes` VALUES (1260, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:36', '2023-09-30 19:14:36');
INSERT INTO `wallet_changes` VALUES (1261, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:39', '2023-09-30 19:14:39');
INSERT INTO `wallet_changes` VALUES (1262, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:40', '2023-09-30 19:14:40');
INSERT INTO `wallet_changes` VALUES (1263, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:43', '2023-09-30 19:14:43');
INSERT INTO `wallet_changes` VALUES (1264, 'Piggy Gold win', '6.75', 0.00, 6.75, 4.50, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:44', '2023-09-30 19:14:44');
INSERT INTO `wallet_changes` VALUES (1265, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:50', '2023-09-30 19:14:50');
INSERT INTO `wallet_changes` VALUES (1266, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:51', '2023-09-30 19:14:51');
INSERT INTO `wallet_changes` VALUES (1267, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:55', '2023-09-30 19:14:55');
INSERT INTO `wallet_changes` VALUES (1268, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:56', '2023-09-30 19:14:56');
INSERT INTO `wallet_changes` VALUES (1269, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:14:59', '2023-09-30 19:14:59');
INSERT INTO `wallet_changes` VALUES (1270, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:00', '2023-09-30 19:15:00');
INSERT INTO `wallet_changes` VALUES (1271, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:04', '2023-09-30 19:15:04');
INSERT INTO `wallet_changes` VALUES (1272, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:05', '2023-09-30 19:15:05');
INSERT INTO `wallet_changes` VALUES (1273, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:08', '2023-09-30 19:15:08');
INSERT INTO `wallet_changes` VALUES (1274, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:09', '2023-09-30 19:15:09');
INSERT INTO `wallet_changes` VALUES (1275, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:12', '2023-09-30 19:15:12');
INSERT INTO `wallet_changes` VALUES (1276, 'Piggy Gold win', '18.00', 0.00, 18.00, 15.75, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:13', '2023-09-30 19:15:13');
INSERT INTO `wallet_changes` VALUES (1277, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:18', '2023-09-30 19:15:18');
INSERT INTO `wallet_changes` VALUES (1278, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:19', '2023-09-30 19:15:19');
INSERT INTO `wallet_changes` VALUES (1279, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:25', '2023-09-30 19:15:25');
INSERT INTO `wallet_changes` VALUES (1280, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:26', '2023-09-30 19:15:26');
INSERT INTO `wallet_changes` VALUES (1281, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:29', '2023-09-30 19:15:29');
INSERT INTO `wallet_changes` VALUES (1282, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:30', '2023-09-30 19:15:30');
INSERT INTO `wallet_changes` VALUES (1283, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:34', '2023-09-30 19:15:34');
INSERT INTO `wallet_changes` VALUES (1284, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:35', '2023-09-30 19:15:35');
INSERT INTO `wallet_changes` VALUES (1285, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:40', '2023-09-30 19:15:40');
INSERT INTO `wallet_changes` VALUES (1286, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:41', '2023-09-30 19:15:41');
INSERT INTO `wallet_changes` VALUES (1287, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:45', '2023-09-30 19:15:45');
INSERT INTO `wallet_changes` VALUES (1288, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:46', '2023-09-30 19:15:46');
INSERT INTO `wallet_changes` VALUES (1289, 'Piggy Gold play', '-2.25', 0.00, 2.25, 0.00, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:51', '2023-09-30 19:15:51');
INSERT INTO `wallet_changes` VALUES (1290, 'Piggy Gold win', '0.00', 0.00, 0.00, -2.25, 2.25, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:15:51', '2023-09-30 19:15:51');
INSERT INTO `wallet_changes` VALUES (1291, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:07', '2023-09-30 19:16:07');
INSERT INTO `wallet_changes` VALUES (1292, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:08', '2023-09-30 19:16:08');
INSERT INTO `wallet_changes` VALUES (1293, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:11', '2023-09-30 19:16:11');
INSERT INTO `wallet_changes` VALUES (1294, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:12', '2023-09-30 19:16:12');
INSERT INTO `wallet_changes` VALUES (1295, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:16', '2023-09-30 19:16:16');
INSERT INTO `wallet_changes` VALUES (1296, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:17', '2023-09-30 19:16:17');
INSERT INTO `wallet_changes` VALUES (1297, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:20', '2023-09-30 19:16:20');
INSERT INTO `wallet_changes` VALUES (1298, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:21', '2023-09-30 19:16:21');
INSERT INTO `wallet_changes` VALUES (1299, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:24', '2023-09-30 19:16:24');
INSERT INTO `wallet_changes` VALUES (1300, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:25', '2023-09-30 19:16:25');
INSERT INTO `wallet_changes` VALUES (1301, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:28', '2023-09-30 19:16:28');
INSERT INTO `wallet_changes` VALUES (1302, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:29', '2023-09-30 19:16:29');
INSERT INTO `wallet_changes` VALUES (1303, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:37', '2023-09-30 19:16:37');
INSERT INTO `wallet_changes` VALUES (1304, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:38', '2023-09-30 19:16:38');
INSERT INTO `wallet_changes` VALUES (1305, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:42', '2023-09-30 19:16:42');
INSERT INTO `wallet_changes` VALUES (1306, 'Piggy Gold win', '0.00', 0.00, 0.00, -8.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:43', '2023-09-30 19:16:43');
INSERT INTO `wallet_changes` VALUES (1307, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:46', '2023-09-30 19:16:46');
INSERT INTO `wallet_changes` VALUES (1308, 'Piggy Gold win', '24.00', 0.00, 24.00, 16.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:47', '2023-09-30 19:16:47');
INSERT INTO `wallet_changes` VALUES (1309, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:53', '2023-09-30 19:16:53');
INSERT INTO `wallet_changes` VALUES (1310, 'Piggy Gold win', '24.00', 0.00, 24.00, 16.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:54', '2023-09-30 19:16:54');
INSERT INTO `wallet_changes` VALUES (1311, 'Piggy Gold play', '-8', 0.00, 8.00, 0.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:58', '2023-09-30 19:16:58');
INSERT INTO `wallet_changes` VALUES (1312, 'Piggy Gold win', '24.00', 0.00, 24.00, 16.00, 8.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:16:59', '2023-09-30 19:16:59');
INSERT INTO `wallet_changes` VALUES (1313, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:16', '2023-09-30 19:17:16');
INSERT INTO `wallet_changes` VALUES (1314, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:17', '2023-09-30 19:17:17');
INSERT INTO `wallet_changes` VALUES (1315, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:20', '2023-09-30 19:17:20');
INSERT INTO `wallet_changes` VALUES (1316, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:21', '2023-09-30 19:17:21');
INSERT INTO `wallet_changes` VALUES (1317, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:24', '2023-09-30 19:17:24');
INSERT INTO `wallet_changes` VALUES (1318, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:25', '2023-09-30 19:17:25');
INSERT INTO `wallet_changes` VALUES (1319, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:27', '2023-09-30 19:17:27');
INSERT INTO `wallet_changes` VALUES (1320, 'Piggy Gold win', '45.00', 0.00, 45.00, 30.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:28', '2023-09-30 19:17:28');
INSERT INTO `wallet_changes` VALUES (1321, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:34', '2023-09-30 19:17:34');
INSERT INTO `wallet_changes` VALUES (1322, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:35', '2023-09-30 19:17:35');
INSERT INTO `wallet_changes` VALUES (1323, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:38', '2023-09-30 19:17:38');
INSERT INTO `wallet_changes` VALUES (1324, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:39', '2023-09-30 19:17:39');
INSERT INTO `wallet_changes` VALUES (1325, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:43', '2023-09-30 19:17:43');
INSERT INTO `wallet_changes` VALUES (1326, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:44', '2023-09-30 19:17:44');
INSERT INTO `wallet_changes` VALUES (1327, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:48', '2023-09-30 19:17:48');
INSERT INTO `wallet_changes` VALUES (1328, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:49', '2023-09-30 19:17:49');
INSERT INTO `wallet_changes` VALUES (1329, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:52', '2023-09-30 19:17:52');
INSERT INTO `wallet_changes` VALUES (1330, 'Piggy Gold win', '75.00', 0.00, 75.00, 60.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:17:53', '2023-09-30 19:17:53');
INSERT INTO `wallet_changes` VALUES (1331, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:08', '2023-09-30 19:18:08');
INSERT INTO `wallet_changes` VALUES (1332, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:09', '2023-09-30 19:18:09');
INSERT INTO `wallet_changes` VALUES (1333, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:17', '2023-09-30 19:18:17');
INSERT INTO `wallet_changes` VALUES (1334, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:18', '2023-09-30 19:18:18');
INSERT INTO `wallet_changes` VALUES (1335, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:21', '2023-09-30 19:18:21');
INSERT INTO `wallet_changes` VALUES (1336, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:22', '2023-09-30 19:18:22');
INSERT INTO `wallet_changes` VALUES (1337, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:25', '2023-09-30 19:18:25');
INSERT INTO `wallet_changes` VALUES (1338, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:26', '2023-09-30 19:18:26');
INSERT INTO `wallet_changes` VALUES (1339, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:29', '2023-09-30 19:18:29');
INSERT INTO `wallet_changes` VALUES (1340, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:30', '2023-09-30 19:18:30');
INSERT INTO `wallet_changes` VALUES (1341, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:33', '2023-09-30 19:18:33');
INSERT INTO `wallet_changes` VALUES (1342, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:34', '2023-09-30 19:18:34');
INSERT INTO `wallet_changes` VALUES (1343, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:37', '2023-09-30 19:18:37');
INSERT INTO `wallet_changes` VALUES (1344, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:38', '2023-09-30 19:18:38');
INSERT INTO `wallet_changes` VALUES (1345, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:41', '2023-09-30 19:18:41');
INSERT INTO `wallet_changes` VALUES (1346, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:42', '2023-09-30 19:18:42');
INSERT INTO `wallet_changes` VALUES (1347, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:45', '2023-09-30 19:18:45');
INSERT INTO `wallet_changes` VALUES (1348, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:18:46', '2023-09-30 19:18:46');
INSERT INTO `wallet_changes` VALUES (1349, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:02', '2023-09-30 19:19:02');
INSERT INTO `wallet_changes` VALUES (1350, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:03', '2023-09-30 19:19:03');
INSERT INTO `wallet_changes` VALUES (1351, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:06', '2023-09-30 19:19:06');
INSERT INTO `wallet_changes` VALUES (1352, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:07', '2023-09-30 19:19:07');
INSERT INTO `wallet_changes` VALUES (1353, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:10', '2023-09-30 19:19:10');
INSERT INTO `wallet_changes` VALUES (1354, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:11', '2023-09-30 19:19:11');
INSERT INTO `wallet_changes` VALUES (1355, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:18', '2023-09-30 19:19:18');
INSERT INTO `wallet_changes` VALUES (1356, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:19', '2023-09-30 19:19:19');
INSERT INTO `wallet_changes` VALUES (1357, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:23', '2023-09-30 19:19:23');
INSERT INTO `wallet_changes` VALUES (1358, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:24', '2023-09-30 19:19:24');
INSERT INTO `wallet_changes` VALUES (1359, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:30', '2023-09-30 19:19:30');
INSERT INTO `wallet_changes` VALUES (1360, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:31', '2023-09-30 19:19:31');
INSERT INTO `wallet_changes` VALUES (1361, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:33', '2023-09-30 19:19:33');
INSERT INTO `wallet_changes` VALUES (1362, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:34', '2023-09-30 19:19:34');
INSERT INTO `wallet_changes` VALUES (1363, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:38', '2023-09-30 19:19:38');
INSERT INTO `wallet_changes` VALUES (1364, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:39', '2023-09-30 19:19:39');
INSERT INTO `wallet_changes` VALUES (1365, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:42', '2023-09-30 19:19:42');
INSERT INTO `wallet_changes` VALUES (1366, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:43', '2023-09-30 19:19:43');
INSERT INTO `wallet_changes` VALUES (1367, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:45', '2023-09-30 19:19:45');
INSERT INTO `wallet_changes` VALUES (1368, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:46', '2023-09-30 19:19:46');
INSERT INTO `wallet_changes` VALUES (1369, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:49', '2023-09-30 19:19:49');
INSERT INTO `wallet_changes` VALUES (1370, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:50', '2023-09-30 19:19:50');
INSERT INTO `wallet_changes` VALUES (1371, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:55', '2023-09-30 19:19:55');
INSERT INTO `wallet_changes` VALUES (1372, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:19:56', '2023-09-30 19:19:56');
INSERT INTO `wallet_changes` VALUES (1373, 'Piggy Gold play', '-15', 0.00, 15.00, 0.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:00', '2023-09-30 19:20:00');
INSERT INTO `wallet_changes` VALUES (1374, 'Piggy Gold win', '0.00', 0.00, 0.00, -15.00, 15.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:01', '2023-09-30 19:20:01');
INSERT INTO `wallet_changes` VALUES (1375, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:14', '2023-09-30 19:20:14');
INSERT INTO `wallet_changes` VALUES (1376, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:14', '2023-09-30 19:20:14');
INSERT INTO `wallet_changes` VALUES (1377, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:23', '2023-09-30 19:20:23');
INSERT INTO `wallet_changes` VALUES (1378, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:24', '2023-09-30 19:20:24');
INSERT INTO `wallet_changes` VALUES (1379, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:45', '2023-09-30 19:20:45');
INSERT INTO `wallet_changes` VALUES (1380, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:46', '2023-09-30 19:20:46');
INSERT INTO `wallet_changes` VALUES (1381, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:49', '2023-09-30 19:20:49');
INSERT INTO `wallet_changes` VALUES (1382, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:50', '2023-09-30 19:20:50');
INSERT INTO `wallet_changes` VALUES (1383, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:53', '2023-09-30 19:20:53');
INSERT INTO `wallet_changes` VALUES (1384, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:54', '2023-09-30 19:20:54');
INSERT INTO `wallet_changes` VALUES (1385, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:56', '2023-09-30 19:20:56');
INSERT INTO `wallet_changes` VALUES (1386, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:20:57', '2023-09-30 19:20:57');
INSERT INTO `wallet_changes` VALUES (1387, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:00', '2023-09-30 19:21:00');
INSERT INTO `wallet_changes` VALUES (1388, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:01', '2023-09-30 19:21:01');
INSERT INTO `wallet_changes` VALUES (1389, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:05', '2023-09-30 19:21:05');
INSERT INTO `wallet_changes` VALUES (1390, 'Piggy Gold win', '75.00', 0.00, 75.00, 50.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:06', '2023-09-30 19:21:06');
INSERT INTO `wallet_changes` VALUES (1391, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:13', '2023-09-30 19:21:13');
INSERT INTO `wallet_changes` VALUES (1392, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:14', '2023-09-30 19:21:14');
INSERT INTO `wallet_changes` VALUES (1393, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:18', '2023-09-30 19:21:18');
INSERT INTO `wallet_changes` VALUES (1394, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:19', '2023-09-30 19:21:19');
INSERT INTO `wallet_changes` VALUES (1395, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:23', '2023-09-30 19:21:23');
INSERT INTO `wallet_changes` VALUES (1396, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:24', '2023-09-30 19:21:24');
INSERT INTO `wallet_changes` VALUES (1397, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:27', '2023-09-30 19:21:27');
INSERT INTO `wallet_changes` VALUES (1398, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:28', '2023-09-30 19:21:28');
INSERT INTO `wallet_changes` VALUES (1399, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:32', '2023-09-30 19:21:32');
INSERT INTO `wallet_changes` VALUES (1400, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:32', '2023-09-30 19:21:32');
INSERT INTO `wallet_changes` VALUES (1401, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:36', '2023-09-30 19:21:36');
INSERT INTO `wallet_changes` VALUES (1402, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:37', '2023-09-30 19:21:37');
INSERT INTO `wallet_changes` VALUES (1403, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:39', '2023-09-30 19:21:39');
INSERT INTO `wallet_changes` VALUES (1404, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:40', '2023-09-30 19:21:40');
INSERT INTO `wallet_changes` VALUES (1405, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:43', '2023-09-30 19:21:43');
INSERT INTO `wallet_changes` VALUES (1406, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:44', '2023-09-30 19:21:44');
INSERT INTO `wallet_changes` VALUES (1407, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:47', '2023-09-30 19:21:47');
INSERT INTO `wallet_changes` VALUES (1408, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:48', '2023-09-30 19:21:48');
INSERT INTO `wallet_changes` VALUES (1409, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:52', '2023-09-30 19:21:52');
INSERT INTO `wallet_changes` VALUES (1410, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:53', '2023-09-30 19:21:53');
INSERT INTO `wallet_changes` VALUES (1411, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:55', '2023-09-30 19:21:55');
INSERT INTO `wallet_changes` VALUES (1412, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:21:56', '2023-09-30 19:21:56');
INSERT INTO `wallet_changes` VALUES (1413, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:01', '2023-09-30 19:22:01');
INSERT INTO `wallet_changes` VALUES (1414, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:02', '2023-09-30 19:22:02');
INSERT INTO `wallet_changes` VALUES (1415, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:05', '2023-09-30 19:22:05');
INSERT INTO `wallet_changes` VALUES (1416, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:06', '2023-09-30 19:22:06');
INSERT INTO `wallet_changes` VALUES (1417, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:09', '2023-09-30 19:22:09');
INSERT INTO `wallet_changes` VALUES (1418, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:10', '2023-09-30 19:22:10');
INSERT INTO `wallet_changes` VALUES (1419, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:13', '2023-09-30 19:22:13');
INSERT INTO `wallet_changes` VALUES (1420, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:14', '2023-09-30 19:22:14');
INSERT INTO `wallet_changes` VALUES (1421, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:17', '2023-09-30 19:22:17');
INSERT INTO `wallet_changes` VALUES (1422, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:18', '2023-09-30 19:22:18');
INSERT INTO `wallet_changes` VALUES (1423, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:21', '2023-09-30 19:22:21');
INSERT INTO `wallet_changes` VALUES (1424, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:22', '2023-09-30 19:22:22');
INSERT INTO `wallet_changes` VALUES (1425, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:24', '2023-09-30 19:22:24');
INSERT INTO `wallet_changes` VALUES (1426, 'Piggy Gold win', '75.00', 0.00, 75.00, 50.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:25', '2023-09-30 19:22:25');
INSERT INTO `wallet_changes` VALUES (1427, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:30', '2023-09-30 19:22:30');
INSERT INTO `wallet_changes` VALUES (1428, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:31', '2023-09-30 19:22:31');
INSERT INTO `wallet_changes` VALUES (1429, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:34', '2023-09-30 19:22:34');
INSERT INTO `wallet_changes` VALUES (1430, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:22:35', '2023-09-30 19:22:35');
INSERT INTO `wallet_changes` VALUES (1431, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:07', '2023-09-30 19:23:07');
INSERT INTO `wallet_changes` VALUES (1432, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:08', '2023-09-30 19:23:08');
INSERT INTO `wallet_changes` VALUES (1433, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:16', '2023-09-30 19:23:16');
INSERT INTO `wallet_changes` VALUES (1434, 'Piggy Gold win', '75.00', 0.00, 75.00, 50.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:17', '2023-09-30 19:23:17');
INSERT INTO `wallet_changes` VALUES (1435, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:22', '2023-09-30 19:23:22');
INSERT INTO `wallet_changes` VALUES (1436, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:23', '2023-09-30 19:23:23');
INSERT INTO `wallet_changes` VALUES (1437, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:26', '2023-09-30 19:23:26');
INSERT INTO `wallet_changes` VALUES (1438, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:27', '2023-09-30 19:23:27');
INSERT INTO `wallet_changes` VALUES (1439, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:30', '2023-09-30 19:23:30');
INSERT INTO `wallet_changes` VALUES (1440, 'Piggy Gold win', '75.00', 0.00, 75.00, 50.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:31', '2023-09-30 19:23:31');
INSERT INTO `wallet_changes` VALUES (1441, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:36', '2023-09-30 19:23:36');
INSERT INTO `wallet_changes` VALUES (1442, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:37', '2023-09-30 19:23:37');
INSERT INTO `wallet_changes` VALUES (1443, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:40', '2023-09-30 19:23:40');
INSERT INTO `wallet_changes` VALUES (1444, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:41', '2023-09-30 19:23:41');
INSERT INTO `wallet_changes` VALUES (1445, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:47', '2023-09-30 19:23:47');
INSERT INTO `wallet_changes` VALUES (1446, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:48', '2023-09-30 19:23:48');
INSERT INTO `wallet_changes` VALUES (1447, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:51', '2023-09-30 19:23:51');
INSERT INTO `wallet_changes` VALUES (1448, 'Piggy Gold win', '75.00', 0.00, 75.00, 50.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:52', '2023-09-30 19:23:52');
INSERT INTO `wallet_changes` VALUES (1449, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:56', '2023-09-30 19:23:56');
INSERT INTO `wallet_changes` VALUES (1450, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:23:57', '2023-09-30 19:23:57');
INSERT INTO `wallet_changes` VALUES (1451, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:01', '2023-09-30 19:24:01');
INSERT INTO `wallet_changes` VALUES (1452, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:02', '2023-09-30 19:24:02');
INSERT INTO `wallet_changes` VALUES (1453, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:05', '2023-09-30 19:24:05');
INSERT INTO `wallet_changes` VALUES (1454, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:06', '2023-09-30 19:24:06');
INSERT INTO `wallet_changes` VALUES (1455, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:08', '2023-09-30 19:24:08');
INSERT INTO `wallet_changes` VALUES (1456, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:09', '2023-09-30 19:24:09');
INSERT INTO `wallet_changes` VALUES (1457, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:13', '2023-09-30 19:24:13');
INSERT INTO `wallet_changes` VALUES (1458, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:14', '2023-09-30 19:24:14');
INSERT INTO `wallet_changes` VALUES (1459, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:18', '2023-09-30 19:24:18');
INSERT INTO `wallet_changes` VALUES (1460, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:18', '2023-09-30 19:24:18');
INSERT INTO `wallet_changes` VALUES (1461, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:22', '2023-09-30 19:24:22');
INSERT INTO `wallet_changes` VALUES (1462, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:23', '2023-09-30 19:24:23');
INSERT INTO `wallet_changes` VALUES (1463, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:26', '2023-09-30 19:24:26');
INSERT INTO `wallet_changes` VALUES (1464, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:27', '2023-09-30 19:24:27');
INSERT INTO `wallet_changes` VALUES (1465, 'Piggy Gold play', '-25', 0.00, 25.00, 0.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:29', '2023-09-30 19:24:29');
INSERT INTO `wallet_changes` VALUES (1466, 'Piggy Gold win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Piggy Gold', 'davi.automation2023@gmail.com', '2023-09-30 19:24:30', '2023-09-30 19:24:30');
INSERT INTO `wallet_changes` VALUES (1467, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:27', '2023-09-30 19:30:27');
INSERT INTO `wallet_changes` VALUES (1468, 'Fortune Mouse win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:28', '2023-09-30 19:30:28');
INSERT INTO `wallet_changes` VALUES (1469, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:33', '2023-09-30 19:30:33');
INSERT INTO `wallet_changes` VALUES (1470, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:34', '2023-09-30 19:30:34');
INSERT INTO `wallet_changes` VALUES (1471, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:38', '2023-09-30 19:30:38');
INSERT INTO `wallet_changes` VALUES (1472, 'Fortune Mouse win', '4.00', 0.00, 4.00, 2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:39', '2023-09-30 19:30:39');
INSERT INTO `wallet_changes` VALUES (1473, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:47', '2023-09-30 19:30:47');
INSERT INTO `wallet_changes` VALUES (1474, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:48', '2023-09-30 19:30:48');
INSERT INTO `wallet_changes` VALUES (1475, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:53', '2023-09-30 19:30:53');
INSERT INTO `wallet_changes` VALUES (1476, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:54', '2023-09-30 19:30:54');
INSERT INTO `wallet_changes` VALUES (1477, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:58', '2023-09-30 19:30:58');
INSERT INTO `wallet_changes` VALUES (1478, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:30:59', '2023-09-30 19:30:59');
INSERT INTO `wallet_changes` VALUES (1479, 'Fortune Mouse win', '36.00', 0.00, 36.00, 34.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:09', '2023-09-30 19:31:09');
INSERT INTO `wallet_changes` VALUES (1480, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:22', '2023-09-30 19:31:22');
INSERT INTO `wallet_changes` VALUES (1481, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:23', '2023-09-30 19:31:23');
INSERT INTO `wallet_changes` VALUES (1482, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:50', '2023-09-30 19:31:50');
INSERT INTO `wallet_changes` VALUES (1483, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:51', '2023-09-30 19:31:51');
INSERT INTO `wallet_changes` VALUES (1484, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:58', '2023-09-30 19:31:58');
INSERT INTO `wallet_changes` VALUES (1485, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:31:59', '2023-09-30 19:31:59');
INSERT INTO `wallet_changes` VALUES (1486, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:19', '2023-09-30 19:32:19');
INSERT INTO `wallet_changes` VALUES (1487, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:20', '2023-09-30 19:32:20');
INSERT INTO `wallet_changes` VALUES (1488, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:26', '2023-09-30 19:32:26');
INSERT INTO `wallet_changes` VALUES (1489, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:27', '2023-09-30 19:32:27');
INSERT INTO `wallet_changes` VALUES (1490, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:31', '2023-09-30 19:32:31');
INSERT INTO `wallet_changes` VALUES (1491, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:32', '2023-09-30 19:32:32');
INSERT INTO `wallet_changes` VALUES (1492, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:35', '2023-09-30 19:32:35');
INSERT INTO `wallet_changes` VALUES (1493, 'Fortune Mouse win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:36', '2023-09-30 19:32:36');
INSERT INTO `wallet_changes` VALUES (1494, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:42', '2023-09-30 19:32:42');
INSERT INTO `wallet_changes` VALUES (1495, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:43', '2023-09-30 19:32:43');
INSERT INTO `wallet_changes` VALUES (1496, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:46', '2023-09-30 19:32:46');
INSERT INTO `wallet_changes` VALUES (1497, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:48', '2023-09-30 19:32:48');
INSERT INTO `wallet_changes` VALUES (1498, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:52', '2023-09-30 19:32:52');
INSERT INTO `wallet_changes` VALUES (1499, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:32:53', '2023-09-30 19:32:53');
INSERT INTO `wallet_changes` VALUES (1500, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:03', '2023-09-30 19:33:03');
INSERT INTO `wallet_changes` VALUES (1501, 'Fortune Mouse win', '36.00', 0.00, 36.00, 34.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:08', '2023-09-30 19:33:08');
INSERT INTO `wallet_changes` VALUES (1502, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:18', '2023-09-30 19:33:18');
INSERT INTO `wallet_changes` VALUES (1503, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:19', '2023-09-30 19:33:19');
INSERT INTO `wallet_changes` VALUES (1504, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:23', '2023-09-30 19:33:23');
INSERT INTO `wallet_changes` VALUES (1505, 'Fortune Mouse win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:24', '2023-09-30 19:33:24');
INSERT INTO `wallet_changes` VALUES (1506, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:28', '2023-09-30 19:33:28');
INSERT INTO `wallet_changes` VALUES (1507, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:29', '2023-09-30 19:33:29');
INSERT INTO `wallet_changes` VALUES (1508, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:32', '2023-09-30 19:33:32');
INSERT INTO `wallet_changes` VALUES (1509, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:33', '2023-09-30 19:33:33');
INSERT INTO `wallet_changes` VALUES (1510, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:37', '2023-09-30 19:33:37');
INSERT INTO `wallet_changes` VALUES (1511, 'Fortune Mouse win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:38', '2023-09-30 19:33:38');
INSERT INTO `wallet_changes` VALUES (1512, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:44', '2023-09-30 19:33:44');
INSERT INTO `wallet_changes` VALUES (1513, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:45', '2023-09-30 19:33:45');
INSERT INTO `wallet_changes` VALUES (1514, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:48', '2023-09-30 19:33:48');
INSERT INTO `wallet_changes` VALUES (1515, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:49', '2023-09-30 19:33:49');
INSERT INTO `wallet_changes` VALUES (1516, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:52', '2023-09-30 19:33:52');
INSERT INTO `wallet_changes` VALUES (1517, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:53', '2023-09-30 19:33:53');
INSERT INTO `wallet_changes` VALUES (1518, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:56', '2023-09-30 19:33:56');
INSERT INTO `wallet_changes` VALUES (1519, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:33:57', '2023-09-30 19:33:57');
INSERT INTO `wallet_changes` VALUES (1520, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:02', '2023-09-30 19:34:02');
INSERT INTO `wallet_changes` VALUES (1521, 'Fortune Mouse win', '2.00', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:03', '2023-09-30 19:34:03');
INSERT INTO `wallet_changes` VALUES (1522, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:08', '2023-09-30 19:34:08');
INSERT INTO `wallet_changes` VALUES (1523, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:09', '2023-09-30 19:34:09');
INSERT INTO `wallet_changes` VALUES (1524, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:13', '2023-09-30 19:34:13');
INSERT INTO `wallet_changes` VALUES (1525, 'Fortune Mouse win', '6.00', 0.00, 6.00, 4.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:14', '2023-09-30 19:34:14');
INSERT INTO `wallet_changes` VALUES (1526, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:20', '2023-09-30 19:34:20');
INSERT INTO `wallet_changes` VALUES (1527, 'Fortune Mouse win', '0.00', 0.00, 0.00, -2.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:21', '2023-09-30 19:34:21');
INSERT INTO `wallet_changes` VALUES (1528, 'Fortune Mouse play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:27', '2023-09-30 19:34:27');
INSERT INTO `wallet_changes` VALUES (1529, 'Fortune Mouse win', '1.20', 0.00, 1.20, -0.80, 2.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:28', '2023-09-30 19:34:28');
INSERT INTO `wallet_changes` VALUES (1530, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:41', '2023-09-30 19:34:41');
INSERT INTO `wallet_changes` VALUES (1531, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:42', '2023-09-30 19:34:42');
INSERT INTO `wallet_changes` VALUES (1532, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:45', '2023-09-30 19:34:45');
INSERT INTO `wallet_changes` VALUES (1533, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:46', '2023-09-30 19:34:46');
INSERT INTO `wallet_changes` VALUES (1534, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:49', '2023-09-30 19:34:49');
INSERT INTO `wallet_changes` VALUES (1535, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:50', '2023-09-30 19:34:50');
INSERT INTO `wallet_changes` VALUES (1536, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:54', '2023-09-30 19:34:54');
INSERT INTO `wallet_changes` VALUES (1537, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:55', '2023-09-30 19:34:55');
INSERT INTO `wallet_changes` VALUES (1538, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:58', '2023-09-30 19:34:58');
INSERT INTO `wallet_changes` VALUES (1539, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:34:59', '2023-09-30 19:34:59');
INSERT INTO `wallet_changes` VALUES (1540, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:01', '2023-09-30 19:35:01');
INSERT INTO `wallet_changes` VALUES (1541, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:02', '2023-09-30 19:35:02');
INSERT INTO `wallet_changes` VALUES (1542, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:06', '2023-09-30 19:35:06');
INSERT INTO `wallet_changes` VALUES (1543, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:07', '2023-09-30 19:35:07');
INSERT INTO `wallet_changes` VALUES (1544, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:10', '2023-09-30 19:35:10');
INSERT INTO `wallet_changes` VALUES (1545, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:11', '2023-09-30 19:35:11');
INSERT INTO `wallet_changes` VALUES (1546, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:23', '2023-09-30 19:35:23');
INSERT INTO `wallet_changes` VALUES (1547, 'Fortune Mouse win', '6.00', 0.00, 6.00, -4.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:24', '2023-09-30 19:35:24');
INSERT INTO `wallet_changes` VALUES (1548, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:29', '2023-09-30 19:35:29');
INSERT INTO `wallet_changes` VALUES (1549, 'Fortune Mouse win', '10.00', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:30', '2023-09-30 19:35:30');
INSERT INTO `wallet_changes` VALUES (1550, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:36', '2023-09-30 19:35:36');
INSERT INTO `wallet_changes` VALUES (1551, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:37', '2023-09-30 19:35:37');
INSERT INTO `wallet_changes` VALUES (1552, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:40', '2023-09-30 19:35:40');
INSERT INTO `wallet_changes` VALUES (1553, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:41', '2023-09-30 19:35:41');
INSERT INTO `wallet_changes` VALUES (1554, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:44', '2023-09-30 19:35:44');
INSERT INTO `wallet_changes` VALUES (1555, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:45', '2023-09-30 19:35:45');
INSERT INTO `wallet_changes` VALUES (1556, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:49', '2023-09-30 19:35:49');
INSERT INTO `wallet_changes` VALUES (1557, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:50', '2023-09-30 19:35:50');
INSERT INTO `wallet_changes` VALUES (1558, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:53', '2023-09-30 19:35:53');
INSERT INTO `wallet_changes` VALUES (1559, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:35:54', '2023-09-30 19:35:54');
INSERT INTO `wallet_changes` VALUES (1560, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:04', '2023-09-30 19:37:04');
INSERT INTO `wallet_changes` VALUES (1561, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:05', '2023-09-30 19:37:05');
INSERT INTO `wallet_changes` VALUES (1562, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:09', '2023-09-30 19:37:09');
INSERT INTO `wallet_changes` VALUES (1563, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:10', '2023-09-30 19:37:10');
INSERT INTO `wallet_changes` VALUES (1564, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:13', '2023-09-30 19:37:13');
INSERT INTO `wallet_changes` VALUES (1565, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:14', '2023-09-30 19:37:14');
INSERT INTO `wallet_changes` VALUES (1566, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:17', '2023-09-30 19:37:17');
INSERT INTO `wallet_changes` VALUES (1567, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:18', '2023-09-30 19:37:18');
INSERT INTO `wallet_changes` VALUES (1568, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:22', '2023-09-30 19:37:22');
INSERT INTO `wallet_changes` VALUES (1569, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:23', '2023-09-30 19:37:23');
INSERT INTO `wallet_changes` VALUES (1570, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:26', '2023-09-30 19:37:26');
INSERT INTO `wallet_changes` VALUES (1571, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:27', '2023-09-30 19:37:27');
INSERT INTO `wallet_changes` VALUES (1572, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:30', '2023-09-30 19:37:30');
INSERT INTO `wallet_changes` VALUES (1573, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:31', '2023-09-30 19:37:31');
INSERT INTO `wallet_changes` VALUES (1574, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:34', '2023-09-30 19:37:34');
INSERT INTO `wallet_changes` VALUES (1575, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:35', '2023-09-30 19:37:35');
INSERT INTO `wallet_changes` VALUES (1576, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:39', '2023-09-30 19:37:39');
INSERT INTO `wallet_changes` VALUES (1577, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:40', '2023-09-30 19:37:40');
INSERT INTO `wallet_changes` VALUES (1578, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:43', '2023-09-30 19:37:43');
INSERT INTO `wallet_changes` VALUES (1579, 'Fortune Mouse win', '10.00', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:44', '2023-09-30 19:37:44');
INSERT INTO `wallet_changes` VALUES (1580, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:51', '2023-09-30 19:37:51');
INSERT INTO `wallet_changes` VALUES (1581, 'Fortune Mouse win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:52', '2023-09-30 19:37:52');
INSERT INTO `wallet_changes` VALUES (1582, 'Fortune Mouse play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:55', '2023-09-30 19:37:55');
INSERT INTO `wallet_changes` VALUES (1583, 'Fortune Mouse win', '20.00', 0.00, 20.00, 10.00, 10.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:37:56', '2023-09-30 19:37:56');
INSERT INTO `wallet_changes` VALUES (1584, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:14', '2023-09-30 19:38:14');
INSERT INTO `wallet_changes` VALUES (1585, 'Fortune Mouse win', '40.00', 0.00, 40.00, 20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:15', '2023-09-30 19:38:15');
INSERT INTO `wallet_changes` VALUES (1586, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:21', '2023-09-30 19:38:21');
INSERT INTO `wallet_changes` VALUES (1587, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:22', '2023-09-30 19:38:22');
INSERT INTO `wallet_changes` VALUES (1588, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:25', '2023-09-30 19:38:25');
INSERT INTO `wallet_changes` VALUES (1589, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:26', '2023-09-30 19:38:26');
INSERT INTO `wallet_changes` VALUES (1590, 'Fortune Mouse play', '-20', 0.00, 20.00, 0.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:30', '2023-09-30 19:38:30');
INSERT INTO `wallet_changes` VALUES (1591, 'Fortune Mouse win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-09-30 19:38:31', '2023-09-30 19:38:31');
INSERT INTO `wallet_changes` VALUES (1592, 'Fortune Tiger play', '-7.5', 0.00, 7.50, 0.00, 7.50, 'Fortune Tiger', 'bia@demo.com', '2023-09-30 21:22:24', '2023-09-30 21:22:24');
INSERT INTO `wallet_changes` VALUES (1593, 'Fortune Tiger win', '0.00', 0.00, 0.00, -7.50, 7.50, 'Fortune Tiger', 'bia@demo.com', '2023-09-30 21:22:25', '2023-09-30 21:22:25');
INSERT INTO `wallet_changes` VALUES (1594, 'Fortune Tiger win', '237.61', 0.00, 237.61, 237.61, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:14', '2023-10-01 12:34:14');
INSERT INTO `wallet_changes` VALUES (1595, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:17', '2023-10-01 12:34:17');
INSERT INTO `wallet_changes` VALUES (1596, 'Fortune Tiger play', '-755.61', 0.00, 755.61, 0.00, 755.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:19', '2023-10-01 12:34:19');
INSERT INTO `wallet_changes` VALUES (1597, 'Fortune Tiger play', '-587.69', 0.00, 587.69, 0.00, 587.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:22', '2023-10-01 12:34:22');
INSERT INTO `wallet_changes` VALUES (1598, 'Fortune Tiger play', '-1259.35', 0.00, 1259.35, 0.00, 1259.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:24', '2023-10-01 12:34:24');
INSERT INTO `wallet_changes` VALUES (1599, 'Fortune Tiger win', '764.00', 0.00, 764.00, -495.35, 1259.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:25', '2023-10-01 12:34:25');
INSERT INTO `wallet_changes` VALUES (1600, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1259.35, 1259.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:25', '2023-10-01 12:34:25');
INSERT INTO `wallet_changes` VALUES (1601, 'Fortune Tiger win', '333.22', 0.00, 333.22, -926.13, 1259.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:26', '2023-10-01 12:34:26');
INSERT INTO `wallet_changes` VALUES (1602, 'Fortune Tiger win', '807.14', 0.00, 807.14, -452.21, 1259.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:27', '2023-10-01 12:34:27');
INSERT INTO `wallet_changes` VALUES (1603, 'Fortune Tiger play', '-4842.83', 0.00, 4842.83, 0.00, 4842.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:33', '2023-10-01 12:34:33');
INSERT INTO `wallet_changes` VALUES (1604, 'Fortune Tiger win', '35.00', 0.00, 35.00, -4807.83, 4842.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:34', '2023-10-01 12:34:34');
INSERT INTO `wallet_changes` VALUES (1605, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:35', '2023-10-01 12:34:35');
INSERT INTO `wallet_changes` VALUES (1606, 'Fortune Tiger win', '4842.83', 0.00, 4842.83, 4807.84, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:35', '2023-10-01 12:34:35');
INSERT INTO `wallet_changes` VALUES (1607, 'Fortune Tiger play', '-290.57', 0.00, 290.57, 0.00, 290.57, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:36', '2023-10-01 12:34:36');
INSERT INTO `wallet_changes` VALUES (1608, 'Fortune Tiger play', '-1320.16', 0.00, 1320.16, 0.00, 1320.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:37', '2023-10-01 12:34:37');
INSERT INTO `wallet_changes` VALUES (1609, 'Fortune Tiger win', '637.32', 0.00, 637.32, -682.84, 1320.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:37', '2023-10-01 12:34:37');
INSERT INTO `wallet_changes` VALUES (1610, 'Fortune Tiger play', '-273.14', 0.00, 273.14, 0.00, 273.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:40', '2023-10-01 12:34:40');
INSERT INTO `wallet_changes` VALUES (1611, 'Fortune Tiger win', '1155.37', 0.00, 1155.37, 882.23, 273.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:41', '2023-10-01 12:34:41');
INSERT INTO `wallet_changes` VALUES (1612, 'Fortune Tiger play', '-978.21', 0.00, 978.21, 0.00, 978.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:41', '2023-10-01 12:34:41');
INSERT INTO `wallet_changes` VALUES (1613, 'Fortune Tiger play', '-1292.32', 0.00, 1292.32, 0.00, 1292.32, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:42', '2023-10-01 12:34:42');
INSERT INTO `wallet_changes` VALUES (1614, 'Fortune Tiger win', '759.35', 0.00, 759.35, -532.97, 1292.32, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:43', '2023-10-01 12:34:43');
INSERT INTO `wallet_changes` VALUES (1615, 'Fortune Tiger play', '-706.2', 0.00, 706.20, 0.00, 706.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:43', '2023-10-01 12:34:43');
INSERT INTO `wallet_changes` VALUES (1616, 'Fortune Tiger win', '611.25', 0.00, 611.25, -94.95, 706.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:44', '2023-10-01 12:34:44');
INSERT INTO `wallet_changes` VALUES (1617, 'Fortune Tiger win', '1148.51', 0.00, 1148.51, 442.31, 706.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:45', '2023-10-01 12:34:45');
INSERT INTO `wallet_changes` VALUES (1618, 'Fortune Tiger play', '-1293.99', 0.00, 1293.99, 0.00, 1293.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:45', '2023-10-01 12:34:45');
INSERT INTO `wallet_changes` VALUES (1619, 'Fortune Tiger play', '-994.38', 0.00, 994.38, 0.00, 994.38, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:46', '2023-10-01 12:34:46');
INSERT INTO `wallet_changes` VALUES (1620, 'Fortune Tiger win', '134.43', 0.00, 134.43, -859.95, 994.38, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:47', '2023-10-01 12:34:47');
INSERT INTO `wallet_changes` VALUES (1621, 'Fortune Tiger win', '225.84', 0.00, 225.84, -768.54, 994.38, 'Fortune Tiger', 'admin@demo.com', '2023-10-01 12:34:47', '2023-10-01 12:34:47');
INSERT INTO `wallet_changes` VALUES (1622, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'admin@demo.com', '2023-10-02 08:32:28', '2023-10-02 08:32:28');
INSERT INTO `wallet_changes` VALUES (1623, 'Aviator win', '0.00', 0.00, 0.00, -0.10, 0.10, 'Aviator', 'admin@demo.com', '2023-10-02 08:32:35', '2023-10-02 08:32:35');
INSERT INTO `wallet_changes` VALUES (1624, 'Aviator play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Aviator', 'admin@demo.com', '2023-10-02 08:33:59', '2023-10-02 08:33:59');
INSERT INTO `wallet_changes` VALUES (1625, 'Aviator win', '0.12', 0.00, 0.12, 0.02, 0.10, 'Aviator', 'admin@demo.com', '2023-10-02 08:34:06', '2023-10-02 08:34:06');
INSERT INTO `wallet_changes` VALUES (1626, 'Fortune Tiger win', '929.61', 0.00, 929.61, 929.61, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:19', '2023-10-02 09:05:19');
INSERT INTO `wallet_changes` VALUES (1627, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:21', '2023-10-02 09:05:21');
INSERT INTO `wallet_changes` VALUES (1628, 'Fortune Tiger win', '886.23', 0.00, 886.23, 886.23, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:21', '2023-10-02 09:05:21');
INSERT INTO `wallet_changes` VALUES (1629, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:23', '2023-10-02 09:05:23');
INSERT INTO `wallet_changes` VALUES (1630, 'Fortune Tiger play', '-281.98', 0.00, 281.98, 0.00, 281.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:24', '2023-10-02 09:05:24');
INSERT INTO `wallet_changes` VALUES (1631, 'Fortune Tiger play', '-589.74', 0.00, 589.74, 0.00, 589.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:25', '2023-10-02 09:05:25');
INSERT INTO `wallet_changes` VALUES (1632, 'Fortune Tiger play', '-523.68', 0.00, 523.68, 0.00, 523.68, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:27', '2023-10-02 09:05:27');
INSERT INTO `wallet_changes` VALUES (1633, 'Fortune Tiger play', '-1297.44', 0.00, 1297.44, 0.00, 1297.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:28', '2023-10-02 09:05:28');
INSERT INTO `wallet_changes` VALUES (1634, 'Fortune Tiger play', '-966.79', 0.00, 966.79, 0.00, 966.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:29', '2023-10-02 09:05:29');
INSERT INTO `wallet_changes` VALUES (1635, 'Fortune Tiger win', '926.51', 0.00, 926.51, -40.28, 966.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:29', '2023-10-02 09:05:29');
INSERT INTO `wallet_changes` VALUES (1636, 'Fortune Tiger play', '-475.73', 0.00, 475.73, 0.00, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:30', '2023-10-02 09:05:30');
INSERT INTO `wallet_changes` VALUES (1637, 'Fortune Tiger win', '0.00', 0.00, 0.00, -475.73, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:30', '2023-10-02 09:05:30');
INSERT INTO `wallet_changes` VALUES (1638, 'Fortune Tiger win', '432.48', 0.00, 432.48, -43.25, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:31', '2023-10-02 09:05:31');
INSERT INTO `wallet_changes` VALUES (1639, 'Fortune Tiger win', '523.68', 0.00, 523.68, 47.95, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:31', '2023-10-02 09:05:31');
INSERT INTO `wallet_changes` VALUES (1640, 'Fortune Tiger win', '0.00', 0.00, 0.00, -475.73, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:31', '2023-10-02 09:05:31');
INSERT INTO `wallet_changes` VALUES (1641, 'Fortune Tiger win', '432.48', 0.00, 432.48, -43.25, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:32', '2023-10-02 09:05:32');
INSERT INTO `wallet_changes` VALUES (1642, 'Fortune Tiger win', '805.66', 0.00, 805.66, 329.93, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:33', '2023-10-02 09:05:33');
INSERT INTO `wallet_changes` VALUES (1643, 'Fortune Tiger win', '605.47', 0.00, 605.47, 129.74, 475.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:33', '2023-10-02 09:05:33');
INSERT INTO `wallet_changes` VALUES (1644, 'Fortune Tiger play', '-4029.31', 0.00, 4029.31, 0.00, 4029.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:36', '2023-10-02 09:05:36');
INSERT INTO `wallet_changes` VALUES (1645, 'Fortune Tiger play', '-4325.8', 0.00, 4325.80, 0.00, 4325.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:36', '2023-10-02 09:05:36');
INSERT INTO `wallet_changes` VALUES (1646, 'Fortune Tiger play', '-4028.31', 0.00, 4028.31, 0.00, 4028.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:38', '2023-10-02 09:05:38');
INSERT INTO `wallet_changes` VALUES (1647, 'Fortune Tiger win', '35.00', 0.00, 35.00, -3993.31, 4028.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:38', '2023-10-02 09:05:38');
INSERT INTO `wallet_changes` VALUES (1648, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:39', '2023-10-02 09:05:39');
INSERT INTO `wallet_changes` VALUES (1649, 'Fortune Tiger play', '-1037.95', 0.00, 1037.95, 0.00, 1037.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:39', '2023-10-02 09:05:39');
INSERT INTO `wallet_changes` VALUES (1650, 'Fortune Tiger win', '4028.31', 0.00, 4028.31, 3993.32, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:40', '2023-10-02 09:05:40');
INSERT INTO `wallet_changes` VALUES (1651, 'Fortune Tiger play', '-172.01', 0.00, 172.01, 0.00, 172.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:40', '2023-10-02 09:05:40');
INSERT INTO `wallet_changes` VALUES (1652, 'Fortune Tiger win', '140.74', 0.00, 140.74, -31.27, 172.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:40', '2023-10-02 09:05:40');
INSERT INTO `wallet_changes` VALUES (1653, 'Fortune Tiger play', '-279.6', 0.00, 279.60, 0.00, 279.60, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:40', '2023-10-02 09:05:40');
INSERT INTO `wallet_changes` VALUES (1654, 'Fortune Tiger play', '-211.25', 0.00, 211.25, 0.00, 211.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:41', '2023-10-02 09:05:41');
INSERT INTO `wallet_changes` VALUES (1655, 'Fortune Tiger win', '105.62', 0.00, 105.62, -105.63, 211.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:42', '2023-10-02 09:05:42');
INSERT INTO `wallet_changes` VALUES (1656, 'Fortune Tiger play', '-109.46', 0.00, 109.46, 0.00, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:43', '2023-10-02 09:05:43');
INSERT INTO `wallet_changes` VALUES (1657, 'Fortune Tiger win', '437.84', 0.00, 437.84, 328.38, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:43', '2023-10-02 09:05:43');
INSERT INTO `wallet_changes` VALUES (1658, 'Fortune Tiger play', '-344.02', 0.00, 344.02, 0.00, 344.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:44', '2023-10-02 09:05:44');
INSERT INTO `wallet_changes` VALUES (1659, 'Fortune Tiger play', '-105.62', 0.00, 105.62, 0.00, 105.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:44', '2023-10-02 09:05:44');
INSERT INTO `wallet_changes` VALUES (1660, 'Fortune Tiger play', '-31.27', 0.00, 31.27, 0.00, 31.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:45', '2023-10-02 09:05:45');
INSERT INTO `wallet_changes` VALUES (1661, 'Fortune Tiger win', '1425.92', 0.00, 1425.92, 1394.65, 31.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:45', '2023-10-02 09:05:45');
INSERT INTO `wallet_changes` VALUES (1662, 'Fortune Tiger win', '46.91', 0.00, 46.91, 15.64, 31.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:45', '2023-10-02 09:05:45');
INSERT INTO `wallet_changes` VALUES (1663, 'Fortune Tiger play', '-1056.23', 0.00, 1056.23, 0.00, 1056.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:45', '2023-10-02 09:05:45');
INSERT INTO `wallet_changes` VALUES (1664, 'Fortune Tiger play', '-109.46', 0.00, 109.46, 0.00, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:46', '2023-10-02 09:05:46');
INSERT INTO `wallet_changes` VALUES (1665, 'Fortune Tiger play', '-264.06', 0.00, 264.06, 0.00, 264.06, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:46', '2023-10-02 09:05:46');
INSERT INTO `wallet_changes` VALUES (1666, 'Fortune Tiger win', '422.21', 0.00, 422.21, 312.75, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:47', '2023-10-02 09:05:47');
INSERT INTO `wallet_changes` VALUES (1667, 'Fortune Tiger win', '686.55', 0.00, 686.55, 577.09, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:47', '2023-10-02 09:05:47');
INSERT INTO `wallet_changes` VALUES (1668, 'Fortune Tiger win', '375.30', 0.00, 375.30, 265.84, 109.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:47', '2023-10-02 09:05:47');
INSERT INTO `wallet_changes` VALUES (1669, 'Fortune Tiger play', '-264.06', 0.00, 264.06, 0.00, 264.06, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:47', '2023-10-02 09:05:47');
INSERT INTO `wallet_changes` VALUES (1670, 'Fortune Tiger play', '-203.28', 0.00, 203.28, 0.00, 203.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:48', '2023-10-02 09:05:48');
INSERT INTO `wallet_changes` VALUES (1671, 'Fortune Tiger win', '105.62', 0.00, 105.62, -97.66, 203.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:48', '2023-10-02 09:05:48');
INSERT INTO `wallet_changes` VALUES (1672, 'Fortune Tiger play', '-140.74', 0.00, 140.74, 0.00, 140.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:49', '2023-10-02 09:05:49');
INSERT INTO `wallet_changes` VALUES (1673, 'Fortune Tiger win', '1373.10', 0.00, 1373.10, 1232.36, 140.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:49', '2023-10-02 09:05:49');
INSERT INTO `wallet_changes` VALUES (1674, 'Fortune Tiger win', '469.12', 0.00, 469.12, 328.38, 140.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:49', '2023-10-02 09:05:49');
INSERT INTO `wallet_changes` VALUES (1675, 'Fortune Tiger play', '-1425.92', 0.00, 1425.92, 0.00, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:50', '2023-10-02 09:05:50');
INSERT INTO `wallet_changes` VALUES (1676, 'Fortune Tiger win', '172.01', 0.00, 172.01, -1253.91, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:50', '2023-10-02 09:05:50');
INSERT INTO `wallet_changes` VALUES (1677, 'Fortune Tiger play', '-105.62', 0.00, 105.62, 0.00, 105.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:50', '2023-10-02 09:05:50');
INSERT INTO `wallet_changes` VALUES (1678, 'Fortune Tiger win', '844.99', 0.00, 844.99, -580.93, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:51', '2023-10-02 09:05:51');
INSERT INTO `wallet_changes` VALUES (1679, 'Fortune Tiger win', '369.68', 0.00, 369.68, -1056.24, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:05:52', '2023-10-02 09:05:52');
INSERT INTO `wallet_changes` VALUES (1680, 'Fortune Tiger win', '2364.59', 0.00, 2364.59, 938.67, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:07:55', '2023-10-02 09:07:55');
INSERT INTO `wallet_changes` VALUES (1681, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1425.92, 1425.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:07:57', '2023-10-02 09:07:57');
INSERT INTO `wallet_changes` VALUES (1682, 'Fortune Tiger play', '-3073.96', 0.00, 3073.96, 0.00, 3073.96, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:07:59', '2023-10-02 09:07:59');
INSERT INTO `wallet_changes` VALUES (1683, 'Fortune Tiger play', '-2459.17', 0.00, 2459.17, 0.00, 2459.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:02', '2023-10-02 09:08:02');
INSERT INTO `wallet_changes` VALUES (1684, 'Fortune Tiger play', '-614.79', 0.00, 614.79, 0.00, 614.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:03', '2023-10-02 09:08:03');
INSERT INTO `wallet_changes` VALUES (1685, 'Fortune Tiger win', '1348.45', 0.00, 1348.45, 733.66, 614.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:04', '2023-10-02 09:08:04');
INSERT INTO `wallet_changes` VALUES (1686, 'Fortune Tiger win', '0.00', 0.00, 0.00, -614.79, 614.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:05', '2023-10-02 09:08:05');
INSERT INTO `wallet_changes` VALUES (1687, 'Fortune Tiger win', '2086.24', 0.00, 2086.24, 1471.45, 614.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:05', '2023-10-02 09:08:05');
INSERT INTO `wallet_changes` VALUES (1688, 'Fortune Tiger win', '391.99', 0.00, 391.99, -222.80, 614.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:07', '2023-10-02 09:08:07');
INSERT INTO `wallet_changes` VALUES (1689, 'Fortune Tiger play', '-13458.43', 0.00, 13458.43, 0.00, 13458.43, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:12', '2023-10-02 09:08:12');
INSERT INTO `wallet_changes` VALUES (1690, 'Fortune Tiger win', '35.00', 0.00, 35.00, -13423.43, 13458.43, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:13', '2023-10-02 09:08:13');
INSERT INTO `wallet_changes` VALUES (1691, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:14', '2023-10-02 09:08:14');
INSERT INTO `wallet_changes` VALUES (1692, 'Fortune Tiger win', '13458.43', 0.00, 13458.43, 13423.44, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:14', '2023-10-02 09:08:14');
INSERT INTO `wallet_changes` VALUES (1693, 'Fortune Tiger play', '-2153.35', 0.00, 2153.35, 0.00, 2153.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:15', '2023-10-02 09:08:15');
INSERT INTO `wallet_changes` VALUES (1694, 'Fortune Tiger play', '-3052.37', 0.00, 3052.37, 0.00, 3052.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:16', '2023-10-02 09:08:16');
INSERT INTO `wallet_changes` VALUES (1695, 'Fortune Tiger win', '452.20', 0.00, 452.20, -2600.17, 3052.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:16', '2023-10-02 09:08:16');
INSERT INTO `wallet_changes` VALUES (1696, 'Fortune Tiger play', '-339.15', 0.00, 339.15, 0.00, 339.15, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:19', '2023-10-02 09:08:19');
INSERT INTO `wallet_changes` VALUES (1697, 'Fortune Tiger win', '219.32', 0.00, 219.32, -119.83, 339.15, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:19', '2023-10-02 09:08:19');
INSERT INTO `wallet_changes` VALUES (1698, 'Fortune Tiger play', '-3243.73', 0.00, 3243.73, 0.00, 3243.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:20', '2023-10-02 09:08:20');
INSERT INTO `wallet_changes` VALUES (1699, 'Fortune Tiger play', '-317.66', 0.00, 317.66, 0.00, 317.66, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:21', '2023-10-02 09:08:21');
INSERT INTO `wallet_changes` VALUES (1700, 'Fortune Tiger win', '2058.44', 0.00, 2058.44, 1740.78, 317.66, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:21', '2023-10-02 09:08:21');
INSERT INTO `wallet_changes` VALUES (1701, 'Fortune Tiger play', '-2033.29', 0.00, 2033.29, 0.00, 2033.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:22', '2023-10-02 09:08:22');
INSERT INTO `wallet_changes` VALUES (1702, 'Fortune Tiger win', '1606.29', 0.00, 1606.29, -427.00, 2033.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:23', '2023-10-02 09:08:23');
INSERT INTO `wallet_changes` VALUES (1703, 'Fortune Tiger win', '1573.40', 0.00, 1573.40, -459.89, 2033.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:23', '2023-10-02 09:08:23');
INSERT INTO `wallet_changes` VALUES (1704, 'Fortune Tiger play', '-2598.89', 0.00, 2598.89, 0.00, 2598.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:24', '2023-10-02 09:08:24');
INSERT INTO `wallet_changes` VALUES (1705, 'Fortune Tiger play', '-905.28', 0.00, 905.28, 0.00, 905.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:25', '2023-10-02 09:08:25');
INSERT INTO `wallet_changes` VALUES (1706, 'Fortune Tiger win', '1171.93', 0.00, 1171.93, 266.65, 905.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:25', '2023-10-02 09:08:25');
INSERT INTO `wallet_changes` VALUES (1707, 'Fortune Tiger win', '2294.05', 0.00, 2294.05, 1388.77, 905.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 09:08:26', '2023-10-02 09:08:26');
INSERT INTO `wallet_changes` VALUES (1708, 'Mines play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Mines', 'admin@demo.com', '2023-10-02 09:18:14', '2023-10-02 09:18:14');
INSERT INTO `wallet_changes` VALUES (1709, 'Mines win', '0.16', 0.00, 0.16, 0.06, 0.10, 'Mines', 'admin@demo.com', '2023-10-02 09:18:23', '2023-10-02 09:18:23');
INSERT INTO `wallet_changes` VALUES (1710, 'Fortune Tiger win', '187.00', 0.00, 187.00, 187.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:42', '2023-10-02 14:40:42');
INSERT INTO `wallet_changes` VALUES (1711, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:44', '2023-10-02 14:40:44');
INSERT INTO `wallet_changes` VALUES (1712, 'Fortune Tiger play', '-334.62', 0.00, 334.62, 0.00, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:46', '2023-10-02 14:40:46');
INSERT INTO `wallet_changes` VALUES (1713, 'Fortune Tiger play', '-347.49', 0.00, 347.49, 0.00, 347.49, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:49', '2023-10-02 14:40:49');
INSERT INTO `wallet_changes` VALUES (1714, 'Fortune Tiger play', '-334.62', 0.00, 334.62, 0.00, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:51', '2023-10-02 14:40:51');
INSERT INTO `wallet_changes` VALUES (1715, 'Fortune Tiger win', '180.18', 0.00, 180.18, -154.44, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:52', '2023-10-02 14:40:52');
INSERT INTO `wallet_changes` VALUES (1716, 'Fortune Tiger win', '0.00', 0.00, 0.00, -334.62, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:53', '2023-10-02 14:40:53');
INSERT INTO `wallet_changes` VALUES (1717, 'Fortune Tiger win', '205.92', 0.00, 205.92, -128.70, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:54', '2023-10-02 14:40:54');
INSERT INTO `wallet_changes` VALUES (1718, 'Fortune Tiger win', '90.09', 0.00, 90.09, -244.53, 334.62, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:40:56', '2023-10-02 14:40:56');
INSERT INTO `wallet_changes` VALUES (1719, 'Fortune Tiger play', '-25.74', 0.00, 25.74, 0.00, 25.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:02', '2023-10-02 14:41:02');
INSERT INTO `wallet_changes` VALUES (1720, 'Fortune Tiger play', '-100.42', 0.00, 100.42, 0.00, 100.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:02', '2023-10-02 14:41:02');
INSERT INTO `wallet_changes` VALUES (1721, 'Fortune Tiger win', '178.53', 0.00, 178.53, 78.11, 100.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:03', '2023-10-02 14:41:03');
INSERT INTO `wallet_changes` VALUES (1722, 'Fortune Tiger play', '-100.42', 0.00, 100.42, 0.00, 100.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:05', '2023-10-02 14:41:05');
INSERT INTO `wallet_changes` VALUES (1723, 'Fortune Tiger win', '294.47', 0.00, 294.47, 194.05, 100.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:06', '2023-10-02 14:41:06');
INSERT INTO `wallet_changes` VALUES (1724, 'Fortune Tiger play', '-379.87', 0.00, 379.87, 0.00, 379.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:06', '2023-10-02 14:41:06');
INSERT INTO `wallet_changes` VALUES (1725, 'Fortune Tiger play', '-223.2', 0.00, 223.20, 0.00, 223.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:07', '2023-10-02 14:41:07');
INSERT INTO `wallet_changes` VALUES (1726, 'Fortune Tiger win', '204.97', 0.00, 204.97, -18.23, 223.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:08', '2023-10-02 14:41:08');
INSERT INTO `wallet_changes` VALUES (1727, 'Fortune Tiger play', '-182.36', 0.00, 182.36, 0.00, 182.36, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:09', '2023-10-02 14:41:09');
INSERT INTO `wallet_changes` VALUES (1728, 'Fortune Tiger win', '116.71', 0.00, 116.71, -65.65, 182.36, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:09', '2023-10-02 14:41:09');
INSERT INTO `wallet_changes` VALUES (1729, 'Fortune Tiger win', '143.84', 0.00, 143.84, -38.52, 182.36, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:10', '2023-10-02 14:41:10');
INSERT INTO `wallet_changes` VALUES (1730, 'Fortune Tiger play', '-277.19', 0.00, 277.19, 0.00, 277.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:11', '2023-10-02 14:41:11');
INSERT INTO `wallet_changes` VALUES (1731, 'Fortune Tiger play', '-35.64', 0.00, 35.64, 0.00, 35.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:11', '2023-10-02 14:41:11');
INSERT INTO `wallet_changes` VALUES (1732, 'Fortune Tiger win', '27.09', 0.00, 27.09, -250.10, 277.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:12', '2023-10-02 14:41:12');
INSERT INTO `wallet_changes` VALUES (1733, 'Fortune Tiger win', '98.59', 0.00, 98.59, -178.60, 277.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:41:13', '2023-10-02 14:41:13');
INSERT INTO `wallet_changes` VALUES (1734, 'Fortune Tiger win', '104.37', 0.00, 104.37, -172.82, 277.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:31', '2023-10-02 14:42:31');
INSERT INTO `wallet_changes` VALUES (1735, 'Fortune Tiger win', '0.00', 0.00, 0.00, -277.19, 277.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:34', '2023-10-02 14:42:34');
INSERT INTO `wallet_changes` VALUES (1736, 'Fortune Tiger play', '-127.01', 0.00, 127.01, 0.00, 127.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:36', '2023-10-02 14:42:36');
INSERT INTO `wallet_changes` VALUES (1737, 'Fortune Tiger play', '-72.58', 0.00, 72.58, 0.00, 72.58, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:38', '2023-10-02 14:42:38');
INSERT INTO `wallet_changes` VALUES (1738, 'Fortune Tiger play', '-163.29', 0.00, 163.29, 0.00, 163.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:40', '2023-10-02 14:42:40');
INSERT INTO `wallet_changes` VALUES (1739, 'Fortune Tiger win', '126.46', 0.00, 126.46, -36.83, 163.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:40', '2023-10-02 14:42:40');
INSERT INTO `wallet_changes` VALUES (1740, 'Fortune Tiger win', '0.00', 0.00, 0.00, -163.29, 163.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:41', '2023-10-02 14:42:41');
INSERT INTO `wallet_changes` VALUES (1741, 'Fortune Tiger win', '43.52', 0.00, 43.52, -119.77, 163.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:42', '2023-10-02 14:42:42');
INSERT INTO `wallet_changes` VALUES (1742, 'Fortune Tiger win', '173.64', 0.00, 173.64, 10.35, 163.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:43', '2023-10-02 14:42:43');
INSERT INTO `wallet_changes` VALUES (1743, 'Fortune Tiger play', '-1087.52', 0.00, 1087.52, 0.00, 1087.52, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:49', '2023-10-02 14:42:49');
INSERT INTO `wallet_changes` VALUES (1744, 'Fortune Tiger win', '35.00', 0.00, 35.00, -1052.52, 1087.52, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:50', '2023-10-02 14:42:50');
INSERT INTO `wallet_changes` VALUES (1745, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:50', '2023-10-02 14:42:50');
INSERT INTO `wallet_changes` VALUES (1746, 'Fortune Tiger win', '1087.52', 0.00, 1087.52, 1052.53, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:51', '2023-10-02 14:42:51');
INSERT INTO `wallet_changes` VALUES (1747, 'Fortune Tiger play', '-21.75', 0.00, 21.75, 0.00, 21.75, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:52', '2023-10-02 14:42:52');
INSERT INTO `wallet_changes` VALUES (1748, 'Fortune Tiger play', '-63.95', 0.00, 63.95, 0.00, 63.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:53', '2023-10-02 14:42:53');
INSERT INTO `wallet_changes` VALUES (1749, 'Fortune Tiger win', '117.24', 0.00, 117.24, 53.29, 63.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:53', '2023-10-02 14:42:53');
INSERT INTO `wallet_changes` VALUES (1750, 'Fortune Tiger play', '-138.55', 0.00, 138.55, 0.00, 138.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:55', '2023-10-02 14:42:55');
INSERT INTO `wallet_changes` VALUES (1751, 'Fortune Tiger win', '120.54', 0.00, 120.54, -18.01, 138.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:56', '2023-10-02 14:42:56');
INSERT INTO `wallet_changes` VALUES (1752, 'Fortune Tiger play', '-104.78', 0.00, 104.78, 0.00, 104.78, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:57', '2023-10-02 14:42:57');
INSERT INTO `wallet_changes` VALUES (1753, 'Fortune Tiger play', '-113.16', 0.00, 113.16, 0.00, 113.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:57', '2023-10-02 14:42:57');
INSERT INTO `wallet_changes` VALUES (1754, 'Fortune Tiger win', '240.65', 0.00, 240.65, 127.49, 113.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:58', '2023-10-02 14:42:58');
INSERT INTO `wallet_changes` VALUES (1755, 'Fortune Tiger play', '-32.11', 0.00, 32.11, 0.00, 32.11, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:42:59', '2023-10-02 14:42:59');
INSERT INTO `wallet_changes` VALUES (1756, 'Fortune Tiger win', '51.92', 0.00, 51.92, 19.81, 32.11, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:43:04', '2023-10-02 14:43:04');
INSERT INTO `wallet_changes` VALUES (1757, 'Fortune Tiger play', '-93.45', 0.00, 93.45, 0.00, 93.45, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:43:05', '2023-10-02 14:43:05');
INSERT INTO `wallet_changes` VALUES (1758, 'Fortune Tiger play', '-290.74', 0.00, 290.74, 0.00, 290.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:43:06', '2023-10-02 14:43:06');
INSERT INTO `wallet_changes` VALUES (1759, 'Fortune Tiger win', '218.06', 0.00, 218.06, -72.68, 290.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:43:07', '2023-10-02 14:43:07');
INSERT INTO `wallet_changes` VALUES (1760, 'Fortune Tiger win', '145.37', 0.00, 145.37, -145.37, 290.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:43:07', '2023-10-02 14:43:07');
INSERT INTO `wallet_changes` VALUES (1761, 'Fortune Tiger win', '320.86', 0.00, 320.86, 30.12, 290.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:29', '2023-10-02 14:51:29');
INSERT INTO `wallet_changes` VALUES (1762, 'Fortune Tiger win', '0.00', 0.00, 0.00, -290.74, 290.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:32', '2023-10-02 14:51:32');
INSERT INTO `wallet_changes` VALUES (1763, 'Fortune Tiger play', '-194.65', 0.00, 194.65, 0.00, 194.65, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:34', '2023-10-02 14:51:34');
INSERT INTO `wallet_changes` VALUES (1764, 'Fortune Tiger play', '-125.14', 0.00, 125.14, 0.00, 125.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:37', '2023-10-02 14:51:37');
INSERT INTO `wallet_changes` VALUES (1765, 'Fortune Tiger play', '-208.56', 0.00, 208.56, 0.00, 208.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:38', '2023-10-02 14:51:38');
INSERT INTO `wallet_changes` VALUES (1766, 'Fortune Tiger win', '59.09', 0.00, 59.09, -149.47, 208.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:39', '2023-10-02 14:51:39');
INSERT INTO `wallet_changes` VALUES (1767, 'Fortune Tiger win', '0.00', 0.00, 0.00, -208.56, 208.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:40', '2023-10-02 14:51:40');
INSERT INTO `wallet_changes` VALUES (1768, 'Fortune Tiger win', '322.64', 0.00, 322.64, 114.08, 208.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:40', '2023-10-02 14:51:40');
INSERT INTO `wallet_changes` VALUES (1769, 'Fortune Tiger win', '265.81', 0.00, 265.81, 57.25, 208.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:42', '2023-10-02 14:51:42');
INSERT INTO `wallet_changes` VALUES (1770, 'Fortune Tiger play', '-1829.37', 0.00, 1829.37, 0.00, 1829.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:47', '2023-10-02 14:51:47');
INSERT INTO `wallet_changes` VALUES (1771, 'Fortune Tiger win', '35.00', 0.00, 35.00, -1794.37, 1829.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:48', '2023-10-02 14:51:48');
INSERT INTO `wallet_changes` VALUES (1772, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:49', '2023-10-02 14:51:49');
INSERT INTO `wallet_changes` VALUES (1773, 'Fortune Tiger win', '1829.37', 0.00, 1829.37, 1794.38, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:49', '2023-10-02 14:51:49');
INSERT INTO `wallet_changes` VALUES (1774, 'Fortune Tiger play', '-182.94', 0.00, 182.94, 0.00, 182.94, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:50', '2023-10-02 14:51:50');
INSERT INTO `wallet_changes` VALUES (1775, 'Fortune Tiger play', '-131.72', 0.00, 131.72, 0.00, 131.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:51', '2023-10-02 14:51:51');
INSERT INTO `wallet_changes` VALUES (1776, 'Fortune Tiger win', '493.93', 0.00, 493.93, 362.21, 131.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:52', '2023-10-02 14:51:52');
INSERT INTO `wallet_changes` VALUES (1777, 'Fortune Tiger play', '-329.29', 0.00, 329.29, 0.00, 329.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:54', '2023-10-02 14:51:54');
INSERT INTO `wallet_changes` VALUES (1778, 'Fortune Tiger win', '184.40', 0.00, 184.40, -144.89, 329.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:54', '2023-10-02 14:51:54');
INSERT INTO `wallet_changes` VALUES (1779, 'Fortune Tiger play', '-120.12', 0.00, 120.12, 0.00, 120.12, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:55', '2023-10-02 14:51:55');
INSERT INTO `wallet_changes` VALUES (1780, 'Fortune Tiger play', '-55.26', 0.00, 55.26, 0.00, 55.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:56', '2023-10-02 14:51:56');
INSERT INTO `wallet_changes` VALUES (1781, 'Fortune Tiger win', '53.05', 0.00, 53.05, -2.21, 55.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:57', '2023-10-02 14:51:57');
INSERT INTO `wallet_changes` VALUES (1782, 'Fortune Tiger play', '-275.84', 0.00, 275.84, 0.00, 275.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:57', '2023-10-02 14:51:57');
INSERT INTO `wallet_changes` VALUES (1783, 'Fortune Tiger win', '176.54', 0.00, 176.54, -99.30, 275.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:58', '2023-10-02 14:51:58');
INSERT INTO `wallet_changes` VALUES (1784, 'Fortune Tiger win', '76.80', 0.00, 76.80, -199.04, 275.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:51:59', '2023-10-02 14:51:59');
INSERT INTO `wallet_changes` VALUES (1785, 'Fortune Tiger play', '-407.02', 0.00, 407.02, 0.00, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:52:00', '2023-10-02 14:52:00');
INSERT INTO `wallet_changes` VALUES (1786, 'Fortune Tiger play', '-161.45', 0.00, 161.45, 0.00, 161.45, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:52:00', '2023-10-02 14:52:00');
INSERT INTO `wallet_changes` VALUES (1787, 'Fortune Tiger win', '86.71', 0.00, 86.71, -320.31, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:52:01', '2023-10-02 14:52:01');
INSERT INTO `wallet_changes` VALUES (1788, 'Fortune Tiger win', '218.74', 0.00, 218.74, -188.28, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:52:02', '2023-10-02 14:52:02');
INSERT INTO `wallet_changes` VALUES (1789, 'Fortune Tiger win', '32.81', 0.00, 32.81, -374.21, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:13', '2023-10-02 14:54:13');
INSERT INTO `wallet_changes` VALUES (1790, 'Fortune Tiger win', '0.00', 0.00, 0.00, -407.02, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:15', '2023-10-02 14:54:15');
INSERT INTO `wallet_changes` VALUES (1791, 'Fortune Tiger win', '131.24', 0.00, 131.24, -275.78, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:22', '2023-10-02 14:54:22');
INSERT INTO `wallet_changes` VALUES (1792, 'Fortune Tiger win', '0.00', 0.00, 0.00, -407.02, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:23', '2023-10-02 14:54:23');
INSERT INTO `wallet_changes` VALUES (1793, 'Fortune Tiger win', '306.24', 0.00, 306.24, -100.78, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:23', '2023-10-02 14:54:23');
INSERT INTO `wallet_changes` VALUES (1794, 'Fortune Tiger win', '185.93', 0.00, 185.93, -221.09, 407.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:25', '2023-10-02 14:54:25');
INSERT INTO `wallet_changes` VALUES (1795, 'Fortune Tiger play', '-54.69', 0.00, 54.69, 0.00, 54.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:31', '2023-10-02 14:54:31');
INSERT INTO `wallet_changes` VALUES (1796, 'Fortune Tiger play', '-48.2', 0.00, 48.20, 0.00, 48.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:31', '2023-10-02 14:54:31');
INSERT INTO `wallet_changes` VALUES (1797, 'Fortune Tiger win', '180.76', 0.00, 180.76, 132.56, 48.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:32', '2023-10-02 14:54:32');
INSERT INTO `wallet_changes` VALUES (1798, 'Fortune Tiger play', '-144.61', 0.00, 144.61, 0.00, 144.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:34', '2023-10-02 14:54:34');
INSERT INTO `wallet_changes` VALUES (1799, 'Fortune Tiger win', '109.90', 0.00, 109.90, -34.71, 144.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:35', '2023-10-02 14:54:35');
INSERT INTO `wallet_changes` VALUES (1800, 'Fortune Tiger play', '-11.36', 0.00, 11.36, 0.00, 11.36, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:35', '2023-10-02 14:54:35');
INSERT INTO `wallet_changes` VALUES (1801, 'Fortune Tiger play', '-105.73', 0.00, 105.73, 0.00, 105.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:36', '2023-10-02 14:54:36');
INSERT INTO `wallet_changes` VALUES (1802, 'Fortune Tiger win', '31.55', 0.00, 31.55, -74.18, 105.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:37', '2023-10-02 14:54:37');
INSERT INTO `wallet_changes` VALUES (1803, 'Fortune Tiger play', '-135.04', 0.00, 135.04, 0.00, 135.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:37', '2023-10-02 14:54:37');
INSERT INTO `wallet_changes` VALUES (1804, 'Fortune Tiger win', '65.98', 0.00, 65.98, -69.06, 135.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:38', '2023-10-02 14:54:38');
INSERT INTO `wallet_changes` VALUES (1805, 'Fortune Tiger win', '119.83', 0.00, 119.83, -15.21, 135.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:39', '2023-10-02 14:54:39');
INSERT INTO `wallet_changes` VALUES (1806, 'Fortune Tiger play', '-138.59', 0.00, 138.59, 0.00, 138.59, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:39', '2023-10-02 14:54:39');
INSERT INTO `wallet_changes` VALUES (1807, 'Fortune Tiger play', '-7.89', 0.00, 7.89, 0.00, 7.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:40', '2023-10-02 14:54:40');
INSERT INTO `wallet_changes` VALUES (1808, 'Fortune Tiger win', '54.12', 0.00, 54.12, 46.23, 7.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:41', '2023-10-02 14:54:41');
INSERT INTO `wallet_changes` VALUES (1809, 'Fortune Tiger win', '105.77', 0.00, 105.77, 97.88, 7.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:54:42', '2023-10-02 14:54:42');
INSERT INTO `wallet_changes` VALUES (1810, 'Fortune Tiger win', '131.15', 0.00, 131.15, 131.15, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:34', '2023-10-02 14:56:34');
INSERT INTO `wallet_changes` VALUES (1811, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:36', '2023-10-02 14:56:36');
INSERT INTO `wallet_changes` VALUES (1812, 'Fortune Tiger play', '-135.52', 0.00, 135.52, 0.00, 135.52, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:39', '2023-10-02 14:56:39');
INSERT INTO `wallet_changes` VALUES (1813, 'Fortune Tiger play', '-67.76', 0.00, 67.76, 0.00, 67.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:41', '2023-10-02 14:56:41');
INSERT INTO `wallet_changes` VALUES (1814, 'Fortune Tiger play', '-176.18', 0.00, 176.18, 0.00, 176.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:43', '2023-10-02 14:56:43');
INSERT INTO `wallet_changes` VALUES (1815, 'Fortune Tiger win', '50.14', 0.00, 50.14, -126.04, 176.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:43', '2023-10-02 14:56:43');
INSERT INTO `wallet_changes` VALUES (1816, 'Fortune Tiger win', '0.00', 0.00, 0.00, -176.18, 176.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:44', '2023-10-02 14:56:44');
INSERT INTO `wallet_changes` VALUES (1817, 'Fortune Tiger win', '165.47', 0.00, 165.47, -10.71, 176.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:45', '2023-10-02 14:56:45');
INSERT INTO `wallet_changes` VALUES (1818, 'Fortune Tiger win', '35.85', 0.00, 35.85, -140.33, 176.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:46', '2023-10-02 14:56:46');
INSERT INTO `wallet_changes` VALUES (1819, 'Fortune Tiger play', '-752.89', 0.00, 752.89, 0.00, 752.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:52', '2023-10-02 14:56:52');
INSERT INTO `wallet_changes` VALUES (1820, 'Fortune Tiger win', '35.00', 0.00, 35.00, -717.89, 752.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:52', '2023-10-02 14:56:52');
INSERT INTO `wallet_changes` VALUES (1821, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:53', '2023-10-02 14:56:53');
INSERT INTO `wallet_changes` VALUES (1822, 'Fortune Tiger win', '752.89', 0.00, 752.89, 717.90, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:54', '2023-10-02 14:56:54');
INSERT INTO `wallet_changes` VALUES (1823, 'Fortune Tiger play', '-67.76', 0.00, 67.76, 0.00, 67.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:55', '2023-10-02 14:56:55');
INSERT INTO `wallet_changes` VALUES (1824, 'Fortune Tiger play', '-116.47', 0.00, 116.47, 0.00, 116.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:55', '2023-10-02 14:56:55');
INSERT INTO `wallet_changes` VALUES (1825, 'Fortune Tiger win', '191.84', 0.00, 191.84, 75.37, 116.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:56', '2023-10-02 14:56:56');
INSERT INTO `wallet_changes` VALUES (1826, 'Fortune Tiger play', '-191.84', 0.00, 191.84, 0.00, 191.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:58', '2023-10-02 14:56:58');
INSERT INTO `wallet_changes` VALUES (1827, 'Fortune Tiger win', '83.86', 0.00, 83.86, -107.98, 191.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:59', '2023-10-02 14:56:59');
INSERT INTO `wallet_changes` VALUES (1828, 'Fortune Tiger play', '-46.17', 0.00, 46.17, 0.00, 46.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:56:59', '2023-10-02 14:56:59');
INSERT INTO `wallet_changes` VALUES (1829, 'Fortune Tiger play', '-127.44', 0.00, 127.44, 0.00, 127.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:00', '2023-10-02 14:57:00');
INSERT INTO `wallet_changes` VALUES (1830, 'Fortune Tiger win', '44.39', 0.00, 44.39, -83.05, 127.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:01', '2023-10-02 14:57:01');
INSERT INTO `wallet_changes` VALUES (1831, 'Fortune Tiger play', '-49.27', 0.00, 49.27, 0.00, 49.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:01', '2023-10-02 14:57:01');
INSERT INTO `wallet_changes` VALUES (1832, 'Fortune Tiger win', '11.96', 0.00, 11.96, -37.31, 49.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:02', '2023-10-02 14:57:02');
INSERT INTO `wallet_changes` VALUES (1833, 'Fortune Tiger win', '69.81', 0.00, 69.81, 20.54, 49.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:03', '2023-10-02 14:57:03');
INSERT INTO `wallet_changes` VALUES (1834, 'Fortune Tiger play', '-110.5', 0.00, 110.50, 0.00, 110.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:03', '2023-10-02 14:57:03');
INSERT INTO `wallet_changes` VALUES (1835, 'Fortune Tiger play', '-77.69', 0.00, 77.69, 0.00, 77.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:04', '2023-10-02 14:57:04');
INSERT INTO `wallet_changes` VALUES (1836, 'Fortune Tiger win', '87.68', 0.00, 87.68, 9.99, 77.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:05', '2023-10-02 14:57:05');
INSERT INTO `wallet_changes` VALUES (1837, 'Fortune Tiger win', '72.19', 0.00, 72.19, -5.50, 77.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 14:57:06', '2023-10-02 14:57:06');
INSERT INTO `wallet_changes` VALUES (1838, 'Fortune Tiger win', '85.90', 0.00, 85.90, 8.21, 77.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:30', '2023-10-02 15:00:30');
INSERT INTO `wallet_changes` VALUES (1839, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.69, 77.69, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:32', '2023-10-02 15:00:32');
INSERT INTO `wallet_changes` VALUES (1840, 'Fortune Tiger play', '-43.04', 0.00, 43.04, 0.00, 43.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:34', '2023-10-02 15:00:34');
INSERT INTO `wallet_changes` VALUES (1841, 'Fortune Tiger play', '-10.76', 0.00, 10.76, 0.00, 10.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:37', '2023-10-02 15:00:37');
INSERT INTO `wallet_changes` VALUES (1842, 'Fortune Tiger play', '-112.98', 0.00, 112.98, 0.00, 112.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:38', '2023-10-02 15:00:38');
INSERT INTO `wallet_changes` VALUES (1843, 'Fortune Tiger win', '76.51', 0.00, 76.51, -36.47, 112.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:39', '2023-10-02 15:00:39');
INSERT INTO `wallet_changes` VALUES (1844, 'Fortune Tiger win', '0.00', 0.00, 0.00, -112.98, 112.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:40', '2023-10-02 15:00:40');
INSERT INTO `wallet_changes` VALUES (1845, 'Fortune Tiger win', '140.43', 0.00, 140.43, 27.45, 112.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:41', '2023-10-02 15:00:41');
INSERT INTO `wallet_changes` VALUES (1846, 'Fortune Tiger win', '109.14', 0.00, 109.14, -3.84, 112.98, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:42', '2023-10-02 15:00:42');
INSERT INTO `wallet_changes` VALUES (1847, 'Fortune Tiger play', '-751.12', 0.00, 751.12, 0.00, 751.12, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:48', '2023-10-02 15:00:48');
INSERT INTO `wallet_changes` VALUES (1848, 'Fortune Tiger win', '35.00', 0.00, 35.00, -716.12, 751.12, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:48', '2023-10-02 15:00:48');
INSERT INTO `wallet_changes` VALUES (1849, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:49', '2023-10-02 15:00:49');
INSERT INTO `wallet_changes` VALUES (1850, 'Fortune Tiger win', '751.12', 0.00, 751.12, 716.13, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:50', '2023-10-02 15:00:50');
INSERT INTO `wallet_changes` VALUES (1851, 'Fortune Tiger play', '-135.2', 0.00, 135.20, 0.00, 135.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:50', '2023-10-02 15:00:50');
INSERT INTO `wallet_changes` VALUES (1852, 'Fortune Tiger play', '-147.82', 0.00, 147.82, 0.00, 147.82, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:51', '2023-10-02 15:00:51');
INSERT INTO `wallet_changes` VALUES (1853, 'Fortune Tiger win', '43.12', 0.00, 43.12, -104.70, 147.82, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:52', '2023-10-02 15:00:52');
INSERT INTO `wallet_changes` VALUES (1854, 'Fortune Tiger play', '-24.64', 0.00, 24.64, 0.00, 24.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:54', '2023-10-02 15:00:54');
INSERT INTO `wallet_changes` VALUES (1855, 'Fortune Tiger win', '159.65', 0.00, 159.65, 135.01, 24.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:54', '2023-10-02 15:00:54');
INSERT INTO `wallet_changes` VALUES (1856, 'Fortune Tiger play', '-37.55', 0.00, 37.55, 0.00, 37.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:55', '2023-10-02 15:00:55');
INSERT INTO `wallet_changes` VALUES (1857, 'Fortune Tiger play', '-164.08', 0.00, 164.08, 0.00, 164.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:56', '2023-10-02 15:00:56');
INSERT INTO `wallet_changes` VALUES (1858, 'Fortune Tiger win', '21.97', 0.00, 21.97, -142.11, 164.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:56', '2023-10-02 15:00:56');
INSERT INTO `wallet_changes` VALUES (1859, 'Fortune Tiger play', '-28.56', 0.00, 28.56, 0.00, 28.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:57', '2023-10-02 15:00:57');
INSERT INTO `wallet_changes` VALUES (1860, 'Fortune Tiger win', '32.56', 0.00, 32.56, 4.00, 28.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:58', '2023-10-02 15:00:58');
INSERT INTO `wallet_changes` VALUES (1861, 'Fortune Tiger win', '126.56', 0.00, 126.56, 98.00, 28.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:59', '2023-10-02 15:00:59');
INSERT INTO `wallet_changes` VALUES (1862, 'Fortune Tiger play', '-168.44', 0.00, 168.44, 0.00, 168.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:00:59', '2023-10-02 15:00:59');
INSERT INTO `wallet_changes` VALUES (1863, 'Fortune Tiger play', '-42.67', 0.00, 42.67, 0.00, 42.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:01:00', '2023-10-02 15:01:00');
INSERT INTO `wallet_changes` VALUES (1864, 'Fortune Tiger win', '78.52', 0.00, 78.52, 35.85, 42.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:01:01', '2023-10-02 15:01:01');
INSERT INTO `wallet_changes` VALUES (1865, 'Fortune Tiger win', '125.24', 0.00, 125.24, 82.57, 42.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:01:01', '2023-10-02 15:01:01');
INSERT INTO `wallet_changes` VALUES (1866, 'Fortune Tiger win', '138.90', 0.00, 138.90, 138.90, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:05:51', '2023-10-02 15:05:51');
INSERT INTO `wallet_changes` VALUES (1867, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:05:53', '2023-10-02 15:05:53');
INSERT INTO `wallet_changes` VALUES (1868, 'Fortune Tiger play', '-41.67', 0.00, 41.67, 0.00, 41.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:05:55', '2023-10-02 15:05:55');
INSERT INTO `wallet_changes` VALUES (1869, 'Fortune Tiger play', '-50', 0.00, 50.00, 0.00, 50.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:05:58', '2023-10-02 15:05:58');
INSERT INTO `wallet_changes` VALUES (1870, 'Fortune Tiger play', '-75.01', 0.00, 75.01, 0.00, 75.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:05:59', '2023-10-02 15:05:59');
INSERT INTO `wallet_changes` VALUES (1871, 'Fortune Tiger win', '128.92', 0.00, 128.92, 53.91, 75.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:00', '2023-10-02 15:06:00');
INSERT INTO `wallet_changes` VALUES (1872, 'Fortune Tiger win', '0.00', 0.00, 0.00, -75.01, 75.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:01', '2023-10-02 15:06:01');
INSERT INTO `wallet_changes` VALUES (1873, 'Fortune Tiger win', '79.86', 0.00, 79.86, 4.85, 75.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:01', '2023-10-02 15:06:01');
INSERT INTO `wallet_changes` VALUES (1874, 'Fortune Tiger win', '106.39', 0.00, 106.39, 31.38, 75.01, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:03', '2023-10-02 15:06:03');
INSERT INTO `wallet_changes` VALUES (1875, 'Fortune Tiger play', '-968.16', 0.00, 968.16, 0.00, 968.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:06', '2023-10-02 15:06:06');
INSERT INTO `wallet_changes` VALUES (1876, 'Fortune Tiger win', '145.07', 0.00, 145.07, -823.09, 968.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:07', '2023-10-02 15:06:07');
INSERT INTO `wallet_changes` VALUES (1877, 'Fortune Tiger play', '-77.37', 0.00, 77.37, 0.00, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:09', '2023-10-02 15:06:09');
INSERT INTO `wallet_changes` VALUES (1878, 'Fortune Tiger win', '270.80', 0.00, 270.80, 193.43, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:10', '2023-10-02 15:06:10');
INSERT INTO `wallet_changes` VALUES (1879, 'Fortune Tiger win', '48.36', 0.00, 48.36, -29.01, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:12', '2023-10-02 15:06:12');
INSERT INTO `wallet_changes` VALUES (1880, 'Fortune Tiger win', '96.72', 0.00, 96.72, 19.35, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:15', '2023-10-02 15:06:15');
INSERT INTO `wallet_changes` VALUES (1881, 'Fortune Tiger win', '290.15', 0.00, 290.15, 212.78, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:16', '2023-10-02 15:06:16');
INSERT INTO `wallet_changes` VALUES (1882, 'Fortune Tiger win', '193.43', 0.00, 193.43, 116.06, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:17', '2023-10-02 15:06:17');
INSERT INTO `wallet_changes` VALUES (1883, 'Fortune Tiger win', '203.10', 0.00, 203.10, 125.73, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:19', '2023-10-02 15:06:19');
INSERT INTO `wallet_changes` VALUES (1884, 'Fortune Tiger win', '87.04', 0.00, 87.04, 9.67, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:19', '2023-10-02 15:06:19');
INSERT INTO `wallet_changes` VALUES (1885, 'Fortune Tiger win', '6.00', 0.00, 6.00, -71.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:06:59', '2023-10-02 15:06:59');
INSERT INTO `wallet_changes` VALUES (1886, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:01', '2023-10-02 15:07:01');
INSERT INTO `wallet_changes` VALUES (1887, 'Fortune Tiger win', '6.48', 0.00, 6.48, -70.89, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:08', '2023-10-02 15:07:08');
INSERT INTO `wallet_changes` VALUES (1888, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:08', '2023-10-02 15:07:08');
INSERT INTO `wallet_changes` VALUES (1889, 'Fortune Tiger win', '2.52', 0.00, 2.52, -74.85, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:09', '2023-10-02 15:07:09');
INSERT INTO `wallet_changes` VALUES (1890, 'Fortune Tiger win', '8.64', 0.00, 8.64, -68.73, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:10', '2023-10-02 15:07:10');
INSERT INTO `wallet_changes` VALUES (1891, 'Fortune Tiger win', '4.68', 0.00, 4.68, -72.69, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:15', '2023-10-02 15:07:15');
INSERT INTO `wallet_changes` VALUES (1892, 'Fortune Tiger win', '5.76', 0.00, 5.76, -71.61, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:19', '2023-10-02 15:07:19');
INSERT INTO `wallet_changes` VALUES (1893, 'Fortune Tiger win', '5.40', 0.00, 5.40, -71.97, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:21', '2023-10-02 15:07:21');
INSERT INTO `wallet_changes` VALUES (1894, 'Fortune Tiger win', '5.40', 0.00, 5.40, -71.97, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:22', '2023-10-02 15:07:22');
INSERT INTO `wallet_changes` VALUES (1895, 'Fortune Tiger win', '2.16', 0.00, 2.16, -75.21, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:23', '2023-10-02 15:07:23');
INSERT INTO `wallet_changes` VALUES (1896, 'Fortune Tiger win', '10.08', 0.00, 10.08, -67.29, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:25', '2023-10-02 15:07:25');
INSERT INTO `wallet_changes` VALUES (1897, 'Fortune Tiger win', '0.72', 0.00, 0.72, -76.65, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:26', '2023-10-02 15:07:26');
INSERT INTO `wallet_changes` VALUES (1898, 'Fortune Tiger win', '-109.16', 0.00, -109.16, -186.53, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:56', '2023-10-02 15:07:56');
INSERT INTO `wallet_changes` VALUES (1899, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:07:58', '2023-10-02 15:07:58');
INSERT INTO `wallet_changes` VALUES (1900, 'Fortune Tiger win', '-154.64', 0.00, -154.64, -232.01, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:04', '2023-10-02 15:08:04');
INSERT INTO `wallet_changes` VALUES (1901, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:05', '2023-10-02 15:08:05');
INSERT INTO `wallet_changes` VALUES (1902, 'Fortune Tiger win', '-18.19', 0.00, -18.19, -95.56, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:06', '2023-10-02 15:08:06');
INSERT INTO `wallet_changes` VALUES (1903, 'Fortune Tiger win', '-263.80', 0.00, -263.80, -341.17, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:07', '2023-10-02 15:08:07');
INSERT INTO `wallet_changes` VALUES (1904, 'Fortune Tiger win', '-136.45', 0.00, -136.45, -213.82, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:16', '2023-10-02 15:08:16');
INSERT INTO `wallet_changes` VALUES (1905, 'Fortune Tiger win', '-109.16', 0.00, -109.16, -186.53, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:18', '2023-10-02 15:08:18');
INSERT INTO `wallet_changes` VALUES (1906, 'Fortune Tiger win', '-172.83', 0.00, -172.83, -250.20, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:19', '2023-10-02 15:08:19');
INSERT INTO `wallet_changes` VALUES (1907, 'Fortune Tiger win', '-63.67', 0.00, -63.67, -141.04, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:20', '2023-10-02 15:08:20');
INSERT INTO `wallet_changes` VALUES (1908, 'Fortune Tiger win', '-127.35', 0.00, -127.35, -204.72, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:22', '2023-10-02 15:08:22');
INSERT INTO `wallet_changes` VALUES (1909, 'Fortune Tiger win', '-45.48', 0.00, -45.48, -122.85, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:23', '2023-10-02 15:08:23');
INSERT INTO `wallet_changes` VALUES (1910, 'Fortune Tiger win', '-265.03', 0.00, -265.03, -342.40, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:57', '2023-10-02 15:08:57');
INSERT INTO `wallet_changes` VALUES (1911, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:08:59', '2023-10-02 15:08:59');
INSERT INTO `wallet_changes` VALUES (1912, 'Fortune Tiger win', '-361.40', 0.00, -361.40, -438.77, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:06', '2023-10-02 15:09:06');
INSERT INTO `wallet_changes` VALUES (1913, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:07', '2023-10-02 15:09:07');
INSERT INTO `wallet_changes` VALUES (1914, 'Fortune Tiger win', '-168.65', 0.00, -168.65, -246.02, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:07', '2023-10-02 15:09:07');
INSERT INTO `wallet_changes` VALUES (1915, 'Fortune Tiger win', '-72.28', 0.00, -72.28, -149.65, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:09', '2023-10-02 15:09:09');
INSERT INTO `wallet_changes` VALUES (1916, 'Fortune Tiger win', '35.00', 0.00, 35.00, -42.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:14', '2023-10-02 15:09:14');
INSERT INTO `wallet_changes` VALUES (1917, 'Fortune Tiger win', '5.10', 0.00, 5.10, -72.27, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:18', '2023-10-02 15:09:18');
INSERT INTO `wallet_changes` VALUES (1918, 'Fortune Tiger win', '6.46', 0.00, 6.46, -70.91, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:21', '2023-10-02 15:09:21');
INSERT INTO `wallet_changes` VALUES (1919, 'Fortune Tiger win', '7.14', 0.00, 7.14, -70.23, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:22', '2023-10-02 15:09:22');
INSERT INTO `wallet_changes` VALUES (1920, 'Fortune Tiger win', '1.02', 0.00, 1.02, -76.35, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:23', '2023-10-02 15:09:23');
INSERT INTO `wallet_changes` VALUES (1921, 'Fortune Tiger win', '3.40', 0.00, 3.40, -73.97, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:25', '2023-10-02 15:09:25');
INSERT INTO `wallet_changes` VALUES (1922, 'Fortune Tiger win', '7.48', 0.00, 7.48, -69.89, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:25', '2023-10-02 15:09:25');
INSERT INTO `wallet_changes` VALUES (1923, 'Fortune Tiger win', '-164.74', 0.00, -164.74, -242.11, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:55', '2023-10-02 15:09:55');
INSERT INTO `wallet_changes` VALUES (1924, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:09:57', '2023-10-02 15:09:57');
INSERT INTO `wallet_changes` VALUES (1925, 'Fortune Tiger win', '-116.29', 0.00, -116.29, -193.66, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:03', '2023-10-02 15:10:03');
INSERT INTO `wallet_changes` VALUES (1926, 'Fortune Tiger win', '0.00', 0.00, 0.00, -77.37, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:04', '2023-10-02 15:10:04');
INSERT INTO `wallet_changes` VALUES (1927, 'Fortune Tiger win', '-48.45', 0.00, -48.45, -125.82, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:05', '2023-10-02 15:10:05');
INSERT INTO `wallet_changes` VALUES (1928, 'Fortune Tiger win', '-87.22', 0.00, -87.22, -164.59, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:06', '2023-10-02 15:10:06');
INSERT INTO `wallet_changes` VALUES (1929, 'Fortune Tiger win', '-155.05', 0.00, -155.05, -232.42, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:15', '2023-10-02 15:10:15');
INSERT INTO `wallet_changes` VALUES (1930, 'Fortune Tiger win', '-67.83', 0.00, -67.83, -145.20, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:17', '2023-10-02 15:10:17');
INSERT INTO `wallet_changes` VALUES (1931, 'Fortune Tiger win', '-67.83', 0.00, -67.83, -145.20, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:18', '2023-10-02 15:10:18');
INSERT INTO `wallet_changes` VALUES (1932, 'Fortune Tiger win', '-222.88', 0.00, -222.88, -300.25, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:19', '2023-10-02 15:10:19');
INSERT INTO `wallet_changes` VALUES (1933, 'Fortune Tiger win', '-135.67', 0.00, -135.67, -213.04, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:21', '2023-10-02 15:10:21');
INSERT INTO `wallet_changes` VALUES (1934, 'Fortune Tiger win', '-281.03', 0.00, -281.03, -358.40, 77.37, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:10:21', '2023-10-02 15:10:21');
INSERT INTO `wallet_changes` VALUES (1935, 'Fortune Tiger win', '0.12', 0.00, 0.12, 0.12, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:15', '2023-10-02 15:37:15');
INSERT INTO `wallet_changes` VALUES (1936, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:18', '2023-10-02 15:37:18');
INSERT INTO `wallet_changes` VALUES (1937, 'Fortune Tiger play', '-0.36', 0.00, 0.36, 0.00, 0.36, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:20', '2023-10-02 15:37:20');
INSERT INTO `wallet_changes` VALUES (1938, 'Fortune Tiger play', '-0.16', 0.00, 0.16, 0.00, 0.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:23', '2023-10-02 15:37:23');
INSERT INTO `wallet_changes` VALUES (1939, 'Fortune Tiger play', '-0.34', 0.00, 0.34, 0.00, 0.34, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:25', '2023-10-02 15:37:25');
INSERT INTO `wallet_changes` VALUES (1940, 'Fortune Tiger win', '0.38', 0.00, 0.38, 0.04, 0.34, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:25', '2023-10-02 15:37:25');
INSERT INTO `wallet_changes` VALUES (1941, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.34, 0.34, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:26', '2023-10-02 15:37:26');
INSERT INTO `wallet_changes` VALUES (1942, 'Fortune Tiger win', '0.14', 0.00, 0.14, -0.20, 0.34, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:27', '2023-10-02 15:37:27');
INSERT INTO `wallet_changes` VALUES (1943, 'Fortune Tiger win', '0.24', 0.00, 0.24, -0.10, 0.34, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:28', '2023-10-02 15:37:28');
INSERT INTO `wallet_changes` VALUES (1944, 'Fortune Tiger play', '-3', 0.00, 3.00, 0.00, 3.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:32', '2023-10-02 15:37:32');
INSERT INTO `wallet_changes` VALUES (1945, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:34', '2023-10-02 15:37:34');
INSERT INTO `wallet_changes` VALUES (1946, 'Fortune Tiger win', '35.00', 0.00, 35.00, 33.00, 2.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:34', '2023-10-02 15:37:34');
INSERT INTO `wallet_changes` VALUES (1947, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:35', '2023-10-02 15:37:35');
INSERT INTO `wallet_changes` VALUES (1948, 'Fortune Tiger win', '2.00', 0.00, 2.00, -32.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:36', '2023-10-02 15:37:36');
INSERT INTO `wallet_changes` VALUES (1949, 'Fortune Tiger play', '-320.09', 0.00, 320.09, 0.00, 320.09, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:36', '2023-10-02 15:37:36');
INSERT INTO `wallet_changes` VALUES (1950, 'Fortune Tiger play', '-302.48', 0.00, 302.48, 0.00, 302.48, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:37', '2023-10-02 15:37:37');
INSERT INTO `wallet_changes` VALUES (1951, 'Fortune Tiger win', '352.90', 0.00, 352.90, 50.42, 302.48, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:38', '2023-10-02 15:37:38');
INSERT INTO `wallet_changes` VALUES (1952, 'Fortune Tiger play', '-235.26', 0.00, 235.26, 0.00, 235.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:40', '2023-10-02 15:37:40');
INSERT INTO `wallet_changes` VALUES (1953, 'Fortune Tiger win', '274.59', 0.00, 274.59, 39.33, 235.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:40', '2023-10-02 15:37:40');
INSERT INTO `wallet_changes` VALUES (1954, 'Fortune Tiger play', '-68.79', 0.00, 68.79, 0.00, 68.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:41', '2023-10-02 15:37:41');
INSERT INTO `wallet_changes` VALUES (1955, 'Fortune Tiger play', '-330.2', 0.00, 330.20, 0.00, 330.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:42', '2023-10-02 15:37:42');
INSERT INTO `wallet_changes` VALUES (1956, 'Fortune Tiger win', '145.29', 0.00, 145.29, -184.91, 330.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:43', '2023-10-02 15:37:43');
INSERT INTO `wallet_changes` VALUES (1957, 'Fortune Tiger play', '-29.32', 0.00, 29.32, 0.00, 29.32, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:43', '2023-10-02 15:37:43');
INSERT INTO `wallet_changes` VALUES (1958, 'Fortune Tiger win', '402.30', 0.00, 402.30, 372.98, 29.32, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:44', '2023-10-02 15:37:44');
INSERT INTO `wallet_changes` VALUES (1959, 'Fortune Tiger win', '367.81', 0.00, 367.81, 338.49, 29.32, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:45', '2023-10-02 15:37:45');
INSERT INTO `wallet_changes` VALUES (1960, 'Fortune Tiger play', '-132.41', 0.00, 132.41, 0.00, 132.41, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:45', '2023-10-02 15:37:45');
INSERT INTO `wallet_changes` VALUES (1961, 'Fortune Tiger play', '-414.89', 0.00, 414.89, 0.00, 414.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:46', '2023-10-02 15:37:46');
INSERT INTO `wallet_changes` VALUES (1962, 'Fortune Tiger win', '215.75', 0.00, 215.75, -199.14, 414.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:47', '2023-10-02 15:37:47');
INSERT INTO `wallet_changes` VALUES (1963, 'Fortune Tiger win', '450.08', 0.00, 450.08, 35.19, 414.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:37:47', '2023-10-02 15:37:47');
INSERT INTO `wallet_changes` VALUES (1964, 'Fortune Tiger win', '1.43', 0.00, 1.43, -413.46, 414.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:41', '2023-10-02 15:38:41');
INSERT INTO `wallet_changes` VALUES (1965, 'Fortune Tiger win', '0.00', 0.00, 0.00, -414.89, 414.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:43', '2023-10-02 15:38:43');
INSERT INTO `wallet_changes` VALUES (1966, 'Fortune Tiger play', '-1.43', 0.00, 1.43, 0.00, 1.43, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:45', '2023-10-02 15:38:45');
INSERT INTO `wallet_changes` VALUES (1967, 'Fortune Tiger play', '-1.21', 0.00, 1.21, 0.00, 1.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:48', '2023-10-02 15:38:48');
INSERT INTO `wallet_changes` VALUES (1968, 'Fortune Tiger play', '-1.87', 0.00, 1.87, 0.00, 1.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:49', '2023-10-02 15:38:49');
INSERT INTO `wallet_changes` VALUES (1969, 'Fortune Tiger win', '1.10', 0.00, 1.10, -0.77, 1.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:50', '2023-10-02 15:38:50');
INSERT INTO `wallet_changes` VALUES (1970, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.87, 1.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:50', '2023-10-02 15:38:50');
INSERT INTO `wallet_changes` VALUES (1971, 'Fortune Tiger win', '2.31', 0.00, 2.31, 0.44, 1.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:51', '2023-10-02 15:38:51');
INSERT INTO `wallet_changes` VALUES (1972, 'Fortune Tiger win', '1.10', 0.00, 1.10, -0.77, 1.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:52', '2023-10-02 15:38:52');
INSERT INTO `wallet_changes` VALUES (1973, 'Fortune Tiger play', '-12', 0.00, 12.00, 0.00, 12.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:55', '2023-10-02 15:38:55');
INSERT INTO `wallet_changes` VALUES (1974, 'Fortune Tiger play', '-11', 0.00, 11.00, 0.00, 11.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:57', '2023-10-02 15:38:57');
INSERT INTO `wallet_changes` VALUES (1975, 'Fortune Tiger win', '35.00', 0.00, 35.00, 24.00, 11.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:58', '2023-10-02 15:38:58');
INSERT INTO `wallet_changes` VALUES (1976, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:59', '2023-10-02 15:38:59');
INSERT INTO `wallet_changes` VALUES (1977, 'Fortune Tiger win', '11.00', 0.00, 11.00, -23.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:38:59', '2023-10-02 15:38:59');
INSERT INTO `wallet_changes` VALUES (1978, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:00', '2023-10-02 15:39:00');
INSERT INTO `wallet_changes` VALUES (1979, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:01', '2023-10-02 15:39:01');
INSERT INTO `wallet_changes` VALUES (1980, 'Fortune Tiger win', '906.28', 0.00, 906.28, 905.28, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:01', '2023-10-02 15:39:01');
INSERT INTO `wallet_changes` VALUES (1981, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:04', '2023-10-02 15:39:04');
INSERT INTO `wallet_changes` VALUES (1982, 'Fortune Tiger win', '453.14', 0.00, 453.14, 452.14, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:04', '2023-10-02 15:39:04');
INSERT INTO `wallet_changes` VALUES (1983, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:05', '2023-10-02 15:39:05');
INSERT INTO `wallet_changes` VALUES (1984, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:06', '2023-10-02 15:39:06');
INSERT INTO `wallet_changes` VALUES (1985, 'Fortune Tiger win', '1.00', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:06', '2023-10-02 15:39:06');
INSERT INTO `wallet_changes` VALUES (1986, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:07', '2023-10-02 15:39:07');
INSERT INTO `wallet_changes` VALUES (1987, 'Fortune Tiger win', '3.00', 0.00, 3.00, 2.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:08', '2023-10-02 15:39:08');
INSERT INTO `wallet_changes` VALUES (1988, 'Fortune Tiger win', '1.00', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:08', '2023-10-02 15:39:08');
INSERT INTO `wallet_changes` VALUES (1989, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:09', '2023-10-02 15:39:09');
INSERT INTO `wallet_changes` VALUES (1990, 'Fortune Tiger play', '-566.42', 0.00, 566.42, 0.00, 566.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:10', '2023-10-02 15:39:10');
INSERT INTO `wallet_changes` VALUES (1991, 'Fortune Tiger win', '1.00', 0.00, 1.00, -565.42, 566.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:10', '2023-10-02 15:39:10');
INSERT INTO `wallet_changes` VALUES (1992, 'Fortune Tiger win', '3.00', 0.00, 3.00, -563.42, 566.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:39:11', '2023-10-02 15:39:11');
INSERT INTO `wallet_changes` VALUES (1993, 'Fortune Tiger win', '2.73', 0.00, 2.73, 2.73, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:07', '2023-10-02 15:44:07');
INSERT INTO `wallet_changes` VALUES (1994, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:10', '2023-10-02 15:44:10');
INSERT INTO `wallet_changes` VALUES (1995, 'Fortune Tiger play', '-2.73', 0.00, 2.73, 0.00, 2.73, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:12', '2023-10-02 15:44:12');
INSERT INTO `wallet_changes` VALUES (1996, 'Fortune Tiger play', '-2.99', 0.00, 2.99, 0.00, 2.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:15', '2023-10-02 15:44:15');
INSERT INTO `wallet_changes` VALUES (1997, 'Fortune Tiger play', '-1.95', 0.00, 1.95, 0.00, 1.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:16', '2023-10-02 15:44:16');
INSERT INTO `wallet_changes` VALUES (1998, 'Fortune Tiger win', '1.30', 0.00, 1.30, -0.65, 1.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:17', '2023-10-02 15:44:17');
INSERT INTO `wallet_changes` VALUES (1999, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.95, 1.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:18', '2023-10-02 15:44:18');
INSERT INTO `wallet_changes` VALUES (2000, 'Fortune Tiger win', '1.43', 0.00, 1.43, -0.52, 1.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:19', '2023-10-02 15:44:19');
INSERT INTO `wallet_changes` VALUES (2001, 'Fortune Tiger win', '0.52', 0.00, 0.52, -1.43, 1.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:20', '2023-10-02 15:44:20');
INSERT INTO `wallet_changes` VALUES (2002, 'Fortune Tiger play', '-14', 0.00, 14.00, 0.00, 14.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:23', '2023-10-02 15:44:23');
INSERT INTO `wallet_changes` VALUES (2003, 'Fortune Tiger play', '-13', 0.00, 13.00, 0.00, 13.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:25', '2023-10-02 15:44:25');
INSERT INTO `wallet_changes` VALUES (2004, 'Fortune Tiger win', '35.00', 0.00, 35.00, 22.00, 13.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:26', '2023-10-02 15:44:26');
INSERT INTO `wallet_changes` VALUES (2005, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:27', '2023-10-02 15:44:27');
INSERT INTO `wallet_changes` VALUES (2006, 'Fortune Tiger win', '13.00', 0.00, 13.00, -21.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:27', '2023-10-02 15:44:27');
INSERT INTO `wallet_changes` VALUES (2007, 'Fortune Tiger play', '-3024.06', 0.00, 3024.06, 0.00, 3024.06, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:28', '2023-10-02 15:44:28');
INSERT INTO `wallet_changes` VALUES (2008, 'Fortune Tiger play', '-3812.08', 0.00, 3812.08, 0.00, 3812.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:29', '2023-10-02 15:44:29');
INSERT INTO `wallet_changes` VALUES (2009, 'Fortune Tiger win', '657.25', 0.00, 657.25, -3154.83, 3812.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:29', '2023-10-02 15:44:29');
INSERT INTO `wallet_changes` VALUES (2010, 'Fortune Tiger play', '-3549.17', 0.00, 3549.17, 0.00, 3549.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:32', '2023-10-02 15:44:32');
INSERT INTO `wallet_changes` VALUES (2011, 'Fortune Tiger win', '657.25', 0.00, 657.25, -2891.92, 3549.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:32', '2023-10-02 15:44:32');
INSERT INTO `wallet_changes` VALUES (2012, 'Fortune Tiger play', '-788.71', 0.00, 788.71, 0.00, 788.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:33', '2023-10-02 15:44:33');
INSERT INTO `wallet_changes` VALUES (2013, 'Fortune Tiger play', '-2760.47', 0.00, 2760.47, 0.00, 2760.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:34', '2023-10-02 15:44:34');
INSERT INTO `wallet_changes` VALUES (2014, 'Fortune Tiger win', '1051.61', 0.00, 1051.61, -1708.86, 2760.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:34', '2023-10-02 15:44:34');
INSERT INTO `wallet_changes` VALUES (2015, 'Fortune Tiger play', '-920.16', 0.00, 920.16, 0.00, 920.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:35', '2023-10-02 15:44:35');
INSERT INTO `wallet_changes` VALUES (2016, 'Fortune Tiger win', '3154.82', 0.00, 3154.82, 2234.66, 920.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:36', '2023-10-02 15:44:36');
INSERT INTO `wallet_changes` VALUES (2017, 'Fortune Tiger win', '2760.47', 0.00, 2760.47, 1840.31, 920.16, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:37', '2023-10-02 15:44:37');
INSERT INTO `wallet_changes` VALUES (2018, 'Fortune Tiger play', '-2366.12', 0.00, 2366.12, 0.00, 2366.12, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:37', '2023-10-02 15:44:37');
INSERT INTO `wallet_changes` VALUES (2019, 'Fortune Tiger play', '-3812.08', 0.00, 3812.08, 0.00, 3812.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:38', '2023-10-02 15:44:38');
INSERT INTO `wallet_changes` VALUES (2020, 'Fortune Tiger win', '1577.41', 0.00, 1577.41, -2234.67, 3812.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:39', '2023-10-02 15:44:39');
INSERT INTO `wallet_changes` VALUES (2021, 'Fortune Tiger win', '2760.47', 0.00, 2760.47, -1051.61, 3812.08, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:44:39', '2023-10-02 15:44:39');
INSERT INTO `wallet_changes` VALUES (2022, 'Fortune Tiger win', '0.24', 0.00, 0.24, 0.24, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:38', '2023-10-02 15:46:38');
INSERT INTO `wallet_changes` VALUES (2023, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:40', '2023-10-02 15:46:40');
INSERT INTO `wallet_changes` VALUES (2024, 'Fortune Tiger play', '-0.03', 0.00, 0.03, 0.00, 0.03, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:42', '2023-10-02 15:46:42');
INSERT INTO `wallet_changes` VALUES (2025, 'Fortune Tiger play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:45', '2023-10-02 15:46:45');
INSERT INTO `wallet_changes` VALUES (2026, 'Fortune Tiger play', '-0.27', 0.00, 0.27, 0.00, 0.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:46', '2023-10-02 15:46:46');
INSERT INTO `wallet_changes` VALUES (2027, 'Fortune Tiger win', '0.16', 0.00, 0.16, -0.11, 0.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:47', '2023-10-02 15:46:47');
INSERT INTO `wallet_changes` VALUES (2028, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.27, 0.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:47', '2023-10-02 15:46:47');
INSERT INTO `wallet_changes` VALUES (2029, 'Fortune Tiger win', '0.09', 0.00, 0.09, -0.18, 0.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:48', '2023-10-02 15:46:48');
INSERT INTO `wallet_changes` VALUES (2030, 'Fortune Tiger win', '0.22', 0.00, 0.22, -0.05, 0.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:50', '2023-10-02 15:46:50');
INSERT INTO `wallet_changes` VALUES (2031, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:52', '2023-10-02 15:46:52');
INSERT INTO `wallet_changes` VALUES (2032, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:54', '2023-10-02 15:46:54');
INSERT INTO `wallet_changes` VALUES (2033, 'Fortune Tiger win', '35.00', 0.00, 35.00, 34.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:55', '2023-10-02 15:46:55');
INSERT INTO `wallet_changes` VALUES (2034, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:56', '2023-10-02 15:46:56');
INSERT INTO `wallet_changes` VALUES (2035, 'Fortune Tiger win', '1.00', 0.00, 1.00, -33.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:57', '2023-10-02 15:46:57');
INSERT INTO `wallet_changes` VALUES (2036, 'Fortune Tiger play', '-60.03', 0.00, 60.03, 0.00, 60.03, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:57', '2023-10-02 15:46:57');
INSERT INTO `wallet_changes` VALUES (2037, 'Fortune Tiger play', '-28.21', 0.00, 28.21, 0.00, 28.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:58', '2023-10-02 15:46:58');
INSERT INTO `wallet_changes` VALUES (2038, 'Fortune Tiger win', '103.45', 0.00, 103.45, 75.24, 28.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:46:59', '2023-10-02 15:46:59');
INSERT INTO `wallet_changes` VALUES (2039, 'Fortune Tiger play', '-28.21', 0.00, 28.21, 0.00, 28.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:01', '2023-10-02 15:47:01');
INSERT INTO `wallet_changes` VALUES (2040, 'Fortune Tiger win', '91.22', 0.00, 91.22, 63.01, 28.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:01', '2023-10-02 15:47:01');
INSERT INTO `wallet_changes` VALUES (2041, 'Fortune Tiger play', '-260.89', 0.00, 260.89, 0.00, 260.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:02', '2023-10-02 15:47:02');
INSERT INTO `wallet_changes` VALUES (2042, 'Fortune Tiger play', '-74.25', 0.00, 74.25, 0.00, 74.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:03', '2023-10-02 15:47:03');
INSERT INTO `wallet_changes` VALUES (2043, 'Fortune Tiger win', '60.15', 0.00, 60.15, -14.10, 74.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:03', '2023-10-02 15:47:03');
INSERT INTO `wallet_changes` VALUES (2044, 'Fortune Tiger play', '-72.84', 0.00, 72.84, 0.00, 72.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:04', '2023-10-02 15:47:04');
INSERT INTO `wallet_changes` VALUES (2045, 'Fortune Tiger win', '150.79', 0.00, 150.79, 77.95, 72.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:05', '2023-10-02 15:47:05');
INSERT INTO `wallet_changes` VALUES (2046, 'Fortune Tiger win', '209.66', 0.00, 209.66, 136.82, 72.84, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:05', '2023-10-02 15:47:05');
INSERT INTO `wallet_changes` VALUES (2047, 'Fortune Tiger play', '-132.09', 0.00, 132.09, 0.00, 132.09, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:06', '2023-10-02 15:47:06');
INSERT INTO `wallet_changes` VALUES (2048, 'Fortune Tiger play', '-70.72', 0.00, 70.72, 0.00, 70.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:07', '2023-10-02 15:47:07');
INSERT INTO `wallet_changes` VALUES (2049, 'Fortune Tiger win', '56.93', 0.00, 56.93, -13.79, 70.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:08', '2023-10-02 15:47:08');
INSERT INTO `wallet_changes` VALUES (2050, 'Fortune Tiger win', '43.51', 0.00, 43.51, -27.21, 70.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:47:08', '2023-10-02 15:47:08');
INSERT INTO `wallet_changes` VALUES (2051, 'Fortune Tiger win', '237.56', 0.00, 237.56, 237.56, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:10', '2023-10-02 15:52:10');
INSERT INTO `wallet_changes` VALUES (2052, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:12', '2023-10-02 15:52:12');
INSERT INTO `wallet_changes` VALUES (2053, 'Fortune Tiger play', '-241.76', 0.00, 241.76, 0.00, 241.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:14', '2023-10-02 15:52:14');
INSERT INTO `wallet_changes` VALUES (2054, 'Fortune Tiger play', '-57.56', 0.00, 57.56, 0.00, 57.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:17', '2023-10-02 15:52:17');
INSERT INTO `wallet_changes` VALUES (2055, 'Fortune Tiger play', '-207.22', 0.00, 207.22, 0.00, 207.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:18', '2023-10-02 15:52:18');
INSERT INTO `wallet_changes` VALUES (2056, 'Fortune Tiger win', '254.89', 0.00, 254.89, 47.67, 207.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:19', '2023-10-02 15:52:19');
INSERT INTO `wallet_changes` VALUES (2057, 'Fortune Tiger win', '0.00', 0.00, 0.00, -207.22, 207.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:20', '2023-10-02 15:52:20');
INSERT INTO `wallet_changes` VALUES (2058, 'Fortune Tiger win', '143.87', 0.00, 143.87, -63.35, 207.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:20', '2023-10-02 15:52:20');
INSERT INTO `wallet_changes` VALUES (2059, 'Fortune Tiger win', '295.41', 0.00, 295.41, 88.19, 207.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:22', '2023-10-02 15:52:22');
INSERT INTO `wallet_changes` VALUES (2060, 'Fortune Tiger play', '-1638.19', 0.00, 1638.19, 0.00, 1638.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:27', '2023-10-02 15:52:27');
INSERT INTO `wallet_changes` VALUES (2061, 'Fortune Tiger win', '35.00', 0.00, 35.00, -1603.19, 1638.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:28', '2023-10-02 15:52:28');
INSERT INTO `wallet_changes` VALUES (2062, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:29', '2023-10-02 15:52:29');
INSERT INTO `wallet_changes` VALUES (2063, 'Fortune Tiger win', '1638.19', 0.00, 1638.19, 1603.20, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:29', '2023-10-02 15:52:29');
INSERT INTO `wallet_changes` VALUES (2064, 'Fortune Tiger play', '-425.8', 0.00, 425.80, 0.00, 425.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:30', '2023-10-02 15:52:30');
INSERT INTO `wallet_changes` VALUES (2065, 'Fortune Tiger play', '-569.92', 0.00, 569.92, 0.00, 569.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:31', '2023-10-02 15:52:31');
INSERT INTO `wallet_changes` VALUES (2066, 'Fortune Tiger win', '199.47', 0.00, 199.47, -370.45, 569.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:31', '2023-10-02 15:52:31');
INSERT INTO `wallet_changes` VALUES (2067, 'Fortune Tiger play', '-256.46', 0.00, 256.46, 0.00, 256.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:33', '2023-10-02 15:52:33');
INSERT INTO `wallet_changes` VALUES (2068, 'Fortune Tiger win', '285.24', 0.00, 285.24, 28.78, 256.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:34', '2023-10-02 15:52:34');
INSERT INTO `wallet_changes` VALUES (2069, 'Fortune Tiger play', '-143.92', 0.00, 143.92, 0.00, 143.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:35', '2023-10-02 15:52:35');
INSERT INTO `wallet_changes` VALUES (2070, 'Fortune Tiger play', '-410.17', 0.00, 410.17, 0.00, 410.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:35', '2023-10-02 15:52:35');
INSERT INTO `wallet_changes` VALUES (2071, 'Fortune Tiger win', '116.21', 0.00, 116.21, -27.71, 143.92, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:36', '2023-10-02 15:52:36');
INSERT INTO `wallet_changes` VALUES (2072, 'Fortune Tiger play', '-585.72', 0.00, 585.72, 0.00, 585.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:37', '2023-10-02 15:52:37');
INSERT INTO `wallet_changes` VALUES (2073, 'Fortune Tiger win', '185.48', 0.00, 185.48, -400.24, 585.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:38', '2023-10-02 15:52:38');
INSERT INTO `wallet_changes` VALUES (2074, 'Fortune Tiger win', '489.66', 0.00, 489.66, -96.06, 585.72, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:38', '2023-10-02 15:52:38');
INSERT INTO `wallet_changes` VALUES (2075, 'Fortune Tiger play', '-404.79', 0.00, 404.79, 0.00, 404.79, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:39', '2023-10-02 15:52:39');
INSERT INTO `wallet_changes` VALUES (2076, 'Fortune Tiger play', '-276.27', 0.00, 276.27, 0.00, 276.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:40', '2023-10-02 15:52:40');
INSERT INTO `wallet_changes` VALUES (2077, 'Fortune Tiger win', '277.33', 0.00, 277.33, 1.06, 276.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:40', '2023-10-02 15:52:40');
INSERT INTO `wallet_changes` VALUES (2078, 'Fortune Tiger win', '106.31', 0.00, 106.31, -169.96, 276.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:52:41', '2023-10-02 15:52:41');
INSERT INTO `wallet_changes` VALUES (2079, 'Fortune Tiger win', '0.20', 0.00, 0.20, -276.07, 276.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:00', '2023-10-02 15:56:00');
INSERT INTO `wallet_changes` VALUES (2080, 'Fortune Tiger win', '0.00', 0.00, 0.00, -276.27, 276.27, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:02', '2023-10-02 15:56:02');
INSERT INTO `wallet_changes` VALUES (2081, 'Fortune Tiger play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:04', '2023-10-02 15:56:04');
INSERT INTO `wallet_changes` VALUES (2082, 'Fortune Tiger play', '-0.52', 0.00, 0.52, 0.00, 0.52, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:06', '2023-10-02 15:56:06');
INSERT INTO `wallet_changes` VALUES (2083, 'Fortune Tiger play', '-0.4', 0.00, 0.40, 0.00, 0.40, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:08', '2023-10-02 15:56:08');
INSERT INTO `wallet_changes` VALUES (2084, 'Fortune Tiger win', '0.44', 0.00, 0.44, 0.04, 0.40, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:09', '2023-10-02 15:56:09');
INSERT INTO `wallet_changes` VALUES (2085, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.40, 0.40, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:09', '2023-10-02 15:56:09');
INSERT INTO `wallet_changes` VALUES (2086, 'Fortune Tiger win', '0.50', 0.00, 0.50, 0.10, 0.40, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:10', '2023-10-02 15:56:10');
INSERT INTO `wallet_changes` VALUES (2087, 'Fortune Tiger win', '0.12', 0.00, 0.12, -0.28, 0.40, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:11', '2023-10-02 15:56:11');
INSERT INTO `wallet_changes` VALUES (2088, 'Fortune Tiger play', '-3', 0.00, 3.00, 0.00, 3.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:14', '2023-10-02 15:56:14');
INSERT INTO `wallet_changes` VALUES (2089, 'Fortune Tiger play', '-2', 0.00, 2.00, 0.00, 2.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:16', '2023-10-02 15:56:16');
INSERT INTO `wallet_changes` VALUES (2090, 'Fortune Tiger win', '35.00', 0.00, 35.00, 33.00, 2.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:17', '2023-10-02 15:56:17');
INSERT INTO `wallet_changes` VALUES (2091, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:18', '2023-10-02 15:56:18');
INSERT INTO `wallet_changes` VALUES (2092, 'Fortune Tiger win', '2.00', 0.00, 2.00, -32.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:18', '2023-10-02 15:56:18');
INSERT INTO `wallet_changes` VALUES (2093, 'Fortune Tiger play', '-513.67', 0.00, 513.67, 0.00, 513.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:19', '2023-10-02 15:56:19');
INSERT INTO `wallet_changes` VALUES (2094, 'Fortune Tiger play', '-154.77', 0.00, 154.77, 0.00, 154.77, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:20', '2023-10-02 15:56:20');
INSERT INTO `wallet_changes` VALUES (2095, 'Fortune Tiger win', '361.13', 0.00, 361.13, 206.36, 154.77, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:20', '2023-10-02 15:56:20');
INSERT INTO `wallet_changes` VALUES (2096, 'Fortune Tiger play', '-481.51', 0.00, 481.51, 0.00, 481.51, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:22', '2023-10-02 15:56:22');
INSERT INTO `wallet_changes` VALUES (2097, 'Fortune Tiger win', '359.07', 0.00, 359.07, -122.44, 481.51, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:23', '2023-10-02 15:56:23');
INSERT INTO `wallet_changes` VALUES (2098, 'Fortune Tiger play', '-207.64', 0.00, 207.64, 0.00, 207.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:24', '2023-10-02 15:56:24');
INSERT INTO `wallet_changes` VALUES (2099, 'Fortune Tiger play', '-83.38', 0.00, 83.38, 0.00, 83.38, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:24', '2023-10-02 15:56:24');
INSERT INTO `wallet_changes` VALUES (2100, 'Fortune Tiger win', '248.18', 0.00, 248.18, 164.80, 83.38, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:25', '2023-10-02 15:56:25');
INSERT INTO `wallet_changes` VALUES (2101, 'Fortune Tiger play', '-341.97', 0.00, 341.97, 0.00, 341.97, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:26', '2023-10-02 15:56:26');
INSERT INTO `wallet_changes` VALUES (2102, 'Fortune Tiger win', '60.62', 0.00, 60.62, -281.35, 341.97, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:26', '2023-10-02 15:56:26');
INSERT INTO `wallet_changes` VALUES (2103, 'Fortune Tiger win', '267.34', 0.00, 267.34, -74.63, 341.97, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:27', '2023-10-02 15:56:27');
INSERT INTO `wallet_changes` VALUES (2104, 'Fortune Tiger play', '-184.85', 0.00, 184.85, 0.00, 184.85, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:28', '2023-10-02 15:56:28');
INSERT INTO `wallet_changes` VALUES (2105, 'Fortune Tiger play', '-216.89', 0.00, 216.89, 0.00, 216.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:28', '2023-10-02 15:56:28');
INSERT INTO `wallet_changes` VALUES (2106, 'Fortune Tiger win', '56.93', 0.00, 56.93, -159.96, 216.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:29', '2023-10-02 15:56:29');
INSERT INTO `wallet_changes` VALUES (2107, 'Fortune Tiger win', '167.38', 0.00, 167.38, -49.51, 216.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:56:30', '2023-10-02 15:56:30');
INSERT INTO `wallet_changes` VALUES (2108, 'Fortune Tiger win', '90.00', 0.00, 90.00, 90.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:34', '2023-10-02 15:58:34');
INSERT INTO `wallet_changes` VALUES (2109, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:36', '2023-10-02 15:58:36');
INSERT INTO `wallet_changes` VALUES (2110, 'Fortune Tiger play', '-218', 0.00, 218.00, 0.00, 218.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:38', '2023-10-02 15:58:38');
INSERT INTO `wallet_changes` VALUES (2111, 'Fortune Tiger play', '-119.9', 0.00, 119.90, 0.00, 119.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:41', '2023-10-02 15:58:41');
INSERT INTO `wallet_changes` VALUES (2112, 'Fortune Tiger play', '-228.9', 0.00, 228.90, 0.00, 228.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:43', '2023-10-02 15:58:43');
INSERT INTO `wallet_changes` VALUES (2113, 'Fortune Tiger win', '232.50', 0.00, 232.50, 3.60, 228.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:44', '2023-10-02 15:58:44');
INSERT INTO `wallet_changes` VALUES (2114, 'Fortune Tiger win', '0.00', 0.00, 0.00, -228.90, 228.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:44', '2023-10-02 15:58:44');
INSERT INTO `wallet_changes` VALUES (2115, 'Fortune Tiger win', '153.10', 0.00, 153.10, -75.80, 228.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:45', '2023-10-02 15:58:45');
INSERT INTO `wallet_changes` VALUES (2116, 'Fortune Tiger win', '162.07', 0.00, 162.07, -66.83, 228.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:46', '2023-10-02 15:58:46');
INSERT INTO `wallet_changes` VALUES (2117, 'Fortune Tiger play', '-1408.77', 0.00, 1408.77, 0.00, 1408.77, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:52', '2023-10-02 15:58:52');
INSERT INTO `wallet_changes` VALUES (2118, 'Fortune Tiger win', '35.00', 0.00, 35.00, -1373.77, 1408.77, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:53', '2023-10-02 15:58:53');
INSERT INTO `wallet_changes` VALUES (2119, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:53', '2023-10-02 15:58:53');
INSERT INTO `wallet_changes` VALUES (2120, 'Fortune Tiger win', '1408.77', 0.00, 1408.77, 1373.78, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:54', '2023-10-02 15:58:54');
INSERT INTO `wallet_changes` VALUES (2121, 'Fortune Tiger play', '-535.14', 0.00, 535.14, 0.00, 535.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:55', '2023-10-02 15:58:55');
INSERT INTO `wallet_changes` VALUES (2122, 'Fortune Tiger play', '-228.14', 0.00, 228.14, 0.00, 228.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:55', '2023-10-02 15:58:55');
INSERT INTO `wallet_changes` VALUES (2123, 'Fortune Tiger win', '456.28', 0.00, 456.28, 228.14, 228.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:56', '2023-10-02 15:58:56');
INSERT INTO `wallet_changes` VALUES (2124, 'Fortune Tiger play', '-159.7', 0.00, 159.70, 0.00, 159.70, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:58', '2023-10-02 15:58:58');
INSERT INTO `wallet_changes` VALUES (2125, 'Fortune Tiger win', '106.09', 0.00, 106.09, -53.61, 159.70, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:59', '2023-10-02 15:58:59');
INSERT INTO `wallet_changes` VALUES (2126, 'Fortune Tiger play', '-222.78', 0.00, 222.78, 0.00, 222.78, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:58:59', '2023-10-02 15:58:59');
INSERT INTO `wallet_changes` VALUES (2127, 'Fortune Tiger play', '-501.26', 0.00, 501.26, 0.00, 501.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:00', '2023-10-02 15:59:00');
INSERT INTO `wallet_changes` VALUES (2128, 'Fortune Tiger win', '330.83', 0.00, 330.83, -170.43, 501.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:01', '2023-10-02 15:59:01');
INSERT INTO `wallet_changes` VALUES (2129, 'Fortune Tiger play', '-238.5', 0.00, 238.50, 0.00, 238.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:02', '2023-10-02 15:59:02');
INSERT INTO `wallet_changes` VALUES (2130, 'Fortune Tiger win', '414.98', 0.00, 414.98, 176.48, 238.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:02', '2023-10-02 15:59:02');
INSERT INTO `wallet_changes` VALUES (2131, 'Fortune Tiger win', '361.99', 0.00, 361.99, 123.49, 238.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:03', '2023-10-02 15:59:03');
INSERT INTO `wallet_changes` VALUES (2132, 'Fortune Tiger play', '-237.31', 0.00, 237.31, 0.00, 237.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:04', '2023-10-02 15:59:04');
INSERT INTO `wallet_changes` VALUES (2133, 'Fortune Tiger play', '-170.86', 0.00, 170.86, 0.00, 170.86, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:04', '2023-10-02 15:59:04');
INSERT INTO `wallet_changes` VALUES (2134, 'Fortune Tiger win', '58.95', 0.00, 58.95, -178.36, 237.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:05', '2023-10-02 15:59:05');
INSERT INTO `wallet_changes` VALUES (2135, 'Fortune Tiger win', '364.29', 0.00, 364.29, 126.98, 237.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 15:59:06', '2023-10-02 15:59:06');
INSERT INTO `wallet_changes` VALUES (2136, 'Fortune Tiger win', '453.74', 0.00, 453.74, 216.43, 237.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:08', '2023-10-02 16:00:08');
INSERT INTO `wallet_changes` VALUES (2137, 'Fortune Tiger win', '0.00', 0.00, 0.00, -237.31, 237.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:11', '2023-10-02 16:00:11');
INSERT INTO `wallet_changes` VALUES (2138, 'Fortune Tiger play', '-198.93', 0.00, 198.93, 0.00, 198.93, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:13', '2023-10-02 16:00:13');
INSERT INTO `wallet_changes` VALUES (2139, 'Fortune Tiger play', '-312.61', 0.00, 312.61, 0.00, 312.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:15', '2023-10-02 16:00:15');
INSERT INTO `wallet_changes` VALUES (2140, 'Fortune Tiger play', '-738.89', 0.00, 738.89, 0.00, 738.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:17', '2023-10-02 16:00:17');
INSERT INTO `wallet_changes` VALUES (2141, 'Fortune Tiger win', '231.33', 0.00, 231.33, -507.56, 738.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:17', '2023-10-02 16:00:17');
INSERT INTO `wallet_changes` VALUES (2142, 'Fortune Tiger win', '0.00', 0.00, 0.00, -738.89, 738.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:18', '2023-10-02 16:00:18');
INSERT INTO `wallet_changes` VALUES (2143, 'Fortune Tiger win', '443.52', 0.00, 443.52, -295.37, 738.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:19', '2023-10-02 16:00:19');
INSERT INTO `wallet_changes` VALUES (2144, 'Fortune Tiger win', '166.67', 0.00, 166.67, -572.22, 738.89, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:20', '2023-10-02 16:00:20');
INSERT INTO `wallet_changes` VALUES (2145, 'Fortune Tiger play', '-2944.5', 0.00, 2944.50, 0.00, 2944.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:26', '2023-10-02 16:00:26');
INSERT INTO `wallet_changes` VALUES (2146, 'Fortune Tiger win', '35.00', 0.00, 35.00, -2909.50, 2944.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:27', '2023-10-02 16:00:27');
INSERT INTO `wallet_changes` VALUES (2147, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:27', '2023-10-02 16:00:27');
INSERT INTO `wallet_changes` VALUES (2148, 'Fortune Tiger win', '2944.50', 0.00, 2944.50, 2909.51, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:28', '2023-10-02 16:00:28');
INSERT INTO `wallet_changes` VALUES (2149, 'Fortune Tiger play', '-706.44', 0.00, 706.44, 0.00, 706.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:29', '2023-10-02 16:00:29');
INSERT INTO `wallet_changes` VALUES (2150, 'Fortune Tiger play', '-621.67', 0.00, 621.67, 0.00, 621.67, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:29', '2023-10-02 16:00:29');
INSERT INTO `wallet_changes` VALUES (2151, 'Fortune Tiger win', '103.61', 0.00, 103.61, -602.83, 706.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:30', '2023-10-02 16:00:30');
INSERT INTO `wallet_changes` VALUES (2152, 'Fortune Tiger play', '-984.31', 0.00, 984.31, 0.00, 984.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:32', '2023-10-02 16:00:32');
INSERT INTO `wallet_changes` VALUES (2153, 'Fortune Tiger win', '377.66', 0.00, 377.66, -606.65, 984.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:33', '2023-10-02 16:00:33');
INSERT INTO `wallet_changes` VALUES (2154, 'Fortune Tiger play', '-1189.22', 0.00, 1189.22, 0.00, 1189.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:33', '2023-10-02 16:00:33');
INSERT INTO `wallet_changes` VALUES (2155, 'Fortune Tiger play', '-731.83', 0.00, 731.83, 0.00, 731.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:34', '2023-10-02 16:00:34');
INSERT INTO `wallet_changes` VALUES (2156, 'Fortune Tiger win', '731.83', 0.00, 731.83, 0.00, 731.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:35', '2023-10-02 16:00:35');
INSERT INTO `wallet_changes` VALUES (2157, 'Fortune Tiger play', '-1143.48', 0.00, 1143.48, 0.00, 1143.48, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:35', '2023-10-02 16:00:35');
INSERT INTO `wallet_changes` VALUES (2158, 'Fortune Tiger win', '137.22', 0.00, 137.22, -1006.26, 1143.48, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:36', '2023-10-02 16:00:36');
INSERT INTO `wallet_changes` VALUES (2159, 'Fortune Tiger win', '365.91', 0.00, 365.91, -777.57, 1143.48, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:37', '2023-10-02 16:00:37');
INSERT INTO `wallet_changes` VALUES (2160, 'Fortune Tiger play', '-182.96', 0.00, 182.96, 0.00, 182.96, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:38', '2023-10-02 16:00:38');
INSERT INTO `wallet_changes` VALUES (2161, 'Fortune Tiger play', '-548.87', 0.00, 548.87, 0.00, 548.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:38', '2023-10-02 16:00:38');
INSERT INTO `wallet_changes` VALUES (2162, 'Fortune Tiger win', '640.35', 0.00, 640.35, 91.48, 548.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:39', '2023-10-02 16:00:39');
INSERT INTO `wallet_changes` VALUES (2163, 'Fortune Tiger win', '411.65', 0.00, 411.65, -137.22, 548.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:00:40', '2023-10-02 16:00:40');
INSERT INTO `wallet_changes` VALUES (2164, 'Fortune Tiger win', '1456.71', 0.00, 1456.71, 907.84, 548.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:16', '2023-10-02 16:01:16');
INSERT INTO `wallet_changes` VALUES (2165, 'Fortune Tiger win', '0.00', 0.00, 0.00, -548.87, 548.87, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:18', '2023-10-02 16:01:18');
INSERT INTO `wallet_changes` VALUES (2166, 'Fortune Tiger play', '-1164.83', 0.00, 1164.83, 0.00, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:20', '2023-10-02 16:01:20');
INSERT INTO `wallet_changes` VALUES (2167, 'Fortune Tiger play', '-1850.02', 0.00, 1850.02, 0.00, 1850.02, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:23', '2023-10-02 16:01:23');
INSERT INTO `wallet_changes` VALUES (2168, 'Fortune Tiger play', '-1164.83', 0.00, 1164.83, 0.00, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:24', '2023-10-02 16:01:24');
INSERT INTO `wallet_changes` VALUES (2169, 'Fortune Tiger win', '1781.50', 0.00, 1781.50, 616.67, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:25', '2023-10-02 16:01:25');
INSERT INTO `wallet_changes` VALUES (2170, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1164.83, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:25', '2023-10-02 16:01:25');
INSERT INTO `wallet_changes` VALUES (2171, 'Fortune Tiger win', '2055.58', 0.00, 2055.58, 890.75, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:26', '2023-10-02 16:01:26');
INSERT INTO `wallet_changes` VALUES (2172, 'Fortune Tiger win', '1712.98', 0.00, 1712.98, 548.15, 1164.83, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:27', '2023-10-02 16:01:27');
INSERT INTO `wallet_changes` VALUES (2173, 'Fortune Tiger play', '-6852.93', 0.00, 6852.93, 0.00, 6852.93, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:30', '2023-10-02 16:01:30');
INSERT INTO `wallet_changes` VALUES (2174, 'Fortune Tiger play', '-6851.93', 0.00, 6851.93, 0.00, 6851.93, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:32', '2023-10-02 16:01:32');
INSERT INTO `wallet_changes` VALUES (2175, 'Fortune Tiger win', '35.00', 0.00, 35.00, -6816.93, 6851.93, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:33', '2023-10-02 16:01:33');
INSERT INTO `wallet_changes` VALUES (2176, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:34', '2023-10-02 16:01:34');
INSERT INTO `wallet_changes` VALUES (2177, 'Fortune Tiger win', '6851.93', 0.00, 6851.93, 6816.94, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:34', '2023-10-02 16:01:34');
INSERT INTO `wallet_changes` VALUES (2178, 'Fortune Tiger play', '-5239.21', 0.00, 5239.21, 0.00, 5239.21, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:35', '2023-10-02 16:01:35');
INSERT INTO `wallet_changes` VALUES (2179, 'Fortune Tiger play', '-7566.44', 0.00, 7566.44, 0.00, 7566.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:36', '2023-10-02 16:01:36');
INSERT INTO `wallet_changes` VALUES (2180, 'Fortune Tiger win', '4074.24', 0.00, 4074.24, -3492.20, 7566.44, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:36', '2023-10-02 16:01:36');
INSERT INTO `wallet_changes` VALUES (2181, 'Fortune Tiger play', '-2328.14', 0.00, 2328.14, 0.00, 2328.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:39', '2023-10-02 16:01:39');
INSERT INTO `wallet_changes` VALUES (2182, 'Fortune Tiger win', '873.05', 0.00, 873.05, -1455.09, 2328.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:39', '2023-10-02 16:01:39');
INSERT INTO `wallet_changes` VALUES (2183, 'Fortune Tiger play', '-873.05', 0.00, 873.05, 0.00, 873.05, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:40', '2023-10-02 16:01:40');
INSERT INTO `wallet_changes` VALUES (2184, 'Fortune Tiger play', '-1455.09', 0.00, 1455.09, 0.00, 1455.09, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:41', '2023-10-02 16:01:41');
INSERT INTO `wallet_changes` VALUES (2185, 'Fortune Tiger win', '8148.48', 0.00, 8148.48, 6693.39, 1455.09, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:41', '2023-10-02 16:01:41');
INSERT INTO `wallet_changes` VALUES (2186, 'Fortune Tiger play', '-2910.17', 0.00, 2910.17, 0.00, 2910.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:42', '2023-10-02 16:01:42');
INSERT INTO `wallet_changes` VALUES (2187, 'Fortune Tiger win', '6693.39', 0.00, 6693.39, 3783.22, 2910.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:43', '2023-10-02 16:01:43');
INSERT INTO `wallet_changes` VALUES (2188, 'Fortune Tiger win', '873.05', 0.00, 873.05, -2037.12, 2910.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:43', '2023-10-02 16:01:43');
INSERT INTO `wallet_changes` VALUES (2189, 'Fortune Tiger play', '-1746.1', 0.00, 1746.10, 0.00, 1746.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:44', '2023-10-02 16:01:44');
INSERT INTO `wallet_changes` VALUES (2190, 'Fortune Tiger play', '-8439.5', 0.00, 8439.50, 0.00, 8439.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:45', '2023-10-02 16:01:45');
INSERT INTO `wallet_changes` VALUES (2191, 'Fortune Tiger win', '2619.15', 0.00, 2619.15, -5820.35, 8439.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:45', '2023-10-02 16:01:45');
INSERT INTO `wallet_changes` VALUES (2192, 'Fortune Tiger win', '2328.14', 0.00, 2328.14, -6111.36, 8439.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:01:46', '2023-10-02 16:01:46');
INSERT INTO `wallet_changes` VALUES (2193, 'Fortune Rabbit win', '13754.25', 0.00, 13754.25, 13754.25, 0.00, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:49', '2023-10-02 16:03:49');
INSERT INTO `wallet_changes` VALUES (2194, 'Fortune Rabbit win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:51', '2023-10-02 16:03:51');
INSERT INTO `wallet_changes` VALUES (2195, 'Fortune Rabbit play', '-19897.81', 0.00, 19897.81, 0.00, 19897.81, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:54', '2023-10-02 16:03:54');
INSERT INTO `wallet_changes` VALUES (2196, 'Fortune Rabbit play', '-13502.09', 0.00, 13502.09, 0.00, 13502.09, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:56', '2023-10-02 16:03:56');
INSERT INTO `wallet_changes` VALUES (2197, 'Fortune Rabbit play', '-11370.18', 0.00, 11370.18, 0.00, 11370.18, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:58', '2023-10-02 16:03:58');
INSERT INTO `wallet_changes` VALUES (2198, 'Fortune Rabbit win', '20608.45', 0.00, 20608.45, 9238.27, 11370.18, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:58', '2023-10-02 16:03:58');
INSERT INTO `wallet_changes` VALUES (2199, 'Fortune Rabbit win', '0.00', 0.00, 0.00, -11370.18, 11370.18, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:03:59', '2023-10-02 16:03:59');
INSERT INTO `wallet_changes` VALUES (2200, 'Fortune Rabbit win', '16344.63', 0.00, 16344.63, 4974.45, 11370.18, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:00', '2023-10-02 16:04:00');
INSERT INTO `wallet_changes` VALUES (2201, 'Fortune Rabbit win', '19187.17', 0.00, 19187.17, 7816.99, 11370.18, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:01', '2023-10-02 16:04:01');
INSERT INTO `wallet_changes` VALUES (2202, 'Fortune Rabbit play', '-71064.61', 0.00, 71064.61, 0.00, 71064.61, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:04', '2023-10-02 16:04:04');
INSERT INTO `wallet_changes` VALUES (2203, 'Fortune Rabbit play', '-71063.61', 0.00, 71063.61, 0.00, 71063.61, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:06', '2023-10-02 16:04:06');
INSERT INTO `wallet_changes` VALUES (2204, 'Fortune Rabbit win', '35.00', 0.00, 35.00, -71028.61, 71063.61, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:07', '2023-10-02 16:04:07');
INSERT INTO `wallet_changes` VALUES (2205, 'Fortune Rabbit play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:07', '2023-10-02 16:04:07');
INSERT INTO `wallet_changes` VALUES (2206, 'Fortune Rabbit win', '71063.61', 0.00, 71063.61, 71028.62, 34.99, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:08', '2023-10-02 16:04:08');
INSERT INTO `wallet_changes` VALUES (2207, 'Fortune Rabbit play', '-21178.29', 0.00, 21178.29, 0.00, 21178.29, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:09', '2023-10-02 16:04:09');
INSERT INTO `wallet_changes` VALUES (2208, 'Fortune Rabbit play', '-87732.54', 0.00, 87732.54, 0.00, 87732.54, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:10', '2023-10-02 16:04:10');
INSERT INTO `wallet_changes` VALUES (2209, 'Fortune Rabbit win', '57479.94', 0.00, 57479.94, -30252.60, 87732.54, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:10', '2023-10-02 16:04:10');
INSERT INTO `wallet_changes` VALUES (2210, 'Fortune Rabbit play', '-30252.6', 0.00, 30252.60, 0.00, 30252.60, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:12', '2023-10-02 16:04:12');
INSERT INTO `wallet_changes` VALUES (2211, 'Fortune Rabbit win', '45378.90', 0.00, 45378.90, 15126.30, 30252.60, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:13', '2023-10-02 16:04:13');
INSERT INTO `wallet_changes` VALUES (2212, 'Fortune Rabbit play', '-9075.78', 0.00, 9075.78, 0.00, 9075.78, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:14', '2023-10-02 16:04:14');
INSERT INTO `wallet_changes` VALUES (2213, 'Fortune Rabbit play', '-45378.9', 0.00, 45378.90, 0.00, 45378.90, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:14', '2023-10-02 16:04:14');
INSERT INTO `wallet_changes` VALUES (2214, 'Fortune Rabbit win', '48404.16', 0.00, 48404.16, 3025.26, 45378.90, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:15', '2023-10-02 16:04:15');
INSERT INTO `wallet_changes` VALUES (2215, 'Fortune Rabbit play', '-9075.78', 0.00, 9075.78, 0.00, 9075.78, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:16', '2023-10-02 16:04:16');
INSERT INTO `wallet_changes` VALUES (2216, 'Fortune Rabbit win', '54454.68', 0.00, 54454.68, 45378.90, 9075.78, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:16', '2023-10-02 16:04:16');
INSERT INTO `wallet_changes` VALUES (2217, 'Fortune Rabbit win', '78656.76', 0.00, 78656.76, 69580.98, 9075.78, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:17', '2023-10-02 16:04:17');
INSERT INTO `wallet_changes` VALUES (2218, 'Fortune Rabbit play', '-81682.02', 0.00, 81682.02, 0.00, 81682.02, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:18', '2023-10-02 16:04:18');
INSERT INTO `wallet_changes` VALUES (2219, 'Fortune Rabbit play', '-87732.54', 0.00, 87732.54, 0.00, 87732.54, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:19', '2023-10-02 16:04:19');
INSERT INTO `wallet_changes` VALUES (2220, 'Fortune Rabbit win', '63530.46', 0.00, 63530.46, -24202.08, 87732.54, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:19', '2023-10-02 16:04:19');
INSERT INTO `wallet_changes` VALUES (2221, 'Fortune Rabbit win', '42353.64', 0.00, 42353.64, -45378.90, 87732.54, 'Fortune Rabbit', 'admin@demo.com', '2023-10-02 16:04:20', '2023-10-02 16:04:20');
INSERT INTO `wallet_changes` VALUES (2222, 'Fortune Tiger win', '108.30', 0.00, 108.30, 108.30, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:29', '2023-10-02 16:12:29');
INSERT INTO `wallet_changes` VALUES (2223, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:31', '2023-10-02 16:12:31');
INSERT INTO `wallet_changes` VALUES (2224, 'Fortune Tiger play', '-132.85', 0.00, 132.85, 0.00, 132.85, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:33', '2023-10-02 16:12:33');
INSERT INTO `wallet_changes` VALUES (2225, 'Fortune Tiger play', '-83.03', 0.00, 83.03, 0.00, 83.03, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:36', '2023-10-02 16:12:36');
INSERT INTO `wallet_changes` VALUES (2226, 'Fortune Tiger play', '-16.61', 0.00, 16.61, 0.00, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:38', '2023-10-02 16:12:38');
INSERT INTO `wallet_changes` VALUES (2227, 'Fortune Tiger win', '73.23', 0.00, 73.23, 56.62, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:39', '2023-10-02 16:12:39');
INSERT INTO `wallet_changes` VALUES (2228, 'Fortune Tiger win', '0.00', 0.00, 0.00, -16.61, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:39', '2023-10-02 16:12:39');
INSERT INTO `wallet_changes` VALUES (2229, 'Fortune Tiger win', '88.69', 0.00, 88.69, 72.08, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:40', '2023-10-02 16:12:40');
INSERT INTO `wallet_changes` VALUES (2230, 'Fortune Tiger win', '126.83', 0.00, 126.83, 110.22, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:42', '2023-10-02 16:12:42');
INSERT INTO `wallet_changes` VALUES (2231, 'Fortune Tiger win', '156.10', 0.00, 156.10, 139.49, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:50', '2023-10-02 16:12:50');
INSERT INTO `wallet_changes` VALUES (2232, 'Fortune Tiger win', '185.37', 0.00, 185.37, 168.76, 16.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:52', '2023-10-02 16:12:52');
INSERT INTO `wallet_changes` VALUES (2233, 'Fortune Tiger play', '-117.07', 0.00, 117.07, 0.00, 117.07, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:53', '2023-10-02 16:12:53');
INSERT INTO `wallet_changes` VALUES (2234, 'Fortune Tiger win', '263.41', 0.00, 263.41, 146.34, 117.07, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:53', '2023-10-02 16:12:53');
INSERT INTO `wallet_changes` VALUES (2235, 'Fortune Tiger win', '107.32', 0.00, 107.32, -9.75, 117.07, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:54', '2023-10-02 16:12:54');
INSERT INTO `wallet_changes` VALUES (2236, 'Fortune Tiger play', '-68.29', 0.00, 68.29, 0.00, 68.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:55', '2023-10-02 16:12:55');
INSERT INTO `wallet_changes` VALUES (2237, 'Fortune Tiger play', '-273.17', 0.00, 273.17, 0.00, 273.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:55', '2023-10-02 16:12:55');
INSERT INTO `wallet_changes` VALUES (2238, 'Fortune Tiger win', '263.41', 0.00, 263.41, 195.12, 68.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:56', '2023-10-02 16:12:56');
INSERT INTO `wallet_changes` VALUES (2239, 'Fortune Tiger win', '68.29', 0.00, 68.29, 0.00, 68.29, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:12:57', '2023-10-02 16:12:57');
INSERT INTO `wallet_changes` VALUES (2240, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:13:49', '2023-10-02 16:13:49');
INSERT INTO `wallet_changes` VALUES (2241, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:13:51', '2023-10-02 16:13:51');
INSERT INTO `wallet_changes` VALUES (2242, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:13:58', '2023-10-02 16:13:58');
INSERT INTO `wallet_changes` VALUES (2243, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:13:59', '2023-10-02 16:13:59');
INSERT INTO `wallet_changes` VALUES (2244, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:00', '2023-10-02 16:14:00');
INSERT INTO `wallet_changes` VALUES (2245, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:01', '2023-10-02 16:14:01');
INSERT INTO `wallet_changes` VALUES (2246, 'Fortune Tiger win', '35.00', 0.00, 35.00, 35.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:07', '2023-10-02 16:14:07');
INSERT INTO `wallet_changes` VALUES (2247, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:07', '2023-10-02 16:14:07');
INSERT INTO `wallet_changes` VALUES (2248, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:08', '2023-10-02 16:14:08');
INSERT INTO `wallet_changes` VALUES (2249, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:10', '2023-10-02 16:14:10');
INSERT INTO `wallet_changes` VALUES (2250, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:13', '2023-10-02 16:14:13');
INSERT INTO `wallet_changes` VALUES (2251, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:15', '2023-10-02 16:14:15');
INSERT INTO `wallet_changes` VALUES (2252, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:16', '2023-10-02 16:14:16');
INSERT INTO `wallet_changes` VALUES (2253, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:17', '2023-10-02 16:14:17');
INSERT INTO `wallet_changes` VALUES (2254, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:19', '2023-10-02 16:14:19');
INSERT INTO `wallet_changes` VALUES (2255, 'Fortune Tiger win', '0.00', 0.00, 0.00, -34.99, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:14:20', '2023-10-02 16:14:20');
INSERT INTO `wallet_changes` VALUES (2256, 'Fortune Tiger win', '0.19', 0.00, 0.19, 0.19, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:07', '2023-10-02 16:16:07');
INSERT INTO `wallet_changes` VALUES (2257, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:09', '2023-10-02 16:16:09');
INSERT INTO `wallet_changes` VALUES (2258, 'Fortune Tiger play', '-0.19', 0.00, 0.19, 0.00, 0.19, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:11', '2023-10-02 16:16:11');
INSERT INTO `wallet_changes` VALUES (2259, 'Fortune Tiger play', '-0.13', 0.00, 0.13, 0.00, 0.13, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:14', '2023-10-02 16:16:14');
INSERT INTO `wallet_changes` VALUES (2260, 'Fortune Tiger play', '-0.24', 0.00, 0.24, 0.00, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:16', '2023-10-02 16:16:16');
INSERT INTO `wallet_changes` VALUES (2261, 'Fortune Tiger win', '0.09', 0.00, 0.09, -0.15, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:16', '2023-10-02 16:16:16');
INSERT INTO `wallet_changes` VALUES (2262, 'Fortune Tiger win', '0.00', 0.00, 0.00, -0.24, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:17', '2023-10-02 16:16:17');
INSERT INTO `wallet_changes` VALUES (2263, 'Fortune Tiger win', '0.28', 0.00, 0.28, 0.04, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:18', '2023-10-02 16:16:18');
INSERT INTO `wallet_changes` VALUES (2264, 'Fortune Tiger win', '0.33', 0.00, 0.33, 0.09, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:19', '2023-10-02 16:16:19');
INSERT INTO `wallet_changes` VALUES (2265, 'Fortune Tiger play', '-1.65', 0.00, 1.65, 0.00, 1.65, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:25', '2023-10-02 16:16:25');
INSERT INTO `wallet_changes` VALUES (2266, 'Fortune Tiger win', '35.00', 0.00, 35.00, 33.35, 1.65, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:25', '2023-10-02 16:16:25');
INSERT INTO `wallet_changes` VALUES (2267, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:26', '2023-10-02 16:16:26');
INSERT INTO `wallet_changes` VALUES (2268, 'Fortune Tiger win', '1.65', 0.00, 1.65, -33.34, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:27', '2023-10-02 16:16:27');
INSERT INTO `wallet_changes` VALUES (2269, 'Fortune Tiger play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:27', '2023-10-02 16:16:27');
INSERT INTO `wallet_changes` VALUES (2270, 'Fortune Tiger play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:28', '2023-10-02 16:16:28');
INSERT INTO `wallet_changes` VALUES (2271, 'Fortune Tiger win', '0.44', 0.00, 0.44, 0.24, 0.20, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:29', '2023-10-02 16:16:29');
INSERT INTO `wallet_changes` VALUES (2272, 'Fortune Tiger play', '-0.47', 0.00, 0.47, 0.00, 0.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:31', '2023-10-02 16:16:31');
INSERT INTO `wallet_changes` VALUES (2273, 'Fortune Tiger win', '0.32', 0.00, 0.32, -0.15, 0.47, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:32', '2023-10-02 16:16:32');
INSERT INTO `wallet_changes` VALUES (2274, 'Fortune Tiger play', '-0.14', 0.00, 0.14, 0.00, 0.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:32', '2023-10-02 16:16:32');
INSERT INTO `wallet_changes` VALUES (2275, 'Fortune Tiger play', '-0.05', 0.00, 0.05, 0.00, 0.05, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:33', '2023-10-02 16:16:33');
INSERT INTO `wallet_changes` VALUES (2276, 'Fortune Tiger win', '0.24', 0.00, 0.24, 0.19, 0.05, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:34', '2023-10-02 16:16:34');
INSERT INTO `wallet_changes` VALUES (2277, 'Fortune Tiger play', '-0.1', 0.00, 0.10, 0.00, 0.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:34', '2023-10-02 16:16:34');
INSERT INTO `wallet_changes` VALUES (2278, 'Fortune Tiger win', '0.10', 0.00, 0.10, 0.00, 0.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:35', '2023-10-02 16:16:35');
INSERT INTO `wallet_changes` VALUES (2279, 'Fortune Tiger win', '0.16', 0.00, 0.16, 0.06, 0.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:36', '2023-10-02 16:16:36');
INSERT INTO `wallet_changes` VALUES (2280, 'Fortune Tiger play', '-0.31', 0.00, 0.31, 0.00, 0.31, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:36', '2023-10-02 16:16:36');
INSERT INTO `wallet_changes` VALUES (2281, 'Fortune Tiger play', '-0.24', 0.00, 0.24, 0.00, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:37', '2023-10-02 16:16:37');
INSERT INTO `wallet_changes` VALUES (2282, 'Fortune Tiger win', '0.04', 0.00, 0.04, -0.20, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:38', '2023-10-02 16:16:38');
INSERT INTO `wallet_changes` VALUES (2283, 'Fortune Tiger win', '0.27', 0.00, 0.27, 0.03, 0.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:16:38', '2023-10-02 16:16:38');
INSERT INTO `wallet_changes` VALUES (2284, 'Fortune Tiger win', '120.24', 0.00, 120.24, 120.24, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:20', '2023-10-02 16:44:20');
INSERT INTO `wallet_changes` VALUES (2285, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:22', '2023-10-02 16:44:22');
INSERT INTO `wallet_changes` VALUES (2286, 'Fortune Tiger play', '-118.04', 0.00, 118.04, 0.00, 118.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:24', '2023-10-02 16:44:24');
INSERT INTO `wallet_changes` VALUES (2287, 'Fortune Tiger play', '-173.95', 0.00, 173.95, 0.00, 173.95, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:28', '2023-10-02 16:44:28');
INSERT INTO `wallet_changes` VALUES (2288, 'Fortune Tiger play', '-80.76', 0.00, 80.76, 0.00, 80.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:30', '2023-10-02 16:44:30');
INSERT INTO `wallet_changes` VALUES (2289, 'Fortune Tiger win', '118.04', 0.00, 118.04, 37.28, 80.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:31', '2023-10-02 16:44:31');
INSERT INTO `wallet_changes` VALUES (2290, 'Fortune Tiger win', '0.00', 0.00, 0.00, -80.76, 80.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:32', '2023-10-02 16:44:32');
INSERT INTO `wallet_changes` VALUES (2291, 'Fortune Tiger win', '86.97', 0.00, 86.97, 6.21, 80.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:32', '2023-10-02 16:44:32');
INSERT INTO `wallet_changes` VALUES (2292, 'Fortune Tiger win', '80.76', 0.00, 80.76, 0.00, 80.76, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:34', '2023-10-02 16:44:34');
INSERT INTO `wallet_changes` VALUES (2293, 'Fortune Tiger play', '-622.24', 0.00, 622.24, 0.00, 622.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:37', '2023-10-02 16:44:37');
INSERT INTO `wallet_changes` VALUES (2294, 'Fortune Tiger play', '-621.24', 0.00, 621.24, 0.00, 621.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:39', '2023-10-02 16:44:39');
INSERT INTO `wallet_changes` VALUES (2295, 'Fortune Tiger win', '35.00', 0.00, 35.00, -586.24, 621.24, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:41', '2023-10-02 16:44:41');
INSERT INTO `wallet_changes` VALUES (2296, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:41', '2023-10-02 16:44:41');
INSERT INTO `wallet_changes` VALUES (2297, 'Fortune Tiger win', '621.24', 0.00, 621.24, 586.25, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:42', '2023-10-02 16:44:42');
INSERT INTO `wallet_changes` VALUES (2298, 'Fortune Tiger play', '-35.25', 0.00, 35.25, 0.00, 35.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:43', '2023-10-02 16:44:43');
INSERT INTO `wallet_changes` VALUES (2299, 'Fortune Tiger play', '-127.26', 0.00, 127.26, 0.00, 127.26, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:43', '2023-10-02 16:44:43');
INSERT INTO `wallet_changes` VALUES (2300, 'Fortune Tiger win', '33.49', 0.00, 33.49, -1.76, 35.25, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:44', '2023-10-02 16:44:44');
INSERT INTO `wallet_changes` VALUES (2301, 'Fortune Tiger play', '-160.74', 0.00, 160.74, 0.00, 160.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:46', '2023-10-02 16:44:46');
INSERT INTO `wallet_changes` VALUES (2302, 'Fortune Tiger win', '137.44', 0.00, 137.44, -23.30, 160.74, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:47', '2023-10-02 16:44:47');
INSERT INTO `wallet_changes` VALUES (2303, 'Fortune Tiger play', '-84.04', 0.00, 84.04, 0.00, 84.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:48', '2023-10-02 16:44:48');
INSERT INTO `wallet_changes` VALUES (2304, 'Fortune Tiger play', '-140.61', 0.00, 140.61, 0.00, 140.61, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:48', '2023-10-02 16:44:48');
INSERT INTO `wallet_changes` VALUES (2305, 'Fortune Tiger win', '75.93', 0.00, 75.93, -8.11, 84.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:49', '2023-10-02 16:44:49');
INSERT INTO `wallet_changes` VALUES (2306, 'Fortune Tiger play', '-44.8', 0.00, 44.80, 0.00, 44.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:50', '2023-10-02 16:44:50');
INSERT INTO `wallet_changes` VALUES (2307, 'Fortune Tiger win', '122.30', 0.00, 122.30, 77.50, 44.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:51', '2023-10-02 16:44:51');
INSERT INTO `wallet_changes` VALUES (2308, 'Fortune Tiger win', '103.55', 0.00, 103.55, 58.75, 44.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:51', '2023-10-02 16:44:51');
INSERT INTO `wallet_changes` VALUES (2309, 'Fortune Tiger play', '-81.46', 0.00, 81.46, 0.00, 81.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:52', '2023-10-02 16:44:52');
INSERT INTO `wallet_changes` VALUES (2310, 'Fortune Tiger play', '-101.55', 0.00, 101.55, 0.00, 101.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:53', '2023-10-02 16:44:53');
INSERT INTO `wallet_changes` VALUES (2311, 'Fortune Tiger win', '49.58', 0.00, 49.58, -51.97, 101.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:53', '2023-10-02 16:44:53');
INSERT INTO `wallet_changes` VALUES (2312, 'Fortune Tiger win', '103.62', 0.00, 103.62, 2.07, 101.55, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:44:54', '2023-10-02 16:44:54');
INSERT INTO `wallet_changes` VALUES (2313, 'Fortune Tiger win', '75.15', 0.00, 75.15, 75.15, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:07', '2023-10-02 16:46:07');
INSERT INTO `wallet_changes` VALUES (2314, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:09', '2023-10-02 16:46:09');
INSERT INTO `wallet_changes` VALUES (2315, 'Fortune Tiger play', '-40.33', 0.00, 40.33, 0.00, 40.33, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:11', '2023-10-02 16:46:11');
INSERT INTO `wallet_changes` VALUES (2316, 'Fortune Tiger play', '-74.9', 0.00, 74.90, 0.00, 74.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:14', '2023-10-02 16:46:14');
INSERT INTO `wallet_changes` VALUES (2317, 'Fortune Tiger play', '-103.71', 0.00, 103.71, 0.00, 103.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:15', '2023-10-02 16:46:15');
INSERT INTO `wallet_changes` VALUES (2318, 'Fortune Tiger win', '132.51', 0.00, 132.51, 28.80, 103.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:16', '2023-10-02 16:46:16');
INSERT INTO `wallet_changes` VALUES (2319, 'Fortune Tiger win', '0.00', 0.00, 0.00, -103.71, 103.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:16', '2023-10-02 16:46:16');
INSERT INTO `wallet_changes` VALUES (2320, 'Fortune Tiger win', '51.85', 0.00, 51.85, -51.86, 103.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:17', '2023-10-02 16:46:17');
INSERT INTO `wallet_changes` VALUES (2321, 'Fortune Tiger win', '11.52', 0.00, 11.52, -92.19, 103.71, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:19', '2023-10-02 16:46:19');
INSERT INTO `wallet_changes` VALUES (2322, 'Fortune Tiger play', '-577.15', 0.00, 577.15, 0.00, 577.15, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:22', '2023-10-02 16:46:22');
INSERT INTO `wallet_changes` VALUES (2323, 'Fortune Tiger play', '-576.15', 0.00, 576.15, 0.00, 576.15, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:24', '2023-10-02 16:46:24');
INSERT INTO `wallet_changes` VALUES (2324, 'Fortune Tiger win', '35.00', 0.00, 35.00, -541.15, 576.15, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:25', '2023-10-02 16:46:25');
INSERT INTO `wallet_changes` VALUES (2325, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:26', '2023-10-02 16:46:26');
INSERT INTO `wallet_changes` VALUES (2326, 'Fortune Tiger win', '576.15', 0.00, 576.15, 541.16, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:26', '2023-10-02 16:46:26');
INSERT INTO `wallet_changes` VALUES (2327, 'Fortune Tiger play', '-59.22', 0.00, 59.22, 0.00, 59.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:27', '2023-10-02 16:46:27');
INSERT INTO `wallet_changes` VALUES (2328, 'Fortune Tiger play', '-149.23', 0.00, 149.23, 0.00, 149.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:28', '2023-10-02 16:46:28');
INSERT INTO `wallet_changes` VALUES (2329, 'Fortune Tiger win', '31.98', 0.00, 31.98, -117.25, 149.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:28', '2023-10-02 16:46:28');
INSERT INTO `wallet_changes` VALUES (2330, 'Fortune Tiger play', '-42.64', 0.00, 42.64, 0.00, 42.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:30', '2023-10-02 16:46:30');
INSERT INTO `wallet_changes` VALUES (2331, 'Fortune Tiger win', '53.94', 0.00, 53.94, 11.30, 42.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:31', '2023-10-02 16:46:31');
INSERT INTO `wallet_changes` VALUES (2332, 'Fortune Tiger play', '-70.75', 0.00, 70.75, 0.00, 70.75, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:32', '2023-10-02 16:46:32');
INSERT INTO `wallet_changes` VALUES (2333, 'Fortune Tiger play', '-104.17', 0.00, 104.17, 0.00, 104.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:32', '2023-10-02 16:46:32');
INSERT INTO `wallet_changes` VALUES (2334, 'Fortune Tiger win', '88.64', 0.00, 88.64, -15.53, 104.17, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:33', '2023-10-02 16:46:33');
INSERT INTO `wallet_changes` VALUES (2335, 'Fortune Tiger play', '-68.7', 0.00, 68.70, 0.00, 68.70, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:34', '2023-10-02 16:46:34');
INSERT INTO `wallet_changes` VALUES (2336, 'Fortune Tiger win', '116.78', 0.00, 116.78, 48.08, 68.70, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:35', '2023-10-02 16:46:35');
INSERT INTO `wallet_changes` VALUES (2337, 'Fortune Tiger win', '75.91', 0.00, 75.91, 7.21, 68.70, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:35', '2023-10-02 16:46:35');
INSERT INTO `wallet_changes` VALUES (2338, 'Fortune Tiger play', '-157.13', 0.00, 157.13, 0.00, 157.13, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:36', '2023-10-02 16:46:36');
INSERT INTO `wallet_changes` VALUES (2339, 'Fortune Tiger play', '-55.23', 0.00, 55.23, 0.00, 55.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:37', '2023-10-02 16:46:37');
INSERT INTO `wallet_changes` VALUES (2340, 'Fortune Tiger win', '14.78', 0.00, 14.78, -40.45, 55.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:37', '2023-10-02 16:46:37');
INSERT INTO `wallet_changes` VALUES (2341, 'Fortune Tiger win', '73.03', 0.00, 73.03, 17.80, 55.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:46:38', '2023-10-02 16:46:38');
INSERT INTO `wallet_changes` VALUES (2342, 'Fortune Tiger win', '118.93', 0.00, 118.93, 63.70, 55.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:33', '2023-10-02 16:49:33');
INSERT INTO `wallet_changes` VALUES (2343, 'Fortune Tiger win', '0.00', 0.00, 0.00, -55.23, 55.23, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:35', '2023-10-02 16:49:35');
INSERT INTO `wallet_changes` VALUES (2344, 'Fortune Tiger play', '-28.82', 0.00, 28.82, 0.00, 28.82, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:37', '2023-10-02 16:49:37');
INSERT INTO `wallet_changes` VALUES (2345, 'Fortune Tiger play', '-34.58', 0.00, 34.58, 0.00, 34.58, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:40', '2023-10-02 16:49:40');
INSERT INTO `wallet_changes` VALUES (2346, 'Fortune Tiger play', '-126.8', 0.00, 126.80, 0.00, 126.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:41', '2023-10-02 16:49:41');
INSERT INTO `wallet_changes` VALUES (2347, 'Fortune Tiger win', '58.44', 0.00, 58.44, -68.36, 126.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:42', '2023-10-02 16:49:42');
INSERT INTO `wallet_changes` VALUES (2348, 'Fortune Tiger win', '0.00', 0.00, 0.00, -126.80, 126.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:43', '2023-10-02 16:49:43');
INSERT INTO `wallet_changes` VALUES (2349, 'Fortune Tiger win', '96.52', 0.00, 96.52, -30.28, 126.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:43', '2023-10-02 16:49:43');
INSERT INTO `wallet_changes` VALUES (2350, 'Fortune Tiger win', '60.45', 0.00, 60.45, -66.35, 126.80, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:45', '2023-10-02 16:49:45');
INSERT INTO `wallet_changes` VALUES (2351, 'Fortune Tiger play', '-664.96', 0.00, 664.96, 0.00, 664.96, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:50', '2023-10-02 16:49:50');
INSERT INTO `wallet_changes` VALUES (2352, 'Fortune Tiger win', '35.00', 0.00, 35.00, -629.96, 664.96, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:51', '2023-10-02 16:49:51');
INSERT INTO `wallet_changes` VALUES (2353, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:52', '2023-10-02 16:49:52');
INSERT INTO `wallet_changes` VALUES (2354, 'Fortune Tiger win', '664.96', 0.00, 664.96, 629.97, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:52', '2023-10-02 16:49:52');
INSERT INTO `wallet_changes` VALUES (2355, 'Fortune Tiger play', '-113.04', 0.00, 113.04, 0.00, 113.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:53', '2023-10-02 16:49:53');
INSERT INTO `wallet_changes` VALUES (2356, 'Fortune Tiger play', '-121.42', 0.00, 121.42, 0.00, 121.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:54', '2023-10-02 16:49:54');
INSERT INTO `wallet_changes` VALUES (2357, 'Fortune Tiger win', '66.23', 0.00, 66.23, -55.19, 121.42, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:54', '2023-10-02 16:49:54');
INSERT INTO `wallet_changes` VALUES (2358, 'Fortune Tiger play', '-132.46', 0.00, 132.46, 0.00, 132.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:56', '2023-10-02 16:49:56');
INSERT INTO `wallet_changes` VALUES (2359, 'Fortune Tiger win', '58.73', 0.00, 58.73, -73.73, 132.46, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:57', '2023-10-02 16:49:57');
INSERT INTO `wallet_changes` VALUES (2360, 'Fortune Tiger play', '-95.64', 0.00, 95.64, 0.00, 95.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:58', '2023-10-02 16:49:58');
INSERT INTO `wallet_changes` VALUES (2361, 'Fortune Tiger play', '-53.56', 0.00, 53.56, 0.00, 53.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:58', '2023-10-02 16:49:58');
INSERT INTO `wallet_changes` VALUES (2362, 'Fortune Tiger win', '72.38', 0.00, 72.38, 18.82, 53.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:49:59', '2023-10-02 16:49:59');
INSERT INTO `wallet_changes` VALUES (2363, 'Fortune Tiger play', '-40.14', 0.00, 40.14, 0.00, 40.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:00', '2023-10-02 16:50:00');
INSERT INTO `wallet_changes` VALUES (2364, 'Fortune Tiger win', '86.70', 0.00, 86.70, 46.56, 40.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:01', '2023-10-02 16:50:01');
INSERT INTO `wallet_changes` VALUES (2365, 'Fortune Tiger win', '107.51', 0.00, 107.51, 67.37, 40.14, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:01', '2023-10-02 16:50:01');
INSERT INTO `wallet_changes` VALUES (2366, 'Fortune Tiger play', '-166.64', 0.00, 166.64, 0.00, 166.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:02', '2023-10-02 16:50:02');
INSERT INTO `wallet_changes` VALUES (2367, 'Fortune Tiger play', '-116.64', 0.00, 116.64, 0.00, 116.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:03', '2023-10-02 16:50:03');
INSERT INTO `wallet_changes` VALUES (2368, 'Fortune Tiger win', '43.55', 0.00, 43.55, -73.09, 116.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:03', '2023-10-02 16:50:03');
INSERT INTO `wallet_changes` VALUES (2369, 'Fortune Tiger win', '72.62', 0.00, 72.62, -44.02, 116.64, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:50:04', '2023-10-02 16:50:04');
INSERT INTO `wallet_changes` VALUES (2370, 'Fortune Tiger win', '108.74', 0.00, 108.74, 108.74, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:31', '2023-10-02 16:52:31');
INSERT INTO `wallet_changes` VALUES (2371, 'Fortune Tiger win', '0.00', 0.00, 0.00, 0.00, 0.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:33', '2023-10-02 16:52:33');
INSERT INTO `wallet_changes` VALUES (2372, 'Fortune Tiger play', '-139.18', 0.00, 139.18, 0.00, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:35', '2023-10-02 16:52:35');
INSERT INTO `wallet_changes` VALUES (2373, 'Fortune Tiger play', '-74.56', 0.00, 74.56, 0.00, 74.56, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:38', '2023-10-02 16:52:38');
INSERT INTO `wallet_changes` VALUES (2374, 'Fortune Tiger play', '-139.18', 0.00, 139.18, 0.00, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:39', '2023-10-02 16:52:39');
INSERT INTO `wallet_changes` VALUES (2375, 'Fortune Tiger win', '57.26', 0.00, 57.26, -81.92, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:40', '2023-10-02 16:52:40');
INSERT INTO `wallet_changes` VALUES (2376, 'Fortune Tiger win', '0.00', 0.00, 0.00, -139.18, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:40', '2023-10-02 16:52:40');
INSERT INTO `wallet_changes` VALUES (2377, 'Fortune Tiger win', '74.73', 0.00, 74.73, -64.45, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:41', '2023-10-02 16:52:41');
INSERT INTO `wallet_changes` VALUES (2378, 'Fortune Tiger win', '34.29', 0.00, 34.29, -104.89, 139.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:42', '2023-10-02 16:52:42');
INSERT INTO `wallet_changes` VALUES (2379, 'Fortune Tiger play', '-524.18', 0.00, 524.18, 0.00, 524.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:48', '2023-10-02 16:52:48');
INSERT INTO `wallet_changes` VALUES (2380, 'Fortune Tiger win', '35.00', 0.00, 35.00, -489.18, 524.18, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:49', '2023-10-02 16:52:49');
INSERT INTO `wallet_changes` VALUES (2381, 'Fortune Tiger play', '-34.99', 0.00, 34.99, 0.00, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:49', '2023-10-02 16:52:49');
INSERT INTO `wallet_changes` VALUES (2382, 'Fortune Tiger win', '524.18', 0.00, 524.18, 489.19, 34.99, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:50', '2023-10-02 16:52:50');
INSERT INTO `wallet_changes` VALUES (2383, 'Fortune Tiger play', '-62.9', 0.00, 62.90, 0.00, 62.90, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:51', '2023-10-02 16:52:51');
INSERT INTO `wallet_changes` VALUES (2384, 'Fortune Tiger play', '-73.81', 0.00, 73.81, 0.00, 73.81, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:51', '2023-10-02 16:52:51');
INSERT INTO `wallet_changes` VALUES (2385, 'Fortune Tiger win', '36.90', 0.00, 36.90, -36.91, 73.81, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:52', '2023-10-02 16:52:52');
INSERT INTO `wallet_changes` VALUES (2386, 'Fortune Tiger play', '-55.35', 0.00, 55.35, 0.00, 55.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:54', '2023-10-02 16:52:54');
INSERT INTO `wallet_changes` VALUES (2387, 'Fortune Tiger win', '105.54', 0.00, 105.54, 50.19, 55.35, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:55', '2023-10-02 16:52:55');
INSERT INTO `wallet_changes` VALUES (2388, 'Fortune Tiger play', '-138.1', 0.00, 138.10, 0.00, 138.10, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:56', '2023-10-02 16:52:56');
INSERT INTO `wallet_changes` VALUES (2389, 'Fortune Tiger play', '-48.54', 0.00, 48.54, 0.00, 48.54, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:56', '2023-10-02 16:52:56');
INSERT INTO `wallet_changes` VALUES (2390, 'Fortune Tiger win', '55.22', 0.00, 55.22, 6.68, 48.54, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:57', '2023-10-02 16:52:57');
INSERT INTO `wallet_changes` VALUES (2391, 'Fortune Tiger play', '-110.22', 0.00, 110.22, 0.00, 110.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:58', '2023-10-02 16:52:58');
INSERT INTO `wallet_changes` VALUES (2392, 'Fortune Tiger win', '18.89', 0.00, 18.89, -91.33, 110.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:58', '2023-10-02 16:52:58');
INSERT INTO `wallet_changes` VALUES (2393, 'Fortune Tiger win', '75.07', 0.00, 75.07, -35.15, 110.22, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:52:59', '2023-10-02 16:52:59');
INSERT INTO `wallet_changes` VALUES (2394, 'Fortune Tiger play', '-7.28', 0.00, 7.28, 0.00, 7.28, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:53:00', '2023-10-02 16:53:00');
INSERT INTO `wallet_changes` VALUES (2395, 'Fortune Tiger play', '-57.04', 0.00, 57.04, 0.00, 57.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:53:00', '2023-10-02 16:53:00');
INSERT INTO `wallet_changes` VALUES (2396, 'Fortune Tiger win', '41.93', 0.00, 41.93, -15.11, 57.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:53:01', '2023-10-02 16:53:01');
INSERT INTO `wallet_changes` VALUES (2397, 'Fortune Tiger win', '51.21', 0.00, 51.21, -5.83, 57.04, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 16:53:02', '2023-10-02 16:53:02');
INSERT INTO `wallet_changes` VALUES (2398, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:38:24', '2023-10-02 19:38:24');
INSERT INTO `wallet_changes` VALUES (2399, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:38:25', '2023-10-02 19:38:25');
INSERT INTO `wallet_changes` VALUES (2400, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:47', '2023-10-02 19:41:47');
INSERT INTO `wallet_changes` VALUES (2401, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:48', '2023-10-02 19:41:48');
INSERT INTO `wallet_changes` VALUES (2402, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:51', '2023-10-02 19:41:51');
INSERT INTO `wallet_changes` VALUES (2403, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:52', '2023-10-02 19:41:52');
INSERT INTO `wallet_changes` VALUES (2404, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:54', '2023-10-02 19:41:54');
INSERT INTO `wallet_changes` VALUES (2405, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:55', '2023-10-02 19:41:55');
INSERT INTO `wallet_changes` VALUES (2406, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:41:59', '2023-10-02 19:41:59');
INSERT INTO `wallet_changes` VALUES (2407, 'Fortune Tiger win', '40.00', 0.00, 40.00, 15.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:00', '2023-10-02 19:42:00');
INSERT INTO `wallet_changes` VALUES (2408, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:16', '2023-10-02 19:42:16');
INSERT INTO `wallet_changes` VALUES (2409, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:17', '2023-10-02 19:42:17');
INSERT INTO `wallet_changes` VALUES (2410, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:19', '2023-10-02 19:42:19');
INSERT INTO `wallet_changes` VALUES (2411, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:20', '2023-10-02 19:42:20');
INSERT INTO `wallet_changes` VALUES (2412, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:25', '2023-10-02 19:42:25');
INSERT INTO `wallet_changes` VALUES (2413, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:26', '2023-10-02 19:42:26');
INSERT INTO `wallet_changes` VALUES (2414, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:28', '2023-10-02 19:42:28');
INSERT INTO `wallet_changes` VALUES (2415, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:29', '2023-10-02 19:42:29');
INSERT INTO `wallet_changes` VALUES (2416, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:31', '2023-10-02 19:42:31');
INSERT INTO `wallet_changes` VALUES (2417, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:32', '2023-10-02 19:42:32');
INSERT INTO `wallet_changes` VALUES (2418, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:35', '2023-10-02 19:42:35');
INSERT INTO `wallet_changes` VALUES (2419, 'Fortune Tiger win', '500.00', 0.00, 500.00, 475.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:36', '2023-10-02 19:42:36');
INSERT INTO `wallet_changes` VALUES (2420, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:46', '2023-10-02 19:42:46');
INSERT INTO `wallet_changes` VALUES (2421, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:47', '2023-10-02 19:42:47');
INSERT INTO `wallet_changes` VALUES (2422, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:50', '2023-10-02 19:42:50');
INSERT INTO `wallet_changes` VALUES (2423, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:51', '2023-10-02 19:42:51');
INSERT INTO `wallet_changes` VALUES (2424, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:53', '2023-10-02 19:42:53');
INSERT INTO `wallet_changes` VALUES (2425, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:54', '2023-10-02 19:42:54');
INSERT INTO `wallet_changes` VALUES (2426, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:56', '2023-10-02 19:42:56');
INSERT INTO `wallet_changes` VALUES (2427, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:42:57', '2023-10-02 19:42:57');
INSERT INTO `wallet_changes` VALUES (2428, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:01', '2023-10-02 19:43:01');
INSERT INTO `wallet_changes` VALUES (2429, 'Fortune Tiger win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:02', '2023-10-02 19:43:02');
INSERT INTO `wallet_changes` VALUES (2430, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:06', '2023-10-02 19:43:06');
INSERT INTO `wallet_changes` VALUES (2431, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:07', '2023-10-02 19:43:07');
INSERT INTO `wallet_changes` VALUES (2432, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:09', '2023-10-02 19:43:09');
INSERT INTO `wallet_changes` VALUES (2433, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:10', '2023-10-02 19:43:10');
INSERT INTO `wallet_changes` VALUES (2434, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:12', '2023-10-02 19:43:12');
INSERT INTO `wallet_changes` VALUES (2435, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:13', '2023-10-02 19:43:13');
INSERT INTO `wallet_changes` VALUES (2436, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:15', '2023-10-02 19:43:15');
INSERT INTO `wallet_changes` VALUES (2437, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:16', '2023-10-02 19:43:16');
INSERT INTO `wallet_changes` VALUES (2438, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:22', '2023-10-02 19:43:22');
INSERT INTO `wallet_changes` VALUES (2439, 'Fortune Tiger win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:23', '2023-10-02 19:43:23');
INSERT INTO `wallet_changes` VALUES (2440, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:30', '2023-10-02 19:43:30');
INSERT INTO `wallet_changes` VALUES (2441, 'Fortune Tiger win', '50.00', 0.00, 50.00, 25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:43:31', '2023-10-02 19:43:31');
INSERT INTO `wallet_changes` VALUES (2442, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:26', '2023-10-02 19:47:26');
INSERT INTO `wallet_changes` VALUES (2443, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:27', '2023-10-02 19:47:27');
INSERT INTO `wallet_changes` VALUES (2444, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:30', '2023-10-02 19:47:30');
INSERT INTO `wallet_changes` VALUES (2445, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:31', '2023-10-02 19:47:31');
INSERT INTO `wallet_changes` VALUES (2446, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:34', '2023-10-02 19:47:34');
INSERT INTO `wallet_changes` VALUES (2447, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:35', '2023-10-02 19:47:35');
INSERT INTO `wallet_changes` VALUES (2448, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:37', '2023-10-02 19:47:37');
INSERT INTO `wallet_changes` VALUES (2449, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:38', '2023-10-02 19:47:38');
INSERT INTO `wallet_changes` VALUES (2450, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:41', '2023-10-02 19:47:41');
INSERT INTO `wallet_changes` VALUES (2451, 'Fortune Tiger win', '25.00', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:42', '2023-10-02 19:47:42');
INSERT INTO `wallet_changes` VALUES (2452, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:46', '2023-10-02 19:47:46');
INSERT INTO `wallet_changes` VALUES (2453, 'Fortune Tiger win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:47', '2023-10-02 19:47:47');
INSERT INTO `wallet_changes` VALUES (2454, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:54', '2023-10-02 19:47:54');
INSERT INTO `wallet_changes` VALUES (2455, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:55', '2023-10-02 19:47:55');
INSERT INTO `wallet_changes` VALUES (2456, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:47:59', '2023-10-02 19:47:59');
INSERT INTO `wallet_changes` VALUES (2457, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:00', '2023-10-02 19:48:00');
INSERT INTO `wallet_changes` VALUES (2458, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:02', '2023-10-02 19:48:02');
INSERT INTO `wallet_changes` VALUES (2459, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:03', '2023-10-02 19:48:03');
INSERT INTO `wallet_changes` VALUES (2460, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:05', '2023-10-02 19:48:05');
INSERT INTO `wallet_changes` VALUES (2461, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:06', '2023-10-02 19:48:06');
INSERT INTO `wallet_changes` VALUES (2462, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:10', '2023-10-02 19:48:10');
INSERT INTO `wallet_changes` VALUES (2463, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:11', '2023-10-02 19:48:11');
INSERT INTO `wallet_changes` VALUES (2464, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:23', '2023-10-02 19:48:23');
INSERT INTO `wallet_changes` VALUES (2465, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:24', '2023-10-02 19:48:24');
INSERT INTO `wallet_changes` VALUES (2466, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:28', '2023-10-02 19:48:28');
INSERT INTO `wallet_changes` VALUES (2467, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:29', '2023-10-02 19:48:29');
INSERT INTO `wallet_changes` VALUES (2468, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:32', '2023-10-02 19:48:32');
INSERT INTO `wallet_changes` VALUES (2469, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:33', '2023-10-02 19:48:33');
INSERT INTO `wallet_changes` VALUES (2470, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:37', '2023-10-02 19:48:37');
INSERT INTO `wallet_changes` VALUES (2471, 'Fortune Tiger win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:38', '2023-10-02 19:48:38');
INSERT INTO `wallet_changes` VALUES (2472, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:42', '2023-10-02 19:48:42');
INSERT INTO `wallet_changes` VALUES (2473, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:43', '2023-10-02 19:48:43');
INSERT INTO `wallet_changes` VALUES (2474, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:46', '2023-10-02 19:48:46');
INSERT INTO `wallet_changes` VALUES (2475, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:47', '2023-10-02 19:48:47');
INSERT INTO `wallet_changes` VALUES (2476, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:51', '2023-10-02 19:48:51');
INSERT INTO `wallet_changes` VALUES (2477, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:52', '2023-10-02 19:48:52');
INSERT INTO `wallet_changes` VALUES (2478, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:48:59', '2023-10-02 19:48:59');
INSERT INTO `wallet_changes` VALUES (2479, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:49:00', '2023-10-02 19:49:00');
INSERT INTO `wallet_changes` VALUES (2480, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:49:03', '2023-10-02 19:49:03');
INSERT INTO `wallet_changes` VALUES (2481, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:49:04', '2023-10-02 19:49:04');
INSERT INTO `wallet_changes` VALUES (2482, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:49:09', '2023-10-02 19:49:09');
INSERT INTO `wallet_changes` VALUES (2483, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-02 19:49:10', '2023-10-02 19:49:10');
INSERT INTO `wallet_changes` VALUES (2484, 'Aviator play', '-10', 0.00, 10.00, 0.00, 10.00, 'Aviator', 'admin@demo.com', '2023-10-02 19:50:52', '2023-10-02 19:50:52');
INSERT INTO `wallet_changes` VALUES (2485, 'Aviator win', '17.40', 0.00, 17.40, 7.40, 10.00, 'Aviator', 'admin@demo.com', '2023-10-02 19:51:04', '2023-10-02 19:51:04');
INSERT INTO `wallet_changes` VALUES (2486, 'Mines play', '-1', 0.00, 1.00, 0.00, 1.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:00:09', '2023-10-02 20:00:09');
INSERT INTO `wallet_changes` VALUES (2487, 'Mines win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:00:13', '2023-10-02 20:00:13');
INSERT INTO `wallet_changes` VALUES (2488, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:04:25', '2023-10-02 20:04:25');
INSERT INTO `wallet_changes` VALUES (2489, 'Mines win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:04:28', '2023-10-02 20:04:28');
INSERT INTO `wallet_changes` VALUES (2490, 'Mines play', '-20', 0.00, 20.00, 0.00, 20.00, 'Mines', 'admin@demo.com', '2023-10-02 20:11:08', '2023-10-02 20:11:08');
INSERT INTO `wallet_changes` VALUES (2491, 'Mines win', '0.00', 0.00, 0.00, -20.00, 20.00, 'Mines', 'admin@demo.com', '2023-10-02 20:11:15', '2023-10-02 20:11:15');
INSERT INTO `wallet_changes` VALUES (2492, 'Mines play', '-50', 0.00, 50.00, 0.00, 50.00, 'Mines', 'admin@demo.com', '2023-10-02 20:12:59', '2023-10-02 20:12:59');
INSERT INTO `wallet_changes` VALUES (2493, 'Mines win', '0.00', 0.00, 0.00, -50.00, 50.00, 'Mines', 'admin@demo.com', '2023-10-02 20:13:04', '2023-10-02 20:13:04');
INSERT INTO `wallet_changes` VALUES (2494, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:19:31', '2023-10-02 20:19:31');
INSERT INTO `wallet_changes` VALUES (2495, 'Mines win', '11.02', 0.00, 11.02, 1.02, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:19:38', '2023-10-02 20:19:38');
INSERT INTO `wallet_changes` VALUES (2496, 'Mines play', '-10', 0.00, 10.00, 0.00, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:20:02', '2023-10-02 20:20:02');
INSERT INTO `wallet_changes` VALUES (2497, 'Mines win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Mines', 'mkt.projetocarim@gmail.com', '2023-10-02 20:20:11', '2023-10-02 20:20:11');
INSERT INTO `wallet_changes` VALUES (2498, 'Balloon play', '-5', 0.00, 5.00, 0.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:25:45', '2023-10-02 20:25:45');
INSERT INTO `wallet_changes` VALUES (2499, 'Balloon win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:26:00', '2023-10-02 20:26:00');
INSERT INTO `wallet_changes` VALUES (2500, 'Balloon play', '-5', 0.00, 5.00, 0.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:26:01', '2023-10-02 20:26:01');
INSERT INTO `wallet_changes` VALUES (2501, 'Balloon win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:26:16', '2023-10-02 20:26:16');
INSERT INTO `wallet_changes` VALUES (2502, 'Balloon play', '-5', 0.00, 5.00, 0.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:26:17', '2023-10-02 20:26:17');
INSERT INTO `wallet_changes` VALUES (2503, 'Balloon win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Balloon', 'mkt.projetocarim@gmail.com', '2023-10-02 20:26:25', '2023-10-02 20:26:25');
INSERT INTO `wallet_changes` VALUES (2504, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:28:57', '2023-10-02 20:28:57');
INSERT INTO `wallet_changes` VALUES (2505, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:28:58', '2023-10-02 20:28:58');
INSERT INTO `wallet_changes` VALUES (2506, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:29:03', '2023-10-02 20:29:03');
INSERT INTO `wallet_changes` VALUES (2507, 'Penalty Shoot Out Mobile play', '-5', 0.00, 5.00, 0.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:29:08', '2023-10-02 20:29:08');
INSERT INTO `wallet_changes` VALUES (2508, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:29:08', '2023-10-02 20:29:08');
INSERT INTO `wallet_changes` VALUES (2509, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:29:10', '2023-10-02 20:29:10');
INSERT INTO `wallet_changes` VALUES (2510, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -5.00, 5.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-02 20:29:20', '2023-10-02 20:29:20');
INSERT INTO `wallet_changes` VALUES (2511, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:30', '2023-10-02 20:58:30');
INSERT INTO `wallet_changes` VALUES (2512, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:32', '2023-10-02 20:58:32');
INSERT INTO `wallet_changes` VALUES (2513, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:41', '2023-10-02 20:58:41');
INSERT INTO `wallet_changes` VALUES (2514, 'Balloon win', '1.05', 0.00, 1.05, 0.05, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:43', '2023-10-02 20:58:43');
INSERT INTO `wallet_changes` VALUES (2515, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:44', '2023-10-02 20:58:44');
INSERT INTO `wallet_changes` VALUES (2516, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:48', '2023-10-02 20:58:48');
INSERT INTO `wallet_changes` VALUES (2517, 'Balloon win', '1.51', 0.00, 1.51, 0.51, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:51', '2023-10-02 20:58:51');
INSERT INTO `wallet_changes` VALUES (2518, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:52', '2023-10-02 20:58:52');
INSERT INTO `wallet_changes` VALUES (2519, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:58:56', '2023-10-02 20:58:56');
INSERT INTO `wallet_changes` VALUES (2520, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:00', '2023-10-02 20:59:00');
INSERT INTO `wallet_changes` VALUES (2521, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:03', '2023-10-02 20:59:03');
INSERT INTO `wallet_changes` VALUES (2522, 'Balloon win', '1.28', 0.00, 1.28, 0.28, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:05', '2023-10-02 20:59:05');
INSERT INTO `wallet_changes` VALUES (2523, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:06', '2023-10-02 20:59:06');
INSERT INTO `wallet_changes` VALUES (2524, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:09', '2023-10-02 20:59:09');
INSERT INTO `wallet_changes` VALUES (2525, 'Balloon win', '1.04', 0.00, 1.04, 0.04, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:10', '2023-10-02 20:59:10');
INSERT INTO `wallet_changes` VALUES (2526, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:10', '2023-10-02 20:59:10');
INSERT INTO `wallet_changes` VALUES (2527, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:15', '2023-10-02 20:59:15');
INSERT INTO `wallet_changes` VALUES (2528, 'Balloon win', '1.25', 0.00, 1.25, 0.25, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:17', '2023-10-02 20:59:17');
INSERT INTO `wallet_changes` VALUES (2529, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:18', '2023-10-02 20:59:18');
INSERT INTO `wallet_changes` VALUES (2530, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:23', '2023-10-02 20:59:23');
INSERT INTO `wallet_changes` VALUES (2531, 'Balloon win', '1.12', 0.00, 1.12, 0.12, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:24', '2023-10-02 20:59:24');
INSERT INTO `wallet_changes` VALUES (2532, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:25', '2023-10-02 20:59:25');
INSERT INTO `wallet_changes` VALUES (2533, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:29', '2023-10-02 20:59:29');
INSERT INTO `wallet_changes` VALUES (2534, 'Balloon win', '1.25', 0.00, 1.25, 0.25, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:31', '2023-10-02 20:59:31');
INSERT INTO `wallet_changes` VALUES (2535, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:32', '2023-10-02 20:59:32');
INSERT INTO `wallet_changes` VALUES (2536, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:35', '2023-10-02 20:59:35');
INSERT INTO `wallet_changes` VALUES (2537, 'Balloon win', '1.52', 0.00, 1.52, 0.52, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:38', '2023-10-02 20:59:38');
INSERT INTO `wallet_changes` VALUES (2538, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:39', '2023-10-02 20:59:39');
INSERT INTO `wallet_changes` VALUES (2539, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:42', '2023-10-02 20:59:42');
INSERT INTO `wallet_changes` VALUES (2540, 'Balloon win', '1.24', 0.00, 1.24, 0.24, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:44', '2023-10-02 20:59:44');
INSERT INTO `wallet_changes` VALUES (2541, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:45', '2023-10-02 20:59:45');
INSERT INTO `wallet_changes` VALUES (2542, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:47', '2023-10-02 20:59:47');
INSERT INTO `wallet_changes` VALUES (2543, 'Balloon win', '1.35', 0.00, 1.35, 0.35, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:49', '2023-10-02 20:59:49');
INSERT INTO `wallet_changes` VALUES (2544, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:50', '2023-10-02 20:59:50');
INSERT INTO `wallet_changes` VALUES (2545, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:53', '2023-10-02 20:59:53');
INSERT INTO `wallet_changes` VALUES (2546, 'Balloon win', '1.28', 0.00, 1.28, 0.28, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:55', '2023-10-02 20:59:55');
INSERT INTO `wallet_changes` VALUES (2547, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 20:59:56', '2023-10-02 20:59:56');
INSERT INTO `wallet_changes` VALUES (2548, 'Balloon play', '-1', 0.00, 1.00, 0.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 21:00:01', '2023-10-02 21:00:01');
INSERT INTO `wallet_changes` VALUES (2549, 'Balloon win', '1.31', 0.00, 1.31, 0.31, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 21:00:03', '2023-10-02 21:00:03');
INSERT INTO `wallet_changes` VALUES (2550, 'Balloon win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Balloon', 'fernandalovedemi@gmail.com', '2023-10-02 21:00:04', '2023-10-02 21:00:04');
INSERT INTO `wallet_changes` VALUES (2551, 'JetX play', '-1', 0.00, 1.00, 0.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:01:33', '2023-10-02 21:01:33');
INSERT INTO `wallet_changes` VALUES (2552, 'JetX win', '1.32', 0.00, 1.32, 0.32, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:01:41', '2023-10-02 21:01:41');
INSERT INTO `wallet_changes` VALUES (2553, 'JetX win', '0.00', 0.00, 0.00, -1.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:01:56', '2023-10-02 21:01:56');
INSERT INTO `wallet_changes` VALUES (2554, 'JetX play', '-1', 0.00, 1.00, 0.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:10', '2023-10-02 21:02:10');
INSERT INTO `wallet_changes` VALUES (2555, 'JetX win', '0.00', 0.00, 0.00, -1.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:19', '2023-10-02 21:02:19');
INSERT INTO `wallet_changes` VALUES (2556, 'JetX play', '-1', 0.00, 1.00, 0.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:22', '2023-10-02 21:02:22');
INSERT INTO `wallet_changes` VALUES (2557, 'JetX win', '1.07', 0.00, 1.07, 0.07, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:27', '2023-10-02 21:02:27');
INSERT INTO `wallet_changes` VALUES (2558, 'JetX win', '0.00', 0.00, 0.00, -1.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:39', '2023-10-02 21:02:39');
INSERT INTO `wallet_changes` VALUES (2559, 'JetX play', '-1', 0.00, 1.00, 0.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:40', '2023-10-02 21:02:40');
INSERT INTO `wallet_changes` VALUES (2560, 'JetX win', '0.00', 0.00, 0.00, -1.00, 1.00, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:02:48', '2023-10-02 21:02:48');
INSERT INTO `wallet_changes` VALUES (2561, 'JetX play', '-1.8', 0.00, 1.80, 0.00, 1.80, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:03:21', '2023-10-02 21:03:21');
INSERT INTO `wallet_changes` VALUES (2562, 'JetX win', '0.00', 0.00, 0.00, -1.80, 1.80, 'JetX', 'fernandalovedemi@gmail.com', '2023-10-02 21:03:29', '2023-10-02 21:03:29');
INSERT INTO `wallet_changes` VALUES (2563, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'admin@demo.com', '2023-10-03 10:15:38', '2023-10-03 10:15:38');
INSERT INTO `wallet_changes` VALUES (2564, 'JetX play', '-0.2', 0.00, 0.20, 0.00, 0.20, 'JetX', 'admin@demo.com', '2023-10-03 10:15:39', '2023-10-03 10:15:39');
INSERT INTO `wallet_changes` VALUES (2565, 'JetX win', '0.00', 0.00, 0.00, -0.20, 0.20, 'JetX', 'admin@demo.com', '2023-10-03 10:16:00', '2023-10-03 10:16:00');
INSERT INTO `wallet_changes` VALUES (2566, 'Fortune Mouse play', '-0.25', 0.00, 0.25, 0.00, 0.25, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-10-04 09:40:54', '2023-10-04 09:40:54');
INSERT INTO `wallet_changes` VALUES (2567, 'Fortune Mouse win', '0.00', 0.00, 0.00, -0.25, 0.25, 'Fortune Mouse', 'davi.automation2023@gmail.com', '2023-10-04 09:40:55', '2023-10-04 09:40:55');
INSERT INTO `wallet_changes` VALUES (2568, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 10:19:58', '2023-10-04 10:19:58');
INSERT INTO `wallet_changes` VALUES (2569, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 10:19:59', '2023-10-04 10:19:59');
INSERT INTO `wallet_changes` VALUES (2570, 'Fortune Tiger play', '-1', 0.00, 1.00, 0.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 17:55:17', '2023-10-04 17:55:17');
INSERT INTO `wallet_changes` VALUES (2571, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 17:55:18', '2023-10-04 17:55:18');
INSERT INTO `wallet_changes` VALUES (2572, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 17:55:27', '2023-10-04 17:55:27');
INSERT INTO `wallet_changes` VALUES (2573, 'Fortune Tiger win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 17:55:32', '2023-10-04 17:55:32');
INSERT INTO `wallet_changes` VALUES (2574, 'Fortune Tiger win', '30.00', 0.00, 30.00, 29.00, 1.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 18:40:02', '2023-10-04 18:40:02');
INSERT INTO `wallet_changes` VALUES (2575, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 18:40:26', '2023-10-04 18:40:26');
INSERT INTO `wallet_changes` VALUES (2576, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 18:40:27', '2023-10-04 18:40:27');
INSERT INTO `wallet_changes` VALUES (2577, 'Penalty Shoot Out Mobile play', '-1', 0.00, 1.00, 0.00, 1.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-04 19:11:43', '2023-10-04 19:11:43');
INSERT INTO `wallet_changes` VALUES (2578, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-04 19:11:44', '2023-10-04 19:11:44');
INSERT INTO `wallet_changes` VALUES (2579, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-04 19:11:46', '2023-10-04 19:11:46');
INSERT INTO `wallet_changes` VALUES (2580, 'Penalty Shoot Out Mobile win', '0.00', 0.00, 0.00, -1.00, 1.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-04 19:11:49', '2023-10-04 19:11:49');
INSERT INTO `wallet_changes` VALUES (2581, 'Penalty Shoot Out Mobile win', '3.84', 0.00, 3.84, 2.84, 1.00, 'Penalty Shoot Out Mobile', 'admin@demo.com', '2023-10-04 19:11:53', '2023-10-04 19:11:53');
INSERT INTO `wallet_changes` VALUES (2582, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 22:51:33', '2023-10-04 22:51:33');
INSERT INTO `wallet_changes` VALUES (2583, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-04 22:51:34', '2023-10-04 22:51:34');
INSERT INTO `wallet_changes` VALUES (2584, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:28', '2023-10-05 09:56:28');
INSERT INTO `wallet_changes` VALUES (2585, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:29', '2023-10-05 09:56:29');
INSERT INTO `wallet_changes` VALUES (2586, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:32', '2023-10-05 09:56:32');
INSERT INTO `wallet_changes` VALUES (2587, 'Fortune Tiger win', '0.00', 0.00, 0.00, -10.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:33', '2023-10-05 09:56:33');
INSERT INTO `wallet_changes` VALUES (2588, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:35', '2023-10-05 09:56:35');
INSERT INTO `wallet_changes` VALUES (2589, 'Fortune Tiger win', '10.00', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:36', '2023-10-05 09:56:36');
INSERT INTO `wallet_changes` VALUES (2590, 'Fortune Tiger play', '-10', 0.00, 10.00, 0.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:41', '2023-10-05 09:56:41');
INSERT INTO `wallet_changes` VALUES (2591, 'Fortune Tiger win', '12.00', 0.00, 12.00, 2.00, 10.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:42', '2023-10-05 09:56:42');
INSERT INTO `wallet_changes` VALUES (2592, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:47', '2023-10-05 09:56:47');
INSERT INTO `wallet_changes` VALUES (2593, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:48', '2023-10-05 09:56:48');
INSERT INTO `wallet_changes` VALUES (2594, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:52', '2023-10-05 09:56:52');
INSERT INTO `wallet_changes` VALUES (2595, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:53', '2023-10-05 09:56:53');
INSERT INTO `wallet_changes` VALUES (2596, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:55', '2023-10-05 09:56:55');
INSERT INTO `wallet_changes` VALUES (2597, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:56', '2023-10-05 09:56:56');
INSERT INTO `wallet_changes` VALUES (2598, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:56:59', '2023-10-05 09:56:59');
INSERT INTO `wallet_changes` VALUES (2599, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:00', '2023-10-05 09:57:00');
INSERT INTO `wallet_changes` VALUES (2600, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:03', '2023-10-05 09:57:03');
INSERT INTO `wallet_changes` VALUES (2601, 'Fortune Tiger win', '0.00', 0.00, 0.00, -25.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:04', '2023-10-05 09:57:04');
INSERT INTO `wallet_changes` VALUES (2602, 'Fortune Tiger play', '-25', 0.00, 25.00, 0.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:12', '2023-10-05 09:57:12');
INSERT INTO `wallet_changes` VALUES (2603, 'Fortune Tiger win', '15.00', 0.00, 15.00, -10.00, 25.00, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:13', '2023-10-05 09:57:13');
INSERT INTO `wallet_changes` VALUES (2604, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:18', '2023-10-05 09:57:18');
INSERT INTO `wallet_changes` VALUES (2605, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:19', '2023-10-05 09:57:19');
INSERT INTO `wallet_changes` VALUES (2606, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:22', '2023-10-05 09:57:22');
INSERT INTO `wallet_changes` VALUES (2607, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:23', '2023-10-05 09:57:23');
INSERT INTO `wallet_changes` VALUES (2608, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:25', '2023-10-05 09:57:25');
INSERT INTO `wallet_changes` VALUES (2609, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:26', '2023-10-05 09:57:26');
INSERT INTO `wallet_changes` VALUES (2610, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:28', '2023-10-05 09:57:28');
INSERT INTO `wallet_changes` VALUES (2611, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 09:57:29', '2023-10-05 09:57:29');
INSERT INTO `wallet_changes` VALUES (2612, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 13:45:26', '2023-10-05 13:45:26');
INSERT INTO `wallet_changes` VALUES (2613, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 13:45:27', '2023-10-05 13:45:27');
INSERT INTO `wallet_changes` VALUES (2614, 'Fortune Tiger play', '-12.5', 0.00, 12.50, 0.00, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 13:45:35', '2023-10-05 13:45:35');
INSERT INTO `wallet_changes` VALUES (2615, 'Fortune Tiger win', '0.00', 0.00, 0.00, -12.50, 12.50, 'Fortune Tiger', 'admin@demo.com', '2023-10-05 13:45:36', '2023-10-05 13:45:36');

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `balance_bonus` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `balance_bonus_rollover` decimal(20, 2) NULL DEFAULT 0.00,
  `anti_bot` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `total_bet` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `total_won` decimal(20, 2) NULL DEFAULT 0.00,
  `total_lose` decimal(20, 2) NULL DEFAULT 0.00,
  `last_won` decimal(20, 2) NULL DEFAULT 0.00,
  `last_lose` decimal(20, 2) NULL DEFAULT 0.00,
  `hide_balance` tinyint(4) NULL DEFAULT 0,
  `refer_rewards` decimal(20, 2) NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wallets_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of wallets
-- ----------------------------
INSERT INTO `wallets` VALUES (1, 1, 3954.00, 5.55, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-24 17:31:42', '2023-12-20 19:44:42');
INSERT INTO `wallets` VALUES (5, 9, 0.00, 999.70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-26 20:52:04', '2023-11-23 10:24:40');
INSERT INTO `wallets` VALUES (6, 10, 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-26 20:53:41', '2023-10-25 12:32:18');
INSERT INTO `wallets` VALUES (7, 11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-26 20:54:45', '2023-09-26 20:54:45');
INSERT INTO `wallets` VALUES (8, 12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-26 22:43:11', '2023-09-26 22:43:11');
INSERT INTO `wallets` VALUES (60, 66, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 09:12:47', '2023-10-22 09:12:47');
INSERT INTO `wallets` VALUES (10, 14, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-29 20:34:18', '2023-10-10 23:45:44');
INSERT INTO `wallets` VALUES (11, 15, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-29 21:01:05', '2023-09-30 04:27:42');
INSERT INTO `wallets` VALUES (21, 27, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-12 22:20:35', '2023-10-12 22:20:35');
INSERT INTO `wallets` VALUES (13, 17, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-09-30 05:25:20', '2023-09-30 05:50:38');
INSERT INTO `wallets` VALUES (14, 18, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-01 15:30:53', '2023-10-01 15:31:17');
INSERT INTO `wallets` VALUES (15, 19, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-01 19:20:31', '2023-10-14 17:42:47');
INSERT INTO `wallets` VALUES (16, 20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-02 11:51:51', '2023-10-02 20:26:25');
INSERT INTO `wallets` VALUES (17, 21, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-02 12:36:32', '2023-10-02 12:41:42');
INSERT INTO `wallets` VALUES (18, 22, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-02 17:57:51', '2023-10-02 17:57:51');
INSERT INTO `wallets` VALUES (19, 23, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-02 20:55:48', '2023-10-02 21:03:29');
INSERT INTO `wallets` VALUES (20, 24, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-04 19:05:54', '2023-10-04 19:05:54');
INSERT INTO `wallets` VALUES (22, 28, 110.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, NULL, '2023-10-26 03:13:39');
INSERT INTO `wallets` VALUES (23, 29, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-13 19:02:01', '2023-10-22 15:14:00');
INSERT INTO `wallets` VALUES (24, 30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-13 19:03:50', '2023-10-26 21:25:26');
INSERT INTO `wallets` VALUES (25, 31, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-14 15:11:32', '2023-10-14 15:11:32');
INSERT INTO `wallets` VALUES (26, 32, 0.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-14 16:50:00', '2023-10-14 17:00:13');
INSERT INTO `wallets` VALUES (27, 33, 4.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-15 03:55:57', '2023-10-15 04:32:57');
INSERT INTO `wallets` VALUES (28, 34, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 20.00, '2023-10-16 16:24:24', '2023-10-24 13:54:52');
INSERT INTO `wallets` VALUES (29, 35, 0.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-16 17:32:55', '2023-10-22 09:29:00');
INSERT INTO `wallets` VALUES (30, 36, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-17 15:50:12', '2023-10-25 12:42:30');
INSERT INTO `wallets` VALUES (31, 37, 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-17 19:34:44', '2023-10-17 20:35:14');
INSERT INTO `wallets` VALUES (32, 38, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 08:05:55', '2023-10-19 08:39:47');
INSERT INTO `wallets` VALUES (33, 39, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 08:52:01', '2023-10-19 08:52:01');
INSERT INTO `wallets` VALUES (34, 40, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 08:59:05', '2023-10-19 08:59:05');
INSERT INTO `wallets` VALUES (35, 41, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 11:00:54', '2023-10-19 11:09:49');
INSERT INTO `wallets` VALUES (36, 42, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 11:23:01', '2023-10-19 11:34:41');
INSERT INTO `wallets` VALUES (37, 43, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 11:48:11', '2023-10-20 05:18:46');
INSERT INTO `wallets` VALUES (38, 44, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 12:29:59', '2023-10-19 12:29:59');
INSERT INTO `wallets` VALUES (39, 45, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 13:06:14', '2023-10-19 13:06:14');
INSERT INTO `wallets` VALUES (40, 46, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 13:09:52', '2023-10-19 13:09:52');
INSERT INTO `wallets` VALUES (41, 47, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 16:21:47', '2023-10-20 11:40:50');
INSERT INTO `wallets` VALUES (42, 48, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 18:07:27', '2023-10-19 18:36:23');
INSERT INTO `wallets` VALUES (43, 49, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 18:55:21', '2023-10-19 19:22:41');
INSERT INTO `wallets` VALUES (44, 50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 19:11:39', '2023-10-19 19:32:47');
INSERT INTO `wallets` VALUES (45, 51, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 19:24:53', '2023-10-19 19:24:53');
INSERT INTO `wallets` VALUES (46, 52, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 19:25:23', '2023-10-19 19:25:23');
INSERT INTO `wallets` VALUES (47, 53, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 19:31:15', '2023-10-19 19:31:15');
INSERT INTO `wallets` VALUES (48, 54, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 20:07:52', '2023-10-19 20:23:09');
INSERT INTO `wallets` VALUES (49, 55, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-19 23:19:04', '2023-10-19 23:19:04');
INSERT INTO `wallets` VALUES (50, 56, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-20 03:51:10', '2023-10-20 04:03:11');
INSERT INTO `wallets` VALUES (51, 57, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-20 11:25:42', '2023-10-20 11:25:42');
INSERT INTO `wallets` VALUES (52, 58, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-20 18:04:31', '2023-10-20 18:04:31');
INSERT INTO `wallets` VALUES (53, 59, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 10:11:33', '2023-10-21 10:54:05');
INSERT INTO `wallets` VALUES (54, 60, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 10:21:50', '2023-10-21 10:34:15');
INSERT INTO `wallets` VALUES (55, 61, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 10:28:51', '2023-10-22 09:31:07');
INSERT INTO `wallets` VALUES (56, 62, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 11:02:37', '2023-10-21 11:02:37');
INSERT INTO `wallets` VALUES (57, 63, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 19:16:05', '2023-10-23 21:12:09');
INSERT INTO `wallets` VALUES (58, 64, 464.29, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-21 22:51:57', '2023-11-17 12:35:03');
INSERT INTO `wallets` VALUES (59, 65, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 05:09:40', '2023-10-22 05:09:40');
INSERT INTO `wallets` VALUES (61, 67, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 09:19:54', '2023-10-22 18:17:52');
INSERT INTO `wallets` VALUES (62, 68, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 09:49:13', '2023-10-22 15:09:28');
INSERT INTO `wallets` VALUES (63, 69, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 09:55:58', '2023-10-23 04:34:19');
INSERT INTO `wallets` VALUES (64, 70, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 11:42:17', '2023-10-22 11:42:44');
INSERT INTO `wallets` VALUES (65, 71, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 11:48:43', '2023-10-22 11:48:43');
INSERT INTO `wallets` VALUES (66, 72, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 11:49:26', '2023-10-22 12:27:24');
INSERT INTO `wallets` VALUES (67, 73, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:04:14', '2023-10-22 12:23:01');
INSERT INTO `wallets` VALUES (68, 74, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:12:32', '2023-10-22 12:42:17');
INSERT INTO `wallets` VALUES (69, 75, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:14:22', '2023-10-22 12:14:22');
INSERT INTO `wallets` VALUES (70, 76, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:15:21', '2023-10-22 12:30:57');
INSERT INTO `wallets` VALUES (71, 77, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:27:31', '2023-10-22 15:55:44');
INSERT INTO `wallets` VALUES (72, 78, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 12:31:25', '2023-10-22 12:31:25');
INSERT INTO `wallets` VALUES (73, 79, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 14:19:33', '2023-10-22 14:33:33');
INSERT INTO `wallets` VALUES (74, 80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 15:11:48', '2023-10-22 15:25:21');
INSERT INTO `wallets` VALUES (75, 81, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 15:18:01', '2023-10-22 15:18:01');
INSERT INTO `wallets` VALUES (76, 82, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 16:19:54', '2023-10-22 16:19:54');
INSERT INTO `wallets` VALUES (77, 83, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 17:47:01', '2023-10-22 17:55:54');
INSERT INTO `wallets` VALUES (78, 84, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 20:47:34', '2023-10-22 20:47:34');
INSERT INTO `wallets` VALUES (79, 85, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-22 20:54:44', '2023-10-22 20:54:44');
INSERT INTO `wallets` VALUES (80, 86, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 04:29:59', '2023-10-23 04:44:25');
INSERT INTO `wallets` VALUES (81, 87, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 05:26:55', '2023-10-23 05:26:55');
INSERT INTO `wallets` VALUES (82, 88, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0.00, '2023-10-23 15:34:53', '2023-10-24 20:32:21');
INSERT INTO `wallets` VALUES (83, 89, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 16:35:19', '2023-10-23 16:42:38');
INSERT INTO `wallets` VALUES (84, 90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 16:59:24', '2023-10-23 16:59:24');
INSERT INTO `wallets` VALUES (85, 91, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 17:59:36', '2023-10-23 17:59:36');
INSERT INTO `wallets` VALUES (86, 92, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 18:49:38', '2023-10-23 19:12:08');
INSERT INTO `wallets` VALUES (87, 93, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 18:50:10', '2023-10-23 19:02:10');
INSERT INTO `wallets` VALUES (89, 95, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-23 20:00:41', '2023-10-23 20:00:41');
INSERT INTO `wallets` VALUES (90, 96, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 08:56:19', '2023-10-24 08:56:19');
INSERT INTO `wallets` VALUES (91, 97, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 09:08:11', '2023-10-26 15:32:09');
INSERT INTO `wallets` VALUES (92, 98, 0.00, 15.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 25.40, '2023-10-24 09:14:12', '2023-10-26 16:14:10');
INSERT INTO `wallets` VALUES (93, 99, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 09:15:02', '2023-10-24 09:15:02');
INSERT INTO `wallets` VALUES (94, 100, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 11:58:24', '2023-10-24 11:58:24');
INSERT INTO `wallets` VALUES (95, 101, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 15:30:27', '2023-10-24 15:30:27');
INSERT INTO `wallets` VALUES (96, 102, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 17:18:01', '2023-10-24 17:18:01');
INSERT INTO `wallets` VALUES (97, 103, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 17:20:42', '2023-10-24 18:12:00');
INSERT INTO `wallets` VALUES (98, 104, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 17:43:44', '2023-10-24 17:43:44');
INSERT INTO `wallets` VALUES (99, 105, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 17:55:23', '2023-10-24 18:02:25');
INSERT INTO `wallets` VALUES (100, 106, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-24 18:06:04', '2023-10-24 18:06:04');
INSERT INTO `wallets` VALUES (101, 107, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 00:28:32', '2023-10-25 00:28:32');
INSERT INTO `wallets` VALUES (102, 108, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 02:53:24', '2023-10-25 02:53:24');
INSERT INTO `wallets` VALUES (103, 109, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 09:54:47', '2023-10-25 09:54:47');
INSERT INTO `wallets` VALUES (104, 110, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 10:08:05', '2023-10-25 10:08:05');
INSERT INTO `wallets` VALUES (105, 111, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 10:38:23', '2023-10-25 10:38:23');
INSERT INTO `wallets` VALUES (106, 112, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 15:59:43', '2023-10-25 16:04:53');
INSERT INTO `wallets` VALUES (107, 113, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-25 16:14:58', '2023-10-25 16:14:58');
INSERT INTO `wallets` VALUES (108, 114, 0.00, 14.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-26 10:19:55', '2023-10-26 10:35:22');
INSERT INTO `wallets` VALUES (109, 115, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-26 15:01:22', '2023-10-26 15:01:22');
INSERT INTO `wallets` VALUES (110, 116, 0.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-26 15:48:19', '2023-10-26 16:05:21');
INSERT INTO `wallets` VALUES (111, 117, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-26 16:05:13', '2023-10-26 16:14:10');
INSERT INTO `wallets` VALUES (112, 118, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-26 17:59:33', '2023-10-26 17:59:33');
INSERT INTO `wallets` VALUES (113, 119, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-27 05:00:02', '2023-10-27 05:00:02');
INSERT INTO `wallets` VALUES (114, 120, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-27 10:56:22', '2023-10-27 10:56:22');
INSERT INTO `wallets` VALUES (115, 121, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-27 11:02:58', '2023-10-27 11:02:58');
INSERT INTO `wallets` VALUES (116, 122, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-27 13:50:17', '2023-10-27 13:50:17');
INSERT INTO `wallets` VALUES (124, 130, 1000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-11-23 03:09:29', '2023-11-23 11:35:34');
INSERT INTO `wallets` VALUES (123, 129, 999.90, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-11-23 02:55:00', '2023-11-23 10:20:52');
INSERT INTO `wallets` VALUES (119, 125, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2023-10-27 16:52:51', '2023-10-27 16:52:51');

-- ----------------------------
-- Table structure for withdrawals
-- ----------------------------
DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE `withdrawals`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20, 2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `chave_pix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo_chave` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `withdrawals_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of withdrawals
-- ----------------------------
INSERT INTO `withdrawals` VALUES (1, 1, 50.00, 'pix', NULL, 0, '01742366322', 'document', '017.423.663-22', '2023-12-20 19:44:35', '2023-12-20 19:44:35');

SET FOREIGN_KEY_CHECKS = 1;
