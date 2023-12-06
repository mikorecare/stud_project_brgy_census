-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 11:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-studentrecord`
--
CREATE DATABASE IF NOT EXISTS `db-studentrecord` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db-studentrecord`;
--
-- Database: `db_brgycensus`
--
CREATE DATABASE IF NOT EXISTS `db_brgycensus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_brgycensus`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_census`
--

CREATE TABLE `tbl_census` (
  `form_id` int(11) NOT NULL,
  `refno` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `names` longtext NOT NULL,
  `present_address` longtext NOT NULL,
  `provincial_address` longtext NOT NULL,
  `civil_status` text NOT NULL,
  `sex` text NOT NULL,
  `dob` text NOT NULL,
  `place_of_birth` text NOT NULL,
  `height` text NOT NULL,
  `weight` text NOT NULL,
  `contactno` text NOT NULL,
  `religion` text NOT NULL,
  `email` text NOT NULL,
  `education_attainment` longtext NOT NULL,
  `emp_record` longtext NOT NULL,
  `house_occupants` longtext NOT NULL,
  `occupations` longtext NOT NULL,
  `total_members` int(11) NOT NULL,
  `form_date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_census`
--

INSERT INTO `tbl_census` (`form_id`, `refno`, `user_id`, `names`, `present_address`, `provincial_address`, `civil_status`, `sex`, `dob`, `place_of_birth`, `height`, `weight`, `contactno`, `religion`, `email`, `education_attainment`, `emp_record`, `house_occupants`, `occupations`, `total_members`, `form_date_created`) VALUES
(19, '65479aefc565e', 23, '[\"Honor\",\"Cindy\",\"De Jesus\"]', '[\"Block 7\",\"Purok 14\",\"South Signal\",\"Taguig\",\"Owner\",\"11yrs\"]', '[\"Block 7\",\"Purok 14\",\"South Signal\",\"taguig\"]', 'Single', 'Female', '1997-10-14', 'manila', '5\'6', '58KG', '09128193158', 'catholic', 'cindyhonor@gmail.com', '{\"school\":[\"ems\",\"Signal Village\",\"n\\/a\",\"Tcu\"],\"school_address\":[\"taguig\",\"taguig\",\"taguig\",\"taguig\"]}', '{\"duration\":[\"n\\/a\",\"n\\/a\",\"n\\/a\"],\"name_of_emp\":[\"n\\/a\",\"n\\/a\",\"n\\/a\"],\"house_occu\":[\"n\\/a\",\"n\\/a\",\"n\\/a\"]}', '{\"ho_name\":[\"Ernesto\",\"Celia\",\"n\\/a\",\"N\\\\A\",\"N\\\\A\"],\"ho_fam_position\":[\"father\",\"mother\",\"n\\/a\",\"N\\\\A\",\"N\\\\A\"],\"ho_age\":[\"53\",\"49\",\" N\\\\A\",\"N\\\\A\",\"N\\\\A\"],\"ho_dob\":[\"06\\\\18\\\\67\",\"06\\\\14\\\\77\",\"n\\\\a\",\"N\\\\A\",\"N\\\\A\"],\"ho_civil_status\":[\"married\",\"married\",\"N\\\\A\",\"N\\\\A\",\"N\\\\A\"],\"ho_occu_company\":[\"n\\/a\",\"n\\/a\",\"n\\/a\",\"n\\/a\",\"n\\/a\"]}', '{\"job_id\":0,\"other\":\"\"}', 3, '2023-11-05 13:39:03'),
(20, '654deea9ca5b9', 25, '[\"barbado\",\"james\",\"tugade\"]', '[\"cabasaan\",\"south\",\"south signal\",\"taguig\",\"Owner\",\"26years\"]', '[\"na\",\"na\",\"na\",\"na\"]', 'Single', 'Male', '2010-02-16', 'taguig', '57', '58KG', '0956584562', 'na', 'james@gmail.com', '{\"school\":[\"ems\",\"signal\",\"na\",\"tcu\"],\"school_address\":[\"na\",\"na\",\"na\",\"na\"]}', '{\"duration\":[\"na\",\"na\",\"na\"],\"name_of_emp\":[\"james barbado\",\"na\",\"na\"],\"house_occu\":[\"na\",\"na\",\"na\"]}', '{\"ho_name\":[\"arjhay\",\"\",\"\",\"\",\"\"],\"ho_fam_position\":[\"father\",\"\",\"\",\"\",\"\"],\"ho_age\":[\"30\",\"\",\"\",\"\",\"\"],\"ho_dob\":[\"1312\",\"\",\"\",\"\",\"\"],\"ho_civil_status\":[\"single\",\"\",\"\",\"\",\"\"],\"ho_occu_company\":[\"a\",\"\",\"\",\"\",\"\"]}', '{\"job_id\":\"7\",\"other\":\"street sweeper\"}', 20, '2023-11-10 08:49:52'),
(21, '654f3012beac2', 26, '[\"cruz\",\"juan\",\"jdfkdjfkdjfddjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj\"]', '[\"22222222222222222222222222222222222222222222222222222222222\",\"5\",\"l bicutan\",\"taguig\",\"Boarder\\/Rentee\",\"10000000000000000000\"]', '[\"19\",\"4\",\"lower Bicutan\",\"taguig\"]', 'Married', 'Male', '2023-11-10', 'kdgfo948948594859', '8', '100', '0955555555555555555555555555555555555', 'Christian', 'dela@yahoo.com', '{\"school\":[\"lower elem\",\"TNH\",\"na\",\"PUP\"],\"school_address\":[\"taguig\",\"taguig\",\"na\",\"taguig\"]}', '{\"duration\":[\"na\",\"na\",\"na\"],\"name_of_emp\":[\"na\",\"na\",\"na\"],\"house_occu\":[\"na\",\"na\",\"na\"]}', '{\"ho_name\":[\"\",\"\",\"\",\"\",\"\"],\"ho_fam_position\":[\"\",\"\",\"\",\"\",\"\"],\"ho_age\":[\"\",\"\",\"\",\"\",\"\"],\"ho_dob\":[\"\",\"\",\"an\",\"\",\"\"],\"ho_civil_status\":[\"\",\"\",\"\",\"\",\"\"],\"ho_occu_company\":[\"\",\"\",\"\",\"\",\"\"]}', '{\"job_id\":\"1\",\"other\":\"\"}', 5, '2023-11-11 07:41:10'),
(22, '654f326855411', 26, '[\"juan\",\"cruz\",\"jasfkjdkfjOrtega\"]', '[\"78\",\"787\",\"7878\",\"jdkf\",\"Owner\",\"Boarder\\/Rentee\",\"44444444444\"]', '[\"fgfgf\",\"fgfgf\",\"lower \",\"taguig\"]', 'Separated', 'Male', '2023-11-11', 'df', '343434', '898989898', '89898989898', '89wr9werjkj', 'jdfjdkfjdkjfdkfj', '{\"school\":[\"kdlfdkl\",\"kjkjk\",\"jkjk\",\"jkjk\"],\"school_address\":[\"jkj\",\"j\",\"jkjk\",\"jkjjk\"]}', '{\"duration\":[\"ioi\",\"ioioi\",\"ioioi\"],\"name_of_emp\":[\"oioio\",\"ioi\",\"ioioi\"],\"house_occu\":[\"ioi\",\"oioi\",\"ioi\"]}', '{\"ho_name\":[\"ioio\",\"\",\"\",\"\",\"\"],\"ho_fam_position\":[\"ioio\",\"\",\"\",\"\",\"\"],\"ho_age\":[\"ioio\",\"\",\"\",\"\",\"\"],\"ho_dob\":[\"ioi\",\"\",\"\",\"\",\"\"],\"ho_civil_status\":[\"ioio\",\"\",\"\",\"\",\"\"],\"ho_occu_company\":[\"ioi\",\"\",\"\",\"\",\"\"]}', '{\"job_id\":\"1\",\"other\":\"\"}', 1, '2023-11-11 07:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` text NOT NULL,
  `create_job_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `job_title`, `create_job_date`) VALUES
(1, 'Others', '2023-09-18 20:58:05'),
(2, 'IT-Programmer', '2023-09-19 04:14:12'),
(4, 'Accountant', '2023-09-19 04:14:12'),
(5, 'Bussinessman', '2023-09-19 04:14:12'),
(7, 'Software Engeneer', '2023-09-23 10:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logo_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `web_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logo_id`, `path`, `web_title`) VALUES
(1, 'avatar_0.92839000 1699190373.jpg', 'WEB-BASED CENSUS FOR BARANGAY SOUTH SIGNAL WITH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `userType` int(11) NOT NULL,
  `avatar` text NOT NULL,
  `u_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `userType`, `avatar`, `u_status`) VALUES
