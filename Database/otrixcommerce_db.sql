-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2023 at 01:48 PM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otrixcommerce_db_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Application Home Page Slider', 1, '2022-01-08 10:16:15', '2022-01-08 04:46:15', NULL),
(2, '234', 1, '2022-04-12 12:54:14', '2022-04-12 07:24:14', '2022-04-12 07:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE IF NOT EXISTS `banner_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '50% off', '435', '16472862101.jpg', 1, '2022-03-14 19:30:10', '2022-03-14 18:30:10', NULL),
(2, 1, NULL, '10% OFF', '432', '16472862102.jpg', 2, '2022-03-14 19:30:10', '2022-03-14 18:30:10', NULL),
(3, 1, NULL, 'Banner', '44', '16472862103.jpg', 3, '2022-03-14 19:30:10', '2022-03-14 18:30:10', NULL),
(4, 1, NULL, 'Banner', '3', '16472862104.jpg', 4, '2022-03-14 19:30:10', '2022-03-14 18:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cancel_order`
--

DROP TABLE IF EXISTS `cancel_order`;
CREATE TABLE IF NOT EXISTS `cancel_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancel_order`
--

INSERT INTO `cancel_order` (`id`, `order_id`, `reason`) VALUES
(1, 53, 'reason'),
(2, 52, 'reason'),
(3, 60, 'A'),
(4, 59, 'Aa');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option` text,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `option`, `quantity`, `date_added`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 8, '{\"optionColorSelected\":0,\"optionSizeSelected\":\"58\",\"optionSelectSelected\":0}', 3, '2022-06-05 06:27:00', '2022-06-05 06:27:11', NULL, NULL),
(5, 3, 13, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-06-05 06:28:19', '2022-06-05 06:28:19', NULL, NULL),
(7, 5, 7, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 2, '2022-06-09 11:53:48', '2022-06-09 11:53:48', NULL, NULL),
(8, 5, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 2, '2022-06-09 11:54:01', '2022-06-09 11:54:01', NULL, NULL),
(10, 11, 3, '{\"optionColorSelected\":0,\"optionSizeSelected\":\"65\",\"optionSelectSelected\":0}', 2, '2022-06-21 04:50:10', '2022-06-21 04:50:17', NULL, NULL),
(11, 11, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-06-21 04:50:29', '2022-06-21 04:50:29', NULL, NULL),
(16, 17, 3, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 2, '2022-07-07 06:33:44', '2022-07-07 06:34:32', NULL, NULL),
(24, 19, 3, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-07-15 23:11:05', '2022-07-15 23:11:05', NULL, NULL),
(25, 2, 1, '{\"optionColorSelected\":\"6\",\"optionSizeSelected\":\"3\",\"optionSelectSelected\":\"0\"}', 2, '2022-07-17 09:29:05', '2022-07-17 09:29:24', NULL, NULL),
(30, 9, 10, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-07-19 05:33:15', '2022-07-19 05:33:15', NULL, NULL),
(34, 27, 3, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 2, '2022-07-29 20:25:15', '2022-07-29 20:25:31', NULL, NULL),
(35, 27, 13, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-07-29 20:29:42', '2022-07-29 20:29:42', NULL, NULL),
(36, 27, 12, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-07-29 20:30:45', '2022-07-29 20:30:45', NULL, NULL),
(37, 27, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-07-29 20:31:40', '2022-07-29 20:31:40', NULL, NULL),
(45, 33, 8, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-08-31 06:14:44', '2022-08-31 06:14:44', NULL, NULL),
(46, 33, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-08-31 06:14:58', '2022-08-31 06:14:58', NULL, NULL),
(47, 33, 6, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-08-31 06:15:05', '2022-08-31 06:15:05', NULL, NULL),
(48, 33, 4, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 4, '2022-08-31 06:15:10', '2022-09-02 08:24:26', NULL, NULL),
(49, 33, 7, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-08-31 06:15:14', '2022-08-31 06:15:14', NULL, NULL),
(55, 31, 17, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 10, '2022-09-04 11:23:23', '2022-09-04 11:23:23', NULL, NULL),
(78, 35, 13, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-09-08 17:54:48', '2022-09-08 17:54:48', NULL, NULL),
(83, 30, 9, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-09-14 10:22:18', '2022-09-14 10:22:18', NULL, NULL),
(91, 34, 8, NULL, 3, '2022-09-15 11:11:41', '2022-09-15 11:13:06', NULL, NULL),
(100, 41, 8, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 6, '2022-09-25 02:04:49', '2022-09-25 02:04:58', NULL, NULL),
(106, 63, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-05 11:00:50', '2022-10-05 11:00:50', NULL, NULL),
(108, 67, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-10 11:48:26', '2022-10-10 11:48:26', NULL, NULL),
(109, 67, 7, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-10 11:48:35', '2022-10-10 11:48:35', NULL, NULL),
(110, 68, 6, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-12 06:10:11', '2022-10-12 06:10:11', NULL, NULL),
(111, 68, 9, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-12 06:10:42', '2022-10-12 06:10:42', NULL, NULL),
(112, 70, 9, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-10-14 07:40:41', '2022-10-14 07:40:41', NULL, NULL),
(124, 31, 6, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 2, '2022-11-23 01:51:37', '2022-11-23 01:51:41', NULL, NULL),
(125, 31, 2, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-11-23 01:51:56', '2022-11-23 01:51:56', NULL, NULL),
(131, 28, 1, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2022-12-20 00:30:11', '2022-12-19 19:00:11', NULL, NULL),
(134, 79, 8, '{\"optionColorSelected\":0,\"optionSizeSelected\":58,\"optionSelectSelected\":0}', 1, '2023-01-04 10:04:32', '2023-01-04 04:34:32', NULL, NULL),
(135, 40, 6, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2023-01-12 20:00:18', '2023-01-12 14:30:18', NULL, NULL),
(136, 40, 8, '{\"optionColorSelected\":0,\"optionSizeSelected\":0,\"optionSelectSelected\":0}', 1, '2023-01-12 20:00:59', '2023-01-12 14:30:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(11) NOT NULL DEFAULT '',
  `top` tinyint(1) DEFAULT NULL,
  `column` int(3) DEFAULT NULL,
  `sort_order` char(3) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `seller_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1654168116Category_05.jpg', '0', NULL, NULL, '1', '1', NULL, '2022-06-02 11:08:36', '2022-06-02 11:08:36', NULL),
(2, '1654168151Category_04.jpg', '0', NULL, NULL, '2', '1', NULL, '2022-06-02 11:09:11', '2022-06-02 11:09:11', NULL),
(3, '1654168182Category_03.jpg', '0', NULL, NULL, '3', '1', NULL, '2022-06-02 11:09:42', '2022-06-02 11:09:42', NULL),
(4, '1654168211Category_06.jpg', '0', NULL, NULL, '4', '1', NULL, '2022-06-02 11:10:11', '2022-06-02 11:10:11', NULL),
(5, '1654168241Category_02.jpg', '0', NULL, NULL, '5', '1', NULL, '2022-06-02 11:10:41', '2022-06-02 11:10:41', NULL),
(6, '1654168347Category_01.jpg', '0', NULL, NULL, '6', '1', NULL, '2022-06-02 11:12:27', '2022-06-02 11:12:27', NULL),
(7, '1654168381Category_07.jpg', '0', NULL, NULL, '7', '1', NULL, '2022-06-02 11:13:01', '2022-06-02 11:13:01', NULL),
(8, '1654168410Category_08.jpg', '0', NULL, NULL, '8', '1', NULL, '2022-06-02 11:13:30', '2022-06-02 11:13:30', NULL),
(9, '1654235672kisspng-apple-watch-series-2-apple-watch-series-3-apple-wa-smart-apple-watch-sports-watch-band-5a8687ca23b730.4356046615187660261463-removebg-preview.png', '0', NULL, NULL, '9', '1', NULL, '2022-06-03 05:54:32', '2022-06-03 05:54:32', NULL),
(10, '166426523302.jpg', '0', NULL, NULL, '1', '1', NULL, '2022-09-30 06:44:20', '2022-09-30 06:44:20', '2022-09-30 06:44:20'),
(11, '1664771636IMG-20221003-WA0003.jpg', '0', NULL, NULL, '1', '1', NULL, '2022-11-23 09:21:28', '2022-11-23 09:21:28', '2022-11-23 09:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'Cloths', NULL, 'cloth', 'cloth desc', 'cloth', '2022-06-02 11:08:37', '2022-06-02 11:08:37', NULL),
(1, 5, 'كلوست', NULL, 'كلوست', 'كلوست', 'كلوست', '2022-06-02 11:08:37', '2022-06-02 11:08:37', NULL),
(2, 4, 'Shoes', NULL, 'Shoes', 'shoes desc', 'shoes', '2022-06-02 11:09:11', '2022-06-02 11:09:11', NULL),
(2, 5, 'أحذية', NULL, 'أحذية', 'أحذية', 'أحذية', '2022-06-02 11:09:11', '2022-06-02 11:09:11', NULL),
(3, 4, 'Grocery', NULL, 'Grocery', 'Grocery', 'Grocery', '2022-06-02 11:09:42', '2022-06-02 11:09:42', NULL),
(3, 5, 'خضروات', NULL, 'خضروات', 'خضروات', 'خضروات', '2022-06-02 11:09:42', '2022-06-02 11:09:42', NULL),
(4, 4, 'Kids Wear', NULL, 'Kids Wear', 'Kids Wear', 'Kids Wear', '2022-06-02 11:10:11', '2022-06-02 11:10:11', NULL),
(4, 5, 'ملابس الاطفال', NULL, 'ملابس الاطفال', 'ملابس الاطفال', 'ملابس الاطفال', '2022-06-02 11:10:11', '2022-06-02 11:10:11', NULL),
(5, 4, 'Travel', NULL, 'Travel', 'Travel', 'Travel', '2022-06-02 11:10:41', '2022-06-02 11:10:41', NULL),
(5, 5, 'يسافر', NULL, 'يسافر', 'يسافر', 'يسافر', '2022-06-02 11:10:41', '2022-06-02 11:10:41', NULL),
(6, 4, 'Beauty', NULL, 'Beauty', 'Beauty', 'Beauty', '2022-06-02 11:12:27', '2022-06-02 11:12:27', NULL),
(6, 5, 'جمال', NULL, 'جمال', 'جمال', 'جمال', '2022-06-02 11:12:27', '2022-06-02 11:12:27', NULL),
(7, 4, 'Ladies Dress', NULL, 'Ladies Dress', 'Ladies Dress', 'Ladies Dress', '2022-06-02 11:13:01', '2022-06-02 11:13:01', NULL),
(7, 5, 'فساتين السيدات', NULL, 'فساتين السيدات', 'فساتين السيدات', 'فساتين السيدات', '2022-06-02 11:13:01', '2022-06-02 11:13:01', NULL),
(8, 4, 'Heels Sandal', NULL, 'Heels Sandal', 'Heels Sandal', 'Heels Sandal', '2022-06-02 11:13:30', '2022-06-02 11:13:30', NULL),
(8, 5, 'صندل كعب', NULL, 'صندل كعب', 'صندل كعب', 'صندل كعب', '2022-06-02 11:13:30', '2022-06-02 11:13:30', NULL),
(9, 4, 'Electronic', NULL, 'Electronic', 'Electronic', 'Electronic', '2022-06-03 05:54:32', '2022-06-03 05:54:32', NULL),
(9, 5, 'إلكتروني', NULL, 'إلكتروني', 'إلكتروني', 'إلكتروني', '2022-06-03 05:54:32', '2022-06-03 05:54:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cost_price_table`
--

DROP TABLE IF EXISTS `cost_price_table`;
CREATE TABLE IF NOT EXISTS `cost_price_table` (
  `cost_price_table_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cost_price` decimal(15,4) NOT NULL,
  `pp` decimal(15,4) NOT NULL,
  `shipping_value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`cost_price_table_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(50) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` char(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'India', 'IN', 'IND', 'India', '91', 1, '2022-06-03 06:14:42', '2022-06-03 06:14:42', NULL),
(2, 'United State America', 'US', 'USA', 'A', '+1', 1, '2022-06-03 06:15:15', '2022-06-03 06:15:15', NULL),
(3, 'United Arab Emirates', 'AE', 'UAE', 'UA', '+971', 1, '2022-06-03 06:20:51', '2022-06-03 06:20:51', NULL),
(4, 'Russia', 'RU', 'RSA', 'RSA', '+7', 1, '2022-06-03 06:22:01', '2022-06-03 06:22:01', NULL),
(5, 'Kuwait', 'KW', 'KWT', 'Kwt', '+965', 1, '2022-06-03 06:23:24', '2022-06-03 06:23:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=percentage,2=fixed',
  `discount` decimal(15,4) NOT NULL,
  `uses_total` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `name`, `code`, `type`, `discount`, `uses_total`, `status`, `date_added`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rrr', 'otrixweb', 1, '12.0000', NULL, 1, NULL, '2022-07-18', '2022-12-31', '2022-09-05 16:36:35', '2022-09-05 16:36:35', NULL),
(2, 'Test', 'test', 1, '10.0000', NULL, 1, NULL, '2022-09-02', '2022-11-30', '2022-09-05 16:39:59', '2022-09-05 16:39:59', NULL),
(3, 'New coupon RP', 'ase', 1, '11.0000', NULL, 1, NULL, '2022-09-14', '2022-09-14', '2022-09-08 05:46:16', '2022-09-08 05:46:16', NULL),
(4, 'fasdf', 'fasdf', 1, '3.0000', NULL, 1, NULL, '2022-09-08', '2022-09-08', '2022-09-08 06:09:53', '2022-09-08 06:09:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_history`
--

DROP TABLE IF EXISTS `coupon_history`;
CREATE TABLE IF NOT EXISTS `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `custom_field` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(40) DEFAULT NULL,
  `code_sendon` datetime DEFAULT NULL,
  `otp_token` text,
  `image` text,
  `firebase_token` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `creation` enum('D','G','F','A') DEFAULT NULL,
  `social_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE IF NOT EXISTS `customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) DEFAULT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

DROP TABLE IF EXISTS `customer_transaction`;
CREATE TABLE IF NOT EXISTS `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlist`
--

DROP TABLE IF EXISTS `customer_wishlist`;
CREATE TABLE IF NOT EXISTS `customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dod`
--

DROP TABLE IF EXISTS `dod`;
CREATE TABLE IF NOT EXISTS `dod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dod`
--

INSERT INTO `dod` (`id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '2023-01-27 02:54:49', NULL, NULL),
(2, 6, '2023-01-27 02:54:49', NULL, NULL),
(3, 7, '2023-01-27 02:54:49', NULL, NULL),
(4, 9, '2023-01-27 02:54:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) NOT NULL,
  `code` varchar(25) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `default_lang` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language_name`, `code`, `status`, `default_lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Arabic', 'ar', 1, 0, '2022-04-16 03:58:11', '2022-04-20 04:36:54', NULL),
(4, 'English', 'en', 1, 1, '2022-04-16 03:53:24', '2022-04-20 04:36:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `length_class`
--

DROP TABLE IF EXISTS `length_class`;
CREATE TABLE IF NOT EXISTS `length_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `unit` varchar(4) NOT NULL,
  `value` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `image`, `sort_order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Zara', '16541736458756.jpg', 1, 1, '2022-06-02 12:40:45', '2022-06-02 12:40:45', NULL),
(2, 'Nike', '16541736618756.jpg', 2, 1, '2022-06-02 12:41:01', '2022-06-02 12:41:01', NULL),
(3, 'Puma', '16541736728756.jpg', 3, 1, '2022-06-02 12:41:12', '2022-06-02 12:41:12', NULL),
(4, 'Samsung', '16541736848756.jpg', 4, 1, '2022-06-02 12:41:24', '2022-06-02 12:41:24', NULL),
(5, 'Big Basket', '16541737038756.jpg', 5, 1, '2022-06-02 12:41:43', '2022-06-02 12:41:43', NULL),
(6, 'Apple', '16541737388756.jpg', 6, 1, '2022-06-02 12:42:18', '2022-06-02 12:42:18', NULL),
(7, 'London Britches', '16541737508756.jpg', 7, 1, '2022-06-02 12:42:30', '2022-06-02 12:42:30', NULL),
(8, 'sss', '1673363126Desktop.png', 1, 1, '2023-01-10 20:35:26', '2023-01-10 20:35:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(15) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(15) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(9, 'App\\Models\\User', 627),
(12, 'App\\Models\\User', 629),
(9, 'App\\Models\\User', 630);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_prefix` varchar(26) DEFAULT 'INV',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `shipping_name` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) DEFAULT NULL,
  `shipping_address_2` varchar(128) DEFAULT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `comment` text,
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `order_status_id` int(11) DEFAULT NULL,
  `commission` decimal(15,4) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00',
  `shipping_charge` decimal(15,2) DEFAULT '0.00',
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(150) DEFAULT '',
  `grand_total` decimal(15,2) NOT NULL,
  `tracking` varchar(64) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `forwarded_ip` varchar(40) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `accept_language` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `deleted_at` (`deleted_at`),
  KEY `total` (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_additional_field`
--

DROP TABLE IF EXISTS `order_additional_field`;
CREATE TABLE IF NOT EXISTS `order_additional_field` (
  `order_additional_field_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `cost` decimal(15,4) NOT NULL,
  `pp` decimal(15,4) NOT NULL,
  `ship` decimal(15,4) NOT NULL,
  `delivery` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order_custom` int(11) NOT NULL,
  `tracknum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_expected` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_additional_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
CREATE TABLE IF NOT EXISTS `order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `special` decimal(15,2) DEFAULT '0.00',
  `image` varchar(150) DEFAULT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_shipment`
--

DROP TABLE IF EXISTS `order_shipment`;
CREATE TABLE IF NOT EXISTS `order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
CREATE TABLE IF NOT EXISTS `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `language_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Pending', 1, '2022-06-03 10:05:17', '2022-06-03 10:05:17', NULL),
(2, NULL, 'Completed', 1, '2022-06-03 10:05:25', '2022-06-03 10:05:25', NULL),
(3, NULL, 'Shipped', 1, '2022-06-03 10:05:32', '2022-06-03 10:05:32', NULL),
(4, NULL, 'Denied', 1, '2022-06-03 10:05:40', '2022-06-03 10:05:40', NULL),
(5, NULL, 'Processing', 1, '2022-06-03 10:05:51', '2022-06-03 10:05:51', NULL),
(6, NULL, 'Refunded', 1, '2022-06-03 10:05:59', '2022-06-03 10:05:59', NULL),
(7, NULL, 'Canceled', 1, '2022-06-03 10:06:06', '2022-06-03 10:06:06', NULL),
(8, NULL, 'InComplete', 1, '2022-06-03 10:06:12', '2022-06-03 10:06:12', NULL),
(9, NULL, 'Delivered', 1, '2022-10-15 05:51:47', '2022-10-15 05:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
CREATE TABLE IF NOT EXISTS `order_total` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `heading`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Privacy Policy', 'Privacy Policy', NULL, '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p><strong>It is hereby informed to every individuals who are using Otrixweb E-commerce Business platform, Otrixweb Business shall not be responsible for any lost delivery, false delivery, false delivery of product, broken delivery, permanent or temporary loss of product, only delivery partners are answerable for above terms. We at (original ecommerce) respect the trust you place in us and recognize the importance of secure transactions and information privacy. here our Privacy Policy illustrate that how Otrixweb E-commerce business Private Limited and its affiliates (collectively &ldquo;Otrixweb business, we, our, us&rdquo;) collect, use, share or otherwise process your personal information through Otrixweb website www.Otrixwebbusiness.com, its mobile application, and m-site (hereinafter referred to as the &ldquo;Platform&rdquo;).</strong></p>\r\n\r\n<p><strong>By visiting our Platform, you agree in providing your information or availing our product/service, you agree to be bound by the terms and conditions of this Privacy Policy, the Terms of Use and the applicable service/product terms and conditions. If you do not agree, please do not access or use our Platform.</strong></p>\r\n\r\n<p><strong>1. Collection and storage of Your Information</strong></p>\r\n\r\n<p><strong>&nbsp;Except making our platform easy, user friendly, interactive and transparent, &nbsp;we outsource most of the operations (like payments, delivery, buying, selling, advertising, etc. ) to third party vendors hence we are not responsible for any kind of conflicts, disputes, disagreement, any kind of visible or invisible issue or loss faced by anyone. When you chose to use our Platform, we collect and store your information which is provided by you from time to time. In general, you can browse the Platform without telling us who you are or revealing any personal information about yourself. Once you give us your personal information, you are the part of family to us. we indicate which fields are required and which fields are optional. You always have the option not to provide information by choosing not to use a particular service, product or feature on the Platform.</strong></p>\r\n\r\n<p><strong>at Otrixweb service we may track your buying habits, preferences, and other information that you choose to provide on our Platform. We use this information to do internal research on our users- interests, and habits to better understand, protect and serve you better. This information is compiled and analyzed on an aggregated basis. This information may include the URL that you just came from (whether this URL is on our Platform or not), which URL you next go to (whether this URL is on our Platform or not), your computer browser information, and your IP address. our service also &nbsp;collects personal information (such as email address, delivery address, name, phone number, credit card/debit card and other payment instrument details) from you when you set up an account or transact with us. While you can browse some sections of our Platform without being a registered member, certain activities (such as placing an order or consuming our online content &nbsp;or services) do require registration. We do use your contact information to send you offers based on your previous orders and your interests.</strong></p>\r\n\r\n<p><strong>If you choose to post messages on our message boards, chat rooms or other message areas or leave feedback or if you use voice commands to shop on the Platform, we will collect that information you provide to us. We retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.</strong></p>\r\n\r\n<p><strong>If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Platform, we may collect such information into a file specific to you.</strong></p>\r\n\r\n<p><strong>If you are eligible into our O-Coins Loyalty Program, we will collect and store your personal information such as name, contact number, email address, communication address, date of birth, gender, zip code, lifestyle information, demographic and work details etc. which is provided by you to Otrixweb E- commerce business private ltd &nbsp;or a third-party business partner that operates online/offline establishments or platforms where you can earns O-Coins for purchase of goods and services, and redeem O-Coins. We will also collect your information related to your transactions on Otrixweb business platform and such third-party business partner platforms. When such a third-party business partner collects your personal information directly from you, you will be governed by their privacy policies. Otrixweb e-commerce shall not be responsible for the third-party business partner&rsquo;s privacy practices or the content of their privacy policies, and we request you to read their privacy policies prior to disclosing any information.</strong></p>\r\n\r\n<p><strong>Otrixweb has onboarded certain third-party business partners on the Platform who specialize in the categories like travel ticket reservations, booking online movie tickets, paying online bills and more (Ultra-Partners). If you use the services of Ultra-Partners, you will be redirected to Ultra-Partners websites/applications and your entry to Ultra-Partners websites/applications will be based on your Otrixweb login credentials after seeking your permissions to share the data further. Otrixweb shall not be responsible for the Ultra-Partner&rsquo;s privacy practices or the content of their privacy policies, and we request you to read their privacy policies prior to disclosing any information.</strong></p>\r\n\r\n<p><strong>2. Use of Demographic / Profile Data / Your Information</strong></p>\r\n\r\n<p><strong>We at Otrixweb business E- commerce private limited uses your personal information to provide the product and services you request. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to assist sellers and business partners in handling and fulfilling orders; enhancing customer experience; resolve disputes; troubleshoot problems; help promote a safe service; collect money; measure consumer interest in our products and services; inform you about online and offline offers, products, services, and updates; customize and enhance your experience; detect and protect us against error, fraud and other criminal activity; enforce our terms and conditions; and as otherwise described to you at the time of collection of information.</strong></p>\r\n\r\n<p><strong>With your consent, we will have access to your SMS, contacts in your directory, location and device information. We may also request you to provide your PAN, GST Number, Government issued ID cards/number and Know-Your-Customer (KYC) details to:</strong></p>\r\n\r\n<p><strong>&nbsp;(1.) check your eligibility for certain products and services including but not limited to credit and payment products;</strong></p>\r\n\r\n<p><strong>&nbsp;(2.) issue GST invoice for the products and services purchased for your business requirements;&nbsp;</strong></p>\r\n\r\n<p><strong>(3.) enhance your experience on the Platform and provide you access to the products and services being offered by us, sellers, affiliates or lending partners. You understand that your access to these products/services may be affected in the event consent is not provided to us.</strong></p>\r\n\r\n<p><strong>In our efforts to continually improve our product and service offerings, we and our affiliates collect and analyze demographic and profile data about our users&#39; activity on our Platform. We identify and use your IP address to help diagnose problems with our server, and to administer our Platform. Your IP address is also used to help identify you and to gather broad demographic information.</strong></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>We will occasionally ask you to participate in optional surveys conducted either by us or through a third party market research agency. These surveys may ask you for personal information, contact information, date of birth, demographic information (like zip code, age, or income level), attributes such as your interests, household or lifestyle information, your purchasing habits or history, preferences, and other such information that you may choose to provide. The surveys may involve collection of voice data or video recordings, the participation of which would purely be voluntary in nature. We use this data to tailor your experience at our Platform, providing you with content that we think you might be interested in and to display content according to your preferences.</strong></p>\r\n\r\n<p><strong>3. Cookies</strong></p>\r\n\r\n<p><strong>We use data collection devices such as &quot;cookies&quot; on certain pages of the Platform to help analyze our web page flow, measure promotional effectiveness, and promote trust and safety. &quot;Cookies&quot; are small files placed on your hard drive that assist us in providing our services. Cookies do not contain any of your personal information. We offer certain features that are only available through the use of a &quot;cookie&quot;. We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are &quot;session cookies,&quot; meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline/delete our cookies if your browser permits, although in that case you may not be able to use certain features on the Platform and you may be required to re-enter your password more frequently during a session. Additionally, you may encounter &quot;cookies&quot; or other similar devices on certain pages of the Platform that are placed by third parties. We do not control the use of cookies by third parties. We use cookies from third-party partners such as Google Analytics for marketing and analytical purposes. Google Analytics help us understand how our customers use the site. You can read more about how Google uses your Personal Information. You can also opt-out of Google Analytics.</strong></p>\r\n\r\n<p><strong>4. Sharing of personal information</strong></p>\r\n\r\n<p><strong>We may share personal information with our other corporate entities and affiliates for purposes of providing products and services offered by them, such as, the deferred payment options at Otrixweb through its lending partners. These entities and affiliates may share such information with their affiliates, business partners and other third parties for the purpose of providing you their products and services, and may market to you as a result of such sharing unless you explicitly opt-out.</strong></p>\r\n\r\n<p><strong>We may disclose your personal information to third parties, such as sellers, business partners. This disclosure may be required for us to provide you access to our products and services; for fulfilment of your orders; for enhancing your experience; for providing feedback on products; to collect payments from you; to comply with our legal obligations; to conduct market research or surveys; to enforce our Terms of Use; to facilitate our marketing and advertising activities; to analyze data; for customer service assistance; to prevent, detect, mitigate, and investigate fraudulent or illegal activities related to our product and services. We do not disclose your personal information to third parties for their marketing and advertising purposes without your explicit consent.</strong></p>\r\n\r\n<p><strong>We may disclose personal information if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to respond to subpoenas, court orders, or other legal process. We may disclose personal information to law enforcement agencies, third party rights owners, or others in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms of Use or Privacy Policy; respond to claims that an advertisement, posting or other content violates the rights of a third party; or protect the rights, property or personal safety of our users or the general public.</strong></p>\r\n\r\n<p><strong>We and our affiliates will share / sell some or all of your personal information with another business entity should we (or our assets) plan to merge with, or be acquired by that business entity, or re-organization, amalgamation, restructuring of business. Should such a transaction occur that other business entity (or the new combined entity) will be required to follow this Privacy Policy with respect to your personal information.</strong></p>\r\n\r\n<p><strong>5. Links to Other Sites</strong></p>\r\n\r\n<p><strong>Our Platform may provide links to other websites or application that may collect personal information about you. We are not responsible for the privacy practices or the content of those linked websites.</strong></p>\r\n\r\n<p><strong>6. Security Precautions</strong></p>\r\n\r\n<p><strong>We maintain reasonable physical, electronic and procedural safeguards to protect your information. Whenever you access your account information, we offer the use of a secure server. Once your information is in our possession we adhere to our security guidelines to protect it against unauthorized access. However, by using the Platform, the users accept the inherent security implications of data transmission over the internet and the World Wide Web which cannot always be guaranteed as completely secure, and therefore, there would always remain certain inherent risks regarding use of the Platform. Users are responsible for ensuring the protection of login and password records for their account.</strong></p>\r\n\r\n<p><strong>7. Choice/Opt-Out</strong></p>\r\n\r\n<p><strong>We provide all users with the opportunity to opt-out of receiving non-essential (promotional, marketing-related) communications after setting up an account with us. If you do not wish to receive promotional communications from us then please login into the Notification Preference page of Platform to unsubscribe/opt-out.</strong></p>\r\n\r\n<p><strong>8. Advertisements on Platform</strong></p>\r\n\r\n<p><strong>We use third-party advertising companies to serve ads when you visit our Platform. These companies may use information (not including your name, address, email address, or telephone number) about your visits to this and other websites in order to provide advertisements about goods and services of interest to you.</strong></p>\r\n\r\n<p><strong>9. Children Information</strong></p>\r\n\r\n<p><strong>We do not knowingly solicit or collect personal information from children under the age of 18 and use of our Platform is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. If you are under the age of 18 years then you must use the Platform, application or services under the supervision of your parent, legal guardian, or any responsible adult.</strong></p>\r\n\r\n<p><strong>10. Data Retention</strong></p>\r\n\r\n<p><strong>We retain your personal information in accordance with applicable laws, for a period no longer than is required for the purpose for which it was collected or as required under any applicable law. However, we may retain data related to you if we believe it may be necessary to prevent fraud or future abuse or if required by law or for other legitimate purposes. We may continue to retain your data in anonymized form for analytical and research purposes.</strong></p>\r\n\r\n<p><strong>11. Your Consent</strong></p>\r\n\r\n<p><strong>By visiting our Platform or by providing your information, you consent to the collection, use, storage, disclosure and otherwise processing of your information (including sensitive personal information) on the Platform in accordance with this Privacy Policy. If you disclose to us any personal information relating to other people, you represent that you have the authority to do so and to permit us to use the information in accordance with this Privacy Policy.</strong></p>\r\n\r\n<p><strong>You, while providing your personal information over the Platform or any partner platforms or establishments, consent to us (including our other corporate entities, affiliates, lending partners, technology partners, marketing channels, business partners and other third parties) to contact you through SMS, instant messaging apps, call and/or e-mail for the purposes specified in this Privacy Policy.</strong></p>\r\n\r\n<p><strong>12. Changes to this Privacy Policy</strong></p>\r\n\r\n<p><strong>Please check our Privacy Policy periodically for changes. We may update this Privacy Policy to reflect changes to our information practices. We will alert you to significant changes by posting the date our policy got last updated, placing a notice on our Platform, or by sending you an email when we are required to do so by applicable law.</strong></p>\r\n\r\n<p><strong>14. Queries</strong></p>\r\n\r\n<p><strong>If you have any query, issue, concern, or complaint in relation to collection or usage of your personal information under this Privacy Policy, please contact us at the contact information provided above.</strong></p>', '2021-12-14 01:38:01', '2022-03-09 02:09:35', NULL),
(2, 'Terms and Conditions', 'Terms and Conditions', NULL, '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p><strong>1. It is hereby informed to every individuals who are using Otrixweb E-commerce Business platform, Otrixweb Business shall not be responsible for any lost delivery, false delivery, false delivery of product, broken delivery, permanent or temporary loss of product, only delivery partners are answerable for above terms.</strong></p>\r\n\r\n<p><strong>2. It is hereby informed that neither we at Otrixweb E-commerce Business are manufacturer nor we are trader we are only providing the platform from where anyone globally make a purchasing request for their wished product manufacturer and we are a bridge between seller and customer.</strong></p>\r\n\r\n<p><strong>3. Here at Otrixweb E-commerce Business we try our best to establish a transparent relation between customers and sellers in order to maintain the dignity of original products deliver to you.</strong></p>\r\n\r\n<p><strong>4. Except making our platform easy, user friendly, interactive and transparent, &nbsp;we outsource most of the operations (like payments, delivery, buying, selling, advertising, etc. ) to third party vendors hence we are not responsible for any kind of conflicts, disputes, disagreement, any kind of visible or invisible issue or loss faced by anyone.</strong></p>\r\n\r\n<p><strong>5. We reserve all direct and indirect rights related to Otrixweb E-commerce Business with us, hence we emphasis on policy i.e. at Otrixweb E-commerce Business we can modify or discontinue any privacy policy, any agreements, contracts, terms and conditions with any partner, collaborations with any third party vendor, partner or costumers without any prior notice, in case of misuse noticed. It is entirely the responsibility of our partners, collaborations, and our customers to follow our terms and condition, privacy policies and contract update regularly.</strong></p>\r\n\r\n<p><strong>6. Sharing of personal information</strong></p>\r\n\r\n<p><strong>We may share personal information with our other corporate entities and affiliates for purposes of providing products and services offered by them, such as, the deferred payment options at Otrixweb through its lending partners. These entities and affiliates may share such information with their affiliates, business partners and other third parties for the purpose of providing you their products and services, and may market to you as a result of such sharing unless you explicitly opt-out.</strong></p>\r\n\r\n<p><strong>7.We may disclose your personal information to third parties, such as sellers, business partners. This disclosure may be required for us to provide you access to our products and services; for fulfilment of your orders; for enhancing your experience; for providing feedback on products; to collect payments from you; to comply with our legal obligations; to conduct market research or surveys; to enforce our Terms of Use; to facilitate our marketing and advertising activities; to analyze data; for customer service assistance; to prevent, detect, mitigate, and investigate fraudulent or illegal activities related to our product and services. We do not disclose your personal information to third parties for their marketing and advertising purposes without your explicit consent.</strong></p>\r\n\r\n<p><strong>8. We respect, follow and adhere the law and order of all the states, territories and nationwide but &nbsp;we shall not be responsible for any legal actions or allegation taking against Otrixweb E-commerce Business Private LTD, in or at the spot of allegation or difficulty faced by any company, partners, or customers in their home town. We respond each and every legal queries or complaint filled against us and will be entertained only in law and order body operational in capital of India &nbsp;at origin of our headquarters, only in the case when our customer handling team unable to solve the allegations or any difficulties faced by anyone across.</strong></p>', '2021-12-14 01:46:43', '2022-03-09 02:08:41', NULL);
INSERT INTO `pages` (`id`, `title`, `heading`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Return & Refund Policy', 'Return & Refund Policy', NULL, '<div class=\"content\"><p>Return policy Otrixweb</p><p><br></p><h1 dir=\"ltr\" style=\"line-height:1.7999999999999998;text-align: center;background-color:#ffffff;margin-top:15pt;margin-bottom:0pt;padding:0pt 0pt 4pt 0pt;\"><span style=\"font-size:16.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Returns Policy</span></h1><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:7pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Returns is a scheme provided by respective sellers directly under this policy in terms of which the option of exchange, replacement and/ or refund is offered by the respective sellers to you. All products listed under a particular category may not have the same returns policy. For all products, the returns/replacement policy provided on the product page shall prevail over the general returns policy. Do refer the respective item\'s applicable return/replacement policy on the product page for any exceptions to this returns policy and the table below</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The return policy is divided into three parts; Do read all sections carefully to understand the conditions and cases under which returns will be accepted.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Part 1 – Category, Return Window and Actions possible</span></p><div dir=\"ltr\" style=\"margin-left:0pt;\" align=\"left\"><table style=\"border:none;border-collapse:collapse;\"><colgroup><col width=\"168\"><col width=\"423\"></colgroup><tbody><tr style=\"height:39.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Category</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Returns Window, Actions Possible and Conditions (if any)</span></p></td></tr><tr style=\"height:213pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Lifestyle: Kid’s (Capri, Shorts &amp; Tops), Men’s (Ethnic Wear, Shirt, Formals, Jeans, Clothing Accessory), Women’s (Ethnic Wear, Fabric, Blouse, Jean, Skirt, Trousers, Bra), Bags, Raincoat, Sunglass, Belt, Frame, Backpack, Suitcase, Luggage</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund, replacement or exchange</span></p></td></tr><tr style=\"height:287.25pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Lifestyle: Jewelry, Footwear Accessories, Travel Accessories, Watch Accessories, Winter Wear (Blazer, Sweatshirt, Scarf, Shawl, Jacket, Coat, Sweater, Thermal, Kid’s Thermal, Track Pant, Shrugs)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Home: Pet Supplies &amp; Rest of Home. (Except Home décor, Furnishing, Home Improvement Tools, Household Items)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund or replacement</span></p></td></tr><tr style=\"height:66.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Watch, Footwear and Rest of Lifestyle</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund, replacement or exchange</span></p></td></tr><tr style=\"height:66.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Medicine (Allopathy &amp; Homeopathy)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">2 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund</span></p></td></tr><tr style=\"height:87pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Home: Home Improvement Tools, Household Items, Home décor, Furnishing</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund or replacement</span></p></td></tr><tr style=\"height:246.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Books (All books)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Sports Equipment (Racquet, ball, support, gloves, bags etc.)&nbsp;</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Exercise &amp; Fitness Equipment (Home Gym combos, dumbbell etc.)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Auto Accessories - Car and Bike accessories (helmets, car kit, media players etc.)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days Replacement only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Free replacement will be provided within 3 days if the product is delivered in defective/damaged condition or different from the ordered item.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Please keep the product intact, with original accessories, user manual and warranty cards in the original packaging at the time of returning the product.&nbsp;</span></p></td></tr><tr style=\"height:246.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Toys (Remote controlled toys, Learning toys, Stuffed toys etc.)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Stationary (Pens, Diary notebooks, Calculators etc.)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Musical Instruments (Microphones &amp; Accessories, Guitars, Violins etc.)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3&nbsp; days Replacement only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Free replacement will be provided within 10 days if the product is delivered in defective/damaged condition or different from the ordered item.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Please keep the product intact, with original accessories, user manual and warranty cards in the original packaging at the time of returning the product.&nbsp;</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Non Returnable- All Wind Instruments (Harmonicas, Flutes etc.) This item is non-returnable due to hygiene and personal wellness. In case these products are delivered in damaged/defective condition or different from the ordered item, we will provide a free replacement.</span></p></td></tr><tr style=\"height:267pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">All Mobiles (except Apple / Google phones),</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Electronics - (except Apple / Beats, Google, Realme, Samsung, JBL or Infinity, Epson, HP, Dell, Canon, MI Products (Tablets, Laptops, Smart Watches)</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">All Small Home Appliances (Except Chimney, Water Purifier, Fan, Geyser)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Replacement only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In order to help you resolve issues with your product, we may troubleshoot your product either through online tools, over the phone, and/or through an in-person technical visit.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">If a defect is determined within the Returns Window, a replacement of the same model will be provided at no additional cost. If no defect is confirmed or the issue is not diagnosed within 3 days of delivery, you will be directed to a brand service centre to resolve any subsequent issues.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In any case, only one replacement shall be provided.</span></p></td></tr><tr style=\"height:935.25pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Mobile - Apple &amp; Google.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Electronics - Apple / Beats, Google, Realme, Samsung, JBL &amp; Infinity, Epson, HP, Dell, Canon &amp; MI Products (Tablets, Laptops, Smart Watches)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For any other issues with the product you may contact the concerned brand’s support.</span></p></td></tr><tr style=\"height:316.5pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Furniture, Large appliances</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Rest of Small Home Appliances - Chimney, Water Purifier, Fan, Geyser only</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Replacement only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For products requiring installation, returns shall be eligible only when such products are installed by the brand\'s authorized personnel.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In order to help you resolve issues with your product, we may troubleshoot your product either through online tools, over the phone, and/or through an in-person technical visit.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">If a defect is determined within the Returns Window, a replacement of the same model will be provided at no additional cost. If no defect is confirmed or the issue is not diagnosed within 3 days of delivery or Installation wherever applicable, you will be directed to a brand service centre to resolve any subsequent issues.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In any case, only one replacement shall be provided.</span></p></td></tr><tr style=\"height:71.25pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Grocery - (Dairy, Bakery, Fruits and Vegetables)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">2 Days Refund Only</span></p></td></tr><tr style=\"height:172.5pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Grocery - (Remaining items under grocery)</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fruits and Vegetables ordered would be delivered only in the first attempt. In order to ensure that you get fresh fruits and vegetables, we will not be making reattempts to deliver your fruits and veggies in case you miss your slot. Rest of grocery items from Supermarket would be delivered through reattempt in case you miss your slot.</span></p></td></tr><tr style=\"height:183.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Try &amp; Buy</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3 days</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Refund only</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This policy shall be applicable selectively (geographical coverage, product, customer and time periods).</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Try &amp; Buy benefits shall be applicable only if the product was bought when the item was on Try &amp; Buy. Else normal category policy shall apply on the order. In any case, only one replacement shall be provided.</span></p></td></tr><tr style=\"height:98.25pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">No Returns categories</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Some products in the above categories are not returnable due to their nature or other reasons. For all products, the policy on the product page shall prevail.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You can view the complete list of non-returnable products.</span></p></td></tr></tbody></table></div><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Part 2 - Returns Pick-Up and Processing</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In case of returns where you would like item(s) to be picked up from a different address, the address can only be changed if pick-up service is available at the new address</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">During pick-up, your product will be checked for the following conditions:</span></p><div dir=\"ltr\" style=\"margin-left:0pt;\" align=\"left\"><table style=\"border:none;border-collapse:collapse;\"><colgroup><col width=\"94\"><col width=\"497\"></colgroup><tbody><tr style=\"height:39.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Category</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Conditions</span></p></td></tr><tr style=\"height:55.5pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Correct Product</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">IMEI/ name/ image/ brand/ serial number/ article number/ bar code should match and the MRP tag should be undetached and clearly visible.</span></p></td></tr><tr style=\"height:71.25pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Complete Product</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">All in-the-box accessories (like remote control, starter kits, instruction manuals, chargers, headphones, etc.), freebies and combos (if any) should be present.</span></p></td></tr><tr style=\"height:102.75pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Unused Product</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The product should be unused, unwashed, unsoiled, without any stains and with non-tampered quality check seals/return tags/warranty seals (wherever applicable). Before returning a Mobile/ Laptop/ Tablet, the device should be formatted and Screen Lock (Pin, Pattern or Fingerprint) must be disabled. iCloud lock must be disabled for Apple devices.</span></p></td></tr><tr style=\"height:55.5pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Undamaged Product</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The product (including SIM trays/ charging port/ headphone port, back-panel etc.) should be undamaged and without any scratches, dents, tears or holes.</span></p></td></tr><tr style=\"height:55.5pt\"><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Undamaged Packaging</span></p></td><td style=\"border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-bottom:solid #000000 0.75pt;border-top:solid #000000 0.75pt;vertical-align:top;background-color:#ffffff;padding:6pt 6pt 6pt 6pt;overflow:hidden;overflow-wrap:break-word;\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Product\'s original packaging/ box should be undamaged.</span></p></td></tr></tbody></table></div><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The field executive will refuse to accept the return if any of the above conditions are not met.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For any products for which a refund is to be given, the refund will be processed once the returned product has been received by the seller.</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Part 3 - General Rules for a successful Return</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">In certain cases where the seller is unable to process a replacement for any reason whatsoever, a refund will be given.</span></p></li><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">During open box deliveries, while accepting your order, if you received a different or a damaged product, you will be given a refund (on the spot refunds for cash-on-delivery orders). Once you have accepted an open box delivery, no return request will be processed, except for manufacturing defects. In such cases, this category-specific replacement/return general conditions will be applicable.</span></p></li><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For products where installation is provided by Otrixweb Ecommerce\'s service partners, do not open the product packaging by yourself. Otrixweb Ecommerce authorized personnel shall help in unboxing and installation of the product.</span></p></li><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 6pt 0pt;\" role=\"presentation\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For Furniture, any product related issues will be checked by an authorized service personnel (free of cost) and attempted to be resolved by replacing the faulty/ defective part of the product. Full replacement will be provided only in cases where the service personnel opines that replacing the faulty/defective part will not resolve the issue.</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:11pt;margin-bottom:0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Wrong Delivery - (Customer received delivery message, product not delivered):</span></p><p dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:11pt 0pt 0pt 0pt;\"><span style=\"font-size:10.5pt;font-family:Roboto,sans-serif;color:#212121;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">\'In case the product was not delivered and you received a delivery confirmation email/SMS, report the issue within 3 days from the date of delivery confirmation for the seller to investigate.\'</span></p><p><span id=\"docs-internal-guid-4e0e88e7-7fff-71a6-1506-f50041705a39\"></span></p><p dir=\"ltr\" style=\"line-height:1.656;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\">&nbsp;</p></div>', '2022-03-09 00:48:07', '2022-03-09 03:26:03', NULL);
INSERT INTO `pages` (`id`, `title`, `heading`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Shipping & Delivery Policy', 'Shipping & Delivery Policy', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-03-09 00:48:36', '2022-03-09 01:59:09', NULL),
(5, '234', 'sdf', NULL, '<p>dsf</p>', '2022-04-12 07:23:19', '2022-04-12 07:23:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'customer.add', 'Add', 'web', '2021-07-07 03:37:38', '2021-07-07 05:27:28'),
(2, 'customer.edit', 'Edit', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(3, 'customer', 'List', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(4, 'customer.delete', 'Delete', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(5, 'category.add', 'Add', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(6, 'category.edit', 'Edit', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(7, 'category', 'List', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(8, 'category.delete', 'Delete', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(9, 'banner.add', 'Add', 'web', '2021-07-07 05:47:44', '2021-07-07 05:47:44'),
(10, 'banner.edit', 'Edit', 'web', '2021-07-07 05:47:44', '2021-07-07 05:47:44'),
(11, 'banner', 'List', 'web', '2021-07-07 05:47:44', '2021-07-07 05:47:44'),
(12, 'banner.delete', 'Delete', 'web', '2021-07-07 05:47:44', '2021-07-07 05:47:44'),
(15, 'permission', 'List', 'web', '2021-07-07 06:03:37', '2021-07-07 06:03:37'),
(17, 'role.add', 'Add', 'web', '2021-07-07 06:03:37', '2021-07-07 06:03:37'),
(19, 'role', 'List', 'web', '2021-07-07 06:03:37', '2021-07-07 06:03:37'),
(20, 'role.delete', 'Delete', 'web', '2021-07-07 06:03:37', '2021-07-07 06:03:37'),
(21, 'product.add', 'Add', 'web', '2021-07-07 14:49:34', '2021-07-07 14:49:34'),
(22, 'product.edit', 'Edit', 'web', '2021-07-07 14:49:34', '2021-07-07 14:49:34'),
(23, 'product', 'List', 'web', '2021-07-07 14:49:34', '2021-07-07 14:49:34'),
(24, 'product.delete', 'Delete', 'web', '2021-07-07 14:49:34', '2021-07-07 14:49:34'),
(25, 'length-class.add', 'Add', 'web', '2021-07-07 15:23:07', '2021-07-07 15:23:07'),
(26, 'length-class.edit', 'Edit', 'web', '2021-07-07 15:23:07', '2021-07-07 15:23:07'),
(27, 'length-class', 'List', 'web', '2021-07-07 15:23:07', '2021-07-07 15:23:07'),
(28, 'length-class.delete', 'Delete', 'web', '2021-07-07 15:23:07', '2021-07-07 15:23:07'),
(29, 'role.edit', 'Edit', 'web', '2021-07-07 16:02:26', '2021-07-07 16:02:26'),
(30, 'country.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(31, 'country.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(32, 'country', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(33, 'country.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(34, 'tax-rate.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(35, 'tax-rate.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(36, 'tax-rate', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(37, 'tax-rate.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(38, 'stock-status.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(39, 'stock-status.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(40, 'stock-status', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(41, 'stock-status.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(42, 'weight-class.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(43, 'weight-class.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(44, 'weight-class', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(45, 'weight-class.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(46, 'review', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(47, 'manufacturer.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(48, 'manufacturer.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(49, 'manufacturer.review', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(50, 'manufacturer.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(51, 'order-status.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(52, 'order-status.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(53, 'order-status', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(54, 'order-status.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(55, 'order.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(56, 'order.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(57, 'order', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(58, 'order.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(59, 'coupon.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(60, 'coupon.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(61, 'coupon', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(62, 'coupon.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(63, 'product-option.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(64, 'product-option.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(65, 'product-option', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(66, 'product-option.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(67, 'setting.add', 'Add', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(68, 'setting.edit', 'Edit', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(69, 'setting', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(70, 'setting.delete', 'Delete', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(71, 'user.add', 'Add', 'web', '2021-07-08 08:29:04', '2021-07-08 08:29:04'),
(72, 'user.edit', 'Edit', 'web', '2021-07-08 08:29:04', '2021-07-08 08:29:04'),
(73, 'user', 'List', 'web', '2021-07-08 08:29:04', '2021-07-08 08:29:04'),
(74, 'user.delete', 'Delete', 'web', '2021-07-08 08:29:04', '2021-07-08 08:29:04'),
(75, 'product-attribute-group.add', 'Add', 'web', '2021-07-10 02:29:04', '2021-07-10 02:29:04'),
(76, 'product-attribute-group.edit', 'Edit', 'web', '2021-07-10 02:29:04', '2021-07-10 02:29:04'),
(77, 'product-attribute-group', 'List', 'web', '2021-07-10 02:29:04', '2021-07-10 02:29:04'),
(78, 'product-attribute-group.delete', 'Delete', 'web', '2021-07-10 02:29:04', '2021-07-10 02:29:04'),
(79, 'product-attribute.add', 'Add', 'web', '2021-07-10 03:51:59', '2021-07-10 03:51:59'),
(80, 'product-attribute.edit', 'Edit', 'web', '2021-07-10 03:51:59', '2021-07-10 03:51:59'),
(81, 'product-attribute', 'List', 'web', '2021-07-10 03:51:59', '2021-07-10 03:51:59'),
(82, 'product-attribute.delete', 'Delete', 'web', '2021-07-10 03:51:59', '2021-07-10 03:51:59'),
(85, 'seller', 'List', 'web', NULL, NULL),
(86, 'permission.add', 'Add', 'web', '2021-07-07 06:03:37', '2021-07-07 06:03:37'),
(87, 'manufacturer', 'List', 'web', '2021-07-07 16:19:02', '2021-07-07 16:19:02'),
(88, 'pages.add', 'Add', 'web', '2021-07-07 03:37:38', '2021-07-07 05:27:28'),
(89, 'pages.edit', 'Edit', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(90, 'pages', 'List', 'web', '2021-07-07 05:27:28', '2021-07-07 05:27:28'),
(91, 'trending_dod', 'Trending And DOD  List Permissions', 'web', NULL, NULL),
(92, 'trending_dod.add', 'Trending And DOD Add', 'web', NULL, NULL),
(93, 'trending_dod.edit', 'Trending And DOD Update', 'web', NULL, NULL),
(94, 'shipping', 'List Shipping', 'web', NULL, NULL),
(95, 'shipping.add', 'Add Shipping', 'web', NULL, NULL),
(96, 'shipping.edit', 'Edit Shipping', 'web', NULL, NULL),
(97, 'shipping.delete', 'Shipping Delete', 'web', NULL, NULL),
(98, 'order.view', 'Order View', 'web', NULL, NULL),
(99, '234', '234', 'web', NULL, NULL),
(100, 'language', 'Language List', 'web', NULL, NULL),
(101, 'language.add', 'Language Add', 'web', NULL, NULL),
(102, 'language.edit', 'Language Update', 'web', NULL, NULL),
(103, 'language.delete', 'Language Delete', 'web', NULL, NULL),
(104, 'Mujtaba Khanusiya', 'Mujtaba k', 'web', NULL, NULL),
(105, 'notifications', 'notifications', 'web', NULL, NULL),
(106, 'notifications.add', 'notifications Create', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `model` varchar(64) NOT NULL,
  `jan` varchar(13) DEFAULT NULL,
  `isbn` varchar(17) DEFAULT NULL,
  `mpn` varchar(64) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `quantity` int(6) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `shipping` enum('Yes','No') DEFAULT 'No',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `points` int(8) DEFAULT '0',
  `tax_rate_id` int(11) DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `weight` decimal(15,4) DEFAULT '0.0000',
  `weight_class_id` int(11) DEFAULT '0',
  `length` decimal(15,4) DEFAULT '0.0000',
  `width` decimal(15,4) DEFAULT '0.0000',
  `height` decimal(15,4) DEFAULT '0.0000',
  `length_class_id` int(11) DEFAULT '0',
  `subtract` tinyint(1) DEFAULT '1',
  `minimum` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `viewed` int(5) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `seller_id`, `model`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_rate_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, 'Puma', NULL, NULL, NULL, NULL, 455, NULL, '1654175272Product_02.png', 3, 'No', '650.00', 0, NULL, '2022-06-01', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 216, '2022-06-03 15:07:52', '2023-02-01 07:23:34', NULL),
(2, 8, NULL, 'SANDAL', NULL, NULL, NULL, NULL, 499, 0, '1654175791Product_01.png', 2, 'No', '400.00', 0, 0, '2022-06-02', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 14, '2022-06-02 16:16:31', '2022-12-13 17:45:04', NULL),
(3, 1, NULL, 'Shirt', NULL, NULL, NULL, NULL, 482, NULL, '1654233432Product_04.png', 1, 'No', '450.00', 0, 1, '2022-06-01', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 159, '2022-06-03 12:17:12', '2023-01-21 03:30:02', NULL),
(4, 6, NULL, 'AXE', NULL, NULL, NULL, NULL, 492, NULL, '1654233987Product_08.png', 7, 'No', '50.00', 0, NULL, '2022-06-01', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 35, '2022-06-03 05:26:27', '2023-02-03 09:36:22', NULL),
(5, 6, NULL, 'GLASS', NULL, NULL, NULL, NULL, 147, 0, '1654234185Product_19.jpg', 6, 'No', '70.00', 0, 0, '2022-06-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 10, '2022-06-03 05:29:45', '2022-12-15 00:12:33', NULL),
(6, 6, NULL, 'CAP', NULL, NULL, NULL, NULL, 484, NULL, '1654234349Product_11.jpg', 1, 'No', '90.00', 0, NULL, '2022-06-03', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 79, '2022-06-04 05:32:29', '2023-02-03 09:36:43', NULL),
(7, 5, NULL, 'BAG', NULL, NULL, NULL, NULL, 242, NULL, '1654234529Product_24.jpg', 2, 'No', '650.00', 0, NULL, '2022-06-03', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 48, '2022-06-03 05:35:29', '2023-02-03 09:37:02', NULL),
(8, 7, NULL, 'DRESS', NULL, NULL, NULL, NULL, 325, 0, '1654234757valerie-elash-gsKdPcIyeGg-unsplash-removebg-preview.png', 1, 'No', '580.00', 0, 0, '2022-06-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 198, '2022-06-04 05:39:17', '2023-02-05 17:51:47', NULL),
(9, 2, NULL, 'SHOES', NULL, NULL, NULL, NULL, 494, NULL, '1654234911Product_06.png', 2, 'No', '350.00', 0, NULL, '2022-06-03', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 43, '2022-06-03 05:41:51', '2023-02-03 09:37:18', NULL),
(10, 6, NULL, 'WATCH', NULL, NULL, NULL, NULL, 99, NULL, '1654235249kisspng-apple-watch-series-2-apple-watch-series-3-apple-wa-smart-apple-watch-sports-watch-band-5a8687ca23b730.4356046615187660261463-removebg-preview.png', 4, 'No', '150.00', 0, NULL, '2022-06-03', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 23, '2022-06-03 05:47:29', '2023-01-23 06:47:07', NULL),
(11, 1, NULL, 'JEANS', NULL, NULL, NULL, NULL, 200, 0, '1654235493fabio-scaletta-cYSRncVxE44-unsplash-removebg-preview.png', 1, 'No', '280.00', 0, 0, '2022-06-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 26, '2022-06-03 05:51:33', '2023-02-01 20:21:23', NULL),
(12, 9, NULL, 'Mobile22', NULL, NULL, NULL, NULL, 496, 0, '1654235975hardik-sharma-CrPAvN29Nhs-unsplash-removebg-preview.png', 6, 'No', '650.00', 0, 0, '2022-06-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 22, '2022-06-03 05:59:35', '2022-12-15 00:10:59', NULL),
(13, 9, NULL, 'LAPTOP100', NULL, NULL, NULL, NULL, 4993, NULL, '1654236389joshua-aragon-FGXqbqbGt5o-unsplash-removebg-preview-removebg-preview.png', 4, 'No', '999.00', 0, NULL, '2022-06-03', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 69, '2022-06-03 06:06:29', '2022-12-22 07:00:14', NULL),
(14, 2, NULL, '12', NULL, NULL, NULL, NULL, 12, 0, '1658357333icon.png', 2, 'No', '120.00', 0, 2, '2022-07-17', '12.0000', 0, '12.0000', '12.0000', '12.0000', 0, 1, 1, 1, 1, 3, '2022-07-20 22:48:53', '2022-07-24 17:10:44', '2022-07-24 17:10:44'),
(15, 2, NULL, '12', NULL, NULL, NULL, NULL, 12, 0, '1658357365icon.png', 2, 'No', '120.00', 0, 2, '2022-07-17', '12.0000', 0, '12.0000', '12.0000', '12.0000', 0, 1, 1, 1, 1, 5, '2022-07-20 22:49:25', '2022-07-24 17:10:38', '2022-07-24 17:10:38'),
(16, 1, NULL, 'shurt', NULL, NULL, NULL, NULL, 22, 0, '1658454680243638227_856533561717268_8793283420127160235_n.jpg', 1, 'No', '12.00', 0, 0, '2022-07-18', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 6, '2022-07-22 01:51:20', '2022-07-24 17:10:32', '2022-07-24 17:10:32'),
(17, 2, NULL, 'Sa', NULL, NULL, NULL, NULL, 0, 0, NULL, 3, 'No', '10.00', 0, 0, '2022-08-20', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 18, '2022-08-20 19:37:59', '2022-09-30 06:44:13', '2022-09-30 06:44:13'),
(18, 1, NULL, 'RP-001', NULL, NULL, NULL, NULL, 0, 0, '1664715590logo-r.png', 1, 'No', '25.00', 0, 0, '2022-10-01', '250.0000', 1, '25.0000', '50.0000', '11.0000', 0, 1, 1, 1, 1, 32, '2022-10-02 12:59:50', '2022-11-23 06:10:51', '2022-11-23 06:10:51'),
(19, 2, NULL, 'qqw', NULL, NULL, NULL, NULL, 1, 0, '16700255071.png', 2, 'No', '11.00', 0, 1, '2022-12-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 0, '2022-12-03 05:28:27', '2022-12-09 14:17:55', '2022-12-09 14:17:55'),
(20, 2, NULL, 'qwdqwdq', NULL, NULL, NULL, NULL, 1, 0, '1670025584alfa.php', 1, 'No', '11.00', 0, 1, '2022-12-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 0, '2022-12-03 05:29:44', '2022-12-09 14:18:24', '2022-12-09 14:18:24'),
(21, 4, NULL, 'asd', NULL, NULL, NULL, NULL, 2, 0, '1670025687webadmin.php', 2, 'No', '22.00', 0, 0, '2022-12-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 0, '2022-12-03 05:31:27', '2022-12-09 14:18:17', '2022-12-09 14:18:17'),
(22, 4, NULL, '12', NULL, NULL, NULL, NULL, 1, 0, '1670025772pown.phtmL', 1, 'No', '22.00', 0, 0, '2022-12-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 0, '2022-12-03 05:32:52', '2022-12-09 14:18:10', '2022-12-09 14:18:10'),
(23, 3, NULL, 'qwd', NULL, NULL, NULL, NULL, 2, 0, '1670025821pown.php', 0, 'No', '22.00', 0, 0, '2022-12-03', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 0, '2022-12-03 05:33:41', '2022-12-09 14:18:03', '2022-12-09 14:18:03'),
(24, 2, NULL, '32423', NULL, NULL, NULL, NULL, 33, 0, NULL, 3, 'No', '3423423.00', 0, 2, '2023-01-18', '0.0000', 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 1, 1, 4, '2023-01-18 13:09:28', '2023-02-01 20:21:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `group_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-06-02 12:26:54', '2022-06-02 12:26:54', NULL),
(2, 1, 1, '2022-06-02 12:27:15', '2022-06-02 12:27:15', NULL),
(3, 1, 1, '2022-06-02 12:27:32', '2022-06-02 12:27:32', NULL),
(4, 1, 1, '2022-06-02 12:29:11', '2022-06-02 12:29:11', NULL),
(5, 1, 1, '2022-06-02 12:29:28', '2022-06-02 12:29:28', NULL),
(6, 2, 1, '2022-06-02 12:29:49', '2022-06-02 12:29:49', NULL),
(7, 2, 1, '2022-06-02 12:30:05', '2022-06-02 12:30:05', NULL),
(8, 2, 1, '2022-06-02 12:30:23', '2022-06-02 12:30:23', NULL),
(9, 2, 1, '2022-06-02 12:30:42', '2022-06-02 12:30:42', NULL),
(10, 1, 1, '2022-06-02 12:30:55', '2022-06-02 12:30:55', NULL),
(11, 3, 1, '2022-06-02 12:31:16', '2022-06-02 12:31:16', NULL),
(12, 4, 1, '2022-06-02 12:31:38', '2022-06-02 12:31:38', NULL),
(13, 4, 1, '2022-06-02 12:31:53', '2022-06-02 12:31:53', NULL),
(14, 4, 1, '2022-06-02 12:32:11', '2022-06-02 12:32:11', NULL),
(15, 4, 1, '2022-06-02 12:32:32', '2022-06-02 12:32:32', NULL),
(16, 3, 1, '2022-06-02 12:32:46', '2022-06-02 12:32:46', NULL),
(17, 3, 1, '2022-06-02 12:33:01', '2022-06-02 12:33:01', NULL),
(18, 1, 1, '2023-02-02 22:10:05', '2023-02-02 22:10:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_description`
--

DROP TABLE IF EXISTS `product_attribute_description`;
CREATE TABLE IF NOT EXISTS `product_attribute_description` (
  `language_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attribute_description`
--

INSERT INTO `product_attribute_description` (`language_id`, `attribute_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'In The Box', '2022-06-02 12:26:54', '2022-06-02 12:26:54', NULL),
(5, 1, 'في الصندوق', '2022-06-02 12:26:54', '2022-06-02 12:26:54', NULL),
(4, 2, 'Model Number', '2022-06-02 12:27:15', '2022-06-02 12:27:15', NULL),
(5, 2, 'رقم الموديل', '2022-06-02 12:27:15', '2022-06-02 12:27:15', NULL),
(4, 3, 'Color', '2022-06-02 12:27:32', '2022-06-02 12:27:32', NULL),
(5, 3, 'اللون', '2022-06-02 12:27:32', '2022-06-02 12:27:32', NULL),
(4, 4, 'SIM Type', '2022-06-02 12:29:11', '2022-06-02 12:29:11', NULL),
(5, 4, 'نوع بطاقة SIM', '2022-06-02 12:29:11', '2022-06-02 12:29:11', NULL),
(4, 5, 'Touchscreen', '2022-06-02 12:29:28', '2022-06-02 12:29:28', NULL),
(5, 5, 'شاشة لمسية', '2022-06-02 12:29:28', '2022-06-02 12:29:28', NULL),
(4, 6, 'Display Size', '2022-06-02 12:29:49', '2022-06-02 12:29:49', NULL),
(5, 6, 'عرض الحجم', '2022-06-02 12:29:49', '2022-06-02 12:29:49', NULL),
(4, 7, 'Resolution', '2022-06-02 12:30:05', '2022-06-02 12:30:05', NULL),
(5, 7, 'القرار', '2022-06-02 12:30:05', '2022-06-02 12:30:05', NULL),
(4, 8, 'Resolution Type', '2022-06-02 12:30:23', '2022-06-02 12:30:23', NULL),
(5, 8, 'نوع القرار', '2022-06-02 12:30:23', '2022-06-02 12:30:23', NULL),
(4, 9, 'Display Type', '2022-06-02 12:30:42', '2022-06-02 12:30:42', NULL),
(5, 9, 'نوع العرض', '2022-06-02 12:30:42', '2022-06-02 12:30:42', NULL),
(4, 10, 'Display Colors', '2022-06-02 12:30:55', '2022-06-02 12:30:55', NULL),
(5, 10, 'ألوان العرض', '2022-06-02 12:30:55', '2022-06-02 12:30:55', NULL),
(4, 11, 'Operating System', '2022-06-02 12:31:16', '2022-06-02 12:31:16', NULL),
(5, 11, 'نظام التشغيل', '2022-06-02 12:31:16', '2022-06-02 12:31:16', NULL),
(4, 12, 'Internal Storage', '2022-06-02 12:31:38', '2022-06-02 12:31:38', NULL),
(5, 12, 'التخزين الداخلي', '2022-06-02 12:31:38', '2022-06-02 12:31:38', NULL),
(4, 13, 'Expandable Storage', '2022-06-02 12:31:53', '2022-06-02 12:31:53', NULL),
(5, 13, 'تخزين قابل للتوسيع', '2022-06-02 12:31:53', '2022-06-02 12:31:53', NULL),
(4, 14, 'Supported Memory Card Type', '2022-06-02 12:32:11', '2022-06-02 12:32:11', NULL),
(5, 14, 'نوع بطاقة الذاكرة المدعومة', '2022-06-02 12:32:11', '2022-06-02 12:32:11', NULL),
(4, 15, 'Memory Card Slot Type', '2022-06-02 12:32:32', '2022-06-02 12:32:32', NULL),
(5, 15, 'نوع فتحة بطاقة الذاكرة', '2022-06-02 12:32:32', '2022-06-02 12:32:32', NULL),
(4, 16, 'Processor Core', '2022-06-02 12:32:46', '2022-06-02 12:32:46', NULL),
(5, 16, 'نواة المعالج', '2022-06-02 12:32:46', '2022-06-02 12:32:46', NULL),
(4, 17, 'Primary Clock Speed', '2022-06-02 12:33:01', '2022-06-02 12:33:01', NULL),
(5, 17, 'سرعة الساعة الأساسية', '2022-06-02 12:33:01', '2022-06-02 12:33:01', NULL),
(4, 18, 'rrr', '2023-02-02 22:10:05', '2023-02-02 22:10:05', NULL),
(5, 18, 'rrr', '2023-02-02 22:10:05', '2023-02-02 22:10:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_groups`
--

DROP TABLE IF EXISTS `product_attribute_groups`;
CREATE TABLE IF NOT EXISTS `product_attribute_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_attribute_groups`
--

INSERT INTO `product_attribute_groups` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2022-06-02 12:25:41', '2022-06-02 12:25:41', NULL),
(2, 1, '2022-06-02 12:25:54', '2022-06-02 12:25:54', NULL),
(3, 1, '2022-06-02 12:26:09', '2022-06-02 12:26:09', NULL),
(4, 1, '2022-06-02 12:26:22', '2022-06-02 12:26:22', NULL),
(5, 1, '2022-09-04 10:15:53', '2022-09-04 10:15:53', NULL),
(6, 1, '2022-09-09 02:57:56', '2022-09-09 02:57:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_group_description`
--

DROP TABLE IF EXISTS `product_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `product_attribute_group_description` (
  `language_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attribute_group_description`
--

INSERT INTO `product_attribute_group_description` (`language_id`, `attribute_group_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'General', '2022-06-02 12:25:41', '2022-06-02 12:25:41', NULL),
(5, 1, 'عام', '2022-06-02 12:25:41', '2022-06-02 12:25:41', NULL),
(4, 2, 'Display Features', '2022-06-02 12:25:54', '2022-06-02 12:25:54', NULL),
(5, 2, 'ميزات العرض', '2022-06-02 12:25:54', '2022-06-02 12:25:54', NULL),
(4, 3, 'Os & Processor Features', '2022-06-02 12:26:09', '2022-06-02 12:26:09', NULL),
(5, 3, 'نظام التشغيل وخصائص المعالج', '2022-06-02 12:26:09', '2022-06-02 12:26:09', NULL),
(4, 4, 'Memory & Storage Features', '2022-06-02 12:26:22', '2022-06-02 12:26:22', NULL),
(5, 4, 'ميزات الذاكرة والتخزين', '2022-06-02 12:26:22', '2022-06-02 12:26:22', NULL),
(4, 5, 'Cloths', '2022-09-04 10:15:53', '2022-09-04 10:15:53', NULL),
(5, 5, 'Cloths', '2022-09-04 10:15:53', '2022-09-04 10:15:53', NULL),
(4, 6, 'fsadf', '2022-09-09 02:57:56', '2022-09-09 02:57:56', NULL),
(5, 6, 'fasdf', '2022-09-09 02:57:56', '2022-09-09 02:57:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
CREATE TABLE IF NOT EXISTS `product_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `tag` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`id`, `product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(36, 1, 4, 'Pumma Runing Shoes', '<p>Catalog Name:Fabulous Pretty Boys Casual Shoes<br />\r\nMaterial: Mesh<br />\r\nSole Material: PVC<br />\r\nMultipack: Variable (Product Dependent)<br />\r\nSizes:<br />\r\n9-9.5 Years, 7.5-8 Years<br />\r\nD<br />\r\nDispatch: 1 Days<br />\r\nEasy Returns Available In Case Of Any Issue</p>', NULL, NULL, NULL, NULL),
(35, 1, 5, 'أحذية الركض من بوما', '<p>اسم الكتالوج: حذاء كاجوال فابولوس بريتي بويز<br />\r\nالمواد: شبكة<br />\r\nالمادة الوحيدة: PVC<br />\r\nالحزمة المتعددة: متغير (يعتمد على المنتج)<br />\r\nالأحجام:<br />\r\n9-9.5 Years, 7.5-8 Years<br />\r\nD<br />\r\nإيفاد: 1 يوم<br />\r\nعوائد سهلة متاحة في حالة حدوث أي مشكلة</p>', NULL, NULL, NULL, NULL),
(9, 2, 4, 'Heels Sandals', '<p>Type</p>\r\n\r\n<p>Heels</p>\r\n\r\n<p>Type for Heels</p>\r\n\r\n<p>Block Heel</p>\r\n\r\n<p>Color</p>\r\n\r\n<p>Black</p>\r\n\r\n<p>Pack of</p>\r\n\r\n<p>1</p>\r\n\r\n<p>Insole Material</p>\r\n\r\n<p>Foam</p>\r\n\r\n<p>Weight</p>\r\n\r\n<p>300 g (per single Sandal) - Weight of the product may vary depending on size.</p>\r\n\r\n<p>Miggler Presenting A Classy Range Of Footwear&#39;S That Compliments Your Modern Style Statement. Featuring A Pretty Pair Of Wedges With Super Comfortable Sole That Keeps Your Feet Happy, Style With Your Causal Dress To Complete Your Look.Give Yourself The Advantage Of Comfortable Feet While You Flaunt Your Style. In These Sandals From Pure , You Can Make An Impression And How! The Crafting Of This Pair With Straps Ensures That Your Feet Have A Perfect Fit. The Popular Brand, Miggler A Wide Spectrum Of Stylish Footwear That Are A Fusion Of Contemporary Designs And Impeccable Quality Materials Thus, Reflecting The Spirit Of Youth. Miggler believes in developing products that are distinctively unique and ultra comfortable. It incorporates latest trends in all its products and ensures that its customers get nothing but the best.</p>\r\n\r\n<p>Manufacturing, Packaging and Import Info</p>', NULL, NULL, NULL, NULL),
(10, 2, 5, 'صنادل كعب', '<p>يكتب كعوب اكتب للكعب كعب بلوك اللون أسود حزمة من 1 نعل المواد رغوة وزن 300 جرام (لكل صندل فردي) - قد يختلف وزن المنتج حسب الحجم. Miggler تقدم مجموعة راقية من الأحذية التي تكمل بيان أسلوبك العصري. يتميز بزوج جميل من الأوتاد بنعل مريح للغاية يبقي قدمك سعيدًا ، ارتديه مع فستانك غير الرسمي لإكمال مظهرك. امنح نفسك ميزة القدم المريحة أثناء التباهي بأسلوبك. في هذه الصنادل من بيور ، يمكنك أن تترك انطباعًا وكيف! تضمن لك صناعة هذا الزوج مع الأشرطة أن تكون قدميك ملائمة بشكل مثالي. العلامة التجارية الشهيرة ميجلر مجموعة واسعة من الأحذية الأنيقة التي هي مزيج من التصاميم المعاصرة والمواد عالية الجودة وبالتالي تعكس روح الشباب. تؤمن Miggler بتطوير منتجات فريدة من نوعها ومريحة للغاية. إنه يدمج أحدث الاتجاهات في جميع منتجاته ويضمن ألا يحصل عملاؤه إلا على الأفضل. معلومات التصنيع والتعبئة والاستيراد</p>', NULL, NULL, NULL, NULL),
(56, 3, 5, 'قميص للرجال', '<p>قميص قطني فاخر باللون الأزرق الملكي مع أنابيب سوداء بمقاس ذكي. ارتدي هذا القميص الأنيق من Life Roads هذا الموسم. أصبحت الساعة السعيدة أكثر أناقة عندما ارتديت هذه القطعة البيضاء مع بعض الأحذية الطويلة من chukka والجينز الداكن.</p>', NULL, NULL, NULL, NULL),
(71, 4, 4, 'AXE body Spray', '<p>135 ml each ,Pack of 3 ,For Men , Perfume Spray, For External Use Only Burning passion Hearts on fire , Sizzling chemistry Highly Inflammable, Harmful If Taken In</p>', NULL, NULL, NULL, NULL),
(72, 4, 5, 'بخاخ الجسم أكس', '<p>135 مل لكل عبوة ، عبوة من 3 قطع ، للرجال ، بخاخ عطر ، للاستخدام الخارجي فقط حرق قلوب العاطفة على النار ، الكيمياء الأزيز شديدة الالتهاب ، ضارة إذا تم تناولها</p>', NULL, NULL, NULL, NULL),
(15, 5, 4, 'Sun Glasses', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"2\">Product Information</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Lens Material</td>\r\n			<td>Polycarbonate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temple Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, NULL),
(16, 5, 5, 'نظارة شمسيه', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"2\">معلومات المنتج</th>\r\n		</tr>\r\n		<tr>\r\n			<td>مادة العدسة</td>\r\n			<td>بولي كربونات</td>\r\n		</tr>\r\n		<tr>\r\n			<td>مادة المعبد</td>\r\n			<td>معدن</td>\r\n		</tr>\r\n		<tr>\r\n			<td>مادة الإطار</td>\r\n			<td>معدن</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, NULL),
(73, 6, 4, 'Essential Cap', '<p>Zacharias presents you a new style cotton cap solid beach fishermen bucket cap design. fits to all , suitable to Men &amp; Women . This Cap provides protection from UV rays</p>', NULL, NULL, NULL, NULL),
(74, 6, 5, 'قبعة أساسية', '<p>يقدم لك Zacharias تصميمًا جديدًا للقبعة القطنية الصلبة بتصميم قبعة الصيادين على الشاطئ. يناسب الجميع ، مناسب للرجال والنساء. يوفر هذا الغطاء الحماية من الأشعة فوق البنفسجية</p>', NULL, NULL, NULL, NULL),
(75, 7, 4, 'Bag', '<p>The Style Smith backpack is a sleek, light bag with a young-at-heart design that&#39;s perfect for daily travel. Made for daily use, this bag is not oversized and is meant to carry your essentials. With its trendy looks and easy to organize design, this bag is cute and suave as well as useful, to help you complete your look. Quietly stylish and durable, it features multiple compartments to help organize your stuff.</p>\r\n\r\n<p>Ideal For - Men, Women and Children of all age groups. Can be used for Tution, Gym, Picnic or as a Casual Backpack for Daily Commute.Please note This is a small sized backpack and we request you to see Mannequin Image before ordering to understand size.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL),
(76, 7, 5, 'شنطة', '<p>حقيبة الظهر ستايل سميث هي حقيبة أنيقة وخفيفة بتصميم صغير ومثالي للسفر اليومي. هذه الحقيبة المصنوعة للاستخدام اليومي ليست كبيرة الحجم وتهدف إلى حمل أغراضك الأساسية. بمظهرها العصري وتصميمها السهل التنظيم ، هذه الحقيبة لطيفة ولطيفة وكذلك مفيدة ، لمساعدتك على استكمال مظهرك. أنيقة ومتينة بهدوء ، وتتميز بأقسام متعددة للمساعدة في تنظيم أغراضك. مثالي - للرجال والنساء والأطفال من جميع الفئات العمرية. يمكن استخدامها في Tution أو Gym أو Picnic أو كحقيبة ظهر عادية للتنقل اليومي. يرجى ملاحظة هذه حقيبة ظهر صغيرة الحجم ونطلب منك رؤية صورة العارضة قبل الطلب لفهم الحجم.</p>', NULL, NULL, NULL, NULL),
(21, 8, 4, 'Ladies Dress', '<p>Shop from a wide range of Tops from SS FASHION. Perfect for your everyday use, you could pair it with a stylish pair of Dress, Top, Kurta, Jumpsuit or Trousers complete the look.</p>', NULL, NULL, NULL, NULL),
(22, 8, 5, 'فساتين السيدات', '<p>تسوق من مجموعة واسعة من بلايز من SS FASHION. مثالي للاستخدام اليومي ، يمكنك إقرانه بزوج أنيق من الفستان أو البلوزة أو الكورتا أو بذلة أو بنطلون لإكمال المظهر.</p>', NULL, NULL, NULL, NULL),
(78, 9, 5, 'حذاء رجالي أزرق', '<p>حذاء الجري الرياضي كوسكو بلو للرجال من آسيوي</p>', NULL, NULL, NULL, NULL),
(77, 9, 4, 'Men Blue Shoes', '<p>Asian Men Cosco Blue Sports &amp; Running Shoe</p>\r\n\r\n<h3 style=\"color:rgb(51, 51, 51); font-style:inherit\">&nbsp;</h3>', NULL, NULL, NULL, NULL),
(42, 10, 4, 'Smart Watch', '<p>ColorFit Pro 2 Oxy is our latest smartwatch with Oxy to take care of your health with a new design and a gorgeous 1.3&quot; full touch colour display. It isn&#39;t all good looks though, because ColorFit Pro 2 has much better health and activity tracking, 14 sports modes and all the smartwatch features you can think of, from call, text and social media notifications to music control on your smartphone. ColorFit Pro 2 Oxy can do so much more and yet it has an amazing 10 day battery life so you&#39;ll need to charge it just a few times a month.</p>', NULL, NULL, NULL, NULL),
(41, 10, 5, 'ساعة ذكية', '<p>ColorFit Pro 2 Oxy هي أحدث ساعتنا الذكية مع Oxy للعناية بصحتك بتصميم جديد وشاشة ملونة تعمل باللمس بالكامل مقاس 1.3 بوصة. ليس كل شيء بمظهر جيد ، لأن ColorFit Pro 2 يتمتع بتتبع أفضل للصحة والنشاط ، 14 وضعًا رياضيًا وجميع ميزات الساعة الذكية التي يمكنك التفكير فيها ، من المكالمات والرسائل النصية وإشعارات الوسائط الاجتماعية إلى التحكم في الموسيقى على هاتفك الذكي.يمكن لـ ColorFit Pro 2 Oxy القيام بأكثر من ذلك بكثير ومع ذلك فهي تتمتع بعمر بطارية مذهل لمدة 10 أيام سأحتاج إلى شحنه بضع مرات في الشهر.</p>', NULL, NULL, NULL, NULL),
(29, 11, 4, 'Men Jeans', '<p>Urbano Fashion Men&#39;s Grey Slim Fit Stretch Jeans brings the latest trend for the fashion conscious. High on style and quality, these grey stretchable jeans are as versatile as they are comfortable - a must have in your wardrobe. Ideal for casual and party wear, pair these uber cool jeans with any dark color Urbano Fashion shirt or t-shirt, and never go out of style!</p>', NULL, NULL, NULL, NULL),
(30, 11, 5, 'جينز رجالي', '<p>يجلب جينز Urbano Fashion الرجالي الرمادي Slim Fit Stretch أحدث صيحات الموضة. عالي الأناقة والجودة ، هذا الجينز الرمادي المطاطي متعدد الاستخدامات بقدر ما هو مريح - ضروري في خزانة ملابسك. مثالي للارتداء الكاجوال والحفلات ، ارتدي هذا الجينز الرائع من uber مع أي قميص أو تي شيرت Urbano Fashion بلون داكن ، ولا تنفد أبدًا!</p>', NULL, NULL, NULL, NULL),
(31, 12, 4, 'Smart Phone', '<p>&nbsp;</p>\r\n\r\n<p>48 MP Quad Camera</p>\r\n\r\n<p>This mobile features a 48 MP Quad Camera that helps capture rich colours along with sharp details so that every shot you take is spectacular.</p>', NULL, NULL, NULL, NULL),
(32, 12, 5, 'هاتف ذكي', '<p>\r\nكاميرا رباعية بدقة 48 ميجا بكسل\r\n\r\nيتميز هذا الهاتف بكاميرا رباعية بدقة 48 ميجابكسل تساعد على التقاط ألوان غنية مع تفاصيل حادة بحيث تكون كل لقطة تلتقطها مذهلة.\r\n</p>', NULL, NULL, NULL, NULL),
(53, 13, 4, 'Laptop', '<hr />\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Processor: Intel Core i5-1155G7 (up to 4.5 GHz with Intel Turbo Boost Technology(2g), 8 MB L3 cache, 4 cores, 8 threads)</li>\r\n	<li>Memory: 16 GB DDR4-3200 SDRAM (2 x 8 GB), Upto 16 GB DDR4-3200 (2 x 8 GB)| Storage:512 GB PCIe NVMe M.2 SSD</li>\r\n	<li>Display: 35.6 cm (14&#39;&#39;) diagonal, FHD(1920x1080), IPS, micro-edge, 250 nits, 157 ppi, 45% NTSC</li>\r\n	<li>Operating System &amp; Preinstalled Software: Windows 10 Home 64 Single Language | Microsoft Office Home &amp; Student 2019| McAfee LiveSafe (30 days free trial as default) | Audio : Audio by B&amp;O, Dual speakers | Alexa Built-in</li>\r\n	<li>Graphics &amp; Networking: Intel Iris Xe Graphics| Realtek RTL8822CE 802.11a/b/g/n/ac (2x2) Wi-Fi and Bluetooth 5 combo</li>\r\n</ul>\r\n<!--  Loading EDP related metadata -->\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL),
(54, 13, 5, 'حاسوب محمول', '<hr />\r\n<h1>حول هذا البند</h1>\r\n\r\n<ul>\r\n	<li>المعالج: Intel Core i5-1155G7 (يصل إلى 4.5 جيجاهرتز بتقنية Intel Turbo Boost (2g) وذاكرة تخزين مؤقت 8 ميجابايت L3 و 4 مراكز و 8 خيوط)</li>\r\n	<li>الذاكرة: 16 جيجا بايت DDR4-3200 SDRAM (2 &times; 8 جيجا بايت) ، حتى 16 جيجا بايت DDR4-3200 (2 &times; 8 جيجا بايت) | التخزين: 512 جيجا بايت PCIe NVMe M.2 SSD</li>\r\n	<li>الشاشة: 35.6 سم (14 &amp; # 39 ؛ &amp; # 39 ؛) قطري ، FHD (1920x1080) ، IPS ، micro-edge ، 250 شمعة ، 157 بكسل في البوصة ، 45٪ NTSC</li>\r\n	<li>نظام التشغيل &amp; أمبير ؛ البرامج المثبتة مسبقًا: Windows 10 Home 64 Single Language | مايكروسوفت أوفيس هوم وأمبير. طالب 2019 | McAfee LiveSafe (نسخة تجريبية مجانية مدتها 30 يومًا كإعداد افتراضي) | الصوت: صوت B &amp; amp؛ O ، مكبرات صوت مزدوجة | أليكسا مدمج</li>\r\n	<li>الرسومات وأمبير. الشبكات: Intel Iris Xe Graphics | بطاقة مشتركة Realtek RTL8822CE 802.11a / b / g / n / ac (2x2) Wi-Fi وبلوتوث 5</li>\r\n</ul>\r\n<!--  Loading EDP related metadata -->\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL),
(55, 3, 4, 'Men Shirt', '<p>Classic Royal blue premium cotton shirt with black Piping in Smart Fit. Cozy up with this in-style Life Roads shirt this season. Happy hour just got a whole lot stylish when you put this white piece with some chukka boots and dark denim.</p>', NULL, NULL, NULL, NULL),
(46, 14, 5, 'تن', '<p>لا</p>', NULL, NULL, NULL, NULL),
(52, 17, 5, 'Saju', NULL, NULL, NULL, NULL, NULL),
(48, 15, 5, 'تن', '<p>لا</p>', NULL, NULL, NULL, NULL),
(50, 16, 5, 'Light shirt', '<p>erwtertreterwtertreterwtertreterwtertreterwtertreterwtertreterwtertreterwtertreterwtertret&nbsp; erwtertreterwtertreterwtertreterwtertreterwtertret</p>', NULL, NULL, NULL, NULL),
(60, 19, 5, 'qwdqwdq', 'qwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdq', NULL, NULL, NULL, NULL),
(58, 18, 5, 'Reddy test', NULL, NULL, NULL, NULL, NULL),
(69, 24, 4, 'test', '<p>fgdfgdf</p>', NULL, NULL, NULL, NULL),
(62, 20, 5, 'qwdqwdqqwdqwdq', '<p>qwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdqqwdqwdq</p>', NULL, NULL, NULL, NULL),
(70, 24, 5, 'gfdg', '<p>fgdf</p>', NULL, NULL, NULL, NULL),
(64, 21, 5, 'qwdqwdq', '<p>qwdqwdq</p>', NULL, NULL, NULL, NULL),
(66, 22, 5, '12d2d', '<p>qwdqwdqwd</p>', NULL, NULL, NULL, NULL),
(68, 23, 5, '321', '<p>qweqwe</p>', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
CREATE TABLE IF NOT EXISTS `product_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `sort_order_discount` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_filter`
--

DROP TABLE IF EXISTS `product_filter`;
CREATE TABLE IF NOT EXISTS `product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order_image` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `sort_order_image`) VALUES
(1, 1, '1654175272Product_07.png', 1),
(2, 1, '1654175272Product_02.png', 2),
(3, 2, '1654175791Product_01.png', 2),
(4, 3, '1654233432Product_14.jpg', 1),
(5, 5, '1654234185Product_23.jpg', 1),
(6, 6, '1654234349Product_05.png', 1),
(7, 7, '1654234529Product_20.jpg', 1),
(8, 8, '1654234757tamara-bellis-Brl7bqld05E-unsplash-removebg-preview.png', 1),
(9, 9, '1654234911Product_07.png', 1),
(10, 9, '1654234911Product_02.png', 1),
(11, 10, '1654235249kisspng-apple-watch-series-3-smartwatch-strap-apple-watch-5a744bb761f7c3.7914797415175709994013.jpg', 1),
(12, 11, '1654235493fabio-scaletta-cYSRncVxE44-unsplash-removebg-preview.png', 1),
(13, 12, '1654235975hardik-sharma-CrPAvN29Nhs-unsplash-removebg-preview.png', 1),
(14, 12, '1654235975francesco-de-tommaso-1bBCtUAUMFI-unsplash-removebg-preview.png', 2),
(15, 13, '1654236389artem-riasnianskyi-lYnGCjTCRj4-unsplash-removebg-preview.png', 1),
(16, 13, '1654236389fernando-venturim-63TgQoAI6So-unsplash__1_-removebg-preview.png', 2),
(25, 24, '1674027568pmb-logo.png', NULL),
(26, 4, '1675397182App-Icon-Light-removebg-preview.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
CREATE TABLE IF NOT EXISTS `product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Color', 1, '2022-06-02 12:33:47', '2022-06-02 12:33:47', NULL),
(2, 'Checkbox', 1, '2022-06-02 12:34:05', '2022-06-02 12:34:05', NULL),
(3, 'Select', 1, '2022-06-02 12:34:27', '2022-06-02 12:34:45', '2022-06-02 12:34:45'),
(4, 'Select', 1, '2022-06-02 12:34:53', '2022-06-02 12:34:59', '2022-06-02 12:34:59'),
(5, 'Select', 1, '2022-06-02 12:34:54', '2022-06-02 12:34:54', NULL),
(6, 'Checkbox', 1, '2022-07-19 07:19:24', '2022-07-19 07:19:24', NULL),
(7, 'Select', 1, '2022-08-05 12:32:31', '2022-08-05 12:32:31', NULL),
(8, 'Select', 1, '2022-09-08 08:43:05', '2022-09-08 08:43:05', NULL),
(9, 'Checkbox', 1, '2022-09-08 17:54:10', '2022-09-08 17:54:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_description`
--

DROP TABLE IF EXISTS `product_option_description`;
CREATE TABLE IF NOT EXISTS `product_option_description` (
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_option_description`
--

INSERT INTO `product_option_description` (`language_id`, `option_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'Color', '2022-06-02 12:33:47', '2022-06-02 12:33:47', NULL),
(5, 1, 'اللون', '2022-06-02 12:33:47', '2022-06-02 12:33:47', NULL),
(4, 2, 'Size', '2022-06-02 12:34:05', '2022-06-02 12:34:05', NULL),
(5, 2, 'بحجم', '2022-06-02 12:34:05', '2022-06-02 12:34:05', NULL),
(5, 6, 'Is Premium', '2022-07-19 07:19:24', '2022-07-19 07:19:24', NULL),
(4, 6, 'Is Premium', '2022-07-19 07:19:24', '2022-07-19 07:19:24', NULL),
(4, 5, 'Storage', '2022-06-02 12:34:54', '2022-06-02 12:34:54', NULL),
(5, 5, 'تخزين', '2022-06-02 12:34:54', '2022-06-02 12:34:54', NULL),
(4, 7, 'ss', '2022-08-05 12:32:31', '2022-08-05 12:32:31', NULL),
(5, 7, 'ss', '2022-08-05 12:32:31', '2022-08-05 12:32:31', NULL),
(4, 8, 'aaaa', '2022-09-08 08:43:05', '2022-09-08 08:43:05', NULL),
(5, 8, 'aaa', '2022-09-08 08:43:05', '2022-09-08 08:43:05', NULL),
(4, 9, 'Pay', '2022-09-08 17:54:10', '2022-09-08 17:54:10', NULL),
(5, 9, 'الدفع', '2022-09-08 17:54:10', '2022-09-08 17:54:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

DROP TABLE IF EXISTS `product_option_values`;
CREATE TABLE IF NOT EXISTS `product_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
CREATE TABLE IF NOT EXISTS `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_related`
--

INSERT INTO `product_related` (`product_id`, `related_id`) VALUES
(9, 1),
(11, 3),
(24, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_related_attributes`
--

DROP TABLE IF EXISTS `product_related_attributes`;
CREATE TABLE IF NOT EXISTS `product_related_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_related_attributes`
--

INSERT INTO `product_related_attributes` (`id`, `product_id`, `attribute_id`, `text`) VALUES
(7, 12, 1, 'Charger & Mobile'),
(8, 12, 2, 'Mobile 50'),
(9, 12, 3, 'Black'),
(10, 12, 5, 'Yes'),
(11, 12, 6, '5.3'),
(12, 12, 7, '720 X 1500'),
(13, 12, 11, 'Qualcomm Snapdragon'),
(14, 12, 12, '128 GB'),
(15, 12, 13, '256 GB'),
(16, 12, 15, 'Double'),
(32, 10, 1, 'Watch & Charger'),
(33, 10, 3, 'Black'),
(34, 10, 5, 'Yes'),
(35, 13, 2, 'Laptop100'),
(36, 13, 3, 'Black'),
(37, 13, 5, 'No'),
(38, 13, 6, '21 inch'),
(39, 13, 7, '1280 X 1900'),
(40, 13, 9, 'QLED'),
(41, 13, 11, 'Window 10'),
(42, 13, 16, 'Core i9'),
(43, 13, 12, '500 GB'),
(44, 18, 1, 'nteger venenatis sit amet elit in efficitur. Donec id libero sem.'),
(45, 19, 1, 'qwdqwdqqwdqwdq'),
(46, 20, 1, 'qwdqwdqqwdqwdqqwdqwdq'),
(47, 21, 1, 'qwdqwdqqwdqwdqqwdqwdq'),
(48, 24, 14, 'gdf');

-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
CREATE TABLE IF NOT EXISTS `product_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_special`
--

INSERT INTO `product_special` (`id`, `product_id`, `price`, `start_date`, `end_date`) VALUES
(8, 4, '40.0000', '2022-06-01', '2024-01-01'),
(9, 6, '60.0000', '2022-06-01', '2023-12-31'),
(10, 7, '500.0000', '2022-06-01', '2023-12-31'),
(11, 9, '300.0000', '2022-06-01', '2023-12-31'),
(7, 24, '54645.0000', '2023-01-20', '2023-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'admin', 'Good', '4.5', 1, '2022-06-04 11:20:56', NULL, NULL),
(2, 4, 34, 'admin', 'Abc', '4.5', 1, '2022-09-04 11:14:27', NULL, NULL),
(3, 8, 38, 'admin', 'Ftgf', '4.5', 1, '2022-09-20 00:01:47', NULL, NULL),
(4, 8, 31, 'admin', 'Fdgh', '4.5', 1, '2022-11-23 01:48:56', NULL, NULL),
(5, 6, 75, 'admin', 'Pretty one', '4.5', 1, '2022-11-24 09:18:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(9, 'Admin', 'web', '2021-07-15 01:27:06', '2021-07-15 01:27:06'),
(12, 'Demo User', 'web', '2022-03-14 13:26:23', '2022-03-14 13:26:23'),
(13, '234', 'web', '2022-04-12 07:23:41', '2022-04-12 07:23:41'),
(14, 'otrixweb', 'web', '2022-10-09 06:08:59', '2022-10-09 06:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(15, 1),
(17, 1),
(19, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(3, 2),
(4, 2),
(5, 2),
(10, 2),
(15, 2),
(19, 2),
(75, 2),
(79, 2),
(5, 3),
(1, 6),
(6, 6),
(11, 6),
(15, 6),
(20, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(2, 7),
(6, 7),
(10, 7),
(19, 7),
(26, 7),
(2, 8),
(6, 8),
(10, 8),
(19, 8),
(26, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(15, 9),
(17, 9),
(19, 9),
(21, 9),
(22, 9),
(23, 9),
(24, 9),
(25, 9),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 9),
(47, 9),
(48, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(54, 9),
(55, 9),
(56, 9),
(57, 9),
(58, 9),
(59, 9),
(60, 9),
(61, 9),
(62, 9),
(63, 9),
(64, 9),
(65, 9),
(66, 9),
(67, 9),
(68, 9),
(69, 9),
(71, 9),
(72, 9),
(73, 9),
(74, 9),
(75, 9),
(76, 9),
(77, 9),
(78, 9),
(79, 9),
(80, 9),
(81, 9),
(82, 9),
(86, 9),
(87, 9),
(88, 9),
(89, 9),
(90, 9),
(91, 9),
(92, 9),
(93, 9),
(94, 9),
(95, 9),
(96, 9),
(97, 9),
(98, 9),
(101, 9),
(102, 9),
(103, 9),
(105, 9),
(106, 9),
(21, 10),
(22, 10),
(23, 10),
(25, 10),
(26, 10),
(27, 10),
(42, 10),
(43, 10),
(44, 10),
(47, 10),
(48, 10),
(49, 10),
(3, 12),
(5, 12),
(7, 12),
(11, 12),
(19, 12),
(21, 12),
(23, 12),
(25, 12),
(27, 12),
(30, 12),
(32, 12),
(36, 12),
(40, 12),
(42, 12),
(44, 12),
(46, 12),
(47, 12),
(53, 12),
(57, 12),
(59, 12),
(61, 12),
(63, 12),
(65, 12),
(69, 12),
(75, 12),
(77, 12),
(79, 12),
(81, 12),
(87, 12),
(90, 12),
(91, 12),
(94, 12),
(105, 12),
(106, 12),
(1, 13),
(5, 14),
(12, 14),
(31, 14),
(40, 14);

-- --------------------------------------------------------

--
-- Table structure for table `seo_url`
--

DROP TABLE IF EXISTS `seo_url`;
CREATE TABLE IF NOT EXISTS `seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=534 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `store_id`, `key`, `value`, `serialized`) VALUES
(533, 1, 'config_alert_mail', 'Register,Orders', NULL),
(532, 1, 'config_smtp_timeout', '25', NULL),
(531, 1, 'config_smtp_port', '25', NULL),
(530, 1, 'config_smtp_password', 'xdygafrvjuduuqsm', NULL),
(527, 1, 'config_mail_engine', 'smtp', NULL),
(528, 1, 'config_smtp_hostname', 'smtp.googlemail.com', NULL),
(529, 1, 'config_smtp_username', 'otrixapp@gmail.com', NULL),
(526, 1, 'config_youtube_url', 'https://www.youtube.com/channel/UCiWzLziMAOk-oB0pig8TkEg/', NULL),
(525, 1, 'config_insta_url', 'https://www.instagram.com/', NULL),
(524, 1, 'config_twitter_url', 'https://twitter.com/login?lang=en', NULL),
(523, 1, 'config_linkedin_url', 'https://www.linkedin.com/', NULL),
(522, 1, 'config_fb_url', 'https://www.facebook.com/', NULL),
(521, 1, 'config_meta_tag_keywords', 'asd', NULL),
(520, 1, 'config_meta_tag_description', 'asd', NULL),
(519, 1, 'config_meta_title', 'sad', NULL),
(518, 1, 'config_store_url', 'Otrix.com', NULL),
(516, 1, 'config_fax', '380001', NULL),
(517, 1, 'config_currency', '$', NULL),
(513, 1, 'config_geocode', '', NULL),
(514, 1, 'config_email', 'otrixapp@gmail.com', NULL),
(515, 1, 'config_telephone', '09898989898', NULL),
(512, 1, 'config_address', 'Building Number 121\r\nGround floor, Office 2 Otrixweb\r\nCommercial, Otrixcity', NULL),
(511, 1, 'config_store_owner', 'Otrix', NULL),
(510, 1, 'config_store_name', 'Otrixcommerce', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shipping_charge` decimal(15,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `shipping_charge`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free  (10 - 15 Days)', '0.00', 1, '2022-03-16 04:29:45', '2022-03-16 04:29:45', NULL),
(2, 'Fast Shipping', '10.00', 1, '2022-03-16 04:30:09', '2022-03-16 04:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
CREATE TABLE IF NOT EXISTS `stock_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_status`
--

INSERT INTO `stock_status` (`id`, `language_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Pending', 1, '2021-08-01 02:17:33', '2021-08-01 02:17:33', NULL),
(2, NULL, 'success', 1, '2022-04-12 06:49:36', '2022-04-12 06:49:43', '2022-04-12 06:49:43'),
(3, NULL, 'asd', 1, '2022-04-12 06:53:02', '2022-04-12 06:53:06', '2022-04-12 06:53:06'),
(4, NULL, 'sad', 1, '2022-04-12 07:17:33', '2022-04-12 07:17:36', '2022-04-12 07:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `store_product_option`
--

DROP TABLE IF EXISTS `store_product_option`;
CREATE TABLE IF NOT EXISTS `store_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT '0.00',
  `color_code` varchar(25) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_product_option`
--

INSERT INTO `store_product_option` (`product_option_id`, `product_id`, `option_id`, `label`, `price`, `color_code`, `required`) VALUES
(73, 18, 1, 'Label 2', '50.00', 'Green', NULL),
(72, 18, 1, 'Label 1', '25.00', 'Red', NULL),
(4, 2, 2, '5', NULL, '', NULL),
(5, 2, 2, '6', NULL, '', NULL),
(6, 2, 2, '7', NULL, '', NULL),
(71, 3, 2, 'xl', '10.00', '', NULL),
(70, 3, 2, 'md', NULL, '', NULL),
(69, 3, 2, 'sm', NULL, '', NULL),
(32, 24, 1, 'White', NULL, '#ffffff', NULL),
(31, 24, 1, 'Black', '10.00', '#000000', NULL),
(38, 28, 1, '45', '435.00', '35', NULL),
(37, 28, 1, '35', '35.00', '35', NULL),
(50, 30, 20, 'option 1', '50.00', '', NULL),
(49, 30, 20, 'option 2', NULL, '', NULL),
(48, 30, 21, 'option 3', '60.00', '', NULL),
(47, 30, 21, 'option 4', '1.00', '', NULL),
(68, 3, 2, 'xxl', '20.00', '', NULL),
(58, 8, 2, 'sm', NULL, '', NULL),
(59, 8, 2, 'md', '10.00', '', NULL),
(60, 8, 2, 'xl', '50.00', '', NULL),
(61, 8, 2, 'xxl', '100.00', '', NULL),
(62, 11, 1, 'Blue', NULL, '#5dadec', NULL),
(63, 11, 1, 'Black', '50.00', '#000', NULL),
(74, 18, 1, 'Label 3', '75.00', 'Blue', NULL),
(75, 24, 2, '3534', '3242.00', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
CREATE TABLE IF NOT EXISTS `tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` tinyint(1) NOT NULL COMMENT '1=percentage,2=fixed',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`id`, `name`, `rate`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GST 18%', '18.0000', 1, 1, '2021-08-01 02:16:12', '2021-08-01 02:16:12', NULL),
(2, '234', '324.0000', 1, 1, '2022-04-12 07:21:17', '2022-04-12 07:21:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `opening_amount` int(11) NOT NULL DEFAULT '0',
  `current_amount` int(11) NOT NULL DEFAULT '0',
  `opening_date` date DEFAULT NULL,
  `daily_amount` int(11) DEFAULT NULL,
  `amount_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_sms_date` date DEFAULT NULL,
  `village_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `loan_only` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=632 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `mobile`, `is_admin`, `opening_amount`, `current_amount`, `opening_date`, `daily_amount`, `amount_type`, `last_sms_date`, `village_name`, `status`, `loan_only`, `created_at`, `updated_at`, `deleted_at`) VALUES
(627, 'Otrix Admin', 'superadmin@mail.com', NULL, '$2y$10$.F73AKKOVkrUhqNk.sdhfOTA92iw6qgkwWF9I2RIM9iVT1gvG06YS', 'qaPI41AB7KK2ZNPRAfk7UCG9l1wasXsIY45EgvOD3IDHgS9PAxoZ0gZY8g0O', '9898252599', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2021-12-11 23:11:41', NULL),
(629, 'Demo User', 'admin@mail.com', NULL, '$2y$10$i9TLoCpyzs0Jq2UjuBmDl.TRYoK7D9TtbPTJ2zCgGmwEraxfQ/bWS', 'MInlMN2UrRV6m6NtyE6TAur3dyUm9b1jIL4DCwLCGfZXb6VNCC7Z2MRNa88D', '1234561233', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-12-11 14:45:24', '2022-03-14 13:36:16', NULL),
(631, '5435', 'superadmin4@mail.com', NULL, '$2y$10$BBr3SfDxVJ33kQe6lzc0qOMuevNP3fTKdPzJ70pft5nd9RmETcc/y', NULL, '43', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-04-12 07:23:04', '2022-04-12 07:23:09', '2022-04-12 07:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

DROP TABLE IF EXISTS `weight_class`;
CREATE TABLE IF NOT EXISTS `weight_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  `value` decimal(15,8) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`id`, `name`, `unit`, `value`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asd', '34', '34.00000000', 1, '2021-08-01 02:17:16', '2021-08-01 02:17:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CUSTOMER` (`customer_id`),
  KEY `PRODUCTS` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_id`) VALUES
(3, 3, 10),
(4, 3, 13),
(5, 6, 3),
(7, 11, 11),
(8, 15, 3),
(9, 15, 13),
(10, 15, 1),
(14, 17, 3),
(15, 9, 1),
(16, 9, 3),
(19, 22, 1),
(20, 25, 1),
(21, 25, 3),
(22, 25, 13),
(23, 25, 12),
(24, 25, 4),
(25, 25, 6),
(26, 25, 7),
(27, 25, 9),
(28, 25, 2),
(29, 29, 3),
(32, 31, 8),
(50, 34, 8),
(40, 34, 54),
(46, 34, 17),
(52, 1, 17),
(45, 34, 6),
(41, 34, 19),
(42, 34, 13),
(54, 40, 17),
(55, 40, 6),
(58, 31, 6),
(60, 67, 18),
(61, 67, 8),
(62, 67, 1),
(63, 67, 7),
(65, 72, 13),
(69, 40, 1),
(71, 78, 1),
(72, 78, 3),
(73, 79, 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
