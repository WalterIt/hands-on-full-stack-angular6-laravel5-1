/*
Navicat MySQL Data Transfer

Source Server         : TWEBDEVANGPHP
Source Server Version : 50723
Source Host           : 192.168.99.100:3306
Source Database       : lng_hands_on_full_stack

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-07 13:16:13
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bike_garage
-- ----------------------------
INSERT INTO `bike_garage` VALUES ('1', '1', '2', null, null);
INSERT INTO `bike_garage` VALUES ('2', '2', '2', null, null);

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
  `user_id` int(10) unsigned NOT NULL,
  `builder_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bikes
-- ----------------------------
INSERT INTO `bikes` VALUES ('1', 'Harley Davidson', 'XL1200 Nightster', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2', '1', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `bikes` VALUES ('2', 'Harley Davidson', 'Blackline', '2008', 'Nobis vero sint non eius. Laboriosam sed odit hic quia doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '1', '2', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `bikes` VALUES ('3', 'Harley Davidson', 'Dyna Switchback', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '2', '3', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `bikes` VALUES ('4', 'Harley Davidson', 'Dyna Super Glide', '2009', 'Nobis vero sint non eius. Laboriosam sed odit hic quia doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '4', '3', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `bikes` VALUES ('5', 'Harley Davidson', 'Dyna Wild Glide', '2005', 'Nobis vero sint non eius. Laboriosam sed odit hic quia doloribus. Numquam laboriosam numquam quas quis.', 'https://placeimg.com/640/480/nature', '5', '1', '2018-11-06 04:58:55', '2018-11-06 04:58:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of builders
-- ----------------------------
INSERT INTO `builders` VALUES ('1', 'Diamond Atelier', 'Diamond Atelier was founded by two fellow riders who grew tired of the same played-out custom bike look and feel they and their friends had grown accustomed to witnessing.', 'Munich, Germany', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `builders` VALUES ('2', 'Deus Ex Machina\'s', 'Established in Australia back in 2006. And what started on the East Coast of Australia has spread across the world, building an empire of cafe racers.', 'Sydney, Australia', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `builders` VALUES ('3', 'Rough Crafts', 'A true testament to how far the custom bike world has come since the introduction of motorcycles in the early 20th century, Taiwan-based Rough Crafts is a design powerhouse.', 'Taiwan', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `builders` VALUES ('4', 'Roldand Sands', 'Is an American motorcycle racer and designer of custom high-performance motorcycles.', 'California, USA', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `builders` VALUES ('5', 'Chopper Dave', 'An artist, a biker, a builder and an innovator among other things, but what it comes down to is David “ChopperDave” Freston is a motorcycle builder and fabricator that is passionate about motorcycles', 'California, USA', '2018-11-06 04:58:55', '2018-11-06 04:58:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of garages
-- ----------------------------
INSERT INTO `garages` VALUES ('1', 'Martin Smith', '8', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `garages` VALUES ('2', 'Collin James', '9', '2018-11-06 04:58:55', '2018-11-06 04:58:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'Handlebars', 'Apes Hanger 16 ', 'TC Bros', '2', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `items` VALUES ('2', 'Seat', 'Challenger', 'Biltwell Inc', '3', '2018-11-06 04:58:55', '2018-11-06 04:58:55');
INSERT INTO `items` VALUES ('3', 'Exhaust', 'Side Shorts', 'Vance and Hines', '3', '2018-11-06 04:58:55', '2018-11-06 04:58:55');

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
INSERT INTO `migrations` VALUES ('3', '2018_04_08_141302_create_bikes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_04_15_145832_create_builders_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_04_15_150139_create_items_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_04_15_150327_create_garages_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_04_18_011906_create_bike_garage_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_04_18_113934_create_ratings_table', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO `ratings` VALUES ('1', '1', '3', '3', null, null);
INSERT INTO `ratings` VALUES ('2', '2', '1', '3', null, null);
INSERT INTO `ratings` VALUES ('3', '6', '2', '3', '2018-11-07 16:36:09', '2018-11-07 16:36:09');
INSERT INTO `ratings` VALUES ('4', '6', '3', '2', '2018-11-07 16:38:42', '2018-11-07 16:38:42');
INSERT INTO `ratings` VALUES ('5', '2', '2', '3', '2018-11-07 16:44:42', '2018-11-07 16:44:42');
INSERT INTO `ratings` VALUES ('6', '1', '2', '2', '2018-11-07 17:07:43', '2018-11-07 17:07:43');
INSERT INTO `ratings` VALUES ('7', '1', '1', '1', '2018-11-07 17:19:33', '2018-11-07 17:19:33');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Johnny Cash', 'johnny@cash.com', '$2y$10$QfL.T8Kx7VMprzuunQnsMecqWpoBQHzQFNeD7J9Q/1GwDSKpNaEkK', null, null, null);
INSERT INTO `users` VALUES ('2', 'Frank Sinatra', 'frank@sinatra.com', '$2y$10$CkFqBzhf4XnBUZvGCJ5EQOA8YWGgftCuzy/h6Z7izLJMdZeFYFdcy', null, null, null);
INSERT INTO `users` VALUES ('6', 'Valto Silva', 'wshiruba1@gmail.com', '$2y$10$XF1ZJkuJMBrsbvEq3DiE1eUSV4wKlGUmi1WFXTMBYd4lNjGRpcL.K', null, '2018-11-07 16:35:32', '2018-11-07 16:35:32');