(1, 'admin', 'Admin', 'Admin', 'admin@gmail.com', '09234727213', '21232f297a57a5a743894a0e4a801fc3', 0, 'avatar_0.57507300 1699605675.jpg', 0),
(20, 'ryan james', 'ryan james', 'sy', 'syryanjames@gmail.com', '09516595781', 'e10adc3949ba59abbe56e057f20f883e', 1, 'avatar.png', 1),
(22, 'hermie', 'hermie', 'hermie', 'hermsscambel06@gmail.com', '09109443968', '0e49ab8b631db42a8c64deb87235a222', 1, 'avatar.png', 1),
(23, 'cindy', 'Cindy', 'Honor', 'cindyhonor@gmail.com', '09128193158', 'cc4b2066cfef89f2475de1d4da4b29c7', 1, 'avatar.png', 1),
(24, 'arjhay', 'ryan james', 'sy', 'syryanjames@gmail.com', '09516595781', 'e10adc3949ba59abbe56e057f20f883e', 1, 'avatar.png', 0),
(25, 'arjhaysy', 'james', 'barbado', 'james@gmail.com', '09516595781', 'e10adc3949ba59abbe56e057f20f883e', 1, 'avatar.png', 1),
(26, 'eioejroeri1', 'eioejroeri1', '        eioejroeri1', 'romel@gmail.com', '09238737464232', '217dd2eb88dbc2ece7ee4720c660cfe4', 1, 'avatar.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_census`
--
ALTER TABLE `tbl_census`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_census`
--
ALTER TABLE `tbl_census`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Database: `db_brgycensusnew`
--
CREATE DATABASE IF NOT EXISTS `db_brgycensusnew` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_brgycensusnew`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logo_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `web_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logo_id`, `path`, `web_title`) VALUES
(1, 'avatar_0.36534100 1694502262.png', 'Census For Barangay South Signal With Application Of Data Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `userType` int(11) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `userType`, `avatar`) VALUES
(1, 'admin', 'Juan', 'Dela Cruz', 'admin@gmail.com', '09234727213', '21232f297a57a5a743894a0e4a801fc3', 0, 'avatar.png'),
(17, 'vipuser', 'John ', 'Doe', 'vipuser@gmail.com', '096546453252', '918ac42ad6257642fb7ccf12519fd1d9', 1, 'avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `groupdb`
--
CREATE DATABASE IF NOT EXISTS `groupdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `groupdb`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-06 23:58:48', '2023-10-06 23:58:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/create/wordpress', 'yes'),
(2, 'home', 'http://localhost/create/wordpress', 'yes'),
(3, 'blogname', 'pppp', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hermsscambel06@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1712188727', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1697263129;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697284729;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697284749;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697327929;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697327949;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697327960;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697846810;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696636798;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(150, 'current_theme', 'Twenty Seventeen', 'yes'),
(151, 'theme_mods_twentytwentytwo', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696637246;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(160, 'db_upgraded', '', 'yes'),
(162, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"hermsscambel06@gmail.com\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697262311;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(163, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/editor.css\";i:3;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/editor.min.css\";i:4;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/style-rtl.css\";i:5;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/style.css\";i:7;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/archives/style.min.css\";i:8;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/editor.css\";i:11;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/editor.min.css\";i:12;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/style-rtl.css\";i:13;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/style.css\";i:15;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/style.min.css\";i:16;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/theme.css\";i:19;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/audio/theme.min.css\";i:20;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/editor.css\";i:23;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/editor.min.css\";i:24;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/style.css\";i:27;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/avatar/style.min.css\";i:28;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/block/editor-rtl.css\";i:29;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/block/editor.css\";i:31;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/block/editor.min.css\";i:32;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/editor-rtl.css\";i:33;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/editor.css\";i:35;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/editor.min.css\";i:36;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/style-rtl.css\";i:37;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/style.css\";i:39;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/button/style.min.css\";i:40;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/editor.css\";i:43;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/editor.min.css\";i:44;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/style.css\";i:47;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/buttons/style.min.css\";i:48;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/calendar/style.css\";i:51;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/calendar/style.min.css\";i:52;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/editor.css\";i:55;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/editor.min.css\";i:56;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/style-rtl.css\";i:57;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/style.css\";i:59;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/categories/style.min.css\";i:60;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/editor-rtl.css\";i:61;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/editor.css\";i:63;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/editor.min.css\";i:64;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/style-rtl.css\";i:65;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:66:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/style.css\";i:67;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/style.min.css\";i:68;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/theme-rtl.css\";i:69;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:66:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/theme.css\";i:71;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/code/theme.min.css\";i:72;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/editor.css\";i:75;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/editor.min.css\";i:76;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/style-rtl.css\";i:77;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/style.css\";i:79;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/columns/style.min.css\";i:80;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-content/style.css\";i:83;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-content/style.min.css\";i:84;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-template/style.css\";i:87;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comment-template/style.min.css\";i:88;s:94:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:98:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:90:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:94:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:90:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:89:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/style.css\";i:99;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-title/editor.css\";i:103;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/editor.css\";i:107;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/editor.min.css\";i:108;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/style-rtl.css\";i:109;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/style.css\";i:111;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/comments/style.min.css\";i:112;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/editor.css\";i:115;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/editor.min.css\";i:116;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/style-rtl.css\";i:117;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/style.css\";i:119;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/cover/style.min.css\";i:120;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/editor-rtl.css\";i:121;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/editor.css\";i:123;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/editor.min.css\";i:124;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/style-rtl.css\";i:125;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/style.css\";i:127;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/details/style.min.css\";i:128;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/editor.css\";i:131;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/editor.min.css\";i:132;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/style-rtl.css\";i:133;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/style.css\";i:135;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/style.min.css\";i:136;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/theme.css\";i:139;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/embed/theme.min.css\";i:140;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/editor-rtl.css\";i:141;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/editor.css\";i:143;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/editor.min.css\";i:144;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/style-rtl.css\";i:145;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:66:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/style.css\";i:147;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/file/style.min.css\";i:148;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/footnotes/style.css\";i:151;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/footnotes/style.min.css\";i:152;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/freeform/editor.css\";i:155;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/freeform/editor.min.css\";i:156;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/editor.css\";i:159;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/editor.min.css\";i:160;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/style.css\";i:163;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/style.min.css\";i:164;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/theme.css\";i:167;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/gallery/theme.min.css\";i:168;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/editor-rtl.css\";i:169;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/editor.css\";i:171;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/editor.min.css\";i:172;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/style-rtl.css\";i:173;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/style.css\";i:175;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/style.min.css\";i:176;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/theme-rtl.css\";i:177;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/theme.css\";i:179;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/group/theme.min.css\";i:180;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/heading/style-rtl.css\";i:181;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/heading/style.css\";i:183;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/heading/style.min.css\";i:184;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/html/editor-rtl.css\";i:185;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/html/editor.css\";i:187;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/html/editor.min.css\";i:188;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/editor-rtl.css\";i:189;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/editor.css\";i:191;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/editor.min.css\";i:192;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/style-rtl.css\";i:193;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/style.css\";i:195;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/style.min.css\";i:196;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/theme-rtl.css\";i:197;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/theme.css\";i:199;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/image/theme.min.css\";i:200;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-comments/style.css\";i:203;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/editor.css\";i:207;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/style.css\";i:211;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/list/style-rtl.css\";i:213;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:66:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/list/style.css\";i:215;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/list/style.min.css\";i:216;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/editor.css\";i:219;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/editor.min.css\";i:220;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/style.css\";i:223;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/media-text/style.min.css\";i:224;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/more/editor-rtl.css\";i:225;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/more/editor.css\";i:227;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/more/editor.min.css\";i:228;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/editor.css\";i:231;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/style.css\";i:235;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:89:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/editor.css\";i:243;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/editor.min.css\";i:244;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/style.css\";i:247;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/navigation/style.min.css\";i:248;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/nextpage/editor.css\";i:251;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/editor.css\";i:255;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/editor.min.css\";i:256;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/style.css\";i:259;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/page-list/style.min.css\";i:260;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/editor.css\";i:263;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/style.css\";i:267;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/paragraph/style.min.css\";i:268;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-author/style.css\";i:271;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-author/style.min.css\";i:272;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:89:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:84:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:88:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/style.css\";i:279;s:84:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-date/style.css\";i:283;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-date/style.min.css\";i:284;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/style.css\";i:291;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:90:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:89:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/style.css\";i:299;s:85:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:90:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:84:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/editor.css\";i:307;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/editor.min.css\";i:308;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/style.css\";i:311;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-template/style.min.css\";i:312;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-terms/style.css\";i:315;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-terms/style.min.css\";i:316;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-title/style.css\";i:319;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/post-title/style.min.css\";i:320;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/preformatted/style.css\";i:323;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/preformatted/style.min.css\";i:324;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/editor.css\";i:327;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/style.css\";i:331;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/style.min.css\";i:332;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/theme.css\";i:335;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:91:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:95:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:87:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:91:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:87:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/editor.css\";i:343;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/style.css\";i:347;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-title/style.css\";i:351;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query-title/style.min.css\";i:352;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query/editor-rtl.css\";i:353;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query/editor.css\";i:355;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/query/editor.min.css\";i:356;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/style-rtl.css\";i:357;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/style.css\";i:359;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/style.min.css\";i:360;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/theme.css\";i:363;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/quote/theme.min.css\";i:364;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/read-more/style.css\";i:367;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/read-more/style.min.css\";i:368;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:66:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/editor.css\";i:371;s:70:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/editor.min.css\";i:372;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/style-rtl.css\";i:373;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:65:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/style.css\";i:375;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/rss/style.min.css\";i:376;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/editor-rtl.css\";i:377;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/editor.css\";i:379;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/editor.min.css\";i:380;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/style-rtl.css\";i:381;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/style.css\";i:383;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/style.min.css\";i:384;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/theme-rtl.css\";i:385;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/theme.css\";i:387;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/search/theme.min.css\";i:388;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/editor.css\";i:391;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/editor.min.css\";i:392;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/style-rtl.css\";i:393;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/style.css\";i:395;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/style.min.css\";i:396;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/theme.css\";i:399;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/separator/theme.min.css\";i:400;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/shortcode/editor.css\";i:403;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/editor.css\";i:407;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/style.css\";i:411;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-logo/style.min.css\";i:412;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-tagline/editor.css\";i:415;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:81:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/editor.css\";i:419;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/editor.min.css\";i:420;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/style.css\";i:423;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/site-title/style.min.css\";i:424;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-link/editor.css\";i:427;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-link/editor.min.css\";i:428;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/editor.css\";i:431;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/editor.min.css\";i:432;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/style.css\";i:435;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/social-links/style.min.css\";i:436;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:77:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:69:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/editor.css\";i:439;s:73:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/editor.min.css\";i:440;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/style.css\";i:443;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/spacer/style.min.css\";i:444;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/editor-rtl.css\";i:445;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/editor.css\";i:447;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/editor.min.css\";i:448;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/style-rtl.css\";i:449;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/style.css\";i:451;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/style.min.css\";i:452;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/theme-rtl.css\";i:453;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/theme.css\";i:455;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/table/theme.min.css\";i:456;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/tag-cloud/style.css\";i:459;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:84:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/editor.css\";i:463;s:80:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/editor.min.css\";i:464;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/theme.css\";i:467;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/template-part/theme.min.css\";i:468;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:86:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/term-description/style.css\";i:471;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/term-description/style.min.css\";i:472;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:83:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/editor.css\";i:475;s:79:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:82:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:74:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/style.css\";i:479;s:78:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/text-columns/style.min.css\";i:480;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/verse/style-rtl.css\";i:481;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/verse/style.css\";i:483;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/verse/style.min.css\";i:484;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/editor-rtl.css\";i:485;s:76:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:68:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/editor.css\";i:487;s:72:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/editor.min.css\";i:488;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/style-rtl.css\";i:489;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/style.css\";i:491;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/style.min.css\";i:492;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/theme-rtl.css\";i:493;s:75:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:67:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/theme.css\";i:495;s:71:\"C:/xampp/htdocs/create/wordpress/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(164, 'can_compress_scripts', '1', 'yes'),
(173, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(182, '_transient_is_multi_author', '0', 'yes'),
(184, '_site_transient_timeout_theme_roots', '1697264078', 'no'),
(185, '_site_transient_theme_roots', 'a:4:{s:15:\"twentyseventeen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(187, '_transient_twentyseventeen_categories', '1', 'yes'),
(188, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697262308;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(189, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697262309;s:7:\"checked\";a:4:{s:15:\"twentyseventeen\";s:3:\"3.2\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.3.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(190, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697262311;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(191, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1697867113', 'no'),
(192, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(193, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2023/10/espresso.jpg'),
(4, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/espresso.jpg\";s:8:\"filesize\";i:93540;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_starter_content_theme', 'twentyseventeen'),
(6, 6, '_customize_draft_post_name', 'espresso'),
(7, 7, '_wp_attached_file', '2023/10/sandwich.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/sandwich.jpg\";s:8:\"filesize\";i:171858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 7, '_starter_content_theme', 'twentyseventeen'),
(10, 7, '_customize_draft_post_name', 'sandwich'),
(11, 8, '_wp_attached_file', '2023/10/coffee.jpg'),
(12, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2023/10/coffee.jpg\";s:8:\"filesize\";i:117713;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 8, '_starter_content_theme', 'twentyseventeen'),
(14, 8, '_customize_draft_post_name', 'coffee'),
(15, 9, '_customize_draft_post_name', 'home'),
(16, 9, '_customize_changeset_uuid', 'e50f7130-27f1-4268-9fce-9da144c39051'),
(17, 10, '_thumbnail_id', '7'),
(18, 10, '_customize_draft_post_name', 'about'),
(19, 10, '_customize_changeset_uuid', 'e50f7130-27f1-4268-9fce-9da144c39051'),
(20, 11, '_thumbnail_id', '6'),
(21, 11, '_customize_draft_post_name', 'contact'),
(22, 11, '_customize_changeset_uuid', 'e50f7130-27f1-4268-9fce-9da144c39051'),
(23, 12, '_thumbnail_id', '8'),
(24, 12, '_customize_draft_post_name', 'blog'),
(25, 12, '_customize_changeset_uuid', 'e50f7130-27f1-4268-9fce-9da144c39051'),
(26, 13, '_thumbnail_id', '6'),
(27, 13, '_customize_draft_post_name', 'a-homepage-section'),
(28, 13, '_customize_changeset_uuid', 'e50f7130-27f1-4268-9fce-9da144c39051'),
(30, 15, '_wp_attached_file', '2023/10/333333.jpg'),
(31, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:18:\"2023/10/333333.jpg\";s:8:\"filesize\";i:6021;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 16, '_wp_attached_file', '2023/10/hvjgyigyi.jpg'),
(33, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:654;s:6:\"height\";i:649;s:4:\"file\";s:21:\"2023/10/hvjgyigyi.jpg\";s:8:\"filesize\";i:32925;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 17, '_wp_attached_file', '2023/10/espresso-1.jpg'),
(37, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2023/10/espresso-1.jpg\";s:8:\"filesize\";i:93540;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 17, '_starter_content_theme', 'twentyseventeen'),
(39, 17, '_customize_draft_post_name', 'espresso'),
(40, 18, '_wp_attached_file', '2023/10/sandwich-1.jpg'),
(41, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2023/10/sandwich-1.jpg\";s:8:\"filesize\";i:171858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 18, '_starter_content_theme', 'twentyseventeen'),
(43, 18, '_customize_draft_post_name', 'sandwich'),
(44, 19, '_wp_attached_file', '2023/10/coffee-1.jpg'),
(45, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/coffee-1.jpg\";s:8:\"filesize\";i:117713;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 19, '_starter_content_theme', 'twentyseventeen'),
(47, 19, '_customize_draft_post_name', 'coffee'),
(48, 20, '_customize_draft_post_name', 'home'),
(49, 20, '_customize_changeset_uuid', '140b6654-d8f8-4400-93fd-c0e4a88dc535'),
(50, 21, '_thumbnail_id', '18'),
(51, 21, '_customize_draft_post_name', 'about'),
(52, 21, '_customize_changeset_uuid', '140b6654-d8f8-4400-93fd-c0e4a88dc535'),
(53, 22, '_thumbnail_id', '17'),
(54, 22, '_customize_draft_post_name', 'contact'),
(55, 22, '_customize_changeset_uuid', '140b6654-d8f8-4400-93fd-c0e4a88dc535'),
(56, 23, '_thumbnail_id', '19'),
(57, 23, '_customize_draft_post_name', 'blog'),
(58, 23, '_customize_changeset_uuid', '140b6654-d8f8-4400-93fd-c0e4a88dc535'),
(59, 24, '_thumbnail_id', '17'),
(60, 24, '_customize_draft_post_name', 'a-homepage-section'),
(61, 24, '_customize_changeset_uuid', '140b6654-d8f8-4400-93fd-c0e4a88dc535'),
(62, 14, '_customize_restore_dismissed', '1'),
(63, 26, '_wp_attached_file', '2023/10/espresso-2.jpg'),
(64, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2023/10/espresso-2.jpg\";s:8:\"filesize\";i:93540;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 26, '_starter_content_theme', 'twentyseventeen'),
(66, 26, '_customize_draft_post_name', 'espresso'),
(67, 27, '_wp_attached_file', '2023/10/sandwich-2.jpg'),
(68, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2023/10/sandwich-2.jpg\";s:8:\"filesize\";i:171858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 27, '_starter_content_theme', 'twentyseventeen'),
(70, 27, '_customize_draft_post_name', 'sandwich'),
(71, 28, '_wp_attached_file', '2023/10/coffee-2.jpg'),
(72, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/coffee-2.jpg\";s:8:\"filesize\";i:117713;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 28, '_starter_content_theme', 'twentyseventeen'),
(74, 28, '_customize_draft_post_name', 'coffee'),
(75, 29, '_customize_draft_post_name', 'home'),
(76, 29, '_customize_changeset_uuid', '3d26482e-31e0-4686-9f9d-4441e5feb856'),
(77, 30, '_thumbnail_id', '27'),
(78, 30, '_customize_draft_post_name', 'about'),
(79, 30, '_customize_changeset_uuid', '3d26482e-31e0-4686-9f9d-4441e5feb856'),
(80, 31, '_thumbnail_id', '26'),
(81, 31, '_customize_draft_post_name', 'contact'),
(82, 31, '_customize_changeset_uuid', '3d26482e-31e0-4686-9f9d-4441e5feb856'),
(83, 32, '_thumbnail_id', '28'),
(84, 32, '_customize_draft_post_name', 'blog'),
(85, 32, '_customize_changeset_uuid', '3d26482e-31e0-4686-9f9d-4441e5feb856'),
(86, 33, '_thumbnail_id', '26'),
(87, 33, '_customize_draft_post_name', 'a-homepage-section'),
(88, 33, '_customize_changeset_uuid', '3d26482e-31e0-4686-9f9d-4441e5feb856'),
(89, 34, '_edit_lock', '1696637694:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-06 23:58:48', '2023-10-06 23:58:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-06 23:58:48', '2023-10-06 23:58:48', '', 0, 'http://localhost/create/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-06 23:58:48', '2023-10-06 23:58:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/create/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-06 23:58:48', '2023-10-06 23:58:48', '', 0, 'http://localhost/create/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-06 23:58:48', '2023-10-06 23:58:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/create/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-06 23:58:48', '2023-10-06 23:58:48', '', 0, 'http://localhost/create/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-10-06 23:59:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-06 23:59:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2023-10-07 00:00:55', '2023-10-07 00:00:55', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2023-10-07 00:00:55', '2023-10-07 00:00:55', '', 0, 'http://localhost/create/wordpress/2023/10/07/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you are a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.</p>\n<!-- /wp:paragraph -->', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:07:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-10-07 00:10:04', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"widget_search[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-2\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12,\n            13\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/create/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 12,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:07:47\"\n    },\n    \"blogname\": {\n        \"value\": \"working\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:09:05\"\n    },\n    \"blogdescription\": {\n        \"value\": \"hgvhvhgugu\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:09:05\"\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:10:04\"\n    },\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:10:04\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e50f7130-27f1-4268-9fce-9da144c39051', '', '', '2023-10-07 00:10:04', '2023-10-07 00:10:04', '', 0, 'http://localhost/create/wordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2023-10-07 00:09:05', '2023-10-07 00:09:05', '', '333333', '', 'inherit', 'open', 'closed', '', '333333', '', '', '2023-10-07 00:09:05', '2023-10-07 00:09:05', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/333333.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2023-10-07 00:10:24', '2023-10-07 00:10:24', '', '[hvjgyigyi', '', 'inherit', 'open', 'closed', '', 'hvjgyigyi', '', '', '2023-10-07 00:10:24', '2023-10-07 00:10:24', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/hvjgyigyi.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you are a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.</p>\n<!-- /wp:paragraph -->', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-10-07 00:11:09', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"widget_search[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-2\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            17,\n            18,\n            19,\n            20,\n            21,\n            22,\n            23,\n            24\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/create/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 21,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 23,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 22,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 23,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 24,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:11:09\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '140b6654-d8f8-4400-93fd-c0e4a88dc535', '', '', '2023-10-07 00:11:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/espresso-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/sandwich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/wp-content/uploads/2023/10/coffee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you are a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.</p>\n<!-- /wp:paragraph -->', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 00:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/create/wordpress/?page_id=33', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(34, 1, '2023-10-07 00:14:54', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"widget_search[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-2\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"68e6382156e6e2a9df7b1953bfb01e4a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49d5c450d21c308e246678d12481a34c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"af173a1271cbc75d5d258fc8c16ba2bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/create/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 30,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 32,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 31,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:14:54\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 29,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 32,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 33,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 32,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 31,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 00:13:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '3d26482e-31e0-4686-9f9d-4441e5feb856', '', '', '2023-10-07 00:14:54', '2023-10-07 00:14:54', '', 0, 'http://localhost/create/wordpress/?p=34', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"f09a14d56e90e8f5a8f8b95a1d788a04bfc43d5f4f5cb32c2afb6eecb6d24f23\";a:4:{s:10:\"expiration\";i:1696809548;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47\";s:5:\"login\";i:1696636748;}s:64:\"185a2528c709fe0374f1beeeaa8ed7b3481f0cec6b36ab139d4cd5db72395abc\";a:4:{s:10:\"expiration\";i:1696809919;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47\";s:5:\"login\";i:1696637119;}s:64:\"50bbf452f11b3726144915d5a2b9c92d0a7e3a75e9db8fb67f3e983f8deeff7a\";a:4:{s:10:\"expiration\";i:1696809921;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47\";s:5:\"login\";i:1696637121;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1696637459'),
(20, 1, 'wp_persisted_preferences', 'a:2:{s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-07T00:12:11.713Z\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BpgrqlLd1ZdcBX3mgliGXtSF70mcM4.', 'admin', 'hermsscambel06@gmail.com', 'http://localhost/create/wordpress', '2023-10-06 23:58:48', '', 0, 'Admin');

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_brgycensus\",\"table\":\"tbl_census\"},{\"db\":\"db_brgycensus\",\"table\":\"tbl_user\"},{\"db\":\"db_brgycensusnew\",\"table\":\"tbl_user\"},{\"db\":\"db_brgycensusnew\",\"table\":\"tbl_logo\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-09 09:45:17', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student-record`
--
CREATE DATABASE IF NOT EXISTS `student-record` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student-record`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `textpattern`
--
CREATE DATABASE IF NOT EXISTS `textpattern` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `textpattern`;
--
-- Database: `textpatterndb`
--
CREATE DATABASE IF NOT EXISTS `textpatterndb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `textpatterndb`;
--
-- Database: `tpdb`
--
CREATE DATABASE IF NOT EXISTS `tpdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tpdb`;
--
-- Database: `wpdb`
--
CREATE DATABASE IF NOT EXISTS `wpdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wpdb`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-07 01:37:36', '2023-10-07 01:37:36', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WPTUTORIAL', 'yes'),
(2, 'home', 'http://localhost/WPTUTORIAL', 'yes'),
(3, 'blogname', 'cafe', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hermsscambel@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1712194656', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1697265458;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697290658;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697290687;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697333857;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697333887;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697333895;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697852407;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696642831;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(150, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/editor.css\";i:3;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/editor.min.css\";i:4;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/style-rtl.css\";i:5;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/style.css\";i:7;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/archives/style.min.css\";i:8;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/editor.css\";i:11;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/editor.min.css\";i:12;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/style-rtl.css\";i:13;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/style.css\";i:15;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/style.min.css\";i:16;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/theme.css\";i:19;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/audio/theme.min.css\";i:20;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/editor.css\";i:23;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/editor.min.css\";i:24;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/style.css\";i:27;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/avatar/style.min.css\";i:28;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/block/editor-rtl.css\";i:29;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/block/editor.css\";i:31;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/block/editor.min.css\";i:32;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/editor-rtl.css\";i:33;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/editor.css\";i:35;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/editor.min.css\";i:36;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/style-rtl.css\";i:37;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/style.css\";i:39;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/button/style.min.css\";i:40;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/editor.css\";i:43;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/editor.min.css\";i:44;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/style.css\";i:47;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/buttons/style.min.css\";i:48;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/calendar/style.css\";i:51;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/calendar/style.min.css\";i:52;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/editor.css\";i:55;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/editor.min.css\";i:56;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/style-rtl.css\";i:57;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/style.css\";i:59;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/categories/style.min.css\";i:60;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/editor-rtl.css\";i:61;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/editor.css\";i:63;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/editor.min.css\";i:64;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/style-rtl.css\";i:65;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:60:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/style.css\";i:67;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/style.min.css\";i:68;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/theme-rtl.css\";i:69;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:60:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/theme.css\";i:71;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/code/theme.min.css\";i:72;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/editor.css\";i:75;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/editor.min.css\";i:76;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/style-rtl.css\";i:77;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/style.css\";i:79;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/columns/style.min.css\";i:80;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-content/style.css\";i:83;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-content/style.min.css\";i:84;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-template/style.css\";i:87;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comment-template/style.min.css\";i:88;s:88:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:92:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:84:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:88:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:84:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:83:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/style.css\";i:99;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-title/editor.css\";i:103;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/editor.css\";i:107;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/editor.min.css\";i:108;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/style-rtl.css\";i:109;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/style.css\";i:111;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/comments/style.min.css\";i:112;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/editor.css\";i:115;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/editor.min.css\";i:116;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/style-rtl.css\";i:117;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/style.css\";i:119;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/cover/style.min.css\";i:120;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/editor-rtl.css\";i:121;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/editor.css\";i:123;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/editor.min.css\";i:124;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/style-rtl.css\";i:125;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/style.css\";i:127;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/details/style.min.css\";i:128;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/editor.css\";i:131;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/editor.min.css\";i:132;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/style-rtl.css\";i:133;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/style.css\";i:135;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/style.min.css\";i:136;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/theme.css\";i:139;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/embed/theme.min.css\";i:140;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/editor-rtl.css\";i:141;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/editor.css\";i:143;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/editor.min.css\";i:144;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/style-rtl.css\";i:145;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:60:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/style.css\";i:147;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/file/style.min.css\";i:148;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/footnotes/style.css\";i:151;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/footnotes/style.min.css\";i:152;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/freeform/editor.css\";i:155;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/freeform/editor.min.css\";i:156;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/editor.css\";i:159;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/editor.min.css\";i:160;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/style.css\";i:163;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/style.min.css\";i:164;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/theme.css\";i:167;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/gallery/theme.min.css\";i:168;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/editor-rtl.css\";i:169;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/editor.css\";i:171;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/editor.min.css\";i:172;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/style-rtl.css\";i:173;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/style.css\";i:175;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/style.min.css\";i:176;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/theme-rtl.css\";i:177;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/theme.css\";i:179;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/group/theme.min.css\";i:180;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/heading/style-rtl.css\";i:181;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/heading/style.css\";i:183;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/heading/style.min.css\";i:184;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/html/editor-rtl.css\";i:185;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/html/editor.css\";i:187;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/html/editor.min.css\";i:188;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/editor-rtl.css\";i:189;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/editor.css\";i:191;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/editor.min.css\";i:192;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/style-rtl.css\";i:193;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/style.css\";i:195;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/style.min.css\";i:196;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/theme-rtl.css\";i:197;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/theme.css\";i:199;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/image/theme.min.css\";i:200;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-comments/style.css\";i:203;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/editor.css\";i:207;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/style.css\";i:211;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/list/style-rtl.css\";i:213;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:60:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/list/style.css\";i:215;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/list/style.min.css\";i:216;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/editor.css\";i:219;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/editor.min.css\";i:220;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/style.css\";i:223;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/media-text/style.min.css\";i:224;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/more/editor-rtl.css\";i:225;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/more/editor.css\";i:227;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/more/editor.min.css\";i:228;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/editor.css\";i:231;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/style.css\";i:235;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:83:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/editor.css\";i:243;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/editor.min.css\";i:244;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/style.css\";i:247;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/navigation/style.min.css\";i:248;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/nextpage/editor.css\";i:251;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/editor.css\";i:255;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/editor.min.css\";i:256;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/style.css\";i:259;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/page-list/style.min.css\";i:260;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/editor.css\";i:263;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/style.css\";i:267;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/paragraph/style.min.css\";i:268;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-author/style.css\";i:271;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-author/style.min.css\";i:272;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:83:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:78:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:82:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/style.css\";i:279;s:78:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-date/style.css\";i:283;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-date/style.min.css\";i:284;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/style.css\";i:291;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:84:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:83:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/style.css\";i:299;s:79:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:84:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:78:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/editor.css\";i:307;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/editor.min.css\";i:308;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/style.css\";i:311;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-template/style.min.css\";i:312;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-terms/style.css\";i:315;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-terms/style.min.css\";i:316;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-title/style.css\";i:319;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/post-title/style.min.css\";i:320;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/preformatted/style.css\";i:323;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/preformatted/style.min.css\";i:324;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/editor.css\";i:327;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/style.css\";i:331;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/style.min.css\";i:332;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/theme.css\";i:335;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:85:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:89:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:81:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:85:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:81:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/editor.css\";i:343;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/style.css\";i:347;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-title/style.css\";i:351;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query-title/style.min.css\";i:352;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query/editor-rtl.css\";i:353;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query/editor.css\";i:355;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/query/editor.min.css\";i:356;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/style-rtl.css\";i:357;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/style.css\";i:359;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/style.min.css\";i:360;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/theme.css\";i:363;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/quote/theme.min.css\";i:364;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/read-more/style.css\";i:367;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/read-more/style.min.css\";i:368;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:60:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/editor.css\";i:371;s:64:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/editor.min.css\";i:372;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/style-rtl.css\";i:373;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:59:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/style.css\";i:375;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/rss/style.min.css\";i:376;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/editor-rtl.css\";i:377;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/editor.css\";i:379;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/editor.min.css\";i:380;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/style-rtl.css\";i:381;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/style.css\";i:383;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/style.min.css\";i:384;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/theme-rtl.css\";i:385;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/theme.css\";i:387;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/search/theme.min.css\";i:388;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/editor.css\";i:391;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/editor.min.css\";i:392;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/style-rtl.css\";i:393;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/style.css\";i:395;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/style.min.css\";i:396;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/theme.css\";i:399;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/separator/theme.min.css\";i:400;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/shortcode/editor.css\";i:403;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/editor.css\";i:407;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/style.css\";i:411;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-logo/style.min.css\";i:412;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-tagline/editor.css\";i:415;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:75:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/editor.css\";i:419;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/editor.min.css\";i:420;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/style.css\";i:423;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/site-title/style.min.css\";i:424;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-link/editor.css\";i:427;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-link/editor.min.css\";i:428;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/editor.css\";i:431;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/editor.min.css\";i:432;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/style.css\";i:435;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/social-links/style.min.css\";i:436;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:71:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:63:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/editor.css\";i:439;s:67:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/editor.min.css\";i:440;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/style.css\";i:443;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/spacer/style.min.css\";i:444;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/editor-rtl.css\";i:445;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/editor.css\";i:447;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/editor.min.css\";i:448;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/style-rtl.css\";i:449;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/style.css\";i:451;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/style.min.css\";i:452;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/theme-rtl.css\";i:453;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/theme.css\";i:455;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/table/theme.min.css\";i:456;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/tag-cloud/style.css\";i:459;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:78:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/editor.css\";i:463;s:74:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/editor.min.css\";i:464;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/theme.css\";i:467;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/template-part/theme.min.css\";i:468;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:80:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/term-description/style.css\";i:471;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/term-description/style.min.css\";i:472;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:77:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/editor.css\";i:475;s:73:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:76:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:68:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/style.css\";i:479;s:72:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/text-columns/style.min.css\";i:480;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/verse/style-rtl.css\";i:481;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/verse/style.css\";i:483;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/verse/style.min.css\";i:484;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/editor-rtl.css\";i:485;s:70:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:62:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/editor.css\";i:487;s:66:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/editor.min.css\";i:488;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/style-rtl.css\";i:489;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/style.css\";i:491;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/style.min.css\";i:492;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/theme-rtl.css\";i:493;s:69:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:61:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/theme.css\";i:495;s:65:\"C:/xampp/htdocs/WPTUTORIAL/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(151, 'db_upgraded', '', 'yes'),
(153, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"hermsscambel@gmail.com\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697262371;}', 'no'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(157, 'can_compress_scripts', '1', 'yes'),
(161, 'current_theme', 'Twenty Seventeen', 'yes'),
(162, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(168, '_transient_is_multi_author', '0', 'yes'),
(171, '_site_transient_timeout_theme_roots', '1697264141', 'no'),
(172, '_site_transient_theme_roots', 'a:4:{s:15:\"twentyseventeen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(174, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697262368;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(175, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697262370;s:7:\"checked\";a:4:{s:15:\"twentyseventeen\";s:3:\"3.2\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.3.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(176, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697262371;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(177, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1697867174', 'no'),
(178, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(179, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2023/10/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/espresso.jpg\";s:8:\"filesize\";i:93540;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_customize_draft_post_name', 'espresso'),
(7, 6, '_wp_attached_file', '2023/10/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2023/10/sandwich.jpg\";s:8:\"filesize\";i:171858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_customize_draft_post_name', 'sandwich'),
(11, 7, '_wp_attached_file', '2023/10/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2023/10/coffee.jpg\";s:8:\"filesize\";i:117713;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(14, 7, '_customize_draft_post_name', 'coffee'),
(15, 8, '_customize_draft_post_name', 'home'),
(16, 8, '_customize_changeset_uuid', '89a44b97-22cb-4e91-b6f0-f19bdd609714'),
(17, 9, '_thumbnail_id', '6'),
(18, 9, '_customize_draft_post_name', 'about'),
(19, 9, '_customize_changeset_uuid', '89a44b97-22cb-4e91-b6f0-f19bdd609714'),
(20, 10, '_thumbnail_id', '5'),
(21, 10, '_customize_draft_post_name', 'contact'),
(22, 10, '_customize_changeset_uuid', '89a44b97-22cb-4e91-b6f0-f19bdd609714'),
(23, 11, '_thumbnail_id', '7'),
(24, 11, '_customize_draft_post_name', 'blog'),
(25, 11, '_customize_changeset_uuid', '89a44b97-22cb-4e91-b6f0-f19bdd609714'),
(26, 12, '_thumbnail_id', '5'),
(27, 12, '_customize_draft_post_name', 'a-homepage-section'),
(28, 12, '_customize_changeset_uuid', '89a44b97-22cb-4e91-b6f0-f19bdd609714');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-07 01:37:36', '2023-10-07 01:37:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-07 01:37:36', '2023-10-07 01:37:36', '', 0, 'http://localhost/WPTUTORIAL/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-07 01:37:36', '2023-10-07 01:37:36', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/WPTUTORIAL/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-07 01:37:36', '2023-10-07 01:37:36', '', 0, 'http://localhost/WPTUTORIAL/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-07 01:37:36', '2023-10-07 01:37:36', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/WPTUTORIAL.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-07 01:37:36', '2023-10-07 01:37:36', '', 0, 'http://localhost/WPTUTORIAL/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-10-07 01:38:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-07 01:38:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?p=4', 0, 'post', '', 0),
(5, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/wp-content/uploads/2023/10/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/wp-content/uploads/2023/10/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/wp-content/uploads/2023/10/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you are a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.</p>\n<!-- /wp:paragraph -->', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-07 01:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-10-07 01:40:38', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b3bcaf1853b7b95a4a0822c379c895c9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"widget_search[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5eb6c7e49c65c28b618f1c693d46a33b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f29675d355c8caeaa13a30e5ac41ebb9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-2\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b3bcaf1853b7b95a4a0822c379c895c9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f29675d355c8caeaa13a30e5ac41ebb9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5eb6c7e49c65c28b618f1c693d46a33b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/WPTUTORIAL/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-07 01:40:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '89a44b97-22cb-4e91-b6f0-f19bdd609714', '', '', '2023-10-07 01:40:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/WPTUTORIAL/?p=13', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0ff2c7d91e44f2bf8d5b1f7f12baa9857f4aabc20c32e20e54ae2c38feb88fdf\";a:4:{s:10:\"expiration\";i:1696815486;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1696642686;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/avcAWOCebyH9z0MAp9VEScWGyrpB1', 'admin', 'hermsscambel@gmail.com', 'http://localhost/WPTUTORIAL', '2023-10-07 01:37:36', '', 0, 'admin');

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
