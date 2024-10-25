-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2024 at 11:29 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linhchi_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://vi.wordpress.org/', '', '2024-10-11 16:18:25', '2024-10-11 16:18:25', 'Xin chào, đây là một bình luận.\nĐể bắt đầu kiểm duyệt, chỉnh sửa và xóa nhận xét, vui lòng truy cập màn hình Nhận xét trong bảng điều khiển.\nHình đại diện của người bình luận đến từ <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1728926305;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728926306;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1728928105;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728929905;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728965915;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729009106;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729009115;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729009121;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729268475;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1729354706;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'http://localhost/linhchi_travel', 'on'),
(3, 'home', 'http://localhost/linhchi_travel', 'on'),
(4, 'blogname', 'Linh Chi Travel', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'doangiang665@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'j F, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:148:{s:8:\"tours/?$\";s:24:\"index.php?post_type=tour\";s:38:\"tours/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=tour&feed=$matches[1]\";s:33:\"tours/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=tour&feed=$matches[1]\";s:25:\"tours/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=tour&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:16:\"visa-services/?$\";s:32:\"index.php?post_type=visa_service\";s:46:\"visa-services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=visa_service&feed=$matches[1]\";s:41:\"visa-services/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=visa_service&feed=$matches[1]\";s:33:\"visa-services/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=visa_service&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"tours/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"tours/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"tours/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tours/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tours/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"tours/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"tours/([^/]+)/embed/?$\";s:37:\"index.php?tour=$matches[1]&embed=true\";s:26:\"tours/([^/]+)/trackback/?$\";s:31:\"index.php?tour=$matches[1]&tb=1\";s:46:\"tours/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tour=$matches[1]&feed=$matches[2]\";s:41:\"tours/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tour=$matches[1]&feed=$matches[2]\";s:34:\"tours/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tour=$matches[1]&paged=$matches[2]\";s:41:\"tours/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?tour=$matches[1]&cpage=$matches[2]\";s:30:\"tours/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?tour=$matches[1]&page=$matches[2]\";s:22:\"tours/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"tours/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"tours/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tours/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tours/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"tours/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"tour-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tour_category=$matches[1]&feed=$matches[2]\";s:49:\"tour-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tour_category=$matches[1]&feed=$matches[2]\";s:30:\"tour-category/([^/]+)/embed/?$\";s:46:\"index.php?tour_category=$matches[1]&embed=true\";s:42:\"tour-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?tour_category=$matches[1]&paged=$matches[2]\";s:24:\"tour-category/([^/]+)/?$\";s:35:\"index.php?tour_category=$matches[1]\";s:41:\"visa-services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"visa-services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"visa-services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"visa-services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"visa-services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"visa-services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"visa-services/([^/]+)/embed/?$\";s:45:\"index.php?visa_service=$matches[1]&embed=true\";s:34:\"visa-services/([^/]+)/trackback/?$\";s:39:\"index.php?visa_service=$matches[1]&tb=1\";s:54:\"visa-services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?visa_service=$matches[1]&feed=$matches[2]\";s:49:\"visa-services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?visa_service=$matches[1]&feed=$matches[2]\";s:42:\"visa-services/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?visa_service=$matches[1]&paged=$matches[2]\";s:49:\"visa-services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?visa_service=$matches[1]&cpage=$matches[2]\";s:38:\"visa-services/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?visa_service=$matches[1]&page=$matches[2]\";s:30:\"visa-services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"visa-services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"visa-services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"visa-services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"visa-services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"visa-services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"visa-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?visa_category=$matches[1]&feed=$matches[2]\";s:49:\"visa-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?visa_category=$matches[1]&feed=$matches[2]\";s:30:\"visa-category/([^/]+)/embed/?$\";s:46:\"index.php?visa_category=$matches[1]&embed=true\";s:42:\"visa-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?visa_category=$matches[1]&paged=$matches[2]\";s:24:\"visa-category/([^/]+)/?$\";s:35:\"index.php?visa_category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:31:\"swiper-slider/swiper-slider.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'linhchitravel', 'on'),
(42, 'stylesheet', 'linhchitravel', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '2', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '9', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1744215505', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'WPLANG', 'vi', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bình luận gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Danh mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'auto'),
(127, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1728663690;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(135, '_site_transient_timeout_browser_16453d6e2683b8800ded2a27c7f595d9', '1729268320', 'off'),
(136, '_site_transient_browser_16453d6e2683b8800ded2a27c7f595d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"129.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(137, '_site_transient_timeout_php_check_d6b31cb0311c56af124525e5040ef5f1', '1729268320', 'off'),
(138, '_site_transient_php_check_d6b31cb0311c56af124525e5040ef5f1', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(142, 'can_compress_scripts', '1', 'on'),
(155, 'finished_updating_comment_type', '1', 'auto'),
(163, 'current_theme', 'linhchitravel', 'auto'),
(164, 'theme_mods_linhchitravel', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'on'),
(165, 'theme_switched', '', 'auto'),
(179, '_site_transient_timeout_php_check_7ec5f04fef1dc985019fbdb14afad4b2', '1729303777', 'off'),
(180, '_site_transient_php_check_7ec5f04fef1dc985019fbdb14afad4b2', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(186, 'site_logo', '9', 'auto'),
(194, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(195, 'recently_activated', 'a:0:{}', 'auto'),
(201, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.6.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1728883209;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}', 'off'),
(203, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1728883212;s:7:\"checked\";a:1:{s:13:\"linhchitravel\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(206, 'recovery_mode_email_last_sent', '1728702049', 'auto'),
(207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'auto'),
(213, 'category_children', 'a:0:{}', 'auto'),
(229, 'tour_category_children', 'a:0:{}', 'auto'),
(233, 'swiper_slider_autoplay', '1', 'auto'),
(234, 'swiper_slider_loop', '1', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(237, 'swiper_slider_images', 'a:2:{i:0;s:71:\"http://localhost/linhchi_travel/wp-content/uploads/2024/10/image_bg.png\";i:1;s:89:\"http://localhost/linhchi_travel/wp-content/uploads/2024/10/website-euro-autumn-2024-1.png\";}', 'auto'),
(280, 'acf_version', '6.2.2', 'auto'),
(288, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:37:\"Yêu cầu HTTPS không thành công.\";}}', 'auto'),
(289, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'on'),
(297, '_transient_timeout_acf_plugin_updates', '1728952888', 'off'),
(298, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.8\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241007\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";}}', 'off'),
(362, 'options_tour_hot_title', '2024', 'off'),
(363, '_options_tour_hot_title', 'field_670c8985cbf82', 'off'),
(378, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1728889303;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.8\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241007\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"swiper-slider/swiper-slider.php\";s:3:\"1.0\";}}', 'off'),
(395, 'visa_category_children', 'a:0:{}', 'auto'),
(424, '_site_transient_timeout_wp_theme_files_patterns-a86094ec0ca2bdcd081fb00a0e64ef12', '1728926859', 'off'),
(425, '_site_transient_wp_theme_files_patterns-a86094ec0ca2bdcd081fb00a0e64ef12', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'front-page.php'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_menu_item_type', 'custom'),
(6, 7, '_menu_item_menu_item_parent', '0'),
(7, 7, '_menu_item_object_id', '7'),
(8, 7, '_menu_item_object', 'custom'),
(9, 7, '_menu_item_target', ''),
(10, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 7, '_menu_item_xfn', ''),
(12, 7, '_menu_item_url', 'http://localhost/linhchi_travel/'),
(13, 7, '_menu_item_orphaned', '1728664545'),
(14, 8, '_menu_item_type', 'post_type'),
(15, 8, '_menu_item_menu_item_parent', '0'),
(16, 8, '_menu_item_object_id', '2'),
(17, 8, '_menu_item_object', 'page'),
(18, 8, '_menu_item_target', ''),
(19, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 8, '_menu_item_xfn', ''),
(21, 8, '_menu_item_url', ''),
(22, 8, '_menu_item_orphaned', '1728664545'),
(23, 9, '_wp_attached_file', '2024/10/logo.png'),
(24, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:405;s:6:\"height\";i:122;s:4:\"file\";s:16:\"2024/10/logo.png\";s:8:\"filesize\";i:48752;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"logo-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33470;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-150x122.png\";s:5:\"width\";i:150;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16711;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 10, '_wp_trash_meta_status', 'publish'),
(26, 10, '_wp_trash_meta_time', '1728699201'),
(27, 11, '_wp_trash_meta_status', 'publish'),
(28, 11, '_wp_trash_meta_time', '1728699269'),
(29, 12, '_menu_item_type', 'custom'),
(30, 12, '_menu_item_menu_item_parent', '0'),
(31, 12, '_menu_item_object_id', '12'),
(32, 12, '_menu_item_object', 'custom'),
(33, 12, '_menu_item_target', ''),
(34, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 12, '_menu_item_xfn', ''),
(36, 12, '_menu_item_url', 'http://localhost/linhchi_travel/'),
(37, 12, '_menu_item_orphaned', '1728700680'),
(38, 13, '_menu_item_type', 'post_type'),
(39, 13, '_menu_item_menu_item_parent', '0'),
(40, 13, '_menu_item_object_id', '2'),
(41, 13, '_menu_item_object', 'page'),
(42, 13, '_menu_item_target', ''),
(43, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 13, '_menu_item_xfn', ''),
(45, 13, '_menu_item_url', ''),
(46, 13, '_menu_item_orphaned', '1728700680'),
(47, 14, '_menu_item_type', 'custom'),
(48, 14, '_menu_item_menu_item_parent', '0'),
(49, 14, '_menu_item_object_id', '14'),
(50, 14, '_menu_item_object', 'custom'),
(51, 14, '_menu_item_target', ''),
(52, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 14, '_menu_item_xfn', ''),
(54, 14, '_menu_item_url', 'http://localhost/linhchi_travel/'),
(55, 14, '_menu_item_orphaned', '1728700781'),
(56, 15, '_menu_item_type', 'post_type'),
(57, 15, '_menu_item_menu_item_parent', '0'),
(58, 15, '_menu_item_object_id', '2'),
(59, 15, '_menu_item_object', 'page'),
(60, 15, '_menu_item_target', ''),
(61, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 15, '_menu_item_xfn', ''),
(63, 15, '_menu_item_url', ''),
(64, 15, '_menu_item_orphaned', '1728700781'),
(65, 2, '_edit_lock', '1728891357:1'),
(66, 2, '_edit_last', '1'),
(67, 17, '_menu_item_type', 'post_type'),
(68, 17, '_menu_item_menu_item_parent', '0'),
(69, 17, '_menu_item_object_id', '2'),
(70, 17, '_menu_item_object', 'page'),
(71, 17, '_menu_item_target', ''),
(72, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 17, '_menu_item_xfn', ''),
(74, 17, '_menu_item_url', ''),
(85, 19, '_edit_last', '1'),
(86, 19, '_wp_page_template', 'default'),
(87, 19, '_edit_lock', '1728702491:1'),
(88, 21, '_menu_item_type', 'post_type'),
(89, 21, '_menu_item_menu_item_parent', '0'),
(90, 21, '_menu_item_object_id', '19'),
(91, 21, '_menu_item_object', 'page'),
(92, 21, '_menu_item_target', ''),
(93, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 21, '_menu_item_xfn', ''),
(95, 21, '_menu_item_url', ''),
(97, 22, '_edit_last', '1'),
(98, 22, '_edit_lock', '1728710770:1'),
(99, 25, '_menu_item_type', 'taxonomy'),
(100, 25, '_menu_item_menu_item_parent', '0'),
(101, 25, '_menu_item_object_id', '5'),
(102, 25, '_menu_item_object', 'tour_category'),
(103, 25, '_menu_item_target', ''),
(104, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 25, '_menu_item_xfn', ''),
(106, 25, '_menu_item_url', ''),
(108, 26, '_menu_item_type', 'taxonomy'),
(109, 26, '_menu_item_menu_item_parent', '0'),
(110, 26, '_menu_item_object_id', '6'),
(111, 26, '_menu_item_object', 'tour_category'),
(112, 26, '_menu_item_target', ''),
(113, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 26, '_menu_item_xfn', ''),
(115, 26, '_menu_item_url', ''),
(117, 27, '_menu_item_type', 'taxonomy'),
(118, 27, '_menu_item_menu_item_parent', '0'),
(119, 27, '_menu_item_object_id', '7'),
(120, 27, '_menu_item_object', 'tour_category'),
(121, 27, '_menu_item_target', ''),
(122, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 27, '_menu_item_xfn', ''),
(124, 27, '_menu_item_url', ''),
(126, 28, '_menu_item_type', 'taxonomy'),
(127, 28, '_menu_item_menu_item_parent', '0'),
(128, 28, '_menu_item_object_id', '4'),
(129, 28, '_menu_item_object', 'tour_category'),
(130, 28, '_menu_item_target', ''),
(131, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 28, '_menu_item_xfn', ''),
(133, 28, '_menu_item_url', ''),
(135, 29, '_menu_item_type', 'taxonomy'),
(136, 29, '_menu_item_menu_item_parent', '0'),
(137, 29, '_menu_item_object_id', '3'),
(138, 29, '_menu_item_object', 'tour_category'),
(139, 29, '_menu_item_target', ''),
(140, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 29, '_menu_item_xfn', ''),
(142, 29, '_menu_item_url', ''),
(144, 30, '_edit_last', '1'),
(145, 30, '_edit_lock', '1728862568:1'),
(146, 31, '_wp_attached_file', '2024/10/image_bg.png'),
(147, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:774;s:4:\"file\";s:20:\"2024/10/image_bg.png\";s:8:\"filesize\";i:1311928;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"image_bg-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63390;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"image_bg-1024x387.png\";s:5:\"width\";i:1024;s:6:\"height\";i:387;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:508342;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"image_bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45177;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"image_bg-768x290.png\";s:5:\"width\";i:768;s:6:\"height\";i:290;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:316226;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"image_bg-1536x581.png\";s:5:\"width\";i:1536;s:6:\"height\";i:581;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:990104;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 33, '_wp_attached_file', '2024/10/cover-page.png'),
(151, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1680;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2024/10/cover-page.png\";s:8:\"filesize\";i:387314;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"cover-page-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54681;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"cover-page-1024x244.png\";s:5:\"width\";i:1024;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:578278;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"cover-page-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49683;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"cover-page-768x183.png\";s:5:\"width\";i:768;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:330719;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"cover-page-1536x366.png\";s:5:\"width\";i:1536;s:6:\"height\";i:366;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1254903;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 37, '_wp_attached_file', '2024/10/website-euro-autumn-2024.png'),
(159, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2160;s:6:\"height\";i:876;s:4:\"file\";s:36:\"2024/10/website-euro-autumn-2024.png\";s:8:\"filesize\";i:2773975;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"website-euro-autumn-2024-300x122.png\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94004;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"website-euro-autumn-2024-1024x415.png\";s:5:\"width\";i:1024;s:6:\"height\";i:415;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:989338;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"website-euro-autumn-2024-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55372;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"website-euro-autumn-2024-768x311.png\";s:5:\"width\";i:768;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:569689;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:37:\"website-euro-autumn-2024-1536x623.png\";s:5:\"width\";i:1536;s:6:\"height\";i:623;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2116862;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:37:\"website-euro-autumn-2024-2048x831.png\";s:5:\"width\";i:2048;s:6:\"height\";i:831;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3534568;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 38, '_wp_attached_file', '2024/10/website-euro-autumn-2024-1.png'),
(161, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2160;s:6:\"height\";i:808;s:4:\"file\";s:38:\"2024/10/website-euro-autumn-2024-1.png\";s:8:\"filesize\";i:859813;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"website-euro-autumn-2024-1-300x112.png\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:85868;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"website-euro-autumn-2024-1-1024x383.png\";s:5:\"width\";i:1024;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:902350;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"website-euro-autumn-2024-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53773;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"website-euro-autumn-2024-1-768x287.png\";s:5:\"width\";i:768;s:6:\"height\";i:287;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:520249;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:39:\"website-euro-autumn-2024-1-1536x575.png\";s:5:\"width\";i:1536;s:6:\"height\";i:575;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1928074;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:39:\"website-euro-autumn-2024-1-2048x766.png\";s:5:\"width\";i:2048;s:6:\"height\";i:766;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3212619;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 39, '_edit_last', '1'),
(163, 39, '_edit_lock', '1728872247:1'),
(164, 40, '_edit_last', '1'),
(165, 40, '_edit_lock', '1728750369:1'),
(166, 56, '_edit_last', '1'),
(167, 56, '_edit_lock', '1728750071:1'),
(168, 39, 'thoi_gian', '5 Ngày 4 Đêm'),
(169, 39, '_thoi_gian', 'field_670aa20e9fae6'),
(170, 39, 'phuong_tien', 'Máy bay, Ô tô'),
(171, 39, '_phuong_tien', 'field_670aa2330226f'),
(172, 39, 'khach_san', '3, 4**** Thái Lan'),
(173, 39, '_khach_san', 'field_670aa251a4041'),
(174, 39, 'diem_nhan_tour', '*** Các điểm nổi bật của chương trình:\r\n<ul>\r\n 	<li>Tặng vé tham quan <strong>Bảo tàng ánh sáng Lighting Art &amp; Vườn khinh khí cầu</strong></li>\r\n 	<li><strong>Wat Arun</strong> - ngôi chùa đẹp nhất nhì Thái Lan cũng là nơi thuê đồ Thái chụp ảnh đẹp nhất Bangkok</li>\r\n 	<li><strong>Chợ nổi 4 miền - </strong>với hàng trăm món ăn mang đậm nét đặc trưng ẩm thực Thái Lan</li>\r\n 	<li><strong>IconSiam</strong> trung tâm mua sắm mới mở gần đây đang rất được du khách và người dân ưa chuộng.</li>\r\n 	<li>Tắm biển tại đảo san hô<strong> Koh Larn</strong> với cát trắng &amp; làn nước trong xanh</li>\r\n 	<li><strong>Trân Bảo Phật Sơn </strong>tượng phật 999kg vàng khắc trên vách núi đá</li>\r\n 	<li><strong>Alcazar Show</strong> – <strong>Show chuyển giới</strong> nổi tiếng Thái Lan, hoành tráng, đặc sắc không thể bỏ qua</li>\r\n 	<li>Dạo thuyền trên sông<strong> Chao Phraya</strong> huyền thoại – xem hiện tượng cá nổi trên sông</li>\r\n 	<li>Thưởng thức<strong> Buffet Quốc Tế 5***** </strong>trên tòa nhà<strong> Baiyoke Sky 86 tầng </strong>với hơn trăm món ăn ngon, ngắm toàn cảnh thủ đô Bangkok từ tòa nhà cao nhất nhì Thái Lan.</li>\r\n 	<li>Viếng<strong> Chùa Wat Traimit, Tứ Diện Phật, Chùa Wat Yannawa …</strong></li>\r\n 	<li><strong>Massage Thái cổ truyền</strong> thư giãn và <strong>thưởng thức cafe dát vàng</strong> theo phong cách quý tộc.</li>\r\n</ul>'),
(175, 39, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(176, 39, 'lich_trinh_tour_0_tieu_de', 'NGÀY 1: SÀI GÒN – BANGKOK – PATTAYA (Ăn Trưa Coupon,  Chiều)'),
(177, 39, '_lich_trinh_tour_0_tieu_de', 'field_670a987ddabe3'),
(178, 39, 'lich_trinh_tour_0_noi_dung', '<strong>05:10 </strong>Trưởng đoàn đón Quý khách tại <strong>Tân Sơn Nhất, </strong>làm thủ tục chuyến bay <strong>Vietjet Air</strong> <strong>VJ801</strong> lúc <strong>08:35 </strong>đi <strong>Bangkok (<em>Hoặc chuyến bay </em></strong><strong><em>FD657</em></strong><strong><em> lúc </em></strong><strong><em>09:45 </em></strong><strong><em>đi Bangkok</em></strong><strong>). </strong>Đến Sân bay quốc tế <strong>Suvarnabhumi</strong>, quý khách làm thủ tục nhập cảnh <strong>Thái Lan</strong>. HDV địa phương đón đoàn dùng bữa trưa coupon trong sân bay và bắt đầu khám phá <strong>“Xứ Sở Chùa Vàng”</strong>.\r\n\r\n<strong> </strong>\r\n\r\n<strong>11:30 </strong>HDV đưa đoàn về phố biển <strong>Pattaya – </strong>được mệnh danh là <strong>“Thành phố không ngủ”</strong>. Pattaya sở hữu những hòn đảo đẹp, bờ biển dài với bãi cát trắng, ban đêm là không khí sôi động, náo nhiệt, nhiều thú vui chơi và trải nghiệm. Đoàn dừng chân tham quan:\r\n<ul>\r\n 	<li><strong>Khao Phra Tamnak/ Khao Phra Yai </strong>khu vực cao nhất Pattaya, du khách có thể ngắm toàn cảnh phố biển từ trên cao.</li>\r\n 	<li>Công ty tặng quý khách một suất<strong> Massage Thái </strong>cổ truyền và <strong>thưởng thức café dát vàng. </strong></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>17:00 </strong>Đoàn về đến khách sạn, nhận phòng nghỉ ngơi. Đến giờ hẹn xe đưa quý khách dùng bữa tối <strong>BBQ hải sản</strong>. Tối quý khách tự do khám phá <strong>walking street</strong> - hoặc tự túc đăng ký các <strong>“Show diễn kỳ thú”</strong> về đêm có một không hai chỉ có tại Pattaya.\r\n\r\n<strong>Nghỉ đêm tại Pattaya</strong>.'),
(179, 39, '_lich_trinh_tour_0_noi_dung', 'field_670a989cdabe4'),
(180, 39, 'lich_trinh_tour_1_tieu_de', 'NGÀY 2: PATTAYA – ĐẢO SAN HÔ – ALCAZAR SHOW/ COLOSSEUM SHOW	 (Ăn ba bữa)'),
(181, 39, '_lich_trinh_tour_1_tieu_de', 'field_670a987ddabe3'),
(182, 39, 'lich_trinh_tour_1_noi_dung', '<strong>07:00</strong> Quý khách dùng điểm tâm sáng tại khách sạn, HDV đưa đoàn ra đảo san hô <strong>Koh Larn</strong> bằng cano cao tốc.\r\n<ul>\r\n 	<li><strong>Đảo Koh Larn </strong>nằm trong vịnh Thái Lan có bờ cát trắng, làn nước trong xanh. Quý khách tự do tắm biển hoặc tự túc đăng ký tham gia các trò chơi ngoài đảo: <em>lặn biển, dù kéo, chuối kéo,… </em>Đến giờ hẹn quý khách trở lại đất liền, sau đó về khách sạn tắm nước ngọt, nghỉ ngơi.</li>\r\n</ul>\r\n<strong> </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong> </strong>\r\n\r\n<strong>13:30 </strong>Đoàn dùng cơm trưa và tham quan buổi chiều:\r\n<ul>\r\n 	<li><strong>Bào tàng Trầm Hương – </strong>quý khách sẽ được chiêm ngưỡng và tìm hiểu những kiến thức về các sản phẩm quý liên quan đến sức khỏe, phong thủy</li>\r\n 	<li><strong>Trân Bảo Phật Sơn – </strong>là ngọn <strong>núi Phật Vàng</strong> độc đáo với hình tượng Đức Phật dược khắc laser thẳng vào núi và dát vàng tổng số lượng vàng lên tới 999kg 24k.</li>\r\n 	<li>Trung tâm nghiên cứu giấc ngủ<strong> Hoàng Gia Thái Lan</strong> tìm hiểu cách phòng các bệnh liên quan đến giấc ngủ cột sống, tăng cường thể lực, cải thiện tuổi thọ con người và nâng cao giá trị cuộc sống.</li>\r\n 	<li><strong>Chợ nổi 4 miền</strong> – khu chợ nhân tạo với hàng trăm món ăn mang đậm nét đặc trưng của Thái Lan</li>\r\n</ul>\r\n<strong>17:00</strong> Sau bữa cơm chiều – Quý khách xem chương trình đại nhạc hội nổi tiếng Thái Lan <strong>Alcazar/ Colosseum Show</strong> – Show diễn của các vũ công chuyển giới xinh đẹp, chụp ảnh cùng các vũ công. Sau đó về khách sạn nghỉ ngơi, tự do khám Pattaya về đêm.\r\n\r\n<strong>Nghỉ đêm tại Pattaya</strong>'),
(183, 39, '_lich_trinh_tour_1_noi_dung', 'field_670a989cdabe4'),
(184, 39, 'lich_trinh_tour_2_tieu_de', 'NGÀY 3: PATTAYA – BANGKOK – ICON SIAM     (Ăn ba bữa)'),
(185, 39, '_lich_trinh_tour_2_tieu_de', 'field_670a987ddabe3'),
(186, 39, 'lich_trinh_tour_2_noi_dung', '<strong>07:30</strong> Quý khách dùng điểm tâm sáng, trả phòng khách sạn. Tạm biệt <strong>thành phố Pattaya</strong> – thành phố không ngủ để trở về <strong>thủ đô Bangkok – </strong>thành phố của những thiên thần, dừng chân tham quan:\r\n<ul>\r\n 	<li><strong>Trại rắn – </strong>đến đây quý khách sẽ được tìm hiểu về điểm nổi bật của nền y học cổ truyền Thái</li>\r\n 	<li><strong>Bảo tàng ánh sáng Lighting Art &amp; Vườn khinh khí cầu</strong> một khu phức hợp mới với những sự sáng tạo; kết hợp giữa sự cổ điển và công nghệ hiện đại từ ánh đèn lung linh, đến những chiếc khinh khí cầu đầy màu sắc và những chiếc xe hơi cổ xưa.</li>\r\n</ul>\r\n<strong>12:30</strong> Đoàn dùng bữa trưa, sau đó tham quan:\r\n<ul>\r\n 	<li><strong>Icon Siam</strong> hiện là trung tâm mua sắm “khủng nhất” ở Bangkok. Rộng hơn 80.000m2 nằm ngay bên bờ Sông Chao Phraya. Vì thế được mệnh danh là <strong>“Mother of all malls in Thailand”</strong>. Đặc biệt Tầng G tại Icon Siam - là nơi tái hiện lại chợ nổi Thái Lan với rất nhiều món ăn vặt nổi tiếng: xôi xoài, som tam (gỏi đu đủ), tomyum (lẩu thái), Pad Thái (hủ tiếu xào), tôm sống, mực sống vừa ngon và rẻ, lại có máy lạnh và view sông nước mát mẻ,…</li>\r\n</ul>\r\n<strong>17:30 </strong>Đến giờ hẹn xe và HDV đón đoàn về khách sạn dùng bữa tối, nhận phòng nghỉ ngơi sau đó Quý khách tự do khám phá thành phố Bangkok về đêm.\r\n<ul>\r\n 	<li><strong>Bangkok</strong> một trong những thủ đô sầm uất &amp; nhộn nhịp bậc nhất Đông Nam Á. Được mệnh danh là thiên đường mua sắm, Bangkok sôi động vào ban ngày lẫn về đêm. Khi trời tắt nắng, thủ đô chuyển mình với những khu mua sắm, ăn uống bắt đầu nhộn nhịp. Đi chợ đêm Bangkok là \"đặc sản\" dành riêng cho ai thích đi Thái Lan. Khi phố xá lên đèn, hãy lên đồ và chuẩn bị tinh thần cho “một đêm không ngủ” ở Bangkok nhé! <strong>Nghỉ đêm tại Bangkok.</strong></li>\r\n</ul>'),
(187, 39, '_lich_trinh_tour_2_noi_dung', 'field_670a989cdabe4'),
(188, 39, 'lich_trinh_tour_3_tieu_de', 'NGÀY 4: BANGKOK – BAIYOKE  SKY – SHOPPING	(Ăn Sáng, Trưa, Chiều tự túc)'),
(189, 39, '_lich_trinh_tour_3_tieu_de', 'field_670a987ddabe3'),
(190, 39, 'lich_trinh_tour_3_noi_dung', '<strong>07:00 </strong>Quý khách dùng điểm tâm sáng, bắt đầu tham quan:\r\n<ul>\r\n 	<li>Viếng <strong>Chùa Thuyền - Wat Yannawa</strong> nơi có nhiều xá lợi sư, tăng đắc đạo <strong>hoặc</strong> <strong>Chùa Phật Vàng - Wat Traimit</strong> nổi tiếng ở Thái Lan. Không phải tự nhiên du khách lại gọi với cái tên là Phật Vàng mà do ngôi chùa là nơi lưu giữ bức tượng bằng vàng nguyên khối vô cùng quý giá nặng 5,5 tấn vàng.</li>\r\n 	<li>Dạo thuyền trên <strong>Sông Chao Phraya</strong> huyền thoại, xem hiện tượng cá nổi trên sông kỳ thú</li>\r\n</ul>\r\n<ul>\r\n 	<li>Viếng thăm <strong>Wat Arun </strong>không chỉ là ngôi chùa với kiến trúc khảm sành sứ đặc sắc mà còn là ngôi chùa linh thiêng bậc nhất xứ sở chùa vàng Thái Lan. Ngôi chùa này còn có một tên gọi khác <strong>chùa Bình Minh</strong> vì mỗi buổi sáng, đây là nơi đầu tiên đón ánh sáng mặt trời mọc bên bờ sông Chao Phraya. Ngôi chùa mà quý khách có thể thuê trang phục Thái Lan truyền thống chụp ảnh rất đẹp.</li>\r\n</ul>\r\n<strong> </strong>\r\n\r\n<strong>12:15 </strong>Dùng bữa trưa <strong>Buffet 5***** </strong>tại nhà hàng xoay<strong> Baiyoke Sky 86 Tầng</strong> - với hơn 150 món theo kiểu Thái, Á, Âu. Riêng tầng 84 dành riêng cho những du khách muốn ngắm BangKok chỉ trong 15 phút với 52 quận huyện, bạn hoàn toàn có thể có một trải nghiệm đáng nhớ khi đứng ở một vị trí cao nhất tại Thái Lan đưa tầm mắt ra xa, một trải nghiệm khác biệt mà bao du khách mơ ước được một lần đặt chân đến đây.\r\n\r\n<strong> </strong>\r\n\r\n<strong>14:00</strong> Sau bữa trưa, Quý khách sẽ được đến viếng <strong>miếu Phật Bốn Mặt</strong> linh thiêng tọa lạc ngay tại trung tâm thủ đô Bangkok. Sau đó tự do tham quan mua sắm tại các trung tâm mua sắm &amp; siêu thị như <strong>Big C, Central World, Siam Paragon, </strong>chợ sỉ<strong> Platinum</strong>, <strong><em>tự túc khám phá ẩm thực</em></strong><strong> <em>Thái Lan</em></strong><strong><em>. </em></strong>Đến giờ hẹn xe và HDV đón đoàn về khách sạn, nhận phòng nghỉ ngơi. <strong>Nghỉ đêm tại Bangkok.</strong>'),
(191, 39, '_lich_trinh_tour_3_noi_dung', 'field_670a989cdabe4'),
(192, 39, 'lich_trinh_tour', '5'),
(193, 39, '_lich_trinh_tour', 'field_670a9849dabe2'),
(194, 63, '_edit_last', '1'),
(195, 63, '_edit_lock', '1728750478:1'),
(196, 39, 'lich_trinh_tour_4_tieu_de', 'NGÀY 5: BANGKOK – SÀI GÒN (Ăn sáng, )'),
(197, 39, '_lich_trinh_tour_4_tieu_de', 'field_670a987ddabe3'),
(198, 39, 'lich_trinh_tour_4_noi_dung', '<strong> </strong>\r\n\r\n<strong>06:00</strong> Quý khách dùng điểm tâm sáng tại khách sạn, làm thủ tục trả phòng. Đoàn khởi hành ra sân bay <strong>Suvarnabhumi</strong>, HDV làm thủ tục cho quý khách đáp chuyến <strong>Vietjet Air</strong> <strong>VJ802</strong> lúc <strong>11:30</strong> về lại <strong>Sài Gòn (<em>Hoặc chuyến bay </em></strong><strong><em>FD654</em></strong><strong><em> lúc </em></strong><strong><em>15:40 </em></strong><strong><em>về lại Sài Gòn</em></strong><strong>).</strong>\r\n\r\n<strong>13:00 </strong>Đến sân bay <strong>Tân Sơn Nhất</strong>, quý khách làm thủ tục nhập cảnh, nhận hành lý, trưởng đoàn nói lời chia tay quý khách và hẹn gặp lại trong các chuyến đi sau !'),
(199, 39, '_lich_trinh_tour_4_noi_dung', 'field_670a989cdabe4'),
(200, 65, '_edit_last', '1'),
(201, 65, '_edit_lock', '1728751524:1'),
(202, 39, 'thong_tin_tour', ''),
(203, 39, '_thong_tin_tour', 'field_670aa69097dea'),
(204, 30, 'diem_nhan_tour', '<table width=\"775\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"133\"><strong>NGÀY KHỞI HÀNH</strong></td>\r\n<td rowspan=\"3\" width=\"270\"><strong>CHUYẾN BAY</strong></td>\r\n<td colspan=\"3\" width=\"372\"><strong>GIÁ TOUR TRỌN GÓI (VND)</strong></td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\" width=\"126\"><strong>NGƯỜI LỚN</strong>\r\n\r\n<strong>(Trên 11 Tuổi)</strong></td>\r\n<td width=\"132\"><strong>TRẺ EM</strong>\r\n\r\n<strong>(2 - 11 Tuổi)</strong></td>\r\n<td width=\"114\"><strong>EM BÉ</strong>\r\n\r\n<strong>(Dưới 2 Tuổi)</strong></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"246\"><strong>Ngủ chung giường người lớn</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>09/10/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></td>\r\n<td width=\"126\"><strong>18.390.000</strong></td>\r\n<td width=\"132\"><strong>14.992.500</strong></td>\r\n<td width=\"114\"><strong>5.517.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>19/10/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></td>\r\n<td width=\"126\"><strong>18.390.000</strong></td>\r\n<td width=\"132\"><strong>14.992.500</strong></td>\r\n<td width=\"114\"><strong>5.517.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>26/10/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></td>\r\n<td width=\"126\"><strong>18.390.000</strong></td>\r\n<td width=\"132\"><strong>14.992.500</strong></td>\r\n<td width=\"114\"><strong>5.517.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>13/11/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>18.990.000</strong></td>\r\n<td width=\"132\"><strong>15.442.500</strong></td>\r\n<td width=\"114\"><strong>5.697.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>20/11/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>18.990.000</strong></td>\r\n<td width=\"132\"><strong>15.442.500</strong></td>\r\n<td width=\"114\"><strong>5.697.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>27/11/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>18.990.000</strong></td>\r\n<td width=\"132\"><strong>15.442.500</strong></td>\r\n<td width=\"114\"><strong>5.697.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>04/12/2024              </strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>18.990.000</strong></td>\r\n<td width=\"132\"><strong>15.442.500</strong></td>\r\n<td width=\"114\"><strong>5.697.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>22/12/2024       </strong><strong>NOEL</strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>20.990.000</strong></td>\r\n<td width=\"132\"><strong>16.942.500</strong></td>\r\n<td width=\"114\"><strong>6.297.000</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\"><strong>28/12/2024       </strong><strong>    TẾT TÂY</strong></td>\r\n<td width=\"270\"><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></td>\r\n<td width=\"126\"><strong>21.990.000</strong></td>\r\n<td width=\"132\"><strong>17.692.500</strong></td>\r\n<td width=\"114\"><strong>6.597.000</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(205, 30, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(206, 30, 'thoi_gian', ''),
(207, 30, '_thoi_gian', 'field_670aa20e9fae6'),
(208, 30, 'phuong_tien', ''),
(209, 30, '_phuong_tien', 'field_670aa2330226f'),
(210, 30, 'khach_san', ''),
(211, 30, '_khach_san', 'field_670aa251a4041'),
(212, 30, 'lich_trinh_tour', ''),
(213, 30, '_lich_trinh_tour', 'field_670a9849dabe2'),
(214, 30, 'thong_tin_tour', ''),
(215, 30, '_thong_tin_tour', 'field_670aa69097dea'),
(216, 1, '_edit_lock', '1728862633:1'),
(217, 1, '_edit_last', '1'),
(234, 78, '_edit_last', '1'),
(235, 78, '_edit_lock', '1728862872:1'),
(236, 79, '_edit_last', '1'),
(237, 79, '_edit_lock', '1728890979:1'),
(238, 79, 'diem_nhan_tour', 'Hàn Quốc luôn là một điểm đến thú vị trong cả 4 mùa, mỗi mùa xứ sở kim chi này sẽ khoác lên mình những sắc màu khác nhau, tạo nên nét riêng không lẫn vào đâu được. Từ giữa tháng 10 cũng đương độ giữa thu, tiết trời lúc bấy giờ mát mẻ trông thấy, những chiếc lá bắt đầu chuyển vàng, đỏ, rực rỡ cả góc trời. Hàn Quốc luôn là điểm đến trong mơ, hãy cùng chúng tôi khám phá lịch trình mới mẻ, hấp dẫn này nhé:\r\nCác điểm nổi bật trong chương trình:\r\n Đảo Nami – là điểm nhấn vô cùng nổi bật tại Hàn Quốc khi là phim trường đã từng xuất hiện trong bộ phim “Bản tình ca mùa Đông” đình đám. Mùa đông hòn đảo khoác lên mình lớp tuyết trắng xóa. Giữa khung cảnh như chốn thần tiên này bạn có thể tìm được cho mình những bức ảnh đẹp như tranh vẽ đến mức “vô thực”.\r\n Tháp NamSan – ngắm toàn cảnh thủ đô Seoul, gắn khóa tình yêu với người mình thương\r\n Công viên Everland – một trong mười công viên giải trí thu hút nhất thế giới, là địa điểm lý tưởng để khám phá về lịch sử, lễ hội và văn hóa của mọi vùng miền trên thế giới.\r\n Cung điện Gyeongbokgung - được xây dựng dưới triều đại Joseon, kiến trúc cực đẹp\r\n Trường đại học Ehwa – Trường đại học nữ sinh lớn nhất châu Á và thế giới, nơi đào tạo ra nhiều vị lãnh đạo nữ của Hàn Quốc.\r\n Rừng seoul - Seoul Forest nổi tiếng với con đường hoa đào, rừng cây lá đỏ cùng nhiều không gian xanh tuyệt đẹp.\r\n Làng Bukchon Hanok – Ngôi làng cổ đẹp nhất Seoul với bề dày lịch sử hơn 600 tuổi, ghi đậm dấu ấn về lịch sử, văn hóa của triều đại Joseon xưa.\r\n Trải nghiệm làm Kim pắp, mặc Hanbok\r\n Cửa hàng tinh dầu thông đỏ, nhân sâm – đặc sản đặc biệt của Hàn Quốc không thể bỏ lỡ\r\n Chợ đêm Myeongdong, Hongdae thưởng thức đặc sản ẩm thực đường phố Hàn Quốc, cũng như thiên đường shopping quần áo thời trang “siêu sịn”.'),
(239, 79, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(240, 79, 'thoi_gian', ''),
(241, 79, '_thoi_gian', 'field_670aa20e9fae6'),
(242, 79, 'phuong_tien', ''),
(243, 79, '_phuong_tien', 'field_670aa2330226f'),
(244, 79, 'khach_san', ''),
(245, 79, '_khach_san', 'field_670aa251a4041'),
(246, 79, 'lich_trinh_tour', ''),
(247, 79, '_lich_trinh_tour', 'field_670a9849dabe2'),
(248, 79, 'thong_tin_tour', ''),
(249, 79, '_thong_tin_tour', 'field_670aa69097dea'),
(250, 80, '_edit_last', '1'),
(251, 80, '_edit_last', '1'),
(252, 80, '_edit_lock', '1728871638:1'),
(253, 80, '_edit_lock', '1728871638:1'),
(254, 80, 'diem_nhan_tour', '	Khách sạn 3*** Nhật Bản - tiêu chuẩn 2 khách người lớn/phòng, ngủ ghép chung ba mẹ.\r\no	Trường hợp khách đi lẻ thì sẽ ngủ ghép phòng 2 với khách đi lẻ khác cùng giới tính, hoặc phụ thu phòng đơn nếu không có khách ghép lẻ cùng giới tính đi cùng đoàn, hoặc quý khách muốn ngủ một mình một phòng suốt tour (tham khảo với nhân viên tư vấn trước).\r\n'),
(255, 80, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(256, 80, 'thoi_gian', ''),
(257, 80, '_thoi_gian', 'field_670aa20e9fae6'),
(258, 80, 'phuong_tien', ''),
(259, 80, '_phuong_tien', 'field_670aa2330226f'),
(260, 80, 'khach_san', ''),
(261, 80, '_khach_san', 'field_670aa251a4041'),
(262, 80, 'lich_trinh_tour', ''),
(263, 80, '_lich_trinh_tour', 'field_670a9849dabe2'),
(264, 80, 'thong_tin_tour', ''),
(265, 80, '_thong_tin_tour', 'field_670aa69097dea'),
(266, 81, '_edit_last', '1'),
(267, 81, 'diem_nhan_tour', '	Tắm suối khoáng nóng Onsen tại khách sạn – Được ví như một “món quà từ thiên nhiên – một lần tắm onsen sẽ trẻ lại được ba năm”. Onsen không chỉ đem đến nhiều tác dụng cho sức khỏe mà còn trở thành biểu tượng văn hóa của người Nhật. Người Nhật có câu nói rằng: Đến Nhật mà chưa tắm Onsen là chưa tới Nhật !'),
(268, 81, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(269, 81, 'thoi_gian', ''),
(270, 81, '_thoi_gian', 'field_670aa20e9fae6'),
(271, 81, 'phuong_tien', ''),
(272, 81, '_phuong_tien', 'field_670aa2330226f'),
(273, 81, 'khach_san', ''),
(274, 81, '_khach_san', 'field_670aa251a4041'),
(275, 81, 'lich_trinh_tour', ''),
(276, 81, '_lich_trinh_tour', 'field_670a9849dabe2'),
(277, 81, 'thong_tin_tour', ''),
(278, 81, '_thong_tin_tour', 'field_670aa69097dea'),
(279, 81, '_edit_lock', '1728871634:1'),
(280, 78, '_wp_trash_meta_status', 'draft'),
(281, 78, '_wp_trash_meta_time', '1728863232'),
(282, 78, '_wp_desired_post_slug', ''),
(283, 82, '_edit_last', '1'),
(284, 82, '_edit_lock', '1728871627:1'),
(285, 82, 'diem_nhan_tour', '	Điểm nổi bật:\r\n	Thưởng thức trọn vẹn vẻ đẹp mùa đông Nhật Bản\r\n	Trải nghiệm ẩm thực Nhật Bản với thực đơn phong phú, thưởng thức đặc sản bò Hida\r\n	Thăm làng cổ tích Shirakawa-go – nơi ra đời bộ truyện tranh Doraemon\r\n	Lưu trú khách sạn tiêu chuẩn 4 sao (1 đêm ở tại Tokyo và 1 đêm lữ quán Ryokan)\r\n	Trải nghiệm tắm Osen – một kiểu ôn tuyền thủy liệu pháp của người Nhật\r\n	Tặng vé trải nghiệm tàu Shinkansen.\r\n'),
(286, 82, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(287, 82, 'thoi_gian', ''),
(288, 82, '_thoi_gian', 'field_670aa20e9fae6'),
(289, 82, 'phuong_tien', ''),
(290, 82, '_phuong_tien', 'field_670aa2330226f'),
(291, 82, 'khach_san', ''),
(292, 82, '_khach_san', 'field_670aa251a4041'),
(293, 82, 'lich_trinh_tour', ''),
(294, 82, '_lich_trinh_tour', 'field_670a9849dabe2'),
(295, 82, 'thong_tin_tour', ''),
(296, 82, '_thong_tin_tour', 'field_670aa69097dea'),
(297, 83, '_edit_last', '1'),
(298, 83, '_edit_lock', '1728897380:1'),
(299, 83, 'diem_nhan_tour', '	Quý khách tiếp tục viếng “Wat phra yai” Chùa Phật lớn, nằm trên đỉnh của Đồi Pratumnak, giữa Pattaya và Bãi biển Jomtien, bạn không thể không nhận thấy một bức tượng Phật khổng lồ cao 18 mét hiện ra qua những tán cây, Tượng Phật Lớn này - lớn nhất trong vùng - là điểm nổi bật của Wat Phra Yai, một ngôi chùa được xây dựng vào những năm 1940 khi Pattaya chỉ là một làng chài, Tượng Phật Lớn cực kỳ nổi tiếng nó cũng được người dân địa phương đến cầu nguyện tại đây.'),
(300, 83, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(301, 83, 'thoi_gian', ''),
(302, 83, '_thoi_gian', 'field_670aa20e9fae6'),
(303, 83, 'phuong_tien', ''),
(304, 83, '_phuong_tien', 'field_670aa2330226f'),
(305, 83, 'khach_san', ''),
(306, 83, '_khach_san', 'field_670aa251a4041'),
(307, 83, 'lich_trinh_tour', ''),
(308, 83, '_lich_trinh_tour', 'field_670a9849dabe2'),
(309, 83, 'thong_tin_tour', ''),
(310, 83, '_thong_tin_tour', 'field_670aa69097dea'),
(311, 84, '_edit_last', '1'),
(312, 84, '_edit_lock', '1728871618:1'),
(313, 84, 'diem_nhan_tour', '	Miracle Garden - Khu Vườn Kỳ Diệu và được mệnh danh là\r\n\r\n“hòn ngọc xanh mát” giữa sa mạc khô cằn, được bình chọn là vườn hoa lớn nhất thế giới với diện tích lên đến hơn 70.000 mét vuông. Khu vườn hội tụ 45 triệu bông hoa đủ màu sắc, chủng loại. Những bông hoa không chỉ được trồng thành từng cụm mà còn được sử dụng để tạo thành những tác phẩm nghệ thuật tuyệt đẹp như kim tự tháp, thảm hoa, ô tô hoa…\r\n'),
(314, 84, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(315, 84, 'thoi_gian', ''),
(316, 84, '_thoi_gian', 'field_670aa20e9fae6'),
(317, 84, 'phuong_tien', ''),
(318, 84, '_phuong_tien', 'field_670aa2330226f'),
(319, 84, 'khach_san', ''),
(320, 84, '_khach_san', 'field_670aa251a4041'),
(321, 84, 'lich_trinh_tour', ''),
(322, 84, '_lich_trinh_tour', 'field_670a9849dabe2'),
(323, 84, 'thong_tin_tour', ''),
(324, 84, '_thong_tin_tour', 'field_670aa69097dea'),
(325, 85, '_edit_last', '1'),
(326, 85, '_edit_lock', '1728871611:1'),
(327, 85, 'diem_nhan_tour', 'Hồng Kông là một điểm đến du lịch độc đáo, nơi sự giao thoa giữa văn hóa phương Đông và phương Tây diễn ra một cách hài hòa. Với những tòa nhà chọc trời hiện đại, bến cảng lấp lánh và các ngôi chùa cổ kính, Hồng Kông mang đến trải nghiệm đa dạng cho mọi du khách. Bạn có thể chiêm ngưỡng khung cảnh ngoạn mục từ Đỉnh Victoria, khám phá khu phố nhộn nhịp Tsim Sha Tsui, hoặc tận hưởng không gian yên bình tại Ngong Ping với Đại Tượng Phật. Bên cạnh đó, Disneyland Hồng Kông là lựa chọn lý tưởng cho gia đình, trong khi Lan Kwai Fong thu hút những ai yêu thích cuộc sống về đêm sôi động. Ngoài các điểm tham quan nổi tiếng, ẩm thực Hồng Kông với dim sum và các món ăn đường phố cũng là một điểm nhấn không thể bỏ qua. Tất cả những yếu tố này đã làm cho Hồng Kông trở thành một trong những điểm du lịch hấp dẫn nhất châu Á.'),
(328, 85, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(329, 85, 'thoi_gian', ''),
(330, 85, '_thoi_gian', 'field_670aa20e9fae6'),
(331, 85, 'phuong_tien', ''),
(332, 85, '_phuong_tien', 'field_670aa2330226f'),
(333, 85, 'khach_san', ''),
(334, 85, '_khach_san', 'field_670aa251a4041'),
(335, 85, 'lich_trinh_tour', ''),
(336, 85, '_lich_trinh_tour', 'field_670a9849dabe2'),
(337, 85, 'thong_tin_tour', ''),
(338, 85, '_thong_tin_tour', 'field_670aa69097dea'),
(339, 86, '_edit_last', '1'),
(340, 86, '_wp_old_date', '2024-10-13'),
(341, 86, 'diem_nhan_tour', 'Chuyến du lịch kết hợp giữa Hồng Kông, Thâm Quyến, và Quảng Châu là một hành trình đầy ấn tượng, mang lại cho du khách cái nhìn toàn diện về miền Nam Trung Quốc với sự pha trộn giữa hiện đại và truyền thống. Hồng Kông nổi bật với những tòa nhà chọc trời, Đỉnh Victoria hùng vĩ và nhịp sống không ngừng nghỉ, bên cạnh nền ẩm thực phong phú và các điểm mua sắm sầm uất. Chỉ cách đó một đoạn ngắn, Thâm Quyến chào đón du khách với sự phát triển vượt bậc, đặc biệt qua các công trình hiện đại như Công viên Cửa sổ Thế giới và thiên đường mua sắm Đông Môn. Quảng Châu, thành phố giàu truyền thống lịch sử, mang đến những điểm tham quan như Công viên Việt Tú và Lăng mộ Nam Việt Vương, đậm chất cổ kính giữa không gian đô thị sôi động. Ba thành phố này, với những nét đặc trưng riêng biệt, kết hợp tạo nên một chuyến hành trình hấp dẫn, đa sắc màu và khó quên dành cho mọi du khách.'),
(342, 86, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(343, 86, 'thoi_gian', ''),
(344, 86, '_thoi_gian', 'field_670aa20e9fae6'),
(345, 86, 'phuong_tien', ''),
(346, 86, '_phuong_tien', 'field_670aa2330226f'),
(347, 86, 'khach_san', ''),
(348, 86, '_khach_san', 'field_670aa251a4041'),
(349, 86, 'lich_trinh_tour', ''),
(350, 86, '_lich_trinh_tour', 'field_670a9849dabe2'),
(351, 86, 'thong_tin_tour', ''),
(352, 86, '_thong_tin_tour', 'field_670aa69097dea'),
(353, 86, '_edit_lock', '1728889692:1'),
(354, 87, '_edit_last', '1'),
(355, 87, '_edit_lock', '1728871455:1'),
(356, 87, 'diem_nhan_tour', 'Chuyến du lịch từ TP.HCM đến Bangkok và Ayutthaya mang đến trải nghiệm phong phú từ sự sôi động của Bangkok đến nét cổ kính của Ayutthaya. Tại Bangkok, du khách sẽ khám phá Cung điện Hoàng gia, Chùa Phật Ngọc và thưởng thức ẩm thực đường phố. Tiếp đến, hành trình đến Ayutthaya, di sản văn hóa thế giới, với những ngôi đền cổ kính và lịch sử vàng son, đưa du khách ngược dòng thời gian khám phá vương triều cổ đại của Thái Lan.'),
(357, 87, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(358, 87, 'thoi_gian', ''),
(359, 87, '_thoi_gian', 'field_670aa20e9fae6'),
(360, 87, 'phuong_tien', ''),
(361, 87, '_phuong_tien', 'field_670aa2330226f'),
(362, 87, 'khach_san', ''),
(363, 87, '_khach_san', 'field_670aa251a4041'),
(364, 87, 'lich_trinh_tour', ''),
(365, 87, '_lich_trinh_tour', 'field_670a9849dabe2'),
(366, 87, 'thong_tin_tour', ''),
(367, 87, '_thong_tin_tour', 'field_670aa69097dea'),
(368, 88, '_edit_last', '1'),
(369, 88, 'diem_nhan_tour', '✔ Điểm nổi bật: \r\n	Tặng 01 bữa “GÀ NƯỚNG LU” \r\n	Tặng 01 bữa”TIỆC HẤP”\r\n	Tặng Đèn Thiên Đăng tại “PHỐ CỔ THẬP PHẦN” (04 khách/đèn).\r\n	Tặng Vé du thuyền dạo quanh “NHẬT NGUYỆT ĐÀM”. \r\n	Chiêm bái “Phật Quang Sơn Tự’’ Thủ đô Phật Giáo Đài Nam vô cùng hùng vĩ. \r\n	Đài Xuân Thu & Tháp Long Hổ’’.\r\n	DIY bánh dứa tại “Lâu đài Dứa Vàng Vigor Kobo’’. Và thưởng thức bánh tự tay mình.\r\n	Tham quan city tour gồm “Tòa tháp Taipei 101’’ là niềm tự hào của dân địa phương và “Nhà tưởng niệm Tưởng Giới Thạch’’ vvv...\r\n	Tham quan “ Dương Minh Sơn” là một trong 8 công viên nổi tiếng của Đài Loan\r\n	Chụp ảnh tại tòa nhà trung tâm âm nhạc Cao Hùng (Kaohsiung Music Center - Nơi đây là khu biểu diễn âm nhạc kết hợp cảnh đẹp của cảng và vịnh, tạo nên một địa điểm thăm quan và giải trí mới).\r\n	Khám phá và thưởng thức các món ăn vặt, gà rán, đậu hủ thúi vv… tại các chợ đêm Taiwan..\r\n'),
(370, 88, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(371, 88, 'thoi_gian', ''),
(372, 88, '_thoi_gian', 'field_670aa20e9fae6'),
(373, 88, 'phuong_tien', ''),
(374, 88, '_phuong_tien', 'field_670aa2330226f'),
(375, 88, 'khach_san', ''),
(376, 88, '_khach_san', 'field_670aa251a4041'),
(377, 88, 'lich_trinh_tour', ''),
(378, 88, '_lich_trinh_tour', 'field_670a9849dabe2'),
(379, 88, 'thong_tin_tour', ''),
(380, 88, '_thong_tin_tour', 'field_670aa69097dea'),
(381, 88, '_edit_lock', '1728871592:1'),
(382, 89, '_wp_attached_file', '2024/10/photo_2024-10-14_07-32-54.jpg'),
(383, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1192;s:6:\"height\";i:853;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_07-32-54.jpg\";s:8:\"filesize\";i:193557;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-32-54-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14835;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"photo_2024-10-14_07-32-54-1024x733.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:733;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113770;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-32-54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6286;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-32-54-768x550.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72150;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 39, '_thumbnail_id', '89'),
(385, 90, '_wp_attached_file', '2024/10/photo_2024-10-14_07-38-44.jpg'),
(386, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1108;s:6:\"height\";i:763;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_07-38-44.jpg\";s:8:\"filesize\";i:330162;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-38-44-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24930;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"photo_2024-10-14_07-38-44-1024x705.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:705;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:195134;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-38-44-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10383;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_07-38-44-768x529.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:529;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124662;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 79, '_thumbnail_id', '90'),
(388, 91, '_wp_attached_file', '2024/10/photo_2024-10-14_08-54-46.jpg'),
(389, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1214;s:6:\"height\";i:721;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_08-54-46.jpg\";s:8:\"filesize\";i:328084;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-54-46-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19470;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"photo_2024-10-14_08-54-46-1024x608.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165330;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-54-46-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8803;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-54-46-768x456.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104400;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 80, '_thumbnail_id', '91'),
(391, 92, '_wp_attached_file', '2024/10/photo_2024-10-14_08-55-32.png'),
(392, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:958;s:6:\"height\";i:640;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_08-55-32.png\";s:8:\"filesize\";i:873801;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-55-32-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:122843;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-55-32-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47797;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-55-32-768x513.png\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:669193;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 81, '_thumbnail_id', '92'),
(394, 93, '_wp_attached_file', '2024/10/photo_2024-10-14_08-57-41.jpg'),
(395, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1183;s:6:\"height\";i:708;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_08-57-41.jpg\";s:8:\"filesize\";i:216784;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-57-41-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17797;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"photo_2024-10-14_08-57-41-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132094;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-57-41-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8349;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_08-57-41-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86316;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(396, 82, '_thumbnail_id', '93'),
(397, 94, '_wp_attached_file', '2024/10/s.jpg'),
(398, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:13:\"2024/10/s.jpg\";s:8:\"filesize\";i:212474;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"s-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14289;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6497;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"s-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69547;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 83, '_thumbnail_id', '94'),
(400, 95, '_wp_attached_file', '2024/10/photo_2024-10-14_09-03-02.jpg'),
(401, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:710;s:6:\"height\";i:447;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_09-03-02.jpg\";s:8:\"filesize\";i:128049;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_09-03-02-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20102;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_09-03-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10013;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 84, '_thumbnail_id', '95'),
(403, 96, '_edit_last', '1'),
(404, 96, '_edit_lock', '1728873636:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(405, 96, 'diem_nhan_tour', 'Du lịch Côn Đảo những năm gần đây không chỉ nổi tiếng với những địa chỉ tâm linh như Nghĩa Trang Hàng Dương, Mộ Cô Sáu, Trại Phú Hải...mà còn nổi tiếng với những bãi biển hoang sơ, thiên nhiên kỳ thú, đặc biệt nơi đây còn là nơi bảo tồn loại rùa biển quý hiếm duy nhất của đất nước ta...Những chuyến bay thẳng từ Hà Nội, Hải Phòng, Vinh đến Côn Đảo đã làm gần hơn chặng đường xa đối với du khách tại Miền Bắc có mong muốn được đến Côn Đảo.'),
(406, 96, '_diem_nhan_tour', 'field_670aa3b70e19a'),
(407, 96, 'thoi_gian', ''),
(408, 96, '_thoi_gian', 'field_670aa20e9fae6'),
(409, 96, 'phuong_tien', ''),
(410, 96, '_phuong_tien', 'field_670aa2330226f'),
(411, 96, 'khach_san', ''),
(412, 96, '_khach_san', 'field_670aa251a4041'),
(413, 96, 'lich_trinh_tour', ''),
(414, 96, '_lich_trinh_tour', 'field_670a9849dabe2'),
(415, 96, 'thong_tin_tour', ''),
(416, 96, '_thong_tin_tour', 'field_670aa69097dea'),
(417, 98, '_edit_last', '1'),
(418, 98, '_edit_lock', '1728890947:1'),
(419, 39, 'tour_hot_title', '2024'),
(420, 39, '_tour_hot_title', 'field_670c7ef030dc0'),
(421, 39, 'show_tour_hot', 'a:1:{i:0;s:3:\"red\";}'),
(422, 39, '_show_tour_hot', 'field_670c7f2c30dc1'),
(423, 96, 'tour_hot_title', '2024'),
(424, 96, '_tour_hot_title', 'field_670c7ef030dc0'),
(425, 96, 'show_tour_hot', 'a:1:{i:0;s:3:\"yes\";}'),
(426, 96, '_show_tour_hot', 'field_670c7f2c30dc1'),
(427, 83, 'tour_hot_title', ''),
(428, 83, '_tour_hot_title', 'field_670c7ef030dc0'),
(429, 83, 'show_tour_hot', 'a:1:{i:0;s:3:\"yes\";}'),
(430, 83, '_show_tour_hot', 'field_670c7f2c30dc1'),
(431, 103, '_edit_last', '1'),
(432, 103, '_edit_lock', '1728875295:1'),
(438, 86, 'show_tour_hot', 'a:1:{i:0;s:3:\"yes\";}'),
(439, 86, '_show_tour_hot', 'field_670c7f2c30dc1'),
(440, 79, 'show_tour_hot', 'a:1:{i:0;s:3:\"yes\";}'),
(441, 79, '_show_tour_hot', 'field_670c7f2c30dc1'),
(442, 106, '_edit_last', '1'),
(443, 106, '_edit_lock', '1728897405:1'),
(444, 107, '_edit_last', '1'),
(445, 107, '_edit_lock', '1728898090:1'),
(446, 108, '_wp_attached_file', '2024/10/legacyhop1.jpeg'),
(447, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1067;s:4:\"file\";s:23:\"2024/10/legacyhop1.jpeg\";s:8:\"filesize\";i:344238;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"legacyhop1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21270;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"legacyhop1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166103;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"legacyhop1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9507;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"legacyhop1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103038;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"legacyhop1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:312970;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 107, '_thumbnail_id', '108'),
(449, 109, '_edit_last', '1'),
(450, 109, '_edit_lock', '1728898256:1'),
(451, 110, '_wp_attached_file', '2024/10/photo_2024-10-14_16-33-05.jpg'),
(452, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:511;s:6:\"height\";i:332;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_16-33-05.jpg\";s:8:\"filesize\";i:36472;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-33-05-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12554;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-33-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6181;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 109, '_thumbnail_id', '110'),
(454, 111, '_edit_last', '1'),
(455, 111, '_edit_lock', '1728898299:1'),
(456, 112, '_wp_attached_file', '2024/10/photo_2024-10-14_16-33-54.jpg'),
(457, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:539;s:6:\"height\";i:333;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_16-33-54.jpg\";s:8:\"filesize\";i:50363;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-33-54-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14148;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-33-54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6901;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(458, 111, '_thumbnail_id', '112'),
(459, 113, '_edit_last', '1'),
(460, 113, '_edit_lock', '1728898347:1'),
(461, 114, '_wp_attached_file', '2024/10/photo_2024-10-14_16-34-29.jpg'),
(462, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:660;s:6:\"height\";i:406;s:4:\"file\";s:37:\"2024/10/photo_2024-10-14_16-34-29.jpg\";s:8:\"filesize\";i:87228;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-34-29-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17457;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"photo_2024-10-14_16-34-29-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7924;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(463, 113, '_thumbnail_id', '114'),
(464, 115, '_edit_last', '1'),
(465, 115, '_edit_lock', '1728898522:1'),
(466, 116, '_wp_attached_file', '2024/10/the-tam-tru-nguoi-nuoc-ngoai-600x400-1.jpg'),
(467, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:50:\"2024/10/the-tam-tru-nguoi-nuoc-ngoai-600x400-1.jpg\";s:8:\"filesize\";i:36722;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"the-tam-tru-nguoi-nuoc-ngoai-600x400-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12874;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"the-tam-tru-nguoi-nuoc-ngoai-600x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6079;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(468, 115, '_thumbnail_id', '116'),
(469, 117, '_edit_last', '1'),
(470, 117, '_edit_lock', '1728898584:1'),
(471, 118, '_wp_attached_file', '2024/10/sssvisacuba-536x400-1.jpg'),
(472, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:536;s:6:\"height\";i:400;s:4:\"file\";s:33:\"2024/10/sssvisacuba-536x400-1.jpg\";s:8:\"filesize\";i:30372;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"sssvisacuba-536x400-1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12089;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"sssvisacuba-536x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6110;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(473, 117, '_thumbnail_id', '118'),
(474, 119, '_edit_last', '1'),
(475, 119, '_edit_lock', '1728898642:1'),
(476, 120, '_wp_attached_file', '2024/10/Bia-Dich-vu-lam-visa-Brazil-560x400-1.jpg'),
(477, 120, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:560;s:6:\"height\";i:400;s:4:\"file\";s:49:\"2024/10/Bia-Dich-vu-lam-visa-Brazil-560x400-1.jpg\";s:8:\"filesize\";i:37623;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"Bia-Dich-vu-lam-visa-Brazil-560x400-1-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14569;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"Bia-Dich-vu-lam-visa-Brazil-560x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6522;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(478, 119, '_thumbnail_id', '120'),
(479, 121, '_edit_last', '1'),
(480, 121, '_edit_lock', '1728898698:1'),
(481, 122, '_wp_attached_file', '2024/10/48cfe68017c6fe98a7d7-607x400-1.jpg'),
(482, 122, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:607;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2024/10/48cfe68017c6fe98a7d7-607x400-1.jpg\";s:8:\"filesize\";i:43192;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"48cfe68017c6fe98a7d7-607x400-1-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12800;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"48cfe68017c6fe98a7d7-607x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6436;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 121, '_thumbnail_id', '122'),
(484, 123, '_edit_last', '1'),
(485, 123, '_edit_lock', '1728925125:1'),
(486, 124, '_wp_attached_file', '2024/10/z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510-1.jpg'),
(487, 124, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:69:\"2024/10/z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510-1.jpg\";s:8:\"filesize\";i:94039;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:69:\"z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32989;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:69:\"z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9670;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 123, '_thumbnail_id', '124'),
(489, 125, '_edit_last', '1'),
(490, 125, '_edit_lock', '1728922141:1'),
(491, 126, '_wp_attached_file', '2024/10/z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510-1.jpg'),
(492, 126, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:69:\"2024/10/z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510-1.jpg\";s:8:\"filesize\";i:79162;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:69:\"z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29445;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:69:\"z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9099;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(493, 125, '_thumbnail_id', '126'),
(494, 127, '_edit_last', '1'),
(495, 127, '_edit_lock', '1728922133:1'),
(496, 128, '_wp_attached_file', '2024/10/tour-phan-thiet.jpg'),
(497, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:527;s:4:\"file\";s:27:\"2024/10/tour-phan-thiet.jpg\";s:8:\"filesize\";i:64294;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"tour-phan-thiet-285x300.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17576;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"tour-phan-thiet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6879;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(498, 127, '_thumbnail_id', '128'),
(499, 129, '_edit_last', '1'),
(500, 129, '_edit_lock', '1728922871:1'),
(501, 127, 'testimonial', 'Quận 1, TP.HCM'),
(502, 127, '_testimonial', 'field_670cf2e433def'),
(503, 125, 'testimonial', 'Quận 2, TP.HCM'),
(504, 125, '_testimonial', 'field_670cf2e433def'),
(505, 123, 'testimonial', 'Quận 3, TP.HCM'),
(506, 123, '_testimonial', 'field_670cf2e433def');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-10-11 16:18:25', '2024-10-11 16:18:25', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p>Ngày khởi hành</p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p>Ngủ cùng Bố, Mẹ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2024-10-13 23:39:25', '2024-10-13 23:39:25', '', 0, 'http://localhost/linhchi_travel/?p=1', 0, 'post', '', 1),
(2, 1, '2024-10-11 16:18:25', '2024-10-11 16:18:25', '<!-- wp:paragraph -->\r\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>... hoặc cái gì đó như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/linhchi_travel/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\r\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'publish', 'closed', 'open', '', 'trang-chu', '', '', '2024-10-12 02:41:13', '2024-10-12 02:41:13', '', 0, 'http://localhost/linhchi_travel/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-10-11 16:18:25', '2024-10-11 16:18:25', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi là ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost/linhchi_travel.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Bình luận</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện bình luận rác</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn sửa hoặc xuất bản bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Nội dung nhúng từ website khác</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi chia sẻ dữ liệu của bạn với ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn yêu cầu đặt lại mật khẩu, địa chỉ IP của bạn sẽ được bao gồm trong email đặt lại.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn tồn tại bao lâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Các quyền nào của bạn với dữ liệu của mình</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn được gửi đến đâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện bình luận rác.</p>\n<!-- /wp:paragraph -->\n', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2024-10-11 16:18:25', '2024-10-11 16:18:25', '', 0, 'http://localhost/linhchi_travel/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-10-11 16:18:29', '2024-10-11 16:18:29', '<!-- wp:page-list /-->', 'Điều hướng', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-10-11 16:18:29', '2024-10-11 16:18:29', '', 0, 'http://localhost/linhchi_travel/2024/10/11/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-10-11 16:18:41', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-10-11 16:18:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=5', 0, 'post', '', 0),
(7, 1, '2024-10-11 16:35:45', '0000-00-00 00:00:00', '', 'Tổng quan', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-11 16:35:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2024-10-11 16:35:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-11 16:35:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2024-10-12 02:13:07', '2024-10-12 02:13:07', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-10-12 02:13:07', '2024-10-12 02:13:07', '', 0, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2024-10-12 02:13:21', '2024-10-12 02:13:21', '{\n    \"linhchitravel::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-12 02:13:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c57ab7d2-59f3-4553-bab1-3f2f26a9b002', '', '', '2024-10-12 02:13:21', '2024-10-12 02:13:21', '', 0, 'http://localhost/linhchi_travel/2024/10/12/c57ab7d2-59f3-4553-bab1-3f2f26a9b002/', 0, 'customize_changeset', '', 0),
(11, 1, '2024-10-12 02:14:29', '2024-10-12 02:14:29', '{\n    \"site_icon\": {\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-12 02:14:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f5e2ebb-3763-4aff-abe8-16d7a750a1b5', '', '', '2024-10-12 02:14:29', '2024-10-12 02:14:29', '', 0, 'http://localhost/linhchi_travel/2024/10/12/4f5e2ebb-3763-4aff-abe8-16d7a750a1b5/', 0, 'customize_changeset', '', 0),
(12, 1, '2024-10-12 02:38:00', '0000-00-00 00:00:00', '', 'Tổng quan', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-12 02:38:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2024-10-12 02:38:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-12 02:38:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2024-10-12 02:39:41', '0000-00-00 00:00:00', '', 'Tổng quan', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-12 02:39:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2024-10-12 02:39:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-12 02:39:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2024-10-12 02:41:13', '2024-10-12 02:41:13', '<!-- wp:paragraph -->\r\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>... hoặc cái gì đó như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/linhchi_travel/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\r\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-10-12 02:41:13', '2024-10-12 02:41:13', '', 2, 'http://localhost/linhchi_travel/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-10-12 05:34:14', '2024-10-12 03:08:38', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=17', 1, 'nav_menu_item', '', 0),
(19, 1, '2024-10-12 03:10:33', '2024-10-12 03:10:33', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2024-10-12 03:10:33', '2024-10-12 03:10:33', '', 0, 'http://localhost/linhchi_travel/?page_id=19', 0, 'page', '', 0),
(20, 1, '2024-10-12 03:10:33', '2024-10-12 03:10:33', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-10-12 03:10:33', '2024-10-12 03:10:33', '', 19, 'http://localhost/linhchi_travel/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-10-12 05:34:14', '2024-10-12 03:10:44', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2024-10-12 05:27:57', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-12 05:27:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&p=22', 0, 'tour', '', 0),
(23, 1, '2024-10-12 05:28:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-12 05:28:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&p=23', 0, 'tour', '', 0),
(24, 1, '2024-10-12 05:30:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-12 05:30:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&p=24', 0, 'tour', '', 0),
(25, 1, '2024-10-12 05:34:14', '2024-10-12 05:33:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2024-10-12 05:34:14', '2024-10-12 05:33:48', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2024-10-12 05:34:14', '2024-10-12 05:33:48', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=27', 7, 'nav_menu_item', '', 0),
(28, 1, '2024-10-12 05:34:14', '2024-10-12 05:33:48', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2024-10-12 05:34:14', '2024-10-12 05:33:48', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2024-10-12 05:34:14', '2024-10-12 05:34:14', '', 0, 'http://localhost/linhchi_travel/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2024-10-12 05:36:16', '2024-10-12 05:36:16', '<ul>\r\n 	<li>Viếng <strong><em>Chùa Linh Ứng bãi Bụt</em></strong><em>:</em> hay còn được gọi là chùa Linh Ứng Sơn Trà. Đây là nơi có tượng Phật Quan Âm từ trên đồi cao hướng mặt ra biển cao nhất tại Việt Nam hiện nay.</li>\r\n 	<li><strong><em>Phố cổ Hội An </em></strong>một phố cổ giữ được gần như nguyên vẹn với hơn 1000 di tích kiến trúc từ phố xá, nhà cửa, hội quán, đình, chùa, miếu, nhà thờ tộc, giếng cổ…</li>\r\n 	<li>Chinh phục <strong><em>Động Phong Nha: </em></strong>là một trong những kỳ quan hiếm có ở Việt Nam. Bên trong động có hang nước dài nhất Đông Nam Á</li>\r\n 	<li><strong><em>Đại nội kinh thành hoàng cung</em></strong>: của 13 vị Vua triều Nguyễn với Ngọ Môn, điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh.</li>\r\n</ul>', '(HCM-VJ) Tour Đà Nẵng – Hội An – Quảng Bình – Huế 4N3Đ', '', 'publish', 'closed', 'closed', '', 'hcm-vj-tour-da-nang-hoi-an-quang-binh-hue-4n3d', '', '', '2024-10-13 01:30:21', '2024-10-13 01:30:21', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=30', 0, 'tour', '', 0),
(31, 1, '2024-10-12 05:52:13', '2024-10-12 05:52:13', '', 'image_bg', '', 'inherit', 'open', 'closed', '', 'image_bg', '', '', '2024-10-12 05:52:13', '2024-10-12 05:52:13', '', 0, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/image_bg.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2024-10-12 05:53:29', '2024-10-12 05:53:29', '', 'cover-page', '', 'inherit', 'open', 'closed', '', 'cover-page', '', '', '2024-10-12 05:53:29', '2024-10-12 05:53:29', '', 0, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/cover-page.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2024-10-12 10:09:08', '2024-10-12 10:09:08', '', 'website-euro-autumn-2024', '', 'inherit', 'open', 'closed', '', 'website-euro-autumn-2024', '', '', '2024-10-12 10:09:08', '2024-10-12 10:09:08', '', 0, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/website-euro-autumn-2024.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2024-10-12 10:10:31', '2024-10-12 10:10:31', '', 'website-euro-autumn-2024', '', 'inherit', 'open', 'closed', '', 'website-euro-autumn-2024-2', '', '', '2024-10-12 10:10:31', '2024-10-12 10:10:31', '', 0, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/website-euro-autumn-2024-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2024-10-12 15:23:38', '2024-10-12 15:23:38', '', 'BANGKOK – PATTAYA .  “SA – WA – DEE”  THAILAND', '', 'publish', 'closed', 'closed', '', 'bangkok-pattaya-sa-wa-dee-thailand', '', '', '2024-10-14 02:19:39', '2024-10-14 02:19:39', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=39', 0, 'tour', '', 0),
(40, 1, '2024-10-12 15:39:17', '2024-10-12 15:39:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Tour', 'tour', 'publish', 'closed', 'closed', '', 'group_670a981988c19', '', '', '2024-10-12 16:28:29', '2024-10-12 16:28:29', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(42, 1, '2024-10-12 15:41:36', '2024-10-12 15:41:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Lịch Trình Tour', 'lich_trinh_tour', 'publish', 'closed', 'closed', '', 'field_670a9849dabe2', '', '', '2024-10-12 16:28:29', '2024-10-12 16:28:29', '', 40, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2024-10-12 15:41:36', '2024-10-12 15:41:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tiêu đề', 'tieu_de', 'publish', 'closed', 'closed', '', 'field_670a987ddabe3', '', '', '2024-10-12 15:41:36', '2024-10-12 15:41:36', '', 42, 'http://localhost/linhchi_travel/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2024-10-12 15:41:36', '2024-10-12 15:41:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội Dung', 'noi_dung', 'publish', 'closed', 'closed', '', 'field_670a989cdabe4', '', '', '2024-10-12 15:41:36', '2024-10-12 15:41:36', '', 42, 'http://localhost/linhchi_travel/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(55, 1, '2024-10-12 16:19:16', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-12 16:19:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2024-10-12 16:20:53', '2024-10-12 16:20:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'tab thời gian - phương tiện', 'tab-thoi-gian-phuong-tien', 'publish', 'closed', 'closed', '', 'group_670aa1c66b027', '', '', '2024-10-12 16:22:54', '2024-10-12 16:22:54', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2024-10-12 16:20:53', '2024-10-12 16:20:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Thời gian', 'th', 'publish', 'closed', 'closed', '', 'field_670aa1c66e54a', '', '', '2024-10-12 16:21:31', '2024-10-12 16:21:31', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 1, '2024-10-12 16:21:51', '2024-10-12 16:21:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Thời gian', 'thoi_gian', 'publish', 'closed', 'closed', '', 'field_670aa20e9fae6', '', '', '2024-10-12 16:21:51', '2024-10-12 16:21:51', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2024-10-12 16:22:09', '2024-10-12 16:22:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Phương tiện', 'phuong_tiện', 'publish', 'closed', 'closed', '', 'field_670aa223a222d', '', '', '2024-10-12 16:22:09', '2024-10-12 16:22:09', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2024-10-12 16:22:22', '2024-10-12 16:22:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phương tiện', 'phuong_tien', 'publish', 'closed', 'closed', '', 'field_670aa2330226f', '', '', '2024-10-12 16:22:22', '2024-10-12 16:22:22', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&p=60', 3, 'acf-field', '', 0),
(61, 1, '2024-10-12 16:22:39', '2024-10-12 16:22:39', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khách sạn', 'khach_sạn', 'publish', 'closed', 'closed', '', 'field_670aa240e665c', '', '', '2024-10-12 16:22:39', '2024-10-12 16:22:39', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&p=61', 4, 'acf-field', '', 0),
(62, 1, '2024-10-12 16:22:51', '2024-10-12 16:22:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Khách sạn', 'khach_san', 'publish', 'closed', 'closed', '', 'field_670aa251a4041', '', '', '2024-10-12 16:22:51', '2024-10-12 16:22:51', '', 56, 'http://localhost/linhchi_travel/?post_type=acf-field&p=62', 5, 'acf-field', '', 0),
(63, 1, '2024-10-12 16:29:09', '2024-10-12 16:29:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Điểm nhấn Tour', 'diem-nhan-tour', 'publish', 'closed', 'closed', '', 'group_670aa3b7dd3af', '', '', '2024-10-12 16:29:25', '2024-10-12 16:29:25', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2024-10-12 16:29:09', '2024-10-12 16:29:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Điểm nhấn Tour', 'diem_nhan_tour', 'publish', 'closed', 'closed', '', 'field_670aa3b70e19a', '', '', '2024-10-12 16:29:09', '2024-10-12 16:29:09', '', 63, 'http://localhost/linhchi_travel/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2024-10-12 16:41:00', '2024-10-12 16:41:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Thông tin Tour', 'thong-tin-tour', 'publish', 'closed', 'closed', '', 'group_670aa690b0a75', '', '', '2024-10-12 16:42:54', '2024-10-12 16:42:54', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2024-10-12 16:41:00', '2024-10-12 16:41:00', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Thông tin Tour', 'thong_tin_tour', 'publish', 'closed', 'closed', '', 'field_670aa69097dea', '', '', '2024-10-12 16:42:50', '2024-10-12 16:42:50', '', 65, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2024-10-12 16:42:50', '2024-10-12 16:42:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tiêu đề', 'tieu_de', 'publish', 'closed', 'closed', '', 'field_670aa6eda8716', '', '', '2024-10-12 16:42:50', '2024-10-12 16:42:50', '', 66, 'http://localhost/linhchi_travel/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2024-10-12 16:42:50', '2024-10-12 16:42:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội dung', 'noi_dung', 'publish', 'closed', 'closed', '', 'field_670aa6fba8717', '', '', '2024-10-12 16:42:50', '2024-10-12 16:42:50', '', 66, 'http://localhost/linhchi_travel/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2024-10-13 01:30:37', '2024-10-13 01:30:37', '<!-- wp:paragraph -->\r\n<table width=\"775\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"133\">\r\n<p><strong>NGÀY KHỞI HÀNH</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"270\">\r\n<p><strong>CHUYẾN BAY</strong></p>\r\n</td>\r\n<td colspan=\"3\" width=\"372\">\r\n<p><strong>GIÁ TOUR TRỌN GÓI (VND)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>NGƯỜI LỚN</strong></p>\r\n<p><strong>(Trên 11 Tuổi)</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>TRẺ EM</strong></p>\r\n<p><strong>(2 - 11 Tuổi)</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>EM BÉ</strong></p>\r\n<p><strong>(Dưới 2 Tuổi)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"246\">\r\n<p><strong>Ngủ chung giường người lớn</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>09/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>19/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>26/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>13/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>20/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>27/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>04/12/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>22/12/2024       </strong><strong>NOEL</strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>20.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>16.942.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>6.297.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>28/12/2024       </strong><strong>    TẾT TÂY</strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>21.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>17.692.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>6.597.000</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 01:30:37', '2024-10-13 01:30:37', '', 1, 'http://localhost/linhchi_travel/?p=69', 0, 'revision', '', 0),
(70, 1, '2024-10-13 23:32:46', '2024-10-13 23:32:46', '<!-- wp:paragraph -->\n<table width=\"727\">\n<tbody>\n<tr>\n<td rowspan=\"2\" width=\"162\">\n<p><strong>Ngày khởi hành</strong></p>\n</td>\n<td rowspan=\"2\" width=\"174\">\n<p><strong>Chuyến bay</strong></p>\n</td>\n<td rowspan=\"2\" width=\"126\">\n<p><strong>Người lớn</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\n</td>\n<td width=\"140\">\n<p><strong>Trẻ dưới </strong></p>\n<p><strong>2 tuổi</strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" width=\"266\">\n<p><strong><em>Ngủ cùng Bố, Mẹ</em></strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"162\">\n<p><strong>THÁNG 9</strong></p>\n<p><strong>04/09-09/09</strong></p>\n<p><strong>25/09-30/09</strong></p>\n</td>\n<td rowspan=\"3\" width=\"174\">\n<p><strong><em> </em></strong></p>\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\n</td>\n<td width=\"126\">\n<p><strong>18.490.000</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>17.490.000</strong></p>\n</td>\n<td width=\"140\">\n<p><strong> </strong></p>\n<p><strong>7.190.000</strong></p>\n<p><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"162\">\n<p><strong>11/09-16/09</strong></p>\n<p><strong>18/09-22/09</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>17.490.000</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>16.490.000</strong></p>\n</td>\n<td width=\"140\">\n<p><strong>7.190.000</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"162\">\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\n<p><strong>15/10-20/10</strong></p>\n<p><strong>24/10-29/10</strong></p>\n<p><strong>30/10-04/11</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>18.990.000</strong></p>\n</td>\n<td width=\"126\">\n<p><strong>17.990.000</strong></p>\n</td>\n<td width=\"140\">\n<p><strong> </strong></p>\n<p><strong>7.190.000</strong></p>\n<p><strong> </strong></p>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2024-10-13 23:32:46', '2024-10-13 23:32:46', '', 1, 'http://localhost/linhchi_travel/?p=70', 0, 'revision', '', 0),
(71, 1, '2024-10-13 01:31:43', '2024-10-13 01:31:43', '<!-- wp:paragraph -->\r\n<table width=\"775\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"133\">\r\n<p><strong>NGÀY KHỞI HÀNH</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"270\">\r\n<p><strong>CHUYẾN BAY</strong></p>\r\n</td>\r\n<td colspan=\"3\" width=\"372\">\r\n<p><strong>GIÁ TOUR TRỌN GÓI (VND)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>NGƯỜI LỚN</strong></p>\r\n<p><strong>(Trên 11 Tuổi)</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>TRẺ EM</strong></p>\r\n<p><strong>(2 - 11 Tuổi)</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>EM BÉ</strong></p>\r\n<p><strong>(Dưới 2 Tuổi)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"246\">\r\n<p><strong>Ngủ chung giường người lớn</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>09/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>19/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>26/10/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:25 - 15:15             CX799 HKG SGN 15:35 - 17:20</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.390.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>14.992.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.517.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>13/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>20/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>27/11/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>04/12/2024              </strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>15.442.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>5.697.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>22/12/2024       </strong><strong>NOEL</strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>20.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>16.942.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>6.297.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"133\">\r\n<p><strong>28/12/2024       </strong><strong>    TẾT TÂY</strong></p>\r\n</td>\r\n<td width=\"270\">\r\n<p><strong>CX766 SGN HKG 11:35 - 15:20             CX799 HKG SGN 16:45 - 18:35</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>21.990.000</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>17.692.500</strong></p>\r\n</td>\r\n<td width=\"114\">\r\n<p><strong>6.597.000</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<style>\r\n/* General table styling */\r\ntable {\r\n  width: 100%;\r\n  border-collapse: collapse;\r\n  font-family: Arial, sans-serif;\r\n}\r\n\r\ntable th, table td {\r\n  border: 1px solid #ddd;\r\n  padding: 8px;\r\n  text-align: center;\r\n}\r\n\r\n/* Header styling */\r\ntable th {\r\n  background-color: #4CAF50;\r\n  color: white;\r\n  font-weight: bold;\r\n}\r\n\r\n/* Alternate row color */\r\ntable tr:nth-child(even) {\r\n  background-color: #f2f2f2;\r\n}\r\n\r\n/* Hover effect for rows */\r\ntable tr:hover {\r\n  background-color: #ddd;\r\n}\r\n\r\n/* Column-specific styles */\r\ntable td:first-child {\r\n  background-color: #e0f7fa;\r\n  font-weight: bold;\r\n}\r\n\r\ntable td:nth-child(2) {\r\n  background-color: #ffecb3;\r\n}\r\n\r\ntable td:nth-child(3), table td:nth-child(4), table td:nth-child(5) {\r\n  background-color: #fff8e1;\r\n}\r\n\r\n/* Responsive table */\r\n@media screen and (max-width: 600px) {\r\n  table {\r\n    width: 100%;\r\n    font-size: 12px;\r\n  }\r\n  table th, table td {\r\n    padding: 4px;\r\n  }\r\n}\r\n\r\n</style>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 01:31:43', '2024-10-13 01:31:43', '', 1, 'http://localhost/linhchi_travel/?p=71', 0, 'revision', '', 0),
(72, 1, '2024-10-13 02:12:01', '2024-10-13 02:12:01', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p><strong>Ngày khởi hành</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p><strong><em>Ngủ cùng Bố, Mẹ</em></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>/* General table styling */ table { width: 100%; border-collapse: collapse; font-family: Arial, sans-serif; } table th, table td { border: 1px solid #ddd; padding: 8px; text-align: center; } /* Header styling */ table th { background-color: #4CAF50; color: white; font-weight: bold; } /* Alternate row color */ table tr:nth-child(even) { background-color: #f2f2f2; } /* Hover effect for rows */ table tr:hover { background-color: #ddd; } /* Column-specific styles */ table td:first-child { background-color: #e0f7fa; font-weight: bold; } table td:nth-child(2) { background-color: #ffecb3; } table td:nth-child(3), table td:nth-child(4), table td:nth-child(5) { background-color: #fff8e1; } /* Responsive table */ @media screen and (max-width: 600px) { table { width: 100%; font-size: 12px; } table th, table td { padding: 4px; } }</p>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 02:12:01', '2024-10-13 02:12:01', '', 1, 'http://localhost/linhchi_travel/?p=72', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2024-10-13 23:33:38', '2024-10-13 23:33:38', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p><strong>Ngày khởi hành</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p><strong><em>Ngủ cùng Bố, Mẹ</em></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 23:33:38', '2024-10-13 23:33:38', '', 1, 'http://localhost/linhchi_travel/?p=73', 0, 'revision', '', 0),
(74, 1, '2024-10-13 23:38:22', '2024-10-13 23:38:22', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p><strong>Ngày khởi hành</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p><strong>Ngủ cùng Bố, Mẹ</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 23:38:22', '2024-10-13 23:38:22', '', 1, 'http://localhost/linhchi_travel/?p=74', 0, 'revision', '', 0),
(75, 1, '2024-10-13 23:38:42', '2024-10-13 23:38:42', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p><strong>Ngày khởi hành</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p>>Ngủ cùng Bố, Mẹ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 23:38:42', '2024-10-13 23:38:42', '', 1, 'http://localhost/linhchi_travel/?p=75', 0, 'revision', '', 0),
(76, 1, '2024-10-13 23:38:53', '2024-10-13 23:38:53', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p><strong>Ngày khởi hành</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p>Ngủ cùng Bố, Mẹ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 23:38:53', '2024-10-13 23:38:53', '', 1, 'http://localhost/linhchi_travel/?p=76', 0, 'revision', '', 0),
(77, 1, '2024-10-13 23:39:25', '2024-10-13 23:39:25', '<!-- wp:paragraph -->\r\n<table width=\"727\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"162\">\r\n<p>Ngày khởi hành</p>\r\n</td>\r\n<td rowspan=\"2\" width=\"174\">\r\n<p><strong>Chuyến bay</strong></p>\r\n</td>\r\n<td rowspan=\"2\" width=\"126\">\r\n<p><strong>Người lớn</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>Trẻ em (2 đến dưới 12 tuổi)</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>Trẻ dưới </strong></p>\r\n<p><strong>2 tuổi</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"266\">\r\n<p>Ngủ cùng Bố, Mẹ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 9</strong></p>\r\n<p><strong>04/09-09/09</strong></p>\r\n<p><strong>25/09-30/09</strong></p>\r\n</td>\r\n<td rowspan=\"3\" width=\"174\">\r\n<p><strong><em> </em></strong></p>\r\n<p><strong><em>3U3904 </em></strong><strong><em>09:00</em></strong> <strong><em>– 1</em></strong><strong><em>3</em></strong><strong><em>:</em></strong><strong><em>40</em></strong></p>\r\n<p><strong><em>3U3903</em></strong> <strong><em>19:35</em></strong> <strong><em>– </em></strong><strong><em>22:20</em></strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>11/09-16/09</strong></p>\r\n<p><strong>18/09-22/09</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.490.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>16.490.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong>7.190.000</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"162\">\r\n<p><strong>THÁNG 10</strong><strong><br />09/10-14/10</strong></p>\r\n<p><strong>15/10-20/10</strong></p>\r\n<p><strong>24/10-29/10</strong></p>\r\n<p><strong>30/10-04/11</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>18.990.000</strong></p>\r\n</td>\r\n<td width=\"126\">\r\n<p><strong>17.990.000</strong></p>\r\n</td>\r\n<td width=\"140\">\r\n<p><strong> </strong></p>\r\n<p><strong>7.190.000</strong></p>\r\n<p><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-10-13 23:39:25', '2024-10-13 23:39:25', '', 1, 'http://localhost/linhchi_travel/?p=77', 0, 'revision', '', 0),
(78, 1, '2024-10-13 23:47:12', '2024-10-13 23:47:12', '', 'SEOUL - NAMI ISLAND - EVERLAND', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2024-10-13 23:47:12', '2024-10-13 23:47:12', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=78', 0, 'tour', '', 0),
(79, 1, '2024-10-13 23:42:03', '2024-10-13 23:42:03', '', 'HÀN QUỐC SEOUL - NAMI ISLAND - EVERLAND', '', 'publish', 'closed', 'closed', '', 'han-quoc-seoul-nami-island-everland', '', '', '2024-10-14 07:10:51', '2024-10-14 07:10:51', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=79', 0, 'tour', '', 0),
(80, 1, '2024-10-13 23:46:08', '2024-10-13 23:46:08', '', 'Nhật Bản OSAKA - KYOTO - FUJI - TOKYO', '', 'publish', 'closed', 'closed', '', 'nhat-ban-osaka-kyoto-fuji-tokyo', '', '', '2024-10-14 02:07:18', '2024-10-14 02:07:18', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=80', 0, 'tour', '', 0),
(81, 1, '2024-10-13 23:46:48', '2024-10-13 23:46:48', '', 'OSAKA – KYOTO – FUJI – TOKYO  CUNG ĐƯỜNG VÀNG NHẬT BẢN', '', 'publish', 'closed', 'closed', '', '81', '', '', '2024-10-14 02:07:14', '2024-10-14 02:07:14', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=81', 0, 'tour', '', 0),
(82, 1, '2024-10-13 23:48:02', '2024-10-13 23:48:02', '', 'MÙA ĐÔNG NHẬT BẢN TOKYO – YAMANASHI – TAKAYAMA – GIFU – KYOTO - OSAKA', '', 'publish', 'closed', 'closed', '', 'mua-dong-nhat-ban-tokyo-yamanashi-takayama-gifu-kyoto-osaka', '', '', '2024-10-14 02:07:07', '2024-10-14 02:07:07', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=82', 0, 'tour', '', 0),
(83, 1, '2024-10-13 23:51:22', '2024-10-13 23:51:22', '', 'BANGKOK - PATTAYA 5N4Đ', '', 'publish', 'closed', 'closed', '', 'bangkok-pattaya-5n4d', '', '', '2024-10-14 02:48:51', '2024-10-14 02:48:51', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=83', 0, 'tour', '', 0),
(84, 1, '2024-10-13 23:53:05', '2024-10-13 23:53:05', '', 'DUBAI ABU DHABI', '', 'publish', 'closed', 'closed', '', 'dubai-abu-dhabi', '', '', '2024-10-14 02:06:58', '2024-10-14 02:06:58', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=84', 0, 'tour', '', 0),
(85, 1, '2024-10-13 23:56:19', '2024-10-13 23:56:19', '', 'HONGKONG 4N3Đ', '', 'publish', 'closed', 'closed', '', 'hongkong-4n3d', '', '', '2024-10-14 02:06:51', '2024-10-14 02:06:51', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=85', 0, 'tour', '', 0),
(86, 1, '2024-10-14 00:00:11', '2024-10-14 00:00:11', '', 'Hong kong trung quốc - thâm quyến quảng châu', '', 'publish', 'closed', 'closed', '', 'hong-kong-trung-quoc-tham-quyen-quang-chau', '', '', '2024-10-14 07:10:30', '2024-10-14 07:10:30', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=86', 0, 'tour', '', 0),
(87, 1, '2024-10-14 00:04:10', '2024-10-14 00:04:10', '', 'BANGKOK -  AYUTTHAYA 5N4Đ', '', 'publish', 'closed', 'closed', '', 'bangkok-ayutthaya-5n4d', '', '', '2024-10-14 02:06:39', '2024-10-14 02:06:39', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=87', 0, 'tour', '', 0),
(88, 1, '2024-10-14 00:05:10', '2024-10-14 00:05:10', '', 'Khám Phá Đài Loan (05 ngày 04 đêm)', '', 'publish', 'closed', 'closed', '', 'kham-pha-dai-loan-05-ngay-04-dem', '', '', '2024-10-14 02:06:32', '2024-10-14 02:06:32', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=88', 0, 'tour', '', 0),
(89, 1, '2024-10-14 00:33:06', '2024-10-14 00:33:06', '', 'photo_2024-10-14_07-32-54', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_07-32-54', '', '', '2024-10-14 00:33:06', '2024-10-14 00:33:06', '', 39, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_07-32-54.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2024-10-14 00:39:03', '2024-10-14 00:39:03', '', 'photo_2024-10-14_07-38-44', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_07-38-44', '', '', '2024-10-14 00:39:03', '2024-10-14 00:39:03', '', 79, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_07-38-44.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2024-10-14 01:54:55', '2024-10-14 01:54:55', '', 'photo_2024-10-14_08-54-46', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_08-54-46', '', '', '2024-10-14 01:54:55', '2024-10-14 01:54:55', '', 80, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_08-54-46.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2024-10-14 01:56:58', '2024-10-14 01:56:58', '', 'photo_2024-10-14_08-55-32', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_08-55-32', '', '', '2024-10-14 01:56:58', '2024-10-14 01:56:58', '', 81, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_08-55-32.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2024-10-14 01:57:49', '2024-10-14 01:57:49', '', 'photo_2024-10-14_08-57-41', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_08-57-41', '', '', '2024-10-14 01:57:49', '2024-10-14 01:57:49', '', 82, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_08-57-41.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2024-10-14 02:02:01', '2024-10-14 02:02:01', '', 's', '', 'inherit', 'open', 'closed', '', 's', '', '', '2024-10-14 02:02:01', '2024-10-14 02:02:01', '', 83, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/s.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2024-10-14 02:03:09', '2024-10-14 02:03:09', '', 'photo_2024-10-14_09-03-02', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_09-03-02', '', '', '2024-10-14 02:03:09', '2024-10-14 02:03:09', '', 84, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_09-03-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2024-10-14 02:06:23', '2024-10-14 02:06:23', '', 'Tour Hà Nội - Côn Đảo 3 Ngày 2 Đêm Bay Vietnamairlines', '', 'publish', 'closed', 'closed', '', 'tour-ha-noi-con-dao-3-ngay-2-dem-bay-vietnamairlines', '', '', '2024-10-14 02:20:29', '2024-10-14 02:20:29', '', 0, 'http://localhost/linhchi_travel/?post_type=tour&#038;p=96', 0, 'tour', '', 0),
(97, 1, '2024-10-14 02:16:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-14 02:16:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2024-10-14 02:18:48', '2024-10-14 02:18:48', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Tour hot', 'tour-hot', 'publish', 'closed', 'closed', '', 'group_670c7ef0ac749', '', '', '2024-10-14 03:01:09', '2024-10-14 03:01:09', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(100, 1, '2024-10-14 02:18:48', '2024-10-14 02:18:48', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:3:\"yes\";s:3:\"Yes\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:14:\"Add new choice\";}', 'Hiển thị tour hot', 'show_tour_hot', 'publish', 'closed', 'closed', '', 'field_670c7f2c30dc1', '', '', '2024-10-14 03:01:09', '2024-10-14 03:01:09', '', 98, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=100', 0, 'acf-field', '', 0),
(101, 1, '2024-10-14 03:00:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-14 03:00:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&p=101', 0, 'acf-field-group', '', 0),
(102, 1, '2024-10-14 03:01:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-14 03:01:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-ui-options-page&p=102', 0, 'acf-ui-options-page', '', 0),
(103, 1, '2024-10-14 03:01:47', '2024-10-14 03:01:47', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"acf-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Tour Hot năm', 'tour-hot-nam', 'publish', 'closed', 'closed', '', 'group_670c89852d647', '', '', '2024-10-14 03:06:48', '2024-10-14 03:06:48', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2024-10-14 03:01:47', '2024-10-14 03:01:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tour Hot', 'tour_hot_title', 'publish', 'closed', 'closed', '', 'field_670c8985cbf82', '', '', '2024-10-14 03:06:48', '2024-10-14 03:06:48', '', 103, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=104', 0, 'acf-field', '', 0),
(106, 1, '2024-10-14 09:18:59', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-14 09:18:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&p=106', 0, 'visa_service', '', 0),
(107, 1, '2024-10-14 09:30:25', '2024-10-14 09:30:25', 'Dịch vụ Visa Mỹ HCM – nhanh gọn, chính xác, tỷ lệ đậu cao\r\nDịch vụ Visa Mỹ HCM đang ngày càng được nhiều người quan tâm. Theo xu thế hội nhập và phát triển, nhu cầu nhập cảnh vào Mỹ ngày càng tăng cao. Kéo theo đó là các thông tin liên quan đến việc xin cấp Visa Mỹ (Hoa Kỳ) cũng ngày càng tăng theo.\r\n\r\nVậy Đậu visa Mỹ có khó không?… Câu hỏi này đang được rất nhiều người Việt quan tâm, đặc biệt là nhu cầu qua Mỹ du lịch kết hợp thăm thân nhân sau nhiều năm dài xa cách…\r\n\r\nMỹ là quốc gia top đầu về độ khó xin visa. Để xin được visa nhập cảnh vào Mỹ, chúng ta cần phải tìm hiểu thật kỹ, thực hiện rất nhiều các thủ tục, giấy tờ và phải qua xét duyệt nghiêm ngặt từ Lãnh Sự Quán để sở hữu một trong những visa quyền lực nhất thế giới. Nếu muốn đảm bảo các quy trình được thực hiện chuẩn xác, dễ đậu, tốt nhất bạn nên tìm đến các dịch vụ Visa Mỹ uy tín như của Intertour.\r\n\r\n1. Thông tin chung về visa Mỹ \r\n1.1. Tìm hiểu thêm về visa Mỹ\r\nVisa Mỹ dịch ra tiếng Việt là thị thực hay thị thực nhập cảnh Mỹ, được nhận diện là một tem thông hành dán vào hộ chiếu cá nhân và được cấp chính thức bởi Đại sứ quán hay Lãnh sự quán của Mỹ tại Việt Nam.\r\n\r\nĐây được coi là điều kiện và hạn mức nhập cảnh khi bạn đến Mỹ. Tùy loại visa mà bạn có thể ở lại Mỹ bao lâu. Thời hạn tối đa visa Mỹ sẽ phụ thuộc vào loại visa mà bạn xin cấp.\r\n\r\n1.2. Phân biệt Visa và Hộ chiếu đi Mỹ\r\nVisa sẽ do các cơ quan có thẩm quyền của Mỹ cấp và chứng nhận cho phép bạn nhập cảnh tùy thuộc vào mục đích cá nhân của bạn.\r\n\r\nHộ chiếu được cấp và đảm bảo bởi chính phủ Việt Nam, có hộ chiếu, bạn mới có thể xuất nhập cảnh hợp pháp với danh nghĩa là công dân Việt Nam.\r\n\r\nViệc xin cấp hộ chiếu phải được thực hiện trước khi xin visa Mỹ. Vì hộ chiếu là điều kiện cần trong thủ tục xin visa.\r\n\r\nHiện tại, công dân Việt Nam chính thức được miễn thị thực tại 48 quốc gia với thời hạn nhập cảnh ngắn. Riêng với Mỹ, hiện nay chưa có chính sách này nên công dân Việt Nam bắt buộc phải xin cấp visa nếu muốn đặt chân đến đất Mỹ. Bạn có thể lựa chọn làm mới visa Mỹ hay gia hạn visa Mỹ nếu đã hoặc đang lưu trú tại Mỹ.\r\n\r\n1.3. Điều kiện để xin cấp Visa Mỹ \r\nĐể được cấp visa Mỹ bạn cần đáp ứng các điều kiện sau đây:\r\n\r\nChứng minh bản thân có đủ tư cách nhân thân, đời sống rõ ràng, minh bạch để được phép nhập cảnh vào Mỹ\r\nThể hiện được lộ trình của chuyến đi bằng các thông tin, minh chứng về thời gian nhập và xuất cảnh Mỹ, nơi lưu trú, đến với mục đích gì (du lịch, du học…), thăm thân hay gặp ai tại Mỹ,…\r\nChứng minh tài chính, thu nhập, tài sản visa Mỹ thông qua công việc, các tài sản đang đứng tên, bất động sản, chứng khoán,… nhằm thể hiện đủ khả năng chi trả cho thời gian ở Mỹ. \r\nCác bằng chứng về mối quan hệ cá nhân tại nước nhà Việt Nam như mối ràng buộc với người thân, vợ / chồng / con cái, công việc…\r\nNhững điều đã liệt kê ở trên nhằm mục đích chứng minh cho các cơ quan có thẩm quyền của Mỹ thấy được bạn sẽ quay về nước sau khi kết thúc chuyến đi. Một lưu ý nhỏ là nếu lịch sử du lịch Mỹ, nhập cảnh Mỹ trên hộ chiếu của bạn đẹp, đã đến nhiều quốc gia thì khả năng được duyệt cấp visa Mỹ thông qua cao hơn rất nhiều.\r\n\r\nLàm visa Mỹ có dễ không? Passport mới xin visa mỹ dễ không? Cụ thể với công dân Việt Nam cần đáp ứng các tiêu chuẩn như sau:\r\n\r\nHộ chiếu còn hiệu lực từ 06 tháng.\r\nCó nguồn thu nhập ổn định từ công việc hoặc lương hưu.\r\nCó sổ tiết kiệm tối thiểu 100 triệu VNĐ và càng nhiều thì càng dễ đậu.\r\nCó thư mời nếu đi theo diện thăm thân nhân.\r\nSở hữu tài sản bao gồm nhà cửa, xe hơi, chứng khoán, các khoản đầu tư…\r\nTừng nhập cảnh ít nhất 2 trong số các quốc gia Hàn Quốc, Nhật Bản, Canada, Úc, các nước trong EU.\r\nChứng minh được những mối quan hệ tại Việt Nam.', 'Dịch vụ Visa Mỹ HCM – nhanh gọn, chính xác, tỷ lệ đậu cao', '', 'publish', 'closed', 'closed', '', 'dich-vu-visa-my-hcm-nhanh-gon-chinh-xac-ty-le-dau-cao', '', '', '2024-10-14 09:30:25', '2024-10-14 09:30:25', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=107', 0, 'visa_service', '', 0),
(108, 1, '2024-10-14 09:30:22', '2024-10-14 09:30:22', '', 'legacyhop1', '', 'inherit', 'open', 'closed', '', 'legacyhop1', '', '', '2024-10-14 09:30:22', '2024-10-14 09:30:22', '', 107, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/legacyhop1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2024-10-14 09:33:19', '2024-10-14 09:33:19', 'Tỷ lệ đáp ứng mọi điều kiện xin visa Mỹ hàng năm rất thấp. Tuy nhiên, nếu bạn hiểu rõ và thực hiện đúng các yêu cầu sau đây, bạn hoàn toàn có thể tăng khả năng được cấp visa Mỹ nhanh chóng. Vậy đó là những điều kiện và thông tin lưu ý nào? Hãy cùng Intertour tìm hiểu trong nội dung dưới đây. \r\n\r\n1. Giới thiệu về visa Mỹ và quy trình xin visa Mỹ\r\nVisa Mỹ là một loại giấy phép nhập cảnh được cấp bởi chính phủ Mỹ cho người nước ngoài để họ có thể tạm thời nhập cảnh vào nước này với một mục đích nhất định, chẳng hạn như công tác, du lịch, thăm thân, hay học tập. Đáp ứng các điều kiện xin visa Mỹ là điều cần thiết để được phép vào Mỹ hợp pháp. \r\n\r\nCó 2 loại Visa Mỹ phổ biến nhất hiện nay: \r\n\r\nVisa Mỹ B1: Là loại visa công tác, dành cho những cá nhân muốn đến Mỹ để tiến hành công việc chuyên môn, thương mại hoặc hội nghị, hội thảo. Visa này giúp công dân nước ngoài tham gia vào các hoạt động kinh doanh hoặc giao tiếp chuyên môn tại Mỹ.\r\nVisa Mỹ B2: Là loại visa du lịch, dành cho những người nước ngoài muốn đến Mỹ với các mục đích như du lịch, thăm người thân, bạn bè, hoặc điều trị y tế. Visa này cho phép người nước ngoài tham quan, thăm thân, hoặc tạm trú tại Mỹ cho một khoảng thời gian nhất định.', 'Hướng dẫn chi tiết về điều kiện xin visa Mỹ mới nhất', '', 'publish', 'closed', 'closed', '', 'huong-dan-chi-tiet-ve-dieu-kien-xin-visa-my-moi-nhat', '', '', '2024-10-14 09:33:19', '2024-10-14 09:33:19', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=109', 0, 'visa_service', '', 0),
(110, 1, '2024-10-14 09:33:17', '2024-10-14 09:33:17', '', 'photo_2024-10-14_16-33-05', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_16-33-05', '', '', '2024-10-14 09:33:17', '2024-10-14 09:33:17', '', 109, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_16-33-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2024-10-14 09:34:02', '2024-10-14 09:34:02', 'Bạn đã bao giờ mơ ước về những thước phim Hollywood, những đại lộ sáng đèn, và hương vị của tự do bay bổng tại đất nước Hoa Kỳ? Trước khi bạn đặt chân đến những điểm đến hot hit đó, có một thách thức bạn phải vượt qua – và đó chính là hồ sơ xin visa Mỹ. Hãy để Intertour dẫn dắt bạn qua một hành trình chi tiết, rõ ràng về các thông tin về hồ sơ xin visa Mỹ trong bài viết dưới đây nhé!\r\n1. Visa Mỹ là gì?\r\nTrước khi chúng ta bắt tay vào tìm hiểu về hồ sơ xin visa Mỹ, hãy để Intertour giúp đơn giản hóa ý nghĩa đích thực của “visa Mỹ”. Đôi khi còn được gọi là thị thực Mỹ, thị thực Hoa Kỳ, hoặc visa Hoa Kỳ, đó là một tem dấu được gắn vào hộ chiếu của bạn. Nó giống như một “chìa khóa” cho phép bạn vào Mỹ một cách hợp pháp trong một khoảng thời gian nhất định. Đại sứ quán hoặc Lãnh sự quán Mỹ tại Việt Nam sẽ là người cấp visa này cho bạn.\r\n\r\n2. Hồ sơ xin visa Mỹ\r\nTrước khi chúng ta bắt đầu cuộc hành trình xin visa Mỹ, hãy cùng Intertour tìm hiểu về những điều quan trọng cần phải làm. Phần này sẽ giúp bạn hiểu rõ về những tài liệu cần chuẩn bị trong bộ hồ sơ xin visa Mỹ du lịch. \r\n\r\nHộ chiếu\r\nĐể bắt đầu hành trình của bạn đến Mỹ, đừng quên một thứ vô cùng quan trọng – hộ chiếu. Điều quan trọng nhất là hộ chiếu của bạn phải có đầy đủ thông tin và chữ ký. Hộ chiếu đảm bảo có ít nhất một trang trống. Mỗi người xin visa, bao gồm cả trẻ em, đều cần phải có một hộ chiếu riêng biệt. Thêm vào đó, nếu bạn đã từng có hộ chiếu cũ, đừng ngần ngại thêm nó vào bộ hồ sơ xin visa của bạn. Điều này có thể là một bí mật nhỏ nhưng có thể tăng khả năng đậu visa của bạn lên đáng kể. ', 'Gửi bạn hồ sơ xin visa Mỹ chi tiết nhất', '', 'publish', 'closed', 'closed', '', 'gui-ban-ho-so-xin-visa-my-chi-tiet-nhat', '', '', '2024-10-14 09:34:02', '2024-10-14 09:34:02', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=111', 0, 'visa_service', '', 0),
(112, 1, '2024-10-14 09:34:00', '2024-10-14 09:34:00', '', 'photo_2024-10-14_16-33-54', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_16-33-54', '', '', '2024-10-14 09:34:00', '2024-10-14 09:34:00', '', 111, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_16-33-54.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2024-10-14 09:34:41', '2024-10-14 09:34:41', 'Visa Quan Hồng\r\nDành riêng cho du khách đi theo đoàn qua công ty lữ hành được chỉ định, mang đến trải nghiệm du lịch trọn gói, thuận tiện.\r\nƯu điểm: So với các loại visa khác, visa Quan Hồng có thủ tục du lịch Đài Loan đơn giản và nhanh chóng hơn, du khách sẽ không phải phỏng vấn, không mất phí xin visa. Du khách có thể nộp hồ sơ trực tiếp tại Trung tâm Dịch vụ Visa Đài Loan hoặc qua đại lý được uỷ quyền. Các thành viên trong đoàn chỉ cần nộp hồ sơ chung và cùng nhau nhập cảnh Đài Loan.\r\nĐiều kiện: Tham gia tour du lịch Đài Loan của công ty du lịch được chỉ định, đi theo đoàn trên 5 người.\r\nHồ sơ: Hộ chiếu, đơn xin visa, ảnh, chứng minh tài chính, bảo hiểm du lịch, lịch trình du lịch.\r\nLệ phí: 50 USD/người.\r\nThời hạn: 1 lần nhập cảnh, 30 ngày.\r\nVisa dán\r\nPhù hợp cho du khách tự lên kế hoạch chi tiết cho hành trình du lịch Đài Loan.\r\nVisa dán phù hợp với nhiều kế hoạch du lịch cá nhân, không theo tour. \r\nThủ tục du lịch Đài Loan theo diện xin visa dán phức tạp hơn, phải chờ đợi nhiều ngày hoặc thậm chí nhiều tuần để được cấp visa.\r\nĐiều kiện: Hộ chiếu, đơn xin visa, ảnh, chứng minh nhân thân, nghề nghiệp, tài chính, lịch trình du lịch, vé máy bay khứ hồi, đặt phòng khách sạn.\r\nLệ phí: 50 USD.\r\nThời hạn: Xét duyệt 5-7 ngày, 1 lần nhập cảnh, 90 ngày.', 'Hướng dẫn thủ tục du lịch Đài Loan chi tiết', '', 'publish', 'closed', 'closed', '', 'huong-dan-thu-tuc-du-lich-dai-loan-chi-tiet', '', '', '2024-10-14 09:34:50', '2024-10-14 09:34:50', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=113', 0, 'visa_service', '', 0),
(114, 1, '2024-10-14 09:34:39', '2024-10-14 09:34:39', '', 'photo_2024-10-14_16-34-29', '', 'inherit', 'open', 'closed', '', 'photo_2024-10-14_16-34-29', '', '', '2024-10-14 09:34:39', '2024-10-14 09:34:39', '', 113, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/photo_2024-10-14_16-34-29.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2024-10-14 09:37:40', '2024-10-14 09:37:40', '<p>Cùng với <a href=\"https://thdtourist.vn/cong-van-nhap-canh/\">công văn nhập cảnh</a>, visa… thì thẻ tạm trú cũng là một trong những thủ tục hành chính rất quan trọng không thể thiếu đối với người nước ngoài khi mà họ muốn ở lại Việt Nam lâu hơn. Vậy vì sao người nước ngoài lại cần phải có thẻ tạm trú, chúng ta cùng đi tìm hiểu vấn đề này nhé.</p>', 'Dịch vụ làm thẻ tạm trú cho người nước ngoài tại Việt Nam', '', 'publish', 'closed', 'closed', '', 'dich-vu-lam-the-tam-tru-cho-nguoi-nuoc-ngoai-tai-viet-nam', '', '', '2024-10-14 09:37:40', '2024-10-14 09:37:40', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=115', 0, 'visa_service', '', 0),
(116, 1, '2024-10-14 09:37:19', '2024-10-14 09:37:19', '', 'the-tam-tru-nguoi-nuoc-ngoai-600x400', '', 'inherit', 'open', 'closed', '', 'the-tam-tru-nguoi-nuoc-ngoai-600x400', '', '', '2024-10-14 09:37:19', '2024-10-14 09:37:19', '', 115, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/the-tam-tru-nguoi-nuoc-ngoai-600x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2024-10-14 09:38:47', '2024-10-14 09:38:47', '<ul>\r\n<li>Tư vấn nhanh, chính xác các loại Visa bạn đang cần.</li>\r\n<li>Luyện kỹ năng phỏng vấn Visa các nước, BẢO ĐẢM KẾT QUẢ ĐẠT HIỆU QUẢ CAO NHẤT.</li>\r\n<li>Xem và tư vấn lại hồ sơ Visa đã bị từ chối.</li>\r\n<li>Hồ sơ bảo lãnh/định cư.</li>\r\n<li>Visa 3, 6, 12 tháng, gia hạn, thẻ cư trú,.. cho người nước ngoài vào VN.</li>\r\n<li>Và nhiều vấn đề khác…</li>\r\n</ul>', 'Dịch vụ làm Visa Cuba', '', 'publish', 'closed', 'closed', '', 'dich-vu-lam-visa-cuba', '', '', '2024-10-14 09:38:47', '2024-10-14 09:38:47', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=117', 0, 'visa_service', '', 0),
(118, 1, '2024-10-14 09:38:44', '2024-10-14 09:38:44', '', 'sssvisacuba-536x400', '', 'inherit', 'open', 'closed', '', 'sssvisacuba-536x400', '', '', '2024-10-14 09:38:44', '2024-10-14 09:38:44', '', 117, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/sssvisacuba-536x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2024-10-14 09:39:45', '2024-10-14 09:39:45', '<ul>\r\n<li>Tư vấn nhanh, chính xác các loại Visa bạn đang cần.</li>\r\n<li>Luyện kỹ năng phỏng vấn Visa các nước, BẢO ĐẢM KẾT QUẢ ĐẠT HIỆU QUẢ CAO NHẤT.</li>\r\n<li>Xem và tư vấn lại hồ sơ Visa đã bị từ chối.</li>\r\n<li>Hồ sơ bảo lãnh/định cư.</li>\r\n<li>Visa 3, 6, 12 tháng, gia hạn, thẻ cư trú,.. cho người nước ngoài vào VN.</li>\r\n<li>Và nhiều vấn đề khác…</li>\r\n</ul>', 'Dịch vụ làm Visa Brazil', '', 'publish', 'closed', 'closed', '', 'dich-vu-lam-visa-brazil', '', '', '2024-10-14 09:39:45', '2024-10-14 09:39:45', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=119', 0, 'visa_service', '', 0),
(120, 1, '2024-10-14 09:39:43', '2024-10-14 09:39:43', '', 'Bìa-Dịch-vụ-làm-visa-Brazil-560x400', '', 'inherit', 'open', 'closed', '', 'bia-dich-vu-lam-visa-brazil-560x400', '', '', '2024-10-14 09:39:43', '2024-10-14 09:39:43', '', 119, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/Bia-Dich-vu-lam-visa-Brazil-560x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2024-10-14 09:40:40', '2024-10-14 09:40:40', '<ul>\r\n<li>Tư vấn nhanh, chính xác các loại Visa bạn đang cần.</li>\r\n<li>Luyện kỹ năng phỏng vấn Visa các nước, BẢO ĐẢM KẾT QUẢ ĐẠT HIỆU QUẢ CAO NHẤT.</li>\r\n<li>Xem và tư vấn lại hồ sơ Visa đã bị từ chối.</li>\r\n<li>Hồ sơ bảo lãnh/định cư.</li>\r\n<li>Visa 3, 6, 12 tháng, gia hạn, thẻ cư trú,.. cho người nước ngoài vào VN.</li>\r\n<li>Và nhiều vấn đề khác…</li>\r\n</ul>', 'Dịch vụ làm Visa Đan Mạch', '', 'publish', 'closed', 'closed', '', 'dich-vu-lam-visa-dan-mach', '', '', '2024-10-14 09:40:40', '2024-10-14 09:40:40', '', 0, 'http://localhost/linhchi_travel/?post_type=visa_service&#038;p=121', 0, 'visa_service', '', 0),
(122, 1, '2024-10-14 09:40:38', '2024-10-14 09:40:38', '', '48cfe68017c6fe98a7d7-607x400', '', 'inherit', 'open', 'closed', '', '48cfe68017c6fe98a7d7-607x400', '', '', '2024-10-14 09:40:38', '2024-10-14 09:40:38', '', 121, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/48cfe68017c6fe98a7d7-607x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2024-10-14 10:29:31', '2024-10-14 10:29:31', 'Đại diện GĐ số 2 gồm 7 thành viên, cảm ơn 2 em hdv nhiệt tình dễ thương Thắng và Ngọc đã cho đoàn Hàn Quốc 9.11 những trải nghiệm thú vị, vui vẻ và đáng nhớ. Cảm ơn các GĐ đoàn mình đầy gắn kết và dễ thương. Hy vọng gặp lại cả nhà trong thời gian gần nhất.', 'Chị Hà Thị Thanh Thuỷ', '', 'publish', 'closed', 'closed', '', 'chi-ha-thi-thanh-thuy', '', '', '2024-10-14 16:11:32', '2024-10-14 16:11:32', '', 0, 'http://localhost/linhchi_travel/?post_type=testimonial&#038;p=123', 0, 'testimonial', '', 0),
(124, 1, '2024-10-14 10:29:28', '2024-10-14 10:29:28', '', 'z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510', '', 'inherit', 'open', 'closed', '', 'z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510', '', '', '2024-10-14 10:29:28', '2024-10-14 10:29:28', '', 123, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/z3879066306346-a34fce1d7a15a951946676fbfdf30397-510x510-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2024-10-14 10:30:05', '2024-10-14 10:30:05', 'Đại diện cho nhóm cá hộp 13 người, chân thành cảm ơn em Thắng, bé Lan và anh Tài color-man rất nhiều vì đã hỗ trợ gia đình mình trong suốt chuyến đi khám phá xứ sở hoa anh đào. Cảm ơn vì sự nhiệt tình, chu đáo và chuyên nghiệp của các bạn. Đó là điều mình đánh giá rất cao!!!', 'Chú Trương Nguyễn Anh Dũng', '', 'publish', 'closed', 'closed', '', 'chu-truong-nguyen-anh-dung', '', '', '2024-10-14 16:11:24', '2024-10-14 16:11:24', '', 0, 'http://localhost/linhchi_travel/?post_type=testimonial&#038;p=125', 0, 'testimonial', '', 0),
(126, 1, '2024-10-14 10:30:03', '2024-10-14 10:30:03', '', 'z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510', '', 'inherit', 'open', 'closed', '', 'z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510', '', '', '2024-10-14 10:30:03', '2024-10-14 10:30:03', '', 125, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/z3879062311411-36a36e099a44f664fc3eadd3e886abdc-510x510-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2024-10-14 10:30:39', '2024-10-14 10:30:39', 'Trong chuyến đi Phan Thiết cùng công ty, tôi cảm thấy rất hài lòng, đặc biệt là team building rất hài hước, hướng dẫn viên vui vẻ nhiệt tình, thức ăn ngon và resort rất tuyệt vời. Xin chân thành cảm ơn Intertour đã tổ chức cho chúng tôi một chuyến đi thật sự kỷ niệm.', 'Chị NGUYỄN THỊ THANH', '', 'publish', 'closed', 'closed', '', 'chi-nguyen-thi-thanh', '', '', '2024-10-14 16:11:16', '2024-10-14 16:11:16', '', 0, 'http://localhost/linhchi_travel/?post_type=testimonial&#038;p=127', 0, 'testimonial', '', 0),
(128, 1, '2024-10-14 10:30:37', '2024-10-14 10:30:37', '', 'tour-phan-thiet', '', 'inherit', 'open', 'closed', '', 'tour-phan-thiet', '', '', '2024-10-14 10:30:37', '2024-10-14 10:30:37', '', 127, 'http://localhost/linhchi_travel/wp-content/uploads/2024/10/tour-phan-thiet.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2024-10-14 10:31:16', '2024-10-14 10:31:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonial', 'testimonial', 'publish', 'closed', 'closed', '', 'group_670cf2e3edfcd', '', '', '2024-10-14 10:32:01', '2024-10-14 10:32:01', '', 0, 'http://localhost/linhchi_travel/?post_type=acf-field-group&#038;p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2024-10-14 10:31:16', '2024-10-14 10:31:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Địa chỉ', 'testimonial', 'publish', 'closed', 'closed', '', 'field_670cf2e433def', '', '', '2024-10-14 10:32:01', '2024-10-14 10:32:01', '', 129, 'http://localhost/linhchi_travel/?post_type=acf-field&#038;p=130', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Tour trong nước', 'tour-trong-nuoc', 0),
(4, 'Tour nước ngoài', 'tour-nuoc-ngoai', 0),
(5, 'Dịch vụ visa', 'dich-vu-visa', 0),
(6, 'Du học', 'du-hoc', 0),
(7, 'Kinh nghiệm', 'kinh-nghiem', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(21, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 3, 0),
(39, 4, 0),
(79, 4, 0),
(80, 4, 0),
(81, 4, 0),
(82, 4, 0),
(83, 4, 0),
(84, 4, 0),
(85, 4, 0),
(86, 4, 0),
(87, 4, 0),
(88, 4, 0),
(96, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'tour_category', '', 0, 2),
(4, 4, 'tour_category', '', 0, 11),
(5, 5, 'tour_category', '', 0, 0),
(6, 6, 'tour_category', '', 0, 0),
(7, 7, 'tour_category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"24bfa4b9106aacd052921e63ea66c6a44957541d6d776b370c4ec5f7e3ededf5\";a:4:{s:10:\"expiration\";i:1728836315;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728663515;}s:64:\"dcf1c1534f4b39687e2edaa9aa5df5ea98ee4b93c44d454461d7f0f2808c9ef5\";a:4:{s:10:\"expiration\";i:1728883598;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728710798;}s:64:\"877a9d3c1fed9a23c5ab08d7bea74cdb1cdc303933b3bd04c7ad041016214a5f\";a:4:{s:10:\"expiration\";i:1728953410;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728780610;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1728862246'),
(22, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-10-12T02:40:31.392Z\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_tour', 'a:0:{}'),
(25, 1, 'metaboxhidden_tour', 'a:3:{i:0;s:11:\"postexcerpt\";i:1;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";}'),
(26, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:22:\"acf-field-group-fields\";s:6:\"normal\";s:31:\"acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_acf-field-group', '1'),
(28, 1, 'meta-box-order_tour', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:56:\"submitdiv,tagsdiv-post_tag,tour_categorydiv,postimagediv\";s:6:\"normal\";s:91:\"acf-group_670aa3b7dd3af,acf-group_670aa1c66b027,acf-group_670a981988c19,postexcerpt,slugdiv\";s:8:\"advanced\";s:47:\"acf-group_670aa690b0a75,acf-group_670c7ef0ac749\";}'),
(29, 1, 'screen_layout_tour', '2'),
(30, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(31, 1, 'acf_user_settings', 'a:1:{s:23:\"options-pages-first-run\";b:1;}'),
(32, 1, 'closedpostboxes_acf-ui-options-page', 'a:0:{}'),
(33, 1, 'metaboxhidden_acf-ui-options-page', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(34, 1, 'closedpostboxes_visa_service', 'a:0:{}'),
(35, 1, 'metaboxhidden_visa_service', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'),
(36, 1, 'closedpostboxes_testimonial', 'a:0:{}'),
(37, 1, 'metaboxhidden_testimonial', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BIs2etoClFrCMI6CImg01hoWnHKsuo.', 'admin', 'doangiang665@gmail.com', 'http://localhost/linhchi_travel', '2024-10-11 16:18:25', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
