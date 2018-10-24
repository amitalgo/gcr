-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 03:22 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gcrsql`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `add_detail`, `image`, `is_active`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '  Demo  ', '    <p>Digital Signage Solutions<br></p>  ', 'storage/app/public/Testimonial/1522938472solution.jpg', 1, '0', '2018-02-15 05:35:06', '2018-05-15 06:44:52'),
(2, '       Add second       ', '              <p><span style=\"font-family: \" arial=\"\" black\";=\"\" color:=\"\" rgb(255,=\"\" 156,=\"\" 0);\"=\"\">Now buy 5 Units at Special Prices</span></p>       ', 'storage/app/public/Testimonial/1522938251News.jpg', 1, '0', '2018-02-15 06:34:37', '2018-05-15 06:44:30'),
(3, '           ECS2100-10PE           ', '<p><a href=\"http://www.gcrcloud.co.in/products/ethernet-switches\" style=\"color: rgb(255, 255, 255);\">8 Port Smart PoE Switch for Surveillance&nbsp;</a></p>', 'storage/Testimonial/1524128301Untitled.png', 1, '0', '2018-02-15 06:34:57', '2018-07-18 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ad_pages`
--

CREATE TABLE `ad_pages` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `ads_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_pages`
--

INSERT INTO `ad_pages` (`id`, `page_id`, `ads_id`, `deleted`, `is_active`) VALUES
(17, 4, 4, '0', 1),
(18, 5, 4, '0', 1),
(19, 11, 4, '0', 1),
(211, 5, 2, '0', 1),
(212, 6, 2, '0', 1),
(213, 7, 2, '0', 1),
(214, 8, 2, '0', 1),
(215, 9, 2, '0', 1),
(216, 10, 2, '0', 1),
(217, 11, 2, '0', 1),
(218, 12, 2, '0', 1),
(219, 13, 2, '0', 1),
(220, 14, 2, '0', 1),
(221, 4, 1, '0', 1),
(222, 5, 1, '0', 1),
(223, 6, 1, '0', 1),
(224, 7, 1, '0', 1),
(225, 8, 1, '0', 1),
(226, 9, 1, '0', 1),
(227, 10, 1, '0', 1),
(228, 11, 1, '0', 1),
(229, 12, 1, '0', 1),
(230, 13, 1, '0', 1),
(231, 4, 3, '0', 1),
(232, 7, 3, '0', 1),
(233, 11, 3, '0', 1),
(234, 13, 3, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `deleted`, `is_active`, `created_at`, `url_slug`) VALUES
(1, 'Solution Videos', '0', 1, '2018-02-13 05:28:51', 'solution-videos'),
(2, 'Training Videos', '0', 1, '2018-02-16 07:41:23', 'training-videos'),
(3, 'Online Demos', '0', 1, '2018-04-05 14:26:28', 'online-demos'),
(4, 'Corporate Video', '0', 1, '2018-05-02 06:34:12', 'corporate-video');

-- --------------------------------------------------------

--
-- Table structure for table `channel_partners`
--

CREATE TABLE `channel_partners` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_testimonials`
--

CREATE TABLE `client_testimonials` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_testimonials`
--

INSERT INTO `client_testimonials` (`id`, `country_id`, `name`, `company_name`, `designation`, `testimonial`, `image`, `deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'testimonial', 'Samsung', 'Manager', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, \r\nveritatis nulla eum laudantium totam tempore optio doloremque laboriosam\r\n quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi\r\n accusamus.<br></p>', 'storage/Testimonial/1518691534Desert.jpg', '0', 1, '2018-02-15 10:45:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_backups`
--

CREATE TABLE `contact_backups` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `industry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_size` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `office_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `interested` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_backups`
--

INSERT INTO `contact_backups` (`id`, `first_name`, `last_name`, `email`, `industry`, `country`, `topic`, `company_name`, `company_size`, `website`, `address`, `office_number`, `created_at`, `interested`) VALUES
(1, 'asim', 'doe', 'asim@technople.in', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'fff', '12233', '2018-02-16 13:21:21', NULL),
(2, 'asim', 'doe', 'asim@technople2.in', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'dd', '12233', '2018-02-16 13:37:50', NULL),
(3, 'asim', 'sagir', 'admin@admin.com', 'Industry', 'India', 'I want to be a certified partner', 'demo', 50, 'http://www.google.com', 'ssss', '12233', '2018-02-16 13:42:34', NULL),
(4, 'aditya', 'rao', 'admin@admin.com', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'asim', '12233', '2018-02-16 13:45:49', NULL),
(5, 'amit', 'c', 'admin@admin.com', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'sss', '12233', '2018-02-16 13:48:04', NULL),
(6, 'asim', 'sagir', 'admin@admin.com', 'Industry', 'India', 'Others', 'demo', 0, 'http://www.google.com', 'dddd', '12233', '2018-02-16 14:26:22', NULL),
(7, 'asim', 'sagir', 'asim@technople2.in', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'ddd', '12233', '2018-02-16 14:28:32', NULL),
(8, 'John', 'doe', 'admin@admin.com', 'Industry', 'India', 'I want to be a certified partner', 'demo', 0, 'http://www.google.com', 'ddddd', 'ffff', '2018-02-16 15:24:50', NULL),
(9, 'John', 'sagir', 'asim@technople.in', NULL, 'India', NULL, 'demo', NULL, 'http://www.google.com', 'dddddd', '123456789', '2018-02-27 12:53:08', NULL),
(10, 'asim', 'sagir', 'asim@technople2.in', NULL, 'India', NULL, 'demo', NULL, NULL, 'gg', '123456789', '2018-03-21 13:13:40', NULL),
(11, 'demo', 'demolast', 'admin@admin.com', NULL, 'India', NULL, 'aa', NULL, 'aaa', 'fffff', '1234567890', '2018-04-18 10:18:55', NULL),
(12, 'demo', 'demolast', 'admin@admin.com', NULL, 'USA', NULL, 'aa', NULL, 'aaa', 'GG', '1234567890', '2018-04-18 10:19:27', NULL),
(13, 'h', 'h', 'admin@admin.com', NULL, 'India', NULL, 'd', NULL, 'ddd', 'ff', '222', '2018-04-23 13:17:09', NULL),
(14, 'asim', 'sagir', 'asim@technople.in', NULL, 'India', NULL, 'technople', NULL, 'technople.in', 'technople', '12345677889', '2018-04-24 04:43:01', NULL),
(15, 'asim', 'sagir', 'asim@technople.in', NULL, 'India', NULL, 'technople', NULL, 'technople.in', 'technople', '12345677889', '2018-04-24 04:49:27', NULL),
(16, 'Abhinav', 'S', 'asdasd@yuy.com', NULL, 'India', NULL, 'asdasd', NULL, '', 'Test', 'asfas', '2018-05-02 08:14:04', NULL),
(17, 'demo', 'test', 'admin@admin.com', 'Hotel/Hospitality', 'India', 'MSP', 'de', NULL, 'www,somewebsite.com', 'sss', '456545654', '2018-05-02 10:55:14', NULL),
(18, 'Sachin', 'Waingankar', 'sachin.waingankar@gcrcloud.com', 'Others', 'India', 'MSP', 'Global Channel Resources', NULL, 'www.gcrcloud.com', 'Andheri', '9930346993', '2018-05-02 11:12:47', NULL),
(19, 'Amod', 'Phadke', 'iamamod@gmail.com', 'Education', 'India', 'Customer', 'Gcr india', NULL, 'Www.gripsystems.in', 'Mumbai', '9820932892', '2018-05-02 11:19:01', NULL),
(20, 'Test', 'Test', 'Test@test.com', 'Hotel/Hospitality', 'India', 'MSP', 'Test', NULL, 'www.Test.com', 'Test', 'asdasdasd', '2018-05-04 07:18:20', NULL),
(21, 'Test', 'te', 'Test@test.com', 'Hotel/Hospitality', 'India', 'MSP', 'asdasd', NULL, 'gcr.com', 'xcsdfsdf', 'asdugasiudg', '2018-05-05 07:59:10', NULL),
(22, 's', 's', 'admin@admin.com', 'Hotel/Hospitality', 'India', 'Customer', 's', NULL, 's', 'dd', '111', '2018-05-07 09:15:47', 'ddddff'),
(23, 'asim', 'Abbasi', 'asim@technople.in', 'Hotel/Hospitality', 'India', 'Managed Service Provider', 'technople', NULL, 'technople.in', 'demo ', '0001110001', '2018-05-09 11:09:15', 'demo '),
(24, 'asim', 'Abbasi', 'asim@technople.in', 'Hotel/Hospitality', 'India', 'Managed Service Provider', 'technople', NULL, 'technople.in', 'test', '0001110001', '2018-05-09 12:40:45', 'testing'),
(25, 'Test', 'Test', 'Test@test.com', 'Hotel/Hospitality', 'India', 'Managed Service Provider', 'Test', NULL, 'www.Test.com', 'Test', '98986987098908', '2018-05-16 08:13:31', 'Test'),
(26, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-22 06:54:57', ''),
(27, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-22 06:55:18', ''),
(28, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-22 06:56:21', ''),
(29, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-22 06:57:41', ''),
(30, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-22 06:58:37', ''),
(31, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-23 04:55:23', ''),
(32, '', '', '', '', 'India', 'Managed Service Provider', '', NULL, '', '', '', '2018-05-23 05:08:42', ''),
(33, 'testing', 'dddddddd', 'asim@technole.in', 'Hotel/Hospitality', 'India', 'Managed Service Provider', 'testin', NULL, '', 'fff', '4', '2018-05-23 06:44:17', 'ffff'),
(34, 'test', 'test', 'Test@test.com', 'Hotel/Hospitality', 'India', 'Managed Service Provider', 'test', NULL, 'www.Test.com', 'test', '1234567891011121314', '2018-05-28 06:48:51', 'test'),
(35, 'Landingpage Test', 'Test', 'LandingpageTest@test.com', 'Hotel/Hospitality', 'India', 'MSP', 'Landingpage Test', NULL, 'www.Test.com', 'Landingpage Test', '98999983838392', '2018-05-29 07:39:30', 'Landingpage Test'),
(36, 'aaa', 'abbasi', 'admin@admin.com', NULL, 'India', NULL, 'test', NULL, '', 'test', '123456789', '2018-05-31 09:21:33', NULL),
(37, 'Abhinav', 'Test', 'test@test.com', NULL, 'India', NULL, 'Tets', NULL, 'www.test.com', 'test', '3212323234', '2018-05-31 10:18:11', NULL),
(38, 'asim', 'sagir', 'asim.sagir@gmail.com', '', 'India', 'MSP', '', NULL, '', 'mauaima ', '09910987668', '2018-06-07 04:45:24', ''),
(39, 'asss', '', 'asa@gmail.com', '', 'India', 'MSP', '', NULL, '', '', '65412369', '2018-06-07 04:49:49', ''),
(40, 'Test', '', 'trbs@gmail.com', '', 'India', 'MSP', '', NULL, '', '', '4563217895', '2018-06-07 04:57:31', ''),
(41, 'Test', '', 'trbs@gmail.com', '', 'India', 'MSP', '', NULL, '', '', '4563217895', '2018-06-07 05:02:41', ''),
(42, 'Amit', 'Chaurasia', 'admin@admin.com', NULL, 'India', NULL, 'test', NULL, NULL, 'null', '7878787878', '2018-07-17 10:26:29', NULL),
(43, 'Test', 'Test', 'amitc@technople.in', 'Hotel/Hospitality', 'India', 'Customer', 'ddd', NULL, 'www.technople.com', 'dd', '789456', '2018-07-19 13:16:17', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `deleted`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'India', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'USA', '0', '0000-00-00 00:00:00', '2018-02-13 04:53:20', 1),
(3, 'Japan', '0', '2018-02-12 04:49:01', '2018-06-14 12:52:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `event_heading` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `event_location` longtext COLLATE utf8_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `thumb` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_attachments`
--

CREATE TABLE `events_attachments` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `attachment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `support_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support_numbers` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g_file_system`
--

CREATE TABLE `g_file_system` (
  `id` int(11) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `original_name` varchar(100) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `table_key` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `mime_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_file_system`
--

INSERT INTO `g_file_system` (`id`, `path`, `original_name`, `file_name`, `type`, `table_name`, `table_key`, `status`, `create_date`, `mime_type`) VALUES
(372, 'cloud/commerce/product/cloudproduct/779', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 1, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(373, 'cloud/commerce/product/cloudproduct/851', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 2, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(374, 'cloud/commerce/product/cloudproduct/832', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 3, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(375, 'cloud/commerce/product/cloudproduct/133', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 4, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(376, 'cloud/commerce/product/cloudproduct/132', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 5, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(377, 'cloud/commerce/product/cloudproduct/227', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 6, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(378, 'cloud/commerce/product/cloudproduct/836', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 7, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(379, 'cloud/commerce/product/cloudproduct/921', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 8, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(380, 'cloud/commerce/product/cloudproduct/212', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 9, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(381, 'cloud/commerce/product/cloudproduct/278', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 10, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(382, 'cloud/commerce/product/cloudproduct/893', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 11, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(383, 'cloud/commerce/product/cloudproduct/894', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 12, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(384, 'cloud/commerce/product/cloudproduct/376', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 13, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(385, 'cloud/commerce/product/cloudproduct/140', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 14, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(386, 'cloud/commerce/product/cloudproduct/141', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 15, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(387, 'cloud/commerce/product/cloudproduct/142', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 16, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(388, 'cloud/commerce/product/cloudproduct/169', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 17, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(389, 'cloud/commerce/product/cloudproduct/170', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 18, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(390, 'cloud/commerce/product/cloudproduct/206', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 19, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(391, 'cloud/commerce/product/cloudproduct/209', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 20, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(392, 'cloud/commerce/product/cloudproduct/210', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 21, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(393, 'cloud/commerce/product/cloudproduct/335', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 22, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(394, 'cloud/commerce/product/cloudproduct/184', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 23, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(395, 'cloud/commerce/product/cloudproduct/185', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 24, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(396, 'cloud/commerce/product/cloudproduct/186', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 25, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(397, 'cloud/commerce/product/cloudproduct/504', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 26, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(398, 'cloud/commerce/product/cloudproduct/460', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 27, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(399, 'cloud/commerce/product/cloudproduct/695', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 28, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(400, 'cloud/commerce/product/cloudproduct/477', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 29, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(401, 'cloud/commerce/product/cloudproduct/478', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 30, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(402, 'cloud/commerce/product/cloudproduct/627', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 31, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(403, 'cloud/commerce/product/cloudproduct/629', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 32, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(404, 'cloud/commerce/product/cloudproduct/668', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 33, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(405, 'cloud/commerce/product/cloudproduct/669', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 34, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(406, 'cloud/commerce/product/cloudproduct/670', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 35, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(407, 'cloud/commerce/product/cloudproduct/671', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 36, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(408, 'cloud/commerce/product/cloudproduct/632', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 37, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(409, 'cloud/commerce/product/cloudproduct/633', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 38, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(410, 'cloud/commerce/product/cloudproduct/634', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 39, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(411, 'cloud/commerce/product/cloudproduct/749', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 40, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(412, 'cloud/commerce/product/cloudproduct/838', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 41, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(413, 'cloud/commerce/product/cloudproduct/845', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 42, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(414, 'cloud/commerce/product/cloudproduct/846', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 43, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(415, 'cloud/commerce/product/cloudproduct/847', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 44, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(416, 'cloud/commerce/product/cloudproduct/848', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 45, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(417, 'cloud/commerce/product/cloudproduct/849', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 46, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(418, 'cloud/commerce/product/cloudproduct/850', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 47, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(419, 'cloud/commerce/product/cloudproduct/853', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 48, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(420, 'cloud/commerce/product/cloudproduct/854', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 49, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(421, 'cloud/commerce/product/cloudproduct/176', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 50, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(422, 'cloud/commerce/product/cloudproduct/284', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 51, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(423, 'cloud/commerce/product/cloudproduct/435', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 52, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(424, 'cloud/commerce/product/cloudproduct/723', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 53, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(425, 'cloud/commerce/product/cloudproduct/724', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 54, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(426, 'cloud/commerce/product/cloudproduct/840', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 55, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(427, 'cloud/commerce/product/cloudproduct/834', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 56, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(428, 'cloud/commerce/product/cloudproduct/830', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 57, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(429, 'cloud/commerce/product/cloudproduct/942', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 58, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(430, 'cloud/commerce/product/cloudproduct/878', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 59, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(431, 'cloud/commerce/product/cloudproduct/943', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 60, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(432, 'cloud/commerce/product/cloudproduct/915', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 61, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(433, 'cloud/commerce/product/cloudproduct/948', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 62, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(434, 'cloud/commerce/product/cloudproduct/947', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 63, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(435, 'cloud/commerce/product/cloudproduct/946', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 64, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(436, 'cloud/commerce/product/cloudproduct/938', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 65, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(437, 'cloud/commerce/product/cloudproduct/937', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 66, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(438, 'cloud/commerce/product/cloudproduct/936', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 67, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(439, 'cloud/commerce/product/cloudproduct/935', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 68, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(440, 'cloud/commerce/product/cloudproduct/933', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 69, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(441, 'cloud/commerce/product/cloudproduct/931', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 70, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(442, 'cloud/commerce/product/cloudproduct/924', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 71, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(443, 'cloud/commerce/product/cloudproduct/870', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 72, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(444, 'cloud/commerce/product/cloudproduct/871', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 73, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(445, 'cloud/commerce/product/cloudproduct/868', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 74, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(446, 'cloud/commerce/product/cloudproduct/869', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 75, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(447, 'cloud/commerce/product/cloudproduct/940', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 76, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(448, 'cloud/commerce/product/cloudproduct/959', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 77, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(449, 'cloud/commerce/product/cloudproduct/862', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 78, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(450, 'cloud/commerce/product/cloudproduct/961', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 79, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(451, 'cloud/commerce/product/cloudproduct/787', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 80, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(452, 'cloud/commerce/product/cloudproduct/502', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 81, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(453, 'cloud/commerce/product/cloudproduct/402', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 82, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(454, 'cloud/commerce/product/cloudproduct/971', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 83, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(455, 'cloud/commerce/product/cloudproduct/895', 'product_photo.jpg', 'product_photo.jpg', 'cloud_product', 'CloudProductAttachment', 84, 1, '2018-02-09 10:29:50', 'image/jpeg'),
(456, 'cloud/commerce/product/cloudproduct/132/screenshot', 'DT-310PS.409.png', 'DT-310PS.409.png', 'cloud_product', 'CloudProductAttachment', 85, 1, '2018-02-09 10:31:04', 'image/png'),
(457, 'cloud/commerce/product/cloudproduct/132/screenshot', 'DT-310PS.420.jpg', 'DT-310PS.420.jpg', 'cloud_product', 'CloudProductAttachment', 86, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(458, 'cloud/commerce/product/cloudproduct/132/screenshot', 'DT-310PS.428.jpg', 'DT-310PS.428.jpg', 'cloud_product', 'CloudProductAttachment', 87, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(459, 'cloud/commerce/product/cloudproduct/133/screenshot', 'product_data-133-screenshot-DT-310SS.jpg', 'product_data-133-screenshot-DT-310SS.jpg', 'cloud_product', 'CloudProductAttachment', 88, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(460, 'cloud/commerce/product/cloudproduct/133/screenshot', 'DT310SS-0128.713.jpg', 'DT310SS-0128.713.jpg', 'cloud_product', 'CloudProductAttachment', 89, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(461, 'cloud/commerce/product/cloudproduct/133/screenshot', 'DT-310SS.jpg', 'DT-310SS.jpg', 'cloud_product', 'CloudProductAttachment', 90, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(462, 'cloud/commerce/product/cloudproduct/141/screenshot', 'sunspot_top_modify.jpg', 'sunspot_top_modify.jpg', 'cloud_product', 'CloudProductAttachment', 91, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(463, 'cloud/commerce/product/cloudproduct/141/screenshot', 'Wall_Mount_modify.jpg', 'Wall_Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 92, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(464, 'cloud/commerce/product/cloudproduct/141/screenshot', 'SunSpot_IO_Profile_modify.jpg', 'SunSpot_IO_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 93, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(465, 'cloud/commerce/product/cloudproduct/141/screenshot', 'Side-Profile_modify.jpg', 'Side-Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 94, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(466, 'cloud/commerce/product/cloudproduct/141/screenshot', 'SunSpot_Top_Iso_2_modify.jpg', 'SunSpot_Top_Iso_2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 95, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(467, 'cloud/commerce/product/cloudproduct/141/screenshot', 'Ceiling-Mount_modify.jpg', 'Ceiling-Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 96, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(468, 'cloud/commerce/product/cloudproduct/142/screenshot', 'IgniteNet.jpg', 'IgniteNet.jpg', 'cloud_product', 'CloudProductAttachment', 97, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(469, 'cloud/commerce/product/cloudproduct/142/screenshot', 'Ceiling-Mount_modify.jpg', 'Ceiling-Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 98, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(470, 'cloud/commerce/product/cloudproduct/142/screenshot', 'Side-Profile_modify.jpg', 'Side-Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 99, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(471, 'cloud/commerce/product/cloudproduct/142/screenshot', 'SunSpot_IO_Profile_modify.jpg', 'SunSpot_IO_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 100, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(472, 'cloud/commerce/product/cloudproduct/142/screenshot', 'SunSpot_Top_Iso_2_modify.jpg', 'SunSpot_Top_Iso_2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 101, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(473, 'cloud/commerce/product/cloudproduct/142/screenshot', 'Wall_Mount_modify.jpg', 'Wall_Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 102, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(474, 'cloud/commerce/product/cloudproduct/169/screenshot', 'sunspot_top_modify.jpg', 'sunspot_top_modify.jpg', 'cloud_product', 'CloudProductAttachment', 103, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(475, 'cloud/commerce/product/cloudproduct/169/screenshot', 'Wall_Mount_modify.jpg', 'Wall_Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 104, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(476, 'cloud/commerce/product/cloudproduct/169/screenshot', 'SunSpot_IO_Profile_modify.jpg', 'SunSpot_IO_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 105, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(477, 'cloud/commerce/product/cloudproduct/169/screenshot', 'Side-Profile_modify.jpg', 'Side-Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 106, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(478, 'cloud/commerce/product/cloudproduct/169/screenshot', 'SunSpot_Top_Iso_2_modify.jpg', 'SunSpot_Top_Iso_2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 107, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(479, 'cloud/commerce/product/cloudproduct/169/screenshot', 'Ceiling-Mount_modify.jpg', 'Ceiling-Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 108, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(480, 'cloud/commerce/product/cloudproduct/170/screenshot', 'sunspot_top_modify.jpg', 'sunspot_top_modify.jpg', 'cloud_product', 'CloudProductAttachment', 109, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(481, 'cloud/commerce/product/cloudproduct/170/screenshot', 'Wall_Mount_modify.jpg', 'Wall_Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 110, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(482, 'cloud/commerce/product/cloudproduct/170/screenshot', 'SunSpot_IO_Profile_modify.jpg', 'SunSpot_IO_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 111, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(483, 'cloud/commerce/product/cloudproduct/170/screenshot', 'Side-Profile_modify.jpg', 'Side-Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 112, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(484, 'cloud/commerce/product/cloudproduct/170/screenshot', 'SunSpot_Top_Iso_2_modify.jpg', 'SunSpot_Top_Iso_2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 113, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(485, 'cloud/commerce/product/cloudproduct/170/screenshot', 'Ceiling-Mount_modify.jpg', 'Ceiling-Mount_modify.jpg', 'cloud_product', 'CloudProductAttachment', 114, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(486, 'cloud/commerce/product/cloudproduct/176/screenshot', 'DS-570-logo.jpg', 'DS-570-logo.jpg', 'cloud_product', 'CloudProductAttachment', 115, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(487, 'cloud/commerce/product/cloudproduct/176/screenshot', 'WebAccess_Architecture.jpg', 'WebAccess_Architecture.jpg', 'cloud_product', 'CloudProductAttachment', 116, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(488, 'cloud/commerce/product/cloudproduct/176/screenshot', 'IMM_UI_1.jpg', 'IMM_UI_1.jpg', 'cloud_product', 'CloudProductAttachment', 117, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(489, 'cloud/commerce/product/cloudproduct/176/screenshot', 'IMM_UI_2.jpg', 'IMM_UI_2.jpg', 'cloud_product', 'CloudProductAttachment', 118, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(490, 'cloud/commerce/product/cloudproduct/184/screenshot', 'NH221.jpg', 'NH221.jpg', 'cloud_product', 'CloudProductAttachment', 119, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(491, 'cloud/commerce/product/cloudproduct/184/screenshot', 'IMG_1687.JPG', 'IMG_1687.JPG', 'cloud_product', 'CloudProductAttachment', 120, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(492, 'cloud/commerce/product/cloudproduct/185/screenshot', 'HSNB101A_201A.jpg', 'HSNB101A_201A.jpg', 'cloud_product', 'CloudProductAttachment', 121, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(493, 'cloud/commerce/product/cloudproduct/186/screenshot', 'NB-1021.jpg', 'NB-1021.jpg', 'cloud_product', 'CloudProductAttachment', 122, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(494, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Front_Iso_modify.jpg', 'SkyFire_Front_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 123, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(495, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Front_Profile_modify.jpg', 'SkyFire_Front_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 124, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(496, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Rear_Profile_modify.jpg', 'SkyFire_Rear_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 125, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(497, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Front_Top_Profile_No_Internal_Antenna_modi', 'SkyFire_Front_Top_Profile_No_Internal_Antenna_modi', 'cloud_product', 'CloudProductAttachment', 126, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(498, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Top_Profile_DB_Internal_Ant_modify.jpg', 'SkyFire_Top_Profile_DB_Internal_Ant_modify.jpg', 'cloud_product', 'CloudProductAttachment', 127, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(499, 'cloud/commerce/product/cloudproduct/206/screenshot', 'SkyFire_Top_Profile_5G_Internal_Ant_modify.jpg', 'SkyFire_Top_Profile_5G_Internal_Ant_modify.jpg', 'cloud_product', 'CloudProductAttachment', 128, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(500, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Front_Iso_modify.jpg', 'SkyFire_Front_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 129, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(501, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Front_Profile_modify.jpg', 'SkyFire_Front_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 130, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(502, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Rear_Profile_modify.jpg', 'SkyFire_Rear_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 131, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(503, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Front_Top_Profile_No_Internal_Antenna_modi', 'SkyFire_Front_Top_Profile_No_Internal_Antenna_modi', 'cloud_product', 'CloudProductAttachment', 132, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(504, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Top_Profile_DB_Internal_Ant_modify.jpg', 'SkyFire_Top_Profile_DB_Internal_Ant_modify.jpg', 'cloud_product', 'CloudProductAttachment', 133, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(505, 'cloud/commerce/product/cloudproduct/209/screenshot', 'SkyFire_Top_Profile_5G_Internal_Ant_modify.jpg', 'SkyFire_Top_Profile_5G_Internal_Ant_modify.jpg', 'cloud_product', 'CloudProductAttachment', 134, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(506, 'cloud/commerce/product/cloudproduct/212/screenshot', 'IMM_UI_1.jpg', 'IMM_UI_1.jpg', 'cloud_product', 'CloudProductAttachment', 135, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(507, 'cloud/commerce/product/cloudproduct/212/screenshot', 'IMM_UI_2.jpg', 'IMM_UI_2.jpg', 'cloud_product', 'CloudProductAttachment', 136, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(508, 'cloud/commerce/product/cloudproduct/212/screenshot', 'WebAccess_Architecture.jpg', 'WebAccess_Architecture.jpg', 'cloud_product', 'CloudProductAttachment', 137, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(509, 'cloud/commerce/product/cloudproduct/227/screenshot', 'frame-work_02.jpg', 'frame-work_02.jpg', 'cloud_product', 'CloudProductAttachment', 139, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(510, 'cloud/commerce/product/cloudproduct/227/screenshot', 'frame-work.jpg', 'frame-work.jpg', 'cloud_product', 'CloudProductAttachment', 140, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(511, 'cloud/commerce/product/cloudproduct/278/screenshot', 'SG500_side-1_modify.jpg', 'SG500_side-1_modify.jpg', 'cloud_product', 'CloudProductAttachment', 141, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(512, 'cloud/commerce/product/cloudproduct/278/screenshot', 'SG500_-1_modify.jpg', 'SG500_-1_modify.jpg', 'cloud_product', 'CloudProductAttachment', 142, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(513, 'cloud/commerce/product/cloudproduct/284/screenshot', 'RetailCam-pic1_modify.jpg', 'RetailCam-pic1_modify.jpg', 'cloud_product', 'CloudProductAttachment', 143, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(514, 'cloud/commerce/product/cloudproduct/284/screenshot', 'RetailCam-pic2_modify.jpg', 'RetailCam-pic2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 144, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(515, 'cloud/commerce/product/cloudproduct/284/screenshot', 'RetailCam-pic3_modify.jpg', 'RetailCam-pic3_modify.jpg', 'cloud_product', 'CloudProductAttachment', 145, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(516, 'cloud/commerce/product/cloudproduct/335/screenshot', 'Top_Iso_modify.jpg', 'Top_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 146, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(517, 'cloud/commerce/product/cloudproduct/335/screenshot', 'spark_top_modify.jpg', 'spark_top_modify.jpg', 'cloud_product', 'CloudProductAttachment', 147, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(518, 'cloud/commerce/product/cloudproduct/335/screenshot', 'IO_Door_modify.jpg', 'IO_Door_modify.jpg', 'cloud_product', 'CloudProductAttachment', 148, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(519, 'cloud/commerce/product/cloudproduct/335/screenshot', 'Front_Iso_modify.jpg', 'Front_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 149, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(520, 'cloud/commerce/product/cloudproduct/335/screenshot', 'IgniteNet2_modify.jpg', 'IgniteNet2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 150, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(521, 'cloud/commerce/product/cloudproduct/335/screenshot', 'IgniteNet_modify.jpg', 'IgniteNet_modify.jpg', 'cloud_product', 'CloudProductAttachment', 151, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(522, 'cloud/commerce/product/cloudproduct/402/screenshot', 'HSG-2000_or_5000_modify.jpg', 'HSG-2000_or_5000_modify.jpg', 'cloud_product', 'CloudProductAttachment', 154, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(523, 'cloud/commerce/product/cloudproduct/402/screenshot', 'HSA.jpg', 'HSA.jpg', 'cloud_product', 'CloudProductAttachment', 155, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(524, 'cloud/commerce/product/cloudproduct/435/screenshot', 'noodoe_watch_lead_modify.jpg', 'noodoe_watch_lead_modify.jpg', 'cloud_product', 'CloudProductAttachment', 157, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(525, 'cloud/commerce/product/cloudproduct/435/screenshot', 'waiter_wristband_modify.jpg', 'waiter_wristband_modify.jpg', 'cloud_product', 'CloudProductAttachment', 158, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(526, 'cloud/commerce/product/cloudproduct/435/screenshot', 'service_block_modify.jpg', 'service_block_modify.jpg', 'cloud_product', 'CloudProductAttachment', 159, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(527, 'cloud/commerce/product/cloudproduct/460/screenshot', 'AM-600.jpg', 'AM-600.jpg', 'cloud_product', 'CloudProductAttachment', 160, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(528, 'cloud/commerce/product/cloudproduct/460/screenshot', 'TP-100.jpg', 'TP-100.jpg', 'cloud_product', 'CloudProductAttachment', 161, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(529, 'cloud/commerce/product/cloudproduct/460/screenshot', 'TP-100_AM-600.jpg', 'TP-100_AM-600.jpg', 'cloud_product', 'CloudProductAttachment', 162, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(530, 'cloud/commerce/product/cloudproduct/478/screenshot', 'eyeSignView_modify.jpg', 'eyeSignView_modify.jpg', 'cloud_product', 'CloudProductAttachment', 169, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(531, 'cloud/commerce/product/cloudproduct/502/screenshot', 'CMG_layer.jpg', 'CMG_layer.jpg', 'cloud_product', 'CloudProductAttachment', 170, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(532, 'cloud/commerce/product/cloudproduct/502/screenshot', 'CMG.png', 'CMG.png', 'cloud_product', 'CloudProductAttachment', 171, 1, '2018-02-09 10:31:04', 'image/png'),
(533, 'cloud/commerce/product/cloudproduct/504/screenshot', 'log2.jpg', 'log2.jpg', 'cloud_product', 'CloudProductAttachment', 172, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(534, 'cloud/commerce/product/cloudproduct/504/screenshot', 'loggg.jpg', 'loggg.jpg', 'cloud_product', 'CloudProductAttachment', 173, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(535, 'cloud/commerce/product/cloudproduct/629/screenshot', 'V2Plus-01_modify.jpg', 'V2Plus-01_modify.jpg', 'cloud_product', 'CloudProductAttachment', 180, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(536, 'cloud/commerce/product/cloudproduct/629/screenshot', 'Solution_Introduction-1_modify.jpg', 'Solution_Introduction-1_modify.jpg', 'cloud_product', 'CloudProductAttachment', 181, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(537, 'cloud/commerce/product/cloudproduct/629/screenshot', 'Solution_Introduction-2_modify.jpg', 'Solution_Introduction-2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 182, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(538, 'cloud/commerce/product/cloudproduct/629/screenshot', 'Solution_Introduction-3_modify.jpg', 'Solution_Introduction-3_modify.jpg', 'cloud_product', 'CloudProductAttachment', 183, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(539, 'cloud/commerce/product/cloudproduct/629/screenshot', 'Solution_Introduction-4_modify.jpg', 'Solution_Introduction-4_modify.jpg', 'cloud_product', 'CloudProductAttachment', 184, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(540, 'cloud/commerce/product/cloudproduct/629/screenshot', 'Solution_Introduction-5_modify.jpg', 'Solution_Introduction-5_modify.jpg', 'cloud_product', 'CloudProductAttachment', 185, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(541, 'cloud/commerce/product/cloudproduct/632/screenshot', 'VA2600_front-door_s_modify.jpg', 'VA2600_front-door_s_modify.jpg', 'cloud_product', 'CloudProductAttachment', 186, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(542, 'cloud/commerce/product/cloudproduct/632/screenshot', 'license.jpg', 'license.jpg', 'cloud_product', 'CloudProductAttachment', 187, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(543, 'cloud/commerce/product/cloudproduct/633/screenshot', 'VA2600_front-door_s_modify.jpg', 'VA2600_front-door_s_modify.jpg', 'cloud_product', 'CloudProductAttachment', 188, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(544, 'cloud/commerce/product/cloudproduct/633/screenshot', 'license.jpg', 'license.jpg', 'cloud_product', 'CloudProductAttachment', 189, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(545, 'cloud/commerce/product/cloudproduct/634/screenshot', 'FileCruiser-1U-Server-(Front)_modify.jpg', 'FileCruiser-1U-Server-(Front)_modify.jpg', 'cloud_product', 'CloudProductAttachment', 190, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(546, 'cloud/commerce/product/cloudproduct/634/screenshot', 'VR2600-front_modify.jpg', 'VR2600-front_modify.jpg', 'cloud_product', 'CloudProductAttachment', 191, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(547, 'cloud/commerce/product/cloudproduct/634/screenshot', 'Dashboard_modify.jpg', 'Dashboard_modify.jpg', 'cloud_product', 'CloudProductAttachment', 192, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(548, 'cloud/commerce/product/cloudproduct/634/screenshot', 'LinksFilesShared.jpg', 'LinksFilesShared.jpg', 'cloud_product', 'CloudProductAttachment', 193, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(549, 'cloud/commerce/product/cloudproduct/634/screenshot', 'Preferences-Account.jpg', 'Preferences-Account.jpg', 'cloud_product', 'CloudProductAttachment', 194, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(550, 'cloud/commerce/product/cloudproduct/634/screenshot', 'Share_To01.jpg', 'Share_To01.jpg', 'cloud_product', 'CloudProductAttachment', 195, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(551, 'cloud/commerce/product/cloudproduct/668/screenshot', 'Vess_A2200_front_modify.jpg', 'Vess_A2200_front_modify.jpg', 'cloud_product', 'CloudProductAttachment', 197, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(552, 'cloud/commerce/product/cloudproduct/668/screenshot', 'Vess_A2200_left_side_modify.jpg', 'Vess_A2200_left_side_modify.jpg', 'cloud_product', 'CloudProductAttachment', 198, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(553, 'cloud/commerce/product/cloudproduct/668/screenshot', 'Vess_A2200_righ_side_modify.jpg', 'Vess_A2200_righ_side_modify.jpg', 'cloud_product', 'CloudProductAttachment', 199, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(554, 'cloud/commerce/product/cloudproduct/669/screenshot', 'Vess_A2600_front_door_left_side_modify.jpg', 'Vess_A2600_front_door_left_side_modify.jpg', 'cloud_product', 'CloudProductAttachment', 201, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(555, 'cloud/commerce/product/cloudproduct/669/screenshot', 'Vess_A2600_front_door_right_side.jpg', 'Vess_A2600_front_door_right_side.jpg', 'cloud_product', 'CloudProductAttachment', 202, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(556, 'cloud/commerce/product/cloudproduct/695/screenshot', 'KS710-side.jpg', 'KS710-side.jpg', 'cloud_product', 'CloudProductAttachment', 203, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(557, 'cloud/commerce/product/cloudproduct/695/screenshot', 'KS710-1.jpg', 'KS710-1.jpg', 'cloud_product', 'CloudProductAttachment', 204, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(558, 'cloud/commerce/product/cloudproduct/695/screenshot', 'KS710-2.jpg', 'KS710-2.jpg', 'cloud_product', 'CloudProductAttachment', 205, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(559, 'cloud/commerce/product/cloudproduct/695/screenshot', 'KS710-3.jpg', 'KS710-3.jpg', 'cloud_product', 'CloudProductAttachment', 206, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(560, 'cloud/commerce/product/cloudproduct/723/screenshot', 'noodoe_watch_lead_modify.jpg', 'noodoe_watch_lead_modify.jpg', 'cloud_product', 'CloudProductAttachment', 207, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(561, 'cloud/commerce/product/cloudproduct/723/screenshot', 'waiter_wristband_modify.jpg', 'waiter_wristband_modify.jpg', 'cloud_product', 'CloudProductAttachment', 208, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(562, 'cloud/commerce/product/cloudproduct/723/screenshot', 'service_block_modify.jpg', 'service_block_modify.jpg', 'cloud_product', 'CloudProductAttachment', 209, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(563, 'cloud/commerce/product/cloudproduct/724/screenshot', 'noodoe_watch_lead_modify.jpg', 'noodoe_watch_lead_modify.jpg', 'cloud_product', 'CloudProductAttachment', 210, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(564, 'cloud/commerce/product/cloudproduct/724/screenshot', 'waiter_wristband_modify.jpg', 'waiter_wristband_modify.jpg', 'cloud_product', 'CloudProductAttachment', 211, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(565, 'cloud/commerce/product/cloudproduct/724/screenshot', 'service_block_modify.jpg', 'service_block_modify.jpg', 'cloud_product', 'CloudProductAttachment', 212, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(566, 'cloud/commerce/product/cloudproduct/749/screenshot', '9090_pc1.png', '9090_pc1.png', 'cloud_product', 'CloudProductAttachment', 215, 1, '2018-02-09 10:31:04', 'image/png'),
(567, 'cloud/commerce/product/cloudproduct/749/screenshot', '9090_pc4.jpg', '9090_pc4.jpg', 'cloud_product', 'CloudProductAttachment', 216, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(568, 'cloud/commerce/product/cloudproduct/749/screenshot', '9090_pc3.jpg', '9090_pc3.jpg', 'cloud_product', 'CloudProductAttachment', 217, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(569, 'cloud/commerce/product/cloudproduct/749/screenshot', '9090_touch2.jpg', '9090_touch2.jpg', 'cloud_product', 'CloudProductAttachment', 218, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(570, 'cloud/commerce/product/cloudproduct/779/screenshot', 'analytics_800x600.jpg', 'analytics_800x600.jpg', 'cloud_product', 'CloudProductAttachment', 219, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(571, 'cloud/commerce/product/cloudproduct/779/screenshot', 'ShopJoy_800x600.png', 'ShopJoy_800x600.png', 'cloud_product', 'CloudProductAttachment', 220, 1, '2018-02-09 10:31:04', 'image/png'),
(572, 'cloud/commerce/product/cloudproduct/787/screenshot', 'HSA.jpg', 'HSA.jpg', 'cloud_product', 'CloudProductAttachment', 223, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(573, 'cloud/commerce/product/cloudproduct/787/screenshot', '2015-12-24_182449_modify.jpg', '2015-12-24_182449_modify.jpg', 'cloud_product', 'CloudProductAttachment', 224, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(574, 'cloud/commerce/product/cloudproduct/830/screenshot', 'CI-230.jpg', 'CI-230.jpg', 'cloud_product', 'CloudProductAttachment', 225, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(575, 'cloud/commerce/product/cloudproduct/832/screenshot', 'CI-230.jpg', 'CI-230.jpg', 'cloud_product', 'CloudProductAttachment', 226, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(576, 'cloud/commerce/product/cloudproduct/834/screenshot', 'CI-230.jpg', 'CI-230.jpg', 'cloud_product', 'CloudProductAttachment', 227, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(577, 'cloud/commerce/product/cloudproduct/838/screenshot', '9090_pc1.png', '9090_pc1.png', 'cloud_product', 'CloudProductAttachment', 230, 1, '2018-02-09 10:31:04', 'image/png'),
(578, 'cloud/commerce/product/cloudproduct/838/screenshot', '9090_pc4.jpg', '9090_pc4.jpg', 'cloud_product', 'CloudProductAttachment', 231, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(579, 'cloud/commerce/product/cloudproduct/838/screenshot', '9090_pc2.png', '9090_pc2.png', 'cloud_product', 'CloudProductAttachment', 232, 1, '2018-02-09 10:31:04', 'image/png'),
(580, 'cloud/commerce/product/cloudproduct/838/screenshot', 'trackingperspt.png', 'trackingperspt.png', 'cloud_product', 'CloudProductAttachment', 233, 1, '2018-02-09 10:31:04', 'image/png'),
(581, 'cloud/commerce/product/cloudproduct/838/screenshot', '9090_IW.jpg', '9090_IW.jpg', 'cloud_product', 'CloudProductAttachment', 234, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(582, 'cloud/commerce/product/cloudproduct/840/screenshot', 'outout-agent4_modified.png', 'outout-agent4_modified.png', 'cloud_product', 'CloudProductAttachment', 235, 1, '2018-02-09 10:31:04', 'image/png'),
(583, 'cloud/commerce/product/cloudproduct/840/screenshot', 'screencapture-mos123-tk-1488791115195_modified.png', 'screencapture-mos123-tk-1488791115195_modified.png', 'cloud_product', 'CloudProductAttachment', 236, 1, '2018-02-09 10:31:04', 'image/png'),
(584, 'cloud/commerce/product/cloudproduct/840/screenshot', 'screencapture-mos123-tk-1488791221121_modified.png', 'screencapture-mos123-tk-1488791221121_modified.png', 'cloud_product', 'CloudProductAttachment', 237, 1, '2018-02-09 10:31:04', 'image/png'),
(585, 'cloud/commerce/product/cloudproduct/845/screenshot', 'img_nsw100-28p_f_300_modified.png', 'img_nsw100-28p_f_300_modified.png', 'cloud_product', 'CloudProductAttachment', 239, 1, '2018-02-09 10:31:04', 'image/png'),
(586, 'cloud/commerce/product/cloudproduct/846/screenshot', 'img_nsw200-28p_f_300_modified.png', 'img_nsw200-28p_f_300_modified.png', 'cloud_product', 'CloudProductAttachment', 241, 1, '2018-02-09 10:31:04', 'image/png'),
(587, 'cloud/commerce/product/cloudproduct/847/screenshot', 'img_nap102_art_300_modified.png', 'img_nap102_art_300_modified.png', 'cloud_product', 'CloudProductAttachment', 244, 1, '2018-02-09 10:31:04', 'image/png'),
(588, 'cloud/commerce/product/cloudproduct/848/screenshot', 'img_nap203_art_300_modified.png', 'img_nap203_art_300_modified.png', 'cloud_product', 'CloudProductAttachment', 247, 1, '2018-02-09 10:31:04', 'image/png'),
(589, 'cloud/commerce/product/cloudproduct/849/screenshot', 'img_nap303_art_300_modified.png', 'img_nap303_art_300_modified.png', 'cloud_product', 'CloudProductAttachment', 250, 1, '2018-02-09 10:31:04', 'image/png'),
(590, 'cloud/commerce/product/cloudproduct/850/screenshot', 'img_nap353_art_300_modified.png', 'img_nap353_art_300_modified.png', 'cloud_product', 'CloudProductAttachment', 253, 1, '2018-02-09 10:31:04', 'image/png'),
(591, 'cloud/commerce/product/cloudproduct/851/screenshot', 'RE_EN_CH_v0.1.jpg', 'RE_EN_CH_v0.1.jpg', 'cloud_product', 'CloudProductAttachment', 254, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(592, 'cloud/commerce/product/cloudproduct/851/screenshot', 'RE_package.jpg', 'RE_package.jpg', 'cloud_product', 'CloudProductAttachment', 255, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(593, 'cloud/commerce/product/cloudproduct/853/screenshot', 'img_nsg100_f_300_modified.png', 'img_nsg100_f_300_modified.png', 'cloud_product', 'CloudProductAttachment', 257, 1, '2018-02-09 10:31:04', 'image/png'),
(594, 'cloud/commerce/product/cloudproduct/853/screenshot', 'img_nsg100_r_300_modified.png', 'img_nsg100_r_300_modified.png', 'cloud_product', 'CloudProductAttachment', 258, 1, '2018-02-09 10:31:04', 'image/png'),
(595, 'cloud/commerce/product/cloudproduct/854/screenshot', 'img_nsw100-10p_f_300.jpg', 'img_nsw100-10p_f_300.jpg', 'cloud_product', 'CloudProductAttachment', 260, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(596, 'cloud/commerce/product/cloudproduct/854/screenshot', 'img_nsw100-10p_p_300.jpg', 'img_nsw100-10p_p_300.jpg', 'cloud_product', 'CloudProductAttachment', 261, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(597, 'cloud/commerce/product/cloudproduct/868/screenshot', 'ECS2100-10P_1.jpg', 'ECS2100-10P_1.jpg', 'cloud_product', 'CloudProductAttachment', 262, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(598, 'cloud/commerce/product/cloudproduct/868/screenshot', 'ECS2100-10P_2.jpg', 'ECS2100-10P_2.jpg', 'cloud_product', 'CloudProductAttachment', 263, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(599, 'cloud/commerce/product/cloudproduct/868/screenshot', 'ECS2100-10P_3.jpg', 'ECS2100-10P_3.jpg', 'cloud_product', 'CloudProductAttachment', 264, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(600, 'cloud/commerce/product/cloudproduct/869/screenshot', 'ECS2100-10T_2.jpg', 'ECS2100-10T_2.jpg', 'cloud_product', 'CloudProductAttachment', 265, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(601, 'cloud/commerce/product/cloudproduct/869/screenshot', 'ECS2100-10T_1.jpg', 'ECS2100-10T_1.jpg', 'cloud_product', 'CloudProductAttachment', 266, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(602, 'cloud/commerce/product/cloudproduct/869/screenshot', 'ECS2100-10T_3.jpg', 'ECS2100-10T_3.jpg', 'cloud_product', 'CloudProductAttachment', 267, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(603, 'cloud/commerce/product/cloudproduct/870/screenshot', 'ECS2100-28P_1.jpg', 'ECS2100-28P_1.jpg', 'cloud_product', 'CloudProductAttachment', 268, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(604, 'cloud/commerce/product/cloudproduct/870/screenshot', 'ECS2100-28P_2.jpg', 'ECS2100-28P_2.jpg', 'cloud_product', 'CloudProductAttachment', 269, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(605, 'cloud/commerce/product/cloudproduct/871/screenshot', 'ECS4120-28F_v1-1_b_modified.jpg', 'ECS4120-28F_v1-1_b_modified.jpg', 'cloud_product', 'CloudProductAttachment', 270, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(606, 'cloud/commerce/product/cloudproduct/871/screenshot', 'ECS4120-28F_v1-1_f_modified.jpg', 'ECS4120-28F_v1-1_f_modified.jpg', 'cloud_product', 'CloudProductAttachment', 271, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(607, 'cloud/commerce/product/cloudproduct/871/screenshot', 'ECS4120-28F_v1-1_r_modified.jpg', 'ECS4120-28F_v1-1_r_modified.jpg', 'cloud_product', 'CloudProductAttachment', 272, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(608, 'cloud/commerce/product/cloudproduct/878/screenshot', 'S__10207236.jpg', 'S__10207236.jpg', 'cloud_product', 'CloudProductAttachment', 273, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(609, 'cloud/commerce/product/cloudproduct/878/screenshot', 'CMS_dongle_(rear).jpg', 'CMS_dongle_(rear).jpg', 'cloud_product', 'CloudProductAttachment', 274, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(610, 'cloud/commerce/product/cloudproduct/878/screenshot', 'CMS_dongle_Black.jpg', 'CMS_dongle_Black.jpg', 'cloud_product', 'CloudProductAttachment', 275, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(611, 'cloud/commerce/product/cloudproduct/878/screenshot', 'BBS_CMS_Solution_Structure_20170511.jpg', 'BBS_CMS_Solution_Structure_20170511.jpg', 'cloud_product', 'CloudProductAttachment', 276, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(612, 'cloud/commerce/product/cloudproduct/893/screenshot', '1488855799_thumb_630_516_modified.jpg', '1488855799_thumb_630_516_modified.jpg', 'cloud_product', 'CloudProductAttachment', 280, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(613, 'cloud/commerce/product/cloudproduct/893/screenshot', 'B_En_Specifications-03.gif', 'B_En_Specifications-03.gif', 'cloud_product', 'CloudProductAttachment', 281, 1, '2018-02-09 10:31:04', ''),
(614, 'cloud/commerce/product/cloudproduct/893/screenshot', '42_thumb_630_376_modified.jpg', '42_thumb_630_376_modified.jpg', 'cloud_product', 'CloudProductAttachment', 282, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(615, 'cloud/commerce/product/cloudproduct/894/screenshot', 'm1_01-p772hj_modified.jpg', 'm1_01-p772hj_modified.jpg', 'cloud_product', 'CloudProductAttachment', 286, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(616, 'cloud/commerce/product/cloudproduct/894/screenshot', 'M1_modified.png', 'M1_modified.png', 'cloud_product', 'CloudProductAttachment', 287, 1, '2018-02-09 10:31:04', 'image/png'),
(617, 'cloud/commerce/product/cloudproduct/894/screenshot', 'M1-5_modified.jpg', 'M1-5_modified.jpg', 'cloud_product', 'CloudProductAttachment', 288, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(618, 'cloud/commerce/product/cloudproduct/895/screenshot', 'timthumb__3__52T_modified.png', 'timthumb__3__52T_modified.png', 'cloud_product', 'CloudProductAttachment', 289, 1, '2018-02-09 10:31:04', 'image/png'),
(619, 'cloud/commerce/product/cloudproduct/895/screenshot', 'timthumb_52T_modified.png', 'timthumb_52T_modified.png', 'cloud_product', 'CloudProductAttachment', 290, 1, '2018-02-09 10:31:04', 'image/png'),
(620, 'cloud/commerce/product/cloudproduct/895/screenshot', 'timthumb__1__52T_modified.png', 'timthumb__1__52T_modified.png', 'cloud_product', 'CloudProductAttachment', 291, 1, '2018-02-09 10:31:04', 'image/png'),
(621, 'cloud/commerce/product/cloudproduct/915/screenshot', 'ECS4120-28T_v1-1_b_modified.jpg', 'ECS4120-28T_v1-1_b_modified.jpg', 'cloud_product', 'CloudProductAttachment', 292, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(622, 'cloud/commerce/product/cloudproduct/915/screenshot', 'ECS4120-28T_v1-1_f_modified.jpg', 'ECS4120-28T_v1-1_f_modified.jpg', 'cloud_product', 'CloudProductAttachment', 293, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(623, 'cloud/commerce/product/cloudproduct/915/screenshot', 'ECS4120-28T_v1-1_r_modified.jpg', 'ECS4120-28T_v1-1_r_modified.jpg', 'cloud_product', 'CloudProductAttachment', 294, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(624, 'cloud/commerce/product/cloudproduct/921/screenshot', 'gw.png', 'gw.png', 'cloud_product', 'CloudProductAttachment', 295, 1, '2018-02-09 10:31:04', 'image/png'),
(625, 'cloud/commerce/product/cloudproduct/921/screenshot', 'Front-profile_modified.jpg', 'Front-profile_modified.jpg', 'cloud_product', 'CloudProductAttachment', 296, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(626, 'cloud/commerce/product/cloudproduct/921/screenshot', 'Rear-Profile_modified.jpg', 'Rear-Profile_modified.jpg', 'cloud_product', 'CloudProductAttachment', 297, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(627, 'cloud/commerce/product/cloudproduct/921/screenshot', 'Right-Profile_modified.jpg', 'Right-Profile_modified.jpg', 'cloud_product', 'CloudProductAttachment', 298, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(628, 'cloud/commerce/product/cloudproduct/921/screenshot', 'Top-Profile_modified.jpg', 'Top-Profile_modified.jpg', 'cloud_product', 'CloudProductAttachment', 299, 1, '2018-02-09 10:31:04', 'image/jpeg');
INSERT INTO `g_file_system` (`id`, `path`, `original_name`, `file_name`, `type`, `table_name`, `table_key`, `status`, `create_date`, `mime_type`) VALUES
(629, 'cloud/commerce/product/cloudproduct/924/screenshot', 'ECS2100-10PE_1.jpg', 'ECS2100-10PE_1.jpg', 'cloud_product', 'CloudProductAttachment', 300, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(630, 'cloud/commerce/product/cloudproduct/924/screenshot', 'ECS2100-10PE_2.jpg', 'ECS2100-10PE_2.jpg', 'cloud_product', 'CloudProductAttachment', 301, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(631, 'cloud/commerce/product/cloudproduct/924/screenshot', 'ECS2100-10PE_3.jpg', 'ECS2100-10PE_3.jpg', 'cloud_product', 'CloudProductAttachment', 302, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(632, 'cloud/commerce/product/cloudproduct/924/screenshot', 'ECS2100-10PE_4.jpg', 'ECS2100-10PE_4.jpg', 'cloud_product', 'CloudProductAttachment', 303, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(633, 'cloud/commerce/product/cloudproduct/931/screenshot', 'timthumb__1__28T_modified.png', 'timthumb__1__28T_modified.png', 'cloud_product', 'CloudProductAttachment', 304, 1, '2018-02-09 10:31:04', 'image/png'),
(634, 'cloud/commerce/product/cloudproduct/931/screenshot', 'timthumb_28T_modified.png', 'timthumb_28T_modified.png', 'cloud_product', 'CloudProductAttachment', 305, 1, '2018-02-09 10:31:04', 'image/png'),
(635, 'cloud/commerce/product/cloudproduct/931/screenshot', 'timthumb__2__28T_modified.png', 'timthumb__2__28T_modified.png', 'cloud_product', 'CloudProductAttachment', 306, 1, '2018-02-09 10:31:04', 'image/png'),
(636, 'cloud/commerce/product/cloudproduct/933/screenshot', 'timthumb_26TX_ME_modified.png', 'timthumb_26TX_ME_modified.png', 'cloud_product', 'CloudProductAttachment', 307, 1, '2018-02-09 10:31:04', 'image/png'),
(637, 'cloud/commerce/product/cloudproduct/933/screenshot', 'timthumb__2__26TX_ME_modified.png', 'timthumb__2__26TX_ME_modified.png', 'cloud_product', 'CloudProductAttachment', 308, 1, '2018-02-09 10:31:04', 'image/png'),
(638, 'cloud/commerce/product/cloudproduct/933/screenshot', 'timthumb__1__26TX_ME_modified.png', 'timthumb__1__26TX_ME_modified.png', 'cloud_product', 'CloudProductAttachment', 309, 1, '2018-02-09 10:31:04', 'image/png'),
(639, 'cloud/commerce/product/cloudproduct/935/screenshot', 'timthumb__1__28T_modified.png', 'timthumb__1__28T_modified.png', 'cloud_product', 'CloudProductAttachment', 310, 1, '2018-02-09 10:31:04', 'image/png'),
(640, 'cloud/commerce/product/cloudproduct/935/screenshot', 'timthumb_28T_modified.png', 'timthumb_28T_modified.png', 'cloud_product', 'CloudProductAttachment', 311, 1, '2018-02-09 10:31:04', 'image/png'),
(641, 'cloud/commerce/product/cloudproduct/935/screenshot', 'timthumb__2__28T_modified.png', 'timthumb__2__28T_modified.png', 'cloud_product', 'CloudProductAttachment', 312, 1, '2018-02-09 10:31:04', 'image/png'),
(642, 'cloud/commerce/product/cloudproduct/935/screenshot', 'ECS2100-10T_1.jpg', 'ECS2100-10T_1.jpg', 'cloud_product', 'CloudProductAttachment', 313, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(643, 'cloud/commerce/product/cloudproduct/935/screenshot', 'ECS2100-10T_2.jpg', 'ECS2100-10T_2.jpg', 'cloud_product', 'CloudProductAttachment', 314, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(644, 'cloud/commerce/product/cloudproduct/935/screenshot', 'ECS2100-10T_3.jpg', 'ECS2100-10T_3.jpg', 'cloud_product', 'CloudProductAttachment', 315, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(645, 'cloud/commerce/product/cloudproduct/936/screenshot', 'timthumb__1__52T_modified.png', 'timthumb__1__52T_modified.png', 'cloud_product', 'CloudProductAttachment', 316, 1, '2018-02-09 10:31:04', 'image/png'),
(646, 'cloud/commerce/product/cloudproduct/936/screenshot', 'timthumb_52T_modified.png', 'timthumb_52T_modified.png', 'cloud_product', 'CloudProductAttachment', 317, 1, '2018-02-09 10:31:04', 'image/png'),
(647, 'cloud/commerce/product/cloudproduct/936/screenshot', 'timthumb__3__52T_modified.png', 'timthumb__3__52T_modified.png', 'cloud_product', 'CloudProductAttachment', 318, 1, '2018-02-09 10:31:04', 'image/png'),
(648, 'cloud/commerce/product/cloudproduct/936/screenshot', 'ECS2100-10T_1.jpg', 'ECS2100-10T_1.jpg', 'cloud_product', 'CloudProductAttachment', 319, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(649, 'cloud/commerce/product/cloudproduct/936/screenshot', 'ECS2100-10T_2.jpg', 'ECS2100-10T_2.jpg', 'cloud_product', 'CloudProductAttachment', 320, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(650, 'cloud/commerce/product/cloudproduct/936/screenshot', 'ECS2100-10T_3.jpg', 'ECS2100-10T_3.jpg', 'cloud_product', 'CloudProductAttachment', 321, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(651, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS4100-26TX_b_20cm_1_modified.png', 'ECS4100-26TX_b_20cm_1_modified.png', 'cloud_product', 'CloudProductAttachment', 322, 1, '2018-02-09 10:31:04', 'image/png'),
(652, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS4100-26TX_f_20cm_1_modified.png', 'ECS4100-26TX_f_20cm_1_modified.png', 'cloud_product', 'CloudProductAttachment', 323, 1, '2018-02-09 10:31:04', 'image/png'),
(653, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS4100-26TX_r_20cm_1_modified.png', 'ECS4100-26TX_r_20cm_1_modified.png', 'cloud_product', 'CloudProductAttachment', 324, 1, '2018-02-09 10:31:04', 'image/png'),
(654, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS2100-10T_1.jpg', 'ECS2100-10T_1.jpg', 'cloud_product', 'CloudProductAttachment', 325, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(655, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS2100-10T_2.jpg', 'ECS2100-10T_2.jpg', 'cloud_product', 'CloudProductAttachment', 326, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(656, 'cloud/commerce/product/cloudproduct/937/screenshot', 'ECS2100-10T_3.jpg', 'ECS2100-10T_3.jpg', 'cloud_product', 'CloudProductAttachment', 327, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(657, 'cloud/commerce/product/cloudproduct/940/screenshot', 'Spark_Wave_2_Face_modified.png', 'Spark_Wave_2_Face_modified.png', 'cloud_product', 'CloudProductAttachment', 328, 1, '2018-02-09 10:31:04', 'image/png'),
(658, 'cloud/commerce/product/cloudproduct/940/screenshot', 'Spark_Wave_2_Side_modified.png', 'Spark_Wave_2_Side_modified.png', 'cloud_product', 'CloudProductAttachment', 329, 1, '2018-02-09 10:31:04', 'image/png'),
(659, 'cloud/commerce/product/cloudproduct/940/screenshot', 'Spark_Wave_2_with_pole_mount_Bracket_modified.png', 'Spark_Wave_2_with_pole_mount_Bracket_modified.png', 'cloud_product', 'CloudProductAttachment', 330, 1, '2018-02-09 10:31:04', 'image/png'),
(660, 'cloud/commerce/product/cloudproduct/942/screenshot', 'Spark_Wave_2_Face_modified.png', 'Spark_Wave_2_Face_modified.png', 'cloud_product', 'CloudProductAttachment', 331, 1, '2018-02-09 10:31:04', 'image/png'),
(661, 'cloud/commerce/product/cloudproduct/942/screenshot', 'Spark_Wave_2_Side_modified.png', 'Spark_Wave_2_Side_modified.png', 'cloud_product', 'CloudProductAttachment', 332, 1, '2018-02-09 10:31:04', 'image/png'),
(662, 'cloud/commerce/product/cloudproduct/942/screenshot', 'Spark_Wave_2_with_pole_mount_Bracket_modified.png', 'Spark_Wave_2_with_pole_mount_Bracket_modified.png', 'cloud_product', 'CloudProductAttachment', 333, 1, '2018-02-09 10:31:04', 'image/png'),
(663, 'cloud/commerce/product/cloudproduct/942/screenshot', 'IgniteNet_modify.jpg', 'IgniteNet_modify.jpg', 'cloud_product', 'CloudProductAttachment', 334, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(664, 'cloud/commerce/product/cloudproduct/942/screenshot', 'IgniteNet2_modify.jpg', 'IgniteNet2_modify.jpg', 'cloud_product', 'CloudProductAttachment', 335, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(665, 'cloud/commerce/product/cloudproduct/943/screenshot', 'product_data_795_screenshot_1_v2_20170920.jpg', 'product_data_795_screenshot_1_v2_20170920.jpg', 'cloud_product', 'CloudProductAttachment', 337, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(666, 'cloud/commerce/product/cloudproduct/943/screenshot', 'product_data_795_screenshot_1_20170920.jpg', 'product_data_795_screenshot_1_20170920.jpg', 'cloud_product', 'CloudProductAttachment', 338, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(667, 'cloud/commerce/product/cloudproduct/943/screenshot', 'product_data_795_screenshot_2_20170920.jpg', 'product_data_795_screenshot_2_20170920.jpg', 'cloud_product', 'CloudProductAttachment', 339, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(668, 'cloud/commerce/product/cloudproduct/943/screenshot', 'product_data_795_screenshot_2_V2_20170920.jpg', 'product_data_795_screenshot_2_V2_20170920.jpg', 'cloud_product', 'CloudProductAttachment', 340, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(669, 'cloud/commerce/product/cloudproduct/943/screenshot', 'product_data_795_screenshot_4_20170920.jpg', 'product_data_795_screenshot_4_20170920.jpg', 'cloud_product', 'CloudProductAttachment', 341, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(670, 'cloud/commerce/product/cloudproduct/946/screenshot', 'ECS2100-28PP_1.jpg', 'ECS2100-28PP_1.jpg', 'cloud_product', 'CloudProductAttachment', 342, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(671, 'cloud/commerce/product/cloudproduct/946/screenshot', 'ECS2100-28PP_2.jpg', 'ECS2100-28PP_2.jpg', 'cloud_product', 'CloudProductAttachment', 343, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(672, 'cloud/commerce/product/cloudproduct/946/screenshot', 'ECS2100-28PP_3.jpg', 'ECS2100-28PP_3.jpg', 'cloud_product', 'CloudProductAttachment', 344, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(673, 'cloud/commerce/product/cloudproduct/947/screenshot', 'ECS2100-28T_1.jpg', 'ECS2100-28T_1.jpg', 'cloud_product', 'CloudProductAttachment', 345, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(674, 'cloud/commerce/product/cloudproduct/947/screenshot', 'ECS2100-28T_2.jpg', 'ECS2100-28T_2.jpg', 'cloud_product', 'CloudProductAttachment', 346, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(675, 'cloud/commerce/product/cloudproduct/947/screenshot', 'ECS2100-28T_3.jpg', 'ECS2100-28T_3.jpg', 'cloud_product', 'CloudProductAttachment', 347, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(676, 'cloud/commerce/product/cloudproduct/948/screenshot', 'ECS2100-52T_1.jpg', 'ECS2100-52T_1.jpg', 'cloud_product', 'CloudProductAttachment', 348, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(677, 'cloud/commerce/product/cloudproduct/948/screenshot', 'ECS2100-52T_2.jpg', 'ECS2100-52T_2.jpg', 'cloud_product', 'CloudProductAttachment', 349, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(678, 'cloud/commerce/product/cloudproduct/948/screenshot', 'ECS2100-52T_3.jpg', 'ECS2100-52T_3.jpg', 'cloud_product', 'CloudProductAttachment', 350, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(679, 'cloud/commerce/product/cloudproduct/959/screenshot', 'Top_Profile_modify.jpg', 'Top_Profile_modify.jpg', 'cloud_product', 'CloudProductAttachment', 351, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(680, 'cloud/commerce/product/cloudproduct/959/screenshot', 'Top_Iso_modify.jpg', 'Top_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 352, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(681, 'cloud/commerce/product/cloudproduct/959/screenshot', 'Front_Iso_modify.jpg', 'Front_Iso_modify.jpg', 'cloud_product', 'CloudProductAttachment', 353, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(682, 'cloud/commerce/product/cloudproduct/959/screenshot', 'IO_Door_modify.jpg', 'IO_Door_modify.jpg', 'cloud_product', 'CloudProductAttachment', 354, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(683, 'cloud/commerce/product/cloudproduct/961/screenshot', 'ECS4620-28F-1.jpg', 'ECS4620-28F-1.jpg', 'cloud_product', 'CloudProductAttachment', 355, 1, '2018-02-09 10:31:04', 'image/jpeg'),
(685, 'cloud/commerce/product/cloudscenariodetail/29', '250px-Contrail.JPG', 'scenario_icon_89pcknj8.JPG', 'scenario_icon', 'CloudScenarioDetail', 29, 1, '2018-02-09 18:35:39', 'image/jpeg'),
(686, 'cloud/commerce/product/cloudproductattachment/357', 'desktop.jpeg', 'cloud_product_dec8hlad.jpeg', 'cloud_product', 'CloudProductAttachment', 357, 1, '2018-02-09 18:36:56', 'image/jpeg'),
(687, 'cloud/commerce/product/cloudproductattachment/358', '索引.png', 'cloud_product_or9noldq.png', 'cloud_product', 'CloudProductAttachment', 358, 1, '2018-02-09 18:36:56', 'image/png'),
(688, 'cloud/commerce/product/cloudproductattachment/360', 'timthumb_26TX_ME_modified.png', 'cloud_product_sm7tktir.png', 'cloud_product', 'CloudProductAttachment', 360, 1, '2018-02-12 09:44:58', 'image/png'),
(689, 'cloud/commerce/product/cloudproductattachment/361', 'timthumb (2)_26TX_ME_modified.png', 'cloud_product_eghk6cdb.png', 'cloud_product', 'CloudProductAttachment', 361, 1, '2018-02-12 09:44:58', 'image/png'),
(690, 'cloud/commerce/product/cloudproductattachment/362', 'timthumb (1)_26TX_ME_modified.png', 'cloud_product_nn1bk3kr.png', 'cloud_product', 'CloudProductAttachment', 362, 1, '2018-02-12 09:44:58', 'image/png'),
(691, 'cloud/commerce/product/cloudproductattachment/363', 'ECS2100-10T_1.jpg', 'cloud_product_5466ncm3.jpg', 'cloud_product', 'CloudProductAttachment', 363, 1, '2018-02-12 09:44:58', 'image/jpeg'),
(692, 'cloud/commerce/product/cloudproductattachment/364', 'ECS2100-10T_2.jpg', 'cloud_product_r4qgpgaa.jpg', 'cloud_product', 'CloudProductAttachment', 364, 1, '2018-02-12 09:44:58', 'image/jpeg'),
(693, 'cloud/commerce/product/cloudproductattachment/365', 'ECS2100-10T_3.jpg', 'cloud_product_u0aksjc0.jpg', 'cloud_product', 'CloudProductAttachment', 365, 1, '2018-02-12 09:44:58', 'image/jpeg'),
(694, 'cloud/commerce/product/cloudscenariodetail/28', 'Gaming_Platform_for_Education.jpg', 'scenario_icon_3da4u48h.jpg', 'scenario_icon', 'CloudScenarioDetail', 28, 1, '2018-02-12 13:57:46', 'image/jpeg'),
(695, 'cloud/commerce/product/cloudscenariodetail/5', 'Cloud-based_IoT_Starter_Kit-.jpg', 'scenario_icon_l6n39ero.jpg', 'scenario_icon', 'CloudScenarioDetail', 5, 1, '2018-02-12 13:59:09', 'image/jpeg'),
(696, 'cloud/commerce/product/cloudscenariodetail/4', 'Intuitive_Teaching_Software.jpg', 'scenario_icon_s3lvb01i.jpg', 'scenario_icon', 'CloudScenarioDetail', 4, 1, '2018-02-12 13:59:18', 'image/jpeg'),
(697, 'cloud/commerce/product/cloudscenariodetail/6', 'Media_Capture_System.jpg', 'scenario_icon_uipiajvd.jpg', 'scenario_icon', 'CloudScenarioDetail', 6, 1, '2018-02-12 13:59:38', 'image/jpeg'),
(698, 'cloud/commerce/product/cloudscenariodetail/24', 'Mobile_Tablet_PC_Charger.jpg', 'scenario_icon_rgijdc89.jpg', 'scenario_icon', 'CloudScenarioDetail', 24, 1, '2018-02-12 13:59:57', 'image/jpeg'),
(699, 'cloud/commerce/product/cloudscenariodetail/11', 'Social_Media_Intelligence_Analysis.jpg', 'scenario_icon_36m05634.jpg', 'scenario_icon', 'CloudScenarioDetail', 11, 1, '2018-02-12 14:00:17', 'image/jpeg'),
(700, 'cloud/commerce/product/cloudscenariodetail/12', 'Video_Streaming_for_Business.jpg', 'scenario_icon_kn0hj03t.jpg', 'scenario_icon', 'CloudScenarioDetail', 12, 1, '2018-02-12 14:00:25', 'image/jpeg'),
(701, 'cloud/commerce/product/cloudscenariodetail/13', 'Digital_Signage_Content_Management.jpg', 'scenario_icon_nr7t08gu.jpg', 'scenario_icon', 'CloudScenarioDetail', 13, 1, '2018-02-12 14:00:45', 'image/jpeg'),
(702, 'cloud/commerce/product/cloudscenariodetail/14', 'Mobile_Push_Marketing.jpg', 'scenario_icon_291254j5.jpg', 'scenario_icon', 'CloudScenarioDetail', 14, 1, '2018-02-12 14:01:07', 'image/jpeg'),
(703, 'cloud/commerce/product/cloudscenariodetail/15', 'NFC_Table_Media.jpg', 'scenario_icon_gonnl7q5.jpg', 'scenario_icon', 'CloudScenarioDetail', 15, 1, '2018-02-12 14:01:17', 'image/jpeg'),
(704, 'cloud/commerce/product/cloudscenariodetail/16', 'Mobile_Shop_App.jpg', 'scenario_icon_dhoku8ns.jpg', 'scenario_icon', 'CloudScenarioDetail', 16, 1, '2018-02-12 14:01:24', 'image/jpeg'),
(705, 'cloud/commerce/product/cloudscenariodetail/17', 'BeaconSystem.jpg', 'scenario_icon_0ct1hmvs.jpg', 'scenario_icon', 'CloudScenarioDetail', 17, 1, '2018-02-12 14:01:37', 'image/jpeg'),
(706, 'cloud/commerce/product/cloudscenariodetail/18', 'Intelligent_Video_Analytics.jpg', 'scenario_icon_hmhggrs0.jpg', 'scenario_icon', 'CloudScenarioDetail', 18, 1, '2018-02-12 14:01:50', 'image/jpeg'),
(707, 'cloud/commerce/product/cloudscenariodetail/19', '3D_Virtual_Fitting_Room_System.jpg', 'scenario_icon_nbvbr5ss.jpg', 'scenario_icon', 'CloudScenarioDetail', 19, 1, '2018-02-12 14:01:59', 'image/jpeg'),
(708, 'cloud/commerce/product/cloudscenariodetail/20', 'Cloud_POS_System.jpg', 'scenario_icon_93qo7g72.jpg', 'scenario_icon', 'CloudScenarioDetail', 20, 1, '2018-02-12 14:02:21', 'image/jpeg'),
(709, 'cloud/commerce/product/cloudscenariodetail/22', 'RFID_for_Inventory_Management.jpg', 'scenario_icon_04qmck7v.jpg', 'scenario_icon', 'CloudScenarioDetail', 22, 1, '2018-02-12 14:04:35', 'image/jpeg'),
(710, 'cloud/commerce/product/cloudscenariodetail/2', 'Restaurant_Table_Service_System.jpg', 'scenario_icon_pdti1n12.jpg', 'scenario_icon', 'CloudScenarioDetail', 2, 1, '2018-02-12 14:14:58', 'image/jpeg'),
(711, 'cloud/commerce/product/cloudscenariodetail/26', 'IP_Video_Surveillance_Camera.jpg', 'scenario_icon_rolbuq6u.jpg', 'scenario_icon', 'CloudScenarioDetail', 26, 1, '2018-02-12 14:15:19', 'image/jpeg'),
(712, 'cloud/commerce/product/cloudscenariodetail/25', 'Environmental_Monitor_and_Control.jpg', 'scenario_icon_8aq0079j.jpg', 'scenario_icon', 'CloudScenarioDetail', 25, 1, '2018-02-12 14:15:28', 'image/jpeg'),
(713, 'cloud/commerce/product/cloudscenariodetail/7', 'Pass_Issuing_and_Redeeming_System.jpg', 'scenario_icon_9e9atki4.jpg', 'scenario_icon', 'CloudScenarioDetail', 7, 1, '2018-02-12 14:15:56', 'image/jpeg'),
(714, 'cloud/commerce/product/cloudscenariodetail/23', 'Bus_WiFi.jpg', 'scenario_icon_5ijvgsc8.jpg', 'scenario_icon', 'CloudScenarioDetail', 23, 1, '2018-02-12 14:16:07', 'image/jpeg'),
(715, 'cloud/commerce/product/cloudscenariodetail/8', 'Storage.jpg', 'scenario_icon_rqmqa2og.jpg', 'scenario_icon', 'CloudScenarioDetail', 8, 1, '2018-02-12 14:17:35', 'image/jpeg'),
(716, 'cloud/commerce/product/cloudscenariodetail/9', 'Networking.jpg', 'scenario_icon_oct61bdt.jpg', 'scenario_icon', 'CloudScenarioDetail', 9, 1, '2018-02-12 14:18:36', 'image/jpeg'),
(717, 'cloud/commerce/product/cloudscenariodetail/10', 'Universal_Connection.jpg', 'scenario_icon_g7mdf44d.jpg', 'scenario_icon', 'CloudScenarioDetail', 10, 1, '2018-02-12 14:18:45', 'image/jpeg'),
(718, 'cloud/commerce/product/cloudproductattachment/366', 'SkyREC eDM.jpg', 'cloud_product_el1k831b.jpg', 'cloud_product', 'CloudProductAttachment', 366, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(719, 'cloud/commerce/product/cloudproductattachment/368', 'SkyREC-eDM-800x600_20180209.jpg', 'cloud_product_2o3fcluf.jpg', 'cloud_product', 'CloudProductAttachment', 368, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(720, 'cloud/commerce/product/cloudproductattachment/369', 'product_data_795_screenshot_1_v2_20170920.jpg', 'cloud_product_31svgdsd.jpg', 'cloud_product', 'CloudProductAttachment', 369, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(721, 'cloud/commerce/product/cloudproductattachment/370', 'product_data_795_screenshot_4_20170920.jpg', 'cloud_product_o1vbmsg1.jpg', 'cloud_product', 'CloudProductAttachment', 370, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(722, 'cloud/commerce/product/cloudproductattachment/371', 'product_data_795_screenshot_5_20170920.jpg', 'cloud_product_i648942f.jpg', 'cloud_product', 'CloudProductAttachment', 371, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(723, 'cloud/commerce/product/cloudproductattachment/372', 'product_data_795_screenshot_2_20180209 (1).jpg', 'cloud_product_kpslu7ho.jpg', 'cloud_product', 'CloudProductAttachment', 372, 1, '2018-02-12 14:21:26', 'image/jpeg'),
(724, 'cloud/commerce/product/cloudproductattachment/373', 'waltzone_front.jpg', 'cloud_product_7ua61872.jpg', 'cloud_product', 'CloudProductAttachment', 373, 1, '2018-02-12 14:27:33', 'image/jpeg'),
(725, 'cloud/commerce/product/cloudproductattachment/374', 'FCCID.io-2990526-bg2.png', 'cloud_product_1bl3gqgc.png', 'cloud_product', 'CloudProductAttachment', 374, 1, '2018-02-12 14:27:33', 'image/png'),
(726, 'cloud/commerce/product/cloudproductattachment/375', '2.jpg', 'cloud_product_839ao35d.jpg', 'cloud_product', 'CloudProductAttachment', 375, 1, '2018-02-12 14:27:33', 'image/jpeg'),
(727, 'cloud/commerce/product/cloudproductattachment/376', '5.jpg', 'cloud_product_mrmh7bsf.jpg', 'cloud_product', 'CloudProductAttachment', 376, 1, '2018-02-12 14:27:33', 'image/jpeg'),
(728, 'cloud/commerce/product/cloudproductattachment/377', 'waltzone_45.jpg', 'cloud_product_rfgeopkc.jpg', 'cloud_product', 'CloudProductAttachment', 377, 1, '2018-02-12 14:27:33', 'image/jpeg'),
(729, 'cloud/commerce/product/cloudproductattachment/378', 'unnamed.png', 'cloud_product_5io8t9dm.png', 'cloud_product', 'CloudProductAttachment', 378, 1, '2018-02-12 14:27:33', 'image/png'),
(730, 'cloud/commerce/product/cloudproductattachment/379', 'Contact_short_45.jpg', 'cloud_product_t6f6rv3s.jpg', 'cloud_product', 'CloudProductAttachment', 379, 1, '2018-02-12 14:28:50', 'image/jpeg'),
(731, 'cloud/commerce/product/cloudproductattachment/380', 'KeyFob_front.jpg', 'cloud_product_jui1u5vi.jpg', 'cloud_product', 'CloudProductAttachment', 380, 1, '2018-02-12 14:30:02', 'image/jpeg'),
(732, 'cloud/commerce/product/cloudproductattachment/381', 'KeyFob_45.jpg', 'cloud_product_l9cogv2q.jpg', 'cloud_product', 'CloudProductAttachment', 381, 1, '2018-02-12 14:30:02', 'image/jpeg'),
(733, 'cloud/commerce/product/cloudproductattachment/132', 'SkyFire Front Top Profile No Internal Antenna_modify.jpg', 'cloud_product_dh6p5ide.jpg', 'cloud_product', 'CloudProductAttachment', 132, 1, '2018-02-13 14:08:18', 'image/jpeg'),
(734, 'cloud/commerce/product/cloudproductattachment/126', 'SkyFire Front Top Profile No Internal Antenna_modify.jpg', 'cloud_product_qkccm6ts.jpg', 'cloud_product', 'CloudProductAttachment', 126, 1, '2018-02-13 14:09:06', 'image/jpeg'),
(752, 'cloud/commerce/product/cloudproductattachment/382', 'AS5812-54T.png', 'cloud_product_99i71imp.png', 'cloud_product', 'CloudProductAttachment', 382, 1, '2018-02-22 16:59:02', 'image/png'),
(753, 'cloud/commerce/product/cloudproductattachment/383', 'AS5812-54T-1.png', 'cloud_product_gddvasq2.png', 'cloud_product', 'CloudProductAttachment', 383, 1, '2018-02-22 16:59:52', 'image/png'),
(754, 'cloud/commerce/product/cloudproductattachment/384', 'AS5812-54T-2.png', 'cloud_product_r6t90n9o.png', 'cloud_product', 'CloudProductAttachment', 384, 1, '2018-02-22 16:59:52', 'image/png'),
(755, 'cloud/commerce/product/cloudproductattachment/385', 'Switch-FNS-PoE-24-port-400x300.png', 'cloud_product_uasorfmv.png', 'cloud_product', 'CloudProductAttachment', 385, 1, '2018-02-22 17:00:12', 'image/png'),
(756, 'cloud/commerce/product/cloudproductattachment/386', 'LOWi.jpg', 'cloud_product_eqdm9p1m.jpg', 'cloud_product', 'CloudProductAttachment', 386, 1, '2018-02-23 16:45:35', 'image/jpeg'),
(757, 'cloud/commerce/product/cloudproductattachment/387', 'LOWi-1.jpg', 'cloud_product_nj1c2r33.jpg', 'cloud_product', 'CloudProductAttachment', 387, 1, '2018-02-23 16:45:35', 'image/jpeg'),
(758, 'cloud/commerce/product/cloudproductattachment/388', 'LOWi-2.jpg', 'cloud_product_v4i24j83.jpg', 'cloud_product', 'CloudProductAttachment', 388, 1, '2018-02-23 16:45:35', 'image/jpeg'),
(759, 'cloud/commerce/product/cloudproductattachment/389', 'LOWi-3.jpg', 'cloud_product_3chf8ejm.jpg', 'cloud_product', 'CloudProductAttachment', 389, 1, '2018-02-23 16:45:35', 'image/jpeg'),
(760, 'cloud/commerce/product/cloudscenariodetail/30', 'Cloud_POS_System.jpg', 'scenario_icon_l57v5gig.jpg', 'scenario_icon', 'CloudScenarioDetail', 30, 1, '2018-02-23 17:40:00', 'image/jpeg'),
(761, 'cloud/commerce/product/cloudproductattachment/391', 'TechEva_main.jpg', 'cloud_product_dl3a31te.jpg', 'cloud_product', 'CloudProductAttachment', 391, 1, '2018-03-01 10:50:11', 'image/jpeg'),
(762, 'cloud/commerce/product/cloudproductattachment/392', 'TechEva_1.jpg', 'cloud_product_stvp6ef1.jpg', 'cloud_product', 'CloudProductAttachment', 392, 1, '2018-03-01 10:50:11', 'image/jpeg'),
(763, 'cloud/commerce/product/cloudproductattachment/393', 'screens_templates.jpg', 'cloud_product_v0pnhfr0.jpg', 'cloud_product', 'CloudProductAttachment', 393, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(764, 'cloud/commerce/product/cloudproductattachment/395', 'hospitality.jpg', 'cloud_product_vo80u2sf.jpg', 'cloud_product', 'CloudProductAttachment', 395, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(765, 'cloud/commerce/product/cloudproductattachment/396', 'entertainment.jpg', 'cloud_product_2rqqsf1e.jpg', 'cloud_product', 'CloudProductAttachment', 396, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(766, 'cloud/commerce/product/cloudproductattachment/397', 'retail.jpg', 'cloud_product_p1vtale2.jpg', 'cloud_product', 'CloudProductAttachment', 397, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(767, 'cloud/commerce/product/cloudproductattachment/398', 'restaurant.jpg', 'cloud_product_0arno7j4.jpg', 'cloud_product', 'CloudProductAttachment', 398, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(768, 'cloud/commerce/product/cloudproductattachment/399', 'finance.jpg', 'cloud_product_bb0d7dom.jpg', 'cloud_product', 'CloudProductAttachment', 399, 1, '2018-03-01 14:00:22', 'image/jpeg'),
(769, 'cloud/commerce/product/cloudproductattachment/400', 'Clairviz_logo.jpg', 'cloud_product_ds055fk0.jpg', 'cloud_product', 'CloudProductAttachment', 400, 1, '2018-03-01 15:05:04', 'image/jpeg'),
(770, 'cloud/commerce/product/cloudproductattachment/401', 'SummaryDashboards.png', 'cloud_product_14vbbvhb.png', 'cloud_product', 'CloudProductAttachment', 401, 1, '2018-03-01 15:05:04', 'image/png'),
(771, 'cloud/commerce/product/cloudproductattachment/402', 'OEEDashboards.png', 'cloud_product_6aibohtp.png', 'cloud_product', 'CloudProductAttachment', 402, 1, '2018-03-01 15:05:04', 'image/png'),
(772, 'cloud/commerce/product/cloudproductattachment/403', 'AvailabilityDashboards.png', 'cloud_product_ju9r6kpv.png', 'cloud_product', 'CloudProductAttachment', 403, 1, '2018-03-01 15:05:04', 'image/png'),
(773, 'cloud/commerce/product/cloudproductattachment/404', 'ProductivityDashboards.png', 'cloud_product_qggtd7ps.png', 'cloud_product', 'CloudProductAttachment', 404, 1, '2018-03-01 15:05:04', 'image/png'),
(774, 'cloud/commerce/product/cloudproductattachment/405', 'DowntimeDashboards.png', 'cloud_product_8lcg542k.png', 'cloud_product', 'CloudProductAttachment', 405, 1, '2018-03-01 15:05:04', 'image/png'),
(775, 'cloud/commerce/product/cloudproductattachment/406', 'mainProductimg.jpg', 'cloud_product_61apdqsr.jpg', 'cloud_product', 'CloudProductAttachment', 406, 1, '2018-03-01 15:13:40', 'image/jpeg'),
(776, 'cloud/commerce/product/cloudproductattachment/407', 'one-to-one call.jpg', 'cloud_product_pvktf4r7.jpg', 'cloud_product', 'CloudProductAttachment', 407, 1, '2018-03-01 15:13:40', 'image/jpeg'),
(777, 'cloud/commerce/product/cloudproductattachment/408', 'group calling.jpg', 'cloud_product_ojtk7ua5.jpg', 'cloud_product', 'CloudProductAttachment', 408, 1, '2018-03-01 15:13:40', 'image/jpeg'),
(778, 'cloud/commerce/product/cloudproductattachment/409', 'screen share.jpg', 'cloud_product_oaci3rud.jpg', 'cloud_product', 'CloudProductAttachment', 409, 1, '2018-03-01 15:13:40', 'image/jpeg'),
(779, 'cloud/commerce/product/cloudscenariodetail/31', 'Campus_ERP.jpg', 'scenario_icon_jvln8fn5.jpg', 'scenario_icon', 'CloudScenarioDetail', 31, 1, '2018-03-01 17:15:03', 'image/jpeg'),
(780, 'cloud/commerce/product/cloudproductattachment/30', 'digital-signage-display-watchdog-eyeSign.jpg', 'cloud_product_bh42vmuv.jpg', 'cloud_product', 'CloudProductAttachment', 30, 1, '2018-03-01 17:29:07', 'image/jpeg'),
(781, 'cloud/commerce/product/cloudproductattachment/169', 'digital-signage-display-watchdog-eyeSign.jpg', 'cloud_product_mudks991.jpg', 'cloud_product', 'CloudProductAttachment', 169, 1, '2018-03-01 17:29:07', 'image/jpeg'),
(782, 'cloud/commerce/product/cloudproductattachment/412', 'eyesign spec.jpg', 'cloud_product_vts8c9mg.jpg', 'cloud_product', 'CloudProductAttachment', 412, 1, '2018-03-01 17:29:07', 'image/jpeg'),
(783, 'cloud/commerce/product/cloudproductattachment/413', 'See How EYESIGN Works.jpg', 'cloud_product_3i2tec15.jpg', 'cloud_product', 'CloudProductAttachment', 413, 1, '2018-03-01 17:29:07', 'image/jpeg'),
(784, 'cloud/commerce/product/cloudproductattachment/169', 'eyesign spec.jpg', 'cloud_product_mabst2qi.jpg', 'cloud_product', 'CloudProductAttachment', 169, 1, '2018-03-01 17:31:39', 'image/jpeg'),
(785, 'cloud/commerce/product/cloudproductattachment/412', 'See How EYESIGN Works.jpg', 'cloud_product_pmdt0gk4.jpg', 'cloud_product', 'CloudProductAttachment', 412, 1, '2018-03-01 17:31:39', 'image/jpeg'),
(786, 'cloud/commerce/product/cloudscenariodetail/32', 'Elearning.jpg', 'scenario_icon_40alb5vi.jpg', 'scenario_icon', 'CloudScenarioDetail', 32, 1, '2018-03-02 14:34:49', 'image/jpeg'),
(787, 'cloud/commerce/product/cloudscenariodetail/33', 'Smart_Manufacturing.jpg', 'scenario_icon_fcjmpep1.jpg', 'scenario_icon', 'CloudScenarioDetail', 33, 1, '2018-03-02 14:35:01', 'image/jpeg'),
(788, 'cloud/commerce/product/cloudproductattachment/415', 'bluefox count image.jpg', 'cloud_product_ie6b7fo3.jpg', 'cloud_product', 'CloudProductAttachment', 415, 1, '2018-03-05 12:13:26', 'image/jpeg'),
(789, 'cloud/commerce/product/cloudproductattachment/416', 'bluefox count info.jpg', 'cloud_product_g2ckkoer.jpg', 'cloud_product', 'CloudProductAttachment', 416, 1, '2018-03-05 12:13:26', 'image/jpeg'),
(790, 'cloud/commerce/product/cloudproductattachment/417', 'bluefox count use cases.jpg', 'cloud_product_uit413g4.jpg', 'cloud_product', 'CloudProductAttachment', 417, 1, '2018-03-05 12:13:26', 'image/jpeg'),
(791, 'cloud/commerce/product/cloudproductattachment/418', 'bluefox price info.jpg', 'cloud_product_eggivgsc.jpg', 'cloud_product', 'CloudProductAttachment', 418, 1, '2018-03-05 12:13:27', 'image/jpeg'),
(792, 'cloud/commerce/product/cloudscenariodetail/34', 'Retail_Traffic_Analytics_System.jpg', 'scenario_icon_nvphqbmu.jpg', 'scenario_icon', 'CloudScenarioDetail', 34, 1, '2018-03-05 17:40:04', 'image/jpeg'),
(793, 'cloud/commerce/product/cloudproductattachment/420', 'bluefox engage image.jpg', 'cloud_product_aq64c3lu.jpg', 'cloud_product', 'CloudProductAttachment', 420, 1, '2018-03-05 17:54:08', 'image/jpeg'),
(794, 'cloud/commerce/product/cloudproductattachment/421', 'bluefox engage info.jpg', 'cloud_product_p1jhap0c.jpg', 'cloud_product', 'CloudProductAttachment', 421, 1, '2018-03-05 17:54:08', 'image/jpeg'),
(795, 'cloud/commerce/product/cloudproductattachment/422', 'bluefox solutions.jpg', 'cloud_product_1u2fu4fm.jpg', 'cloud_product', 'CloudProductAttachment', 422, 1, '2018-03-05 17:54:08', 'image/jpeg'),
(796, 'cloud/commerce/product/cloudproductattachment/423', 'bluefox engage use cases.jpg', 'cloud_product_f75h8mh8.jpg', 'cloud_product', 'CloudProductAttachment', 423, 1, '2018-03-05 17:54:08', 'image/jpeg'),
(797, 'cloud/commerce/product/cloudproductattachment/424', 'bluefox price info (1).jpg', 'cloud_product_33tdjh38.jpg', 'cloud_product', 'CloudProductAttachment', 424, 1, '2018-03-05 17:54:08', 'image/jpeg'),
(798, 'cloud/commerce/product/cloudproductattachment/426', 'Starflex RFID reader.jpg', 'cloud_product_sdvl4eko.jpg', 'cloud_product', 'CloudProductAttachment', 426, 1, '2018-03-08 10:23:51', 'image/jpeg'),
(799, 'cloud/commerce/product/cloudproductattachment/427', 'ViZix platform.jpg', 'cloud_product_i7hhffee.jpg', 'cloud_product', 'CloudProductAttachment', 427, 1, '2018-03-08 10:23:51', 'image/jpeg'),
(800, 'cloud/commerce/product/cloudproductattachment/428', 'Starflex connection.jpg', 'cloud_product_3dq07nm3.jpg', 'cloud_product', 'CloudProductAttachment', 428, 1, '2018-03-08 10:23:51', 'image/jpeg'),
(801, 'cloud/commerce/product/cloudproductattachment/429', 'vizix iot platform architecture.jpg', 'cloud_product_4lgo3972.jpg', 'cloud_product', 'CloudProductAttachment', 429, 1, '2018-03-08 10:23:51', 'image/jpeg'),
(802, 'cloud/commerce/product/cloudproductattachment/430', 'vizixeb.png', 'cloud_product_jhmpmbg0.png', 'cloud_product', 'CloudProductAttachment', 430, 1, '2018-03-08 10:23:51', 'image/png'),
(803, 'cloud/commerce/product/cloudproductattachment/431', 'vizix b.png', 'cloud_product_v59pi6r3.png', 'cloud_product', 'CloudProductAttachment', 431, 1, '2018-03-08 10:23:51', 'image/png'),
(804, 'cloud/commerce/product/cloudscenariodetail/22', 'RFID.jpg', 'scenario_icon_8m1go2kv.jpg', 'scenario_icon', 'CloudScenarioDetail', 22, 1, '2018-03-08 14:19:17', 'image/jpeg'),
(805, 'cloud/commerce/product/cloudproductattachment/433', 'Linkstreet Pro_admin.jpg', 'cloud_product_v1enebfp.jpg', 'cloud_product', 'CloudProductAttachment', 433, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(806, 'cloud/commerce/product/cloudproductattachment/434', 'Linkstreet Pro add Course.jpg', 'cloud_product_5sm7snbv.jpg', 'cloud_product', 'CloudProductAttachment', 434, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(807, 'cloud/commerce/product/cloudproductattachment/435', 'Linkstreet Pro Announcement.jpg', 'cloud_product_c6goq9vt.jpg', 'cloud_product', 'CloudProductAttachment', 435, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(808, 'cloud/commerce/product/cloudproductattachment/436', 'Linkstreet Pro DAMS.jpg', 'cloud_product_99v9adei.jpg', 'cloud_product', 'CloudProductAttachment', 436, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(809, 'cloud/commerce/product/cloudproductattachment/437', 'Linkstreet Pro Events.jpg', 'cloud_product_ak83id75.jpg', 'cloud_product', 'CloudProductAttachment', 437, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(810, 'cloud/commerce/product/cloudproductattachment/438', 'Linkstreet Pro Manage Users.jpg', 'cloud_product_ooss2m44.jpg', 'cloud_product', 'CloudProductAttachment', 438, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(811, 'cloud/commerce/product/cloudproductattachment/439', 'Linkstreet Pro Question Bank.jpg', 'cloud_product_1sdg9hfu.jpg', 'cloud_product', 'CloudProductAttachment', 439, 1, '2018-03-09 15:59:41', 'image/jpeg'),
(812, 'cloud/commerce/product/cloudproductattachment/440', 'RAPL 01.png', 'cloud_product_loom3dla.png', 'cloud_product', 'CloudProductAttachment', 440, 1, '2018-03-09 16:07:12', 'image/png'),
(813, 'cloud/commerce/product/cloudproductattachment/441', 'RAPL 02.png', 'cloud_product_mp1gqnjt.png', 'cloud_product', 'CloudProductAttachment', 441, 1, '2018-03-09 16:07:12', 'image/png'),
(814, 'cloud/commerce/product/cloudproductattachment/442', 'RAPL 03.png', 'cloud_product_hi0oerl6.png', 'cloud_product', 'CloudProductAttachment', 442, 1, '2018-03-09 16:07:12', 'image/png'),
(815, 'cloud/commerce/product/cloudproductattachment/443', 'RAPL 04.png', 'cloud_product_730uhb81.png', 'cloud_product', 'CloudProductAttachment', 443, 1, '2018-03-09 16:07:12', 'image/png'),
(816, 'cloud/commerce/product/cloudproductattachment/444', 'RAPL 05.png', 'cloud_product_0u1ukr9i.png', 'cloud_product', 'CloudProductAttachment', 444, 1, '2018-03-09 16:07:12', 'image/png'),
(817, 'cloud/commerce/product/cloudproductattachment/445', 'RAPL 06.png', 'cloud_product_bsqnl7ik.png', 'cloud_product', 'CloudProductAttachment', 445, 1, '2018-03-09 16:07:12', 'image/png'),
(818, 'cloud/commerce/product/cloudproductattachment/446', 'RAPL 07.png', 'cloud_product_8ckguues.png', 'cloud_product', 'CloudProductAttachment', 446, 1, '2018-03-09 16:07:12', 'image/png'),
(819, 'cloud/commerce/product/cloudproductattachment/447', 'RAPL_Content Service.jpg', 'cloud_product_45pu38c7.jpg', 'cloud_product', 'CloudProductAttachment', 447, 1, '2018-03-09 16:11:10', 'image/jpeg'),
(820, 'cloud/commerce/product/cloudproductattachment/448', 'ugc-device.png', 'cloud_product_ncadestn.png', 'cloud_product', 'CloudProductAttachment', 448, 1, '2018-03-09 16:15:41', 'image/png'),
(821, 'cloud/commerce/product/cloudproductattachment/449', 'strass_2.png', 'cloud_product_ce6o9me5.png', 'cloud_product', 'CloudProductAttachment', 449, 1, '2018-03-09 16:15:41', 'image/png'),
(822, 'cloud/commerce/product/cloudproductattachment/450', 'strass_5.jpg', 'cloud_product_eq7sqra1.jpg', 'cloud_product', 'CloudProductAttachment', 450, 1, '2018-03-09 16:15:41', 'image/jpeg'),
(823, 'cloud/commerce/product/cloudproductattachment/451', 'strass_case1.jpg', 'cloud_product_jf50rt2o.jpg', 'cloud_product', 'CloudProductAttachment', 451, 1, '2018-03-09 16:15:41', 'image/jpeg'),
(824, 'cloud/commerce/product/cloudproductattachment/452', 'strass_case2.jpg', 'cloud_product_ht76le7v.jpg', 'cloud_product', 'CloudProductAttachment', 452, 1, '2018-03-09 16:15:41', 'image/jpeg'),
(825, 'cloud/commerce/product/cloudproductattachment/453', 'retailcam_2.jpg', 'cloud_product_pnr9nae9.jpg', 'cloud_product', 'CloudProductAttachment', 453, 1, '2018-03-09 16:22:09', 'image/jpeg'),
(826, 'cloud/commerce/product/cloudproductattachment/454', 'retailcam_1.jpg', 'cloud_product_fnqudj2f.jpg', 'cloud_product', 'CloudProductAttachment', 454, 1, '2018-03-09 16:22:09', 'image/jpeg'),
(827, 'cloud/commerce/product/cloudproductattachment/455', 'RetailCamVideoCounting.png', 'cloud_product_d64mv0uc.png', 'cloud_product', 'CloudProductAttachment', 455, 1, '2018-03-09 16:22:09', 'image/png'),
(828, 'cloud/commerce/product/cloudproductattachment/456', 'retailcam_3.jpg', 'cloud_product_7afml40f.jpg', 'cloud_product', 'CloudProductAttachment', 456, 1, '2018-03-09 16:22:09', 'image/jpeg'),
(829, 'cloud/commerce/product/cloudproductattachment/457', 'RetailCam5Shopping.png', 'cloud_product_g0sdivd9.png', 'cloud_product', 'CloudProductAttachment', 457, 1, '2018-03-09 16:22:09', 'image/png'),
(830, 'cloud/commerce/product/cloudproductattachment/458', 'RetailCam5Metrics.png', 'cloud_product_c88433p0.png', 'cloud_product', 'CloudProductAttachment', 458, 1, '2018-03-09 16:22:09', 'image/png'),
(831, 'cloud/commerce/product/cloudscenariodetail/36', 'Corporate_Training.jpg', 'scenario_icon_8i3r0v5q.jpg', 'scenario_icon', 'CloudScenarioDetail', 36, 1, '2018-03-13 09:11:44', 'image/jpeg'),
(832, 'cloud/commerce/product/cloudproductattachment/459', 'KL-3W_1.JPG', 'cloud_product_s6nn1q9o.JPG', 'cloud_product', 'CloudProductAttachment', 459, 1, '2018-03-13 09:29:21', 'image/jpeg'),
(833, 'cloud/commerce/product/cloudproductattachment/460', 'KL-3W_2.png', 'cloud_product_9eqpvvir.png', 'cloud_product', 'CloudProductAttachment', 460, 1, '2018-03-13 09:29:21', 'image/png'),
(834, 'cloud/commerce/product/cloudproductattachment/461', 'KL-3W_3.JPG', 'cloud_product_28cha6bp.JPG', 'cloud_product', 'CloudProductAttachment', 461, 1, '2018-03-13 09:29:21', 'image/jpeg'),
(835, 'cloud/commerce/product/cloudproductattachment/462', 'KL-3W_4.JPG', 'cloud_product_9o8aql81.JPG', 'cloud_product', 'CloudProductAttachment', 462, 1, '2018-03-13 09:29:21', 'image/jpeg'),
(836, 'cloud/commerce/product/cloudproductattachment/463', 'KL-3W_5.JPG', 'cloud_product_91l37748.JPG', 'cloud_product', 'CloudProductAttachment', 463, 1, '2018-03-13 09:29:21', 'image/jpeg'),
(837, 'cloud/commerce/product/cloudproductattachment/464', 'KL-3W_6.JPG', 'cloud_product_go722mg9.JPG', 'cloud_product', 'CloudProductAttachment', 464, 1, '2018-03-13 09:29:21', 'image/jpeg'),
(847, 'cloud/commerce/product/cloudproductattachment/466', 'SimMAGIC eBook.png', 'cloud_product_9m8ea8ok.png', 'cloud_product', 'CloudProductAttachment', 466, 1, '2018-03-20 16:47:06', 'image/png'),
(848, 'cloud/commerce/product/cloudproductattachment/467', 'ebook_dm1.jpg', 'cloud_product_u0htth58.jpg', 'cloud_product', 'CloudProductAttachment', 467, 1, '2018-03-20 16:47:06', 'image/jpeg'),
(849, 'cloud/commerce/product/cloudproductattachment/468', 'ebook_dm2.jpg', 'cloud_product_gaf0vsn4.jpg', 'cloud_product', 'CloudProductAttachment', 468, 1, '2018-03-20 16:47:06', 'image/jpeg'),
(850, 'cloud/commerce/product/cloudproductattachment/469', 'ebook_dm3.jpg', 'cloud_product_ottginvf.jpg', 'cloud_product', 'CloudProductAttachment', 469, 1, '2018-03-20 16:47:06', 'image/jpeg'),
(851, 'cloud/commerce/product/cloudproductattachment/470', 'ebook_dm4.jpg', 'cloud_product_t2r584rq.jpg', 'cloud_product', 'CloudProductAttachment', 470, 1, '2018-03-20 16:47:06', 'image/jpeg'),
(852, 'cloud/commerce/product/cloudproductattachment/472', 'Sellinghub.png', 'cloud_product_rjk9tslv.png', 'cloud_product', 'CloudProductAttachment', 472, 1, '2018-03-20 17:26:27', 'image/png'),
(853, 'cloud/commerce/product/cloudproductattachment/473', 'SellingHub_DM_1.jpg', 'cloud_product_6pfullch.jpg', 'cloud_product', 'CloudProductAttachment', 473, 1, '2018-03-20 17:26:27', 'image/jpeg'),
(854, 'cloud/commerce/product/cloudproductattachment/474', 'SellingHub_DM_2.jpg', 'cloud_product_uovq8eks.jpg', 'cloud_product', 'CloudProductAttachment', 474, 1, '2018-03-20 17:26:27', 'image/jpeg'),
(855, 'cloud/commerce/product/cloudproductattachment/475', 'ClassHub.png', 'cloud_product_20dc1151.png', 'cloud_product', 'CloudProductAttachment', 475, 1, '2018-03-20 17:28:09', 'image/png'),
(856, 'cloud/commerce/product/cloudproductattachment/476', 'ClassHub_1.jpg', 'cloud_product_lqd4l070.jpg', 'cloud_product', 'CloudProductAttachment', 476, 1, '2018-03-20 17:28:09', 'image/jpeg'),
(857, 'cloud/commerce/product/cloudproductattachment/477', 'ClassHub_2.jpg', 'cloud_product_emkjf8d5.jpg', 'cloud_product', 'CloudProductAttachment', 477, 1, '2018-03-20 17:28:09', 'image/jpeg'),
(858, 'cloud/commerce/product/cloudproductattachment/478', 'Classhub_3.jpg', 'cloud_product_9iuhea2i.jpg', 'cloud_product', 'CloudProductAttachment', 478, 1, '2018-03-20 17:28:09', 'image/jpeg'),
(859, 'cloud/commerce/product/cloudproductattachment/479', 'Classhub_4.jpg', 'cloud_product_f22nks10.jpg', 'cloud_product', 'CloudProductAttachment', 479, 1, '2018-03-20 17:28:09', 'image/jpeg'),
(860, 'cloud/commerce/product/cloudproductattachment/480', 'MagicVR.png', 'cloud_product_abj0enlg.png', 'cloud_product', 'CloudProductAttachment', 480, 1, '2018-03-20 17:29:56', 'image/png'),
(861, 'cloud/commerce/product/cloudproductattachment/481', 'MAGICVR_dm1.jpg', 'cloud_product_junhlpn8.jpg', 'cloud_product', 'CloudProductAttachment', 481, 1, '2018-03-20 17:29:56', 'image/jpeg'),
(862, 'cloud/commerce/product/cloudproductattachment/482', 'MAGICVR_dm2.jpg', 'cloud_product_au1p9jku.jpg', 'cloud_product', 'CloudProductAttachment', 482, 1, '2018-03-20 17:29:56', 'image/jpeg'),
(863, 'cloud/commerce/product/cloudproductattachment/483', 'MAGICVR_dm3.jpg', 'cloud_product_ibr2sccl.jpg', 'cloud_product', 'CloudProductAttachment', 483, 1, '2018-03-20 17:29:56', 'image/jpeg'),
(864, 'cloud/commerce/product/cloudproductattachment/486', 'TeachingCloud.png', 'cloud_product_7o3e8t5c.png', 'cloud_product', 'CloudProductAttachment', 486, 1, '2018-03-20 17:32:01', 'image/png'),
(865, 'cloud/commerce/product/cloudproductattachment/487', 'TeachingCloud_dm1.jpg', 'cloud_product_9kkljcaf.jpg', 'cloud_product', 'CloudProductAttachment', 487, 1, '2018-03-20 17:32:01', 'image/jpeg'),
(866, 'cloud/commerce/product/cloudproductattachment/488', 'TeachingCloud_dm2.jpg', 'cloud_product_5s99am9t.jpg', 'cloud_product', 'CloudProductAttachment', 488, 1, '2018-03-20 17:32:01', 'image/jpeg'),
(867, 'cloud/commerce/product/cloudproductattachment/489', 'hpc005.jpg', 'cloud_product_94228p8q.jpg', 'cloud_product', 'CloudProductAttachment', 489, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(868, 'cloud/commerce/product/cloudproductattachment/490', 'hpx005-1.jpg', 'cloud_product_gk9maeem.jpg', 'cloud_product', 'CloudProductAttachment', 490, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(869, 'cloud/commerce/product/cloudproductattachment/491', 'Solution for Chain stores-HPC005.jpg', 'cloud_product_qp67rflp.jpg', 'cloud_product', 'CloudProductAttachment', 491, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(870, 'cloud/commerce/product/cloudproductattachment/492', 'hpc005 spec.jpg', 'cloud_product_51pm4gvh.jpg', 'cloud_product', 'CloudProductAttachment', 492, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(871, 'cloud/commerce/product/cloudproductattachment/493', 'report stand alone.jpg', 'cloud_product_kc2fr9pa.jpg', 'cloud_product', 'CloudProductAttachment', 493, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(872, 'cloud/commerce/product/cloudproductattachment/494', 'report network software.jpg', 'cloud_product_jc8getf2.jpg', 'cloud_product', 'CloudProductAttachment', 494, 1, '2018-04-02 16:34:36', 'image/jpeg'),
(873, 'cloud/commerce/product/cloudproductattachment/495', 'hpc008-0.jpg', 'cloud_product_8aad4bjd.jpg', 'cloud_product', 'CloudProductAttachment', 495, 1, '2018-04-02 16:38:56', 'image/jpeg'),
(874, 'cloud/commerce/product/cloudproductattachment/496', 'hpc008.jpg', 'cloud_product_hqcr1rfg.jpg', 'cloud_product', 'CloudProductAttachment', 496, 1, '2018-04-02 16:38:56', 'image/jpeg'),
(875, 'cloud/commerce/product/cloudproductattachment/497', 'hpc008 spec.jpg', 'cloud_product_kbgnt0ei.jpg', 'cloud_product', 'CloudProductAttachment', 497, 1, '2018-04-02 16:38:56', 'image/jpeg'),
(876, 'cloud/commerce/product/cloudproductattachment/498', 'hpc008 installation.jpg', 'cloud_product_9ju291mf.jpg', 'cloud_product', 'CloudProductAttachment', 498, 1, '2018-04-02 16:38:56', 'image/jpeg'),
(877, 'cloud/commerce/product/cloudproductattachment/499', 'hpc008 report.jpg', 'cloud_product_e2u9b0p3.jpg', 'cloud_product', 'CloudProductAttachment', 499, 1, '2018-04-02 16:38:57', 'image/jpeg'),
(886, 'cloud/commerce/product/cloudproductattachment/500', 'rims-product-image.png', 'cloud_product_uot0er1o.png', 'cloud_product', 'CloudProductAttachment', 500, 1, '2018-04-12 16:39:25', 'image/png'),
(887, 'cloud/commerce/product/cloudproductattachment/502', '01-rims-login.png', 'cloud_product_12c4n6hp.png', 'cloud_product', 'CloudProductAttachment', 502, 1, '2018-04-12 16:39:25', 'image/png'),
(888, 'cloud/commerce/product/cloudproductattachment/503', '02-rims-dashboard.png', 'cloud_product_bd5vk3ff.png', 'cloud_product', 'CloudProductAttachment', 503, 1, '2018-04-12 16:39:25', 'image/png'),
(889, 'cloud/commerce/product/cloudproductattachment/504', '03-rims-dinein-billing.png', 'cloud_product_7c3gn21c.png', 'cloud_product', 'CloudProductAttachment', 504, 1, '2018-04-12 16:39:25', 'image/png'),
(890, 'cloud/commerce/product/cloudproductattachment/505', '04-rims-take-away.png', 'cloud_product_qamsudi6.png', 'cloud_product', 'CloudProductAttachment', 505, 1, '2018-04-12 16:39:25', 'image/png'),
(891, 'cloud/commerce/product/cloudproductattachment/506', '06-rims-table-status.png', 'cloud_product_t16n2md6.png', 'cloud_product', 'CloudProductAttachment', 506, 1, '2018-04-12 16:39:25', 'image/png'),
(892, 'cloud/commerce/product/cloudproductattachment/507', 'Parking Management Solution.png', 'cloud_product_g3g1qkh6.png', 'cloud_product', 'CloudProductAttachment', 507, 1, '2018-04-13 11:36:16', 'image/png'),
(893, 'cloud/commerce/product/cloudproductattachment/508', 'Parking Management Solution.png', 'cloud_product_oirrpabv.png', 'cloud_product', 'CloudProductAttachment', 508, 1, '2018-04-13 12:16:06', 'image/png'),
(894, 'cloud/commerce/product/cloudproductattachment/507', 'School Management Software.png', 'cloud_product_p7lii88u.png', 'cloud_product', 'CloudProductAttachment', 507, 1, '2018-04-13 12:16:45', 'image/png'),
(895, 'cloud/commerce/product/cloudproductattachment/509', 'POS.png', 'cloud_product_pmg93i3v.png', 'cloud_product', 'CloudProductAttachment', 509, 1, '2018-04-13 12:18:27', 'image/png'),
(896, 'cloud/commerce/product/cloudproductattachment/510', 'Hospital Management Solution.png', 'cloud_product_fchor54j.png', 'cloud_product', 'CloudProductAttachment', 510, 1, '2018-04-13 12:19:32', 'image/png'),
(897, 'cloud/commerce/product/cloudproductattachment/511', 'CRM solution.png', 'cloud_product_tonihs1h.png', 'cloud_product', 'CloudProductAttachment', 511, 1, '2018-04-13 12:20:29', 'image/png'),
(898, 'cloud/commerce/product/cloudscenariodetail/37', 'Restaurant_Management_System.jpg', 'scenario_icon_utfnio21.jpg', 'scenario_icon', 'CloudScenarioDetail', 37, 1, '2018-04-13 14:23:22', 'image/jpeg'),
(899, 'cloud/commerce/product/cloudscenariodetail/40', 'CRM.jpg', 'scenario_icon_rmaa8n16.jpg', 'scenario_icon', 'CloudScenarioDetail', 40, 1, '2018-04-16 09:26:26', 'image/jpeg'),
(900, 'cloud/commerce/product/cloudscenariodetail/39', 'Hospital_Management.jpg', 'scenario_icon_nlc22i19.jpg', 'scenario_icon', 'CloudScenarioDetail', 39, 1, '2018-04-16 09:26:40', 'image/jpeg'),
(901, 'cloud/commerce/product/cloudscenariodetail/38', 'Parking_Management.jpg', 'scenario_icon_g1tkua7k.jpg', 'scenario_icon', 'CloudScenarioDetail', 38, 1, '2018-04-16 09:27:14', 'image/jpeg'),
(902, 'cloud/commerce/product/cloudproductattachment/516', 'Coding101-1.jpg', 'cloud_product_urvdjht0.jpg', 'cloud_product', 'CloudProductAttachment', 516, 1, '2018-04-16 13:50:13', 'image/jpeg'),
(903, 'cloud/commerce/product/cloudproductattachment/517', 'Coding101-2.jpg', 'cloud_product_umc38ll1.jpg', 'cloud_product', 'CloudProductAttachment', 517, 1, '2018-04-16 13:50:13', 'image/jpeg'),
(904, 'cloud/commerce/product/cloudproductattachment/518', 'Coding101-3.jpg', 'cloud_product_52rao17q.jpg', 'cloud_product', 'CloudProductAttachment', 518, 1, '2018-04-16 13:50:13', 'image/jpeg'),
(905, 'cloud/commerce/product/cloudproductattachment/519', 'Coding101-4.jpg', 'cloud_product_pk4cej81.jpg', 'cloud_product', 'CloudProductAttachment', 519, 1, '2018-04-16 13:50:13', 'image/jpeg'),
(906, 'cloud/commerce/product/cloudproductattachment/520', 'Main.jpg', 'cloud_product_jtkgp1lg.jpg', 'cloud_product', 'CloudProductAttachment', 520, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(907, 'cloud/commerce/product/cloudproductattachment/521', 'Camera(45).jpg', 'cloud_product_6aluq9ln.jpg', 'cloud_product', 'CloudProductAttachment', 521, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(908, 'cloud/commerce/product/cloudproductattachment/522', 'Camera(135).jpg', 'cloud_product_slrsosra.jpg', 'cloud_product', 'CloudProductAttachment', 522, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(909, 'cloud/commerce/product/cloudproductattachment/523', 'Astra_1.jpg', 'cloud_product_7mkltke2.jpg', 'cloud_product', 'CloudProductAttachment', 523, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(910, 'cloud/commerce/product/cloudproductattachment/524', 'Astra_2.jpg', 'cloud_product_7kl4i7vf.jpg', 'cloud_product', 'CloudProductAttachment', 524, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(911, 'cloud/commerce/product/cloudproductattachment/525', 'Astra_3.jpg', 'cloud_product_9981d4ug.jpg', 'cloud_product', 'CloudProductAttachment', 525, 1, '2018-04-16 15:19:25', 'image/jpeg'),
(912, 'cloud/commerce/product/cloudproductattachment/526', 'eLIFEconnection_eDM.jpg', 'cloud_product_bojuj2ad.jpg', 'cloud_product', 'CloudProductAttachment', 526, 1, '2018-04-16 15:42:23', 'image/jpeg');
INSERT INTO `g_file_system` (`id`, `path`, `original_name`, `file_name`, `type`, `table_name`, `table_key`, `status`, `create_date`, `mime_type`) VALUES
(913, 'cloud/commerce/product/cloudproductattachment/527', '71R3YAadj6L._SL1259_.jpg', 'cloud_product_2mklvnbh.jpg', 'cloud_product', 'CloudProductAttachment', 527, 1, '2018-04-16 15:42:23', 'image/jpeg'),
(914, 'cloud/commerce/product/cloudproductattachment/528', '71dSbdkMf4L._SL1500_.jpg', 'cloud_product_745ebmr8.jpg', 'cloud_product', 'CloudProductAttachment', 528, 1, '2018-04-16 15:42:23', 'image/jpeg'),
(915, 'cloud/commerce/product/cloudproductattachment/529', '41+dshmF3JL.jpg', 'cloud_product_38sjh5ks.jpg', 'cloud_product', 'CloudProductAttachment', 529, 1, '2018-04-16 15:42:23', 'image/jpeg'),
(916, 'cloud/commerce/product/cloudproductattachment/530', '51dPY1V7LOL._SL1500_.jpg', 'cloud_product_dlr4snmo.jpg', 'cloud_product', 'CloudProductAttachment', 530, 1, '2018-04-16 15:42:23', 'image/jpeg'),
(917, 'cloud/commerce/product/cloudproductattachment/532', 'eLIFEconnection_eDM.jpg', 'cloud_product_4tade28h.jpg', 'cloud_product', 'CloudProductAttachment', 532, 1, '2018-04-16 15:43:09', 'image/jpeg'),
(918, 'cloud/commerce/product/cloudproductattachment/533', '71R3YAadj6L._SL1259_.jpg', 'cloud_product_ui9uo516.jpg', 'cloud_product', 'CloudProductAttachment', 533, 1, '2018-04-16 15:43:09', 'image/jpeg'),
(919, 'cloud/commerce/product/cloudproductattachment/534', '71dSbdkMf4L._SL1500_.jpg', 'cloud_product_7u9cnnv8.jpg', 'cloud_product', 'CloudProductAttachment', 534, 1, '2018-04-16 15:43:09', 'image/jpeg'),
(920, 'cloud/commerce/product/cloudproductattachment/535', '41+dshmF3JL.jpg', 'cloud_product_4r0n131i.jpg', 'cloud_product', 'CloudProductAttachment', 535, 1, '2018-04-16 15:43:09', 'image/jpeg'),
(921, 'cloud/commerce/product/cloudproductattachment/536', '51dPY1V7LOL._SL1500_.jpg', 'cloud_product_eh0ddu5l.jpg', 'cloud_product', 'CloudProductAttachment', 536, 1, '2018-04-16 15:43:09', 'image/jpeg'),
(922, 'cloud/commerce/product/cloudproductattachment/538', 'eLIFEconnection_eDM.jpg', 'cloud_product_ptnh1uqm.jpg', 'cloud_product', 'CloudProductAttachment', 538, 1, '2018-04-16 15:43:10', 'image/jpeg'),
(923, 'cloud/commerce/product/cloudproductattachment/539', '71R3YAadj6L._SL1259_.jpg', 'cloud_product_2vih6e5j.jpg', 'cloud_product', 'CloudProductAttachment', 539, 1, '2018-04-16 15:43:10', 'image/jpeg'),
(924, 'cloud/commerce/product/cloudproductattachment/540', '71dSbdkMf4L._SL1500_.jpg', 'cloud_product_l8em89m8.jpg', 'cloud_product', 'CloudProductAttachment', 540, 1, '2018-04-16 15:43:10', 'image/jpeg'),
(925, 'cloud/commerce/product/cloudproductattachment/541', '41+dshmF3JL.jpg', 'cloud_product_p2achtmu.jpg', 'cloud_product', 'CloudProductAttachment', 541, 1, '2018-04-16 15:43:10', 'image/jpeg'),
(926, 'cloud/commerce/product/cloudproductattachment/542', '51dPY1V7LOL._SL1500_.jpg', 'cloud_product_8oserqrg.jpg', 'cloud_product', 'CloudProductAttachment', 542, 1, '2018-04-16 15:43:10', 'image/jpeg'),
(927, 'cloud/commerce/product/cloudproductattachment/544', 'eLIFEconnection_eDM.jpg', 'cloud_product_bbe4suj4.jpg', 'cloud_product', 'CloudProductAttachment', 544, 1, '2018-04-16 15:43:12', 'image/jpeg'),
(928, 'cloud/commerce/product/cloudproductattachment/545', '71R3YAadj6L._SL1259_.jpg', 'cloud_product_fae83qa1.jpg', 'cloud_product', 'CloudProductAttachment', 545, 1, '2018-04-16 15:43:12', 'image/jpeg'),
(929, 'cloud/commerce/product/cloudproductattachment/546', '71dSbdkMf4L._SL1500_.jpg', 'cloud_product_1mev7st4.jpg', 'cloud_product', 'CloudProductAttachment', 546, 1, '2018-04-16 15:43:12', 'image/jpeg'),
(930, 'cloud/commerce/product/cloudproductattachment/547', '41+dshmF3JL.jpg', 'cloud_product_0ic6ktpm.jpg', 'cloud_product', 'CloudProductAttachment', 547, 1, '2018-04-16 15:43:12', 'image/jpeg'),
(931, 'cloud/commerce/product/cloudproductattachment/548', '51dPY1V7LOL._SL1500_.jpg', 'cloud_product_fgce2642.jpg', 'cloud_product', 'CloudProductAttachment', 548, 1, '2018-04-16 15:43:12', 'image/jpeg'),
(932, 'cloud/commerce/product/cloudproductattachment/434', 'Linkstreet Pro_Coursedetails.jpg', 'cloud_product_38qii4at.jpg', 'cloud_product', 'CloudProductAttachment', 434, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(933, 'cloud/commerce/product/cloudproductattachment/435', 'Linkstreet Pro_admin.jpg', 'cloud_product_7j8sv01b.jpg', 'cloud_product', 'CloudProductAttachment', 435, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(934, 'cloud/commerce/product/cloudproductattachment/436', 'Linkstreet Pro User_reports.jpg', 'cloud_product_ptamjgkd.jpg', 'cloud_product', 'CloudProductAttachment', 436, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(935, 'cloud/commerce/product/cloudproductattachment/437', 'Linkstreet Pro Reports.jpg', 'cloud_product_gs5gj6nb.jpg', 'cloud_product', 'CloudProductAttachment', 437, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(936, 'cloud/commerce/product/cloudproductattachment/438', 'Linkstreet Pro Quiz.jpg', 'cloud_product_e6f4eiod.jpg', 'cloud_product', 'CloudProductAttachment', 438, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(937, 'cloud/commerce/product/cloudproductattachment/439', 'Linkstreet Pro DAMS.jpg', 'cloud_product_phc5qodm.jpg', 'cloud_product', 'CloudProductAttachment', 439, 1, '2018-04-19 09:48:45', 'image/jpeg'),
(938, 'cloud/commerce/product/cloudproductattachment/441', 'RAPL 02.png', 'cloud_product_11ovtk8a.png', 'cloud_product', 'CloudProductAttachment', 441, 1, '2018-04-19 09:51:16', 'image/png'),
(939, 'cloud/commerce/product/cloudproductattachment/442', 'RAPL 03.png', 'cloud_product_js6pk7pf.png', 'cloud_product', 'CloudProductAttachment', 442, 1, '2018-04-19 09:51:16', 'image/png'),
(940, 'cloud/commerce/product/cloudproductattachment/443', 'RAPL 05.png', 'cloud_product_pf2u7lvd.png', 'cloud_product', 'CloudProductAttachment', 443, 1, '2018-04-19 09:51:16', 'image/png'),
(941, 'cloud/commerce/product/cloudproductattachment/444', 'RAPL 09.png', 'cloud_product_3eai76d3.png', 'cloud_product', 'CloudProductAttachment', 444, 1, '2018-04-19 09:51:16', 'image/png'),
(942, 'cloud/commerce/product/cloudproductattachment/445', 'RAPL 07.png', 'cloud_product_78aesvso.png', 'cloud_product', 'CloudProductAttachment', 445, 1, '2018-04-19 09:51:16', 'image/png'),
(943, 'cloud/commerce/product/cloudproductattachment/446', 'RAPL 11.png', 'cloud_product_q2hadprn.png', 'cloud_product', 'CloudProductAttachment', 446, 1, '2018-04-19 09:51:16', 'image/png'),
(944, 'cloud/commerce/product/cloudproductattachment/550', 'linkstreet.png', 'cloud_product_n58mnq4d.png', 'cloud_product', 'CloudProductAttachment', 550, 1, '2018-04-19 09:55:16', 'image/png'),
(945, 'cloud/commerce/product/cloudproductattachment/551', 'TrackRover-Campus.JPG', 'cloud_product_40u241v2.JPG', 'cloud_product', 'CloudProductAttachment', 551, 1, '2018-04-19 10:57:57', 'image/jpeg'),
(946, 'cloud/commerce/product/cloudproductattachment/552', 'campus1.png', 'cloud_product_gsiml51s.png', 'cloud_product', 'CloudProductAttachment', 552, 1, '2018-04-19 10:57:57', 'image/png'),
(947, 'cloud/commerce/product/cloudproductattachment/553', 'campus2.png', 'cloud_product_bativfeu.png', 'cloud_product', 'CloudProductAttachment', 553, 1, '2018-04-19 10:57:57', 'image/png'),
(948, 'cloud/commerce/product/cloudproductattachment/554', 'campus3.png', 'cloud_product_tsdd2hct.png', 'cloud_product', 'CloudProductAttachment', 554, 1, '2018-04-19 10:57:57', 'image/png'),
(949, 'cloud/commerce/product/cloudproductattachment/555', 'TrackRover-Fieldforce.JPG', 'cloud_product_jfs74p40.JPG', 'cloud_product', 'CloudProductAttachment', 555, 1, '2018-04-19 10:59:19', 'image/jpeg'),
(950, 'cloud/commerce/product/cloudproductattachment/556', 'FieldForce1.png', 'cloud_product_7j6mkni1.png', 'cloud_product', 'CloudProductAttachment', 556, 1, '2018-04-19 10:59:19', 'image/png'),
(951, 'cloud/commerce/product/cloudproductattachment/557', 'FieldForce2.png', 'cloud_product_bhglu3l1.png', 'cloud_product', 'CloudProductAttachment', 557, 1, '2018-04-19 10:59:19', 'image/png'),
(952, 'cloud/commerce/product/cloudproductattachment/558', 'FieldForce3.png', 'cloud_product_lfs7aop6.png', 'cloud_product', 'CloudProductAttachment', 558, 1, '2018-04-19 10:59:19', 'image/png'),
(953, 'cloud/commerce/product/cloudproductattachment/559', 'FieldForce4.png', 'cloud_product_mrlgcof5.png', 'cloud_product', 'CloudProductAttachment', 559, 1, '2018-04-19 10:59:19', 'image/png'),
(954, 'cloud/commerce/product/cloudproductattachment/560', 'YallaCode Learning Page.PNG', 'cloud_product_t0h7ud57.PNG', 'cloud_product', 'CloudProductAttachment', 560, 1, '2018-04-19 11:09:58', 'image/png'),
(955, 'cloud/commerce/product/cloudproductattachment/561', 'Junior.PNG', 'cloud_product_dj9g4pt0.PNG', 'cloud_product', 'CloudProductAttachment', 561, 1, '2018-04-19 11:09:59', 'image/png'),
(956, 'cloud/commerce/product/cloudproductattachment/562', 'Coding For All Ages.png', 'cloud_product_gdi3tj96.png', 'cloud_product', 'CloudProductAttachment', 562, 1, '2018-04-19 11:09:59', 'image/png'),
(957, 'cloud/commerce/product/cloudproductattachment/563', 'How We Teach.png', 'cloud_product_53q0qpet.png', 'cloud_product', 'CloudProductAttachment', 563, 1, '2018-04-19 11:09:59', 'image/png'),
(958, 'cloud/commerce/product/cloudproductattachment/564', 'Tracks.png', 'cloud_product_seeb0vl4.png', 'cloud_product', 'CloudProductAttachment', 564, 1, '2018-04-19 11:09:59', 'image/png'),
(959, 'cloud/commerce/product/cloudproductattachment/565', 'Yalla Code Junior.png', 'cloud_product_td6iege3.png', 'cloud_product', 'CloudProductAttachment', 565, 1, '2018-04-19 11:09:59', 'image/png'),
(960, 'cloud/commerce/product/cloudproductattachment/566', 'YallaCode Pro.png', 'cloud_product_1uvrcp0s.png', 'cloud_product', 'CloudProductAttachment', 566, 1, '2018-04-19 11:09:59', 'image/png'),
(961, 'cloud/commerce/product/cloudproductattachment/567', 'HMS1.png', 'cloud_product_s4a0oq00.png', 'cloud_product', 'CloudProductAttachment', 567, 1, '2018-04-19 11:32:36', 'image/png'),
(962, 'cloud/commerce/product/cloudproductattachment/568', 'HMS2.png', 'cloud_product_lqd4l070.png', 'cloud_product', 'CloudProductAttachment', 568, 1, '2018-04-19 11:32:36', 'image/png'),
(963, 'cloud/commerce/product/cloudproductattachment/569', 'HMS3.png', 'cloud_product_kmnmefke.png', 'cloud_product', 'CloudProductAttachment', 569, 1, '2018-04-19 11:32:36', 'image/png'),
(964, 'cloud/commerce/product/cloudproductattachment/570', 'HMS4.png', 'cloud_product_dcm8sg2p.png', 'cloud_product', 'CloudProductAttachment', 570, 1, '2018-04-19 11:32:36', 'image/png'),
(965, 'cloud/commerce/product/cloudscenariodetail/41', 'Campus_Safety.jpg', 'scenario_icon_i79hlk6e.jpg', 'scenario_icon', 'CloudScenarioDetail', 41, 1, '2018-04-19 17:08:58', 'image/jpeg'),
(966, 'cloud/commerce/product/cloudscenariodetail/42', 'Employee_tracking.jpg', 'scenario_icon_9eq2ijdm.jpg', 'scenario_icon', 'CloudScenarioDetail', 42, 1, '2018-04-19 17:09:29', 'image/jpeg'),
(967, 'cloud/commerce/product/cloudscenariodetail/43', 'Compliance.jpg', 'scenario_icon_km9ohfc5.jpg', 'scenario_icon', 'CloudScenarioDetail', 43, 1, '2018-04-24 09:07:44', 'image/jpeg'),
(968, 'cloud/commerce/product/cloudproductattachment/571', 'RCS.png', 'cloud_product_5gt79ltv.png', 'cloud_product', 'CloudProductAttachment', 571, 1, '2018-04-24 09:11:26', 'image/png'),
(969, 'cloud/commerce/product/cloudproductattachment/573', 'RCS.png', 'cloud_product_32va2el4.png', 'cloud_product', 'CloudProductAttachment', 573, 1, '2018-04-24 09:12:29', 'image/png'),
(970, 'cloud/commerce/product/cloudproductattachment/574', 'COMPAS1.png', 'cloud_product_1lamv6re.png', 'cloud_product', 'CloudProductAttachment', 574, 1, '2018-04-24 09:12:29', 'image/png'),
(971, 'cloud/commerce/product/cloudproductattachment/575', 'COMPAS2.png', 'cloud_product_6cb6rjmh.png', 'cloud_product', 'CloudProductAttachment', 575, 1, '2018-04-24 09:12:29', 'image/png'),
(972, 'cloud/commerce/product/cloudproductattachment/576', 'COMPAS3.png', 'cloud_product_s4510a3f.png', 'cloud_product', 'CloudProductAttachment', 576, 1, '2018-04-24 09:12:29', 'image/png'),
(973, 'cloud/commerce/product/cloudscenariodetail/44', 'Business_Process_Automation.jpg', 'scenario_icon_sk3j3q2a.jpg', 'scenario_icon', 'CloudScenarioDetail', 44, 1, '2018-05-03 16:47:00', 'image/jpeg'),
(974, 'cloud/commerce/product/cloudproductattachment/577', 'AppGen1.png', 'cloud_product_7d5k2hna.png', 'cloud_product', 'CloudProductAttachment', 577, 1, '2018-05-03 16:53:02', 'image/png'),
(975, 'cloud/commerce/product/cloudproductattachment/578', 'AppGen2.png', 'cloud_product_5ureglo4.png', 'cloud_product', 'CloudProductAttachment', 578, 1, '2018-05-03 16:53:02', 'image/png'),
(976, 'cloud/commerce/product/cloudproductattachment/579', 'AppGen3.png', 'cloud_product_m475prug.png', 'cloud_product', 'CloudProductAttachment', 579, 1, '2018-05-03 16:53:02', 'image/png'),
(977, 'cloud/commerce/product/cloudproductattachment/580', 'AppGen4.png', 'cloud_product_atso0h7p.png', 'cloud_product', 'CloudProductAttachment', 580, 1, '2018-05-03 16:53:02', 'image/png'),
(978, 'cloud/commerce/product/cloudproductattachment/581', 'AppGen5.png', 'cloud_product_av72kaqp.png', 'cloud_product', 'CloudProductAttachment', 581, 1, '2018-05-03 16:53:02', 'image/png'),
(979, 'cloud/commerce/product/cloudproductattachment/582', 'AppGen1.png', 'cloud_product_dhheapj6.png', 'cloud_product', 'CloudProductAttachment', 582, 1, '2018-05-03 16:53:05', 'image/png'),
(980, 'cloud/commerce/product/cloudproductattachment/583', 'AppGen2.png', 'cloud_product_c172uqof.png', 'cloud_product', 'CloudProductAttachment', 583, 1, '2018-05-03 16:53:05', 'image/png'),
(981, 'cloud/commerce/product/cloudproductattachment/584', 'AppGen3.png', 'cloud_product_e09t88ak.png', 'cloud_product', 'CloudProductAttachment', 584, 1, '2018-05-03 16:53:05', 'image/png'),
(982, 'cloud/commerce/product/cloudproductattachment/585', 'AppGen4.png', 'cloud_product_8bu0oleg.png', 'cloud_product', 'CloudProductAttachment', 585, 1, '2018-05-03 16:53:05', 'image/png'),
(983, 'cloud/commerce/product/cloudproductattachment/586', 'AppGen5.png', 'cloud_product_ekip4rf9.png', 'cloud_product', 'CloudProductAttachment', 586, 1, '2018-05-03 16:53:05', 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `g_product`
--

CREATE TABLE `g_product` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` text,
  `extra_description` text,
  `vender` varchar(50) DEFAULT NULL,
  `add_no` int(11) DEFAULT NULL,
  `add_date` datetime NOT NULL,
  `upd_no` int(11) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sourcer` int(11) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_product`
--

INSERT INTO `g_product` (`id`, `name`, `description`, `extra_description`, `vender`, `add_no`, `add_date`, `upd_no`, `upd_date`, `status`, `sourcer`, `deleted`) VALUES
(132, '10 Tablet Charger Cabinet', 'Product Contents: \nBase Unit x 1 \nPower Cord x 1 \nKey x 2\nUser Manual x 1 \nUSB Cable x 1\nTable Mounting Kit x 1\nXergo DT310PS is a standalone desktop storage and charge cabinet for 10 tablets. It is a feature-rich management device for school teachers. Beside placing and recharging the tablets after class, teachers can synchronize data on the tablets and lock the front door to ensure security. The LED signals on the mesh front door indicate the recharging and data synchronizing progress. In case of class of 20 or more, 2 or more Xergo cabinets can be stacked up to save space in the office. For a stylish outlook and innovation mentioned, it won Computex d&i Award, which is organized by iF award, in 2013. \n', '', 'CHENXERGO INC.', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:20:33', 1, 10081, 0),
(133, '10 Tablet Charger Cart+10 lock', 'Xergo DT310SS is an advanced version of Xergo DT310PS, a Computex d&i Award winning charge cabinet for 10 tablets. From charging, data synchronizing, LED indicators for process checking, to space-saving stacking and wall-mounting, it inherits all the innovation form its ancestor product. Furthermore, it has individual key locks for each tablet, offering more management flexibility and property security for school teachers. It is suitable for schools, tutoring centers, and meeting venues where modern technologies are deployed to raising bar of customer satisfaction. \nPackage Including: Base Unit x 1; Power Cord x 1; Key Set (10 keys) x 2; User Manual x 1; USB Cable x 1; Table Mounting Kit x 1', '', 'CHENXERGO INC.', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:20:28', 1, 10081, 0),
(140, 'SkyFire AC1200 w/ CloudNet', 'IgniteNet\'s SkyFire AC is the world\'s first outdoor dual-radio (dual-band concurrent) AP/CPE/PTP featuring the newest wireless and cloud technologies. The SkyFire AC contains 2 ultra-high powered 2x2 MIMO radios with one 802.11ac (5GHz) radio and one 802.11n (2.4GHz) radio capable of delivering blisteringly fast wireless speeds. The SkyFire AC is also available in single-band, single-radio versions to meet a variety of customer requirements and challenges.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:42:02', 1, 10044, 0),
(141, 'SunSpot AC1200 w/ CloudNet-EU ', 'IgniteNet\'s SunSpot is the most cost-effective, cloud-managed 802.11ac access point on the market. The SunSpot contains 2 independent, concurrent operation radios - one 802.11ac (5GHz) radio and one 802.11n (2.4GHz) radio - capable of delivering blisteringly fast wireless speeds. The sleek design of the SunSpot AC allows it to be placed inconspicuously in both offices and homes, bringing fast wireless connections to hard-to-reach locations.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 18:10:24', 0, 0, 0),
(142, 'SunSpot N300 w/ CloudNet-EU   ', 'IgniteNet’s feature-rich Cloud Controller is the world’s most cost-effective networking controller on the market today. The Cloud Controller enables operators and service providers worldwide to quickly deploy, manage, and grow wireless networks faster and easier than ever before. The Cloud Controller also provides the framework for the delivery of world-class services over-the-top (OTT) further enabling operators and service providers to bring enhanced value to their customers anytime, anywhere.', '', 'Accton Technology Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:27:39', 0, NULL, 0),
(169, 'SunSpot AC1200 w/ CloudNet-UK ', 'IgniteNet\'s SunSpot is the most cost-effective, cloud-managed 802.11ac access point on the market. The SunSpot contains 2 independent, concurrent operation radios - one 802.11ac (5GHz) radio and one 802.11n (2.4GHz) radio - capable of delivering blisteringly fast wireless speeds. The sleek design of the SunSpot AC allows it to be placed inconspicuously in both offices and homes, bringing fast wireless connections to hard-to-reach locations.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 18:10:19', 0, 0, 0),
(170, 'SunSpot AC1200 w/ CloudNet', 'IgniteNet\'s SunSpot is the most cost-effective, cloud-managed 802.11ac access point on the market. The SunSpot contains 2 independent, concurrent operation radios - one 802.11ac (5GHz) radio and one 802.11n (2.4GHz) radio - capable of delivering blisteringly fast wireless speeds. The sleek design of the SunSpot AC allows it to be placed inconspicuously in both offices and homes, bringing fast wireless connections to hard-to-reach locations.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:34:22', 0, NULL, 0),
(176, 'Digital Signage - Client      ', 'Advantech WebAccess+IMM Digital Signage Solution provides the platform for multimedia and interactive communications. \nIt allows user to manage and display dynamic, targeting messages to increase sales and engage your audience in real time.\n\nNote: \"Digital Signage - Client\"  need to work with \"Digital Signage - CMS Server\". \nPlease make sure you have CMS Server : \"Digital Signage - CMS Server\"', '', 'Advantech', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:19:41', 1, 10081, 0),
(184, 'HS-NH221A                     ', 'Mercury (HS-NH221A), the all-in-one IP camera from Hi Sharp, presents an extensive range of functions and transmits high-definition video wirelessly. Users can live view and playback videos from the cloud through connected mobile devices and receive push video when there is an event. An equipped micro SD card allows storage capacity for event videos up to 32GB. \n \nAn alarm is to be triggered when the PIR sensor detects a pet or humanoid movement. Environmental sensors, on the other hand, generate and represent data to help maintain the comfortableness of a smarter, safer home. \n', '', 'HiSharp', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:19:23', 1, 10081, 0),
(185, 'HS-NB101A                     ', 'Hi Sharp HS-NB101A is rigidly designed and built for outdoor environments. It can withstand all kinds of weather and offer clear vision days and nights. Its PoE (Power Over Ethernet) capability simplifies the complex network and electricity wiring from the traditional CCTV or IP surveillance cameras, and the free bundled content management system (NVMS) allows concurrent live view and management over 100 channels and supports web browser for live view and playback. With a cost-effective budget plan, it serves an ideal video surveillance solution for warehouse, transportation, and manufacturing sites.', '', 'HiSharp', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:19:18', 1, 10081, 0),
(186, 'HS-NB1021                     ', 'Hi Sharp HS-NB1021 is rigidly designed and built for outdoor environments. It can withstand all kinds of weather and offer clear vision days and nights. Its PoE (Power over Ethernet) capability simplifies the complex network and electricity wiring from the traditional CCTV or IP surveillance cameras, and the free bundled network video monitor system (NVMS) allows concurrent live view and management up to 100 channels and supports web browser for live view and playback. With a cost-effective budget plan, it serves as an ideal video surveillance solution for places warehouse, transportation, and manufacturing sites.', '', 'HiSharp', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:19:12', 1, 10081, 0),
(206, 'SkyFire AC1200-2 w/CloudNet-US', 'IgniteNet\'s SkyFire AC is the world\'s first outdoor dual-radio (dual-band concurrent)  AP/CPE/PTP featuring the newest wireless and cloud technologies.  The SkyFire AC contains 2 ultra-high powered 2x2 MIMO  radios with one 802.11ac (5GHz)  radio and one 802.11n (2.4GHz)  radio capable of delivering blisteringly fast wireless speeds.  The SkyFire AC is also available in single-band, single-radio versions to meet a variety of customer requirements and challenges.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 18:08:28', 0, 0, 0),
(209, 'SkyFire AC1200-2 w/CloudNet', 'IgniteNet\'s SkyFire AC is the world\'s first outdoor dual-radio (dual-band concurrent)  AP/CPE/PTP featuring the newest wireless and cloud technologies.  The SkyFire AC contains 2 ultra-high powered 2x2 MIMO  radios with one 802.11ac (5GHz)  radio and one 802.11n (2.4GHz)  radio capable of delivering blisteringly fast wireless speeds.  The SkyFire AC is also available in single-band, single-radio versions to meet a variety of customer requirements and challenges.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:39:39', 1, 10044, 0),
(210, 'SunSpot AC1200 w/ CloudNet', 'IgniteNet\'s SunSpot is the most cost-effective, cloud-managed 802.11ac access point on the market. The SunSpot contains 2 independent, concurrent operation radios - one 802.11ac (5GHz) radio and one 802.11n (2.4GHz) radio - capable of delivering blisteringly fast wireless speeds. The sleek design of the SunSpot AC allows it to be placed inconspicuously in both offices and homes, bringing fast wireless connections to hard-to-reach locations.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:39:24', 1, 10044, 0),
(212, 'Digital Signage - CMS Server  ', 'Advantech intelligent digital signage solution adopts a server-client architecture. At the server end, the CMS software WebAccess+IMM provides a platform for content editing and dispatching, while at the client end, a DS-570 media player equipped on a digital wall or a digital signage ensures the smooth video streaming. It supports multiple media formats and possesses user friendly interface for a retailer to interact with targeted clients with its newest advertisement or lively animation. \n\nUnderstanding the insufficiency of technological investment in a small and medium-sized retailer, GCR provides SaaS offering that covers the server end work with availability and reliability. What a retailer needs to do is to order a sufficient quantity of DS-570 based on the number of monitors in stores and to log onto the cloud to create its marketing contents and to schedule the broadcasting of it with WebAccess+IMM. Applying GCR’s smart digital signage solution, a retailer spares its efforts from hardware equipment like purchase, maintenance, and replacement, but focuses more on developing its business. \n', '', 'Advantech', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:19:35', 1, 10081, 0),
(227, 'Cloud-native SaaS POS         ', 'Cloud-native SaaS for POS and Store Management designed for independent stores as well small, medium and large chain, direct, franchised and mixed. Its API allows easy integration with ERP, CRM, eCommerce and any other IT systems.\n\nFrom independent Stores to large Chains\nGrowing competition demands the utmost concentration on customer service and supply chain optimization. For this reason, Information Technology must allow continuous data sharing not only within the company but also outside of it, integrating a new ecosystem that includes Business Partners and Customers, increasingly connected to the Internet.\n\naKite is the latest generation of POS (Point of Sale) and In Store software services, which eliminates the complexity from stores and the chain HQ and moves it to the Cloud *, where it is managed by collaboration between Microsoft for the platform and BEDIN Shop Systems for the application software.\n\nSimplicity is finally a reality. For a new store opening or for the replacement of a broken PC simply log onto a web page, follow the identification procedure, and after a few minutes, start to sell.\n\nData Security is far greater than for solutions managed internally.', '', 'BEDIN Shop Systems srl', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:21:14', 1, 10044, 0),
(278, 'SG500                         ', 'Abocom SG500 is the best network security solution for SOHO, small-and-medium sized business and branch offices.', '', 'Abocom', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:37:23', 1, 10044, 0),
(284, 'RetailCam System              ', 'RetailCam counter is a compact and easy-to-install network camera. Discreet and non-invasive designed specifically for retail stores, addressing the market’s needs for a cost effective people counter to monitor the IN and OUT traffic. Camera will be mounted on the ceiling of the entrance, looking perpendicular down to count people passing by.\n\nRetailCam counter is a Wi-Fi hotspot itself. It distinguishes a signal range and detects the Wi-Fi signals emitted by the mobile phones within the range. Wi-Fi signals includes the unique ID and also the signal strength (which we used to determine the distance from the door), providing additional business insights such as store front conversion, dwell time, returning customers, cross shoppers, etc. to retailers.\n\nRetailCam counter is designed to be installed without training. An installation app with step-by-step guideline is provided, ensuring installer to not overlook any steps that could be causing the counter dysfunction.\n\nRetailCam report is a web-based control panel, allowing users to manage multiple counters and access to the updated traffic data for different stores from any networked location. Retailers can view and export the traffic data in different time interval, e.g. hourly, daily, weekly, monthly,and yearly, etc. giving them the flexibility to study on the traffic data from a holistic view and also in a more detailed perspective.', '', 'LAKSON TECHNOLOGY PTE LTD.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-12 12:29:04', 0, NULL, 0),
(335, 'Spark N300', 'IgniteNet\'s Spark N300 is the most cost effective, cloud managed access point on the market.\nThe Spark N300 contain one 802.11n (2.4GHz) radio capable of delivering blisteringly fast wireless speeds.  The ultra-small size of the Spark N300 allows it to be placed inconspicuously in both offices and homes, bringing fast wireless connections to hard to reach locations.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:36:52', 1, 10044, 0),
(376, 'ML-35 60GHz+5G PTP', 'IgniteNet\'s MetroLinq 60 is the world’s first cost-effective 60GHz PTP radio enabling high performance, interference-free connections worldwide. The MetroLinq 60 has an added advantage of being license-free in most markets globally, allowing ultra-fast deployment without the hassle of other frequency bands requiring a license. \n\nThe MetroLinq 60 also includes a second 5GHz radio which can be configured as PTP (backup), AP, or client for applications ranging from hotspots to maintenance to many more!\n\nNote: In the package, there\'re two pieces of MetroLinq PTP60-35.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:36:33', 1, 10044, 0),
(402, 'HSG-200                       ', 'WiFi advertising gateway(mbox HSG-200) is the perfect network appliances to allow businesses to provide internet access for their customers. Designed with customizable login portals (or captive portals) and a variety of deployment options, mbox HSG-200 allows the enterprise to offer flexible and differentiated Internet access for guests, VIP members or visitors.\n\nThe mbox HSG-200 can be deployed as an integrated gateway appliance, where the router, firewall, link balancer and captive portals all exist in one appliance, saving costs from procuring multiple appliance while enjoying maximum performance and reducing point of failures.\n\nThe mbox cloud management capabilities enables Managed Service Provider (MSP) to massively manage and monitor all the deployed mboxes at the fingertips.\n', '', 'RansNet Singapore Pte Ltd', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:36:14', 1, 10044, 0),
(435, 'Noodoe 10                     ', 'GCR table service block system is the first restaurant service system to transform consumer gestures into instant text commands and enable immediate interactions in physical restaurant and on Facebook.\nWith a table service block system, restaurant customers can gracefully express their needs via a simple flip and quickly be served with sophisticated table-side attendance. There is no more interrupt during their quality private time dining. ', '', 'Noodoe Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-26 10:35:49', 1, 10081, 0),
(460, 'TP-100                        ', 'AREC TP-100 Auto-Tracking Mount, compatible with diverse types of video cameras, can automatically pan/\ntilt camera to follow a moving lecturer, keeping him/her constantly in frame while shooting video.\nWith new-generation auto-tracking technology, AREC TP-100 provides superior smooth movement even in\nclose-up shots, just like a professional cameraman does.', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:43:33', 1, 10081, 0),
(477, 'DSA-3200                      ', 'Embedded Signage Player with Impressive Media Support and low TCO.\nQniq’s DSA line includes highly reliable solid-state networked media players with an impressive combination of superior scaling technology and an advanced video decoding engine. DSA fully supports HTML5 empowering the most creative of content designers to work within their own environment eliminating cumbersome out-of-date toolsets. \nContent support is critical. With full HD video decoding, Media RSS feeds, and simultaneous playback from local, networked and streaming sources, Qniq isn’t shy about its showcase.', '', 'Qniq Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:43:43', 1, 10081, 0),
(478, 'Display Watchdog - eyeSign', 'eyeSign protects your investment by securing and monitoring it without break!\n*Optional purchasing item based on Qniq Digital Sugnage system deployed.\n\nQNIQ’s CaptivAD solution is designed to operate 7 X 24. How about your signage display? Are they working as expected? If someone powers off your display, how long does it take before you recognize the situation? It is the last missing security portion of the digital signage puzzle!\n\n Without even minimal monitoring mechanism, you leave your investment in high risk! You may miss the opportunity to seize the business!\n\neyeSign is the monitor watchdog solution to provide the function needed to secure and monitor your display. It is used in combination with the CaptivAD media player and CMS, and alerts you of incidents which can be quickly resolved.\n \nUnique Design in the World\n  eyeSign is the monitor watchdog system that monitors the display nonstop. It is the unique design in the world. It takes no more than 10 seconds to install eyeSign and no technical skill is required to install or operate it. Once installed, it integrates with the CaptivAD system to provide the watchdog service constantly.\n\nInstant Protection\n The monitoring begins once the CaptivAD media player is powered on. eyeSign monitors the display continuously. If the display is off or hung, the alert signal will be sent to CMS and the operator will be notified. This problem of the display is therefore can be resolved immediately and the downtime is significantly reduced.\n\nComplete integration\n  eyeSign is the optional device of CaptivAD solution. It is fully integrated with the CaptivAD media player and CMS. No additional integration or configuration is required.  It is a true plug and play watchdog!', '', 'Qniq Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-01 18:06:33', 1, 10081, 0),
(502, 'CMG-800                       ', 'CMG (Cloud Managed Gateway) series mbox is designed to be deployed as an integrated gateway/CPE appliance, saving costs from additional router, firewall and other appliances, while enjoying maximum performance and reducing point of failures. mbox CMG series have the following capabilities built-in:\n-Router \n-Stateful Firewall\n-Outbound Multi-Link Balancing', '', 'RansNet Singapore Pte Ltd', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:39:53', 1, 10044, 0),
(504, 'LOG-500                       ', 'mbox LOG series is a comprehensive and cost-effective syslog management tool for businesses to meet stringent compliances such as Sarbanes-Oxley Act, PCI DSS, HIPAA, and many others, which often involve the collection and analysis of logs from different sources such as routers, firewalls, switches or servers through syslog messages.', '', 'RansNet Singapore Pte Ltd', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:39:43', 1, 10044, 0),
(627, 'DSA-3200 Fullset              ', 'Qniq Digital Signage Realized Business Performance\nQniq offers solution: Prime, for any business endeavor. From single project to multiple chain store fronts, Qniq solutions are both profitable to our SI partners and on-demand in the digital signage marketplace.\nEmbedded Signage Player with Impressive Media Support and low TCO.\nQniq’s DSA line includes highly reliable solid-state networked media players with an impressive combination of superior scaling technology and an advanced video decoding engine. DSA fully supports HTML5 empowering the most creative of content designers to work within their own environment eliminating cumbersome out-of-date toolsets. \nContent support is critical. With full HD video decoding, Media RSS feeds, and simultaneous playback from local, networked and streaming sources, Qniq isn’t shy about its showcase.', '', 'Qniq Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:39:25', 1, 10081, 0),
(629, 'UC-6050 with 20 license       ', 'V2Plus UC Server is the first one and only versatile \"Unified Communication & Collaboration + IoT\" (UC&C + IoT)  universal connection platform. It solves the issue of needing to use multiple boxes with complex inter-connection to provide unified communication functions by integrating voice, video and data processing over its own unique Universal Connection Architecture, on one single box. With this innovation, the customers who demand unified communication solution will be able to deploy the unified communication network in a very short time (compared to using the traditional unified communication equipment), and enjoy the ease of system management as a result of combining all functions into one box and using one central web based management interface. This approach significantly reduces the operation cost required to establish and maintain a unified communication network, as well as the total cost of ownership, due to having fewer boxes to own and to maintain.\n \nThe V2Plus UC Server allows the end users or system integrators to deploy an intelligent, integrated Universal Connection system that combines voice/video conference calls, instant messaging, data exchange, collaboration, and surveillance monitoring applications at the customer\'s site in typically less than 1 hour time. It will then enable the customers to apply creative service application and business management scenarios in a distributed business environment.  ', '', 'V2 Technology Inc', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:39:09', 1, 10044, 0),
(632, 'FileCruiser VA2600 12TB-100   ', 'Enterprise File Sync & Share solution\n\nVess A2600\n3U/16-bay RAID6 Storage Appliance System \n(R-PSU, Memory:8GB*2, HDD:3.5\" SATA 3TB*4, CPU:Xeon E3-1245V2, mSATA 64GB) with FileCruiser SW and 100 user Licenses.\n\nFileCruiser is a complete cloud solution which includes Enterprise File Synchronization and Sharing (EFSS) features, a server-storage hardware platform, and software-only option for small, medium, and large enterprises. Users easily build their organization’s own Dropbox-like cloud storage service, which provides them anytime, anywhere data access, easy file sharing that puts an end to FTP, and improved collaboration capabilities for group projects. FileCruiser is able to support up to thousands of accounts and large storage deployments.\nFileCruiser can be implemented on various hardware platforms, including the 3U 16-bay Intel x86 server-storage appliance which is suitable to be deployed by SMBs. If performance demands it, FileCruiser can be implemented on multiple Intel x86 1U servers connected to PROMISE VTrak or Vess storage. This solution provides the redundancy to protect servers and storage.', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:38:41', 1, 10044, 0),
(633, 'FileCruiser VA2600 48TB-100   ', 'Enterprise File Sync & Share solution\n\nVess A2600\n3U/16-bay RAID6 Storage Appliance System \n(R-PSU, Memory:8GB*2, HDD:3.5\" SATA 3TB*16, CPU:Xeon E3-1245V2, mSATA 64GB) with FileCruiser SW and 100 user Licenses.\n\nFileCruiser is a complete cloud solution which includes Enterprise File Synchronization and Sharing (EFSS) features, a server-storage hardware platform, and software-only option for small, medium, and large enterprises. Users easily build their organization’s own Dropbox-like cloud storage service, which provides them anytime, anywhere data access, easy file sharing that puts an end to FTP, and improved collaboration capabilities for group projects. FileCruiser is able to support up to thousands of accounts and large storage deployments.\nFileCruiser can be implemented on various hardware platforms, including the 3U 16-bay Intel x86 server-storage appliance which is suitable to be deployed by SMBs. If performance demands it, FileCruiser can be implemented on multiple Intel x86 1U servers connected to PROMISE VTrak or Vess storage. This solution provides the redundancy to protect servers and storage.', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 17:36:23', 1, 10044, 0),
(634, 'FileCruiser VR2600S 48TB-500  ', 'FileCruiser VR2600S with R2600iD 48TB and 500 user license\n\n-The Ultimate in Value, Flexibility, and Reliability\nThe Vess R2000’s brilliant design consolidates both block and file storage onto a single platform, providing SMBs a cost-effective way to meet performance goals while simplifying dministration and adding flexibility. The high availability active Vess R2000 is designed for data-intensive industries, including midsize to large scale surveillance installations or cloud data centers where downtime is unacceptable and where large external storage capacity, support for on-demand expansion, long retention periods, and reliable high bandwidth throughput are a must.\n\n-Optimized for Your Business Needs\nThe Vess R2000 conveniently allows users to select an operation mode optimized for video surveillance or for generic IT environments, delivering customized performance and expandable capacity for multiple storage requirements, including unstructured data, archiving and cloud data centers. With innovative features like Perfect Rebuild, which can reduce the time required to rebuild an array by more than 400%, the Vess R2000 delivers the performance and reliability you demand for your application.\n\n-Simplifying Management and Support\nSimplicity and ease of use are absolutely crucial for SMBs with limited IT resources. The Vess R2000 is designed specifically with SMBs in mind as it features One Plug Auto Service (OPAS) to reduce maintenance complexity and streamline an easier tech support workflow. Simply plug in a USB drive and the user can retrieve information about the system for tech support, upgrade firmware, reset passwords and much more.\n\n-Going the Extra Mile to Protect Your Data\nThe Vess R2000’s new CacheGuard Data Protection features, HDD Cache Backup and Advanced Battery Flash Backup, go that extra mile to ensure your data is safe in case of power loss. Delivering protection of HDD cache data and RAID controller write cache content beyond the standard 72 hour window, you can rest assured knowing your data is protected even when disaster strikes.\n\nVR2600 can upgrade up to 4 x 1U server.\nVR2600 support up to 1000 user licenses per 1U server with 4 x Gigabit Ethernet.\n              support up to 2000 user licenses per 1U server with 2 x 10 Gigabit Ethernet (2 x 10 Gigabit Ethernet interface is optional item, please contact GCR)', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:41:15', 1, 10044, 0),
(668, 'VA2200-NVR-24TB               ', 'Promise Vess A2200 NVR Storage Appliance with 24TB \n\nIt\'s an All-in-One Hardware NVRs Design with Storageand optimized for IP video surveillance.\nNo separate RAID storage unit to manage, eliminating the need to purchase an extra server, controller cards, and external cables.\n\nExtensive VMS Support\nCertified/tested with the world’s leading video management software\n\nMidsize to Large-Scale Solutions\nIdeal for up to over a hundred full-HD IP cameras making it perfect for banking, retail, gaming, manufacturing, and many more industries\n\nCost Effective & Scalable\nIntegrated solution results in less management overhead, plus it’s easy & affordable to add capacity with the Vess R2000 external storage series\n\nEasy to Administrate & Maintain\nHot swappable drive bays, redundant power supplies, & One Plug Auto Service ensure Vess is incredibly easy to administer & maintain\n\n', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:41:06', 1, 10044, 0),
(669, 'VA2600-NVR-32TB               ', 'The Vess A2600 is a 3U 16-Bay NVR storage appliance that can be deployed in mid-size to large scale deployments of over 100 full-HD IP cameras. With the latest IntelR Xeon processor, the Vess A2600 is ideal for transportation, municipal, government or corporate surveillance needs who require expansion flexibility, rock-solid reliability, and a low total cost of ownership.', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:40:43', 1, 10044, 0),
(670, 'VR2600xiS-Storage-64TB        ', 'The Ultimate in Value, Flexibility, and Reliability\nUnified storage that is everything it should be\n\nThe Vess R2000 Series consolidates both block and file storage onto a single platform, providing SMBs a cost-effective way to meet performance goals while simplifying administration and adding flexibility. The high availability active- active Vess R2000 is designed for a diverse range of data-intensive industries, including midsize to large scale surveillance installations, filesharing pools for compressed video ingest and playback or cloud data centers.\n\nOverview: \n-Storage for Surveillance \n-Dynamic solution optimized for video surveillance\n-Designed to meet the growing challenge of unstructured data\n-Cutting edge redundant, high capacity archiving solution\n-High availability dual controller design\n-Scale up to 112 hard disk drives via Vess J2000 series expansion units', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:40:34', 1, 10044, 0),
(671, 'VR2600xiD-Storage-64TB        ', 'The Ultimate in Value, Flexibility, and Reliability\n\nThe Vess R2000 Series provides SMBs a cost-effective way to keep data online longer while allowing fast access and the capability to scale into the enterprise cloud. The Vess R2000 Series is an ideal backup and archiving solution, and is certified with the industry’s top virtualization platforms, including VMware vSphere, Citrix XenServer, and Microsoft Hyper-V. \nDelivering the industries best price/performance ratio, the Vess R2000 provides SMBs with a low cost entry point that can easily grow along with their business needs.\n\nOverview: \n-Storage for Surveillance \n-Dynamic solution optimized for video surveillance\n-Designed to meet the growing challenge of unstructured data\n-Cutting edge redundant, high capacity archiving solution\n-High availability dual controller design\n-Scale up to 112 hard disk drives via Vess J2000 series expansion units', '', 'Promise Technology, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:40:25', 1, 10044, 0),
(695, 'KS-710                        ', 'KS-710 supports synchronized multi-source recording through HDMI /VGA/ RJ45 interfaces currently found on full HD network cameras, notebook PCs, digital microscopes, DVD players, wireless microphone etc.\nKS-710 supports up to 4-channel synchronized recording. Users can choose multi-view recording or multi-channel recording formats accordingly. The multi-view recording requires less storage space and network bandwidth. It also can be immediate watched when streamed. \nThe multi-channel recording provides individual but synchronizing sources for video editing and post-production, making the workflow process from shoot-to-post more flexible and efficient', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:40:10', 1, 10081, 0),
(723, 'Noodoe 10                     ', 'GCR table service block system is the first restaurant service system to transform consumer gestures into instant text commands and enable immediate interactions in physical restaurant and on Facebook.\nWith a table service block system, restaurant customers can gracefully express their needs via a simple flip and quickly be served with sophisticated table-side attendance. There is no more interrupt during their quality private time dining.', '', 'Noodoe Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:23:58', 0, NULL, 0),
(724, 'Noodoe 10                     ', 'GCR table service block system is the first restaurant service system to transform consumer gestures into instant text commands and enable immediate interactions in physical restaurant and on Facebook.\nWith a table service block system, restaurant customers can gracefully express their needs via a simple flip and quickly be served with sophisticated table-side attendance. There is no more interrupt during their quality private time dining.', '', 'Noodoe Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:23:49', 0, NULL, 0),
(749, 'EyeRIS 9090FT-Standard Mount  ', 'EyeRIS 9090 FT\n\nGCR Interactive Whiteboard System,  is an extremely powerful Interactive Whiteboard solution based on Cybernetyx’s pioneering Visual Touch technology. High-speed optical tracking makes it possible to provide a real time writing experience to the user, and making it enjoyable to operate like a digital whiteboard.\nNot only does it give you industry’s largest surface area beyond 100”, it also has an unmatched 255 simultaneous points Multi-touch Multi-user experience, fastest response time, and extraordinary cost-effectiveness.\n\n‧ Interactive Collaboration / True MultiTouch Support: EyeRIS is the only interactive solution in the industry today to support up to 255 simultaneous touches on the board.\n‧ Automatic Calibration: Using an automatic electronic filter switcher controlled by software, EyeRIS is able to extract RGB images of the projection, thus enabling the system to calibrate itself.\n‧ Higher Resolution: Using a unique sub-pixel processing technique, Cybernetyx Visual Touch tracking engine is able to enhance the resolution upto 9 times the native resolution.\n‧ High-speed Tracking: With a tracking speed of up to 195 million dots/sec, EyeRIS is perhaps the fastest interactive system in the world today.\n‧ Superior Ambient light disturbance resistance: Using a proprietary technology of dual layer band-pass filtering optics, EyeRIS is able to cut-off any stray light disturbance on the interactivity.\n‧ EyeRIS Driver Utility\n‧ Seamless interactivity on edge-blended projection surface', '', 'CYBERNETYX TECHNIK PRIVATE LIMITED', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:39:56', 1, 10081, 0),
(779, 'Intelligent Beacon Based CMS', 'ShopJoy offers the possibility to communicate with customers through their smartphone in a new smart way. ShopJoy, backed with iBeacon, makes it possible to pinpoint the exact position of a customer ranging from meters down to centimeters, independent of physical distractions. The precision of the product gives an organization endless possibilities of communication. \n\nUsing ShopJoy, an organization can increase sales, boost brand awareness and create loyal and satisfied customers.\n\n', '', 'ShopJoy', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:39:45', 1, 10081, 0),
(787, 'HSG-800                       ', 'WiFi advertising gateway(mbox HSG-800) is the perfect network appliances to allow businesses to provide internet access for their customers. Designed with customizable login portals (or captive portals) and a variety of deployment options, mbox HSG-800 allows the enterprise to offer flexible and differentiated Internet access for guests, VIP members or visitors.\n\nThe mbox HSG-800 can be deployed as an integrated gateway appliance, where the router, firewall, link balancer and captive portals all exist in one appliance, saving costs from procuring multiple appliance while enjoying maximum performance and reducing point of failures.\n\nThe mbox cloud management capabilities enables Managed Service Provider (MSP) to massively manage and monitor all the deployed mboxes at the fingertips.\n', '', 'RansNet Singapore Pte Ltd', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:38:07', 1, 10044, 0),
(802, 'FNS-POE-24', 'The IgniteNet FusionSwitch PoE is a Gigabit Ethernet access switch with 24 Gigabit PoE ports and four 10G uplink ports. The switch is an ideal\nGigabit access switch for SMB, enterprise, and campus networks. The FusionSwitch PoE is packed with features that bring high availability,\ncomprehensive security, robust multicast control, and advance QoS to the network edge, while maintaining simple management. The switch also\nsupports the most advance IPv6 management, IPv6 security, and IPv6 multicast control in accordance with the growth of IPv6 deployment.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:37:19', 1, 10044, 0),
(830, 'CI-218                        ', 'AREC CI Series Full HD Fixed Network Cameras offer 1080p Full HD resolution with excellent image quality. To provide best recording performance,\nAREC CI Series Network Cameras are equipped with different optical zoom lens, allowing users to shoot close-up view of the speaker and adjust the\nfield of view in accordance with the different classroom environment.', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:37:06', 1, 10081, 0),
(832, 'CI-303                        ', 'AREC CI Series Full HD Fixed Network Cameras offer 1080p Full HD resolution with excellent image quality. To provide best recording performance,\nAREC CI Series Network Cameras are equipped with different optical zoom lens, allowing users to shoot close-up view of the speaker and adjust the\nfield of view in accordance with the different classroom environment.', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:36:51', 1, 10081, 0),
(834, 'CI-430                        ', 'AREC CI Series Full HD Fixed Network Cameras offer 1080p Full HD resolution with excellent image quality. To provide best recording performance,\nAREC CI Series Network Cameras are equipped with different optical zoom lens, allowing users to shoot close-up view of the speaker and adjust the\nfield of view in accordance with the different classroom environment.', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:36:37', 1, 10081, 0),
(836, 'MS-550                        ', 'MS-550 supports synchronized multi-source recording through HDMI /VGA/ RJ45 interfaces currently found on full HD network cameras,\nnotebook PCs, digital microscopes, DVD players, wireless microphone etc.\nMS-550 supports up to 4-channel synchronized recording. Users can choose multi-view recording or multi-channel recording formats accordingly. The multi-view recording requires less storage space and network bandwidth. It also can be immediate watched when streamed.\nThe multi-channel recording provides individual but synchronizing sources for video editing and post-production, making the workflow process from shoot-to-post more flexible and efficient', '', 'AREC', 10046, '2018-02-08 18:16:41', 10084, '2018-03-27 16:12:09', 1, 10081, 0),
(838, 'EyeRIS 9090UST-Standard Mount ', 'EyeRIS 9090UST\n\nGCR Interactive Whiteboard System,  is an extremely powerful Interactive Whiteboard solution based on Cybernetyx’s pioneering Visual Touch technology. High-speed optical tracking makes it possible to provide a real time writing experience to the user, and making it enjoyable to operate like a digital whiteboard.\nNot only does it give you industry’s largest surface area beyond 100”, it also has an unmatched 255 simultaneous points Multi-touch Multi-user experience, fastest response time, and extraordinary cost-effectiveness.\n\n‧ Interactive Collaboration / True MultiTouch Support: EyeRIS is the only interactive solution in the industry today to support up to 255 simultaneous touches on the board.\n‧ Automatic Calibration: Using an automatic electronic filter switcher controlled by software, EyeRIS is able to extract RGB images of the projection, thus enabling the system to calibrate itself.\n‧ Higher Resolution: Using a unique sub-pixel processing technique, Cybernetyx Visual Touch tracking engine is able to enhance the resolution upto 9 times the native resolution.\n‧ High-speed Tracking: With a tracking speed of up to 195 million dots/sec, EyeRIS is perhaps the fastest interactive system in the world today.\n‧ Superior Ambient light disturbance resistance: Using a proprietary technology of dual layer band-pass filtering optics, EyeRIS is able to cut-off any stray light disturbance on the interactivity.\n‧  EyeRIS Driver Utility\n‧  Seamless interactivity on edge-blended projection surface', '', 'CYBERNETYX TECHNIK PRIVATE LIMITED', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:35:57', 1, 10081, 0),
(840, 'MFP Management Solution       ', 'CATCHTECH builds Smart office through IOT for smart service partners.\nOutput accounting is a solution to give proactive service and optimise serice resources like human and parts.\nWe collect information from network device in office through Output Agent which is no installaiton need. Service partners will receive alert automatically through email or mobile app. In addition, they can have timely report either scheduled or manual which is based on contractual model.\n', '', 'CATCHTECH TECHNOLOGY CORPORATION', 10046, '2018-02-08 18:16:41', 10084, '2018-02-12 12:10:09', 0, NULL, 0),
(845, 'NSW100-28P                    ', 'The Zyxel Nebula NSW100 Series Cloud Managed Layer-2 Switches come in 8- and 24-port models with high power budget of 180 and 375 watts\nrespectively. They are designed to be managed completely from the Nebula Control Center. The cloud-based management interface provides site-wide configuration and monitoring of all ports, which allows multiple switches to be configured at the same time with a single click over the Web.\nThe Nebula switches bring many benefits of the cloud management systems, such as simplified configuration, easy management, site-wide visibility and real-time control for speedy branch network deployments into networks.\nAdvanced settings such as user friendly ACL, VLAN-based QoS and PoE scheduling significantly improve the efficiency of network management.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:35:34', 1, 10044, 0),
(846, 'NSW200-28P                    ', 'The Zyxel Nebula NSW200-28P Cloud Managed PoE Switch is a 375-watt high-power-budget Layer-2 switch with 10 Gigabit uplinks designed to be managed completely from the Nebula cloud. The cloud-based management interface provides site-wide configuration and monitoring on all ports, which allows multiple switches to be configured at the same time with a single click over the Web.\nThe NSW200-28P brings many benefits of the cloud management systems, such as simplified configuration, easy management, site-wide visibility and real-time control for speedy branch network deployments into networks.\nAdvanced settings such as user friendly ACL, VLAN-based QoS and PoE\nscheduling significantly improve the efficiency of network management.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:35:05', 1, 10044, 0),
(847, 'NAP102                        ', 'The Zyxel Nebula NAP102 802.11ac Dual-Radio Nebula Cloud Managed Access Point is a high-performance, cloud-managed 2x2 MIMO 802.11ac AP designed for deployments in offices, schools, hospitals, hotels and retail stores. With ultra-fast speeds of up to 1.2 Gbps, the Nebula NAP102 has revolutionized cloud managed wireless networking to a higher entry level. Featuring dualconcurrent,\ndual-band operation and advanced technologies such as Dynamic Channel Selection, Load Balancing and Smart Client Steering, the NAP102 delivers high throughput and reliable coverage for a superb Wi-Fi\nexperience.\n\nEvery Nebula AP has been engineered for cloud management. Based on the NETCONF standard, all data traffics between the cloud and access points are\nexchanged using secure transports to ensure transaction-safe configuration. \n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia.', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:34:10', 1, 10044, 0),
(848, 'NAP203                        ', 'The Zyxel Nebula NAP203 802.11ac Dual-Radio, Dual-optimized Antenna 3x3 Nebula Cloud Managed Access Point is a high-performance 3-stream 802.11ac Wi-Fi AP featuring ultra-fast speeds of up to 1.75 Gbps with a groundbreaking “dual-optimized” antenna design. Through the innovative adjustable antenna setting, the NAP203 can provide the best signal coverage in both ceiling-mount and wall-mount deployments to deliver constant, no-compromise Wi-Fi performance. Additionally, the ultra-slim ID design at 32mm height blends perfectly into modern interior decorations.\n\nEvery Nebula AP has been engineered for cloud management. Based on the NETCONF standard, all data traffics between the cloud and access points are exchanged using secure transports to ensure transaction-safe configuration on all Nebula devices. Furthermore, with the intuitive management interface, administrators are able to manage all the access points quickly even without training.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Area: Peru, Chile, Australia, Singapore, Malaysia, Indonesia.', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:33:59', 1, 10044, 0),
(849, 'NAP303                        ', 'The Zyxel Nebula NAP303 802.11ac Dual-Radio Smart Antenna 3x3 Nebula Cloud Managed Access Point is a high-performance 3x3 802.11ac Wi-Fi AP capable of delivering combined data rates of up to 1.75 Gbps. Featuring Smart Antenna technology, the NAP303 perfectly solves coverage problems by adjusting antenna patterns adaptively to fit different wireless environments. The NAP303’s industry-leading RF output power and sensitivity jointly offer greater coverage and better performance to networks. The ultra-fast capabilities makes NAP303 perfect for interference-laden environments, such as conference rooms, airports, educational facilities and other high-density venues.\n\nEvery Nebula AP has been engineered for cloud management. Based on the NETCONF standard, all data traffics between the cloud and access points are\nexchanged using secure transports to ensure transaction-safe configuration on all Nebula devices. Furthermore, with the intuitive management interface, administrators are able to manage all the access points quickly even without training.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:33:47', 1, 10044, 0);
INSERT INTO `g_product` (`id`, `name`, `description`, `extra_description`, `vender`, `add_no`, `add_date`, `upd_no`, `upd_date`, `status`, `sourcer`, `deleted`) VALUES
(850, 'NAP353                        ', 'The Zyxel Nebula NAP353 802.11ac Dual-Radio External Antenna 3x3 Nebula Cloud Managed Access Point is a high-performance outdoor 3x3 802.11ac AP capable of delivering combined data rates of up to 1.75 Gbps. Featuring dual-concurrent, dual-band operation and advanced technologies such as Dynamic Channel Selection, Load Balancing and Smart Client Steering as well as with IP66-rated weather protection, the NAP353 delivers high throughput and reliable coverage for a superb Wi-Fi experience even in harsh outdoor environments.\n\nEvery Nebula AP has been engineered for cloud management. Based on the NETCONF standard, all data traffics between the cloud and access points are exchanged using secure transports to ensure transaction-safe configuration on all Nebula devices. Furthermore, with the intuitive management interface, administrators are able to manage all the access points quickly even without training.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:33:36', 1, 10044, 0),
(851, 'Bluetooth Range Extender      ', 'Noodoe Bluetooth Range Extender helps identify the optimal range of operation between the Noodoe Service Block and the Noodoe Waiter Wristband.\n*Optional purchasing item based on Noodoe10 system deployed.\n\nThe optimal working distance between Noodoe Service Block and the Noodoe Waiter Wristband is 15-20 meters in open space. The Range Extender solves the environment constrain, to extend service coverage and forward all broadcast messages from Service Blocks to Wristbands and Tablet in the same system.\nTypical use cases :\n- Large open-space\n- VIP room or kitchen\n- Concrete wall\n- Floors\n- Metal door\n', '', 'Noodoe Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:33:17', 1, 10081, 0),
(853, 'NSG100                        ', 'The Zyxel Nebula NSG100 Cloud Managed Security Gateway is built with remote management and ironclad security for organizations with growing numbers of distributed sites. With the extensive suite of security features that includes ICSA-certified firewall, IPsec VPN connectivity, Intrusion Detection\nand Prevention (IDP) as well as Application Intelligence, the NSG100 provides deep, extensive protection to meet everything that small- to mid-size businesses would need. \n\nAs the Zyxel Nebula NSG100 has been completely designed for cloud managed, the installation and management become simpler than ever.\nThrough Nebula’s cloud interface, administrators are able to create site-wide policies and monitor all the branch sites effortlessly even without training.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling region:  Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:32:54', 1, 10044, 0),
(854, 'NSW100-10P                    ', 'The Zyxel Nebula NSW100 Series Cloud Managed Layer-2 Switches come in 8- and 24-port models with high power budget of 180 and 375 watts \nrespectively. They are designed to be managed completely from the Nebula Control Center. The cloud-based management interface provides site-wide configuration and monitoring of all ports, which allows multiple switches to be configured at the same time with a single click over the Web.\nThe Nebula switches bring many benefits of the cloud management systems, such as simplified configuration, easy management, site-wide visibility and real-time control for speedy branch network deployments into networks.\nAdvanced settings such as user friendly ACL, VLAN-based QoS and PoE scheduling significantly improve the efficiency of network management.\n\nPlease notice that one year Nebula license has been included in the product. If you would like to keep the Nebula services, please order license on CPSP.\n\nSelling Region: Peru, Chile, Australia, Singapore, Malaysia, Indonesia', '', 'Zyxel Communications Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:32:43', 1, 10044, 0),
(862, 'ET4201-SX                     ', '100BASE-FX Single mode LC Simplex SFP transceiver, up to 20km Tx1550nm / Rx1310nm\n\nET4201-SX is a 1000BASE-SX Multi mode LC Duplex SFP transceiver, provides the distance up to 500m (850nm) witn FE speed. ET4201 series of Small Form Factor Pluggable (SFP) transceiver module is specifically designed for the high performance integrated duplex data link over single or multi-mode optical fiber. These transceiver modules are compliant with the SFP Multi-source Agreement (MSA). With the ability to hot swap, these modules offer an easy way to be installed into SFP MSA compliant ports at any time without the interruption of the host equipments operating online', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:32:20', 1, 10044, 0),
(868, 'ECS2100-10P', 'ECS2100-10P is a Web Smart Pro Switch, it supports 8 x GE PoE ports + 2 GE SFP uplink ports with1 RJ45 Console port and Fanless design. The PoE budget max. 125W. \n\nThe ECS2100 Series is a range of web-smart switches designed for the SMB market. The switches can be deployed in different target network topologies, from small to large. Besides powerful software features, the switches provide a complete solution from 1G to 10G, including both non-PoE and PoE options.\n\nThe ECS2100 Series offers complete PoE solutions from 65 W to 740 W. The ECS2100-10PE is the most compact (height: 2.65 cm) managed PoE switch design, a cost-effective PoE switch with powerful software and security features. The switch can be mounted in many small spaces, on a wall or in a rack. The ECS2100-10P is a full-PoE fanless design switch, it supports up to 8 ports at 15.4 W, or 4 ports at 30 W to meet the increasing power demands of users. The ECS2100-28PP is an extendable PoE switch, it delivers a default 370 W of PoE power, but can be extended up to 740 W by purchasing a PS3000 (Power Shelf) and EPS460W (Entended Power Supply) to support future IP cameras, IP telephones, or access points.\n\nThe ECS2100 Series supports 8, 24, and 48 10/100/1000BASE-T ports, with each switch supporting 2 or 4 Gigabit SFP ports. The ECS2110-26T provides 2 10G uplink SFP ports to increase switch uplink bandwidth and meet the needs of future 802.11ac routers.\n\nAs well as IPv4 and IPv6 features, the ECS2100 supports L3 static routing. The ECS2100 includes the best green-saving technologies (IEEE 802.3az and Green-Ethernet). Using the Energy Efficient Ethernet standard, the switch automatically decreases power usage when network traffic is low.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:38:08', 1, 10044, 0),
(869, 'ECS2100-10T', 'ECS2100-10T is a Web Smart Pro Switch, it supports 8 x GE ports + 2 GE SFP ports with1 RJ45 Console port and Fanless design.\n\nThe ECS2100 Series is a range of web-smart switches designed for the SMB market. The switches can be deployed in different target network topologies, from small to large. Besides powerful software features, the switches provide a complete solution from 1G to 10G, including both non-PoE and PoE options. The ECS2100 Series supports 8, 24, and 48 10/100/1000BASE-T ports, with each switch supporting 2 or 4 Gigabit SFP ports. The ECS2110-26T provides 2 10G uplink SFP ports to increase switch uplink bandwidth and meet the needs of future 802.11ac routers.\nAs well as IPv4 and IPv6 features, the ECS2100 supports L3 static routing. The ECS2100 includes the best green-saving technologies (IEEE 802.3az and Green-Ethernet). Using the Energy Efficient Ethernet standard, the switch automatically decreases power usage when network traffic is low.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:39:15', 1, 10044, 0),
(870, 'ECS2100-28P', 'ECS2100-28P is a Web Smart Pro Switch, it supports 24 x GE PoE+ ports and 4 GE SFP ports . The PoE Budget is max.200W. ECS2100-28P provide up to 30 Watts of power to attached devices, such as VoIP phones, wireless access points, and surveillance cameras, all over existing Ethernet cables.\n\nThe ECS2100 Series is a range of web-smart switches designed for the SMB market. The switches can be deployed in different target network topologies, from small to large. Besides powerful software features, the switches provide a complete solution from 1G to 10G, including both non-PoE and PoE options.\n\nThe ECS2100 Series offers complete PoE solutions from 65 W to 740 W. The ECS2100-10PE is the most compact (height: 2.65 cm) managed PoE switch design, a cost-effective PoE switch with powerful software and security features. The switch can be mounted in many small spaces, on a wall or in a rack. The ECS2100-10P is a full-PoE fanless design switch, it supports up to 8 ports at 15.4 W, or 4 ports at 30 W to meet the increasing power demands of users. The ECS2100-28PP is an extendable PoE switch, it delivers a default 370 W of PoE power, but can be extended up to 740 W by purchasing a PS3000 (Power Shelf) and EPS460W (Entended Power Supply) to support future IP cameras, IP telephones, or access points.\n\nThe ECS2100 Series supports 8, 24, and 48 10/100/1000BASE-T ports, with each switch supporting 2 or 4 Gigabit SFP ports. The ECS2110-26T provides 2 10G uplink SFP ports to increase switch uplink bandwidth and meet the needs of future 802.11ac routers.\n\nAs well as IPv4 and IPv6 features, the ECS2100 supports L3 static routing. The ECS2100 includes the best green-saving technologies (IEEE 802.3az and Green-Ethernet). Using the Energy Efficient Ethernet standard, the switch automatically decreases power usage when network traffic is low.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:40:07', 1, 10044, 0),
(871, 'ECS4120-28F', 'ECS4120-28F is a high-performance Gigabit Ethernet switch featuring 28 ports, with 20 x GE SFP+ 4CG + 4 10G SFP+ ports. ECS4120-28F is high performance Layer 2+ managed switch with 128Gbps switching capacity.\n\nThe Edgecore ECS4120 switch series is a Gigabit Ethernet access switch with four 10G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to Gigabit bandwidth. It is also an ideal Gigabit access switch for SMB, enterprise, and campus networks. The ECS4120 switch series is packed with features that bring high availability, comprehensive security, robust multicast control, and advance QoS to the network edge, while maintaining simple management. The switch also supports the most advance IPv6 management, IPv6 security, and IPv6 multicast control in accordance with the growth of IPv6 deployment. ISPs can expand their services from home to business users by providing a more reliable and resilient network (ITU-T G.8032 ERPS), L2 VPNs, and advanced OAM (Operations, Administration, and Maintenance) functions to ensure service-level agreements.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:41:14', 1, 10044, 0),
(878, 'BenQ CMS Solution x 10 Devices', 'CMS player usage\n\nThe Content Management System (CMS) by BenQ Business Solutions is a cloud-based digital signage management system. The CMS provides the following powerful features that simplifies digital signage management and increases efficiency.\n\nSystem Management\n‧ Centralized control over multiple digital signage displays in a geographical area that scale from a small vincinity to a large city\n‧ Web browser interface and cloud-based structure that allow location-independent and real-time management Content Management\n‧ Supports a wide variety of media formats\n‧ Provides a comprehensive media library and layout template\n‧ Capability of integrating with external RSS content to display real-time messages\n‧ Instant preview and distribution of media contents\n‧ Face recognition technology that enables interactive content presentation and precise customer targeting \n\nDevice Management\n‧ Real-time monitoring over the status of players and digital signage devices\n‧ Remote control of volume and scheduled on/off time\n', '', 'Qisda Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 12:20:10', 1, 10081, 0),
(893, 'B01+ with CMS01               ', 'Midiki Multi-Functional Digital Signage Board  [B01+ : 4K Octa-Core digital signage board with CMS01]\n\nThe most competitive 4K/Octa-core solution in industry.\n“midiki” Signage Solution offers customized ad layout, flexible programming and “ad-flash” functionalities for real-time, flexi-content and max-trending ad effect.\nAd-Signage is easy to use, and allows your ad content to be designed and managed according to your communication needs, whilst bringing saving in ad budget, as well as optimizing communication effectiveness.\nAd-Signage, with built-in LAN and wireless LAN networking functionalities, can easily achieve real-time content uplink, effective (single/group) terminal management, perfect for retail outlets, government and education institutions, exhibitions, conferences, hospitals, transportation terminals, etc., where surgical and on-demand mass communication is most commercially effective.\n\nDigital Signage Board:\nThe most competitive 4K/Octa-core solution in industry.\nB series products are highly integrated ARM based mini PC boards designed for TV/monitor/Digital Signage/IPC and surveillance industry. It includes main stream technology for data connection and various I/O for expansion or control. For data connection, the Ethernet and WIFI/BT is the standard feature for B series products, and 3G/4G WWAN module are optional features. It is integrated with \nGPS/SD/IR/eDP/LVDS/MIPI/HDMI/V-By-One/Micro phone/speaker USB/UART/I2C/GPIO etc. \n\nB series products provide the benefit for lowering cost and reducing design effort perspective.\n\nCMS:\n“midiki Content Management System”, culminates internet, information and multimedia technology, to offer solutions that can generate, edit, control and playback materials for images, video and streaming on monitor, TV, LED display, TV-Wall, touch-screen, and projectors, with on-demand split-screen format for creative and flexible display of information and content.\n- User-Friendly interface setting and scheduling management\n- With multimedia information of marquee texts, photos, music, videos and weather, enriching the advertised content\n- Centralized information management and internet broadcasting \n- The management of advertising signage can be centralized and modular as required, when managing content creation, and monitoring access clearance in real-time, setting up flawless operation and management plan\n\nCMS supports: \n- Professional Planning, Application Services and Solutions\n- One Player easily taking care of all your business marketing, advertisements, real-time messaging needs\n- Multimedia materials\n- Weather information\n- Publishing Approval\n- Access & Clearance Management\n- Terminal Management\n- Material Management\n- Statistics', '', 'Abocom', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:29:40', 1, 10044, 0),
(894, 'M1+ with CMS01                ', 'Midiki Digital Signage Player [M1+: 4K Octa-Core digital signage player with CMS01]\n\nThe most competitive 4K/Octa-core solution in industry. \n“midiki” Signage Solution offers customized ad layout, flexible programming and “ad-flash” functionalities for real-time, flexi-content and max-trending ad effect.\nAd-Signage is easy to use, and allows your ad content to be designed and managed according to your communication needs, whilst bringing saving in ad budget, as well as optimizing communication effectiveness.\nAd-Signage, with built-in LAN and wireless LAN networking functionalities, can easily achieve real-time content uplink, effective (single/group) terminal management, perfect for retail outlets, government and education institutions, exhibitions, conferences, hospitals, transportation terminals, etc., where surgical and on-demand mass communication is most commercially effective.\n\nDigital Signage Player:\nThe most competitive 4K/Octa-core solution in industry. Black anodized aluminum alloy case\nEmbedded hardware, with built-in state-of-the-art digital-signage playback software, high definition ad content.\nmidiki Player (\"Digital Signage Player\") is the state-of-the-art synergistic alternative to all the conventional billboards, prints, and audio-visual advertisement playback combined, while offering large-size display surface, multimedia audio-visual playback, digital marquee-texting and real-time push-messaging, as well as supporting touch-screen functionality, enabling advanced interactive advertisement (as software option).\n\nCMS:\n“midiki Content Management System”, culminates internet, information and multimedia technology, to offer solutions that can generate, edit, control and playback materials for images, video and streaming on monitor, TV, LED display, TV-Wall, touch-screen, and projectors, with on-demand split-screen format for creative and flexible display of information and content.\n- User-Friendly interface setting and scheduling management\n- With multimedia information of marquee texts, photos, music, videos and weather, enriching the advertised content\n- Centralized information management and internet broadcasting \n- The management of advertising signage can be centralized and modular as required, when managing content creation, and monitoring access clearance in real-time, setting up flawless operation and management plan\n\nCMS supports: \n- Professional Planning, Application Services and Solutions\n- One Player easily taking care of all your business marketing, advertisements, real-time messaging needs\n- Multimedia materials\n- Weather information\n- Publishing Approval\n- Access & Clearance Management\n- Terminal Management\n- Material Management\n- Statistics', '', 'Abocom', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:29:30', 1, 10044, 0),
(895, 'ECS4100-52T', '48 x GE + 4 GE SPF L2+ Switch', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:28:53', 1, 10044, 0),
(915, 'ECS4120-28T', 'ECS4120-28T is a high-performance Gigabit Ethernet switch featuring 28 ports, with 24 x GE + 4 x 10G SFP+ ports.  ECS4120-28T is high-performance  Layer 2+ managed with 128Gbps switching capacity and fan-less design to increases the reliability of the system.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:28:44', 1, 10044, 0),
(921, 'GW-AC1200', 'IgniteNetTM’s Gateway AC1200 is a cost-effective, cloud-managed 802.11ac wireless router gateway. The Gateway AC1200 contains two independent, concurrent-operating radios — one 802.11ac (5 GHz) radio and one 802.11n (2.4 GHz) radio — capable of delivering blisteringly fast wireless speeds. The sleek design of the Gateway AC1200 allows it to be placed inconspicuously in both offices and homes, delivering fast wireless connections and convenient Internet access.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:28:36', 1, 10044, 0),
(924, 'ECS2100-10PE', 'ECS2100-10PE is a Web Smart Pro Switch, it supports 8 x GE PoE+ ports + 2 GE SFP uplink ports with 1 RJ45 Console port and Fanless design. The PoE Budget is max.65W.\n\nThe ECS2100 Series is a range of web-smart switches designed for the SMB market. The switches can be deployed in different target network topologies, from small to large. Besides powerful software features, the switches provide a complete solution from 1G to 10G, including both non-PoE and PoE options.\n\nThe ECS2100 Series offers complete PoE solutions from 65 W to 740 W. The ECS2100-10PE is the most compact (height: 2.65 cm) managed PoE switch design, a cost-effective PoE switch with powerful software and security features. The switch can be mounted in many small spaces, on a wall or in a rack. The ECS2100-10P is a full-PoE fanless design switch, it supports up to 8 ports at 15.4 W, or 4 ports at 30 W to meet the increasing power demands of users. The ECS2100-28PP is an extendable PoE switch, it delivers a default 370 W of PoE power, but can be extended up to 740 W by purchasing a PS3000 (Power Shelf) and EPS460W (Entended Power Supply) to support future IP cameras, IP telephones, or access points.\n\nThe ECS2100 Series supports 8, 24, and 48 10/100/1000BASE-T ports, with each switch supporting 2 or 4 Gigabit SFP ports. The ECS2110-26T provides 2 10G uplink SFP ports to increase switch uplink bandwidth and meet the needs of future 802.11ac routers.\n\nAs well as IPv4 and IPv6 features, the ECS2100 supports L3 static routing. The ECS2100 includes the best green-saving technologies (IEEE 802.3az and Green-Ethernet). Using the Energy Efficient Ethernet standard, the switch automatically decreases power usage when network traffic is low.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:38:46', 1, 10044, 0),
(931, 'ECS4100-28T', 'The Edgecore ECS4100-28T switch is a Gigabit Ethernet access switch with four 1G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to a Gigabit of bandwidth.\n\nThe Edgecore ECS4100-28T switch is a Gigabit Ethernet access switch with four 1G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to a Gigabit of bandwidth. It is also an ideal Gigabit access switch for SMB, enterprise, and campus networks. The ECS4100-28T switch is packed with features that bring high availability, comprehensive security, robust multicast control, and advance QoS to the network edge, while maintaining simple management. The switch also supports the most advance IPv6 management, IPv6 security, and IPv6 multicast control in accordance with the growth of IPv6 deployment. ISPs can expand their services from home to business users by providing a more reliable and resilient network (ITU-T G.8032 ERPS), L2 VPNs, and advanced OAM (Operations, Administration, and Maintenance) functions to ensure service-level agreements.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:40:42', 1, 10044, 0),
(933, 'ECS4100-26TX-ME', 'The Edgecore ECS4100-26TX-ME switch is a Gigabit Ethernet access switch with two 10G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to Gigabit bandwidth. The ECS4100-26TX-ME provides 6KV surge protection on Ethernet ports, which can prevent damage to the network caused by power surges and lightning strikes.\n\nThe Edgecore ECS4100-26TX-ME switch is a Gigabit Ethernet access switch with two 10G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to Gigabit bandwidth. It is also an ideal Gigabit access switch for SMB, enterprise, and campus networks. The ECS4100-26TX-ME switch is packed with features that bring high availability, comprehensive security, robust multicast control, and advance QoS to the network edge, while maintaining simple management. The switch also supports the most advance IPv6 management, IPv6 security, and IPv6 multicast control in accordance with the growth of IPv6 deployment. ISPs can expand their services from home to business users by providing a more reliable and resilient network (ITU-T G.8032 ERPS), L2 VPNs, and advanced OAM (Operations, Administration, and Maintenance) functions to ensure service-level agreements. The ECS4100-26TX-ME provides 6KV surge protection on Ethernet ports, which can prevent damage to the network caused by power surges and lightning strikes.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-03-05 13:37:28', 1, 10044, 0),
(935, 'ECS4100-28T-EU (Promotion)    ', 'ECS4100-28T-EU\n24 x GE + 4 GE SPF L2+ Switch\n\nECS2100-10T-EU\n8 ports 10/100/1000Base-T + 2G SFP Web Smart Pro Switch', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:02:22', 0, NULL, 0),
(936, 'ECS4100-52T-EU (Promotion)    ', 'ECS4100-52T-EU\n48 x GE + 4 GE SPF L2+ Switch\n\nECS2100-10T-EU\n8 ports 10/100/1000Base-T + 2G SFP Web Smart Pro Switch', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:02:16', 0, NULL, 0),
(937, 'ECS4100-26TX-EU (Promotion)   ', 'ECS4100-26TX-EU\n24 x GE + 2 x 10G SFP+ ports L2+ Switch\n\nECS2100-10T-EU\n8 ports 10/100/1000Base-T + 2G SFP Web Smart Pro Switch', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 16:02:11', 0, NULL, 0),
(938, 'ECS4100-26TX-ME-EU (Promotion)', 'ECS4100-26TX-ME-EU\n24 x GE + 2 x 10G SFP+ ports L2+ Switch\n\nECS2100-10T-EU\n8 ports 10/100/1000Base-T + 2G SFP Web Smart Pro Switch', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 17:11:35', 0, 0, 0),
(940, 'SP-W2-AC1200', 'The most cost-effective, cloud-managed 802.11ac Wave2 AP with Indoor/Outdoor design in on universal model', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:27:56', 1, 10044, 0),
(942, 'Spark AC Wave2 (Promotion)    ', 'SP-W2-AC1200\nThe most cost-effective, cloud-managed 802.11ac Wave2 AP with Indoor/Outdoor design in on universal model\n\n1 Year Cloud License\nIgniteNet’s Cloud solution is an easy-to-use cloud-based controller solution that lets you affordably monitor, manage, and provision your IgniteNet products.\n\nPlease download the attachment to apply the free license.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 11:49:40', 0, 0, 0),
(943, 'Retail Analytics - 4C Pack    ', 'SkyREC - The Best Solution for Brick-and-Mortar Retailers\n\nSkyREC Analytics solution is a in-store solution improve store performance by Video analysis. \n4C Package is used for 18-30 Sqm shopping mall. \n\nSkyREC, Business Intelligence for retail in-store analytics, offers science-based shopper behavior and store performance analysis with crystal clear insights.\nBrick-and-mortar retailers today no longer compete on product, price, and availability alone. Providing a better shopping experience for customers is the key to increase more revenue and brand value. Shoppers \nFind out shopper behavior and preference via video, and multiple sensors analysis without bothering customers. Simply with one day installation, and start enjoy 24-7-365 BI analytics service.\nScientific measurement meets the real-world insights - it\'s the most valued big data for predicting shopper behaviour, improving in-store operation, decreasing cost and increasing sales revenue\nProvide total analytics solution via cloud-based platform and monthly subscription service. All data is encrypted with high security.\nincluding:\n-Traffic Counting & Conversion \n-Hot Zone & Popular Goods \n-Stuffing Optimization \n-Shopper Engagement \n-Shopper Path\n-Promotion \n-Weather', '', 'SkyREC', 10046, '2018-02-08 18:16:41', 10084, '2018-02-12 09:34:29', 0, NULL, 0),
(946, 'ECS2100-28PP', 'The ECS2100-28PP is an extendable PoE switch, it delivers a default 370 W of PoE power, but can be extended up to 740 W by purchasing a PS3000 (Power Shelf) and EPS460W (Entended Power Supply) to support future IP cameras, IP telephones, or access points. ECS2100-28PP supports 24 x GE PoE ports and 4 Gigabit SFP ports. The PoE Budget is max 370W', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:27:34', 1, 10044, 0),
(947, 'ECS2100-28T', 'ECS2100-28T is a Web Smart Pro Switch, it supports 24 x GE ports + 4 GE SFP ports with1 RJ45 Console port and Fanless design.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:27:22', 1, 10044, 0),
(948, 'ECS2100-52T', 'ECS2100-52T is a Web Smart Pro Switch, it supports 48 x GE ports + 4 x integrated Gigabit SFP ports. Besides providing more uplink bandwidth, the SFP ports can be used for redundant links.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:27:10', 1, 10044, 0),
(958, 'ECS4110-52T', 'ECS4110-52T\nL2 Gigabit Ethernet Standalone Switches\n48 x GE + 4 GE SFP L2+ Swtich', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 11:01:45', 0, 0, 0),
(959, 'Spark N300(UK)                ', 'IgniteNet\'s Spark N300 is the most cost effective, cloud managed access point on the market.', '', 'SMC Networks, Inc.', 10046, '2018-02-08 18:16:41', 10084, '2018-02-22 17:45:50', 0, 0, 0),
(961, 'ECS4620-28F                   ', '22 x GE SFP + 2 x GE Combo (RJ45/SFP) + 2 x 10G SFP+ ports \n\nECS4620-28F is a high-performance Gigabit Ethernet Layer 3 switches featuring 28 ports; with 22 100/1000 SFP ports, 2 x 10/100/1000 Combo Ports, 2 x 10G SFP+ ports, and one 10G dual port expansion slot. The switches are ideal for high-performance server aggregations, such as enterprise data centers, where they can connect high-end or network-attached files servers over fiber ports. They can also be deployed as a backbone upgrade, or to provide Gigabit–to-the-desktop for power users. These switches are packed with features and are a cost-effective solution that bring continuous availability, enhanced security, and advanced QoS to the network edge, while maintaining simplicity of management.\n\nECS4620-28F is a compact but high-performance Gigabit Ethernet Layer 3 switch featuring 28 ports; with 22 100/1000 SFP ports, 2 x 10/100/1000 Combo Ports, 2 x 10G SFP+ ports, and one 10G dual port expansion slot. ECS4620-28F has with 1 x RJ45 console port, 1 x USB type A storage port, RPU connector and Stack up to 4 units', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:26:20', 1, 10044, 0),
(962, 'AS5812-54T-EC                 ', 'The AS5812-54T-EC are 48-port 10GbE switches with 6 40GbE uplinks designed forcarrier/enterprise aggregation, data center top-of-rack, and SDN-enabled networks.  and the AS5812-54T-EC has 48 10GBASE-T RJ-45 ports. The switches are an ideal solution for traditional three-tier aggregation or core and folded-Clos architectures, serving with a 2:1 oversubscription.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:26:11', 1, 10044, 0),
(971, 'ECS4120-28FV2         ', 'ECS4120-28FV2 is a high-performance Gigabit Ethernet switch featuring 28 ports, with 20 x GE SFP+ 4CG + 4 10G SFP+ ports with DDM support for all ports. ECS4120-28FV2 is high performance Layer 2+ managed switch with 128Gbps switching capacity.\n\nThe Edgecore ECS4120 switch series is a Gigabit Ethernet access switch with four 10G uplink ports. The switch is ideal for Internet Service Providers (ISPs) and Multiple System Operators (MSOs) to provide home users with triple-play services with up to Gigabit bandwidth. It is also an ideal Gigabit access switch for SMB, enterprise, and campus networks. The ECS4120 switch series is packed with features that bring high availability, comprehensive security, robust multicast control, and advance QoS to the network edge, while maintaining simple management. The switch also supports the most advance IPv6 management, IPv6 security, and IPv6 multicast control in accordance with the growth of IPv6 deployment. ISPs can expand their services from home to business users by providing a more reliable and resilient network (ITU-T G.8032 ERPS), L2 VPNs, and advanced OAM (Operations, Administration, and Maintenance) functions to ensure service-level agreements.', '', 'Edgecore Networks Corporation', 10046, '2018-02-08 18:16:41', 10084, '2018-02-23 16:26:03', 1, 10044, 0),
(974, 'Retail Analytics - 4C Pack', 'SkyREC - The Best Solution for Brick-and-Mortar Retailers\n\n- Server: BIS-350 x1\n- Camera: CAM-TF-3MH x1\n- Camera: CAM-HM-F5M x3\n- License: 4CAM\n\nSkyREC Analytics solution is a in-store solution improve store performance by Video analysis. \n4C Package is used for 18-30 Sqm shopping mall.  \n\nSkyREC, Business Intelligence for retail in-store analytics, offers science-based shopper behavior and store performance analysis with crystal clear insights.\nBrick-and-mortar retailers today no longer compete on product, price, and availability alone. Providing a better shopping experience for customers is the key to increase more revenue and brand value. Shoppers \nFind out shopper behavior and preference via video, and multiple sensors analysis without bothering customers. \nScientific measurement meets the real-world insights - it\'s the most valued big data for predicting shopper behaviour, improving in-store operation, decreasing cost and increasing sales revenue\nProvide total analytics solution via cloud-based platform and monthly subscription service. All data is encrypted with high security.\nincluding:\n-Traffic Counting & Conversion \n-Hot Zone & Popular Goods \n-Stuffing Optimization \n-Shopper Engagement \n-Shopper Path\n-Promotion \n-Weather', '', 'SkyREC', 10084, '2018-02-12 14:21:26', 10084, '2018-02-23 16:25:47', 1, 10081, 0),
(975, 'All-in-One Smart Center', 'Home Security Systems / All-in-One Smart Center\n\nWaltzONE is smart home devices for Home and SMB , WaltzONE is very powerful SmartHome devices include 720P IPCAM , Zigbee WSN , T&H sensor , Siren , Motion detection (SW) and two way voice inside . Also support external Zigbee sensors such as door sensor and remote controller (Will support more sensor through Firmware UPG in future) .And got FCC / NCC / VCCI / Telco (Japan) certificate . The Installation very easy and quickly meanwhile user can install by themselves . Also support iOS & Android APP both so far.', '', 'Accton Technology Corporation', 10084, '2018-02-12 14:27:33', 10084, '2018-02-23 16:25:08', 1, 10081, 0),
(976, 'Door Sensor', 'WaltzONE accessory - Door Sensor\nExtend security zone to door and window, as well as enable sleep mode on App.', '', 'Accton Technology Corporation', 10084, '2018-02-12 14:28:50', 10084, '2018-02-23 16:24:57', 1, 10081, 0),
(977, 'KeyFob', 'WaltzONE accessory - KeyFob\n\nActivate/de-activate siren immediately, make sounds to scare the gangsters.', '', 'Accton Technology Corporation', 10084, '2018-02-12 14:30:02', 10084, '2018-02-23 16:24:51', 1, 10081, 0),
(978, 'LOWI Social media intelligence', 'Neuftek is a company with profession in Big Data technology and application. Our Saas application LOWI Ver. 2.0 can support 70 countries, 150 areas of nature language process and meaning analysis that can provide enterprise and government the need of digital marketing and public opinion analysis. LOWI’s feature and function as below,\nConcept Explore：The concept search helps to exclude perception and explore the details from big data to support enterprise to get its customer and marketing insight.\nInfluencer Analysis：The advanced Network Transitivity model support enterprise to measure social communities, network transitive force, media and KOL. \nTopic Tracking：Tracking event, media, competitor activities & people which happen within 1 hour and notice relative person to prevent PR crisis.\nMy Reporting：On-line Self-Subscription the various reports in minutes Help each working individual the information need of decision support.\nTrend Analysis：Accumulated past event into model to predict the flow trend, customer consumption value which affected by event .\n\nSuccess story\nTCY International is a GCA base, online e-Commerce of fashionable makeup corp. They own STARSUKI ...of several makeup brands. Yearly revenue around USD$50M. TCY operated eWOM as its major marketing strategy. The want to roll out GCA model to South-East Asia, Neuftek provide:\n- Multi-language eWOM analysis in one single platform.\n- Integrated various media which include FB, forum, news, blog in one Saas.\n- Discover and monitor the market trend, support TCY marketing to make product and marketing strategy in one second\n- Topic tracking & monitoring to get customer sentimental feedback to prevent PR crisis.\n- Accumulated past event into model to predict the fashionable trend.', '', 'Neuftek Co., Ltd.', 10084, '2018-02-23 16:45:35', 10084, '2018-02-23 16:50:27', 1, 12008, 0),
(979, 'Campus Management System', 'Campus Live - A \'S-a-a-S\' Based ERP solution for the school is a complete application which helps to upgrade the standared of any school/college not only in the management level but also help in  transforming the educational standared, increase the security system of school, manage the resourse in efficient way, reduce the communication gap between the parents, faculties and management team, provides complete IT infrastructure to the campus.', '', 'Tech Evangelist Pvt Ltd', 10084, '2018-03-01 10:50:10', 10084, '2018-03-01 14:01:34', 1, 100089, 0),
(980, 'IREVO Digital Signage', 'Benefits of iRevo Digital Signage\nAttention Grabbing\nStudies demonstrate that people respond best to moving images. iRevo Digital Signage goes one step better and provides videos and audio in a predefined synchronization to effectively persuade viewers to consume and act on the message.\n\nCentralized\nControl single or many displays around the world from one remote/centralized location ensuring quality, consistency and optimization of resources to manage the digital signage network.\n\n  Control\niRevo Digital Signage gives its owner the control of the medium. Control can include switching on/off device, the kind of messages to be displayed, prioritizing content, and scheduling timing etc.\n\n  Easy to Use\niRevo Digital Signage networks are very easy to understand, operate and use. Individuals with basic knowledge of computers and media can be easily instructed on managing an iRevo Digital Signage system.\n\n  Cost-effective\nPrinted materials like static posters and banners are costly to replace over time, especially if you want your content to remain relevant and interesting to your audience. iRevo Digital Signage saves a step in the production process by going straight from the design phase to live display.\n\n  Dynamic\niRevo Digital Signage is highly adaptable medium that is customization friendly. Horizontal and vertical display orientation, display layout and messaging can be designed different on different screens; multi-regions on the screen can be altered dynamically etc.\n\n  Focused\niRevo Digital Signage provides focused targeting of content based on target audience, time of day, language, location and consumer aptitude.\n\n  Measurable\niRevo Digital Signage systems offers the feature that provides reports on the content displayed.\n\n  Real-time\nInformation on the screen can be updated in real-time. This functionality makes it convenient to send emergency messages, on-the-spot promotions, welcoming of visitors and other such instances where the content needs to be changed instantly.\n\n  Scalable\nStart with a single or few displays and add on to the network as resources and communication objectives permit.', '', 'IREVO Multimedia Inc', 10084, '2018-03-01 14:00:22', 10015, '2018-03-02 15:17:10', 1, 100089, 0),
(981, 'Osprey Cloud', 'Osprey Cloud, a Manufacturing Analytics Platform based on Industry 4.0 technologies (IIOT, Big Data etc.) is used in Smart Manufacturing for taking data driven smart decisions which would provide tangible and intangible benefits to clients in a sustained manner. Osprey Cloud platform, a plug & play product, can be used immediately using our IOT device. \n1- ClairIOT - IOT device used as sensor & gateway inside factory\n2- Osprey Cloud - Cloud based Analytics Platform.\nThe Osprey Clould solution serves following industries:\n1. Pharma\n2. Packaging\n3. Appliance\n4. Textiles\n5. Automotive \n6. other discrete manufacturing industries', 'Some extra test description.', 'ClairViz Systems LLP', 10084, '2018-03-01 15:05:04', 10084, '2018-03-02 15:23:34', 1, 100089, 0),
(982, 'capV', 'capV is a next generation on demand video calling platform which works on any operating system without any need for software installations, and anybody with access to a browser can have access to all its features and functionality. Enables its users to use the power of real-time communications across various platforms, and developers to integrate the services of this platform with ease. It is offered as a Platform-as-a-Service (PaaS) solution.\n\nThe Feature list for capV platform includes mobile and web SDKs, Video Calling, Voice Recording, text chat, messaging, analytics, User Authentication,screen sharing, file sharing etc.,\n\ncapV has the flexibility to be embedded into any  industry/enterprise requirements.', '', 'CaprusIT Pvt Ltd', 10084, '2018-03-01 15:13:40', 10010, '2018-03-02 18:08:55', 1, 100089, 0),
(983, 'BlueFox Count', 'BlueFox technology senses mobile phones in real-time\n\nWithout having to download an app, BlueFox solution helps businesses and brands sell more and engage with customers in any location, and in a privacy-friendly way. BlueFox address two markets: Businesses and Consumers.\n\nBLUEFOX provides sensing and communication technology solutions. It develops and provides analytics solutions regarding foot traffic. The company offers products that detect and analyze the mobile phones of any visitors in real-time; a data set that includes shop floor alerts, dynamic displays, SMS messaging. The company develops a related application which sends an alert when occupancy reaches the defined limit. The company provides this real time and online information to retail stores and brick-and-mortar locations including retail outlets, clubs, restaurants, cities, venues, airports, event managers, and sports stadiums.\n[BlueFox Count] : Sense in real-time how many devices (therefore people) are in a location.\n‧ Real-time monitoring of how many people (devices) are in your location.\n‧ Send real-time alerts via SMS, mobile app or email when the threshold is hit.\n‧ Displays historical data and trends via mobile app.\nUse Cases\n‧ Short-term rental location to monitor occupancy.\n‧ Restaurants, retail and public locations to measure traffic.\n‧ Governments & public events to estimate participation / audience.', '', 'BlueFox IO, Inc.', 10084, '2018-03-05 12:13:26', 10084, '2018-03-05 16:22:03', 1, 10081, 0),
(984, 'BlueFox Engage', 'BlueFox technology senses mobile phones in real-time\n\nWithout having to download an app, BlueFox solution helps businesses and brands sell more and engage with customers in any location, and in a privacy-friendly way. BlueFox address two markets: Businesses and Consumers.\n\nBLUEFOX provides sensing and communication technology solutions. It develops and provides analytics solutions regarding foot traffic. The company offers products that detect and analyze the mobile phones of any visitors in real-time; a data set that includes shop floor alerts, dynamic displays, SMS messaging. The company develops a related application which sends an alert when occupancy reaches the defined limit. The company provides this real time and online information to retail stores and brick-and-mortar locations including retail outlets, clubs, restaurants, cities, venues, airports, event managers, and sports stadiums.\n[BlueFox Engage] : Engage with Customers by sending coupons and promotions to your customers smartphones. Measure the response and impact. \nSend promotional messages to shoppers at the moment-of-truth\n‧ when they are nearby (up to 150ft /50m) any of your sensors\n‧ no app required: works with any smartphone\n‧ Opt-in based communication\n‧ Facebook Messenger integration\n‧ Free WiFi login page integration', '', 'BlueFox IO, Inc.', 10084, '2018-03-05 17:54:08', NULL, NULL, 1, 10081, 0),
(985, 'RFID and IoT Platform System', 'Mojix is a leading connected business solutions company that provides wide-area RFID solutions, IoT software platforms and cloud and mobile development services for IoT and big data applications.\n\nMojix wide-area RFID systems and IoT software solution provides accurate inventory data without the need for hands-on, manual counting with barcode or handheld RFID scanners. \nAutomatically and invisibly collect accurate, real-time inventory data – with location – to avoid out-of-stocks, reduce markdowns, trigger replenishment, enable omni-channel fulfillment and enhance customer loyalty. Maintain perpetual inventory in the backroom and the sales floor, and even track the movement of shopping carts or goods through a store. Implement geo-fencing by creating an RF curtain in secure areas or at store exits to improve on traditional electronic article surveillance (EAS) systems.\n\n# Retail\nAutomatically and invisibly collect accurate, real-time inventory data – with location – to avoid out-of-stocks, reduce markdowns, enable omni-channel fulfillment and enhance customer loyalty.\n# Manufacturing\nSynchronize and optimize your supply chain, verify shipments and automate, streamline and error-proof processes. Asset tracking of tooling, fixed assets and WIP to ensure audit compliance and maintain peak output.\n# Oil & Gas\nAsset tracking in real-time, locationing, streamline supply chain logistics, boost return on capital, improve safety and mitigate operational risk—all with one flexible infrastructure.\n# Healthcare\nImprove patient outcomes and patient and staff satisfaction, streamline patient flow, tighten the supply chain and tracking expensive equipment and other assets throughout the system.\n# Event Security & Safety\nEnhance the comfort, safety and security of attendees, monitor attendance, improve ticketing operations, combat counterfeiting and coordinate security from a central location.', '', 'Mojix APAC Korea Limited', 10084, '2018-03-08 10:23:51', 10084, '2018-03-08 16:08:45', 1, 10081, 0),
(986, 'Linkstreet Pro', 'Linkstreet PRO LMS hosted solution which has the following key features:\n1. Course Management: Ability to create structured courses and organize course content on a topic/chapter basis or on a timeline basis (weekly, monthly, etc.).\n2. User Management: Ability to register users (faculty, students, admin) and enrol them in to one or more courses for a specific duration.\n3. Content Management: Storing, sharing and retrieving videos and other course content including the ability to create inline rich text content, links to external pages, videos, etc.\n4. Assessment: Enabling online quiz with question bank (various types like multiple choice, true/false, short/long answer etc. with grading and reports\n5. Collaboration Platform: Connecting (remote) students and (remote) faculty across multiple locations (live sessions, webinars)', '', 'Linkstreet Learning Priviate Limited.', 10084, '2018-03-09 15:59:41', 10084, '2018-03-13 10:33:31', 1, 100089, 0),
(987, 'RAPL', 'Bite sized learning: Active question based learning to engage learners.\nRetention focused: Scientific spaced repetition techniques for knowledge retention.\nAdapted to each learner: Learning is specific and adapted to each individual.\nMultilingual: Learners can choose to view material in the language of their choice\nLibrary of Job Aids: A library of reference material acts as a ready reckoner on the job\nGamified: Points, leaderboards and badges maintain a competitive spirit among learners\nDeploy quickly: Get started in less than a day, across mobile and desktop.\nMonitor learners: Hierarchy based monitoring by region, area, territory and more\nExecution support: Content and performance tracking support to ensure successful execution', '', 'Linkstreet Learning Priviate Limited.', 10084, '2018-03-09 16:07:12', 10084, '2018-03-13 10:34:03', 1, 100089, 0),
(988, 'Content Services', 'Pick from thousands of ready to use scenarios that are available, ranging from customer service and sales techniques to SOPs and safety & compliance. Our team of instructional designers and trainers also ensure rapid custom content creation for scenarios or products that are unique to your organisation.', '', 'Linkstreet Learning Priviate Limited.', 10084, '2018-03-09 16:11:11', NULL, NULL, 1, 100089, 0);
INSERT INTO `g_product` (`id`, `name`, `description`, `extra_description`, `vender`, `add_no`, `add_date`, `upd_no`, `upd_date`, `status`, `sourcer`, `deleted`) VALUES
(989, 'Live Streaming Service Platform', 'The Best User Generated Content Live Streaming Solution\nStraaS.io - stands for “Streaming-as-a-Service” Modulizes technical stack of LIVEhouse.in\nThe focus of the service is through providing over the top(OTT) core technology and monetization modules to content providers to maximize their profit from content\nWe provide the best infrastructure and technology modules for live streaming user-generated content (UGC), and corresponding system integration and consulting services. Our modules and services can help you build your own UGC live streaming service quickly.\n# Empower room-based video apps\nThe infrastructure we provide can be easily integrated into your membership system, allowing you to create UGC live streaming services swiftly. Users can sign up for accounts with your service and create their own live stream channel.\n# Chatroom\nOur chat room interactive modules maintain low latency even under high loads. These modules also support customized stickers, enabling the creation of more flexible and creative interactive experiences.\n#AI / Analytics\nWe provide a complete data monitoring API that can satisfy all your data analysis needs, as well as real-time live stream analytics that applies artificial intelligence (AI) to determine whether the live stream contains content that violate regulations or not. This is then integrated with your own service via webhooks and further coordinated with your service.', '', 'Straas.io', 10084, '2018-03-09 16:15:41', 10084, '2018-03-12 11:39:14', 1, 10081, 0),
(990, 'RetailCam Counting System', 'RetailCam is able to provide insights to your retail business using the power of Iot and Big Data.\n\nRetailCam counter is a Wi-Fi hotspot itself. It is able to detect the Wi-Fi signals emitted by the smartphones. It able to differentiate visitors based on the unique identifier associated with the Wi-Fi enabled devices. By combining Video and Wifi technology, RetailCam can measure a deep customer insight, for example their dwell time, storefront conversion, returning rate, cross shopping and more.\n\nRetailCam’s Premier Stereo Overhead ( 3 D ) people counter mounts on the ceiling to provide holistic traffic view with enhanced activity analysis and video validation abilities. It provides some key benefits and business value to the retailers such as Casinos, Retail Chain, Museum and Libraries, Shopping Malls, and etc. Advanced capabilities allow the sensor to count side-by-side traffic, track multiple people simultaneously, differentiate between adults and children, and avoid counting carts and strollers. As shoppers pass through the sensor\'s field of view, they leave a unique trail or path. Each path is tagged with a unique ID that can then be converted into numerous metric opportunities within the sensor.', '', 'Lakson Technology Pte Ltd', 10084, '2018-03-09 16:22:09', NULL, NULL, 1, 10081, 0),
(991, 'Wireless and Portable Media Capture Sys.', 'Wireless and Portable Media Capture Solution\n\nAREC KL-3W is a lightweight, wireless, portable and all-in-one Media Station, allowing users to simultaneously capture,\nswitch, mix, stream and record live activities in a simple and efficient way.\nBundle with AREC Wireless Full HD Network Cameras, Wireless Microphone, Mini Travel Tripods, and Hand-Carry Case,\nAREC KL-3W Portable Media Set is the most convenient and complete media capture solution on the market.\n\nKL-3W supports capturing up to 3 video sources through\nHDMI / VGA/ RJ45 interfaces* at the same time. It is\ncompatible with network cameras, laptops, PCs, and digital\nmicroscopes. With audio support, KL-3W can mix audio\nvia HDMI, stereo audio jack and AREC wireless microphone.\n\n# All-in-One Device with 7” LCD Display to Offer Up to 3 Full HD Video Sources\n# Capturing, Mixing, Switching, Recording and Live Streaming\n# Wire-Free and Portable Design for Easy Move and Place\n# Complete Bundle Package. Perfect Out-of-the-Box Experience', '', 'AREC', 10084, '2018-03-13 09:29:21', NULL, NULL, 1, 10081, 0),
(992, 'SimMAGIC eBook', 'Offering a complete package for eBook editing and renovating with reading functions, with basic steps, users are able to integrate various multimedia along with imported PDF or PPT files, in order to create their unique digital designs. In addition, SimMAGIC eBook provides simulation technique to interact with users not only read but also be part of it. Well-created eBook allows user to use it anywhere, anytime which it also supports multiple platforms, making it the most outstanding and learning publication choice.\nProduct Features:\n‧ Friendly editing interfaces.\n‧ Exports cross-platform form at once, making restrictions no longer concern.\n‧ Comprehensive reading function, provides quality and comfort experience. \n‧ Fast and easy: To create interactive multimedia eBooks with just four simple steps.\nCharacteristics:\n‧ Multiple advanced editing tools: multimedia adding, mask setting, full dimension rotating, 720°Panoramic Image, pop-up windows, and dynamic image.\n‧ Exam module addition: Function module for user to add in exam multiple choices, fill questions and drag-and-match section easily.\n‧ Import PDF and PPT slides directly. Various interactive function including: Text input, page redirecting, mouse dragging, image clicking, error warning and more.', '', 'HAMASTAR TECHNOLOGY CO., LTD.', 10084, '2018-03-20 16:47:06', NULL, NULL, 1, 10025, 0),
(993, 'SellingHub', 'Creative Marketing APP is an innovation catering to rising business demands for digital mobility. The system serves as an information management platform, which brings together e-catalog and customized APP interface that can accommodate multifarious models and designs for enterprises to achieve differentiation of marketing strategies and brand image building. The APP has an automatic and synchronized information updating system, which ensures  the consistency of information in the front end and back end. Thus, frontline marketing specialists can download product DMs via various devices in any place and then provide instant and streamlined services to clients. Additionally, SellingHub provides digitalized contact mechanism for enhancing customer services and delivering marketing messages, through which the convenience and mobility of serving marketing clients can be more easily and fully realized.\nProduct Features:\n‧ Technology-built mobile marketing power \n‧ Instant information renewal,  catering to rapid changes of the market \n‧ Managing business documents effectively; full-scale management mechanism for avoiding leakage \n‧ Supporting various forms of mobile devices; burdenless platform conversion\n‧ E-catalog consisting of diverse component models, facilitating brand image building and promotion  \nCharacteristics:\n‧ Customized APP front-end interface and flexible management configuration \n‧ Allowing for offline browsing; User can download files and read them offline; offline reading will not be restricted by Internet domains.\n‧ Supporting a variety of file and multimedia formats, e-catalog updates, and uploading/downloading; integrating all marketing resource; making the marketing process smoother \n‧ Recording the number and time of browsing visitors every week; presenting instant dynamic statistic reports; exporting Excel forms; making the control of administrator easier  \n‧ Flexible account management and permission control mechanism, alleviating the problem of information security\n‧ Supporting various cross-platform reading devices such as Windows, iOS, Android\n‧ Integrating and unifying applications of document folders while also offering individualized management functions that allow different users set up his or her own account and access individualized APP folders.', '', 'HAMASTAR TECHNOLOGY CO., LTD.', 10084, '2018-03-20 17:26:28', NULL, NULL, 1, 10025, 0),
(994, 'ClassHub', 'The virtual learning smart classroom brings an overall solution with eBook transpose system to prepare courses rapidly. Aside from various digital teaching materials displaying technique, the system can conduct examination. ClassHub sustains mobile application which brings the advantage of cross-platform utility. This brings about mobile learning convenience without time and location limitation. In addition, teacher can execute synchronize educating and doing the IRS exam at the same time. Though the in-time results of statistical analysis, teacher can control the learning effect. Hence, students can utilize system interacting application of immediate Q&A to report questions. Therefore, ClassHub, the virtual learning classroom, in the base of classroom teaching not only optimize the environment of digital learning, but also contribute a thoroughly digital educating resource platform for the learners.\nProduct Features:\n‧ Possess the functionality of IRS, offering capacities such as exam storage, photo taking, hand writing, screen capturing for pop quizzes, theme setting, sending and exam result feedback.\n‧ Supports cross-platform sync broadcasting for the learning environment as Android, iOS, Windows tablets and phones supplying screen dispatch and sharing function.\n‧ Offers split screen of student response into quarter for inspecting and learning from each other.\n‧ Affords Quiz and QR code scanning situation for student to do the test, furthermore, system give visualize analyzing charts for the learning outcome.\nCharacteristics\n‧ Automatically eBook transposing\n‧ The IRS in-time exam\n‧ The conduct of pop quiz\n‧ Answering exam by QR code scanning\n‧ Analyses the results of class activities participation\n‧ Analyses the results of examination\n‧ Supports cross-platform sync broadcasting', '', 'HAMASTAR TECHNOLOGY CO., LTD.', 10084, '2018-03-20 17:28:09', NULL, NULL, 1, 10025, 0),
(995, 'MAGIC VR', 'The software solution for user to develop content of virtual reality provides lifelike materials to reinforce practical skill. The program uses intuitive tools to create environments for business to create training programs for everyone to use. With the capability of using pre made templates or customize a variety of your own materials. Software is also accessible on mobile devices such as Android and iOS. Developers are able to use this software solution for a variety of industries to improve training, effective learning, and cost of equipment. \nIf you can imagine it you can create it in the Magic VR software solution. Developers can open up their wildest dreams and create beautiful environments for their users. Integrate 2D, 3D and move objects freely in the app to simulate all forms of education.  The program also automatically stores usage data for users on the consumer side to track progress and set goals. Magic VR is the ultimate software solutions for enterprise managers and Chief Technical Officers who need an edge in training and education within their company.  \nProduct Features:\n‧ Combining automatic learning efficiency assessment system via simulative situational training; showing learning outcomes and improving the limitations of paper teaching materials; stimulating the higher level of 2D + 3D smart learning solutions  \n‧ Innovative editing functionality with intuitive tool bars and graphic user interface\n‧ Mobile device support Android, iOS for mobile learning\n‧ Create life like realistic projects with ease\nCharacteristics\n‧ Event module design for user to create interactive virtual reality with ease\n‧ Object components bring product attribute into scenes directly\n‧ Flexible scene editing: storyboard editing facilitate duplication and application of prearranged scenes in different cases \n‧ Rich 3D resource gallery: the gallery allows for rapid construction of various VR scenes\n‧ Exclusive interactive design: interactive setting enhances VR experiences, enabling free editing of conversational plots', '', 'HAMASTAR TECHNOLOGY CO., LTD.', 10084, '2018-03-20 17:29:57', NULL, NULL, 1, 10025, 0),
(996, 'TeachingCloud', 'The virtual learning platform allows conducting with several classrooms. In addition to its capacity of presenting a diversity of digital materials, the platform can conduct after-class evaluation assessment and homework assignment. In the meantime, the platform provides mobile application programs that create the advantage of supporting cross-platform devices. Moreover, the platform is easy to carry wherever you go, thus increasing the mobility and convenience of teaching and learning. Through the platform, teachers can enjoy the numerous benefits and control students’ learning effects by conducting synchronized teaching, giving IRS real-time examination, and looking up statistical analysis results. Besides, system can keep a complete record of users’ reading and learning histories as it possesses a dynamic statistical analysis module. Originating from a virtual classroom and transitioning into a creative teaching application, this platform not only optimizes the environment of digital learning; but more significantly, it offers the best solution for integrating and managing digital learning resources. \nProduct Features:\n‧ Integrating various class activities for flipped-classroom application.\n‧ Allowing for the most convenient way of class preparation such as converting the frequently used teaching materials into a highly interactive ebook  \n‧ Adopting a mutually interactive teaching method via the synchronized classroom function \n‧ Fully controlling the learning results of each class via IRS system and feedbacks\nCharacteristics\n‧ Offering a platform for teacher to build up and manage teaching material easily; online forum can stimulate students to learn actively.\n‧ Adopting an interactive synchronic teaching mechanism that assists students to maintain attention in class\n‧ Diversifying testing modes, including instant quizzes, answering, and feedbacks\n‧ Providing pie chart and statistic analysis of learning records\n‧ Generating a split screen effect of students’ responses (split into four parts) for question raising and sharing; encouraging students to present their answering logics and skills\n‧ Creating a cloud contact book that put together the three parties: student, parents, and teacher ', '', 'HAMASTAR TECHNOLOGY CO., LTD.', 10084, '2018-03-20 17:32:01', NULL, NULL, 1, 10025, 0),
(997, 'HPC005 Infrared People Counter', 'HPC005 Infrared People counter is a powerful tool for keeping costs down and clients\ncoming back while reducing losses at the same time.\nWith HPC005 infrared people counter, you will get:\n‧ Identify Your Store\'s Peak Hours\n‧ Manage Your Staff Efficiently\n‧ Increase the Dwell Time in Your Store\n‧ Measure the Effectiveness of Your Marketing Campaigns\n\nHPC005 People Counting is the most advanced infrared people counter. It is accurate, reliable, easy to install, low maintenance, and very affordable. Many retailers, libraries, museums, and other businesses are taking advantage of the many benefits these systems provide. \n\nRetailers are using the People Counting to determine sales to customer ratios and peak customer traffic times from an hourly, daily, weekly, monthly perspective.\nLibraries are choosing the People Countings, because they provide a very affordable solution for automatic counting of their visitors during a certain period of time.', '', 'Highlight Manufacturing Corp.,Limited.', 10084, '2018-04-02 16:34:36', 10084, '2018-04-02 16:38:29', 1, 10081, 0),
(998, 'HPC008 Camera People Counter', 'HPC008 Camera People Counter uses the most advanced tech and the accuracy can be 95-98%. The installation of camera people counting is \"Plug and play\".\nMarket\nWe support customer-flow analysis for retail industry, gallery, park, scenic spots, transportation junction, crowded square and so on\n \nWith HPC008 People Counter, You will get:\nHigh accuracy customer-flow data\nDetailed data report chart\nReal-time customer flow on every floor\nAny change of the customer-flow data and average data\nHow many people in shop now\nCustomer-flow density at different locations\nAverage stay time of visitors\nThe rate of purchase\nData can be exported in different form for analyzing and integrating\nThe data can be integrated into POS/ ERP system easily\n\n1. Unparalleled technology\n2. Object-tracking\n3. Environment-reference\n4. Human-detection\n5. Route-creation\n6. To count total traffic, in-out-stay data, the average residence time, the number of people on each floor, traffic density all positions.\n7. To count traffic, sales volumes, deal number, the rate of purchase and then build and export an EXCEL file.\n8. Daily, monthly and yearly data can be compared and exported in different form for your analysing and integrating', '', 'Highlight Manufacturing Corp.,Limited.', 10084, '2018-04-02 16:38:56', NULL, NULL, 1, 10081, 0),
(999, 'RIMS', 'RIMS - a cloud based software solution for restaurants & centralized kitchens. The advantages are many. Primarily you can track all the actives in real-time from anywhere at any time. Using RIMS which is a hugely cost-effective solution, requires very low maintenance, reduce high hardware cost like POS machines & easy access to any kind of information.', '', 'Inceptum Technologies', 10084, '2018-04-12 16:39:25', 10084, '2018-04-13 14:25:05', 1, 100089, 0),
(1000, 'KnachTechs School Management', 'School management Module is one of the most important and is useful tool in Overall management of School,Admission, Student -Teacher profile, Examinations, Transportation facilities, basically all modules under on roof; It facilitates you to maintain timetables and progress records of Students,results, fees mangement; Now Library management is so simple with Our Solution.Transportation and School Van facility can also be provided, with Vehicle registration and time management.', '', 'Knacktechs Solutions', 10084, '2018-04-13 11:36:15', 10084, '2018-04-16 09:21:05', 1, 100089, 0),
(1001, 'KnackTechs Parking Management', 'Parking Management Solution is designed to cut down time consuming process of parking management. It helps you to record arrival and departure time of vehicle, and according to halt time automatic receipt will be printed. It is very helpful to various places where there is lots of vehicle running such as hotels, malls, theatre\'s etc.', '', 'Knacktechs Solutions', 10084, '2018-04-13 12:16:05', 10084, '2018-04-16 09:21:38', 1, 100089, 0),
(1002, 'KnackTechs POS', 'POS solution helps Shops and Restaurants in various ways as it simplifies way of operation and helps in Maintaining Sales and One never run out of stocks. Instant receipt printing and you can get paid faster through various means of payment. You can watch every counter in your shop, maintain daily Cash balance. POS for restaurants helps you with have an eye on every table with their order, super easy and user friendly.', '', 'Knacktechs Solutions', 10084, '2018-04-13 12:18:27', 10084, '2018-04-16 09:22:29', 1, 100089, 0),
(1003, 'KnackTechs HMS', 'Hospital Management Software is specially designed for daily administration of Hospital. It integrates all vital information from Patients, Staff, Doctors, and administrative details. It helps in gathering and maintaining medicinal, legal, and administrative data under one roof.', '', 'Knacktechs Solutions', 10084, '2018-04-13 12:19:31', 10084, '2018-04-16 09:23:15', 1, 100089, 0),
(1004, 'KnackTechs CRM', 'CRM Solution is a must module in every Small and Medium sized business,It\'s vital feature is Get more done in less time, you can Maintain record of future and potential Clients data, Leads maintenance and nuturing,plan next action and Convert leads into oportunities, Schedule meeting, Pipeline management, have an eye on Monthly revenue assign leads to employees.', '', 'Knacktechs Solutions', 10084, '2018-04-13 12:20:29', 10084, '2018-04-16 09:23:59', 1, 100089, 0),
(1005, 'ObjectBlocks', 'Coding101 was found in mid 2014 as the coding education services provider and later evolved into the full-range services provider on Coding and STEM educations to schools and private market.\n\nObjectBlocks - Our development focusing on IOT, data collection and analysis\n- Arduino shield with Wifi and Bluetooth capability \n- Web-based block programming \n- Wireless program download to Arduino \n- Data dashboard for data visualization\nObjectBlocks is the suite of IOT and data visualization / analysis solution. \nIt consists of: \n1. ObjectBlocks Shield Prime which has SD Card Offline Storage, Wi-Fi and Bluetooth Capability, Support Arduino UNO\n2. ObjectBlocks Programming and Data Platform which has Over-the-Air Program Upload Upload Program via WiFi or Bluetooth, Web-based Arduino Programming Interface, Auto-generate Arduino C Code from Block Programming\n3. Data Dashboard which has Real-time visualization of data from ObjectBlocks Shield Prime or other datasources, Data analysis of historical data, Variety of Graph Formats, Support different graph formats: line chart, bar chart, pie chart etc\n4. Other features which has Data triggered IFTTT Events, Support multiple ObjectBlocks Shield Prime, Inter-Shield Communications, Single dashboard for data from multiple shields\n\nSample Projects(Aquaponics) \nUse of pH sensor, temperature sensor, water turbidity measurement, light sensor etc and display on data dashboard for students to monitor the healthiness of aquaponics system and trigger if any unexpected occurs', '', 'Coding101.hk', 10084, '2018-04-16 13:50:12', NULL, NULL, 1, 12008, 0),
(1006, 'Astra People Counting Sys. and Analyzing', 'Interested in how many people had visited your shop? With Astra People Counting, you will be able to see not only the number of people that had come to your place, but also how many people within that number are unique. People can view the live video streams and receive the notifications from the cameras\n\nACF-1120WW is an easy-to-use cloud based IP camera.\n\nBasic camera functions\n 1. 720p/30fps/H.264 video encoding\n 2. Live streaming\n 3. Event-based cloud recording through sound/motion detection\n 4. Video playback/download\n 5. RJ-45/Wi-Fi supported\n\nAdvanced features\n 1.  Facial recognition for members\n 2.  People counting \n\nApplications\n 1. Admin: Browser-based MSP Portal\n 2. End-User: IOS/Android App & Broswer-based client', '', 'Astra Inc.', 10084, '2018-04-16 15:19:24', NULL, NULL, 1, 10081, 0),
(1007, 'Smart Power Strip', 'Smart Power Strip : ELC-100H PR2\n1.Patent durable switch\nEffectively reduces the power supply noises produced by the relay and therefore extends the life cycle of your appliances. Protecting your appliances from switching surge when appliances switch ON/OFF.\n\n2.EXTREMELY HIGH CONDUCTIVITY\nMade up of high-conductive and low-impedant copper with the cross-sectional area approx. 6.0 mm2 (7.5mm ht. x 0.8mm thk.), it creates an exceptional pathway for power to travel from the wall, bringing out excellent performance previously bottlenecked by a cheap one.\n\n3.Active appliances protection\nAging rate or electrical equipment abnormal behavior of the server, or peripherals can be monitored over the network by using the intelligent monitor page (IMP). Provide immediate updates about power events via email, though app.\n\n4.Power restoration, switch status will automatically recovery\nThe switch will automatically recover to the original status without any registration by network when power restoration.\n\n5.Power outage, actively notify Safety is first priority, user will be notified when power outage in case to take necessary measures.\n\n6.Industrial-grade reliability\nPin connection is not easy to fall off\n\n7.HEAVY DUTY DESIGN\nThe combination of superior materials: the flame-proof case (UL 94 V-0, 5VB; the thickness more than 0.11 inches), the tough front panel (Pencil Hardness ASTM D3363 - B-HB) and the robust power cord (SJT 105°C 3x14AWG (2.08MM2) 300V VW-1).\n\n8.Power Management page for all devices\nIntelligent monitor page provides a simple dashboard interface to monitor your PDU, no matter where you are and which devices you are using, all the data would not be missed.\n\n9. History log (Who, When, Actions) records in cloud\nAll data is sure sync when every time you use it.', '', 'eLIFEconnection', 10084, '2018-04-16 15:42:22', NULL, NULL, 1, 10081, 0),
(1008, 'Smart Power Strip', 'Smart Power Strip : ELC-100H PR2\n1.Patent durable switch\nEffectively reduces the power supply noises produced by the relay and therefore extends the life cycle of your appliances. Protecting your appliances from switching surge when appliances switch ON/OFF.\n\n2.EXTREMELY HIGH CONDUCTIVITY\nMade up of high-conductive and low-impedant copper with the cross-sectional area approx. 6.0 mm2 (7.5mm ht. x 0.8mm thk.), it creates an exceptional pathway for power to travel from the wall, bringing out excellent performance previously bottlenecked by a cheap one.\n\n3.Active appliances protection\nAging rate or electrical equipment abnormal behavior of the server, or peripherals can be monitored over the network by using the intelligent monitor page (IMP). Provide immediate updates about power events via email, though app.\n\n4.Power restoration, switch status will automatically recovery\nThe switch will automatically recover to the original status without any registration by network when power restoration.\n\n5.Power outage, actively notify Safety is first priority, user will be notified when power outage in case to take necessary measures.\n\n6.Industrial-grade reliability\nPin connection is not easy to fall off\n\n7.HEAVY DUTY DESIGN\nThe combination of superior materials: the flame-proof case (UL 94 V-0, 5VB; the thickness more than 0.11 inches), the tough front panel (Pencil Hardness ASTM D3363 - B-HB) and the robust power cord (SJT 105°C 3x14AWG (2.08MM2) 300V VW-1).\n\n8.Power Management page for all devices\nIntelligent monitor page provides a simple dashboard interface to monitor your PDU, no matter where you are and which devices you are using, all the data would not be missed.\n\n9. History log (Who, When, Actions) records in cloud\nAll data is sure sync when every time you use it.', '', 'eLIFEconnection', 10084, '2018-04-16 15:43:08', 10084, '2018-04-16 15:45:24', 0, 10081, 0),
(1009, 'Smart Power Strip', 'Smart Power Strip : ELC-100H PR2\n1.Patent durable switch\nEffectively reduces the power supply noises produced by the relay and therefore extends the life cycle of your appliances. Protecting your appliances from switching surge when appliances switch ON/OFF.\n\n2.EXTREMELY HIGH CONDUCTIVITY\nMade up of high-conductive and low-impedant copper with the cross-sectional area approx. 6.0 mm2 (7.5mm ht. x 0.8mm thk.), it creates an exceptional pathway for power to travel from the wall, bringing out excellent performance previously bottlenecked by a cheap one.\n\n3.Active appliances protection\nAging rate or electrical equipment abnormal behavior of the server, or peripherals can be monitored over the network by using the intelligent monitor page (IMP). Provide immediate updates about power events via email, though app.\n\n4.Power restoration, switch status will automatically recovery\nThe switch will automatically recover to the original status without any registration by network when power restoration.\n\n5.Power outage, actively notify Safety is first priority, user will be notified when power outage in case to take necessary measures.\n\n6.Industrial-grade reliability\nPin connection is not easy to fall off\n\n7.HEAVY DUTY DESIGN\nThe combination of superior materials: the flame-proof case (UL 94 V-0, 5VB; the thickness more than 0.11 inches), the tough front panel (Pencil Hardness ASTM D3363 - B-HB) and the robust power cord (SJT 105°C 3x14AWG (2.08MM2) 300V VW-1).\n\n8.Power Management page for all devices\nIntelligent monitor page provides a simple dashboard interface to monitor your PDU, no matter where you are and which devices you are using, all the data would not be missed.\n\n9. History log (Who, When, Actions) records in cloud\nAll data is sure sync when every time you use it.', '', 'eLIFEconnection', 10084, '2018-04-16 15:43:10', 10084, '2018-04-16 15:45:18', 0, 10081, 0),
(1010, 'Smart Power Strip', 'Smart Power Strip : ELC-100H PR2\n1.Patent durable switch\nEffectively reduces the power supply noises produced by the relay and therefore extends the life cycle of your appliances. Protecting your appliances from switching surge when appliances switch ON/OFF.\n\n2.EXTREMELY HIGH CONDUCTIVITY\nMade up of high-conductive and low-impedant copper with the cross-sectional area approx. 6.0 mm2 (7.5mm ht. x 0.8mm thk.), it creates an exceptional pathway for power to travel from the wall, bringing out excellent performance previously bottlenecked by a cheap one.\n\n3.Active appliances protection\nAging rate or electrical equipment abnormal behavior of the server, or peripherals can be monitored over the network by using the intelligent monitor page (IMP). Provide immediate updates about power events via email, though app.\n\n4.Power restoration, switch status will automatically recovery\nThe switch will automatically recover to the original status without any registration by network when power restoration.\n\n5.Power outage, actively notify Safety is first priority, user will be notified when power outage in case to take necessary measures.\n\n6.Industrial-grade reliability\nPin connection is not easy to fall off\n\n7.HEAVY DUTY DESIGN\nThe combination of superior materials: the flame-proof case (UL 94 V-0, 5VB; the thickness more than 0.11 inches), the tough front panel (Pencil Hardness ASTM D3363 - B-HB) and the robust power cord (SJT 105°C 3x14AWG (2.08MM2) 300V VW-1).\n\n8.Power Management page for all devices\nIntelligent monitor page provides a simple dashboard interface to monitor your PDU, no matter where you are and which devices you are using, all the data would not be missed.\n\n9. History log (Who, When, Actions) records in cloud\nAll data is sure sync when every time you use it.', '', 'eLIFEconnection', 10084, '2018-04-16 15:43:11', 10084, '2018-04-16 15:45:11', 0, 10081, 0),
(1011, 'TrackRover - RedDot Campus Solution', 'An Campus Management Solution -\nManage an institute Campus with students ,teaching & Non Teaching staff, anytime, anywhere(on-campus & off campus} with Mobile enabled Campus Management System from TrackRover. \n\nCampus Solution provides Alerts, Alarms, Reports for Effectiveness of Staff & Students in the Campus activities. It enables Monitoring & Managing the institute personnel & students for their effectiveness & safe presence in campus. The Platform notifies restricted location intrusions & campus policy violations  for safety & productivity necessities.\nFeatures:\n\n‧ Monitor & Manage\no  Campus security Personnel: Beat route management, Daily SOP, support supervisors, SOS escalation.\no On-Campus -Presence:  Set up points of interest and get alerts/notifications upon activity; Detection of Out-of-Bound location presence ,SOS escalations\no Effectiveness  of  Campus Personnel :  Set up  Alerts & Alarms, enable Reporting,  and get alerts/notifications upon activities, Reports on deviations & Violations of campus governance. \no Track your service providers: Campus transport management of in-house or outsourced  utility services personnel - Driver , Routes, Bus-stop, Student travel-rooster.', '', 'TRACKROVER MOBILITY TECHNOLOGIES PRIVATE LIMITED', 10084, '2018-04-19 10:57:57', NULL, NULL, 1, 100089, 0),
(1012, 'Track Rover FieldForce', 'Track Rover FieldForce:\nManage Remote or Mobile workforce & tasks anytime, anywhere with Mobile enabled Field Force Management System from Track Rover FieldForce Platform. The Platform Provides Office Premises presence reports & off-premises reports in addition to task workflow enablement.\n\nFeatures:\n‧ Assign tasks to field personnel from the central office, via web-based FieldForce Command Centre.\n‧ Location Tagging via location information.\n‧ Real time tracking of field personnel.\n‧ Extensive Reporting via Web & Mobile notifications.\n‧ Configurable for every tracking and remote validation requirement of work force.\n‧ Design your own business templates.\n‧ Design your own Task Rules and Task Types on the fly.\n‧ Enter Goals and Targets for your personnel and track progress.\n‧ Allow Field Personnel to submit and file expenses including receipts via the Mobile App.\n‧ Location validation. \n‧ Ensure work actually gets done where it\'s supposed to.', '', 'TRACKROVER MOBILITY TECHNOLOGIES PRIVATE LIMITED', 10084, '2018-04-19 10:59:19', NULL, NULL, 1, 100089, 0),
(1013, 'YallaCode', 'YallaCode - is an Online coding and learning platform for all ages. The platform was built by world class educators and professors. The tools embedded within the systems and the approach in which the content is delivered has made the platform a success for millions of students Globally.\n-YallaCode’s aim to Promote computer code literacy.\n-Offers academic institutions and parents an internationally recognized code learning platform.\n-Hundreds of hours of simple and interactive coding lessons that stimulate creative problem skills through a fun gamified environment.\n-Utilizes a tried, tested and successful learning platform that has been designed and developed by world class educators.', '', 'myLearningKey Consultancy and Training- Dubai', 10084, '2018-04-19 11:09:58', NULL, NULL, 1, 100089, 0),
(1014, 'RCS TRAXX', 'Comprehensive end to end fixed asset management and tracking solution which includes management of assets from procurement to disposal. RCS TRAXX manges entire lifecycle of assets with information of assets with all logs for its usage, cost, support required and its disposal value', '', 'RCS Technologies', 10084, '2018-04-24 09:11:25', NULL, NULL, 1, 100089, 0),
(1015, 'RCS COMPAS', 'Compliance tracking and management solution. All statutory compliance inlcuding but not limited to  internal (quality audit, vendor audit, process audit, employee appraisals etc.) and external (labour, IT act, Companies act etc.)', '', 'RCS Technologies', 10084, '2018-04-24 09:12:29', NULL, NULL, 1, 100089, 0),
(1016, 'AppGen', 'AppGen Stands for Application Generation platform. It is beyond tool and complete RAD with zero or low coding requirement. Target Users of this product are functional experts who can build software on their own. It is complete cloud product available to be deployed on Private or public Cloud domain. This product is best suit for Business process improvement and automation. It has features such as Automated data warehouse, OCR, Encryption, Robotics, translation etc. Automation and artificial intelligence is key result area of the product. AppGen is designed to be used by large corporate and for any of there business process generally not easily covered by ERP. example quality testing workflows, compliance workflows, Finance budgeting or tax management applications etc.', 'AppGen AppGen AppGen AppGen AppGen AppGen AppGen AppGen AppGen AppGen AppGen ', 'Mensa Consulting Services (I) Pvt. Ltd', 10084, '2018-05-03 16:53:01', NULL, NULL, 1, 100089, 0),
(1017, 'AppGen', 'AppGen Stands for Application Generation platform. It is beyond tool and complete RAD with zero or low coding requirement. Target Users of this product are functional experts who can build softare on their own. It is complete cloud product available to be deployed on Private or public Cloud domain. This product is best suitd for Business process improvement and automation. It has features such as Automated datawarehouse, OCR, Encryptions, Robotics, translation etc. Automation and Artificail intelligence is key result area of the product. AppGen is designed to be used by large corporates and for any of there business process generally not easily covered by ERP. example Quality testing workflows, Compliance workfows, Finance budgeting or tax management applications etc.', '', 'Mensa Consulting Services (I) Pvt. Ltd', 10084, '2018-05-03 16:53:05', 10084, '2018-05-03 16:53:14', 0, 100089, 0);

-- --------------------------------------------------------

--
-- Table structure for table `g_product_attachment`
--

CREATE TABLE `g_product_attachment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `add_no` int(11) DEFAULT NULL,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_product_attachment`
--

INSERT INTO `g_product_attachment` (`id`, `product_id`, `priority`, `type`, `url`, `add_no`, `add_date`) VALUES
(1, 779, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(2, 851, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(3, 832, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(4, 133, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(5, 132, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(6, 227, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(7, 836, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(8, 921, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(9, 212, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(10, 278, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(11, 893, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(12, 894, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(13, 376, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(14, 140, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(15, 141, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(16, 142, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(17, 169, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(18, 170, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(19, 206, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(20, 209, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(21, 210, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(22, 335, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(23, 184, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(24, 185, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(25, 186, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(26, 504, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(27, 460, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(28, 695, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(29, 477, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(30, 478, 1, 'photo', NULL, 10084, '2018-02-09 10:29:50'),
(31, 627, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(32, 629, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(33, 668, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(34, 669, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(35, 670, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(36, 671, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(37, 632, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(38, 633, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(39, 634, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(40, 749, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(41, 838, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(42, 845, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(43, 846, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(44, 847, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(45, 848, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(46, 849, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(47, 850, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(48, 853, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(49, 854, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(50, 176, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(51, 284, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(52, 435, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(53, 723, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(54, 724, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(55, 840, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(56, 834, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(57, 830, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(58, 942, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(59, 878, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(60, 943, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(61, 915, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(62, 948, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(63, 947, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(64, 946, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(65, 938, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(66, 937, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(67, 936, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(68, 935, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(69, 933, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(70, 931, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(71, 924, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(72, 870, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(73, 871, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(74, 868, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(75, 869, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(76, 940, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(77, 959, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(78, 862, 1, 'photo', NULL, 1, '2018-02-09 10:29:50'),
(79, 961, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(80, 787, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(81, 502, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(82, 402, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(83, 971, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(84, 895, 1, 'photo', NULL, 1, '2018-02-09 10:29:51'),
(85, 132, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(86, 132, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(87, 132, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(88, 133, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(89, 133, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(90, 133, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(91, 141, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(92, 141, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(93, 141, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(94, 141, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(95, 141, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(96, 141, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(97, 142, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(98, 142, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(99, 142, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(100, 142, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(101, 142, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(102, 142, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(103, 169, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(104, 169, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(105, 169, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(106, 169, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(107, 169, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(108, 169, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(109, 170, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(110, 170, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(111, 170, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(112, 170, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(113, 170, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(114, 170, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(115, 176, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(116, 176, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(117, 176, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(118, 176, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(119, 184, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(120, 184, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(121, 185, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(122, 186, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(123, 206, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(124, 206, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(125, 206, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(126, 206, 5, 'photo', NULL, 10084, '2018-02-09 10:31:04'),
(127, 206, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(128, 206, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(129, 209, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(130, 209, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(131, 209, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(132, 209, 5, 'photo', NULL, 10084, '2018-02-09 10:31:04'),
(133, 209, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(134, 209, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(135, 212, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(136, 212, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(137, 212, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(138, 227, 2, 'video', 'https://www.youtube.com/watch?v=S_OIc-PL9kE&featur', 10084, '2018-02-09 10:31:04'),
(139, 227, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(140, 227, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(141, 278, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(142, 278, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(143, 284, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(144, 284, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(145, 284, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(146, 335, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(147, 335, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(148, 335, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(149, 335, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(150, 335, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(151, 335, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(152, 402, 2, 'video', 'https://youtu.be/xiwrjsMwNXw', 10084, '2018-02-09 10:31:04'),
(153, 402, 3, 'video', 'https://youtu.be/zeMwqLxt1Bk', 10084, '2018-02-09 10:31:04'),
(154, 402, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(155, 402, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(156, 435, 2, 'video', 'https://www.youtube.com/watch?v=AbpNlV_bixM', 10084, '2018-02-09 10:31:04'),
(157, 435, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(158, 435, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(159, 435, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(160, 460, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(161, 460, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(162, 460, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(163, 477, 2, 'video', 'https://youtu.be/n5MRVEYCQ1U', 10084, '2018-02-09 10:31:04'),
(164, 477, 3, 'video', 'https://youtu.be/28G_lAtzVaw', 10084, '2018-02-09 10:31:04'),
(165, 477, 4, 'video', 'https://youtu.be/VUdmEsfVkb8', 10084, '2018-02-09 10:31:04'),
(166, 477, 5, 'video', 'https://youtu.be/byeMdEDl8TM', 10084, '2018-02-09 10:31:04'),
(167, 477, 6, 'video', 'https://youtu.be/1ZoKuGRVvGw', 10084, '2018-02-09 10:31:04'),
(168, 477, 7, 'video', 'https://youtu.be/dBcWjXz3Fe0', 10084, '2018-02-09 10:31:04'),
(169, 478, 2, 'photo', NULL, 10084, '2018-02-09 10:31:04'),
(170, 502, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(171, 502, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(172, 504, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(173, 504, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(174, 627, 2, 'video', 'https://youtu.be/n5MRVEYCQ1U', 10084, '2018-02-09 10:31:04'),
(175, 627, 3, 'video', 'https://youtu.be/28G_lAtzVaw', 10084, '2018-02-09 10:31:04'),
(176, 627, 4, 'video', 'https://youtu.be/VUdmEsfVkb8', 10084, '2018-02-09 10:31:04'),
(177, 627, 5, 'video', 'https://youtu.be/byeMdEDl8TM', 10084, '2018-02-09 10:31:04'),
(178, 627, 6, 'video', 'https://youtu.be/1ZoKuGRVvGw', 10084, '2018-02-09 10:31:04'),
(179, 627, 7, 'video', 'https://youtu.be/dBcWjXz3Fe0', 10084, '2018-02-09 10:31:04'),
(180, 629, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(181, 629, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(182, 629, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(183, 629, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(184, 629, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(185, 629, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(186, 632, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(187, 632, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(188, 633, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(189, 633, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(190, 634, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(191, 634, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(192, 634, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(193, 634, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(194, 634, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(195, 634, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(196, 668, 2, 'video', 'https://www.youtube.com/watch?v=rEnPhWT3S8I&list=P', 10084, '2018-02-09 10:31:04'),
(197, 668, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(198, 668, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(199, 668, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(200, 669, 2, 'video', 'https://www.youtube.com/watch?v=rEnPhWT3S8I&list=P', 10084, '2018-02-09 10:31:04'),
(201, 669, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(202, 669, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(203, 695, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(204, 695, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(205, 695, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(206, 695, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(207, 723, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(208, 723, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(209, 723, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(210, 724, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(211, 724, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(212, 724, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(213, 749, 2, 'video', 'https://www.youtube.com/watch?v=OVkrV31IKps', 10084, '2018-02-09 10:31:04'),
(214, 749, 3, 'video', 'https://www.youtube.com/watch?v=pyl2e_w6LKc', 10084, '2018-02-09 10:31:04'),
(215, 749, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(216, 749, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(217, 749, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(218, 749, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(219, 779, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(220, 779, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(221, 787, 2, 'video', 'https://youtu.be/xiwrjsMwNXw', 10084, '2018-02-09 10:31:04'),
(222, 787, 3, 'video', 'https://youtu.be/zeMwqLxt1Bk', 10084, '2018-02-09 10:31:04'),
(223, 787, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(224, 787, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(225, 830, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(226, 832, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(227, 834, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(228, 836, 2, 'video', 'https://youtu.be/GbjsNxL0lm0', 10084, '2018-02-09 10:31:04'),
(229, 838, 2, 'video', 'https://www.youtube.com/watch?v=OVkrV31IKps', 10084, '2018-02-09 10:31:04'),
(230, 838, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(231, 838, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(232, 838, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(233, 838, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(234, 838, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(235, 840, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(236, 840, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(237, 840, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(238, 845, 2, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(239, 845, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(240, 846, 2, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(241, 846, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(242, 847, 2, 'video', 'https://youtu.be/l43YwT2wboc', 10084, '2018-02-09 10:31:04'),
(243, 847, 3, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(244, 847, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(245, 848, 2, 'video', 'https://youtu.be/l43YwT2wboc', 10084, '2018-02-09 10:31:04'),
(246, 848, 3, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(247, 848, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(248, 849, 2, 'video', 'https://youtu.be/3DVKvL7Som4', 10084, '2018-02-09 10:31:04'),
(249, 849, 3, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(250, 849, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(251, 850, 2, 'video', 'https://youtu.be/l43YwT2wboc', 10084, '2018-02-09 10:31:04'),
(252, 850, 3, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(253, 850, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(254, 851, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(255, 851, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(256, 853, 2, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(257, 853, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(258, 853, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(259, 854, 2, 'video', 'https://youtu.be/GSPd4fd2W-Q', 10084, '2018-02-09 10:31:04'),
(260, 854, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(261, 854, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(262, 868, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(263, 868, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(264, 868, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(265, 869, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(266, 869, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(267, 869, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(268, 870, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(269, 870, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(270, 871, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(271, 871, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(272, 871, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(273, 878, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(274, 878, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(275, 878, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(276, 878, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(277, 893, 2, 'video', 'https://www.youtube.com/watch?v=4KfwxDGrmhY', 10084, '2018-02-09 10:31:04'),
(278, 893, 3, 'video', 'https://www.youtube.com/watch?v=sA0ajKznivw', 10084, '2018-02-09 10:31:04'),
(279, 893, 4, 'video', 'https://www.youtube.com/watch?v=TLRtMvG2ABY', 10084, '2018-02-09 10:31:04'),
(280, 893, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(281, 893, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(282, 893, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(283, 894, 2, 'video', 'https://www.youtube.com/watch?v=sA0ajKznivw', 10084, '2018-02-09 10:31:04'),
(284, 894, 3, 'video', 'https://www.youtube.com/watch?v=4KfwxDGrmhY', 10084, '2018-02-09 10:31:04'),
(285, 894, 4, 'video', 'https://www.youtube.com/watch?v=TLRtMvG2ABY', 10084, '2018-02-09 10:31:04'),
(286, 894, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(287, 894, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(288, 894, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(289, 895, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(290, 895, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(291, 895, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(292, 915, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(293, 915, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(294, 915, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(295, 921, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(296, 921, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(297, 921, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(298, 921, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(299, 921, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(300, 924, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(301, 924, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(302, 924, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(303, 924, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(304, 931, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(305, 931, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(306, 931, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(307, 933, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(308, 933, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(309, 933, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(310, 935, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(311, 935, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(312, 935, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(313, 935, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(314, 935, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(315, 935, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(316, 936, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(317, 936, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(318, 936, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(319, 936, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(320, 936, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(321, 936, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(322, 937, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(323, 937, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(324, 937, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(325, 937, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(326, 937, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(327, 937, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(328, 940, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(329, 940, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(330, 940, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(331, 942, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(332, 942, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(333, 942, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(334, 942, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(335, 942, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(336, 943, 2, 'video', 'https://youtu.be/Lt_xsdeQzRs', 10084, '2018-02-09 10:31:04'),
(337, 943, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(338, 943, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(339, 943, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(340, 943, 6, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(341, 943, 7, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(342, 946, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(343, 946, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(344, 946, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(345, 947, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(346, 947, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(347, 947, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(348, 948, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(349, 948, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(350, 948, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(351, 959, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(352, 959, 3, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(353, 959, 4, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(354, 959, 5, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(355, 961, 2, 'photo', NULL, 2, '2018-02-09 10:31:04'),
(357, 973, 1, 'photo', NULL, 10015, '2018-02-09 18:36:56'),
(358, 973, 6, 'photo', NULL, 10015, '2018-02-09 18:36:56'),
(359, 973, 7, 'video', 'https://www.youtube.com/watch?v=kfXdP7nZIiE', 10015, '2018-02-09 18:36:56'),
(360, 938, 2, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(361, 938, 3, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(362, 938, 4, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(363, 938, 5, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(364, 938, 6, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(365, 938, 7, 'photo', NULL, 10084, '2018-02-12 09:44:58'),
(366, 974, 1, 'photo', NULL, 10084, '2018-02-12 14:21:26'),
(367, 974, 2, 'video', 'https://www.youtube.com/watch?v=Lt_xsdeQzRs', 10084, '2018-02-12 14:21:27'),
(368, 974, 3, 'photo', NULL, 10084, '2018-02-12 14:21:27'),
(369, 974, 4, 'photo', NULL, 10084, '2018-02-12 14:21:27'),
(370, 974, 5, 'photo', NULL, 10084, '2018-02-12 14:21:27'),
(371, 974, 6, 'photo', NULL, 10084, '2018-02-12 14:21:27'),
(372, 974, 7, 'photo', NULL, 10084, '2018-02-12 14:21:27'),
(373, 975, 1, 'photo', NULL, 10084, '2018-02-12 14:27:33'),
(374, 975, 2, 'photo', NULL, 10084, '2018-02-12 14:27:34'),
(375, 975, 3, 'photo', NULL, 10084, '2018-02-12 14:27:34'),
(376, 975, 4, 'photo', NULL, 10084, '2018-02-12 14:27:34'),
(377, 975, 5, 'photo', NULL, 10084, '2018-02-12 14:27:34'),
(378, 975, 6, 'photo', NULL, 10084, '2018-02-12 14:27:34'),
(379, 976, 1, 'photo', NULL, 10084, '2018-02-12 14:28:50'),
(380, 977, 1, 'photo', NULL, 10084, '2018-02-12 14:30:02'),
(381, 977, 2, 'photo', NULL, 10084, '2018-02-12 14:30:02'),
(382, 962, 1, 'photo', NULL, 10084, '2018-02-22 16:59:02'),
(383, 962, 2, 'photo', NULL, 10084, '2018-02-22 16:59:53'),
(384, 962, 3, 'photo', NULL, 10084, '2018-02-22 16:59:53'),
(385, 802, 1, 'photo', NULL, 10084, '2018-02-22 17:00:13'),
(386, 978, 1, 'photo', NULL, 10084, '2018-02-23 16:45:35'),
(387, 978, 2, 'photo', NULL, 10084, '2018-02-23 16:45:36'),
(388, 978, 3, 'photo', NULL, 10084, '2018-02-23 16:45:36'),
(389, 978, 4, 'photo', NULL, 10084, '2018-02-23 16:45:36'),
(390, 978, 5, 'video', 'https://youtu.be/28AJZzbP3b8', 10084, '2018-02-23 16:45:36'),
(391, 979, 1, 'photo', NULL, 10084, '2018-03-01 10:50:10'),
(392, 979, 2, 'photo', NULL, 10084, '2018-03-01 10:50:11'),
(393, 980, 1, 'photo', NULL, 10084, '2018-03-01 14:00:22'),
(394, 980, 2, 'video', 'https://youtu.be/EVIOQkLc5x8', 10015, '2018-03-01 14:00:23'),
(395, 980, 3, 'photo', NULL, 10084, '2018-03-01 14:00:23'),
(396, 980, 4, 'photo', NULL, 10084, '2018-03-01 14:00:23'),
(397, 980, 5, 'photo', NULL, 10084, '2018-03-01 14:00:23'),
(398, 980, 6, 'photo', NULL, 10084, '2018-03-01 14:00:23'),
(399, 980, 7, 'photo', NULL, 10084, '2018-03-01 14:00:23'),
(400, 981, 1, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(401, 981, 2, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(402, 981, 3, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(403, 981, 4, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(404, 981, 5, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(405, 981, 6, 'photo', NULL, 10084, '2018-03-01 15:05:04'),
(406, 982, 1, 'photo', NULL, 10084, '2018-03-01 15:13:40'),
(407, 982, 2, 'photo', NULL, 10084, '2018-03-01 15:13:40'),
(408, 982, 3, 'photo', NULL, 10084, '2018-03-01 15:13:40'),
(409, 982, 4, 'photo', NULL, 10084, '2018-03-01 15:13:40'),
(412, 478, 3, 'photo', NULL, 10084, '2018-03-01 17:29:07'),
(414, 981, 7, 'video', 'https://youtu.be/zgRoWeJgJDM', 10084, '2018-03-02 09:30:20'),
(415, 983, 1, 'photo', NULL, 10084, '2018-03-05 12:13:26'),
(416, 983, 2, 'photo', NULL, 10084, '2018-03-05 12:13:27'),
(417, 983, 3, 'photo', NULL, 10084, '2018-03-05 12:13:27'),
(418, 983, 4, 'photo', NULL, 10084, '2018-03-05 12:13:27'),
(419, 983, 5, 'video', 'https://www.youtube.com/watch?v=OPOBg84Iv5I', 10084, '2018-03-05 12:13:27'),
(420, 984, 1, 'photo', NULL, 10084, '2018-03-05 17:54:08'),
(421, 984, 2, 'photo', NULL, 10084, '2018-03-05 17:54:08'),
(422, 984, 3, 'photo', NULL, 10084, '2018-03-05 17:54:08'),
(423, 984, 4, 'photo', NULL, 10084, '2018-03-05 17:54:08'),
(424, 984, 5, 'photo', NULL, 10084, '2018-03-05 17:54:08'),
(425, 984, 6, 'video', 'https://www.youtube.com/watch?v=OPOBg84Iv5I', 10084, '2018-03-05 17:54:08'),
(426, 985, 1, 'photo', NULL, 10084, '2018-03-08 10:23:51'),
(427, 985, 2, 'photo', NULL, 10084, '2018-03-08 10:23:52'),
(428, 985, 3, 'photo', NULL, 10084, '2018-03-08 10:23:52'),
(429, 985, 4, 'photo', NULL, 10084, '2018-03-08 10:23:52'),
(430, 985, 5, 'photo', NULL, 10084, '2018-03-08 10:23:52'),
(431, 985, 6, 'photo', NULL, 10084, '2018-03-08 10:23:52'),
(432, 985, 7, 'video', 'https://www.youtube.com/watch?v=1Okt9Rijvmg', 10084, '2018-03-08 10:23:52'),
(433, 986, 1, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(434, 986, 2, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(435, 986, 3, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(436, 986, 4, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(437, 986, 5, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(438, 986, 6, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(439, 986, 7, 'photo', NULL, 10084, '2018-03-09 15:59:41'),
(440, 987, 1, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(441, 987, 2, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(442, 987, 3, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(443, 987, 4, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(444, 987, 5, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(445, 987, 6, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(446, 987, 7, 'photo', NULL, 10084, '2018-03-09 16:07:12'),
(447, 988, 1, 'photo', NULL, 10084, '2018-03-09 16:11:11'),
(448, 989, 1, 'photo', NULL, 10084, '2018-03-09 16:15:41'),
(449, 989, 2, 'photo', NULL, 10084, '2018-03-09 16:15:41'),
(450, 989, 3, 'photo', NULL, 10084, '2018-03-09 16:15:41'),
(451, 989, 4, 'photo', NULL, 10084, '2018-03-09 16:15:41'),
(452, 989, 5, 'photo', NULL, 10084, '2018-03-09 16:15:41'),
(453, 990, 1, 'photo', NULL, 10084, '2018-03-09 16:22:09'),
(454, 990, 2, 'photo', NULL, 10084, '2018-03-09 16:22:10'),
(455, 990, 3, 'photo', NULL, 10084, '2018-03-09 16:22:10'),
(456, 990, 4, 'photo', NULL, 10084, '2018-03-09 16:22:10'),
(457, 990, 5, 'photo', NULL, 10084, '2018-03-09 16:22:10'),
(458, 990, 6, 'photo', NULL, 10084, '2018-03-09 16:22:10'),
(459, 991, 1, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(460, 991, 2, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(461, 991, 3, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(462, 991, 4, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(463, 991, 5, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(464, 991, 6, 'photo', NULL, 10084, '2018-03-13 09:29:21'),
(465, 991, 7, 'video', 'https://www.youtube.com/watch?v=s2U9m2-9mGk', 10084, '2018-03-13 09:29:21'),
(466, 992, 1, 'photo', NULL, 10084, '2018-03-20 16:47:06'),
(467, 992, 2, 'photo', NULL, 10084, '2018-03-20 16:47:07'),
(468, 992, 3, 'photo', NULL, 10084, '2018-03-20 16:47:07'),
(469, 992, 4, 'photo', NULL, 10084, '2018-03-20 16:47:07'),
(470, 992, 5, 'photo', NULL, 10084, '2018-03-20 16:47:07'),
(471, 992, 6, 'video', 'https://youtu.be/ZTFRxGpP4QU', 10084, '2018-03-20 16:47:07'),
(472, 993, 1, 'photo', NULL, 10084, '2018-03-20 17:26:28'),
(473, 993, 2, 'photo', NULL, 10084, '2018-03-20 17:26:28'),
(474, 993, 3, 'photo', NULL, 10084, '2018-03-20 17:26:28'),
(475, 994, 1, 'photo', NULL, 10084, '2018-03-20 17:28:09'),
(476, 994, 2, 'photo', NULL, 10084, '2018-03-20 17:28:10'),
(477, 994, 3, 'photo', NULL, 10084, '2018-03-20 17:28:10'),
(478, 994, 4, 'photo', NULL, 10084, '2018-03-20 17:28:10'),
(479, 994, 5, 'photo', NULL, 10084, '2018-03-20 17:28:10'),
(480, 995, 1, 'photo', NULL, 10084, '2018-03-20 17:29:57'),
(481, 995, 2, 'photo', NULL, 10084, '2018-03-20 17:29:57'),
(482, 995, 3, 'photo', NULL, 10084, '2018-03-20 17:29:57'),
(483, 995, 4, 'photo', NULL, 10084, '2018-03-20 17:29:57'),
(484, 995, 5, 'video', 'https://youtu.be/NMJhV43QdWM', 10084, '2018-03-20 17:29:57'),
(485, 995, 6, 'video', 'https://youtu.be/wndz-oanSOA', 10084, '2018-03-20 17:29:57'),
(486, 996, 1, 'photo', NULL, 10084, '2018-03-20 17:32:01'),
(487, 996, 2, 'photo', NULL, 10084, '2018-03-20 17:32:02'),
(488, 996, 3, 'photo', NULL, 10084, '2018-03-20 17:32:02'),
(489, 997, 1, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(490, 997, 2, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(491, 997, 3, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(492, 997, 4, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(493, 997, 5, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(494, 997, 6, 'photo', NULL, 10084, '2018-04-02 16:34:36'),
(495, 998, 1, 'photo', NULL, 10084, '2018-04-02 16:38:56'),
(496, 998, 2, 'photo', NULL, 10084, '2018-04-02 16:38:56'),
(497, 998, 3, 'photo', NULL, 10084, '2018-04-02 16:38:56'),
(498, 998, 4, 'photo', NULL, 10084, '2018-04-02 16:38:56'),
(499, 998, 5, 'photo', NULL, 10084, '2018-04-02 16:38:56'),
(500, 999, 1, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(501, 999, 2, 'video', 'https://youtu.be/DLLw1rkFz1Y', 10084, '2018-04-12 16:39:25'),
(502, 999, 3, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(503, 999, 4, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(504, 999, 5, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(505, 999, 6, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(506, 999, 7, 'photo', NULL, 10084, '2018-04-12 16:39:25'),
(507, 1000, 1, 'photo', NULL, 10084, '2018-04-13 11:36:15'),
(508, 1001, 1, 'photo', NULL, 10084, '2018-04-13 12:16:05'),
(509, 1002, 1, 'photo', NULL, 10084, '2018-04-13 12:18:27'),
(510, 1003, 1, 'photo', NULL, 10084, '2018-04-13 12:19:31'),
(511, 1004, 1, 'photo', NULL, 10084, '2018-04-13 12:20:29'),
(512, 1000, 2, 'video', 'https://youtu.be/Dh0-gt5gCQs', 10084, '2018-04-16 09:21:05'),
(513, 1001, 2, 'video', 'https://youtu.be/0VB_S6N5obc', 10084, '2018-04-16 09:21:38'),
(514, 1002, 2, 'video', 'https://youtu.be/2DMsF-Cvqjo', 10084, '2018-04-16 09:22:29'),
(515, 1004, 2, 'video', 'https://youtu.be/hVIvjGe-NeA', 10084, '2018-04-16 09:23:59'),
(516, 1005, 1, 'photo', NULL, 10084, '2018-04-16 13:50:12'),
(517, 1005, 2, 'photo', NULL, 10084, '2018-04-16 13:50:13'),
(518, 1005, 3, 'photo', NULL, 10084, '2018-04-16 13:50:13'),
(519, 1005, 4, 'photo', NULL, 10084, '2018-04-16 13:50:13'),
(520, 1006, 1, 'photo', NULL, 10084, '2018-04-16 15:19:24'),
(521, 1006, 2, 'photo', NULL, 10084, '2018-04-16 15:19:25'),
(522, 1006, 3, 'photo', NULL, 10084, '2018-04-16 15:19:25'),
(523, 1006, 4, 'photo', NULL, 10084, '2018-04-16 15:19:25'),
(524, 1006, 5, 'photo', NULL, 10084, '2018-04-16 15:19:25'),
(525, 1006, 6, 'photo', NULL, 10084, '2018-04-16 15:19:25'),
(526, 1007, 1, 'photo', NULL, 10084, '2018-04-16 15:42:22'),
(527, 1007, 2, 'photo', NULL, 10084, '2018-04-16 15:42:23'),
(528, 1007, 3, 'photo', NULL, 10084, '2018-04-16 15:42:23'),
(529, 1007, 4, 'photo', NULL, 10084, '2018-04-16 15:42:23'),
(530, 1007, 5, 'photo', NULL, 10084, '2018-04-16 15:42:23'),
(531, 1007, 6, 'video', 'https://youtu.be/REBwYS83z44', 10084, '2018-04-16 15:42:23'),
(532, 1008, 1, 'photo', NULL, 10084, '2018-04-16 15:43:08'),
(533, 1008, 2, 'photo', NULL, 10084, '2018-04-16 15:43:09'),
(534, 1008, 3, 'photo', NULL, 10084, '2018-04-16 15:43:09'),
(535, 1008, 4, 'photo', NULL, 10084, '2018-04-16 15:43:09'),
(536, 1008, 5, 'photo', NULL, 10084, '2018-04-16 15:43:09'),
(537, 1008, 6, 'video', 'https://youtu.be/REBwYS83z44', 10084, '2018-04-16 15:43:09'),
(538, 1009, 1, 'photo', NULL, 10084, '2018-04-16 15:43:10'),
(539, 1009, 2, 'photo', NULL, 10084, '2018-04-16 15:43:10'),
(540, 1009, 3, 'photo', NULL, 10084, '2018-04-16 15:43:10'),
(541, 1009, 4, 'photo', NULL, 10084, '2018-04-16 15:43:10'),
(542, 1009, 5, 'photo', NULL, 10084, '2018-04-16 15:43:10'),
(543, 1009, 6, 'video', 'https://youtu.be/REBwYS83z44', 10084, '2018-04-16 15:43:10'),
(544, 1010, 1, 'photo', NULL, 10084, '2018-04-16 15:43:11'),
(545, 1010, 2, 'photo', NULL, 10084, '2018-04-16 15:43:12'),
(546, 1010, 3, 'photo', NULL, 10084, '2018-04-16 15:43:12'),
(547, 1010, 4, 'photo', NULL, 10084, '2018-04-16 15:43:12'),
(548, 1010, 5, 'photo', NULL, 10084, '2018-04-16 15:43:12'),
(549, 1010, 6, 'video', 'https://youtu.be/REBwYS83z44', 10084, '2018-04-16 15:43:12'),
(550, 988, 2, 'photo', NULL, 10084, '2018-04-19 09:55:15'),
(551, 1011, 1, 'photo', NULL, 10084, '2018-04-19 10:57:57'),
(552, 1011, 2, 'photo', NULL, 10084, '2018-04-19 10:57:57'),
(553, 1011, 3, 'photo', NULL, 10084, '2018-04-19 10:57:57'),
(554, 1011, 4, 'photo', NULL, 10084, '2018-04-19 10:57:57'),
(555, 1012, 1, 'photo', NULL, 10084, '2018-04-19 10:59:19'),
(556, 1012, 2, 'photo', NULL, 10084, '2018-04-19 10:59:19'),
(557, 1012, 3, 'photo', NULL, 10084, '2018-04-19 10:59:19'),
(558, 1012, 4, 'photo', NULL, 10084, '2018-04-19 10:59:19'),
(559, 1012, 5, 'photo', NULL, 10084, '2018-04-19 10:59:19'),
(560, 1013, 1, 'photo', NULL, 10084, '2018-04-19 11:09:58'),
(561, 1013, 2, 'photo', NULL, 10084, '2018-04-19 11:09:58'),
(562, 1013, 3, 'photo', NULL, 10084, '2018-04-19 11:09:59'),
(563, 1013, 4, 'photo', NULL, 10084, '2018-04-19 11:09:59'),
(564, 1013, 5, 'photo', NULL, 10084, '2018-04-19 11:09:59'),
(565, 1013, 6, 'photo', NULL, 10084, '2018-04-19 11:09:59'),
(566, 1013, 7, 'photo', NULL, 10084, '2018-04-19 11:09:59'),
(567, 1003, 2, 'photo', NULL, 10084, '2018-04-19 11:32:35'),
(568, 1003, 3, 'photo', NULL, 10084, '2018-04-19 11:32:36'),
(569, 1003, 4, 'photo', NULL, 10084, '2018-04-19 11:32:36'),
(570, 1003, 5, 'photo', NULL, 10084, '2018-04-19 11:32:36'),
(571, 1014, 1, 'photo', NULL, 10084, '2018-04-24 09:11:25'),
(572, 1014, 2, 'video', 'https://www.youtube.com/watch?v=XjiCaTqv2fo', 10084, '2018-04-24 09:11:26'),
(573, 1015, 1, 'photo', NULL, 10084, '2018-04-24 09:12:29'),
(574, 1015, 2, 'photo', NULL, 10084, '2018-04-24 09:12:29'),
(575, 1015, 3, 'photo', NULL, 10084, '2018-04-24 09:12:29'),
(576, 1015, 4, 'photo', NULL, 10084, '2018-04-24 09:12:29'),
(577, 1016, 1, 'photo', NULL, 10084, '2018-05-03 16:53:01'),
(578, 1016, 2, 'photo', NULL, 10084, '2018-05-03 16:53:02'),
(579, 1016, 3, 'photo', NULL, 10084, '2018-05-03 16:53:02'),
(580, 1016, 4, 'photo', NULL, 10084, '2018-05-03 16:53:02'),
(581, 1016, 5, 'photo', NULL, 10084, '2018-05-03 16:53:02'),
(582, 1017, 1, 'photo', NULL, 10084, '2018-05-03 16:53:05'),
(583, 1017, 2, 'photo', NULL, 10084, '2018-05-03 16:53:05'),
(584, 1017, 3, 'photo', NULL, 10084, '2018-05-03 16:53:05'),
(585, 1017, 4, 'photo', NULL, 10084, '2018-05-03 16:53:05'),
(586, 1017, 5, 'photo', NULL, 10084, '2018-05-03 16:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `g_product_inquery`
--

CREATE TABLE `g_product_inquery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `description` text,
  `country` varchar(2) NOT NULL,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_product_inquery`
--

INSERT INTO `g_product_inquery` (`id`, `product_id`, `email`, `first_name`, `last_name`, `company_name`, `website`, `title`, `phone`, `mobile`, `description`, `country`, `add_date`) VALUES
(1, 981, 'asim.sagir@gmail.com', 'asim', 'ass', 'ssss', 'aa', 'aaa', '123456789', '444444', 'ddddd', 'TW', '2018-05-31 08:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `g_product_slug`
--

CREATE TABLE `g_product_slug` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `g_product_slug`
--

INSERT INTO `g_product_slug` (`id`, `product_id`, `url_slug`, `upd_date`) VALUES
(788, 851, 'bluetooth-range-extender', '2018-06-21 05:59:09'),
(789, 832, 'ci-303', '2018-06-21 05:59:09'),
(790, 133, '10-tablet-charger-cart10-lock', '2018-06-21 05:59:09'),
(791, 132, '10-tablet-charger-cabinet', '2018-06-21 05:59:09'),
(792, 227, 'cloud-native-saas-pos', '2018-06-21 05:59:09'),
(793, 836, 'ms-550', '2018-06-21 05:59:09'),
(794, 921, 'gw-ac1200', '2018-06-21 05:59:09'),
(795, 212, 'digital-signage-cms-server', '2018-06-21 05:59:10'),
(796, 278, 'sg500', '2018-06-21 05:59:10'),
(797, 893, 'b01-with-cms01', '2018-06-21 05:59:10'),
(798, 894, 'm1-with-cms01', '2018-06-21 05:59:10'),
(799, 376, 'ml-35-60ghz5g-ptp', '2018-06-21 05:59:10'),
(800, 140, 'skyfire-ac1200-w-cloudnet', '2018-06-21 05:59:10'),
(801, 141, 'sunspot-ac1200-w-cloudnet-eu', '2018-06-21 05:59:10'),
(802, 142, 'sunspot-n300-w-cloudnet-eu', '2018-06-21 05:59:10'),
(803, 169, 'sunspot-ac1200-w-cloudnet-uk', '2018-06-21 05:59:10'),
(804, 170, 'sunspot-ac1200-w-cloudnet', '2018-06-21 05:59:10'),
(805, 206, 'skyfire-ac1200-2-wcloudnet-us', '2018-06-21 05:59:10'),
(806, 209, 'skyfire-ac1200-2-wcloudnet', '2018-06-21 05:59:10'),
(807, 210, 'sunspot-ac1200-w-cloudnet', '2018-06-21 05:59:10'),
(808, 335, 'spark-n300', '2018-06-21 05:59:10'),
(809, 184, 'hs-nh221a', '2018-06-21 05:59:10'),
(810, 185, 'hs-nb101a', '2018-06-21 05:59:10'),
(811, 186, 'hs-nb1021', '2018-06-21 05:59:10'),
(812, 504, 'log-500', '2018-06-21 05:59:11'),
(813, 460, 'tp-100', '2018-06-21 05:59:11'),
(814, 695, 'ks-710', '2018-06-21 05:59:11'),
(815, 477, 'dsa-3200', '2018-06-21 05:59:11'),
(816, 478, 'display-watchdog-eyesign', '2018-06-21 05:59:11'),
(817, 627, 'dsa-3200-fullset', '2018-06-21 05:59:11'),
(818, 629, 'uc-6050-with-20-license', '2018-06-21 05:59:11'),
(819, 668, 'va2200-nvr-24tb', '2018-06-21 05:59:11'),
(820, 669, 'va2600-nvr-32tb', '2018-06-21 05:59:11'),
(821, 670, 'vr2600xis-storage-64tb', '2018-06-21 05:59:11'),
(822, 671, 'vr2600xid-storage-64tb', '2018-06-21 05:59:11'),
(823, 632, 'filecruiser-va2600-12tb-100', '2018-06-21 05:59:11'),
(824, 633, 'filecruiser-va2600-48tb-100', '2018-06-21 05:59:11'),
(825, 634, 'filecruiser-vr2600s-48tb-500', '2018-06-21 05:59:11'),
(826, 749, 'eyeris-9090ft-standard-mount', '2018-06-21 05:59:11'),
(827, 838, 'eyeris-9090ust-standard-mount', '2018-06-21 05:59:12'),
(828, 845, 'nsw100-28p', '2018-06-21 05:59:12'),
(829, 846, 'nsw200-28p', '2018-06-21 05:59:12'),
(830, 847, 'nap102', '2018-06-21 05:59:12'),
(831, 848, 'nap203', '2018-06-21 05:59:12'),
(832, 849, 'nap303', '2018-06-21 05:59:12'),
(833, 850, 'nap353', '2018-06-21 05:59:12'),
(834, 853, 'nsg100', '2018-06-21 05:59:12'),
(835, 854, 'nsw100-10p', '2018-06-21 05:59:12'),
(836, 176, 'digital-signage-client', '2018-06-21 05:59:12'),
(837, 284, 'retailcam-system', '2018-06-21 05:59:12'),
(838, 435, 'noodoe-10', '2018-06-21 05:59:12'),
(839, 723, 'noodoe-10', '2018-06-21 05:59:12'),
(840, 724, 'noodoe-10', '2018-06-21 05:59:12'),
(841, 840, 'mfp-management-solution', '2018-06-21 05:59:12'),
(842, 834, 'ci-430', '2018-06-21 05:59:12'),
(843, 830, 'ci-218', '2018-06-21 05:59:12'),
(844, 942, 'spark-ac-wave2-promotion', '2018-06-21 05:59:13'),
(845, 878, 'benq-cms-solution-x-10-devices', '2018-06-21 05:59:13'),
(846, 943, 'retail-analytics-4c-pack', '2018-06-21 05:59:13'),
(847, 915, 'ecs4120-28t', '2018-06-21 05:59:13'),
(848, 948, 'ecs2100-52t', '2018-06-21 05:59:13'),
(849, 947, 'ecs2100-28t', '2018-06-21 05:59:13'),
(850, 946, 'ecs2100-28pp', '2018-06-21 05:59:13'),
(851, 938, 'ecs4100-26tx-me-eu-promotion', '2018-06-21 05:59:13'),
(852, 937, 'ecs4100-26tx-eu-promotion', '2018-06-21 05:59:13'),
(853, 936, 'ecs4100-52t-eu-promotion', '2018-06-21 05:59:13'),
(854, 935, 'ecs4100-28t-eu-promotion', '2018-06-21 05:59:13'),
(855, 933, 'ecs4100-26tx-me', '2018-06-21 05:59:13'),
(856, 931, 'ecs4100-28t', '2018-06-21 05:59:13'),
(857, 924, 'ecs2100-10pe', '2018-06-21 05:59:13'),
(858, 870, 'ecs2100-28p', '2018-06-21 05:59:13'),
(859, 871, 'ecs4120-28f', '2018-06-21 05:59:13'),
(860, 868, 'ecs2100-10p', '2018-06-21 05:59:14'),
(861, 869, 'ecs2100-10t', '2018-06-21 05:59:14'),
(862, 940, 'sp-w2-ac1200', '2018-06-21 05:59:14'),
(863, 959, 'spark-n300uk', '2018-06-21 05:59:14'),
(864, 862, 'et4201-sx', '2018-06-21 05:59:14'),
(865, 961, 'ecs4620-28f', '2018-06-21 05:59:14'),
(866, 787, 'hsg-800', '2018-06-21 05:59:14'),
(867, 502, 'cmg-800', '2018-06-21 05:59:14'),
(868, 402, 'hsg-200', '2018-06-21 05:59:14'),
(869, 971, 'ecs4120-28fv2', '2018-06-21 05:59:14'),
(870, 895, 'ecs4100-52t', '2018-06-21 05:59:14'),
(871, 974, 'retail-analytics-4c-pack', '2018-06-21 05:59:14'),
(872, 975, 'all-in-one-smart-center', '2018-06-21 05:59:14'),
(873, 976, 'door-sensor', '2018-06-21 05:59:15'),
(874, 977, 'keyfob', '2018-06-21 05:59:15'),
(875, 962, 'as5812-54t-ec', '2018-06-21 05:59:15'),
(876, 802, 'fns-poe-24', '2018-06-21 05:59:15'),
(877, 978, 'lowi-social-media-intelligence', '2018-06-21 05:59:15'),
(878, 979, 'campus-management-system', '2018-06-21 05:59:15'),
(879, 980, 'irevo-digital-signage', '2018-06-21 05:59:15'),
(880, 981, 'osprey-cloud', '2018-06-21 05:59:15'),
(881, 982, 'capv', '2018-06-21 05:59:15'),
(882, 983, 'bluefox-count', '2018-06-21 05:59:15'),
(883, 984, 'bluefox-engage', '2018-06-21 05:59:15'),
(884, 985, 'rfid-and-iot-platform-system', '2018-06-21 05:59:15'),
(885, 986, 'linkstreet-pro', '2018-06-21 05:59:15'),
(886, 987, 'rapl', '2018-06-21 05:59:15'),
(887, 988, 'content-services', '2018-06-21 05:59:16'),
(888, 989, 'live-streaming-service-platform', '2018-06-21 05:59:16'),
(889, 990, 'retailcam-counting-system', '2018-06-21 05:59:16'),
(890, 991, 'wireless-and-portable-media-capture-sys', '2018-06-21 05:59:16'),
(891, 992, 'simmagic-ebook', '2018-06-21 05:59:16'),
(892, 993, 'sellinghub', '2018-06-21 05:59:16'),
(893, 994, 'classhub', '2018-06-21 05:59:16'),
(894, 995, 'magic-vr', '2018-06-21 05:59:16'),
(895, 996, 'teachingcloud', '2018-06-21 05:59:16'),
(896, 997, 'hpc005-infrared-people-counter', '2018-06-21 05:59:16'),
(897, 998, 'hpc008-camera-people-counter', '2018-06-21 05:59:16'),
(898, 999, 'rims', '2018-06-21 05:59:16'),
(899, 1000, 'knachtechs-school-management', '2018-06-21 05:59:16'),
(900, 1001, 'knacktechs-parking-management', '2018-06-21 05:59:17'),
(901, 1002, 'knacktechs-pos', '2018-06-21 05:59:17'),
(902, 1003, 'knacktechs-hms', '2018-06-21 05:59:17'),
(903, 1004, 'knacktechs-crm', '2018-06-21 05:59:17'),
(904, 1005, 'objectblocks', '2018-06-21 05:59:17'),
(905, 1006, 'astra-people-counting-sys-and-analyzing', '2018-06-21 05:59:17'),
(906, 1007, 'smart-power-strip', '2018-06-21 05:59:17'),
(907, 1008, 'smart-power-strip', '2018-06-21 05:59:17'),
(908, 1009, 'smart-power-strip', '2018-06-21 05:59:17'),
(909, 1010, 'smart-power-strip', '2018-06-21 05:59:17'),
(910, 1011, 'trackrover-reddot-campus-solution', '2018-06-21 05:59:17'),
(911, 1012, 'track-rover-fieldforce', '2018-06-21 05:59:17'),
(912, 1013, 'yallacode', '2018-06-21 05:59:17'),
(913, 1014, 'rcs-traxx', '2018-06-21 05:59:17'),
(914, 1015, 'rcs-compas', '2018-06-21 05:59:17'),
(915, 1016, 'appgen', '2018-06-21 05:59:18'),
(916, 1017, 'appgen', '2018-06-21 05:59:18'),
(917, 958, 'ecs4110-52t', '2018-06-21 05:59:18'),
(921, 779, 'intelligent-beacon-based-cms', '2018-06-21 05:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `g_scenario_detail`
--

CREATE TABLE `g_scenario_detail` (
  `id` int(11) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `add_no` varchar(5) DEFAULT NULL,
  `add_date` datetime NOT NULL,
  `upd_no` varchar(5) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `url_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_scenario_detail`
--

INSERT INTO `g_scenario_detail` (`id`, `title_id`, `name`, `description`, `priority`, `status`, `add_no`, `add_date`, `upd_no`, `upd_date`, `url_slug`) VALUES
(2, 3, 'Restaurant Table Service System ', 'An invisible but ever-present concierge to Inject a touch of magic into daily routines', 1, 1, '10046', '2018-02-09 18:15:41', '10004', '2018-02-12 14:15:23', ''),
(3, 3, 'Wearable Biosensor ', 'People need traveling as a get-away from hustle?and?bustle of daily routine and as a bowl of chicken', 2, 0, '10046', '2018-02-09 18:15:41', '10004', '2018-02-12 14:15:34', ''),
(4, 1, 'Intuitive Teaching Software ', 'The world’s most efficiency way to interact with laptops without any bulky item ', 3, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-14 11:12:31', ''),
(5, 1, 'Cloud-based IoT Starter Kit', 'An easy way for leaner new to the field to approach programming  ', 2, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-14 11:12:14', ''),
(6, 1, 'Media Capture System ', 'Record and live-stream the entire classroom activities in a simple and efficient way \n', 4, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-12 14:00:03', ''),
(7, 3, 'Pass Issuing and Redeeming System ', 'Create, send and redeem Apple Wallet Pass, compatible with Android and Window devices', 5, 0, '10015', '2018-02-09 18:15:41', '10004', '2018-02-14 11:15:07', ''),
(8, 6, 'Storage', 'Auto-synchronize all files in the cloud, perfect for authorization and collaboration', 1, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:18:00', ''),
(9, 6, 'Networking ', 'Reliable, resilient network appliances with advanced operation, administration and maintenance funct', 2, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:19:01', ''),
(10, 6, 'Universal Connection ', 'Combine voice/video conference calls and file exchange in an universal connection system ', 3, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:19:10', ''),
(11, 2, 'Social Media Intelligence Analysis ', 'Listen to what your audience say about you, your competitors, and the market', 1, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:00:42', ''),
(12, 2, 'Video Streaming for Business ', 'Grab the eyeballs with professional live streaming service for business events', 2, 1, '10010', '2018-02-09 18:15:41', '10084', '2018-03-02 15:27:31', ''),
(13, 2, 'Digital Signage Content Management ', 'Use central management to drive consistent brand images or visually attract passersby', 3, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:01:10', ''),
(14, 2, 'Mobile Push Marketing ', 'A WAN appliance incorporating advanced networking and security technologies', 4, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:01:32', ''),
(15, 2, 'NFC Table Media ', 'Herness NFC technology to turn the coffee shop tables to virtual point of sales ', 5, 0, '10010', '2018-02-09 18:15:41', '10004', '2018-02-14 11:13:03', ''),
(16, 2, 'Mobile Shop App', 'Create a presence in mobile commerce as well as your fans economy', 6, 1, '10010', '2018-02-09 18:15:41', '10084', '2018-03-21 12:04:05', ''),
(17, 2, 'Beacon System', 'Proximity Marketing: transmit Bluetooth signal to nearby smartphones', 7, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:02:02', ''),
(18, 2, 'Intelligent Video Analytics ', 'Turn video into in-store analytics for data-driven decision making', 8, 1, '10010', '2018-02-09 18:15:41', '10004', '2018-02-14 11:13:26', ''),
(19, 2, '3D Virtual Fitting Room System ', 'Interactive window built on augmented reality and artificial intelligence technologies ', 9, 1, '10010', '2018-02-09 18:15:41', '10084', '2018-03-21 12:02:43', ''),
(20, 2, 'Cloud POS System ', 'No more bulky POS terminals that make the workbench narrow and crowded', 10, 0, '10010', '2018-02-09 18:15:41', '10084', '2018-02-22 16:21:33', ''),
(21, 2, 'Output Accounting Service ', '“hands-free” RFID solutions for unprecedented?supply chain and inventory visibility ', 11, 0, '10010', '2018-02-09 18:15:41', '10004', '2018-02-12 14:14:26', ''),
(22, 2, 'RFID for Inventory Management ', 'RFID And IoT Platform Solutions - Collect, Store, Analyzed And Act on Data in Real Time. Visibility to the edge of your business.', 12, 1, '10010', '2018-02-09 18:15:41', '10084', '2018-03-08 14:19:43', ''),
(23, 3, 'Bus WiFi', 'Plan a journey, buy tickets, check routes and maps, and enjoy a journey on bus WiFi', 6, 1, '10004', '2018-02-09 18:15:41', '10004', '2018-02-12 14:16:32', ''),
(24, 1, 'Mobile Tablet PC Charger ', 'A charging and synchronizing trolley for iOS, Android and Windows system devices', 5, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-12 14:00:22', ''),
(25, 3, 'Environmental Monitor and Control ', 'Energy monitoring, temperature control, and more for connected environment', 4, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-12 14:15:53', ''),
(26, 3, 'IP Video Surveillance Camera ', 'The most rigid IP camera solutions for indoor, outdoor and warehouse environment', 3, 1, '10015', '2018-02-09 18:15:41', '10004', '2018-02-12 14:15:44', ''),
(27, 3, 'Fleet Management', 'Use 3G devices that apply telematics to transmit reliable, speedy and responsive location informatio', 7, 0, '10004', '2018-02-09 18:15:41', '10004', '2018-02-12 14:17:45', ''),
(28, 1, 'Gaming Platform for Education', 'Apply game-design elements and game principles in in courseware context', 1, 1, '10004', '2018-02-09 18:15:41', '10084', '2018-03-21 12:00:41', ''),
(30, 3, 'Cloud POS System', 'No more bulky POS terminals that make the workbench narrow and crowded', 8, 1, '10084', '2018-02-22 16:18:08', '10084', '2018-02-23 17:41:07', ''),
(31, 1, 'Campus ERP', 'ERP category in Edutainment addresses all solutions delivering ERP solutions for schools and college', 6, 1, '10084', '2018-03-01 13:52:51', '10084', '2018-03-01 17:15:02', ''),
(32, 1, 'Elearning', 'Elearning sub category helps in addressing solutions catering to online learning in edutainment', 7, 1, '10084', '2018-03-01 15:15:43', '10084', '2018-03-02 15:24:02', ''),
(33, 8, 'Smart Manufacturing', 'Cloud based plug and play Analytics Platform for Digital Manufacturing for taking data driven smart decisions that would drive tangible/intangible benefits in sustained manner.', 1, 1, '10084', '2018-03-02 09:26:19', '10084', '2018-03-05 17:38:25', ''),
(34, 3, 'Retail Traffic Analytics System', 'By applying intelligent analytics to the video stream or other sensor technologies, it can help the retailers gain important insights into the effectiveness of their operations, marketing and merchandising.', 9, 1, '10084', '2018-03-05 12:17:22', '10084', '2018-03-05 17:40:19', ''),
(35, 2, 'RFID And IoT Platform Solutions', 'Collect, Store, Analyzed And Act on Data in Real Time. Visibility to the edge of your business.', 13, 0, '10084', '2018-03-08 10:14:35', NULL, NULL, ''),
(36, 8, 'Corporate Training', 'Organize and distribute online courses for formal learning. Run live virtual sessions across multiple locations.', 2, 1, '10084', '2018-03-13 09:11:43', NULL, NULL, ''),
(37, 3, 'Restaurant Management System', 'Cloud-based solution for restaurants and centralized kitchens that covers all aspects of restaurant management.', 10, 1, '10084', '2018-04-12 16:35:56', '10084', '2018-04-13 14:23:22', ''),
(38, 3, 'Parking Management', 'Parking Management solution is an horizontal solution applicable in all business verticals. Right from Universities to Manufacturing to Large format Retail Malls.', 11, 1, '10084', '2018-04-13 11:57:48', '10084', '2018-04-16 09:27:14', ''),
(39, 8, 'Hospital Management', 'Hospital Management System helps hospitals track patients data to billing. It can even track medicines prescribed to patients during their stay in hospital. Which could help in billing.', 3, 1, '10084', '2018-04-13 12:01:59', '10084', '2018-04-16 09:32:12', ''),
(40, 8, 'CRM', 'CRM solution is an horizontal solution applicable in Hospitality, retail, manufacturing and service industries. IT helps in tracking customers for a better TAT or improved response time.', 4, 1, '10084', '2018-04-13 12:02:25', '10084', '2018-04-16 09:26:25', ''),
(41, 1, 'Campus Safety', 'For solutions that cover student tracking, school bus tracking and employee tracking', 8, 1, '10084', '2018-04-19 17:08:57', NULL, NULL, ''),
(42, 8, 'Employee tracking', 'solutions that track employee within a campus or across diverse geographical regions', 5, 1, '10084', '2018-04-19 17:09:29', NULL, NULL, ''),
(43, 8, 'Compliance', 'Compliance tracking and management system', 6, 1, '10084', '2018-04-23 09:04:27', NULL, NULL, ''),
(44, 8, 'Business Process Automation', 'Business Process Automation refines and customizes the solution as per customer requirement through inbuilt robotics and AI capabilities. It rides over ERP or similar implementations but provides flexibility in adhering to business processes, providing the right insights.', 7, 1, '10084', '2018-05-03 16:47:00', '10084', '2018-05-03 16:53:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `g_scenario_detail_slug`
--

CREATE TABLE `g_scenario_detail_slug` (
  `id` int(11) NOT NULL,
  `scenario_id` int(11) DEFAULT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `g_scenario_detail_slug`
--

INSERT INTO `g_scenario_detail_slug` (`id`, `scenario_id`, `url_slug`, `upd_date`) VALUES
(2, 36, 'corporate-training', '2018-06-21 05:59:18'),
(3, 4, 'intuitive-teaching-software', '2018-06-21 05:59:18'),
(4, 28, 'gaming-platform-for-education', '2018-06-21 05:59:18'),
(5, 19, '3d-virtual-fitting-room-system', '2018-06-21 05:59:18'),
(6, 12, 'video-streaming-for-business', '2018-06-21 05:59:18'),
(7, 6, 'media-capture-system', '2018-06-21 05:59:18'),
(8, 32, 'elearning', '2018-06-21 05:59:18'),
(9, 10, 'universal-connection', '2018-06-21 05:59:18'),
(10, 30, 'cloud-pos-system', '2018-06-21 05:59:18'),
(11, 2, 'restaurant-table-service-system', '2018-06-21 05:59:18'),
(12, 39, 'hospital-management', '2018-06-21 05:59:18'),
(13, 40, 'crm', '2018-06-21 05:59:18'),
(14, 42, 'employee-tracking', '2018-06-21 05:59:18'),
(15, 43, 'compliance', '2018-06-21 05:59:18'),
(16, 44, 'business-process-automation', '2018-06-21 05:59:18'),
(17, 11, 'social-media-intelligence-analysis', '2018-06-21 05:59:18'),
(18, 13, 'digital-signage-content-management', '2018-06-21 05:59:18'),
(19, 14, 'mobile-push-marketing', '2018-06-21 05:59:18'),
(20, 23, 'bus-wifi', '2018-06-21 05:59:18'),
(21, 9, 'networking', '2018-06-21 05:59:18'),
(22, 17, 'beacon-system', '2018-06-21 05:59:18'),
(23, 41, 'campus-safety', '2018-06-21 05:59:18'),
(24, 34, 'retail-traffic-analytics-system', '2018-06-21 05:59:18'),
(25, 18, 'intelligent-video-analytics', '2018-06-21 05:59:18'),
(26, 26, 'ip-video-surveillance-camera', '2018-06-21 05:59:18'),
(27, 25, 'environmental-monitor-and-control', '2018-06-21 05:59:18'),
(28, 16, 'mobile-shop-app', '2018-06-21 05:59:18'),
(29, 15, 'nfc-table-media', '2018-06-21 05:59:18'),
(30, 20, 'cloud-pos-system', '2018-06-21 05:59:18'),
(31, 21, 'output-accounting-service', '2018-06-21 05:59:18'),
(32, 22, 'rfid-for-inventory-management', '2018-06-21 05:59:18'),
(33, 35, 'rfid-and-iot-platform-solutions', '2018-06-21 05:59:18'),
(34, 5, 'cloud-based-iot-starter-kit', '2018-06-21 05:59:18'),
(35, 24, 'mobile-tablet-pc-charger', '2018-06-21 05:59:18'),
(36, 31, 'campus-erp', '2018-06-21 05:59:18'),
(37, 8, 'storage', '2018-06-21 05:59:18'),
(38, 3, 'wearable-biosensor', '2018-06-21 05:59:18'),
(39, 7, 'pass-issuing-and-redeeming-system', '2018-06-21 05:59:18'),
(40, 27, 'fleet-management', '2018-06-21 05:59:18'),
(41, 37, 'restaurant-management-system', '2018-06-21 05:59:18'),
(42, 38, 'parking-management', '2018-06-21 05:59:18'),
(45, 33, 'smart-manufacturing', '2018-06-21 05:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `g_scenario_product`
--

CREATE TABLE `g_scenario_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `scenario_id` int(11) NOT NULL,
  `add_no` int(11) DEFAULT NULL,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_scenario_product`
--

INSERT INTO `g_scenario_product` (`id`, `product_id`, `scenario_id`, `add_no`, `add_date`) VALUES
(111, 937, 9, 10084, '2018-02-22 16:01:08'),
(112, 936, 9, 10084, '2018-02-22 16:01:13'),
(113, 935, 9, 10084, '2018-02-22 16:01:19'),
(131, 724, 2, 10084, '2018-02-22 16:22:46'),
(132, 723, 2, 10084, '2018-02-22 16:22:56'),
(140, 142, 9, 10084, '2018-02-22 16:26:36'),
(142, 170, 9, 10084, '2018-02-22 16:33:19'),
(148, 938, 9, 10084, '2018-02-22 17:10:32'),
(149, 959, 9, 10084, '2018-02-22 17:44:47'),
(153, 206, 9, 10084, '2018-02-22 18:07:25'),
(157, 169, 9, 10084, '2018-02-22 18:09:16'),
(158, 141, 9, 10084, '2018-02-22 18:09:21'),
(162, 958, 9, 10084, '2018-02-23 11:00:40'),
(163, 942, 9, 10084, '2018-02-23 11:48:34'),
(172, 977, 25, 10084, '2018-02-23 16:23:44'),
(173, 976, 25, 10084, '2018-02-23 16:23:51'),
(174, 975, 26, 10084, '2018-02-23 16:24:02'),
(175, 975, 25, 10084, '2018-02-23 16:24:02'),
(176, 974, 11, 10084, '2018-02-23 16:24:40'),
(177, 971, 9, 10084, '2018-02-23 16:24:57'),
(178, 962, 9, 10084, '2018-02-23 16:25:05'),
(179, 961, 9, 10084, '2018-02-23 16:25:13'),
(180, 948, 9, 10084, '2018-02-23 16:26:04'),
(181, 947, 9, 10084, '2018-02-23 16:26:16'),
(182, 946, 9, 10084, '2018-02-23 16:26:27'),
(183, 940, 9, 10084, '2018-02-23 16:26:49'),
(187, 921, 9, 10084, '2018-02-23 16:27:29'),
(188, 915, 9, 10084, '2018-02-23 16:27:38'),
(190, 894, 13, 10084, '2018-02-23 16:28:23'),
(191, 893, 13, 10084, '2018-02-23 16:28:34'),
(196, 862, 9, 10084, '2018-02-23 16:31:14'),
(197, 854, 9, 10084, '2018-02-23 16:31:36'),
(198, 853, 9, 10084, '2018-02-23 16:31:47'),
(199, 851, 2, 10084, '2018-02-23 16:32:10'),
(200, 850, 9, 10084, '2018-02-23 16:32:30'),
(201, 849, 9, 10084, '2018-02-23 16:32:40'),
(202, 848, 9, 10084, '2018-02-23 16:32:52'),
(203, 847, 9, 10084, '2018-02-23 16:33:04'),
(204, 846, 9, 10084, '2018-02-23 16:34:00'),
(205, 845, 9, 10084, '2018-02-23 16:34:28'),
(206, 838, 4, 10084, '2018-02-23 16:34:50'),
(208, 834, 6, 10084, '2018-02-23 16:35:30'),
(209, 832, 6, 10084, '2018-02-23 16:35:45'),
(210, 830, 6, 10084, '2018-02-23 16:35:59'),
(211, 802, 9, 10084, '2018-02-23 16:36:13'),
(212, 787, 14, 10084, '2018-02-23 16:37:01'),
(213, 787, 23, 10084, '2018-02-23 16:37:01'),
(214, 779, 14, 10084, '2018-02-23 16:38:39'),
(215, 779, 17, 10084, '2018-02-23 16:38:39'),
(216, 749, 4, 10084, '2018-02-23 16:38:50'),
(217, 695, 6, 10084, '2018-02-23 16:39:03'),
(218, 671, 8, 10084, '2018-02-23 16:39:19'),
(219, 670, 8, 10084, '2018-02-23 16:39:27'),
(220, 669, 8, 10084, '2018-02-23 16:39:36'),
(221, 668, 8, 10084, '2018-02-23 16:39:59'),
(222, 634, 8, 10084, '2018-02-23 16:40:09'),
(224, 978, 11, 10084, '2018-02-23 16:49:21'),
(225, 633, 8, 10084, '2018-02-23 17:35:16'),
(226, 632, 8, 10084, '2018-02-23 17:37:34'),
(227, 629, 10, 10084, '2018-02-23 17:38:02'),
(228, 627, 13, 10084, '2018-02-23 17:38:19'),
(229, 504, 14, 10084, '2018-02-23 17:38:36'),
(230, 504, 23, 10084, '2018-02-23 17:38:36'),
(234, 460, 6, 10084, '2018-02-23 17:42:26'),
(235, 477, 13, 10084, '2018-02-23 17:42:36'),
(236, 435, 2, 10084, '2018-02-26 10:35:49'),
(237, 402, 14, 10084, '2018-02-26 10:36:14'),
(238, 402, 23, 10084, '2018-02-26 10:36:14'),
(239, 402, 9, 10084, '2018-02-26 10:36:14'),
(240, 376, 9, 10084, '2018-02-26 10:36:34'),
(241, 335, 9, 10084, '2018-02-26 10:36:52'),
(242, 278, 9, 10084, '2018-02-26 10:37:23'),
(243, 210, 9, 10084, '2018-02-26 10:39:25'),
(244, 209, 9, 10084, '2018-02-26 10:39:40'),
(245, 140, 9, 10084, '2018-02-26 10:42:02'),
(249, 979, 31, 10084, '2018-03-01 14:01:34'),
(284, 478, 13, 10084, '2018-03-01 18:06:33'),
(302, 980, 13, 10015, '2018-03-02 15:17:07'),
(307, 981, 33, 10084, '2018-03-02 15:23:31'),
(312, 982, 6, 10010, '2018-03-02 18:08:51'),
(313, 982, 32, 10010, '2018-03-02 18:08:51'),
(314, 982, 12, 10010, '2018-03-02 18:08:51'),
(315, 982, 10, 10010, '2018-03-02 18:08:51'),
(317, 186, 26, 10084, '2018-03-05 12:18:58'),
(318, 185, 26, 10084, '2018-03-05 12:19:04'),
(319, 184, 26, 10084, '2018-03-05 12:19:10'),
(320, 212, 13, 10084, '2018-03-05 12:19:21'),
(321, 176, 13, 10084, '2018-03-05 12:19:27'),
(322, 878, 13, 10084, '2018-03-05 12:19:56'),
(323, 133, 24, 10084, '2018-03-05 12:20:15'),
(324, 132, 24, 10084, '2018-03-05 12:20:19'),
(325, 227, 30, 10084, '2018-03-05 12:21:00'),
(326, 933, 9, 10084, '2018-03-05 13:37:14'),
(327, 868, 9, 10084, '2018-03-05 13:37:54'),
(328, 924, 9, 10084, '2018-03-05 13:38:32'),
(329, 869, 9, 10084, '2018-03-05 13:39:01'),
(330, 870, 9, 10084, '2018-03-05 13:39:53'),
(331, 931, 9, 10084, '2018-03-05 13:40:28'),
(332, 871, 9, 10084, '2018-03-05 13:41:00'),
(333, 983, 34, 10084, '2018-03-05 16:21:49'),
(334, 984, 14, 10084, '2018-03-05 17:54:08'),
(335, 984, 34, 10084, '2018-03-05 17:54:08'),
(339, 985, 22, 10084, '2018-03-08 16:08:20'),
(346, 990, 34, 10084, '2018-03-09 16:22:10'),
(352, 989, 12, 10084, '2018-03-12 11:39:04'),
(353, 991, 6, 10084, '2018-03-13 09:29:21'),
(358, 992, 4, 10084, '2018-03-20 16:47:07'),
(359, 993, 14, 10084, '2018-03-20 17:26:28'),
(360, 993, 16, 10084, '2018-03-20 17:26:28'),
(361, 994, 4, 10084, '2018-03-20 17:28:10'),
(362, 995, 28, 10084, '2018-03-20 17:29:57'),
(363, 995, 4, 10084, '2018-03-20 17:29:57'),
(364, 995, 19, 10084, '2018-03-20 17:29:57'),
(365, 996, 4, 10084, '2018-03-20 17:32:02'),
(366, 836, 6, 10084, '2018-03-27 16:11:02'),
(369, 502, 14, 10049, '2018-03-30 18:18:07'),
(370, 502, 23, 10049, '2018-03-30 18:18:07'),
(372, 997, 34, 10084, '2018-04-02 16:37:00'),
(373, 998, 34, 10084, '2018-04-02 16:38:57'),
(384, 999, 37, 10084, '2018-04-13 14:25:05'),
(385, 1000, 31, 10084, '2018-04-16 09:21:05'),
(390, 1004, 40, 10084, '2018-04-16 09:23:59'),
(391, 1005, 5, 10084, '2018-04-16 13:50:13'),
(392, 1006, 18, 10084, '2018-04-16 15:19:25'),
(393, 1006, 26, 10084, '2018-04-16 15:19:25'),
(394, 1006, 34, 10084, '2018-04-16 15:19:25'),
(395, 1007, 24, 10084, '2018-04-16 15:42:23'),
(399, 1010, 24, 10084, '2018-04-16 15:45:11'),
(400, 1009, 24, 10084, '2018-04-16 15:45:18'),
(401, 1008, 24, 10084, '2018-04-16 15:45:24'),
(406, 988, 36, 10084, '2018-04-19 09:55:16'),
(407, 987, 4, 10084, '2018-04-19 09:55:39'),
(408, 987, 12, 10084, '2018-04-19 09:55:39'),
(409, 987, 30, 10084, '2018-04-19 09:55:39'),
(410, 987, 36, 10084, '2018-04-19 09:55:39'),
(413, 986, 4, 10084, '2018-04-19 10:22:14'),
(414, 986, 36, 10084, '2018-04-19 10:22:14'),
(417, 1013, 4, 10084, '2018-04-19 11:09:59'),
(418, 1003, 39, 10084, '2018-04-19 11:32:36'),
(419, 1011, 41, 10084, '2018-04-19 17:10:28'),
(420, 1011, 17, 10084, '2018-04-19 17:10:28'),
(423, 1014, 43, 10084, '2018-04-24 09:11:26'),
(424, 1015, 43, 10084, '2018-04-24 09:12:29'),
(427, 1017, 44, 10084, '2018-05-03 16:53:14'),
(428, 1001, 38, 10084, '2018-05-18 11:51:32'),
(429, 1002, 2, 10084, '2018-05-18 14:15:09'),
(430, 1002, 30, 10084, '2018-05-18 14:15:09'),
(434, 1012, 42, 10084, '2018-05-18 16:01:41'),
(436, 1016, 44, 10084, '2018-05-18 16:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `g_scenario_title`
--

CREATE TABLE `g_scenario_title` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `add_no` varchar(5) DEFAULT NULL,
  `add_date` datetime NOT NULL,
  `upd_no` varchar(5) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `url_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_scenario_title`
--

INSERT INTO `g_scenario_title` (`id`, `name`, `priority`, `status`, `add_no`, `add_date`, `upd_no`, `upd_date`, `url_slug`) VALUES
(1, 'Edutainment', 1, 1, '10015', '2018-02-09 18:01:40', '10015', '2018-06-13 05:43:46', 'edutainment'),
(2, 'Digital Marketing', 2, 1, '10084', '2018-02-09 18:02:46', NULL, '2018-06-13 05:43:46', 'digital-marketing'),
(3, 'Hospitality', 3, 1, '10046', '2018-02-09 18:11:46', NULL, '2018-06-13 05:43:47', 'hospitality'),
(6, 'Infrastructure', 4, 1, '10015', '2018-02-09 18:11:46', NULL, '2018-06-13 05:43:47', 'infrastructure'),
(8, 'Others', 5, 1, '10084', '2018-03-02 09:17:53', '10084', '2018-06-13 05:43:46', 'others');

-- --------------------------------------------------------

--
-- Table structure for table `g_scenario_title_slug`
--

CREATE TABLE `g_scenario_title_slug` (
  `id` int(11) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `g_scenario_title_slug`
--

INSERT INTO `g_scenario_title_slug` (`id`, `title_id`, `url_slug`, `upd_date`) VALUES
(2, 2, 'digital-marketing', '2018-06-21 05:59:18'),
(3, 1, 'edutainment', '2018-06-21 05:59:18'),
(4, 6, 'infrastructure', '2018-06-21 05:59:18'),
(5, 3, 'hospitality', '2018-06-21 05:59:18'),
(7, 8, 'others', '2018-06-21 05:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `industry_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `industry_name`, `deleted`, `created_at`, `is_active`) VALUES
(1, 'Training', '0', '2018-02-12 07:10:16', 1),
(2, 'Corporate', '0', '2018-02-12 07:13:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `landing_banner`
--

CREATE TABLE `landing_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_banner`
--

INSERT INTO `landing_banner` (`id`, `title`, `description`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Student Tracking', 'Student Tracking Solution', '', 1, '2018-05-31 09:45:10', '2018-05-31 09:45:10'),
(2, 'demo', 'h', '', 1, '2018-05-11 12:54:00', '2018-05-11 12:54:00'),
(3, 'demo5', 'gg', '', 1, '2018-05-12 04:47:50', '2018-05-12 04:47:50'),
(7, 'demo4', 'ddd', '', 1, '2018-05-14 09:36:15', '2018-05-14 09:36:15'),
(8, 'ggg', 'ggg', '', 1, '2018-05-12 03:47:53', '2018-05-12 03:47:53'),
(9, 'demo5', 'ggg', '', 1, '2018-05-15 06:00:02', '2018-05-15 06:00:02'),
(10, 'demo54', 'ggg', '', 1, '2018-05-12 03:44:29', '2018-05-12 03:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `landing_banner_images`
--

CREATE TABLE `landing_banner_images` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `show_button` tinyint(1) NOT NULL DEFAULT '0',
  `button_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_banner_images`
--

INSERT INTO `landing_banner_images` (`id`, `banner_id`, `title`, `description`, `media_url`, `show_button`, `button_text`, `button_url`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(50, 7, 'd', 'ffff', 'storage/LandingBanner/1526290575parallax-title-2.png', 1, 'asim jjjjj', 'http://www.gg.com', '', 1, '2018-05-14 09:36:15', '2018-05-14 09:36:15'),
(51, 7, 'g', 'ffff', 'storage/LandingBanner/1526290575TB2EggbaXXXXXa2XpXXXXXXXXXX_!!815810282.jpg', 0, '', '', '', 1, '2018-05-14 09:36:15', '2018-05-14 09:36:15'),
(52, 7, 'cofee', 'ggg', 'storage/LandingBanner/1526100964programmer-coffee-code.jpg', 0, '', '', '', 1, '2018-05-14 09:36:15', '2018-05-14 09:36:15'),
(53, 7, 'geek', 'ggg', 'storage/LandingBanner/1526101003Hydrangeas.jpg', 0, '', '', '', 1, '2018-05-14 09:36:15', '2018-05-14 09:36:15'),
(54, 9, 'test', 'ggg', 'storage/LandingBanner/1526364002Desert.jpg', 1, 'trxt', 'http://92.168.0.107/GCR5.1', '', 1, '2018-05-15 06:00:02', '2018-05-15 06:00:02'),
(106, 1, 'Test 2', 'Test 2 Description', 'storage/LandingBanner/1527663700Jellyfish.jpg', 0, '', '', '', 1, '2018-05-31 09:45:10', '2018-05-31 09:45:10'),
(107, 1, 'c2', 'c2 description', 'storage/LandingBanner/1527759910Desert.jpg', 0, '', '', '', 1, '2018-05-31 09:45:10', '2018-05-31 09:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page`
--

CREATE TABLE `landing_page` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`id`, `banner_id`, `theme_id`, `title`, `slug`, `meta_key`, `meta_title`, `meta_description`, `content`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 'Campus Management Solutio            ', 'campus-management-solutio', 'dem,gg,                                ', 'demo                                ', 'test demo', '<p><small>[product id=4]<br></small></p><p><small><br></small><small>TEst con<br></small><small>TEst content<br></small><small>TEst content</small></p><p><small>TEst content</small></p><p><small><br></small><br></p>', '', 1, '2018-06-07 05:25:08', '2018-06-07 05:25:08'),
(2, 1, 2, 'Campus Management Solution      ', 'campus-management-solution', 'Campus Management Solution, Student tracking       ', 'Campus Management Solution (Title Test)       ', 'We provide the best Campus Management Solution.', '<p>\" An Campus Management Solution -</p><p>Manage an institute Campus with students ,teaching &amp; Non Teaching staff, anytime, anywhere(on-campus &amp; off campus} with Mobile enabled Campus Management System from TrackRover.&nbsp;</p><p><br></p><p>Campus Solution provides Alerts, Alarms, Reports for Effectiveness of Staff &amp; Students in the Campus activities. It enables Monitoring &amp; Managing the institute personnel &amp; students for their effectiveness &amp; safe presence in campus.&nbsp;</p><p><br></p><p>The Platform notifies restricted location intrusions &amp; campus policy violations&nbsp; for safety &amp; productivity necessities.</p><p>Features:</p><p>• Monitor &amp; Manage</p><p>o&nbsp; Campus security Personnel: Beat route management, Daily SOP, support supervisors, SOS escalation.</p><p>o On-Campus -Presence:&nbsp; Set up points of interest and get alerts/notifications upon activity; Detection of Out-of-Bound location presence ,SOS escalations</p><p>o Effectiveness&nbsp; of&nbsp; Campus Personnel :&nbsp; Set up&nbsp; Alerts &amp; Alarms, enable Reporting,&nbsp; and get alerts/notifications upon activities, Reports on deviations &amp; Violations of campus governance.&nbsp;</p><p>o Track your service providers: Campus transport management of in-house or outsourced&nbsp; utility services personnel - Driver , Routes, Bus-stop, Student travel-rooster.&nbsp;</p><p>[product id=6]<br></p>', '', 1, '2018-06-14 13:26:31', '2018-06-14 13:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `landing_product`
--

CREATE TABLE `landing_product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `vendor` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_product`
--

INSERT INTO `landing_product` (`id`, `name`, `description`, `vendor`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'demo ', ' <p>test<br></p> ', 'ddd ', '', 1, '2018-05-15 06:38:47', '2018-05-15 06:38:47'),
(5, 'demo  ggg     ', '       <p>hfrfreaehhha<br></p>       ', 'ddd yy      ', '', 1, '2018-05-15 07:25:17', '2018-05-15 07:25:17'),
(6, 'Student Tracking    ', '    <p>A Campus Management Solution -</p><p>Manage an institute Campus with students,&nbsp;teaching &amp; Non Teaching staff, anytime, anywhere(on-campus &amp; off campus} with Mobile enabled Campus Management System from TrackRover.&nbsp;</p><p>Campus Solution provides Alerts, Alarms, Reports for Effectiveness of Staff &amp; Students in the Campus activities. It enables Monitoring &amp; Managing the institute personnel &amp; students for their effectiveness &amp; safe presence in campus.&nbsp;</p><p>The Platform notifies restricted location intrusions &amp; campus policy violations&nbsp; for safety &amp; productivity necessities.</p><p>Features:</p><p>• Monitor &amp; Manage</p><p>o&nbsp; Campus security Personnel: Beat route management, Daily SOP, support supervisors, SOS escalation.</p><p>o On-Campus -Presence:&nbsp; Set up points of interest and get alerts/notifications upon activity; Detection of Out-of-Bound location presence ,SOS escalations</p><p>o Effectiveness&nbsp; of&nbsp; Campus Personnel :&nbsp; Set up&nbsp; Alerts &amp; Alarms, enable Reporting,&nbsp; and get alerts/notifications upon activities, Reports on deviations &amp; Violations of campus governance.&nbsp;</p><p>o Track your service providers: Campus transport management of in-house or outsourced&nbsp; utility services personnel - Driver , Routes, Bus-stop, Student travel-rooster.&nbsp;</p><div><br></div>    ', 'Track Rover    ', '', 1, '2018-05-29 06:42:50', '2018-05-29 06:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `landing_product_images`
--

CREATE TABLE `landing_product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_product_images`
--

INSERT INTO `landing_product_images` (`id`, `product_id`, `media_url`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(13, 4, 'storage/LandingProduct//1526366327Hydrangeas.jpg', '', 1, '2018-05-15 06:38:47', '2018-05-15 06:38:47'),
(14, 4, 'storage/LandingProduct//1526366327Penguins.jpg', '', 1, '2018-05-15 06:38:47', '2018-05-15 06:38:47'),
(17, 5, 'storage/LandingProduct//1526366288Koala.jpg', '', 1, '2018-05-15 07:25:17', '2018-05-15 07:25:17'),
(24, 6, 'storage/LandingProduct//1527572898TrackRover-Fieldforce.JPG', '', 1, '2018-05-29 06:42:50', '2018-05-29 06:42:50'),
(25, 6, 'storage/LandingProduct//1527575644GCR Logo Profile.jpg', '', 1, '2018-05-29 06:42:50', '2018-05-29 06:42:50'),
(26, 6, 'storage/LandingProduct//1527576170test size landing page.jpg', '', 1, '2018-05-29 06:42:50', '2018-05-29 06:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `news_heading` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `news_summary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_start_date` datetime DEFAULT NULL,
  `event_end_date` datetime DEFAULT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `country_id`, `news_heading`, `thumbnail`, `news_summary`, `deleted`, `created_at`, `updated_at`, `tag`, `is_active`, `type`, `source`, `event_start_date`, `event_end_date`, `url_slug`) VALUES
(1, 1, '         GCR Partner Recruitment Event 2017 in Iran News   ', 'storage/News/1519047759NRAshow-20160516.jpg', '            <p> </p><p> The hotel industryy in Indonesia has enjoyed major expansion since 2011 \r\nwith the growth of the number of hotels reaching between 9% and 14% \r\nevery year, Indonesia has been regarded as one of the most attractive \r\ncountries in terms of tourism by investors.\r\n<br><br>Although Indonesia is the largest country in the Southeast Asia \r\nand it contains ample attractions for tourists, recent years being aware\r\n of the keen competition with the regional peers such as Thailand and \r\nMalaysia in tourism industry, Indonesia has been expending efforts to \r\nleverage the tourism industry on the country level.\r\n<br><br>Recognizing Indonesia’s market potential, GCR gives a session to\r\n Indonesia Internet Expo &amp; Summit 2017 (28th, Nov) sharing the \r\ninsight to mega technology trend in hospitality &amp; tourism industry. \r\nStarting from how IoT has shaped our living nowadays and how much \r\ndigital experiences means to consumers, Mr. Andi Tanudiredja, GCR \r\nCountry Manager in Indonesia, advised that to improve customer \r\nsatisfaction and retention, and ultimately, to increase the revenue, \r\nhoteliers should consider a vastly expanded world of apps, devices and \r\nback-end systems as building blocks, to expand the hotel core \r\napplication landscape and create the optimized digital guest experience.\r\n<br><br>As an integral part of a good guest experience, The hotel Wi-Fi \r\nis the key foundation, and the entire reason for a hotel offering Wi-Fi \r\nto the guests is to help with the bottom line. Since free Wi-Fi has \r\nbecome a necessity in the industry, the Wi-Fi needs to meet the \r\nexpectations of the guests. Regarding this, GCR has aligned with \r\nEdgecore to help with this back bone of hotel digital experiences and \r\ndemonstrated the selected Wi-Fi solutions in a booth this time. Focusing\r\n on hospitality market segment, Edgecore Networks understand the growth \r\nin the segment as well as the demand on management of such Wi-Fi \r\nenvironment. In addition to the standalone enterprise wireless access \r\npoints, Edgecore also focus on key enterprise wireless access point in \r\nboth indoor and outdoor design with controller-based solution.\r\n<br><br>In this annual event of showcasing the innovative technology and\r\n service providers, GCR has seen increasing opportunities and great \r\nmarket potential in Indonesia by networking with key decision makers \r\nfrom public and private sectors in ICT industry, and will start to work \r\nstrategically with local partners shortly, to penetrate into respective \r\nmarkets.\r\n<br><br><img src=\"http://www.gcrcloud.com/css/img/newsroom/Indonesia_201712-1.jpg\">\r\n<br><br><strong>About Indonesia Internet Expo &amp; Summit</strong>\r\n<br><br>The Indonesia Internet Expo &amp; Summit 2017 in conjunction \r\nwith Indonesia Digital Technology Week 2017 takes place from 23-25 \r\nNovember in Jakarta, Republic of Indonesia.\r\n<br><br>It’s the Southeast Asia’s platform ICT innovations for economic \r\ndevelopment, where regulators maker and policy meet with industries \r\nexperts, investor, entrepreneurs and innovators.\r\n<br><br>The program of exhibition, debate, networking, and awards \r\nreflects the core emphasis on the importance of accelerating ICT \r\ninnovation.</p> <p></p>   ', '0', '2018-02-19 00:00:00', '2018-07-17 06:20:59', '', 0, '1', 'HT      ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'gcr-partner-recruitment-event-2017-in-iran-news'),
(2, 2, '                     GCR Partner Recruitment Event 2017 in Iran       ', 'storage/News/1519047692iran201706.jpg', '        <h1 class=\"ng-binding\" style=\"margin-top: 0px; margin-bottom: 0px; font-family: Lato, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51);\">GCR Partner Recruitment Event 2017 in Iran</h1><h3 class=\"ng-binding\" style=\"font-family: Lato, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 30px; font-style: italic;\">GCR holds its very first GCR IoT seminar in Iran at Parsian Azadi Hotel Tehran on June 11, 2017; attended by more than 25 CEOs, owners and general managers.</h3><h3 class=\"ng-binding\" style=\"font-family: Lato, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 30px; font-style: italic;\">Seeing the growing interest in IoT related technologies these years, Iran has huge technological demand for solutions for the corporate or enterprise to increase its productivities or efficiencies or improvement in different areas. The seminar starts with the resonance to this trend by Mr. Tony Tsao. In this keynote speech, the paradigm shifts in the market and the transition of vertical value chain, which have given rise to opportunities and challenges. \"GCR is here to serve and enable our partners to ride on the IoT / Cloud demands with solutions from all over the world. All our solutions are pre-qualified and pre-integrated so that our partners can have a peace of mind implementing the solutions for their customers\", said Mr. Tsao. By detailing the customer value creation, solution scenario as well as GCR platform support, attendees get to know how GCR enables the IoT business in actual practice.&nbsp;<br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><span style=\"font-size: 14px; font-style: normal; text-align: justify;\">Nima Mojahed, GCR Country Manager of Iran, shared with the audience the full networking solutions product lines from smart switches to open networking solutions that can meet the demand of different sizes of customer, from SMB to Data Center. What’s more, HCI, hyper convergence infrastructure is also introduced, this \"Infrastructure in a box\" is going to free customer from the complexity of legacy infrastructure while leverage the service efficiency. “The robustness of the underlying network layer is key to success for any IoT implementation with scalability and management in mind”, said Nima.&nbsp;</span><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><span style=\"font-size: 14px; font-style: normal; text-align: justify;\">On the IoT vertical application solutions, Andy Neo demonstrated a few solutions that cover digital marketing, smart training, and business intelligence for retail stores. Through the live demo, the feedback from the audience was very positive and are pleased with GCR offerings and show great interests.&nbsp;</span><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><span style=\"font-size: 14px; font-style: normal; text-align: justify;\">By the end of the day, Andy briefs a number of projects worldwide supported by GCR, and live-demo GCR Channel Partner Service Portal (CPSP) to show GCR works with our partners.&nbsp;</span><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><span style=\"font-size: 14px; font-style: normal; text-align: justify;\">Keeping the key underlying requirements from partners in mind, GCR is going to have further engagement with local partners in Iran and seek the best solutions to serve Iran market.</span><br></h3><h3 class=\"ng-binding\" style=\"font-family: Lato, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 30px; font-style: italic;\"><br></h3>  ', '0', '2017-06-16 00:00:00', '2018-05-10 09:05:19', '', 1, '2', '              ', '2018-02-22 05:08:25', '2018-02-22 05:08:25', 'gcr-partner-recruitment-event-2017-in-iran'),
(3, 2, '      Amazon  ', 'storage/News/1519208340icon_go_mobile.png', '        <p>fffffffff<br></p>  ', '0', '2018-02-21 10:19:00', '2018-04-19 06:55:28', '', 0, '1', '    ', NULL, NULL, NULL),
(4, 1, '   Asia Pay ', 'storage/News/1519209224icon_go_mobile.png', '    <p>hhhhhhhhhhhh<br></p> ', '0', '2018-02-21 10:33:44', '2018-04-19 07:12:47', '', 0, '1', 'ded', NULL, NULL, NULL),
(5, 1, '   Amazon ', 'storage/News/1519210500icon_go_mobile.png', '    <p>fff<br></p> ', '0', '2018-02-21 10:55:00', '2018-04-19 07:13:04', '', 0, '2', 'GCR  ', '2018-02-21 00:00:00', '2018-02-24 00:00:00', NULL),
(6, 1, '               India Partner Recruitment Event March 2017 ', 'storage/News/1524642173INDIA Partner recruitment image.jpg', '                            <p><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">GCR holds a partner recruitment event in India, March 2017. The event is aimed to bolster GCR’s channel network in India and outline GCR’s unique approach to IoT and Networking solutions with Mr. Tony Tsao, Chairman of GCR, and Mr. Karthik Simha, Country Manager of Edge Core.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">“Because Indian partnerships will be an enormous role in our rapid global expansion, we plan to create beneficial partnerships with reputed IT infrastructure providers. Our unique approach to partnerships is through our online platform, CPSP (Channel Partner Services Portal).” said Tony Tsao.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">GCR’s Channel Partner Services Portal is for its registered partners. All registered partners on the marketplace can get access to the IoT solutions and the networking products being marketed by GCR. The partners can also order the products online. GCR exclusively offers these products to the end customers only through its registered partners.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"></p>       ', '0', '2018-02-21 00:00:00', '2018-05-14 09:17:56', '', 1, '2', 'GCR              ', '2018-02-21 00:00:00', '2018-02-22 00:00:00', 'india-partner-recruitment-event-march-2017'),
(7, 1, '                                                                        GCR India Office Inaugurated  Mumbai Mar,2018  ', 'storage/News/1526040174Gcr Cloud India Office.jpg', '                                                                                    <p>            </p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:16.0pt;mso-bidi-font-size:\r\n10.0pt\"><span style=\"font-weight: bold;\">Opening New Office in India </span><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">GCR news [Wednesday,\r\n14 March, 2018]<o:p></o:p></span></p><p class=\"MsoNormal\"><i><span lang=\"EN-US\">GCR is pleased to announce opening of it’s\r\nnew office in , Mumbai , India.</span></i><span style=\"font-size: 10pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">Global Channel\r\nResources India (GCR India) with its&nbsp;\r\nheadquarter in Singapore is pleased to announce the inauguration of its\r\nIndia corporate Headquarters in Universal Majestic, Chembur, Mumbai , India. GCR\r\nwill setup a demo/experience center for their Business Partners and customers to\r\nexperience the IoT solutions launched on the GCR Platform.</span><span style=\"font-size: 10pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size: 10pt;\">The office inauguration ceremony was\r\nhonorably graced by Dr Rao, Chairman UTL and other distinguished GCR partners,\r\ncustomers and various IT / ITES Partner associations.</span><span style=\"font-size: 10pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">The drive in\r\nIndia’s IoT market is strong. Companies across industries have been adopting SaaS\r\nbased IoT services and realizing how they can use the data to optimize cost,\r\ndeliver services, and boost sales revenue. It is estimated that the IoT market\r\nin India is growing at an average rate of 28 percent every year. India’s innovative\r\nand mature software development capabilities also makes it competitive in the\r\nworldwide market. The Indian ISV (Independent Software Vendor) companies now\r\naccount for more than 40% of the global IoT market. Nevertheless, top-quality\r\nand affordable IoT devices are still lacking in general – and this is the gap\r\nGCR wants to fill by offering GCR Platform to its partners.</span><span style=\"font-size: 10pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">GCR is keen and\r\nstrategic in serving India as a home market. “Our seasoned local team has a\r\ndeep knowledge about India marketing communication and distribution channels,\r\nespecially in the areas of our focused verticals including Edutainment, Digital\r\nmarketing, Hospitality, and Infrastructure,” said Prabodh Vyas, Country Manager\r\nof GCR India. “Our headquarters team in Taipei, on the other hand, is able to source,\r\nevaluate, and integrate the latest IoT technologies to quickly fulfill the\r\nneeds in the Indian market from worldwide, especially Taiwan - where the IT\r\nhardware design and manufacturing is identically strong and innovative in the\r\nworldwide market.”</span><span style=\"font-size: 10pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">GCR also takes a\r\npride in leveraging its B2B platform, www.gcrcpsp.com to support the above\r\noperations from leads generation, payment collection, logistic support, to SaaS\r\nprovisioning and activation. For GCR’s Integration Partners, this platform\r\nhelps to offer the right solutions for their IoT projects and transform\r\nthemselves into managed service providers in the cloud era. For GCR’s Technology\r\nPartners, this platform combines the industry domain expertise with local touch\r\nand support, acting as a gateway portal to the&nbsp;attractive Indian market. <o:p></o:p></span></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\">Global Channel Resources India Pvt. Ltd.</p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">10th Floor, Jeejabai\r\nBhosale Marg, <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">ACC Nagar, Chedda\r\nNagar,<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:10.0pt\">Mumbai,\r\nMaharashtra 400043<o:p></o:p></span></p>   <p></p>                     ', '0', '2018-03-15 00:00:00', '2018-05-14 10:27:49', '', 1, '1', 'GCR                                                ', '2018-09-11 00:00:00', '2018-03-09 00:00:00', 'gcr-india-office-inaugurated-mumbai-mar2018'),
(8, 2, '   GCR Partner Recruitment Event 2017 in Iran ', 'storage/app/public/News/1522937754News.jpg', '    The hotel industry in Indonesia has enjoyed major expansion since 2011 \r\nwith the growth of the number of hotels reaching between 9% and 14% \r\nevery year, Indonesia has been regarded as one of the most attractive \r\ncountries in terms of tourism by investors.\r\n<br><p><br>Although Indonesia is the largest country in the Southeast Asia \r\nand it contains ample attractions for tourists, recent years being aware\r\n of the keen competition with the regional peers such as Thailand and \r\nMalaysia in tourism industry, Indonesia has been expending efforts to \r\nleverage the tourism industry on the country level.\r\n<br><br>Recognizing Indonesia’s market potential, GCR gives a session to\r\n Indonesia Internet Expo &amp; Summit 2017 (28th, Nov) sharing the \r\ninsight to mega technology trend in hospitality &amp; tourism industry. \r\nStarting from how IoT has shaped our living nowadays and how much \r\ndigital experiences means to consumers, Mr. Andi Tanudiredja, GCR \r\nCountry Manager in Indonesia, advised that to improve customer \r\nsatisfaction and retention, and ultimately, to increase the revenue, \r\nhoteliers should consider a vastly expanded world of apps, devices and \r\nback-end systems as building blocks, to expand the hotel core \r\napplication landscape and create the optimized digital guest experience.\r\n<br><br>As an integral part of a good guest experience, The hotel Wi-Fi \r\nis the key foundation, and the entire reason for a hotel offering Wi-Fi \r\nto the guests is to help with the bottom line. Since free Wi-Fi has \r\nbecome a necessity in the industry, the Wi-Fi needs to meet the \r\nexpectations of the guests. Regarding this, GCR has aligned with \r\nEdgecore to help with this back bone of hotel digital experiences and \r\ndemonstrated the selected Wi-Fi solutions in a booth this time. Focusing\r\n on hospitality market segment, Edgecore Networks understand the growth \r\nin the segment as well as the demand on management of such Wi-Fi \r\nenvironment. In addition to the standalone enterprise wireless access \r\npoints, Edgecore also focus on key enterprise wireless access point in \r\nboth indoor and outdoor design with controller-based solution.\r\n<br><br>In this annual event of showcasing the innovative technology and\r\n service providers, GCR has seen increasing opportunities and great \r\nmarket potential in Indonesia by networking with key decision makers \r\nfrom public and private sectors in ICT industry, and will start to work \r\nstrategically with local partners shortly, to penetrate into respective \r\nmarkets.\r\n<br><br><img src=\"http://www.gcrcloud.com/css/img/newsroom/Indonesia_201712-1.jpg\">\r\n<br><br><strong>About Indonesia Internet Expo &amp; Summit</strong>\r\n<br><br>The Indonesia Internet Expo &amp; Summit 2017 in conjunction \r\nwith Indonesia Digital Technology Week 2017 takes place from 23-25 \r\nNovember in Jakarta, Republic of Indonesia.\r\n<br><br>It’s the Southeast Asia’s platform ICT innovations for economic \r\ndevelopment, where regulators maker and policy meet with industries \r\nexperts, investor, entrepreneurs and innovators.\r\n<br><br>The program of exhibition, debate, networking, and awards \r\nreflects the core emphasis on the importance of accelerating ICT \r\ninnovation.</p><p>  <br></p> ', '0', '2018-02-21 12:05:01', '2018-04-19 07:01:16', '', 0, '2', 'GCR  ', '2018-06-02 05:11:03', '2019-09-02 05:11:03', NULL),
(9, 1, '            GCR Partner Recruitment Event 2017 in Iran EVENT    ', 'storage/News/15245558107.4.gif', '                GCR is Global Channel Resources, bridging the gaps between solution providers and global channel partners.,<br><div class=\"row\"><div class=\"flt\"><p>\r\n                    We collaborate with worldwide cloud-based/networking\r\n solution providers to enable channel partners providing IoT solutions \r\nand cloud services.</p>\r\n                        </div>\r\n                    </div><p><br></p>    ', '0', '2018-02-22 06:40:59', '2018-04-24 07:43:30', '', 0, '2', 'GCR        ', NULL, NULL, 'gcr-partner-recruitment-event-2017-in-iran-event'),
(10, 1, '               ASIRT Technology Day March 2018 in Mumbai         ', 'storage/News/1524122563GCR_news_201802.jpg', '                                    <h1 class=\"ng-binding\" style=\"margin-top: 0px; margin-bottom: 0px; font-family: Lato, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51);\">Debut Tech-day of ASIRT for 2018 concludes successfully</h1><div><span style=\"color: rgb(68, 68, 68); font-family: Lato, sans-serif; font-size: 15px;\">GCR news</span><br></div><h3 class=\"ng-binding\" style=\"font-family: Lato, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 30px; font-style: italic;\">The debut Tech-day of 2018 organized by the Association of System Integrators and Retailers in Technology (ASIRT) saw an enthusiastic turnout of members.</h3><p><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">The debut Tech-day of 2018 organized by the Association of System Integrators and Retailers in Technology (ASIRT) saw an enthusiastic turnout of members who were enthralled as much by interesting business and collaboration opportunities as by the insightful lecture on self-improvement. While the leading international brands in the B2B segment like SOPHOS and GCR – EDGECORE showcased their latest offerings, renowned “life change catalyst” and NLP trainer, Hemu Karkera, enlightened the audience with insightful powers of the subconscious mind and how these can be harnessed by individuals and professionals to overcome personal or business roadblocks.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">SOPHOS presented their latest, offerings in the field of synchronised security through a single, integrated cloud management console. They also highlighted their latest Intercept X approach, incubated as part of Cyberoam Technologies, a brand they acquired in February 2014. SOPHOS has been successfully operating through a channel first sales approach, especially catering to interests of SMBs. Also, on the agenda was the latest deep learning and AI-powered offering intended to address the next-gen requirement of managing threats from the Artificial Intelligence. Highlighting the Channel First Sales model of SOPHOS, Ashish Sud, Zonal Head West, Sales for India and SAARC, mentioned, “As one of the fastest-growing IT companies in the field of cyber and information security, SOPHOS operates across all geographies through strong channel partner relationships. With SMBs and System Integrators being our main target, ASIRT and associations of this nature that can bring key decision-makers on a single platform, are valuable to us. We are delighted and grateful to ASIRT for providing us this opportunity to interact and reach out to this valuable target segment that contributes to 30%–40% of our annual sales.”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">Next on the agenda was the India launch of the esteemed Global Channel Resources (GCR) and presentations from their investor and global strategic alliance partners, EDGECORE networks – international leaders in industrial-grade POE switches. While EDGECORE enthralled the members with their latest innovations in the field as well as their contribution to the Open Network Ecosystem, they highlighted the expansive global market reach and the potential markets open to potential GCR member partners. With the focused objective of promoting an integrated e-platform of technologically supported services exclusively to system integrators and channel partners, GCR operates through a single IoT / Cloud connected integrated e-platform solution.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">Speaking about this initiative, Amod Phadke, Director – Sales, said, “One would be surprised to understand that almost 40% of successful IoTs are incubated from India, making this one of the leading markets for accelerated digital transformation, supported through a robust Channel partner backbone. With GCR, as the first-of-its-kind partner community portal in India, aims at organizing and unifying these IoT-based efforts and innovations through a vibrant ecosystem where SIs and partners can attain accelerated business growth. Having worked closely with ASIRT and its members, this was our first choice to announce the launch of our ambitious project and are grateful to ASIRT for this opportunity.”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\">Overall, with multitude of collaboration and business opportunities supported by an avenue to overcome psychological and perceptive barriers that often hamper success, the ASIRT February 2018 Tech-day was an extremely well-received and successful event.&nbsp;</span></p><p><a href=\"https://www.varindia.com/news/debut-techday-of-asirt-for-2018-concludes-successfully\" style=\"color: rgb(0, 0, 255);\">Click here</a> to read more about the event.</p><p><br style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; text-align: justify;\"></p>         ', '0', '2018-03-02 00:00:00', '2018-05-10 08:55:34', '', 1, '1', 'GCR                  ', NULL, NULL, 'asirt-technology-day-march-2018-in-mumbai'),
(11, 1, '                                                GCR and Edgcore Join Hands For APAC Region   ', 'storage/News/1526300228Untitled.gif', '        <div class=\"row rownewsTopic\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;\"><h1 class=\"ng-binding\" style=\"font-size: 30px; margin-top: 0px; margin-bottom: 0px; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit;\">Global Channel Resources (GCR) partners with Edgecore Networks to develop and serve channels in APAC region, specially focusing on South East Asia and India</h1><p class=\"ng-binding\" style=\"margin-top: 6px; margin-bottom: 10px; font-size: 15px; color: rgb(68, 68, 68);\">GCR news [Friday, 21 April 2017]</p><h3 class=\"ng-binding\" style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 20px; margin-bottom: 30px; font-style: italic;\"></h3></div><div class=\"row rownewsImg\" style=\"margin: 0px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;\"><img ng-src=\"../css/img/newsroom/Edgecore_20170421.jpg\" alt=\"\" src=\"http://www.gcrcloud.com/css/img/newsroom/Edgecore_20170421.jpg\" style=\"width: 589.542px; display: block; margin: auto;\"><br><p class=\"news-imgcontect ng-binding\" style=\"margin-right: 73.6875px; margin-bottom: 10px; margin-left: 73.6875px; font-size: 13px;\"><span class=\"news-imgcontect2 ng-binding\" style=\"font-weight: bold; font-style: italic;\"></span></p></div><div class=\"row rownewsContent ng-binding\" ng-bind-html=\"news.content\" style=\"margin: 0px 7.36458px; padding-top: 50px; padding-bottom: 50px; text-align: justify; color: rgb(51, 51, 51); font-family: Lato, sans-serif;\">Edgecore Networks, a leading provider of traditional and open network solutions for enterprises, data centers and telecommunication service providers, is pleased to announce that Global Channel Resources, the network infrastructure value-add partner will be one of Edgecore value-added partner across APAC, focusing on South East Asia and India marketing first.&nbsp;<br><br>Charles Chen, Channel Sales Director of GCR, “GCR started our sales operations around a year back and has spread over to USA, Brazil, Australia, Taiwan, Singapore, Malaysia, Indonesia, India and few other countries. GCR offers IOT solutions, for Retail, Hospitality, Education and Enterprises. These IOT solutions help monetize the idle IT Infrastructure resulting in increased consumer satisfaction and subsequently increased revenue and profits for the enterprises. With the partnership of Edgecore Networks, GCR now offer the networking products, which complement the IOT solutions and help connect to IT infrastructure. It’s win-win for both companies in APAC market.”&nbsp;<br><br>Michelle Shu, VP of Channel Business, express “Edgecore Networks always provides the best networking solutions and services through our global partnerships worldwide. Through the partnership, we can continue growing our business and strengthen our services to users. We are very pleased to have GCR as our go-to-market partner. With their experienced field sales team, we believe that we will work and grow the market well together, especially for the South East Asia and India.”&nbsp;<br><br><strong>About Edgecore Networks</strong>&nbsp;<br><br>Edgecore Networks Corporation is a wholly owned subsidiary of Accton Technology Corporation, the leading network ODM. Edgecore Networks delivers wired and wireless networking products and solutions through channel partners and system integrators worldwide for the Data Center, Service Provider, Enterprise and SMB customers. Edgecore Networks is the leader in open networking providing a full line of 1GbE, 10GbE, 25GbE, 40GbE, 50GbE and 100GbE open and OCP switches that offer choice of NOS and SDN software for data center, telecommunications and enterprise network use cases. For more information, visit&nbsp;<a href=\"http://www.edge-core.com/\" target=\"_blank\" style=\"color: rgb(69, 69, 69); transition: all 0.2s ease-in;\">www.Edge-Core.com</a>.&nbsp;<br><br><strong>About GCR (Global Channel Resource)</strong>&nbsp;<br><br>GCR, started its sales operations in 2015 and has spread over USA, Brazil, Australia, Taiwan, Singapore, Malaysia, Indonesia, India and few other countries. GCR has entered into agreements with well-established IOT solutions and networking vendors. For more information, please visit&nbsp;<span style=\"color: rgb(69, 69, 69); transition: all 0.2s ease-in;\">www.gcrcloud.com</span></div>  ', '0', '2017-04-21 00:00:00', '2018-05-14 12:18:20', '', 1, '1', ' GCR                                  ', NULL, NULL, 'gcr-and-edgcore-join-hands-for-apac-region'),
(12, 1, '[Partner Event] Indonesia Networking & IoT Industry Seminar    ', 'storage/News/1525799274Indonesia_201706-07.jpg', '                <h1 class=\"ng-binding\" style=\"margin-top: 0px; margin-bottom: 0px; font-family: Lato, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51);\">[Partner Event] Indonesia Networking &amp; IoT Industry Seminar</h1><p class=\"ng-binding\" style=\"margin-top: 6px; margin-bottom: 10px; font-size: 15px; color: rgb(68, 68, 68); font-family: Lato, sans-serif;\">GCR holds Indonesia Networking &amp; IoT Industry Seminar at Grand Mercure Jakarta Harmoni on June 7th, 2017.</p><h3 class=\"ng-binding\" style=\"font-family: Lato, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 30px; font-style: italic;\">GCR holds Indonesia Networking &amp; IoT Industry Seminar at Grand Mercure Jakarta Harmoni on June 7th, 2017. Indonesia is a multi-island region, facing the challenge of new connected world to manage the IoT solutions.&nbsp;<br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"><span style=\"font-size: 14px; font-style: normal; text-align: justify;\">In this seminar, GCR presents and demo the inspiring technology in infrastructure and Internet of Things. The seminar is attended by 15 business owners of SI and ISP. High demand in smart infrastructure and IoT solutions is a great business opportunity to reach out.&nbsp;</span><br style=\"font-size: 14px; font-style: normal; text-align: justify;\"></h3>       ', '0', '2017-06-12 00:00:00', '2018-05-09 04:09:54', '', 1, '2', ' GCR          ', NULL, NULL, 'partner-event-indonesia-networking-iot-industry-seminar'),
(13, 1, '      ISODA Association Sponsorship Event in Mumbai   ', 'storage/News/1525940426ISODA GCR India Event 3.jpg', '        <div><div>Global Channel Resources India (GCR India) is pleased to announce the sponsorship of the ISODA (Infotech Software Dealer Association) in Mumbai on 9th March 2018.&nbsp;&nbsp;</div><div><br></div><div>ISODA is an Association for Infotech Software Partners providing access to all relevant information to its members on diverse subject such as various tax laws from Sales Tax, Service Tax, Income Tax, Excise and Custom laws, new technologies, business trends, sales organisation, aligning partner across India to address their growing issues to serve customer spanned across the country.</div><div><br></div><div>GCR with the focused objective of promoting an Integrated e-platform of technologically supported services exclusively to system integrators and channel partners, GCR operates through a single IoT/ Cloud connected integrated e-platform solution. GCR’s value-added offerings include Applications, SaaS and Infrastructure solutions in the Space of IOT and Application Softwares which compliments IOT solutions coupled with the business benefits of transparent transactions, easy logistics and installation with secured payments.</div><div><br></div><div>Speaking about this Prabodh Vyas, Director &amp; Country manager – India, said “GCR was essentially launched from the concept to connect right vendors and partners spread across the globe, by harnessing the business potential of IoT as a SaaS-based model. Essentially, the partners or SI’s own the customers. So, the best way to go to the market was to service these partners through a strong system of technology support, backend support, RMA, Training and pricing support. With regards to our India operations, we are focussed on catering to the needs of SMB’s and smaller SI’s – a group perfectly represented by ISODA members.”</div><div><br></div><div>Amod Phadke, Director – Sales &amp; Marketing, presented the platform benefits in the event on 9th March 2018 and also presented the ISODA members how GCR platform enables the partners to outsource their sourcing to the GCR platform he also said “ GCR takes a price to announce India as its home market as we have seen that almost 40% of successful IoT software companies are incubated from India, making this one of the leading markets for accelerated digital transformation, supported through a robust Channel partner backbone. With GCR, as the first of its kind partner community portal in India aims at organising and unifying these IoT based efforts and innovations through a vibrant ecosystem where SI’s and partners can attain accelerated business growth. Having worked closely with ISODA and its members, this was our first choice to announce the launch of our ambitious project and are grateful to ISODA for this opportunity.”</div></div><div><br></div>     ', '0', '2018-03-09 00:00:00', '2018-05-15 06:54:57', '', 1, '2', ' GCR      ', NULL, NULL, 'isoda-association-sponsorship-event-in-mumbai');
INSERT INTO `news` (`id`, `country_id`, `news_heading`, `thumbnail`, `news_summary`, `deleted`, `created_at`, `updated_at`, `tag`, `is_active`, `type`, `source`, `event_start_date`, `event_end_date`, `url_slug`) VALUES
(14, 1, '                        GCR gets rewarded for its Innovation       ', 'storage/News/1527137671GCR India Award News.jpg', '                            <div><span style=\"font-weight: bold;\">GCR gets rewarded for its Innovation</span></div><div><br></div><div>GCR receives an Award for the most Innovative Partner Platform for IoT solutions from NCN, one of the reputed online and print magazines in India. Tony Tsao (Founder &amp; CEO) of GCR proudly received the award on behalf of the entire GCR team.&nbsp;</div><div><br></div><div>GCR family would like to thank all the Partners and Solution vendors for their continued support and motivate the GCR team to Innovate and offer the best possible Saas Based solutions for the Consumer delight.</div><div><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAH6Ax8DASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD98KKKK0MwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKQnAoAGO1STxx1qNLuNrlofMXzlG8x9wucZx1x6H+dfNn7a/7elx8FvF+ifC34aaVaeOPjj423Jo2jNNttNKjABe/v2HMdvEDuKghnAIByc16L+yl+zxefAXwPc/8JB4kv/GnjjxHONS8Ra9dkI1/ckY2xRABYreMHZHGoAVR0ya54YiFSTVN3tv29DaVGUY809L7HqdFFFdBiFFFFAEV9cmzsppRG8xiRnEafefAzge5rJ8BeP8ATPiT4atNX0i6F3Y3Sna4UgqwOCGB5UgjGDW3nHXpXyxrXxM/4Y//AGvf7H1F/sng/wCJjfbNOuHb9zb34ws0DnooY4dW7F8HgYrx84zaOXQjiK/8O9pP+W+zflfR+vqdmEwjxDlCHxJXS723Xr2Pqeiq9jfJqVuksJLIw78Y74PvVivVhOMlzR2ZyNNOzCiiirEFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFBoY46HPGTSAjZ9qZ3ZwOv8AUj0/Gvmj4/8A/BSTw78Pb7UbLw/5GrpoqPJqupeZ/otmFUsyoR/rH4xgYGa8v/bf/a21b4yeMZvht8O71l0e1c2+t6pbvxcv0aFWH/LNeQ2D8xz1VTn42/4KK3J+CX7H8ng7w5Fv1rxxqNvoMcq8PPPKVZlz1Odyr+NfiXGfiFKpjI5Bk8rTnJRc1078v+Z95kfDEVR+vY5aJXUf8z2n/ggj4E1L9p347/GH9qXxXG8l34m1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\" data-filename=\"GCR India Award IoT Solution.jpg\" style=\"width: 799px;\"><br></div>          ', '0', '2018-05-18 00:00:00', '2018-05-30 05:42:02', '', 1, '1', '  GCR         ', NULL, NULL, 'gcr-gets-rewarded-for-its-innovation');

-- --------------------------------------------------------

--
-- Table structure for table `news_attachments`
--

CREATE TABLE `news_attachments` (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `attachment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_attachments`
--

INSERT INTO `news_attachments` (`id`, `news_id`, `attachment`, `deleted`, `created_at`, `updated_at`) VALUES
(51, 3, 'storage/newsAttach/1519208340banner-2.jpg', '0', '2018-04-19 06:55:28', '2018-04-19 06:55:28'),
(53, 8, 'storage/newsAttach/1519214701icon_go_mobile.png', '0', '2018-04-19 07:01:16', '2018-04-19 07:01:16'),
(55, 4, 'storage/newsAttach/1519209224icon_smart_office.png', '0', '2018-04-19 07:12:47', '2018-04-19 07:12:47'),
(56, 5, 'storage/newsAttach/1519210500GCR-NEW Homepage.png', '0', '2018-04-19 07:13:04', '2018-04-19 07:13:04'),
(83, 9, 'storage/newsAttach/1524206685programmer-coffee-code.jpg', '0', '2018-04-24 07:43:30', '2018-04-24 07:43:30'),
(118, 12, 'storage/newsAttach/1525799274Indonesia_201706-07.jpg', '0', '2018-05-09 04:09:54', '2018-05-09 04:09:54'),
(127, 10, 'storage/newsAttach/1524122563GCR_news_201802.jpg', '0', '2018-05-10 08:55:34', '2018-05-10 08:55:34'),
(128, 2, 'storage/newsAttach/1525798074iran201706.jpg', '0', '2018-05-10 09:05:19', '2018-05-10 09:05:19'),
(132, 6, 'storage/newsAttach/1524642173INDIA Partner recruitment image.jpg', '0', '2018-05-14 09:17:56', '2018-05-14 09:17:56'),
(134, 13, 'storage/newsAttach/1525940385ISODA GCR India Event 3.jpg', '0', '2018-05-15 06:54:57', '2018-05-15 06:54:57'),
(135, 13, 'storage/newsAttach/1525940385ISODA GCR India Event 1.jpg', '0', '2018-05-15 06:54:57', '2018-05-15 06:54:57'),
(136, 13, 'storage/newsAttach/1525940385ISODA GCR India Event 2.jpg', '0', '2018-05-15 06:54:57', '2018-05-15 06:54:57'),
(137, 13, 'storage/newsAttach/1525940385ISODA GCR India Event 3.jpg', '0', '2018-05-15 06:54:57', '2018-05-15 06:54:57'),
(145, 14, 'storage/newsAttach/1527137671GCR India Award News.jpg', '0', '2018-05-30 05:42:02', '2018-05-30 05:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE `news_pages` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_pages`
--

INSERT INTO `news_pages` (`id`, `page_id`, `news_id`, `deleted`, `is_active`, `created_at`) VALUES
(10, 9, 17, '0', 1, '2018-03-30 12:15:29'),
(11, 6, 17, '0', 1, '2018-03-30 12:15:29'),
(40, 4, 3, '0', 1, '2018-04-19 06:55:28'),
(43, 5, 8, '0', 1, '2018-04-19 07:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `office_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `address2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `head_office` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office_name`, `address1`, `deleted`, `created_at`, `updated_at`, `address2`, `city`, `state`, `country`, `pincode`, `email`, `contact_no`, `contact_person`, `head_office`, `is_active`) VALUES
(1, 'Singapore Office (HQ)', '    8 Robinson Road #03-00 Aso Building   ', '0', '2018-04-23 13:03:41', '2018-04-23 13:03:41', '', ' Singapore ', '', 'India', '048544', 'sales@gcrcloud.com ', '65 9791 1489', 'Sales', 'Singapore', 1),
(2, 'India Head Office', '    #1007, Universal Majestic, P.L.Lokhande Marg, Chembur    ', '0', '2018-04-23 06:30:51', '2018-04-23 06:30:51', 'Mumbai - 400043    ', 'Mumbai', 'MH', 'India', '400043', 'sale.india@gcrcloud.com', '91 9987222360', 'Amit Sawant', 'Mumbai', 1),
(3, 'Indonesia Office', '  Komp. Ketapang Indah Blok B2 No. 33-34, Jl. KH Zainul Arifin  ', '0', '2018-04-23 13:03:19', '2018-04-23 13:03:19', '', 'Jakarta ', 'Indonesia', 'India', '11140 ', 'sales@gcrcloud.com ', '62 819 0827 1501', 'Sales', 'Indonesia', 1),
(4, 'Taipei Office', ' 13F-3, No.760, Bade Rd., Sec.4  ', '0', '2018-04-23 13:03:05', '2018-04-23 13:03:05', '', 'Taipei', 'Taiwan', 'India', '10567', 'sales@gcrcloud.com ', '886 2 2748 3088', 'Sales', 'Taipei', 1),
(5, 'Argentina & Chile Office', ' Ricardo Lyon 880 Ap 606  ', '0', '2018-04-23 13:02:54', '2018-04-23 13:02:54', '', 'Santiago ', 'Chile', 'India', '7510353 ', 'sales@gcrcloud.com', '569 7335-7524', 'Sales', 'Argentina', 1),
(6, 'Brazil Office', '  Rua Ira N.59, Bairro das nacoes, CEP 88338-020, Balneario Camboriu-Santa Catarina ', '0', '2018-04-23 13:02:42', '2018-04-23 13:02:42', '', ' ', 'Brazil', 'India', '88338-020', 'sales@gcrcloud.com', '5547 9918-3834', 'Sales', 'Brazil', 1),
(7, 'test', '  adress  ', '1', '2018-04-23 13:01:30', '2018-04-23 13:01:30', ' d ', '', '', 'USA', '400007', 'test@text.com', '112121112', 'jhon', 'testoffice', 0),
(8, 'fdfsss', ' dsf ', '0', '2018-06-14 12:49:42', '2018-06-14 12:49:42', 'gdg ', 'Mumbai', 'MA', 'India', '401555', 'fdf', 'd', 'dfdsf', 'dfds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `link`, `deleted`, `is_active`, `created_at`) VALUES
(4, 'Home', 'home', '0', 1, '0000-00-00 00:00:00'),
(5, 'Solutions', 'solution', '0', 1, '0000-00-00 00:00:00'),
(6, 'E-Catalog', 'e-catalog', '0', 1, '0000-00-00 00:00:00'),
(7, 'Experience Centre', 'experience-centre', '0', 1, '0000-00-00 00:00:00'),
(8, 'Support', 'support', '0', 1, '0000-00-00 00:00:00'),
(9, 'Partners', 'partners', '0', 1, '0000-00-00 00:00:00'),
(10, 'Channel Partner', 'channel-partners', '0', 1, '0000-00-00 00:00:00'),
(11, 'Solution Partner', 'solution-partners', '0', 1, '0000-00-00 00:00:00'),
(12, 'About GCR', 'about-GCR', '0', 1, '0000-00-00 00:00:00'),
(13, 'News', 'news', '0', 1, '0000-00-00 00:00:00'),
(14, 'Contact', 'contact', '0', 1, '2018-04-04 00:00:00'),
(15, 'Disclaimer', 'disclaimer', '0', 1, '2018-04-24 05:12:14'),
(16, 'Terms Of Use', 'terms-of-use', '0', 1, '2018-05-04 04:12:12'),
(17, 'Privacy Policy', 'privacy-policy', '0', 1, '2018-05-04 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `page_banners`
--

CREATE TABLE `page_banners` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_description` longtext COLLATE utf8_unicode_ci,
  `anchor_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_banners`
--

INSERT INTO `page_banners` (`id`, `country_id`, `page_id`, `name`, `image`, `heading`, `banner_description`, `anchor_url`, `anchor_text`, `deleted`, `created_at`, `updated_at`, `is_active`) VALUES
(6, 1, 4, 'Banner', 'storage/app/public/BannerUpload/7.4.gif', 'Banner', '     <p>Banner Description for Banner<br></p>     ', 'http://www.google.com', 'google', '0', '2018-06-14 12:15:19', '0000-00-00 00:00:00', 1),
(7, 2, 5, 'Banner', 'storage/app/public/BannerUpload/1522936502solution.jpg', 'Banner', ' <p>Solution Descriptions<br></p> ', 'http://www.google.com', 'test', '0', '2018-06-14 12:23:36', '0000-00-00 00:00:00', 1),
(8, 1, 12, 'About GCR', 'storage/app/public/BannerUpload/1522937102about-us.jpg', 'About GCR', '                            <p>description<br></p>                            ', 'http://www.google.com', 'test', '0', '2018-07-04 05:45:32', NULL, 1),
(9, 1, 7, 'Experience Centre', 'storage/BannerUpload/1525682815experience-centre.jpg', 'Experience Centre', ' <p>Description<br></p> ', 'http://www.google.com', 'google', '0', '2018-05-07 08:46:55', NULL, 1),
(10, 1, 13, 'News Banner', 'storage/BannerUpload/1526303258News.jpg', 'News Banner', '   <p>Banner Desc</p>   ', 'http://127.0.0.1:8000/news', 'news', '0', '2018-05-29 07:49:30', NULL, 1),
(11, 1, 10, 'Channel Partner', 'storage/BannerUpload/1525766647Channel_Partners.jpg', 'Channel Partner', '                                          <p>Some Description<br></p>                                          ', 'http://www.google.com', 'google', '0', '2018-05-18 07:13:25', NULL, 1),
(12, 1, 11, 'Solution Partner', 'storage/BannerUpload/1525766816Solution_Partners.jpg', 'Solution Partner', '                    <p>Solution Provider<br></p>                    ', 'http://www.technople.com/demo/gcr/admin/page/solution-partners', 'Solution Partner', '0', '2018-05-16 11:32:33', NULL, 1),
(13, 1, 8, 'support banner', 'storage/app/public/BannerUpload/1522936618support.jpg', 'support banner', '      <p>support description<br></p>      ', 'http://www.technople.com/demo/gcr/support', 'Support', '0', '2018-06-14 12:31:22', NULL, 1),
(14, 1, 14, 'Contact banner', 'storage/app/public/BannerUpload/1522937091contact-us.jpg', 'Contact banner', '  <p>Contact Banner Description<br></p>  ', 'http://13.126.60.167/contact', 'contact', '0', '2018-07-04 05:18:36', NULL, 1),
(15, 1, 15, 'disclaimer', 'storage/BannerUpload/1524545887Disclaimer.jpg', 'disclaimer', '  <p>disclaimer<br></p>  ', 'http://www.GCRcloud.co.in/disclaimer', 'disclaimer', '0', '2018-05-14 13:18:25', NULL, 1),
(16, 1, 17, 'privacy policy', 'storage/BannerUpload/1525431881privacy-agenzie-viaggi.jpg', 'privacy policy', '     <p>Privacy Policy<br></p>     ', 'http://www.gcrcloud.in', 'privacy policy', '0', '2018-05-17 06:46:09', NULL, 1),
(17, 1, 16, 'Terms of Use', 'storage/BannerUpload/1525431987dbb967119d575ba2b47b6498b7141bfd.jpg', 'Terms of Use', '    <p>Terms of Use<br></p>    ', 'http://www.gcrcloud.in', 'Terms of Use', '0', '2018-05-14 13:21:13', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`id`, `page_id`, `description`, `deleted`, `is_active`, `created_at`) VALUES
(5, 4, 'GCR is a leading Global, SaaS connected IoT solutions and Networking Infrastructure online B2B market place.\r\n We collaborate with worldwide cloud-based/networking solution providers\r\n to enable channel partners providing IoT solutions and cloud services.', '0', 1, '2018-06-14 12:15:19'),
(6, 5, '<p>Solution Contents<br></p>', '0', 1, '2018-06-14 12:23:36'),
(7, 12, '<p>In today’s highly competitive business environment, it is important to have a fast and&nbsp; responsive business organization. GCR- Global Channel Resources , offers business transformation tools, mainly Digital IT solutions for&nbsp; the businesses. GCR helps businesses to connect with the customers to offer them the right products at the right time and&nbsp; right place. It enables businesses&nbsp; to collect immediate customer response to improve the offerings and services. GCR also offers tools to monetize the idle IT infrastructure.</p>\r\n\r\n\r\n<p>GCR brings to you, business transformation&nbsp; solutions from vendors across the globe. We source functional solutions from multiple vendors,&nbsp; validate and integrate them on our technology platform and offer business vertical specific comprehensive solutions to the business customers through our premium service partners.&nbsp; <br><br>GCR’s&nbsp; business transformation&nbsp; solutions&nbsp;&nbsp; are offered as&nbsp; SaaS/IaaS/ PaaS connected IOT solutions over cloud.</p>\r\n\r\n\r\n<h2 style=\"text-align:left; color:#212121\"><br></h2>\r\n\r\n<h2 style=\"text-align: left; color: rgb(33, 33, 33);\"><span style=\"font-size: 24px;\">Vision</span></h2>\r\n\r\n<h2 style=\"text-align:left; color:#212121\"><p class=\"MsoNormal\" style=\"text-align: left; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 14px;\">Our vision is to empower &nbsp;customers to transform their business using the best of digital business tools in a seamless way.</span><br></p>\r\n\r\n</h2>\r\n\r\n<h2 style=\"text-align:left; color:#212121\"><br></h2>\r\n\r\n<h2 style=\"text-align: left; color: rgb(33, 33, 33);\"><span style=\"font-size: 24px;\">Mission</span><br></h2>\r\n\r\n\r\n<p style=\"text-align: left; line-height: 1.6;\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\">GCR offers best Value for Money, SaaS connected IoT solutions to business customers. GCR has created the most responsive B2B platform to connect the ISVs with the ITeS MSPs globally who&nbsp;</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif;\">in turn offer these solutions to their customersss.</span></p>', '0', 1, '2018-07-04 05:45:32'),
(8, 7, '<p>Experience Centre<br></p>', '0', 1, '2018-05-07 08:46:55'),
(9, 13, '<p>News Content</p>', '0', 1, '2018-05-29 07:49:30');
INSERT INTO `page_content` (`id`, `page_id`, `description`, `deleted`, `is_active`, `created_at`) VALUES
(10, 10, '<style>\r\n.affix-top {\r\n    position: static;\r\n    margin-top:0px;\r\n	text-align: right;\r\n  }\r\n\r\n.affix {\r\n    position: fixed;\r\n    top:70px;\r\n   text-align: right;\r\n  }\r\n</style>\r\n<div>\r\n\r\n<div class=\"col-md-11 col-sm-11\"></div>\r\n\r\n\r\n<div class=\"col-md-1 col-sm-1\">\r\n	<div data-spy=\"affix\" data-offset-top=\"400\" class=\"affix-top\">\r\n<a href=\"https://drive.google.com/open?id=1g4T4sl9oU7_DMWRTH2hg_l9CjMRX9Wzn\" class=\"btn btn-primary\" target=\"_blank\" style=\"margin-bottom:5px !important\">Join Us</a></div>\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n<div class=\"\"> \r\n <h2>MSP Partner Programs<br></h2>\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"msp\">\r\n<div class=\"\">\r\n<p style=\"text-align: left;\">\r\n<span style=\"font-size: 14px;\">We partner with MSPs and </span><span style=\"font-size: 14px;\">Sls</span><span style=\"font-size: 14px;\"> to sell and service Cloud and loT based solutions that extend the capabilities of our&nbsp;platform.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><img style=\"width: 100%; float: left;\" src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QN/aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6NWZiNjc2YWItNmZkOS0xMzQyLThhMWUtNjZlNzRkY2UzZTg3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkVBRUFFQjJCNDNCMTExRThBNEVDQUQyRTNDNzc1MUY5IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkVBRUFFQjJBNDNCMTExRThBNEVDQUQyRTNDNzc1MUY5IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmNmMjJhNmMwLTAyMWUtZDI0ZC1hYTJlLWIwZGMwMDBhNzU4MyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1ZmI2NzZhYi02ZmQ5LTEzNDItOGExZS02NmU3NGRjZTNlODciLz4gPC9yZGY6RGVzY3JpcHRpb24+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48jEUkuCWcV6byXEiSWrRL0jndATa681HZJzj1pcL2IzkNYtzVtvcFev3c5QicqHmtc7kumvW1FqmlAsrEykF6oyKBpecUDBQ5AsmKyJGSNGY5CacDBMX35ziOSLaT70+/3hczLYHr03na3vY/Ilvi4n5SYdosgbg2n8ne+3/WFITendzhbzF7/5V5GwJlDhruvJtanS71UA6CReHnAr1X5zmblkrn4cMC3WJd+GvZtpsm62Md53687hxPYpY7ZDqB1x3obGZVtW6ypVZevUZSaJigxFSVKJlKZqegoT93RnA8JH5wK4+SpbBhCxwW7I45uLNfEYxl23nFlO1HNdSqXTacLQTFrSMK0bGu5YOvcx3wLXQqmlVQoPIlKjEihWvIQUJD8YlANnVqpbtU2Qll731bdHLkFayiUWla1RdyprIXi5dRM0khfS2+7jSqvNOssJMtGuZSKqmtSppieehIpHpJJTFQCRQAAHmKPoOLzdwTyEcpGSxsn4xYghhxeucE3WFkK8hXl1bKu9r7YvylDo46/D80f2hze5lZEP6BLOkhtbGBsAB87V1nc/yl9rxliK5PRKULqP2iUpeTEipCmXpOhVko04VKqdPUn7inLCGmaaaaO7GMRy20wp4DjKq4lp3TL20+bnw733LjnhDVq8jIOzRDfSo6Q8mgq6hOyE/rrQhJoc1TRo+4re6Wz/AATrFFwl6uJYSrg3ah3EIOepp1f4kbsdH+8/TFaNJRXd4kAncO7ve9EHTUh6H/ETb6f/AJG1itGk1d3jt++Jd7201PYJufeYKNFXd4e+Jd7201Nz/ETc+826Jo0VcPfEu97aansE2/vMIo0VcPfEu97aakP/ADE3PvMFGiru8PfEu97aansE3PvMFGirh74l3fbTU9gm3r/3mCjRVw98S73tpqewTc+824FGirh74l3vbTU9gm595go0VcPfEu97aansE2/vMFGirh74l3vbTU2fcJt/eYKNFXD3xLve2mp7BNz7zhRoq4e+Jd721VPYJt/eYKNFXD3xLve2mp7BNz7zBRoq4e+Jd7201PYJufecMLRVw98S73tpqewTb+828FGirh74l3vbTV4fITb+82gKNFXD3xLve2mpuf4ibn3m3Qo0VcPfEu77aansE29f+8wUaKuHviXe9tNT2Dbf3mCjRV498S73tpqewTc+8wUaKuHv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\" data-filename=\"gcr-msp-tabel.jpg\" class=\"pull-left\"><span style=\"font-size: 14px;\"><br></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h2>Video</h2>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<iframe src=\"https://www.youtube.com/embed/Q8td30Nb9IU\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\" width=\"400\" height=\"250px\" frameborder=\"0\"></iframe</p></div>\r\n\r\n\r\n\r\n\r\n\r\n </div>\r\n\r\n\r\n\r\n\r\n\r\n </div>\r\n\r\n\r\n\r\n\r\n\r\n </iframe><p><br></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n</div>', '0', 1, '2018-05-18 07:13:25');
INSERT INTO `page_content` (`id`, `page_id`, `description`, `deleted`, `is_active`, `created_at`) VALUES
INSERT INTO `page_content` (`id`, `page_id`, `description`, `deleted`, `is_active`, `created_at`) VALUES
(12, 8, '  <div class=\"col-md-4 col-sm-4 col-xs-12\">                              <div class=\"contact-item\">                                  <div class=\"content\">                                      <h5>call us :</h5>                                      <p>+ (91) 93229 07210<br><br></p>                                  </div>                                  <span class=\"icon \">									<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>								 </span>                              </div>                          </div>						<div class=\"col-md-4 col-sm-4 col-xs-12\">                              <div class=\"contact-item\">                                  <div class=\"content\">                                      <h5>Web mail :</h5>                                      <p>support-india@gcrcloud.com<br></p>									<p></p>                                  </div>                                  <span class=\"icon\">									<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>								 </span>                              </div>                          </div>', '0', 1, '2018-06-14 12:31:22'),
(13, 14, '<p>Contact Us<br></p>', '0', 1, '2018-07-04 05:18:36'),
(14, 15, '<div class=\"pdn-Left\">\r\n	<p><span style=\"color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">GCR makes no warranty as to the information on this site, including representations and warranties about the accuracy of the information, as to whether any new products will be produced as disclosed, or as to the availability of product(s) on any specific date. Because international information is provided at this Web Site, not all products or programs mentioned will be available in your country. Please contact your local sales representative for information as to products and services available in your country. THE INFORMATION FROM GCR CUSTOMER ACCESS IS PROVIDED \"AS IS\". THERE ARE NO IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT. Although GCR has attempted to provide accurate information on the World Wide Web Site, GCR assumes no responsibility for the accuracy of the information. GCR may change the programs or products mentioned at any time without notice. All product and brand names are trademarks or registered trademarks of their respective owners. Mention of non-GCR products or services is for information purposes only and constitutes neither an endorsement nor a recommendation. GCR SHALL NOT BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES, including, without limitation, damages resulting from use of or RELIANCE ON the INFORMATION presented, loss of profits or revenues or costs of replacement goods.</span><br></p>\r\n</div>', '0', 1, '2018-05-14 13:18:25'),
(15, 17, '<div class=\"pdn-Left\">\r\n<h1 style=\"margin-top: 20px; margin-bottom: 20px; font-size: 22px; font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); text-align: center;\">Privacy Policy</h1>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Overview</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">Your right to privacy regarding the personally identifiable information (“Information”) that you provide to us to enable us to serve you is very important to GCR Group We believe this Information should only be used to help us provide you with better service. We have established this Privacy Policy to describe our practices regarding the collection, use and disclosure of your Information. This Privacy Policy may change from time to time so please check back periodically.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Pre-Release Service Features and Privacy Choice</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">The current version of GCR Sites is considered to be in the pre-release phase until further notice. The purpose of the pre-release services offering is to obtain feedback regarding potential commercial versions of the services. As such, a GCR Group customer who joins and participates in the pre-release GCR Group services and marketplace (“Customer”) affirms that it has obtained or will obtain any required consents from data subjects who may participate in Customer’s use of the pre-release Services. The pre-release services may employ lesser or different security measures than those expected to be present in future commercial versions of GCR Group services.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Collection and Use of Information</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">In order to provide GCR Group services to our customers, we require Information regarding our customers’ users. This includes name, address, email address, telephone number, credit card information, and, depending on the GCR Group services ordered, other information that can be used to identify and contact you.</p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We use this Information in the following ways:</p>\r\n<dl style=\"margin-top: 20px; margin-right: 0px; margin-left: 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to establish your user account, which enables you to use our services;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to contact you regarding important information about your account, including notices and updates;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to provide you with additional materials regarding the services that you have requested or connect you with a representative of GCR Group, if necessary;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to respond directly to your questions, comments or requests for support;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to analyze site usage, to improve and customize our web sites and service offers, and to improve our marketing and promotional efforts;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to compile aggregate user profile data, such as geographic information, role-related information and zip code, which are used for market analysis;</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to enforce our agreements with you, including our license agreements, terms of use, and this Privacy Policy; and</li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\">to bill or process other accounting/administrative matters in connection with GCR Group services.</li> </dl><p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">The administrative and/or billing contact information provided in connection with GCR Group services may be used to contact Customer or its representatives about its subscription, its opinions about the pre-release Services, or its interest in continuing the account after commercial release of the services.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Additional Uses</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">If you use the email links on GCR Sites to contact us directly, we may use your comments to improve GCR Sites and our services. GCR Group or its services providers may automatically track certain Information about your use of the GCR Sites, for example logging IP addresses or other Information for system administration purposes, and monitoring any illegal use of the services. This Information will be analyzed to constantly improve the value of the materials and services available on GCR Sites. Other Information about your usage may be logged and used, such as Internet service provider and browser type, in order to analyze usage trends and broad demographic Information.</p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We use data collection devices such as \"cookies\" on certain pages of the Website to help analyse our web page flow, measure promotional effectiveness, and promote trust and safety. \"Cookies\" are small files placed on your hard drive that assist us in providing our services. We offer certain features that are only available through the use of a \"cookie\". We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are \"session cookies,\" meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits, although in that case you may not be able to use certain features on the Website and you may be required to re-enter your password more frequently during a session.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">Additionally, you may encounter \"cookies\" or other similar devices on certain pages of the Website that are placed by third parties. We do not control the use of cookies by third parties.</span><br></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Website, we may collect such information into a file specific to you.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-weight: bold;\">Use of Demographic / Profile Data / Your Information</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We use personal information to provide the services you request. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to resolve disputes; troubleshoot problems; help promote a safe service; collect money; measure consumer interest in our products and services, inform you about online and offline offers, products, services, and updates; customize your experience; detect and protect us against error, fraud and other criminal activity; enforce our terms and conditions; and as otherwise described to you at the time of collection.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">In our efforts to continually improve our product and service offerings, we collect and analyse demographic and profile data about our users\' activity on our Website.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We identify and use your IP address to help diagnose problems with our </span>server,<span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"> and to administer our Website. Your IP address is also used to help identify you and to gather broad demographic information.</span><br></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We will occasionally ask you to complete optional online surveys. These surveys may ask you for contact information and demographic information (like zip code, age, or income level). We use this data to tailor your experience at our Website, providing you with content that we think you might be interested in and to display content according to your preferences.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif; font-weight: bold;\">Cookies</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">A \"cookie\" is a small piece of information stored by a web server on a web browser so it can be later read back from that browser. Cookies are useful for enabling the browser to remember information specific to a given user. We place both permanent and temporary cookies in your computer\'s hard drive. The cookies do not contain any of your personally identifiable information.</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-weight: bold;\">Links to Other Sites</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\">Our Website links to other websites that may collect personally identifiable information about you. GCR is not responsible for the privacy practices or the content of those linked websites.</p><p style=\"margin-top: 10px; margin-bottom: 10px;\"><span style=\"font-weight: bold;\">Choice/Opt-Out</span></p><p style=\"margin-top: 10px; margin-bottom: 10px;\">We provide all users with the opportunity to opt-out of receiving non-essential (promotional, marketing-related) communications from us on behalf of our partners, and from us in general, after setting up an account. If you want to remove your contact information from all GCR lists and newsletters, please visit unsubscribe.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Disclosure of Information</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">GCR Group provides some of its services through contractual arrangements with affiliates, service providers, partners and other third parties (collectively, “Partners”). For example GCR Group’s Email service is made available through a contract email services provider. If you’ve subscribed to any of our contracted content or services, you should be aware that we share the Information with these Partners in order to ensure your access to the GCR Group services that you have ordered. Many Partners have adopted their own privacy policies, which are not subject to control by GCR Group. However, to protect GCR Group customers and partners, GCR Group contractually prohibits its Partners from using the Information that we collect except as necessary to provide services to GCR Group. We may use other companies, agents or contractors to perform services on our behalf as well, such as processing credit card transactions. We also provide postal addresses to the carrier for delivery purposes. In the course of providing such services, these other companies may have access to your Information. These companies are not permitted to use your Information except for the purpose of providing the services we request of them.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Legal Disclosures</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We may disclose your Information (i) if required to do so by law or in the good-faith belief that such action is necessary to prevent injury or property damage; or (ii) if we reasonably believe disclosure is necessary to establish or exercise legal rights or is in situations involving potential threats to physical safety. We may attempt to notify you when we are making such a disclosure, but we may not do so in an emergency or when we are prohibited by law or court order from giving such notice. If we are acquired by or merged with a third party, we reserve the right, to disclose or transfer your Information we have collected as part of that transaction provided that such third party continues to honor our privacy policy. Personal data collected or otherwise processed by us in the performance of the services may be transferred to, and stored and processed in, any country in which we or our service providers maintain facilities.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Security</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">We take information security very seriously and use reasonable measures to protect your Information from unauthorized access, including storing all the Information we gather from you in secure databases. However, no security system can be guaranteed to be 100% secure, and therefore we cannot guarantee the security of your Information or assume liability for improper access to it. By using the GCR Sites, or providing Information to us through any means, you agree that we can communicate with you electronically regarding security, privacy, and administrative issues relating to your use of the GCR Sites.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Your Passwords</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">You should never disclose your password to any third parties. If you lose control of your password, you may lose substantial control over your Information and may be subject to legally binding actions taken on your behalf. Therefore, if your password has been compromised for any reason, you should immediately change your password.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Changes to This Policy</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">As we update and expand our services, we may make changes to this policy. You should check back for updates to this policy from time to time. If the changes result in materially less protection for your Information than that provided in this policy, we will make reasonable efforts to contact you and obtain your consent to the changes. Like our Terms of Use, of which this policy is a part, your use of the GCR Sites or continued use of our service after our efforts to contact you means that you agree to be bound by such changes.</p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\">Problems</h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">If for some reason you believe that GCR Group has not adhered to this Privacy Policy, please notify us by mail or facsimile.</p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\">Legal Department</h3>\r\n<p style=\"margin-top: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">Global Channel Resources Inc.</p>\r\n<p style=\"margin-top: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">13th Fl. No 760, Bade Road</p>\r\n<p style=\"margin-top: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">Taipei City, Taiwan R.O.C.</p>\r\n<p style=\"margin-top: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">Facsimile: +886 22748 3089</p>\r\n</div>', '0', 1, '2018-05-17 06:46:09');
INSERT INTO `page_content` (`id`, `page_id`, `description`, `deleted`, `is_active`, `created_at`) VALUES
(16, 16, '<div class=\"pdn-Left\">\r\n<p style=\"text-align: center; \"><span style=\"font-size: 24px; font-weight: bold;\"><br></span></p>\r\n<p style=\"text-align: center; \"><span style=\"font-size: 24px; font-weight: bold;\">Terms of Use</span></p>\r\n<h1 style=\"margin-top: 20px; margin-bottom: 20px; font-size: 22px; font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); text-align: center;\"><br></h1>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">By accessing, browsing or using this website, you are agreeing to comply with and be bound by the following Terms of Use , the Privacy Policy, Additional Terms (as defined below) and all terms and conditions incorporated in this website (collectively, the “Terms”). Please review these Terms carefully before using the website and information provided by Global Channel Resource Pte. Ltd., (“GCR”), its subsidiaries and affiliates (collectively, the “GCR Group”).</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">OVERVIEW</span></h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The Terms set forth the legally binding terms governing your access to and use of the websites of GCR Group (including www.GCRCPSP.com; www.GCRCLOUD.com; www.GCRB2B.com; and www.GCRCLUB.com), their web pages, website features, interactive features, business services, third-party products, and their respective content, including but not limited to content that links to the websites of the GCR Group, whether accessed via computer, mobile device or other technology (collectively, the “GCR Sites”).</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The Terms apply to all persons who visit any of the GCR Sites, regardless of the visitor’s level of participation. In the Terms, “you” and “your” refer to each visitor and his or her agents (unless the context requires otherwise), and “we,” “us” and “our” refer collectively or individually to GCR or the applicable subsidiary/affiliate of GCR Croup, as the case maybe. The Terms explain our obligations to you, and your obligations to us in relation to the use of the GCR Sites. Please read them carefully. IF YOU DO NOT AGREE TO THESE TERMS, YOU SHOULD NOT USE THIS WEBSITE; IF YOU CONTINUE USE THIS WEBSITE, YOU WILL BE DEEMED TO HAVE AGREED THE TERMS.</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">THE GCR SITES ARE ONLY INTENDED FOR ADULT AND NOT A MINOR IN YOUR STATE OF RESIDENCE. If you are a representative to use the GCR Sites on behalf of a company or entity, such company or entity, as the case may be, shall be duly incorporated, registered and existing under the applicable laws and has the fully power and authority, as well as all regulatory approvals, permits and licenses, to own, buy or sell the assets and carry on its business as now conducted and you shall have all necessary powers and duly authorities to use the GCR Sites and to execute and contemplate the transaction on the GCR Sites on behalf of a company or entity. If you use the GCR Sites for yourself or on behalf of other natural person, you shall have the full power, capacity and authority to agree the Terms and to execute and contemplate the transaction on the GCR Sites for yourself or on behalf of such third party, as the case may be. If you do not have the above power, authority or capacity, you are not the intended viewer of GCR Sites. If you are not an intended viewer, kindly do not use or view any of the GCR Sites.</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">We may revise or update the Terms from time to time with or without notice to you. The “Last Updated” date at the top of such Terms will indicate when the latest modifications were made. To the fullest extent permitted under applicable law, following the modification, your continued use of any of the GCR Sites constitutes your agreement to any modified Terms. Furthermore, unless explicitly stated otherwise, any new features or services that augment or enhance the GCR Sites in the future shall be considered part of the GCR Sites and subject to these Terms. We reserve the right at any time and from time to time to interrupt, restrict, modify, suspend, discontinue, temporarily or permanently, any or all of the GCR Sites (or any portion thereof), with or without notice to you, and you agree that GCR Group, as the case maybe, shall not be liable to you or to any third party for any modification, suspension or discontinuance of any or all of the GCR Sites. Moreover, we may terminate these Terms for any or no reason, and with or without notice to you. Your rights under these Terms will terminate automatically without notice from us if you fail to comply with any provision of these Terms and in such event, you must cease all use of the GCR Sites.</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">SCOPE OF TERMS</span></h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Unless agreed otherwise by you and us in writing, the Terms apply to all GCR Sites. The Terms also apply to any and all online resources, materials, download areas, tools and interactive venues provided on the GCR Sites, including without limitation, blogs, community forums, chat rooms, discussion sites, knowledge centers, service offerings information (hereinafter, “Online Mediums”), both now and in the future.</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">OWNERSHIP OF CONTENT</span></h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The GCR Sites; their past, present and future versions; all pages found within the GCR Sites; the material and information on the GCR Sites; all graphics, text, images, audio, videos, webinars, designs, compilation, advertising copy, articles, user interfaces, artwork, any computer applications, any and all copyrightable material (including source and object code) and all other materials, including without limitations the design, structure, “look and feel” and arrangement of such content contained on the GCR Sites (hereinafter, the “Content”); trade names, trademarks, service marks, logos, domain names, and other distinctive brand elements, whether registered or not are owned, controlled or licensed by or to GCR Group, as the case may be, and are protected by laws in connection with the copyright, trademark, trade dress, domain name, patent, trade secret and other intellectual properties or other proprietary rights , the international treaties and unfair competition laws. In using the GCR Sites or the Content, you acknowledge and agree to abide by all applicable Intellectual Property laws, as well as any specific notices contained on the GCR Sites. All rights not expressly granted are reserved.</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The GCR Sites and the Content may not be copied, reproduced, modified, adapted, translated, transmitted, displayed, published, posted, resold, or otherwise distributed in any way, without GCR Group’s express prior written authorization. You are granted permission to display on your computer, print and download the Content on this website solely for your own personal, non-commercial and educational use. You must retain copyright and other notices on any copies of the Content you make. Certain Content and documents available on GCR Sites are open source Content and documents subject to the applicable open source license and are so marked. Your use of those materials is governed by the individual applicable license. Unauthorized use of the GCR Sites or the Content contained on or available through the GCR Sites or any linked websites may violate applicable laws.</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The GCR Sites, Online Mediums and Content may contain user or third party submitted content, such as feedback and suggestions, posts or submissions and other materials (hereinafter, the “Submissions”) intended for review by general public, or by members of any public or private community. GCR Group does not claim ownership of the third party submitted content and shall have no obligation or liability of any kind, including without limitation errors, omissions, or damages, with respect to Submissions. Submissions are not reviewed, approved or endorsed by GCR Group and are provided solely for convenience to GCR Group customers and users. GCR Group reserves the right to monitor, restrict access to, edit or remove any Content available via the Online Mediums.</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">COPYRIGHTS</span></h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">GCR Group retains copyright, trademarks and/or applicable rights to all text and graphic images supplied on the GCR Sites and all of those rights remain the sole property of their respective holders. You may print copies of the information on the GCR Sites for your own personal use.</span></p>\r\n<p style=\"margin-top: 20px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You may not distribute any text or graphics herein to others without the express written permission of GCR Group, \"mirror\" this information on your own site without permission from GCR Group, or modify or re-use in any way the text or graphics on this site. You may not use the GCR Sites, Content or Online Mediums for any purpose or in any manner, which infringes the rights of GCR Group or any third parties. GCR Group encourages you to report any content on the GCR Sites that you believe infringes your copyright. If you would like to submit a Copyright Infringement Complaint, Click Here</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">TRADEMARKS</span></h2>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The trademarks, service marks, logos, slogans and domain names referenced on the GCR Sites (“Marks”) are either common-law service marks, trademarks or registered service marks or trademarks of GCR Group (“GCR Marks”) and are protected by the applicable trademark laws, international laws and treaties. GCR Marks signify GCR Group high quality services and are valuable assets of GCR Group. Other names of actual companies and products mentioned on the GCR Sites may be the trademarks of their respective owners and reference to them does not suggest sponsorship, endorsement, affiliation or association with GCR Group; you should exercise your own judgment to place the order to the products listed in GCR Sites. Nothing contained on the GCR Sites should be construed as granting, by implication or otherwise, any license or right to use any Marks. You are not permitted to use any Marks, metatags or any other “hidden text” utilizing Marks without prior written permission of GCR Group or such third party who may own the Mark.</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">YOUR USE OF THE WEBSITES</span></h2>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Privacy Policy.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">GCR Privacy Policy, as it may change from time to time, applies retrospectively to the collection, use and disclosure of your information and is made a part of the Terms by this reference.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Password Protected Areas.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Access to and use of password protected areas of the GCR Sites is restricted to the authorized users only. You agree that you: (i) will provide current, complete and accurate identification, contact and other information about you as you may be prompted by the registration process on the GCR Sites; (ii) are responsible to maintain, keep current and update any registration data and other information you provide to GCR Group; (iii) are entirely responsible for maintaining the security of your password, identification and account and for any and all activity that occurs under your account; (iv) will notify GCR Group immediately of any unauthorized access or use of your account or password or any other breach of security; and (v) ensure that you exit from your account at the end of each session. It is your sole responsibility to control the dissemination and use of your password, control access to and use of your account, and notify us should you desire to cancel your account. You understand that any person with your password will be able to access your account and any registration data, including, without limitation access to your servers and applications accessible through your account; you acknowledge that you shall be responsible for all activities that occur under or through your account, including but not limited to unauthorized access to and use of your account. GCR Group will not be liable to you for any loss you may incur as a result of someone else using your password or account with or without your knowledge. You shall be held liable for losses incurred by GCR Group, any other user or visitor to the GCR Sites due to someone else using your password or account. You may not use anyone else’s account at any time, without the permission of the account holder.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Your Submission and Contributed Content.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">GCR Group appreciates hearing from you. Blogs, community forums, chat rooms and other discussion sites may be made available to our customers and users. You acknowledge and agree, that any content you, as a user, may submit via the Online Mediums become public information and it shall be deemed to be provided on a non-confidential basis, except for resumes submitted solely for consideration for employment with GCR Group which may be shared within GCR Group on a “need to know” basis. You should always use caution when submitting personal identifiable information about yourself or third parties in any Online Mediums; GCR Group is free to use or disseminate such contributed content (including, without limitation, creative ideas, suggestions, materials, names, voices, likeness and other personal identifiable information contained in your Submission; collectively the “Contributed Content”) on an unrestricted basis for any purpose, and you grant GCR Group an irrevocable, worldwide, perpetual, royalty-free license to use, reproduce, modify, adapt, incorporate, transmit, display, publish, post, resell and otherwise distribute your Submission and Contributed Content in any form and media now known or which shall become known in the future for any purposes whatsoever, including without limitation, using such information, ideas, inventions and creative ideas for development, marketing and promotional purposes, without any notice or compensation to you. GCR Group reserves the right to remove or edit any your Contributed Content originally posted by you through your account at any time, without notice, for any reason whatsoever.</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">GCR Group is under no obligation to use the Contributed Content and your Submissions and may remove any Contributed Content or Submission at any time at its sole discretion. GCR Group reserves the right to terminate your access to GCR Sites and/or Online Mediums at any time, without notice, for any reason whatsoever.</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You represent and warrant that you own or otherwise have permission to submit any such Contributed Content and Submissions and grant GCR Group the rights described herein.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">No unlawful or Prohibited Use.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You agree not to upload, post or otherwise transmit via the Online Mediums any content that: (i) is misleading, harmful, threatening, abusive, harassing, defamatory, offensive, violent, obscene, pornographic, vulgar, libelous, racially, ethnically, religiously or otherwise objectionable; (ii) constitutes unauthorized disclosure of personal or confidential information; (iii) infringes any patent, trademark, trade secret, publicity right, privacy right, copyright or other intellectual property or any rights of any party; (iv) contains viruses, Trojan horses, worms, corrupted files or code, files and programs designed to impede or destroy the functionality of any computer software or hardware; spyware and malware designed for phishing and with a view to compromise the data security and integrity, and obtain sensitive personal or financial information.</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You also agree not to use the GCR Sites or Online Mediums to: (i) impersonate an employee or a representative of GCR, its divisions and other member of GCR Group ; (ii) misrepresent your identity or affiliation with a person or entity; (iii) send bulk mail, spam, “chain letters” and other unsolicited and unauthorized communication; (iv) attempt to gain unauthorized access to any portion or feature of the GCR Sites or any other system or networks connected to the GCR Sites or any other services offered through the GCR Sites, and/or other accounts not belonging to you, or violate security of any portion of the GCR Sites, by hacking, password mining or any other means; (v) obtain or attempt to obtain any information, materials or documents not purposely made available through the GCR Site or Online Mediums through any means; (vi) attempt to interfere with the working of the GCR Sites or any transaction being conducted on the GCR Sites or to restrict or inhibit any other user from accessing or using the GCR Sites, by means of hacking or defacing any portion of the GCR Sites; (vii) attempt to decompile or reverse engineer any software contained on GCR Group\'s web site; (viii) remove any copyright or other proprietary notations from the materials; (ix) transfer the materials to another person or \"mirror\" the materials on any other server; (x) violate the Term or any agreement between you and us, if any, or (xi) violate any applicable local, state, national or international law .</span></p>\r\n<h2 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 30px; margin-bottom: 0px; font-size: 18px;\"><span style=\"background-color: rgb(255, 255, 255);\">OTHER TERMS AND CONDITIONS</span></h2>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Revisions and Errata.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The materials appearing on GCR Sites could include technical, typographical, or photographic errors; GCR Group makes no warranties that any of the materials on GCR Sites, including but not limited to the materials provided by GCR Group or any third party, are accurate, complete, or current. GCR Group may make changes to the materials contained on the GCR Sites at any time without notice. GCR Group does not, however, make any commitment to update the materials. Some of the products and services offered on GCR Sites may be offered by third-parties not affiliated with GCR Sites. You agree that GCR Group is not responsible for any product or service on GCR Sites that originates from a source other than GCR Group.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Your Purchase and Services Availability.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Specific terms and conditions apply to your purchase of products (including services, goods, material, hardware and/or solutions) from GCR and to specific portions or features of the GCR Sites. GCR Group’s obligations with regards to its services offered on the GCR Sites are governed solely by such terms and conditions and nothing contained on the GCR Sites or in these Terms shall be construed to alter services specific terms and conditions. The materials on the GCR Sites may be outdated and GCR Group makes no commitment to update such material. Not all products (including services, goods, materials, hardware and/or solutions) mentioned in these materials will be available in your country and such references do not imply that GCR Group will make available such products in your country. Please consult the local partner for information regarding the availability of particular products (including services, goods, materials, hardware and/or solutions offering in your country.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Promotions.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The GCR Sites may contain or offer sweepstakes, contests, promotions or other similar features, which may be subject to a separate set of rules that describe the contest or promotion and may have eligibility requirements, such as certain age or geographic area restrictions. It is your responsibility to read those rules to determine whether or not your participation, registration or entry will be valid or restricted, and to determine the sponsor’s requirements in connection with the applicable contest or promotion.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Linking to GCR Sites.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">We greatly appreciate your efforts in letting your clients, friends or any other third party know about us. You may link to the GCR Sites by using a text link and linking to GCR Sites homepage. Linking directly to any other webpage or content within the GCR Sites is prohibited without GCR Group’s prior written permission. GCR Group only consents to links in which the link and the pages that are activated by the link do not: (i) duplicate the website content; (ii) frame or create any other border around the website content or any pages on the GCR Sites or use other techniques that alter in any way the visual presentation or appearance of any content within the GCR Sites; (iii) misrepresent your relationship with GCR Group or otherwise create a false affiliation, connection or association with GCR Group; (iv) imply that GCR Group approves or endorses you, your website, or your services or product offerings; (v) present false or misleading impression about GCR Group or otherwise damage the goodwill associated with the GCR Group name or trademarks; (v) use GCR Marks in page text, metatags and/or hidden text for purpose of gaining higher rankings from search engines; (vi) utilize the name, Marks, colors any other brand features of GCR Group, nor your relationship with GCR Group for purposes of or in any manner which intentionally gives rise to advertising or publicity without GCR Group prior written permission. As a further condition to being permitted to link to the GCR Sites, you agree that GCR Group may at any time, in its sole discretion, terminate your permission to link to the GCR Sites. In such event, you agree to immediately remove all links to the GCR Sites and to cease using any GCR Marks. GCR Group reserves the right to disable any unauthorized links or frames and disclaims any responsibility for the content available on any other website reached by links to or from the GCR Sites.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Links to Third Party Websites.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The GCR Sites may contain links and references to non-GCR Group websites and resources (“Linked Websites”) and are provided for convenience only. If you decide to leave GCR Sites and access Linked Websites, you do so at your own risk and GCR Group will have no liability arising out of or related to such Linked Websites and/or their content or any damages or loss caused or alleged to be caused by or in connection of any purchase or use of any such content, goods or services available on or through any such Linked Website. GCR Group has not reviewed the Linked Websites and we are not responsible for the content, accuracy or opinions expressed on these websites. Inclusion of these links on GCR Sites does not apply approval or endorsement by GCR Group of the Linked Websites, their entities or products and services. Please understand that the Linked Websites, even if they contain GCR Marks, are independent websites, and GCR Group does not control the content on that Linked Website. Additionally, GCR Group is not a party to or responsible for any transaction you may enter into with any such third party, even if you learn of such third party from GCR Group, by way of reference or link provided on the GCR Sites.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Forward Looking Statements.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">All statements on the GCR Sites other than statements of historical fact are statements that could be deemed forward-looking statements (“Statements”), including, but not limited to, any projections of financial information; any statements about historical results that may suggest trends for our business; any statements about operational improvements or third party data that may suggest trends for our business or industry; any statements of the plans, strategies, and objectives of GCR Group for future operations or service offerings; any statements of expectation or belief regarding future events, potential markets or market size; technology developments; and any statements of assumptions underlying any of the items mentioned. Risks, uncertainties and assumptions of the Statements, include the possibility that expected benefits from our operational improvements or service offerings, may not materialize. These Statements are based upon a number of assumptions and estimates which are subject to significant uncertainties that involve risks, many of which are beyond our control and not guarantees of our future performance. If such risks or uncertainties materialize or such assumptions prove incorrect, the results of GCR Group could differ materially from our current expectations as a result of many factors, including but not limited to: the unpredictable nature of our rapidly evolving market and quarterly fluctuations in our business; the effects of competition; and any adverse changes in our indirect channel relationships. Except as required by law, GCR Group assumes no obligation to update these Statements publicly, or to update the reasons actual results could differ materially from those anticipated in these Statements, even if new information becomes available in the future.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Disclaimer of Warranties.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Your use of and access to the GCR Sites, Online Mediums and Content posted by GCR Group, its divisions, subsidiaries or user generated content posted by third parties is at your sole risk. The GCR Sites, Online Mediums and Content are provided for informational purposes only on an “AS IS” and “AS AVAILBALE” basis without any express or implied warranty of any kind, including warranties of merchantability, non-infringement of the intellectual property or other violation of right, or fitness for any particular purpose. GCR Group makes no representations, warranties or guarantees as to the quality, suitability, truth, accuracy, likely result, reliability of the use of the material on GCR Sites otherwise relating to such materials or on any sites linked to this site, or completeness of the Content. GCR Group further makes no representations, warranties or guarantees that the quality and reliability of any information, and hosting services obtained from the GCR Sites, Online Mediums and/or Content will meet your expectations and requirements, be virus-free, interruption-free, perform error- and damage-free.</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You assume all risk and responsibility for any loss or damage whatsoever to your computer system, data and business arising out of your use of the GCR Sites, Online Mediums and/or Content.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Limitation of Liability.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You expressly understand and agree that GCR Group, the Partner and any contributor to the user generated content via Online Mediums (“GCR Licensors”) SHALL NOT BE LIABLE to you for the followings even if GCR Group or its authorized representative has been notified orally or in writing of the possibility thereof:</span></p>\r\n<ol style=\"margin-top: 10px; margin-right: 0px; margin-left: 40px; padding: 0px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\">\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\"><span style=\"background-color: rgb(255, 255, 255);\">any loss or damage (including, without limitation, damages for loss of data or profit, or due to business interruption) which you may incur, including without limitation as a result of any reliance placed by you on the accuracy, completeness or suitability of the Content, or any changes GCR Group and GCR Licensors may make to GCR Sites, Online Mediums and Content, or any temporary interruption or permanent cessation in the provision of the Online Mediums and Content, or, if applicable, your failure to safeguard your account details or passwords; or</span></li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\"><span style=\"background-color: rgb(255, 255, 255);\">to the full extent permitted by law, GCR Group and GCR Licensors are not liable for any direct, indirect, special, incidental, consequential, punitive or exemplary damages arising out of or in connection with your use of or related to the GCR Sites, Online Mediums and Content (including without limitation for loss of or damage to business, revenues, goodwill or data) even if GCR Group and GCR Licensors had previously been advised of, or reasonably could have foreseen, the possibility of such damages, however they arise, whether in breach of contract, negligence, willful misconduct or other tortuous action.</span></li>\r\n<li style=\"padding: 0px 0px 0px 20px; margin: 10px 0px 0px;\"><span style=\"background-color: rgb(255, 255, 255);\">Since some jurisdictions prohibit the exclusion or limitation of liability for consequential or incidental damages, such portions of the above limitation or exclusion may not apply to you.</span></li>\r\n</ol>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Unless provided otherwise in the agreement between you and us (if any), the aggregate liability of GCR Group as a whole under or in connection with the Terms and your use of GCR Sites (whether expressed as an indemnity or otherwise) for all defaults resulting in direct loss to your property (including technical infrastructure, assets, intellectual properties or equipment), or for all other claims, losses or damages, whether arising from breach of contract, misrepresentation (whether tortuous or statutory), tort (including negligence), breach of statutory duty, product liability or otherwise shall be limited to [USD 100].</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Indemnification.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">You agree to indemnify and hold GCR Group, its shareholders, officers, directors, agents, employees and representative , the Partners, and GCR Licensors, their subsidiaries, affiliates, shareholders, officers, directors, agents, employees and representatives harmless from any claims and demands, including reasonable attorneys’ fees, made by any third party arising from or relating to: (i) your use of and access to the GCR Sites, Online Mediums and Content; (ii) Contributed Content, your Submission, content you submit, post, transmit or otherwise make available via the GCR Sites and Online Mediums; (iii) your violation of the Terms or GCR Sites’ specific terms and conditions. This indemnification obligation will survive the termination of your GCR account or the Terms.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">Electronic Communication.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">When you visit the GCR Sites or send e-mails to us, you are communicating with us electronically. You consent to receive communications from us electronically. We will communicate with you by e-mail or by posting notices on the GCR Sites. You agree that all agreements, notices, disclosures and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</span></p>\r\n<h3 style=\"font-family: Muli, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 0px; margin-left: 40px; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">General.</span></h3>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">The Terms constitute the entire agreement between you and GCR Group, relating to your use of and accessing to the GCR Sites and Online Mediums and Content. You may also be subject to the specific terms of use of Online Medium or Content. The laws of Singapore shall govern any action or dispute related to the Terms and your use of the Online Mediums and Content, without regard to the choice of law rules. In any dispute between you and GCR Group, you agree to submit to personal and exclusive jurisdiction of the courts located in Singapore, the Republic of China. In the event of any violations of the Terms, GCR Group reserves the right to disable or suspend your access to GCR Sites, the Online Mediums and Content and seek all remedies available by law and in equity.</span></p>\r\n<p><span style=\"background-color: rgb(255, 255, 255);\"><br style=\"color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"></span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; margin-left: 40px; color: rgb(51, 51, 51); font-family: Muli, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Thank you for reading through these Terms and now, enjoy our websites.</span></p>\r\n</div>', '0', 1, '2018-05-14 13:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `solution_provider_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `country_id`, `product_name`, `description`, `deleted`, `created_at`, `updated_at`, `meta_title`, `meta_keywords`, `meta_description`, `solution_provider_id`, `is_active`) VALUES
(1, 1, 'Go Mobile', '<p>Go Mobile Description<br></p>', 0, '2018-02-16 04:22:04', '2018-02-19 13:50:04', 'rgf', 'ftgft', 'tfyhfy', 1, 1),
(2, 1, 'Smart Office', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum<br></p>', 0, '2018-02-16 09:45:33', '2018-02-19 13:47:55', 'solution', 'solutions,fff,', 'some meta description', 1, 1),
(3, 1, 'product', '<p>ggggg<br></p>', 0, '2018-02-20 11:51:02', '2018-02-20 11:53:47', 'product', 'products,keywords', 'some description', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pdf_link` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_video` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `media_url`, `is_active`, `deleted`, `created_at`, `updated_at`, `is_video`) VALUES
(10, 2, 'storage/Product//1519048042icon_smart_office.png', 1, '0', '2018-02-19 13:47:55', '2018-02-19 13:47:55', 0),
(12, 1, 'storage/Product//1519048187NRAshow-20160516.jpg', 1, '0', '2018-02-19 13:50:04', '2018-02-19 13:50:04', 0),
(14, 3, 'storage/Product//1519127462banner-1-1.jpg', 1, '0', '2018-02-20 11:53:47', '2018-02-20 11:53:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_industry_x`
--

CREATE TABLE `product_industry_x` (
  `id` int(11) NOT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_solution_x`
--

CREATE TABLE `product_solution_x` (
  `id` int(11) NOT NULL,
  `solution_type_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_solution_x`
--

INSERT INTO `product_solution_x` (`id`, `solution_type_id`, `product_id`, `deleted`, `is_active`, `created_at`) VALUES
(7, 2, 2, '0', 1, '2018-02-19 13:47:55'),
(10, 1, 1, '0', 1, '2018-02-19 13:50:04'),
(11, 2, 1, '0', 1, '2018-02-19 13:50:04'),
(13, 3, 3, '0', 1, '2018-02-20 11:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `sort`, `deleted`, `created_at`, `is_active`) VALUES
(1, 'Hardware', NULL, '0', '2018-02-12 09:16:20', 1),
(2, 'Software', NULL, '0', '2018-02-12 09:16:33', 1),
(3, 'Integrated System', NULL, '0', '2018-02-12 09:21:56', 1),
(4, 'Others', NULL, '0', '2018-02-12 09:23:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type_x`
--

CREATE TABLE `product_type_x` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_site` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `company_contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `company_name`, `company_site`, `company_contact_no`, `logo`, `country`, `address`, `deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Technople', 'Solution', 'Technople', 'www.technople.com', '9999999999', 'storage/Providers/1519192148iran201706.jpg', 3, 'technople address', '0', 1, '0000-00-00 00:00:00', '2018-02-21 05:49:08'),
(3, 'Gcr', 'Cloud', 'GCR', 'gcrcloud.com', '9999999999', 'storage/Providers/1519132559NRAshow-20160516.jpg', 2, 'address', '0', 1, '2018-02-20 13:15:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quick_link`
--

CREATE TABLE `quick_link` (
  `id` int(11) NOT NULL,
  `media_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quick_link`
--

INSERT INTO `quick_link` (`id`, `media_url`, `mime_type`, `title`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'storage/Quick Link/1524487563CM-BD-008  GCR Enrollment Form.docx', NULL, 'CM-BD-008 GCR Enrollment Form', '2018-04-05 07:20:18', '2018-06-14 12:54:55', 1),
(2, 'storage/Quick Link/1524487492check list for vendor.xlsx', NULL, 'Check List for Vendor ', '2018-04-05 07:32:18', '2018-04-24 09:03:01', 1),
(3, 'storage/Quick Link/15242209221522913538pdf2.pdf', NULL, 'demo ', '2018-04-20 10:42:02', '2018-04-20 11:03:50', 0),
(4, 'storage/Quick Link/15242209911522913538pdf2.pdf', NULL, 'demo ', '2018-04-20 10:43:11', '2018-04-20 11:03:56', 0),
(5, 'storage/Quick Link/15242210321522913082pdf2.pdf', NULL, 'ff  ', '2018-04-20 10:43:52', '2018-04-20 11:04:05', 0),
(6, 'storage/Quick Link/15242210761522913082pdf2.pdf', NULL, 'ff ', '2018-04-20 10:44:36', '2018-04-20 11:04:11', 0),
(7, 'storage/Quick Link/1528980921Desert.jpg', NULL, 'test ', '2018-06-14 12:55:21', '2018-06-14 12:55:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_link_page`
--

CREATE TABLE `quick_link_page` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `quick_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quick_link_page`
--

INSERT INTO `quick_link_page` (`id`, `page_id`, `quick_link_id`) VALUES
(10, 10, 3),
(11, 10, 4),
(13, 10, 5),
(14, 10, 6),
(19, 11, 2),
(21, 10, 1),
(23, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `is_active`, `deleted`, `permissions`, `created_at`) VALUES
(1, 'Editor', 1, 0, '{\"0\":\"page.index\",\"1\":\"page.create\",\"2\":\"page.show\",\"3\":\"page.edit\",\"4\":\"page.destroy\",\"5\":\"country.index\",\"6\":\"country.create\",\"7\":\"country.show\",\"8\":\"country.destroy\",\"9\":\"category.index\",\"10\":\"category.create\",\"11\":\"category.show\",\"12\":\"category.destroy\",\"13\":\"ads.index\",\"14\":\"ads.create\",\"15\":\"users.index\",\"16\":\"users.show\",\"17\":\"users.edit\",\"18\":\"users.destroy\"}', '2018-02-27 11:36:40'),
(2, 'Publisher', 1, 0, '{\"0\":\"page.show\",\"1\":\"page.edit\",\"2\":\"page.destroy\",\"3\":\"country.index\",\"4\":\"country.create\",\"5\":\"country.show\",\"6\":\"country.edit\",\"7\":\"country.destroy\",\"8\":\"industry.create\",\"9\":\"industry.show\",\"10\":\"industry.destroy\",\"11\":\"category.index\",\"12\":\"category.create\",\"13\":\"category.show\",\"14\":\"category.edit\",\"15\":\"category.destroy\",\"16\":\"news.index\",\"17\":\"news.create\",\"18\":\"news.edit\",\"19\":\"page.update\",\"20\":\"country.store\",\"21\":\"country.update\",\"22\":\"industry.store\",\"23\":\"category.store\",\"24\":\"category.update\",\"25\":\"news.store\",\"26\":\"news.update\"}', '2018-04-18 06:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `solutiontype_images`
--

CREATE TABLE `solutiontype_images` (
  `id` int(11) NOT NULL,
  `solution_type_id` int(11) DEFAULT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solutiontype_images`
--

INSERT INTO `solutiontype_images` (`id`, `solution_type_id`, `media_url`, `deleted`, `created_at`, `updated_at`) VALUES
(4, NULL, 'storage/CatalogImage/1519294646banner.png', '0', '2018-02-22 10:17:45', '2018-02-22 10:17:45'),
(18, 4, 'storage/newsAttach/1519295727banner-bg.jpg', '0', '2018-03-06 10:04:28', '2018-03-06 10:04:28'),
(19, 4, 'storage/newsAttach/1519295738banner-bg.jpg', '0', '2018-03-06 10:04:28', '2018-03-06 10:04:28'),
(20, 4, 'storage/newsAttach/1519296043banner.png', '0', '2018-03-06 10:04:28', '2018-03-06 10:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `solution_partners`
--

CREATE TABLE `solution_partners` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solution_partners`
--

INSERT INTO `solution_partners` (`id`, `logo`, `title`, `description`, `deleted`, `created_at`, `is_active`) VALUES
(1, 'storage/app/public/Partners/1523961313logo_ups_hover.png', 'UPS', '<p><br></p>', '0', '2018-02-13 07:36:41', 1),
(2, 'storage/app/public/Partners/1523961226logo_DHL_hover.png', 'DHL', '<p><br></p>', '0', '2018-02-13 09:15:57', 1),
(3, 'storage/app/public/Partners/1523961390logo_microsoft_hover.png', 'Microsoft', '<p>Description<br></p>', '0', '2018-02-22 07:13:10', 1),
(4, 'storage/app/public/Partners/1523961127AWS.png', 'Amazon', '<p>Amazon Web services<br></p>', '0', '2018-02-22 07:13:35', 1),
(5, 'storage/app/public/Partners/1523961498logo_oracle_hover.png', 'Oracle  ', '    <p><br></p>  ', '0', '2018-02-22 07:13:57', 1),
(6, 'storage/app/public/Partners/1523249933logo_acer.png', 'Accer', '<p>Accer Channel Partner<br></p>', '0', '2018-02-22 07:14:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `solution_provider_industry`
--

CREATE TABLE `solution_provider_industry` (
  `id` int(11) NOT NULL,
  `industry_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solution_type`
--

CREATE TABLE `solution_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solution_type`
--

INSERT INTO `solution_type` (`id`, `name`, `sort`, `deleted`, `created_at`, `description`, `image`, `is_active`) VALUES
(1, 'Directory', NULL, '0', '2018-02-12 11:45:53', 'Description of all type of solution', 'storage/Solution/1519048601icon_smart_office.png', 0),
(2, 'Edutainment', NULL, '0', '2018-02-13 09:18:25', '<p>c<br></p>', 'storage/Solution/1519048642icon_go_mobile.png', 1),
(3, 'Digital Marketing', NULL, '0', '2018-02-13 09:19:16', '<p>loremp epsume&nbsp;loremp epsume&nbsp;loremp epsume&nbsp;loremp epsume&nbsp;loremp epsume&nbsp;loremp epsume&nbsp;loremp epsume <br></p>', 'storage/app/public/Solution/1519895489solu-img6.jpg', 1),
(4, 'Hospitality', NULL, '0', '2018-02-22 06:03:30', 'Wireless&nbsp;Hotspots and Push Marketing<br>&nbsp;', 'storage/Solution/1519279410NRAshow-20160516.jpg', 1),
(5, 'Infrastructure', NULL, '0', '2018-03-06 05:28:21', '<p>Lorem&nbsp;</p>', 'storage/app/public/Solution/15203144741519048642icon_go_mobile.png', 1),
(6, 'Manufacturing', NULL, '0', '2018-03-06 05:28:46', '<p>Analytics For Smart Manufacturing<br></p>', 'storage/app/public/Solution/15203141261519048042icon_smart_office.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prob_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `customer_name`, `partner_name`, `email`, `number`, `support`, `prod_description`, `prob_description`, `created_at`) VALUES
(1, 'ddd', 'partner', 'admin@admin.com', '123456789', 'high', 'ddddddddddddddd', 'ddddddddddddddd', '2018-02-27 13:36:54'),
(2, 'ddd', 'partner', 'admin@admin.com', '123456789', 'high', 'gggg', 'gggg', '2018-03-01 09:12:36'),
(3, 'Support Test', 'Support Test', 'SupportTest@test.com', '283748732924', 'high', 'asdhfudihfuis', 'asdhfudihfuis', '2018-05-16 08:24:09'),
(4, 'Support Test', 'Support Test', 'Test@test.com', '34656456547574', 'high', 'sdgsgfsgfg', 'sdgsgfsgfg', '2018-05-16 08:24:50'),
(5, 'amit', 'amit', 'amit.sawant@gcrcloud.com', '9987222360', 'high', 'switch issue', 'switch issue', '2018-05-16 09:51:26'),
(6, 'GCR TW', 'GCR', 'test@test.com', '9198123456789', 'high', 'need\r\nhelp\r\non\r\nconfiguration', 'need\r\nhelp\r\non\r\nconfiguration', '2018-05-17 00:51:25'),
(7, '', '', '', '', 'high', '', '', '2018-05-21 11:09:32'),
(8, '', '', '', '', 'high', '', '', '2018-05-22 06:35:05'),
(9, '', '', '', '', 'high', '', '', '2018-05-22 06:36:27'),
(10, '', '', '', '', 'high', '', '', '2018-05-22 06:37:25'),
(11, '', '', '', '', 'high', '', '', '2018-05-22 06:37:43'),
(12, '', '', '', '', 'high', '', '', '2018-05-22 06:40:03'),
(13, '', '', '', '', 'high', '', '', '2018-05-22 06:42:52'),
(14, '', '', '', '', 'high', '', '', '2018-05-23 04:52:27'),
(15, '', '', '', '', 'high', '', '', '2018-05-23 06:45:21'),
(16, 'test', 'testy', 'asim@technole.in', '11111', 'high', 'ddd', 'ddd', '2018-05-23 06:48:13'),
(17, 'Test', 'Test', 'Test@test.com', '98999983838392', 'high', 'Test', 'Test', '2018-05-28 06:46:40'),
(18, 'rahul', 'apple', 'admin@admin.com', '9960445452', 'medium', 'bvsdnhuy hkjcdo lknnc kjsnckl ;kclk\r\nklkcvjk;,', 'bvsdnhuy hkjcdo lknnc kjsnckl ;kclk\r\nklkcvjk;,', '2018-06-22 08:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `url_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `deleted`, `created_at`, `parent_id`, `is_active`, `updated_at`, `url_slug`) VALUES
(1, 'testing', '1', '2018-02-14 06:15:00', NULL, 0, '2018-04-16 11:55:44', NULL),
(2, 'amit', '0', '2018-02-14 05:11:13', NULL, 0, '2018-04-07 06:56:30', NULL),
(3, 'aditya', '0', '2018-02-14 11:31:11', NULL, 0, '2018-04-07 06:55:36', NULL),
(4, 'dimple', '0', '2018-02-14 11:31:11', NULL, 0, '2018-04-07 06:56:05', NULL),
(6, 'panduram', '0', '2018-02-14 12:00:00', NULL, 0, '2018-04-07 06:55:51', NULL),
(7, 'dd', '0', '2018-02-14 13:35:08', NULL, 0, '2018-04-07 06:57:43', NULL),
(8, 'jj', '0', '2018-02-14 13:35:08', NULL, 0, '2018-04-17 09:11:50', NULL),
(9, 'asu', '0', '2018-02-14 13:35:09', NULL, 1, '2018-06-13 05:43:47', 'asu'),
(10, 'new', '0', '2018-02-14 13:53:34', NULL, 1, '2018-06-13 05:43:47', 'new'),
(11, 'old', '0', '2018-02-14 13:53:34', NULL, 1, '2018-06-13 05:43:47', 'old'),
(12, 'ex', '0', '2018-02-14 13:55:17', NULL, 1, '2018-06-13 05:43:47', 'ex'),
(13, 'marketting', '0', '2018-02-14 13:59:34', NULL, 1, '2018-06-13 05:43:48', 'marketting'),
(14, 'marketting ', '0', '2018-02-14 14:00:39', NULL, 1, '2018-06-13 05:43:48', 'marketting'),
(15, 'g', '0', '2018-02-14 14:01:41', NULL, 1, '2018-06-13 05:43:48', 'g'),
(16, 'gg', '0', '2018-02-14 14:08:17', NULL, 1, '2018-06-13 05:43:48', 'gg'),
(17, 'ff', '0', '2018-02-16 07:42:26', NULL, 1, '2018-06-13 05:43:48', 'ff'),
(18, 'Signage', '0', '2018-03-30 00:00:00', NULL, 1, '2018-03-30 12:58:51', NULL),
(19, 'Digital Class', '0', '2018-03-30 13:03:17', NULL, 1, '2018-06-13 05:43:48', 'digital-class'),
(20, 'Digital Signage', '0', '2018-03-30 13:03:55', 18, 0, '2018-04-17 09:39:46', NULL),
(21, 'Digital Board', '0', '2018-03-30 13:06:28', NULL, 1, '2018-06-13 05:43:49', 'digital-board'),
(22, 'Sig', '0', '2018-04-02 10:41:04', 20, 0, '2018-04-17 09:39:56', NULL),
(23, 'White Board', '0', '2018-04-06 09:32:21', NULL, 1, '2018-06-12 13:27:02', NULL),
(24, 'oard', '0', '2018-04-06 09:37:14', 23, 1, '2018-06-13 05:43:49', 'oard'),
(25, 'Digital Signage', '0', '2018-04-06 09:37:32', NULL, 1, '2018-06-13 05:43:49', 'digital-signage'),
(26, 'Smart Class', '0', '2018-04-06 09:43:38', NULL, 1, '2018-06-13 05:43:49', 'smart-class'),
(27, 'Networking', '0', '2018-04-06 11:45:16', NULL, 1, '2018-06-13 05:43:49', 'networking'),
(28, 'test', '0', '2018-04-07 06:37:09', NULL, 0, '2018-04-17 09:12:59', NULL),
(29, 'Fun and Learn Platform', '0', '2018-04-07 06:43:48', NULL, 1, '2018-06-13 05:43:49', 'fun-and-learn-platform'),
(30, 'User Analytics for Retails', '0', '2018-04-07 07:01:17', NULL, 1, '2018-06-13 05:43:50', 'user-analytics-for-retails'),
(31, 'Analytics For Manufacturing', '0', '2018-04-07 07:05:25', 54, 1, '2018-06-13 05:43:50', 'analytics-for-manufacturing'),
(32, 'E-Learning', '0', '2018-04-07 07:10:59', NULL, 1, '2018-06-13 05:43:50', 'e-learning'),
(33, 'CCTV System', '0', '2018-04-07 07:18:59', NULL, 1, '2018-06-12 13:27:02', NULL),
(34, 'ERP for Schools', '0', '2018-04-07 07:24:41', NULL, 1, '2018-06-13 05:43:50', 'erp-for-schools'),
(35, 'Retail POS on smartphones ', '0', '2018-04-07 07:30:46', NULL, 1, '2018-06-13 05:43:50', 'retail-pos-on-smartphones'),
(36, 'Wifi Monetization', '0', '2018-04-07 08:08:56', NULL, 1, '2018-06-13 05:43:50', 'wifi-monetization'),
(37, 'RFID Based Tracking/Analytics for Retail', '0', '2018-04-07 08:16:46', NULL, 1, '2018-06-13 05:43:51', 'rfid-based-tracking/analytics-for-retail'),
(38, 'Virtual Fitting Room', '0', '2018-04-07 08:21:17', NULL, 1, '2018-06-13 05:43:51', 'virtual-fitting-room'),
(39, 'Smart Board and Virtual Learning Softwares', '0', '2018-04-07 08:30:13', NULL, 1, '2018-06-12 13:27:02', NULL),
(40, 'Interactive Boards', '0', '2018-04-07 11:49:48', 39, 1, '2018-06-13 05:43:51', 'interactive-boards'),
(41, 'Switching, Wireless and Security', '0', '2018-04-08 05:40:29', NULL, 1, '2018-04-08 05:40:29', NULL),
(42, 'Ethernet Switches', '0', '2018-04-08 05:50:32', 41, 1, '2018-06-13 05:43:51', 'ethernet-switches'),
(43, 'homesecurity', '0', '2018-04-11 11:02:52', 33, 1, '2018-06-13 05:43:51', 'homesecurity'),
(44, 'IP servillance', '0', '2018-04-11 11:50:16', 33, 1, '2018-06-13 05:43:51', 'ip-servillance'),
(45, 'learning management system', '0', '2018-04-11 12:04:05', NULL, 1, '2018-06-12 13:27:02', NULL),
(46, 'Virtual Learning', '0', '2018-04-12 04:59:49', 39, 1, '2018-06-13 05:43:51', 'virtual-learning'),
(47, 'Wireless', '0', '2018-04-12 05:08:32', 41, 1, '2018-06-13 05:43:51', 'wireless'),
(48, 'infrastructure', '0', '2018-04-12 07:00:35', 1, 0, '2018-04-16 11:55:12', NULL),
(49, 'Layer 2 swich', '0', '2018-04-13 10:11:28', 41, 0, '2018-04-17 11:18:18', NULL),
(50, 'Broadcasting and Collabration Solutions', '0', '2018-04-17 09:27:50', NULL, 1, '2018-06-12 13:27:02', NULL),
(51, 'Media Capture and Live Streaming', '0', '2018-04-17 09:28:15', 50, 1, '2018-06-13 05:43:52', 'media-capture-and-live-streaming'),
(52, 'Mobile Push Marketing', '0', '2018-04-17 09:29:50', NULL, 1, '2018-06-12 13:27:02', NULL),
(53, 'Bluetooth and GSM based Push Marketing', '0', '2018-04-17 09:30:09', 52, 1, '2018-06-13 05:43:52', 'bluetooth-and-gsm-based-push-marketing'),
(54, 'Analytics', '0', '2018-04-17 09:30:55', NULL, 1, '2018-06-12 13:27:03', NULL),
(55, 'Retail Analytics', '0', '2018-04-17 09:31:17', 54, 1, '2018-06-13 05:43:52', 'retail-analytics'),
(56, 'Contents', '0', '2018-04-17 09:33:24', 45, 1, '2018-06-13 05:43:52', 'contents'),
(57, 'LMS', '0', '2018-04-17 09:33:56', 45, 1, '2018-06-13 05:43:52', 'lms'),
(58, 'Tracking and Inventory Management', '0', '2018-04-17 09:34:35', NULL, 1, '2018-06-12 13:27:03', NULL),
(59, 'Asset Tracking and Inventory Management', '0', '2018-04-17 09:35:02', 58, 1, '2018-06-13 05:43:52', 'asset-tracking-and-inventory-management'),
(60, 'User Traffic Analytics for Retails', '0', '2018-04-17 09:35:57', 54, 1, '2018-06-13 05:43:52', 'user-traffic-analytics-for-retails'),
(61, 'Cloud Conferencing', '0', '2018-04-17 09:38:37', 50, 1, '2018-06-13 05:43:52', 'cloud-conferencing'),
(62, 'ERP', '0', '2018-04-17 09:40:42', NULL, 1, '2018-06-12 13:27:03', NULL),
(63, 'Education Campus', '0', '2018-04-17 09:41:03', 62, 1, '2018-06-13 05:43:52', 'education-campus'),
(64, 'Analytics for Social Media', '0', '2018-04-17 09:41:30', 54, 1, '2018-06-13 05:43:52', 'analytics-for-social-media'),
(65, 'Safety and Security', '0', '2018-04-17 09:41:48', NULL, 1, '2018-06-12 13:27:03', NULL),
(66, 'Home Centre', '0', '2018-04-17 09:42:06', 65, 1, '2018-06-13 05:43:53', 'home-centre'),
(67, 'IOT Solutions', '0', '2018-04-17 09:46:09', NULL, 1, '2018-04-17 09:46:09', NULL),
(68, 'Restaurent Table Service System', '0', '2018-04-17 09:46:20', 67, 1, '2018-06-13 05:43:53', 'restaurent-table-service-system'),
(69, 'Wifi Based Push Marketing', '0', '2018-04-17 09:47:49', 52, 1, '2018-06-13 05:43:53', 'wifi-based-push-marketing'),
(70, 'Beacon Based Push Marketing', '0', '2018-04-17 09:48:10', 52, 1, '2018-06-13 05:43:53', 'beacon-based-push-marketing'),
(71, 'Storage', '0', '2018-04-17 09:49:02', NULL, 1, '2018-06-13 05:43:53', 'storage'),
(72, 'Security', '0', '2018-04-17 09:49:57', 41, 1, '2018-06-13 05:43:53', 'security'),
(73, ' IP Surveillance', '0', '2018-04-17 09:50:21', 41, 1, '2018-06-13 05:43:53', '??ip??surveillance'),
(74, 'Other Products', '0', '2018-04-17 09:50:56', NULL, 1, '2018-06-13 05:43:53', 'other-products'),
(75, 'Smartphone POS', '0', '2018-04-17 10:15:54', NULL, 1, '2018-06-13 05:43:53', 'smartphone-pos'),
(76, 'IOT Solutions ', '0', '2018-04-17 10:32:03', 67, 0, '2018-05-28 09:17:52', NULL),
(77, 'Switching Accessories', '0', '2018-04-17 10:48:37', 41, 1, '2018-06-13 05:43:53', 'switching-accessories'),
(78, 'Student and Bus Tracking', '0', '2018-04-24 07:16:06', NULL, 1, '2018-06-13 05:43:54', 'student-and-bus-tracking'),
(79, 'Education Contents Portal ', '0', '2018-04-24 07:21:34', NULL, 1, '2018-06-13 05:43:54', 'education-contents-portal'),
(80, 'Restaurant Customer Ordering and Inventory Management Systems', '0', '2018-04-27 06:51:23', NULL, 1, '2018-06-13 05:43:54', 'restaurant-customer-ordering-and-inventory-management-systems'),
(81, 'In Store analytics for Promotion decisions', '0', '2018-05-09 14:24:18', NULL, 1, '2018-06-13 05:43:54', 'in-store-analytics-for-promotion-decisions'),
(82, 'Parking Management', '0', '2018-05-14 06:13:30', NULL, 1, '2018-06-13 05:43:54', 'parking-management'),
(83, 'Environment Monitor and Security for Small Retails', '0', '2018-05-14 06:22:19', NULL, 1, '2018-06-13 05:43:54', 'environment-monitor-and-security-for-small-retails'),
(84, 'Push Marketing Platforms', '0', '2018-05-14 06:41:58', NULL, 1, '2018-06-13 05:43:54', 'push-marketing-platforms'),
(85, 'Analytic Tools', '0', '2018-05-14 06:46:35', NULL, 1, '2018-06-13 05:43:54', 'analytic-tools'),
(86, 'Networking', '0', '2018-05-14 07:11:35', NULL, 1, '2018-06-13 05:43:54', 'networking'),
(87, 'IP PBX and AV Conferencing', '0', '2018-05-14 07:17:30', NULL, 1, '2018-06-21 11:42:03', 'ip-pbx-and-av-conferencing');

-- --------------------------------------------------------

--
-- Table structure for table `tag_category_x`
--

CREATE TABLE `tag_category_x` (
  `id` int(11) NOT NULL,
  `scenario_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tag_category_x`
--

INSERT INTO `tag_category_x` (`id`, `scenario_id`, `tag_id`, `status`) VALUES
(9, 36, 1, 1),
(10, 36, 3, 1),
(11, 36, 4, 1),
(29, 31, 34, 1),
(34, 19, 38, 1),
(43, 34, 30, 1),
(44, 33, 31, 1),
(47, 28, 26, 1),
(48, 28, 29, 1),
(49, 4, 26, 1),
(50, 41, 78, 1),
(51, 32, 32, 1),
(52, 32, 79, 1),
(53, 5, 29, 1),
(54, 37, 80, 1),
(55, 2, 80, 1),
(56, 26, 73, 1),
(57, 38, 82, 1),
(58, 25, 83, 1),
(59, 30, 35, 1),
(60, 14, 84, 1),
(61, 13, 84, 1),
(62, 17, 84, 1),
(65, 18, 85, 1),
(66, 11, 85, 1),
(67, 22, 37, 1),
(68, 22, 85, 1),
(69, 9, 27, 1),
(70, 10, 87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag_product_x`
--

CREATE TABLE `tag_product_x` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tag_product_x`
--

INSERT INTO `tag_product_x` (`id`, `product_id`, `tag_id`, `status`) VALUES
(37, 749, 40, 1),
(42, 838, 40, 1),
(46, 947, 42, 1),
(47, 961, 42, 1),
(48, 948, 42, 1),
(49, 946, 42, 1),
(50, 938, 42, 1),
(51, 933, 42, 1),
(52, 931, 42, 1),
(53, 924, 42, 1),
(54, 915, 42, 1),
(55, 871, 42, 1),
(56, 870, 42, 1),
(57, 869, 42, 1),
(58, 868, 42, 1),
(71, 995, 46, 1),
(72, 994, 46, 1),
(73, 996, 46, 1),
(74, 992, 46, 1),
(75, 921, 47, 1),
(76, 209, 47, 1),
(77, 140, 47, 1),
(78, 335, 47, 1),
(81, 962, 42, 1),
(82, 962, 49, 1),
(83, 133, 74, 1),
(84, 132, 74, 1),
(85, 141, 47, 1),
(86, 142, 47, 1),
(87, 169, 47, 1),
(88, 176, 25, 1),
(89, 184, 73, 1),
(91, 185, 73, 1),
(92, 186, 73, 1),
(93, 206, 47, 1),
(95, 212, 25, 1),
(96, 227, 75, 1),
(97, 278, 72, 1),
(98, 284, 55, 1),
(99, 376, 47, 1),
(100, 402, 69, 1),
(101, 435, 68, 1),
(102, 460, 51, 1),
(103, 477, 25, 1),
(104, 478, 25, 1),
(105, 502, 69, 1),
(106, 504, 69, 1),
(107, 627, 25, 1),
(108, 629, 51, 1),
(109, 632, 71, 1),
(110, 633, 71, 1),
(111, 634, 71, 1),
(112, 668, 71, 1),
(113, 669, 71, 1),
(114, 670, 71, 1),
(115, 671, 71, 1),
(116, 695, 51, 1),
(117, 779, 70, 1),
(118, 787, 69, 1),
(119, 802, 42, 1),
(120, 830, 51, 1),
(121, 832, 51, 1),
(122, 834, 51, 1),
(123, 836, 51, 1),
(125, 845, 42, 1),
(126, 846, 42, 1),
(127, 847, 47, 1),
(128, 848, 47, 1),
(129, 849, 47, 1),
(130, 850, 47, 1),
(131, 851, 68, 1),
(133, 853, 72, 1),
(134, 854, 42, 1),
(135, 862, 77, 1),
(136, 878, 25, 1),
(137, 893, 25, 1),
(138, 894, 25, 1),
(139, 895, 42, 1),
(141, 937, 42, 1),
(142, 940, 47, 1),
(143, 942, 47, 1),
(145, 943, 55, 1),
(146, 958, 42, 1),
(147, 959, 47, 1),
(148, 971, 42, 1),
(149, 974, 55, 1),
(150, 975, 66, 1),
(151, 976, 66, 1),
(152, 977, 66, 1),
(153, 978, 64, 1),
(154, 979, 63, 1),
(155, 980, 25, 1),
(157, 982, 61, 1),
(158, 983, 60, 1),
(159, 984, 53, 1),
(160, 985, 59, 1),
(161, 986, 57, 1),
(162, 987, 46, 1),
(163, 988, 56, 1),
(164, 989, 51, 1),
(165, 990, 55, 1),
(166, 991, 51, 1),
(167, 993, 53, 1),
(169, 981, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `view`, `attributes`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'layout-1', 'landing-right', '', 1, '2018-05-12 03:09:09', '2018-05-12 04:09:10'),
(2, 'layout-2', 'landing-left', '', 1, '2018-05-30 03:07:07', '2018-05-30 02:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact_number`, `profile_pic`, `is_admin`, `password`, `remember_token`, `is_active`, `deleted`) VALUES
(1, 'Admin  admin ', '))admin  ', 'admin@admin.com   ', '   ', 'storage/ProfilePic/1519651327NRAshow-20160516.jpg', 1, '$2y$12$4oaa2ZqjklGcJrU5q9WAEeWhN9dRY0FLb0qVzNnMEdMJg3P8P.u96', 'UJsxgvdBTtIZfRxxf2SIuf7To9FpMhVyDWvkNo03ufWNBjOJSUGp5vqHicji', 1, '0'),
(12, 'John', 'Wick', 'admittn@admin.com', '1234567890', 'storage/ProfilePic/1519651327NRAshow-20160516.jpg', NULL, '$2y$10$E6UBDfMjXMpP7uCjDmJNTOwJRYJAQZ3rAjyWokvfK827A0mzlnlY6', 'NLdMmsjoSPLgQlNa4KgTWk3atimFZKyf8IWXeqJ6Ij9wONSjnwosA6QIjfnv', 1, '0'),
(13, 'John', 'doe 2', 'admittn3@admin.com', '1234567890', 'storage/ProfilePic/1519710219icon_go_mobile.png', NULL, '$2y$10$trsFejFz8QNCq64f0zCm6.ryNdf1/jQKFooJAbQSBcAFBN4hoc.DO', NULL, 1, '0'),
(14, 'asim', 'abbasi', 'asim@technople.in', '1234567890', 'storage/ProfilePic/1519714138NRAshow-20160516.jpg', NULL, '$2y$10$GI/freHaC6QweiWMXKDhOeyXNxJqLQhnb4DR7q8J8kVzMALHoGkta', 'vaLDmXYy0eui0fyCNH5xLqLv1Mv4GVSbUGjqBT85vOaR2iy4T3VPZTOsDkZy', 1, '0'),
(15, 'john Doe     ', '))))))Doe      ', 'john@xyz.com      ', '1234567890      ', 'storage/app/public/ProfilePic/1520441065client-img.jpg', NULL, '$2y$10$B9KdziUnHc.Ufa4BQjesWOcuuMLV1PuK6UHuyMYf5NWF/Kxp5ZNaO', 'ZdHWmO2CVwh9jEGRtjtJ2W4UkwwU0CehAFApgU6qwF4ObfKVHw2j5kzBSsBd', 1, '0'),
(21, 'Amit    ', '))))ch    ', 'amitc@technople.in    ', '789456789    ', '', NULL, '$2y$10$dXNX0R7K/0Rs2ECTsARKSuvfyoRnycsBlGXkyk0FAjqOHavJO4b1u', 'Rw6Nf9oNHLKaoxtrpBqISwHUnG4u7A7hHkkBI1bWfkfzyHlJry5ot6XEhL2r', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted`) VALUES
(8, 2, 13, '2018-02-27 05:55:24', '2018-02-27 05:55:24', 0),
(9, 1, 14, '2018-02-27 06:48:58', '2018-02-27 06:48:58', 0),
(11, 1, 12, '2018-02-27 07:32:20', '2018-02-27 07:32:20', 0),
(18, 1, 15, '2018-07-18 06:00:20', '2018-07-18 06:00:20', 0),
(24, 1, 21, '2018-07-18 11:10:08', '2018-07-18 11:10:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vertical_images`
--

CREATE TABLE `vertical_images` (
  `id` int(11) NOT NULL,
  `vertical_id` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vertical_images`
--

INSERT INTO `vertical_images` (`id`, `vertical_id`, `image`) VALUES
(16, 8, '{\"tiles\":\"storage/app/public/Vertical/1523531892News.jpg\",\"banner\":\"storage/app/public/Vertical/Banner/1523531847digital-marketing-services-by-cpcc.png\"}'),
(21, 2, '{\"tiles\":\"storage/app/public/Vertical/1523620032digital marketing\",\"banner\":\"storage/app/public/Vertical/Banner/15235346141523530128digital-marketing-services-by-cpcc.png\"}'),
(24, 1, '{\"tiles\":\"storage/app/public/Vertical/1523620163edutainment\",\"banner\":\"storage/app/public/Vertical/Banner/15235345761523444456HiRes-1024x739.jpg\"}'),
(27, 6, '{\"tiles\":\"storage/app/public/Vertical/1523621245infra.jpg\",\"banner\":\"storage/app/public/Vertical/Banner/1523534965infrastructure.jpg\"}'),
(28, 3, '{\"tiles\":\"storage/app/public/Vertical/1523621258hotel\",\"banner\":\"storage/app/public/Vertical/Banner/1523534824Hospitality_Industry_zj_catering_service.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` longtext COLLATE utf8_unicode_ci,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `is_video` tinyint(1) DEFAULT NULL,
  `link_redirect` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `category_id`, `title`, `media_url`, `tag`, `deleted`, `is_active`, `is_video`, `link_redirect`, `created_at`) VALUES
(46, 1, 'aKite short presentation', 'https://www.youtube.com/embed/S_OIc-PL9kE?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z', NULL, '0', 1, 1, NULL, '2018-03-01 10:41:27'),
(47, 1, 'Skywatch Instantly see what you care, anytime & anywhere', 'https://www.youtube.com/embed/5atFToUODWs?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z', NULL, '0', 1, 1, NULL, '2018-03-01 10:42:49'),
(48, 1, 'Vismile virtual dressing room', 'https://www.youtube.com/embed/S-6l7osUoUk?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z', NULL, '0', 1, 1, NULL, '2018-03-01 10:43:58'),
(52, 1, 'demo-1', 'https://www.youtube.com/embed/ae_DKNwK_ms', NULL, '0', 0, NULL, NULL, '2018-03-01 10:47:24'),
(53, 1, 'as', 'http://google.com1', NULL, '0', 0, NULL, NULL, '2018-03-01 10:47:32'),
(54, 1, 'amit', 'https://www.youtube.com/embed/QJncFirhjPg', NULL, '0', 0, NULL, NULL, '2018-03-01 10:47:49'),
(55, 1, 'a1', 'https://www.youtube.com/embed/ae_DKNwK_ms', NULL, '0', 0, NULL, NULL, '2018-03-01 10:47:59'),
(56, 1, '12', 'http://google.com1', NULL, '0', 0, NULL, NULL, '2018-03-01 10:48:09'),
(58, 2, 'Download & Install Link Street App', 'https://www.youtube.com/embed/KN0CWnSN-84?list=PL3xhbIz7D7XsH5I6Ybklnb02UfGWD63GX', NULL, '0', 1, 1, NULL, '2018-03-13 13:09:40'),
(62, 4, 'Corporate video', 'https://www.youtube.com/embed/p_YGuhoMQ7Y', NULL, '0', 1, 1, '', '2018-05-02 06:42:47'),
(64, 4, 'IOT ', 'https://www.youtube.com/embed/I72bG0SrQFM', NULL, '0', 1, 1, ' ', '2018-05-02 08:45:40'),
(65, 4, 'Why work with GCR ', 'https://www.youtube.com/embed/rKRBsGZyHPQ?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z ', NULL, '0', 1, 1, ' ', '2018-05-02 08:50:45'),
(66, 2, 'Cybernetyx EyeRIS Demo Video ', 'https://www.youtube.com/embed/u1ZqAzEGcJI ', NULL, '0', 1, 1, ' ', '2018-05-02 09:32:14'),
(67, 1, 'aKite presentation ', 'https://www.youtube.com/embed/drdFtNLeZsM?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z ', NULL, '0', 1, 1, ' ', '2018-05-02 09:32:49'),
(68, 1, 'Caprus IT Corporate Presentation | Corporate Presentation Video Makers in Chennai @scintilladigi.com ', 'https://www.youtube.com/embed/LsmOftGs_wU ', NULL, '0', 1, 1, ' ', '2018-05-02 09:33:22'),
(69, 2, 'How to purchase on the GCR platform_(Beta)_2015_01_29 ', 'https://www.youtube.com/embed/DlKXA1kSNow?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z ', NULL, '0', 1, 1, ' ', '2018-05-02 09:34:03'),
(70, 1, 'RansNet product introduction ', 'https://www.youtube.com/embed/FbzPJ5UNZZo ', NULL, '0', 1, 1, ' ', '2018-05-02 09:39:58'),
(71, 1, 'iRevo Digital Signage Features ', 'https://www.youtube.com/embed/EVIOQkLc5x8 ', NULL, '0', 1, 1, ' ', '2018-05-02 09:42:05'),
(72, 1, 'Trakomatic - Age / Gender analysis ', 'https://www.youtube.com/embed/33rXQ7dr5fs?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z ', NULL, '0', 1, 1, ' ', '2018-05-02 09:42:41'),
(73, 1, 'Trakomatic- People Counting ', 'https://www.youtube.com/embed/imOxTf7WJ5I?list=PL5pbD94pZttlY3d9cc_AB0Q-ns7U47y4z ', NULL, '0', 1, 1, ' ', '2018-05-02 09:42:58'),
(74, 1, 'MAGIC VR', 'https://www.youtube.com/embed/wndz-oanSOA', NULL, '0', 1, 1, '', '2018-05-11 06:25:12'),
(75, 1, 'Interactive White Board System', 'https://www.youtube.com/embed/OVkrV31IKps', NULL, '0', 1, 1, '', '2018-05-11 06:29:43'),
(77, 1, 'SimMagic e-Book Editor ', 'https://www.youtube.com/embed/ZTFRxGpP4QU ', NULL, '0', 1, 1, ' ', '2018-05-11 06:35:51'),
(78, 1, 'AREC Media Capture and Broadcasting ', 'https://www.youtube.com/embed/GbjsNxL0lm0', NULL, '0', 1, 1, '', '2018-05-11 06:38:37'),
(79, 1, 'KnachTechs School ERP', 'https://www.youtube.com/embed/Dh0-gt5gCQs', NULL, '0', 1, 1, '', '2018-05-11 06:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `video_industry_x`
--

CREATE TABLE `video_industry_x` (
  `id` int(11) NOT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_solutiontype_x`
--

CREATE TABLE `video_solutiontype_x` (
  `id` int(11) NOT NULL,
  `solutiontype_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_solutiontype_x`
--

INSERT INTO `video_solutiontype_x` (`id`, `solutiontype_id`, `video_id`, `deleted`, `is_active`) VALUES
(40, 1, 46, '0', 1),
(41, 1, 47, '0', 1),
(42, 1, 48, '0', 1),
(46, 1, 52, '0', 1),
(47, 1, 53, '0', 1),
(48, 1, 54, '0', 1),
(49, 1, 55, '0', 1),
(50, 1, 56, '0', 1),
(52, 2, 58, '0', 1),
(56, NULL, 62, '0', 1),
(58, NULL, 64, '0', 1),
(59, NULL, 65, '0', 1),
(60, NULL, 66, '0', 1),
(61, NULL, 67, '0', 1),
(62, NULL, 68, '0', 1),
(63, NULL, 69, '0', 1),
(64, NULL, 70, '0', 1),
(65, NULL, 71, '0', 1),
(66, NULL, 72, '0', 1),
(67, NULL, 73, '0', 1),
(68, NULL, 74, '0', 1),
(69, NULL, 75, '0', 1),
(71, NULL, 77, '0', 1),
(72, NULL, 78, '0', 1),
(73, NULL, 79, '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_pages`
--
ALTER TABLE `ad_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D14BFF0C4663E4` (`page_id`),
  ADD KEY `IDX_1D14BFF0FE52BF81` (`ads_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_partners`
--
ALTER TABLE `channel_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_testimonials`
--
ALTER TABLE `client_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_893BB778F92F3E70` (`country_id`);

--
-- Indexes for table `contact_backups`
--
ALTER TABLE `contact_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_attachments`
--
ALTER TABLE `events_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DDAEB0D571F7E88B` (`event_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_file_system`
--
ALTER TABLE `g_file_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_product`
--
ALTER TABLE `g_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_product_attachment`
--
ALTER TABLE `g_product_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_product_inquery`
--
ALTER TABLE `g_product_inquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_product_slug`
--
ALTER TABLE `g_product_slug`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_78F1C1C64584665A` (`product_id`);

--
-- Indexes for table `g_scenario_detail`
--
ALTER TABLE `g_scenario_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_scenario_detail_slug`
--
ALTER TABLE `g_scenario_detail_slug`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9D2BED8AE04E49DF` (`scenario_id`);

--
-- Indexes for table `g_scenario_product`
--
ALTER TABLE `g_scenario_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scenario_id` (`scenario_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `g_scenario_title`
--
ALTER TABLE `g_scenario_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_scenario_title_slug`
--
ALTER TABLE `g_scenario_title_slug`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_52D9684EA9F87BD` (`title_id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_banner`
--
ALTER TABLE `landing_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_banner_images`
--
ALTER TABLE `landing_banner_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_83F277BB684EC833` (`banner_id`);

--
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_87A7C899684EC833` (`banner_id`),
  ADD KEY `IDX_87A7C89959027487` (`theme_id`);

--
-- Indexes for table `landing_product`
--
ALTER TABLE `landing_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_product_images`
--
ALTER TABLE `landing_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2789D9864584665A` (`product_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1DD39950F92F3E70` (`country_id`);

--
-- Indexes for table `news_attachments`
--
ALTER TABLE `news_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EF14C99B5A459A0` (`news_id`);

--
-- Indexes for table `news_pages`
--
ALTER TABLE `news_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5ACB622BC4663E4` (`page_id`),
  ADD KEY `IDX_5ACB622BB5A459A0` (`news_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DF6FCEFDF92F3E70` (`country_id`),
  ADD KEY `IDX_DF6FCEFDC4663E4` (`page_id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4A5DB3CC4663E4` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B3BA5A5AF92F3E70` (`country_id`),
  ADD KEY `IDX_B3BA5A5A12F98E30` (`solution_provider_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A3FF103A4584665A` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8263FFCE4584665A` (`product_id`);

--
-- Indexes for table `product_industry_x`
--
ALTER TABLE `product_industry_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5B40A9212B19A734` (`industry_id`),
  ADD KEY `IDX_5B40A9214584665A` (`product_id`);

--
-- Indexes for table `product_solution_x`
--
ALTER TABLE `product_solution_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_913DEECA61EEBE29` (`solution_type_id`),
  ADD KEY `IDX_913DEECA4584665A` (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type_x`
--
ALTER TABLE `product_type_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F1113CAC14959723` (`product_type_id`),
  ADD KEY `IDX_F1113CAC4584665A` (`product_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_link`
--
ALTER TABLE `quick_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_link_page`
--
ALTER TABLE `quick_link_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A8BC4D5BC4663E4` (`page_id`),
  ADD KEY `IDX_A8BC4D5BA74E21B5` (`quick_link_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutiontype_images`
--
ALTER TABLE `solutiontype_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BDE2C8FD61EEBE29` (`solution_type_id`);

--
-- Indexes for table `solution_partners`
--
ALTER TABLE `solution_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution_provider_industry`
--
ALTER TABLE `solution_provider_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution_type`
--
ALTER TABLE `solution_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6FBC9426727ACA70` (`parent_id`);

--
-- Indexes for table `tag_category_x`
--
ALTER TABLE `tag_category_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31B560B8E04E49DF` (`scenario_id`),
  ADD KEY `IDX_31B560B8BAD26311` (`tag_id`);

--
-- Indexes for table `tag_product_x`
--
ALTER TABLE `tag_product_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2FD745BA4584665A` (`product_id`),
  ADD KEY `IDX_2FD745BABAD26311` (`tag_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_54FCD59FD60322AC` (`role_id`),
  ADD KEY `IDX_54FCD59FA76ED395` (`user_id`);

--
-- Indexes for table `vertical_images`
--
ALTER TABLE `vertical_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5FBA2EF3607DECF7` (`vertical_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29AA643212469DE2` (`category_id`);

--
-- Indexes for table `video_industry_x`
--
ALTER TABLE `video_industry_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4880EEBC2B19A734` (`industry_id`),
  ADD KEY `IDX_4880EEBC29C1004E` (`video_id`);

--
-- Indexes for table `video_solutiontype_x`
--
ALTER TABLE `video_solutiontype_x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_15463E934F89BC76` (`solutiontype_id`),
  ADD KEY `IDX_15463E9329C1004E` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ad_pages`
--
ALTER TABLE `ad_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `channel_partners`
--
ALTER TABLE `channel_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_testimonials`
--
ALTER TABLE `client_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_backups`
--
ALTER TABLE `contact_backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_attachments`
--
ALTER TABLE `events_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_product_inquery`
--
ALTER TABLE `g_product_inquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g_product_slug`
--
ALTER TABLE `g_product_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `g_scenario_detail_slug`
--
ALTER TABLE `g_scenario_detail_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `g_scenario_title_slug`
--
ALTER TABLE `g_scenario_title_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `landing_banner`
--
ALTER TABLE `landing_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `landing_banner_images`
--
ALTER TABLE `landing_banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `landing_product`
--
ALTER TABLE `landing_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `landing_product_images`
--
ALTER TABLE `landing_product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news_attachments`
--
ALTER TABLE `news_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `news_pages`
--
ALTER TABLE `news_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `page_banners`
--
ALTER TABLE `page_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_industry_x`
--
ALTER TABLE `product_industry_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_solution_x`
--
ALTER TABLE `product_solution_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_type_x`
--
ALTER TABLE `product_type_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quick_link`
--
ALTER TABLE `quick_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quick_link_page`
--
ALTER TABLE `quick_link_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `solutiontype_images`
--
ALTER TABLE `solutiontype_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `solution_partners`
--
ALTER TABLE `solution_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `solution_provider_industry`
--
ALTER TABLE `solution_provider_industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solution_type`
--
ALTER TABLE `solution_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tag_category_x`
--
ALTER TABLE `tag_category_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tag_product_x`
--
ALTER TABLE `tag_product_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vertical_images`
--
ALTER TABLE `vertical_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `video_industry_x`
--
ALTER TABLE `video_industry_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_solutiontype_x`
--
ALTER TABLE `video_solutiontype_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_pages`
--
ALTER TABLE `ad_pages`
  ADD CONSTRAINT `FK_1D14BFF0C4663E4` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `client_testimonials`
--
ALTER TABLE `client_testimonials`
  ADD CONSTRAINT `FK_893BB778F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `g_product_slug`
--
ALTER TABLE `g_product_slug`
  ADD CONSTRAINT `FK_78F1C1C64584665A` FOREIGN KEY (`product_id`) REFERENCES `g_product` (`id`);

--
-- Constraints for table `g_scenario_detail_slug`
--
ALTER TABLE `g_scenario_detail_slug`
  ADD CONSTRAINT `FK_9D2BED8AE04E49DF` FOREIGN KEY (`scenario_id`) REFERENCES `g_scenario_detail` (`id`);

--
-- Constraints for table `g_scenario_product`
--
ALTER TABLE `g_scenario_product`
  ADD CONSTRAINT `g_scenario_product_ibfk_1` FOREIGN KEY (`scenario_id`) REFERENCES `g_scenario_detail` (`id`),
  ADD CONSTRAINT `g_scenario_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `g_product` (`id`);

--
-- Constraints for table `g_scenario_title_slug`
--
ALTER TABLE `g_scenario_title_slug`
  ADD CONSTRAINT `FK_52D9684EA9F87BD` FOREIGN KEY (`title_id`) REFERENCES `g_scenario_title` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;