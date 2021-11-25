-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 02, 2021 at 06:49 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psmnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `file_path`, `created_at`, `updated_at`) VALUES
(1, '1611019679_intro.docx', '/storage/uploads/1611019678_intro.docx', '2021-01-18 17:27:59', '2021-01-18 17:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `coding_standards`
--

DROP TABLE IF EXISTS `coding_standards`;
CREATE TABLE IF NOT EXISTS `coding_standards` (
  `codestand_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codestand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codestand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_standards`
--

INSERT INTO `coding_standards` (`codestand_id`, `codestand_name`, `created_at`, `updated_at`) VALUES
(1, 'Security includes', NULL, '2021-06-26 04:32:05'),
(4, 'QR code', '2021-06-14 21:00:39', '2021-06-14 21:00:39'),
(6, 'example', '2021-06-26 18:53:35', '2021-06-26 18:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `defect_features`
--

DROP TABLE IF EXISTS `defect_features`;
CREATE TABLE IF NOT EXISTS `defect_features` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `defect_features`
--

INSERT INTO `defect_features` (`id`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'login', 'cannot input email', '2021-06-26 16:25:51', '2021-06-26 16:25:51');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

DROP TABLE IF EXISTS `mappings`;
CREATE TABLE IF NOT EXISTS `mappings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ustory_id` int(11) NOT NULL,
  `type_NFR` int(11) NOT NULL,
  `id_NFR` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`id`, `ustory_id`, `type_NFR`, `id_NFR`, `created_at`, `updated_at`) VALUES
(1, 25, 1, 1, '2021-06-26 01:50:17', '2021-06-26 01:50:17'),
(2, 25, 1, 1, '2021-06-26 01:50:40', '2021-06-26 01:50:40'),
(3, 25, 2, 2, '2021-06-26 01:50:40', '2021-06-26 01:50:40'),
(4, 25, 1, 1, '2021-06-26 01:51:08', '2021-06-26 01:51:08'),
(5, 25, 2, 2, '2021-06-26 01:51:08', '2021-06-26 01:51:08'),
(6, 25, 1, 1, '2021-06-26 01:51:50', '2021-06-26 01:51:50'),
(7, 25, 2, 2, '2021-06-26 01:51:50', '2021-06-26 01:51:50'),
(8, 25, 1, 1, '2021-06-26 01:52:18', '2021-06-26 01:52:18'),
(9, 25, 2, 2, '2021-06-26 01:52:18', '2021-06-26 01:52:18'),
(10, 25, 1, 1, '2021-06-26 02:01:26', '2021-06-26 02:01:26'),
(11, 25, 2, 2, '2021-06-26 02:01:26', '2021-06-26 02:01:26'),
(12, 38, 1, 1, '2021-06-26 07:45:51', '2021-06-26 07:45:51'),
(13, 38, 2, 2, '2021-06-26 07:45:51', '2021-06-26 07:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_03_16_084930_create_roles_table', 1),
(3, '2019_03_27_154105_create_projects_table', 1),
(4, '2019_05_05_171853_create_priorities_table', 1),
(5, '2019_05_05_174636_create_security_features_table', 1),
(6, '2019_05_07_143235_create_performance_features_table', 1),
(7, '2019_05_09_031717_create_product_features_table', 1),
(8, '2019_05_26_195719_create_defect_features_table', 1),
(9, '2019_06_29_163059_create_mappings_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2020_05_27_040214_create_tasks_table', 1),
(12, '2020_05_27_042541_create_statuses_table', 1),
(13, '2020_08_09_024542_create_teams_table', 1),
(14, '2020_08_18_123517_create_users_table', 1),
(15, '2020_08_20_012325_create_attachments_table', 1),
(16, '2020_08_23_090144_create_team_mappings_table', 1),
(17, '2020_09_12_015732_create_sprint_table', 1),
(18, '2020_09_14_083251_create_user_stories_table', 1),
(19, '2020_09_17_133209_create_coding_standards_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nadia.nzr26@gmail.com', '$2y$10$yKi0wckYnSUcWTgvOF7oLul7Cg9bWg5fRUqNq2Y/HbFBXY89rifmW', '2021-06-12 23:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `performance_features`
--

DROP TABLE IF EXISTS `performance_features`;
CREATE TABLE IF NOT EXISTS `performance_features` (
  `perfeature_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `perfeature_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`perfeature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_features`
--

INSERT INTO `performance_features` (`perfeature_id`, `perfeature_name`, `created_at`, `updated_at`) VALUES
(1, 'Loading Time', '2021-01-18 16:39:02', '2021-01-18 16:39:02'),
(2, 'Buffering Time', '2021-01-18 16:39:09', '2021-01-18 16:39:09'),
(3, 'Response Time', '2021-01-18 16:39:22', '2021-01-18 16:39:22'),
(4, 'Time', '2021-01-18 17:26:55', '2021-01-18 17:26:55'),
(8, 'example', '2021-06-26 18:52:38', '2021-06-26 18:52:38'),
(6, 'Loadings times', '2021-06-14 20:59:39', '2021-06-14 20:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
CREATE TABLE IF NOT EXISTS `priorities` (
  `prio_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prio_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`prio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`prio_id`, `prio_name`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL),
(2, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

DROP TABLE IF EXISTS `product_features`;
CREATE TABLE IF NOT EXISTS `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `profeature_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `proj_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proj_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `proj_name`, `proj_desc`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Java', 'Programming', '2021-01-05', '2021-07-30', NULL, '2021-06-14 20:51:45'),
(2, 1, 'Newy', 'New', '2021-06-10', '2021-07-10', '2021-06-10 00:03:17', '2021-06-13 22:44:05'),
(13, 3, 'fs', 'ad', '2021-06-23', '2021-07-23', '2021-06-22 22:27:33', '2021-06-22 22:27:33'),
(17, 1, 'New', 'Project', '2021-06-27', '2021-07-27', '2021-06-26 18:47:11', '2021-06-26 18:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Project Manager', NULL, NULL),
(2, 'Scrum Master', '2021-01-04 08:43:41', '2021-01-04 08:43:41'),
(3, 'Software Tester', '2021-01-04 08:43:55', '2021-01-04 08:43:55'),
(4, 'Chief Programmer', '2021-01-04 08:44:23', '2021-01-04 08:44:23'),
(5, 'Programmer', '2021-01-18 17:25:15', '2021-01-18 17:25:15'),
(7, 'System Analyst', '2021-06-14 21:01:08', '2021-06-26 04:34:09'),
(11, 'User', '2021-06-26 18:53:48', '2021-06-26 18:53:48'),
(10, 'PM', '2021-06-26 08:35:39', '2021-06-26 08:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `security_features`
--

DROP TABLE IF EXISTS `security_features`;
CREATE TABLE IF NOT EXISTS `security_features` (
  `SecFeature_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `secfeature_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secfeature_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`SecFeature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `security_features`
--

INSERT INTO `security_features` (`SecFeature_id`, `secfeature_name`, `secfeature_desc`, `created_at`, `updated_at`) VALUES
(1, 'SQL Injection', 'Avoid any hacker', '2021-01-18 16:37:58', '2021-01-18 16:37:58'),
(2, 'Cross_Site Scripting', 'Malicious Scripts', '2021-01-18 16:38:24', '2021-01-18 16:38:24'),
(3, 'SQL', 'sql', '2021-01-18 17:27:10', '2021-01-18 17:27:10'),
(6, 'DDos', 'asdasd', '2021-06-26 04:29:39', '2021-06-26 04:29:39'),
(7, 'test', 'test', '2021-06-26 08:34:30', '2021-06-26 08:34:30'),
(8, 'example', 'ex', '2021-06-26 18:52:51', '2021-06-26 18:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `sprint`
--

DROP TABLE IF EXISTS `sprint`;
CREATE TABLE IF NOT EXISTS `sprint` (
  `sprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sprint_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sprint_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_sprint` date NOT NULL,
  `end_sprint` date NOT NULL,
  `proj_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sprint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sprint`
--

INSERT INTO `sprint` (`sprint_id`, `sprint_name`, `sprint_desc`, `start_sprint`, `end_sprint`, `proj_name`, `users_name`, `created_at`, `updated_at`) VALUES
(1, 'Sprint 1', 'Sprint 1', '2021-01-05', '2021-02-05', 'Java', 'nadianazri', NULL, NULL),
(2, 'Sprint 2', 'Sprint 2', '2021-01-12', '2021-02-05', 'Java', 'diyana', '2021-02-12 06:07:36', '2021-02-12 06:07:36'),
(3, 'Sprint 3', 'Sprint 3', '2021-02-01', '2021-02-28', 'Java', 'haniza', '2021-06-10 19:10:06', '2021-06-10 19:10:06'),
(8, 'Sprint 4', 'Sprint 4', '2021-06-15', '2021-07-15', 'Java', 'nazirah', '2021-06-14 20:55:33', '2021-06-14 20:55:33'),
(9, 'Sprint 1', 'Sprint 1', '2021-06-11', '2021-06-18', 'Newy', 'diyana', '2021-06-25 20:29:27', '2021-06-25 20:29:27'),
(10, 'Sprint 1', 'Sprint 1', '2021-06-24', '2021-07-01', 'fs', 'haniza', '2021-06-25 20:30:06', '2021-06-25 20:30:06'),
(11, 'Sprint 1', 'Sprint 1', '2021-06-27', '2021-07-03', 'adas', 'diyana', '2021-06-26 04:05:29', '2021-06-26 04:05:29'),
(13, 'Sprint 1', 'Sprint 1', '2021-06-27', '2021-07-04', 'ada', 'diyana', '2021-06-26 05:00:02', '2021-06-26 05:00:02'),
(14, 'Sprint 1', 'Sprint', '2021-06-27', '2021-07-04', 'asasdas', 'nazirah', '2021-06-26 05:04:36', '2021-06-26 05:08:11'),
(16, 'Sprint 2', 'Sprint 2', '2021-07-11', '2021-07-18', 'asasdas', 'nazirah', '2021-06-26 05:27:38', '2021-06-26 05:27:38'),
(17, 'Sprint 4', 'Sprint 4', '2021-06-27', '2021-07-04', 'asasdas', 'haniza', '2021-06-26 05:37:55', '2021-06-26 05:37:55'),
(21, 'Sprint 1', 'Sprint 1', '2021-06-28', '2021-07-04', 'New', 'nazirah', '2021-06-26 18:48:15', '2021-06-26 18:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `slug`, `order`, `user_id`) VALUES
(62, 'Backlog', 'backlog', 1, 14),
(2, 'Up Next', 'up-next', 2, 1),
(3, 'In Progress', 'in-progress', 3, 1),
(4, 'Done', 'done', 4, 1),
(5, 'Backlog', 'backlog', 1, 2),
(6, 'Up Next', 'up-next', 2, 2),
(7, 'In Progress', 'in-progress', 3, 2),
(8, 'Done', 'done', 4, 2),
(9, 'Backlog', 'backlog', 1, 3),
(10, 'Up Next', 'up-next', 2, 3),
(11, 'In Progress', 'in-progress', 3, 3),
(12, 'Done', 'done', 4, 3),
(13, 'Backlog', 'backlog', 1, 4),
(14, 'Up Next', 'up-next', 2, 4),
(15, 'In Progress', 'in-progress', 3, 4),
(16, 'Done', 'done', 4, 4),
(17, 'Backlog', 'backlog', 1, 5),
(18, 'Up Next', 'up-next', 2, 5),
(19, 'In Progress', 'in-progress', 3, 5),
(20, 'Done', 'done', 4, 5),
(64, 'In Progress', 'in-progress', 3, 14),
(65, 'Done', 'done', 4, 14),
(66, 'Backlog', 'backlog', 1, 15),
(67, 'Up Next2', 'up-next2', 2, 15),
(53, 'fin', 'fin', 5, 13),
(72, 'Backlog', 'backlog', 1, 16),
(61, 'Backlog', 'Backlog', 1, 1),
(63, 'Up Next2', 'up-next2', 2, 14),
(52, 'Done', 'done', 4, 13),
(51, 'In Progress', 'in-progress', 3, 13),
(50, 'Up Next2', 'up-next2', 2, 13),
(49, 'Backlog', 'backlog', 1, 13),
(37, 'Backlog', 'backlog', 1, 10),
(38, 'Up Next', 'up-next', 2, 10),
(39, 'In Progress', 'in-progress', 3, 10),
(40, 'Done', 'done', 4, 10),
(41, 'Backlog', 'backlog', 1, 11),
(42, 'Up Next', 'up-next', 2, 11),
(43, 'In Progress', 'in-progress', 3, 11),
(44, 'Done', 'done', 4, 11),
(45, 'Backlog', 'backlog', 1, 12),
(46, 'Up Next', 'up-next', 2, 12),
(47, 'In Progress', 'in-progress', 3, 12),
(48, 'Done', 'done', 4, 12),
(68, 'In Progress', 'in-progress', 3, 15),
(69, 'Done', 'done', 4, 15),
(73, 'Up Next2', 'up-next2', 2, 16),
(74, 'In Progress', 'in-progress', 3, 16),
(75, 'Done', 'done', 4, 16),
(77, 'pending', 'pending', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `u_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sprint_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `start_date`, `end_date`, `order`, `user_id`, `status_id`, `u_id`, `sprint_id`, `created_at`, `updated_at`) VALUES
(1, 'Register', 'Registration form','','', 2, 1, 61, '1', '', '2021-01-18 16:45:49', '2021-08-19 19:41:21'),
(2, 'Login', 'Login form','','', 1, 1, 1, '1', '', '2021-01-18 16:46:04', '2021-01-30 04:58:04'),
(3, 'Project', 'Project','','', 2, 1, 1, '1', '', '2021-01-18 17:28:29', '2021-01-30 04:58:04'),
(4, 'Pro', 'a','','', 2, 1, 3, '1', '', '2021-01-30 04:55:46', '2021-08-19 17:59:12'),
(5, 'a', 'a','','', 1, 1, 3, '2', '', '2021-02-12 06:11:14', '2021-08-19 17:59:12'),
(6, 'jhkjhl', 'jhbkj','','', 2, 1, 61, '2', '', '2021-04-18 06:58:34', '2021-08-19 19:41:10'),
(7, 'login', 'login','','', 1, 1, 77, '2', '', '2021-06-14 20:58:45', '2021-08-19 19:41:21'),
(8, 'login', 'login','','', 1, 1, 2, '2', '', '2021-06-26 18:51:25', '2021-06-26 19:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `teammappings`
--

DROP TABLE IF EXISTS `teammappings`;
CREATE TABLE IF NOT EXISTS `teammappings` (
  `teammapping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`teammapping_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teammappings`
--

INSERT INTO `teammappings` (`teammapping_id`, `username`, `role_name`, `team_name`, `created_at`, `updated_at`) VALUES
(1, 'diyana', 'Software Tester', 'Ab', NULL, NULL),
(11, 'nadianazri', 'Project Manager', 'Ab', '2021-06-12 19:50:42', '2021-06-12 19:50:42'),
(5, 'nadia', 'Project Manager', 'B', NULL, NULL),
(19, 'nazirah', 'Programmer', 'Ab', '2021-06-26 18:49:58', '2021-06-26 18:49:58'),
(18, 'Atiqah', 'Software Tester', 'E', NULL, NULL),
(17, 'misha', 'Scrum Master', 'CA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `team_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_name` (`team_name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `created_at`, `updated_at`) VALUES
(1, 'Ab', '2021-01-04 07:43:54', '2021-01-05 02:06:25'),
(4, 'B', '2021-01-04 23:56:37', '2021-01-04 23:56:37'),
(13, 'CA', '2021-06-26 04:18:30', '2021-06-26 04:18:35'),
(14, 'D', '2021-06-26 08:11:06', '2021-06-26 08:11:06'),
(16, 'E', '2021-06-26 18:49:08', '2021-06-26 18:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role_name`, `country`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nadiah Nazri', 'nadianazri', 'Project Manager', 'Malaysia', 'nadia.nzr26@gmail.com', NULL, '$2y$10$b4HqpmJjGcXKqsfhz2AMEOxV3FMHzeoNsYCDmR5YntdP1fXNjMCni', NULL, '2020-12-30 18:07:57', '2020-12-30 18:07:57'),
(12, 'Nadiah', 'nadia', 'Project Manager', 'Australia', 'nadia@gmail.com', NULL, '$2y$10$sC5Px3ngFS8tt0CmQEAG9.Dl1N6TZBYkk5/MM20TL3kZU9KoiMY.C', NULL, '2021-01-18 17:23:09', '2021-01-18 17:23:09'),
(3, 'Diyana', 'diyana', 'Software Tester', 'Finland', 'diyana@gmail.com', NULL, '$2y$10$V4s/rCNaU/OW6sjXWf6ZKeA/jJ20RJ1kdyTfeMLGEBBneQYQxrrIq', NULL, '2021-01-05 00:03:57', '2021-01-05 00:03:57'),
(4, 'Haniza', 'haniza', 'Chief Programmer', 'Australia', 'haniza@gmail.com', NULL, '$2y$10$A3msmyq2clwpzivyNV28zOfCHCIv/JThF95KzymxzUvmocglmeb6m', NULL, '2021-01-05 00:04:36', '2021-01-05 00:04:36'),
(5, 'Misha', 'misha', 'Scrum Master', 'Liberia', 'misha@gmail.com', NULL, '$2y$10$NEItS8NMTvVJhKkNnbQoguCqB4zLWccnehbJh4IRwJKVEoYPsCJuW', NULL, '2021-01-05 00:05:09', '2021-01-05 00:05:09'),
(9, 'Hafizah', 'hafizah', 'Scrum Master', 'Liberia', 'hafizah@gmail.com', NULL, '$2y$10$UIi0X86rHTJjkdZGi8kNDu8o1A072umT3uvrDOHt9BL1jcgakvhOi', NULL, '2021-01-18 16:17:55', '2021-01-18 16:17:55'),
(10, 'Atiqah', 'atiqah', 'Software Tester', 'Vietnam', 'atiqah@gmail.com', NULL, '$2y$10$MVXkIfsvNdgHR58lh4sM7uNgEO4YmPxDj1lGjfOoe4CDqUrSFkknW', NULL, '2021-01-18 16:18:44', '2021-01-18 16:18:44'),
(14, 'Nazirah', 'nazirah', 'Programmer', 'Malaysia', 'nazirah@gmail.com', NULL, '$2y$10$N7E1jhW4Aar7fdr0HvpQfOgt8tTz1/ucFEoH9Nq4BoaCCJW/FqRgq', NULL, '2021-06-13 20:50:04', '2021-06-13 20:50:04'),
(15, 'Nadiah', 'nadiahnzr', 'Software Tester', 'Malaysia', 'nadia26@gmail.com', NULL, '$2y$10$uyePCq0Rbwk1rCGThFZBH.RZ2Buk9Hl4OUeXHtGiqUkSo9W8ww5TG', NULL, '2021-06-14 20:43:55', '2021-06-14 20:43:55'),
(16, 'Nazira', 'nazira', 'Programmer', 'Malaysia', 'nazirah99@gmail.com', NULL, '$2y$10$NJfQ1s5aDAcelL7yBGT7VeYEFoqVUvf7co9CPBDYD8.vfLkeye/Vq', NULL, '2021-06-26 18:46:08', '2021-06-26 18:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_stories`
--

DROP TABLE IF EXISTS `user_stories`;
CREATE TABLE IF NOT EXISTS `user_stories` (
  `u_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_story` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_story` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,		
  `prio_story` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sprint_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfeature_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secfeature_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_stories`
--

INSERT INTO `user_stories` (`u_id`, `user_story`, `desc_story`, `due_day`, `prio_story`, `title`, `sprint_id`, `perfeature_id`, `secfeature_id`, `created_at`, `updated_at`) VALUES
(1, 'login', 'login', '5', '2', 'Backlog', '1', '', '', '2021-06-10 05:28:50', '2021-09-20 08:05:05'),
(2, 'login', 'login', '4', '2', 'Backlog', '1', '', '', '2021-06-10 05:29:31', '2021-06-10 05:29:31'),
(3, 'reg', 'reg', '3', '2', 'Backlog', '1', '', '', '2021-06-10 05:33:34', '2021-06-10 05:33:34'),
(21, 'new', 'new', '2', '2', 'In Progress', '1', '', '', '2021-06-12 23:25:57', '2021-06-12 23:25:57'),
(22, 'Team feature', 'Team', '0', '2', 'Up Next', '1', '', '', '2021-06-14 20:56:16', '2021-06-14 20:56:16'),
(24, 'sda', 'qwq', '6', '2', 'Done', '10', '', '', '2021-06-25 21:33:09', '2021-06-25 21:33:09'),
(25, 'asef', 'asfdasdf', '7', '2', 'Backlog', '9', '', '', '2021-06-25 21:38:13', '2021-06-26 01:22:55'),
(26, 'aweda', 'dawdaw', '8', '2', 'In Progress', '11', '', '', '2021-06-26 04:53:19', '2021-06-26 04:53:19'),
(42, 'Login', 'login', '', '1', 'In Progress', '21', '[\"Loading Time\",\"Buffering Time\"]', '[\"SQL Injection\",\"Cross_Site Scripting\"]', '2021-06-26 18:48:51', '2021-06-26 18:48:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
