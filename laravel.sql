-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2018 at 06:45 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 2, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 07:42:53', '2018-07-01 07:42:53', NULL),
(2, 'Viewed home', 'Registered', 2, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 07:42:55', '2018-07-01 07:42:55', NULL),
(3, 'Viewed profile/favian.fay', 'Registered', 2, 'http://localhost:8001/profile/favian.fay', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 07:43:10', '2018-07-01 07:43:10', NULL),
(4, 'Logged Out', 'Registered', 2, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/favian.fay', 'POST', '2018-07-01 07:43:19', '2018-07-01 07:43:19', NULL),
(5, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 07:43:48', '2018-07-01 07:43:48', NULL),
(6, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 07:43:50', '2018-07-01 07:43:50', NULL),
(7, 'Viewed active-users', 'Registered', 1, 'http://localhost:8001/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 07:44:00', '2018-07-01 07:44:00', NULL),
(8, 'Viewed users/create', 'Registered', 1, 'http://localhost:8001/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/active-users', 'GET', '2018-07-01 07:44:08', '2018-07-01 07:44:08', NULL),
(9, 'Viewed themes', 'Registered', 1, 'http://localhost:8001/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/create', 'GET', '2018-07-01 07:44:27', '2018-07-01 07:44:27', NULL),
(10, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/themes', 'GET', '2018-07-01 07:44:37', '2018-07-01 07:44:37', NULL),
(11, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'POST', '2018-07-01 07:44:52', '2018-07-01 07:44:52', NULL),
(12, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:07:10', '2018-07-01 08:07:10', NULL),
(13, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:07:13', '2018-07-01 08:07:13', NULL),
(14, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:07:46', '2018-07-01 08:07:46', NULL),
(15, 'Deleted users/3', 'Registered', 1, 'http://localhost:8001/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'DELETE', '2018-07-01 08:07:55', '2018-07-01 08:07:55', NULL),
(16, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:07:57', '2018-07-01 08:07:57', NULL),
(17, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'POST', '2018-07-01 08:08:01', '2018-07-01 08:08:01', NULL),
(18, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:15:33', '2018-07-01 08:15:33', NULL),
(19, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:15:35', '2018-07-01 08:15:35', NULL),
(20, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:15:40', '2018-07-01 08:15:40', NULL),
(21, 'Deleted users/4', 'Registered', 1, 'http://localhost:8001/users/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'DELETE', '2018-07-01 08:15:46', '2018-07-01 08:15:46', NULL),
(22, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:15:48', '2018-07-01 08:15:48', NULL),
(23, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:15:53', '2018-07-01 08:15:53', NULL),
(24, 'Deleted users/deleted/3', 'Registered', 1, 'http://localhost:8001/users/deleted/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'DELETE', '2018-07-01 08:16:01', '2018-07-01 08:16:01', NULL),
(25, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'GET', '2018-07-01 08:16:03', '2018-07-01 08:16:03', NULL),
(26, 'Deleted users/deleted/4', 'Registered', 1, 'http://localhost:8001/users/deleted/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'DELETE', '2018-07-01 08:16:07', '2018-07-01 08:16:07', NULL),
(27, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'GET', '2018-07-01 08:16:08', '2018-07-01 08:16:08', NULL),
(28, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'POST', '2018-07-01 08:16:14', '2018-07-01 08:16:14', NULL),
(29, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:18:45', '2018-07-01 08:18:45', NULL),
(30, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:18:47', '2018-07-01 08:18:47', NULL),
(31, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:18:52', '2018-07-01 08:18:52', NULL),
(32, 'Deleted users/5', 'Registered', 1, 'http://localhost:8001/users/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'DELETE', '2018-07-01 08:18:57', '2018-07-01 08:18:57', NULL),
(33, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:18:59', '2018-07-01 08:18:59', NULL),
(34, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:19:04', '2018-07-01 08:19:04', NULL),
(35, 'Deleted users/deleted/5', 'Registered', 1, 'http://localhost:8001/users/deleted/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'DELETE', '2018-07-01 08:19:09', '2018-07-01 08:19:09', NULL),
(36, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'GET', '2018-07-01 08:19:11', '2018-07-01 08:19:11', NULL),
(37, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'POST', '2018-07-01 08:19:38', '2018-07-01 08:19:38', NULL),
(38, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:23:56', '2018-07-01 08:23:56', NULL),
(39, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:23:58', '2018-07-01 08:23:58', NULL),
(40, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:24:03', '2018-07-01 08:24:03', NULL),
(41, 'Viewed users/6', 'Registered', 1, 'http://localhost:8001/users/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:24:11', '2018-07-01 08:24:11', NULL),
(42, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/6', 'GET', '2018-07-01 08:24:17', '2018-07-01 08:24:17', NULL),
(43, 'Deleted users/6', 'Registered', 1, 'http://localhost:8001/users/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'DELETE', '2018-07-01 08:24:22', '2018-07-01 08:24:22', NULL),
(44, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:24:24', '2018-07-01 08:24:24', NULL),
(45, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:24:28', '2018-07-01 08:24:28', NULL),
(46, 'Deleted users/deleted/6', 'Registered', 1, 'http://localhost:8001/users/deleted/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'DELETE', '2018-07-01 08:24:36', '2018-07-01 08:24:36', NULL),
(47, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'GET', '2018-07-01 08:24:37', '2018-07-01 08:24:37', NULL),
(48, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'POST', '2018-07-01 08:24:41', '2018-07-01 08:24:41', NULL),
(49, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:29:47', '2018-07-01 08:29:47', NULL),
(50, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:29:49', '2018-07-01 08:29:49', NULL),
(51, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:29:54', '2018-07-01 08:29:54', NULL),
(52, 'Deleted users/7', 'Registered', 1, 'http://localhost:8001/users/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'DELETE', '2018-07-01 08:30:01', '2018-07-01 08:30:01', NULL),
(53, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:30:02', '2018-07-01 08:30:02', NULL),
(54, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:30:08', '2018-07-01 08:30:08', NULL),
(55, 'Deleted users/deleted/7', 'Registered', 1, 'http://localhost:8001/users/deleted/7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'DELETE', '2018-07-01 08:30:13', '2018-07-01 08:30:13', NULL),
(56, 'Viewed users/deleted', 'Registered', 1, 'http://localhost:8001/users/deleted', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'GET', '2018-07-01 08:30:15', '2018-07-01 08:30:15', NULL),
(57, 'Logged Out', 'Registered', 1, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/deleted', 'POST', '2018-07-01 08:30:19', '2018-07-01 08:30:19', NULL),
(58, 'Logged In', 'Registered', 8, 'http://localhost:8001/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/register', 'POST', '2018-07-01 08:30:44', '2018-07-01 08:30:44', NULL),
(59, 'Viewed activate', 'Registered', 8, 'http://localhost:8001/activate', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/register', 'GET', '2018-07-01 08:30:45', '2018-07-01 08:30:45', NULL),
(60, 'Viewed activation-required', 'Registered', 8, 'http://localhost:8001/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/activate', 'GET', '2018-07-01 08:31:14', '2018-07-01 08:31:14', NULL),
(61, 'Logged In', 'Registered', 8, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-PH,en-US;q=0.9,en;q=0.8', 'http://localhost:8001/login', 'POST', '2018-07-01 08:31:36', '2018-07-01 08:31:36', NULL),
(62, 'Viewed activate/P9MBBD5kFs5cVu4ZSlmGACYYf4z1ML58uOiwrIY9stwQMgemYH04hdbfRz0XQuLp', 'Registered', 8, 'http://localhost:8001/activate/P9MBBD5kFs5cVu4ZSlmGACYYf4z1ML58uOiwrIY9stwQMgemYH04hdbfRz0XQuLp', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-PH,en-US;q=0.9,en;q=0.8', 'http://localhost:8001/login', 'GET', '2018-07-01 08:31:38', '2018-07-01 08:31:38', NULL),
(63, 'Viewed home', 'Registered', 8, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-PH,en-US;q=0.9,en;q=0.8', 'http://localhost:8001/login', 'GET', '2018-07-01 08:31:40', '2018-07-01 08:31:40', NULL),
(64, 'Viewed profile/brygorospe@gmail.com', 'Registered', 8, 'http://localhost:8001/profile/brygorospe@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/activation-required', 'GET', '2018-07-01 08:31:55', '2018-07-01 08:31:55', NULL),
(65, 'Logged Out', 'Registered', 8, 'http://localhost:8001/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/brygorospe@gmail.com', 'POST', '2018-07-01 08:32:02', '2018-07-01 08:32:02', NULL),
(66, 'Logged In', 'Registered', 1, 'http://localhost:8001/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'POST', '2018-07-01 08:32:27', '2018-07-01 08:32:27', NULL),
(67, 'Viewed home', 'Registered', 1, 'http://localhost:8001/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/login', 'GET', '2018-07-01 08:32:30', '2018-07-01 08:32:30', NULL),
(68, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/home', 'GET', '2018-07-01 08:34:16', '2018-07-01 08:34:16', NULL),
(69, 'Viewed profile/vcormier', 'Registered', 1, 'http://localhost:8001/profile/vcormier', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:34:20', '2018-07-01 08:34:20', NULL),
(70, 'Viewed profile/vcormier/edit', 'Registered', 1, 'http://localhost:8001/profile/vcormier/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier', 'GET', '2018-07-01 08:34:27', '2018-07-01 08:34:27', NULL),
(71, 'Created avatar/upload', 'Registered', 1, 'http://localhost:8001/avatar/upload', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'POST', '2018-07-01 08:35:25', '2018-07-01 08:35:25', NULL),
(72, 'Viewed images/profile/1/avatar/avatar.jpg', 'Registered', 1, 'http://localhost:8001/images/profile/1/avatar/avatar.jpg?1530462925632=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:35:27', '2018-07-01 08:35:27', NULL),
(73, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:36:14', '2018-07-01 08:36:14', NULL),
(74, 'Viewed users/8/edit', 'Registered', 1, 'http://localhost:8001/users/8/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:36:22', '2018-07-01 08:36:22', NULL),
(75, 'Viewed users/8', 'Registered', 1, 'http://localhost:8001/users/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/8/edit', 'GET', '2018-07-01 08:36:30', '2018-07-01 08:36:30', NULL),
(76, 'Viewed users', 'Registered', 1, 'http://localhost:8001/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/8', 'GET', '2018-07-01 08:36:37', '2018-07-01 08:36:37', NULL),
(77, 'Viewed users/create', 'Registered', 1, 'http://localhost:8001/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users', 'GET', '2018-07-01 08:36:45', '2018-07-01 08:36:45', NULL),
(78, 'Viewed profile/vcormier', 'Registered', 1, 'http://localhost:8001/profile/vcormier', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/users/create', 'GET', '2018-07-01 08:36:50', '2018-07-01 08:36:50', NULL),
(79, 'Viewed profile/vcormier/edit', 'Registered', 1, 'http://localhost:8001/profile/vcormier/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier', 'GET', '2018-07-01 08:36:55', '2018-07-01 08:36:55', NULL),
(80, 'Viewed images/profile/1/avatar/avatar.jpg', 'Registered', 1, 'http://localhost:8001/images/profile/1/avatar/avatar.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:36:57', '2018-07-01 08:36:57', NULL),
(81, 'Edited profile/vcormier', 'Registered', 1, 'http://localhost:8001/profile/vcormier', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'PATCH', '2018-07-01 08:37:48', '2018-07-01 08:37:48', NULL),
(82, 'Viewed profile/vcormier/edit', 'Registered', 1, 'http://localhost:8001/profile/vcormier/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:37:50', '2018-07-01 08:37:50', NULL),
(83, 'Viewed images/profile/1/avatar/avatar.jpg', 'Registered', 1, 'http://localhost:8001/images/profile/1/avatar/avatar.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:37:51', '2018-07-01 08:37:51', NULL),
(84, 'Edited profile/1/updateUserAccount', 'Registered', 1, 'http://localhost:8001/profile/1/updateUserAccount', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'PUT', '2018-07-01 08:38:57', '2018-07-01 08:38:57', NULL),
(85, 'Viewed profile/vcormier/edit', 'Registered', 1, 'http://localhost:8001/profile/vcormier/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:38:58', '2018-07-01 08:38:58', NULL),
(86, 'Viewed images/profile/1/avatar/avatar.jpg', 'Registered', 1, 'http://localhost:8001/images/profile/1/avatar/avatar.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:39:00', '2018-07-01 08:39:00', NULL),
(87, 'Viewed profile/vcormier/edit', 'Registered', 1, 'http://localhost:8001/profile/vcormier/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2018-07-01 08:43:43', '2018-07-01 08:43:43', NULL),
(88, 'Viewed images/profile/1/avatar/avatar.jpg', 'Registered', 1, 'http://localhost:8001/images/profile/1/avatar/avatar.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost:8001/profile/vcormier/edit', 'GET', '2018-07-01 08:43:45', '2018-07-01 08:43:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2018-07-01 06:36:19', '2018-07-01 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(2, 2, 1, '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(3, 3, 1, '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(4, 4, 1, '2018-07-01 06:36:19', '2018-07-01 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'asfasf', 'fsfa', 'asfa', 'as', '/images/profile/1/avatar/avatar.jpg', 1, '2018-07-01 06:36:20', '2018-07-01 08:37:48'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-07-01 06:36:20', '2018-07-01 06:36:20'),
(3, 8, 1, NULL, NULL, NULL, NULL, NULL, 0, '2018-07-01 08:31:38', '2018-07-01 08:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(2, 'User', 'user', 'User Role', 1, '2018-07-01 06:36:19', '2018-07-01 06:36:19'),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2018-07-01 06:36:19', '2018-07-01 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-07-01 06:36:20', '2018-07-01 06:36:20'),
(2, 2, 2, '2018-07-01 06:36:20', '2018-07-01 06:36:20'),
(9, 2, 8, '2018-07-01 08:31:38', '2018-07-01 08:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(18, 'Bootstrap 4.0.0 Alpha', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css', NULL, 1, 'theme', 19, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(20, 'Bootstrap Material Design 4.0.0', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.0/bootstrap-material-design.min.css', NULL, 1, 'theme', 20, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(21, 'Bootstrap Material Design 4.0.2', 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css', NULL, 1, 'theme', 21, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(22, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 22, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(23, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/litera/bootstrap.min.css', NULL, 1, 'theme', 23, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(24, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/lux/bootstrap.min.css', NULL, 1, 'theme', 24, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(25, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/materia/bootstrap.min.css', NULL, 1, 'theme', 25, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(26, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/minty/bootstrap.min.css', NULL, 1, 'theme', 26, '2018-07-01 06:36:19', '2018-07-01 06:36:20', NULL),
(27, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/pulse/bootstrap.min.css', NULL, 1, 'theme', 27, '2018-07-01 06:36:20', '2018-07-01 06:36:20', NULL),
(28, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/sketchy/bootstrap.min.css', NULL, 1, 'theme', 28, '2018-07-01 06:36:20', '2018-07-01 06:36:20', NULL),
(29, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/solar/bootstrap.min.css', NULL, 1, 'theme', 29, '2018-07-01 06:36:20', '2018-07-01 06:36:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vcormier', 'bry', 'Larson', 'admin@admin.com', '$2y$10$AkOdv9uTeCnJtjPUvzM24OeJD9Al.vyh8h28hs.PXD1cqkGnIjiUy', 'EtbOMTzHOlgG4AhFYQAZhi1Dp9bLR2olsaX7e92mM6UGmDH9fQC2ZGsO0686', 1, 'U9mdQ5o1KBDSosMJAy7peXJBADyneKHdjakbOdiDgbmd5WKbbQIxgShW9QNc9ViV', NULL, '13.141.84.143', NULL, '78.43.182.83', '0.0.0.0', NULL, '2018-07-01 06:36:20', '2018-07-01 08:38:57', NULL),
(2, 'favian.fay', 'Cassie', 'Nicolas', 'user@user.com', '$2y$10$A2eUIzxKgTjRgepu3w6mvuZeaq.hqPK/w8SzjfEmQJSIKlfq2nvpy', 'TnVvqphByLMsMaIDxKhtlCsGMabKfWVcrEBXL6TuUk4nmzJrqOooqv3Getra', 1, 'TWWJTL5Wpe3lVjJOTezkPXWFlOrFJI7u78rpz84DkthbLok43vhdfrSIZFTeW2He', '99.210.41.132', '91.70.121.182', NULL, NULL, NULL, NULL, '2018-07-01 06:36:20', '2018-07-01 06:36:20', NULL),
(8, 'brygorospe@gmail.com', 'bry', 'gorospe', 'brygorospe@gmail.com', '$2y$10$G0gQ4jyd5IdoLPT3nwgxl./F/ZSiaR..Z2PQZiCB6qkq7nEcz8DRC', 'FGn1aQA4Wi0udsXSQUd2zjpVhMcanaliQXy1qq2evMHRJI7zn9xUZZABcrlu', 1, 'oPaWFRPkiPlBgEXern3YBQnAKfmA3sTMJSiubrXKuB2Qer3WUS1dNtB328YnVFOp', '0.0.0.0', '0.0.0.0', NULL, NULL, NULL, NULL, '2018-07-01 08:30:39', '2018-07-01 08:31:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
