/*
Navicat MySQL Data Transfer

Source Server         : TWEBDEVANGPHP
Source Server Version : 50723
Source Host           : 192.168.99.100:3306
Source Database       : lng_hands_on_full_stack

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-05 21:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bike_garage
-- ----------------------------
DROP TABLE IF EXISTS `bike_garage`;
CREATE TABLE `bike_garage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bike_id` int(11) NOT NULL,
  `garage_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bike_garage
-- ----------------------------

-- ----------------------------
-- Table structure for bikes
-- ----------------------------
DROP TABLE IF EXISTS `bikes`;
CREATE TABLE `bikes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `make` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mods` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bikes
-- ----------------------------
INSERT INTO `bikes` VALUES ('1', 'Harley Davidson', 'XL1200 Nightster', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia     doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2018-11-06 02:24:08', '2018-11-06 02:24:08');
INSERT INTO `bikes` VALUES ('2', 'Harley Davidson', 'Blackline', '2008', 'Nobis vero sint non eius. Laboriosam sed odit hic quia     doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2018-11-06 02:24:08', '2018-11-06 02:24:08');
INSERT INTO `bikes` VALUES ('3', 'Harley Davidson', 'Dyna Switchback', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia     doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2018-11-06 02:24:08', '2018-11-06 02:24:08');
INSERT INTO `bikes` VALUES ('4', 'Harley Davidson', 'Dyna Super Glide', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia     doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2018-11-06 02:24:08', '2018-11-06 02:24:08');
INSERT INTO `bikes` VALUES ('5', 'Harley Davidson', 'Dyna Wild Glide', '2005', 'Nobis vero sint non eius. Laboriosam sed odit hic quia     doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2018-11-06 02:24:08', '2018-11-06 02:24:08');

-- ----------------------------
-- Table structure for builders
-- ----------------------------
DROP TABLE IF EXISTS `builders`;
CREATE TABLE `builders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of builders
-- ----------------------------

-- ----------------------------
-- Table structure for garages
-- ----------------------------
DROP TABLE IF EXISTS `garages`;
CREATE TABLE `garages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of garages
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bike_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of items
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_11_05_222440_create_bikes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_11_06_003909_create_builders_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_11_06_004115_create_items_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_11_06_004513_create_garages_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_11_06_005840_create_bike_garage_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_11_06_010437_create_ratings_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `bike_id` int(10) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Johnny Cash', 'johnny@cash.com', null, '$2y$10$ezprJwhdQRgMb.wsnFHK2.E.z8ecw8QJbwFjca2MFFAEuJav0sFiK', null, null, null);
INSERT INTO `users` VALUES ('2', 'Frank Sinatra', 'frank@sinatra.com', null, '$2y$10$40GvkVABFqKTWrOUyAqV..uycl/Jb0/UPrqAtBqaz4qnHFIiQqM.u', null, null, null);
INSERT INTO `users` VALUES ('3', 'Valto Silva', 'wshiruba@gmail.com', null, '$2y$10$beyci9kfJxah5U4WwD1mcu.AV7GE6mddr6abFiEarX2vbN/KPpuv6', null, null, null);
