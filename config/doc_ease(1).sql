-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2025 at 08:07 AM
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
-- Database: `doc_ease`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomplishment_reports`
--

CREATE TABLE `accomplishment_reports` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `accomplishment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `progress` text COLLATE utf8mb4_unicode_ci,
  `deviations` text COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','submitted','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `submitted_by` int NOT NULL,
  `approved_by` int DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accomplishment_reports`
--

INSERT INTO `accomplishment_reports` (`id`, `title`, `date`, `accomplishment`, `remarks`, `progress`, `deviations`, `status`, `category`, `subject`, `department_id`, `submitted_by`, `approved_by`, `approved_at`, `created_at`, `updated_at`) VALUES
(12, 'walay klase kay holiday napud, lipay napud ang mga studyante ani .', '2025-09-04', '123', 'zxc123qwe', 'qwd', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 3, NULL, NULL, '2025-09-04 15:42:26', '2025-09-04 15:42:26'),
(13, 'walay klase kay holiday napud, lipay napud ang mga studyante ani .', '2025-09-04', '123', 'zxc123qwe', 'qwd', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 3, NULL, NULL, '2025-09-04 15:48:22', '2025-09-04 15:48:22'),
(14, 'walay klase kay holiday napud, lipay napud ang mga studyante ani .', '2025-09-04', '123', 'zxc123qwe', 'qwd', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 3, NULL, NULL, '2025-09-04 15:49:39', '2025-09-04 15:49:39'),
(15, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:32:12', '2025-09-05 03:32:12'),
(16, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:34:13', '2025-09-05 03:34:13'),
(17, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:38:02', '2025-09-05 03:38:02'),
(18, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:41:29', '2025-09-05 03:41:29'),
(19, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:42:25', '2025-09-05 03:42:25'),
(20, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:44:30', '2025-09-05 03:44:30'),
(21, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:46:53', '2025-09-05 03:46:53'),
(22, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:50:45', '2025-09-05 03:50:45'),
(23, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:51:08', '2025-09-05 03:51:08'),
(24, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:52:51', '2025-09-05 03:52:51'),
(25, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:55:33', '2025-09-05 03:55:33'),
(26, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:56:44', '2025-09-05 03:56:44'),
(27, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:58:12', '2025-09-05 03:58:12'),
(28, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:58:42', '2025-09-05 03:58:42'),
(29, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 03:59:52', '2025-09-05 03:59:52'),
(30, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 04:00:42', '2025-09-05 04:00:42'),
(31, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 04:02:11', '2025-09-05 04:02:11'),
(32, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 04:04:28', '2025-09-05 04:04:28'),
(33, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 04:27:49', '2025-09-05 04:27:49'),
(34, 'The quick brown fox jumps over the lazy dog near the bank of the river.', '2025-09-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'Sample Progress', '', 'draft', 'Academic', 'Event-Driven Programming', 4, 1, NULL, NULL, '2025-09-05 07:36:40', '2025-09-05 07:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` int DEFAULT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `table_name`, `record_id`, `old_values`, `new_values`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 05:15:34'),
(2, 1, 'logout', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 05:26:28'),
(3, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 05:26:36'),
(4, 1, 'update', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 06:00:00'),
(5, 1, 'update', 'users', 1, '{\"profile_picture\":\"uploads\\/profile_pictures\\/1.png\"}', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 06:04:35'),
(6, 1, 'create', 'accomplishment_reports', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 06:50:59'),
(7, 1, 'logout', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 07:10:04'),
(8, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 07:10:09'),
(9, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Trae/1.100.3 Chrome/132.0.6834.210 Electron/34.5.1 Safari/537.36', '2025-09-04 07:13:17'),
(10, 1, 'logout', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 08:16:04'),
(11, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 09:12:22'),
(12, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 09:12:42'),
(13, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 09:13:36'),
(14, 1, 'logout', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 09:19:09'),
(15, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 09:19:16'),
(16, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Trae/1.100.3 Chrome/132.0.6834.210 Electron/34.5.1 Safari/537.36', '2025-09-04 09:22:46'),
(17, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Trae/1.100.3 Chrome/132.0.6834.210 Electron/34.5.1 Safari/537.36', '2025-09-04 09:31:48'),
(18, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 10:29:04'),
(19, 1, 'update', 'accomplishment_reports', 6, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 10:49:22'),
(20, 1, 'update', 'accomplishment_reports', 6, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 10:49:29'),
(21, 1, 'update', 'accomplishment_reports', 5, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 10:50:25'),
(22, 1, 'delete', 'accomplishment_reports', 5, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:01:08'),
(23, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:03:32'),
(24, 1, 'update', 'users', 1, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/1.jpg\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:06:03'),
(25, 1, 'update', 'users', 1, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/1.jpg\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:07:53'),
(26, 1, 'update', 'users', 1, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/1.jpg\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:07:58'),
(27, 1, 'update', 'users', 1, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/1.jpg\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:11:44'),
(28, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 11:12:26'),
(29, 2, 'login', 'users', 2, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:44:04'),
(30, 2, 'update', 'users', 2, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/2.png\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:44:15'),
(31, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:44:44'),
(32, 2, 'login', 'users', 2, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:45:46'),
(33, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:49:59'),
(34, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:53:14'),
(35, 2, 'login', 'users', 2, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:53:40'),
(36, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 12:54:07'),
(37, 1, 'logout', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:09:21'),
(38, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:09:31'),
(39, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:09:55'),
(40, 3, 'update', 'users', 3, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/3.png\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:10:08'),
(41, 2, 'login', 'users', 2, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:10:25'),
(42, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:10:51'),
(43, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:11:30'),
(44, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:11:49'),
(45, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:32:10'),
(46, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 13:34:03'),
(47, 1, 'create', 'accomplishment_reports', 7, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 14:00:10'),
(48, 1, 'update', 'subjects', 26, NULL, '{\"subject_code\":\"IT 307\",\"subject_name\":\"Event-Driven Programming\",\"description\":\"For EDP Lecture\",\"units\":2,\"status\":\"active\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 14:07:05'),
(49, 1, 'update', 'subjects', 26, NULL, '{\"subject_code\":\"IT 307\",\"subject_name\":\"Event-Driven Programming\",\"description\":\"For EDP Lecture\",\"units\":2,\"status\":\"active\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 14:07:08'),
(50, 1, 'update', 'subjects', 16, NULL, '{\"subject_code\":\"IT 205L\",\"subject_name\":\"Object-Oriented Programming Laboratory\",\"description\":\"OOP Laboratory\",\"units\":1,\"status\":\"active\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 14:07:20'),
(51, 1, 'update', 'subjects', 16, NULL, '{\"subject_code\":\"IT 205L\",\"subject_name\":\"Object-Oriented Programming Laboratory\",\"description\":\"OOP Laboratory\",\"units\":1,\"status\":\"active\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 14:07:22'),
(52, 1, 'create', 'accomplishment_reports', 8, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:03:19'),
(53, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:06:21'),
(54, 1, 'create', 'class_records', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:06:48'),
(55, 3, 'create', 'accomplishment_reports', 9, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:16:27'),
(56, 3, 'create', 'accomplishment_reports', 10, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:19:18'),
(57, 3, 'create', 'accomplishment_reports', 11, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:19:24'),
(58, 3, 'delete', 'accomplishment_reports', 9, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:20:45'),
(59, 3, 'delete', 'accomplishment_reports', 10, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:20:49'),
(60, 3, 'delete', 'accomplishment_reports', 11, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:20:52'),
(61, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:21:32'),
(62, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:31:35'),
(63, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:32:09'),
(64, 3, 'create', 'accomplishment_reports', 12, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:42:26'),
(65, 3, 'create', 'accomplishment_reports', 13, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:48:22'),
(66, 3, 'create', 'accomplishment_reports', 14, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 15:49:39'),
(67, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-04 16:12:46'),
(68, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 02:09:28'),
(69, 1, 'delete', 'accomplishment_reports', 4, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:29:56'),
(70, 1, 'delete', 'accomplishment_reports', 8, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:30:00'),
(71, 1, 'delete', 'accomplishment_reports', 7, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:30:02'),
(72, 1, 'delete', 'accomplishment_reports', 6, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:30:06'),
(73, 1, 'create', 'accomplishment_reports', 15, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:32:12'),
(74, 1, 'create', 'accomplishment_reports', 16, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:34:13'),
(75, 1, 'create', 'accomplishment_reports', 17, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:38:02'),
(76, 1, 'create', 'accomplishment_reports', 18, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:41:29'),
(77, 1, 'create', 'accomplishment_reports', 19, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:42:25'),
(78, 1, 'create', 'accomplishment_reports', 20, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:44:30'),
(79, 1, 'create', 'accomplishment_reports', 21, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:46:53'),
(80, 1, 'create', 'accomplishment_reports', 22, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:50:45'),
(81, 1, 'create', 'accomplishment_reports', 23, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:51:08'),
(82, 1, 'create', 'accomplishment_reports', 24, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:52:51'),
(83, 1, 'create', 'accomplishment_reports', 25, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:55:33'),
(84, 1, 'create', 'accomplishment_reports', 26, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:56:44'),
(85, 1, 'create', 'accomplishment_reports', 27, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:58:12'),
(86, 1, 'create', 'accomplishment_reports', 28, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:58:42'),
(87, 1, 'create', 'accomplishment_reports', 29, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 03:59:52'),
(88, 1, 'create', 'accomplishment_reports', 30, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 04:00:42'),
(89, 1, 'create', 'accomplishment_reports', 31, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 04:02:11'),
(90, 1, 'create', 'accomplishment_reports', 32, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 04:04:28'),
(91, 1, 'create', 'accomplishment_reports', 33, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 04:27:49'),
(92, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Trae/1.100.3 Chrome/132.0.6834.210 Electron/34.5.1 Safari/537.36', '2025-09-05 05:31:00'),
(93, 1, 'create', 'accomplishment_reports', 34, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:36:40'),
(94, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:40:22'),
(95, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:40:37'),
(96, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:43:30'),
(97, 3, 'login', 'users', 3, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:50:04'),
(98, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '2025-09-05 07:52:52'),
(99, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-05 07:58:44'),
(100, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-05 08:09:46'),
(101, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-05 08:10:08'),
(102, 3, 'update', 'users', 3, NULL, '{\"profile_picture\":\"uploads\\/profile_pictures\\/3.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-05 08:24:39'),
(103, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 04:23:49'),
(104, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 05:13:15'),
(105, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 05:13:37'),
(106, 2, 'login', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 06:03:59'),
(107, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 06:04:46'),
(108, 1, 'assign_teacher', 'teacher_assignments', 0, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 06:54:23'),
(109, 1, 'assign_teacher', 'teacher_assignments', 0, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 06:54:36'),
(110, 2, 'login', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 06:55:23'),
(111, 1, 'create', 'class_records', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 07:22:10'),
(112, 1, 'create', 'class_records', 4, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 07:22:31'),
(113, 2, 'logout', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 07:23:14'),
(114, 2, 'login', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 07:23:27'),
(115, 1, 'assign_teacher', 'teacher_assignments', 0, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 07:27:52'),
(116, 1, 'assign_teacher', 'teacher_assignments', 0, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 08:48:54'),
(117, 1, 'logout', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:26:53'),
(118, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:26:58'),
(119, 1, 'create', 'class_records', 5, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:33:50'),
(120, 1, 'create', 'class_records', 6, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:34:14'),
(121, 1, 'update_assignments', 'teacher_assignments', 5, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:35:14'),
(122, 2, 'logout', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:37:14'),
(123, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:37:22'),
(124, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 09:52:52'),
(125, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 10:46:24'),
(126, 1, 'assign_teacher', 'co_teachers', 0, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 11:04:47'),
(127, 1, 'create', 'class_records', 8, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 13:28:26'),
(128, 1, 'create', 'class_records', 9, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 13:43:55'),
(129, 3, 'logout', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 13:53:08'),
(130, 2, 'login', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 13:53:12'),
(131, 1, 'login', 'users', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Trae/1.100.3 Chrome/132.0.6834.210 Electron/34.5.1 Safari/537.36', '2025-09-06 14:06:24'),
(132, 2, 'logout', 'users', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:10:07'),
(133, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:10:15'),
(134, 1, 'delete', 'students', 10, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:34'),
(135, 1, 'delete', 'students', 11, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:39'),
(136, 1, 'delete', 'students', 13, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:41'),
(137, 1, 'delete', 'students', 12, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:43'),
(138, 1, 'delete', 'students', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:45'),
(139, 1, 'delete', 'students', 2, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:48'),
(140, 1, 'delete', 'students', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:50'),
(141, 1, 'delete', 'students', 4, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:52'),
(142, 1, 'delete', 'students', 5, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:39:54'),
(143, 1, 'delete', 'students', 6, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:40:13'),
(144, 1, 'delete', 'students', 7, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:40:40'),
(145, 1, 'delete', 'students', 8, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:40:42'),
(146, 1, 'delete', 'students', 9, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 15:40:44'),
(147, 1, 'update', 'subjects', 16, NULL, '{\"subject_code\":\"IT 205L\",\"subject_name\":\"Object-Oriented Programming Laboratory\",\"description\":\"OOP Laboratory\",\"units\":1,\"status\":\"active\",\"course\":\"BSInfoTech\",\"major\":\"Programming\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 16:35:23'),
(148, 1, 'create', 'class_records', 10, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 16:41:20'),
(149, 1, 'create', 'class_records', 11, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 16:42:26'),
(150, 1, 'create', 'class_records', 12, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 16:56:56'),
(151, 1, 'create', 'class_records', 13, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:00:01'),
(152, 1, 'enroll', 'class_enrollments', 3, NULL, '{\"student_id\":18,\"student_name\":\"Abengoza, Lian Yi Shin\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(153, 1, 'enroll', 'class_enrollments', 4, NULL, '{\"student_id\":58,\"student_name\":\"Andam, Kristin\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(154, 1, 'enroll', 'class_enrollments', 5, NULL, '{\"student_id\":104,\"student_name\":\"Bernales, Jomarie\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(155, 1, 'enroll', 'class_enrollments', 6, NULL, '{\"student_id\":146,\"student_name\":\"Camarista, John Brunz\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(156, 1, 'enroll', 'class_enrollments', 7, NULL, '{\"student_id\":167,\"student_name\":\"Caube, Renz Arthur\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(157, 1, 'enroll', 'class_enrollments', 8, NULL, '{\"student_id\":168,\"student_name\":\"Cebuala, Emarie\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(158, 1, 'enroll', 'class_enrollments', 9, NULL, '{\"student_id\":192,\"student_name\":\"Daga, Samantha\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(159, 1, 'enroll', 'class_enrollments', 10, NULL, '{\"student_id\":199,\"student_name\":\"Davis, Rodel\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(160, 1, 'enroll', 'class_enrollments', 11, NULL, '{\"student_id\":225,\"student_name\":\"Ello, Jake\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(161, 1, 'enroll', 'class_enrollments', 12, NULL, '{\"student_id\":232,\"student_name\":\"Epis, Jerome\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(162, 1, 'enroll', 'class_enrollments', 13, NULL, '{\"student_id\":235,\"student_name\":\"Esclamado, Glydel\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(163, 1, 'enroll', 'class_enrollments', 14, NULL, '{\"student_id\":268,\"student_name\":\"Garcia, Lenard Kier\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(164, 1, 'enroll', 'class_enrollments', 15, NULL, '{\"student_id\":273,\"student_name\":\"Gayo, Erica\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(165, 1, 'enroll', 'class_enrollments', 16, NULL, '{\"student_id\":299,\"student_name\":\"Gula, Diana\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(166, 1, 'enroll', 'class_enrollments', 17, NULL, '{\"student_id\":318,\"student_name\":\"Hilo, Jhastine\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(167, 1, 'enroll', 'class_enrollments', 18, NULL, '{\"student_id\":326,\"student_name\":\"Ilogon, Jeriel Kish\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(168, 1, 'enroll', 'class_enrollments', 19, NULL, '{\"student_id\":372,\"student_name\":\"Liad, Angel Marie\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(169, 1, 'enroll', 'class_enrollments', 20, NULL, '{\"student_id\":378,\"student_name\":\"Lisbos, Ronel\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(170, 1, 'enroll', 'class_enrollments', 21, NULL, '{\"student_id\":386,\"student_name\":\"Lozada, Kevin\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(171, 1, 'enroll', 'class_enrollments', 22, NULL, '{\"student_id\":424,\"student_name\":\"Medina, Wyndel\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(172, 1, 'enroll', 'class_enrollments', 23, NULL, '{\"student_id\":442,\"student_name\":\"Mori, Bryll Jane\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(173, 1, 'enroll', 'class_enrollments', 24, NULL, '{\"student_id\":454,\"student_name\":\"Narte, Glenda\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(174, 1, 'enroll', 'class_enrollments', 25, NULL, '{\"student_id\":524,\"student_name\":\"Queroben, Rodel\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(175, 1, 'enroll', 'class_enrollments', 26, NULL, '{\"student_id\":552,\"student_name\":\"Robles, Dave\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(176, 1, 'enroll', 'class_enrollments', 27, NULL, '{\"student_id\":609,\"student_name\":\"Sueno, Chanill Lay\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(177, 1, 'enroll', 'class_enrollments', 28, NULL, '{\"student_id\":619,\"student_name\":\"Tabada, Lotis\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(178, 1, 'enroll', 'class_enrollments', 29, NULL, '{\"student_id\":630,\"student_name\":\"Tamarion, Mark Vincent\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(179, 1, 'enroll', 'class_enrollments', 30, NULL, '{\"student_id\":654,\"student_name\":\"Tomon, Danessa\",\"class_id\":13}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:05:59'),
(180, 3, 'logout', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:18:42'),
(181, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:18:52'),
(182, 3, 'create', 'component_categories', 13, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:27:46'),
(183, 3, 'create', 'component_categories', 14, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:30:20'),
(184, 3, 'delete', 'component_categories', 14, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:30:26'),
(185, 3, 'create', 'component_categories', 15, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:33:01'),
(186, 3, 'create', 'component_categories', 16, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:34:00'),
(187, 3, 'create', 'component_categories', 17, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:34:22'),
(188, 3, 'create', 'component_categories', 18, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:34:35'),
(189, 3, 'create', 'component_categories', 19, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:34:55'),
(190, 3, 'delete', 'component_categories', 15, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:35:47'),
(191, 3, 'delete', 'component_categories', 16, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:35:56'),
(192, 1, 'component_updated', 'component_categories', 13, NULL, '{\"name\":\"Quiz Updated\",\"weight\":15,\"description\":\"(Updated)\"}', NULL, NULL, '2025-09-06 17:52:54'),
(193, 3, 'create', 'component_categories', 20, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:55:34'),
(194, 3, 'create', 'component_categories', 21, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 17:56:53'),
(195, 3, 'component_deleted', 'component_categories', 21, '{\"name\":\"Recitation\",\"weight\":\"15.00\",\"description\":\"\"}', NULL, NULL, NULL, '2025-09-06 18:00:26'),
(196, 3, 'component_deleted', 'component_categories', 19, '{\"name\":\"Project\",\"weight\":\"20.00\",\"description\":\"\"}', NULL, NULL, NULL, '2025-09-06 18:00:29'),
(197, 3, 'component_created', 'component_categories', 13, NULL, '{\"name\":\"Project\",\"weight\":35,\"description\":\"\"}', NULL, NULL, '2025-09-06 18:00:47'),
(198, 3, 'component_updated', 'component_categories', 22, NULL, '{\"name\":\"Project\",\"weight\":20,\"description\":\"\"}', NULL, NULL, '2025-09-06 18:01:09'),
(199, 3, 'component_created', 'component_categories', 13, NULL, '{\"name\":\"Quiz\",\"weight\":15,\"description\":\"\"}', NULL, NULL, '2025-09-06 18:01:32'),
(200, 3, 'component_updated', 'component_categories', 13, NULL, '{\"name\":\"Recitation\",\"weight\":15,\"description\":\"(Updated)\"}', NULL, NULL, '2025-09-06 18:01:46'),
(201, 3, 'component_updated', 'component_categories', 20, NULL, '{\"name\":\"Exam\",\"weight\":15,\"description\":\"\"}', NULL, NULL, '2025-09-06 18:12:52'),
(202, 3, 'component_created', 'component_categories', 13, NULL, '{\"name\":\"Attendance\",\"weight\":5,\"description\":\"\"}', NULL, NULL, '2025-09-06 18:13:07'),
(203, 1, 'enroll', 'class_enrollments', 31, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 18:19:11'),
(204, 1, 'delete', 'class_enrollments', 31, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-06 18:19:17'),
(205, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-07 03:32:25'),
(206, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-07 12:49:20'),
(207, 1, 'logout', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-07 12:50:11'),
(208, 3, 'login', 'users', 3, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-07 12:53:45'),
(209, 1, 'login', 'users', 1, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-07 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` int NOT NULL,
  `subject_id` int NOT NULL,
  `category_id` int NOT NULL,
  `component_id` int NOT NULL,
  `assessment_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `max_score` decimal(8,2) NOT NULL DEFAULT '100.00',
  `assessment_date` date DEFAULT NULL,
  `display_order` int NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_attendance`
--

CREATE TABLE `class_attendance` (
  `id` int NOT NULL,
  `class_record_id` int NOT NULL,
  `student_id` int NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent','late','excused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `recorded_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_enrollments`
--

CREATE TABLE `class_enrollments` (
  `id` int NOT NULL,
  `class_record_id` int NOT NULL,
  `student_id` int NOT NULL,
  `enrollment_date` date NOT NULL,
  `status` enum('enrolled','dropped','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enrolled',
  `grade` decimal(5,2) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_grades`
--

CREATE TABLE `class_grades` (
  `id` int NOT NULL,
  `enrollment_id` int NOT NULL,
  `assessment_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` decimal(5,2) NOT NULL,
  `max_score` decimal(5,2) NOT NULL DEFAULT '100.00',
  `percentage` decimal(5,2) DEFAULT NULL,
  `date_taken` date NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_marks`
--

CREATE TABLE `class_marks` (
  `id` int NOT NULL,
  `class_id` int NOT NULL,
  `student_id` int NOT NULL,
  `term` enum('midterm','final') COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `max_score` decimal(5,2) NOT NULL DEFAULT '100.00',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_records`
--

CREATE TABLE `class_records` (
  `id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `record_type` enum('template','assigned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'template',
  `section` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_students` int DEFAULT '50',
  `description` text COLLATE utf8mb4_unicode_ci,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `status` enum('active','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_record_assignments`
--

CREATE TABLE `class_record_assignments` (
  `id` int NOT NULL,
  `class_record_id` int NOT NULL,
  `assigned_class_id` int NOT NULL,
  `assigned_by` int NOT NULL,
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `notes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `component_categories`
--

CREATE TABLE `component_categories` (
  `id` int NOT NULL,
  `class_record_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_teachers`
--

CREATE TABLE `co_teachers` (
  `id` int NOT NULL,
  `class_record_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `role` enum('primary','co_teacher') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'co_teacher',
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `assigned_by` int NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `permissions` text COLLATE utf8mb4_unicode_ci COMMENT 'JSON string for specific permissions',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `class_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Information Technology', 'IT Department', 'active', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(2, 'Human Resources', 'HR Department', 'active', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(3, 'Finance', 'Finance Department', 'active', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(4, 'Academic Affairs', 'Academic Affairs Department', 'active', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(5, 'Student Services', 'Student Services Department', 'active', '2025-09-04 05:15:03', '2025-09-04 05:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int NOT NULL,
  `student_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_no`, `subject_id`, `academic_year`, `semester`, `section`, `enrollment_date`, `status`, `created_by`) VALUES
(1, '2410001-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(2, '2410002-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(3, '2410006-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(4, '2410016-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(5, '2410018-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(6, '2410019-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(7, '2410022-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(8, '2410024-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(9, '2410025-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(10, '2410026-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(11, '2410030-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(12, '2410037-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(13, '2410040-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(14, '2410042-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(15, '2410043-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(16, '2410048-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(17, '2410061-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(18, '2410062-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(19, '2410067-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(20, '2410069-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(21, '2410071-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(22, '2410079-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(23, '2410086-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(24, '2410087-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(25, '2410088-2', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(26, '2410089-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(27, '2410099-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(28, '2410100-1', 39, '2024-2025', '1st', '0', '2025-09-08 07:37:13', 'Active', 'admin'),
(29, '2110313-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(30, '2210239-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(31, '2210388-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(32, '2410054-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(33, '2410111-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(34, '2410113-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(35, '2410114-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(36, '2410119-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(37, '2410123-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(38, '2410135-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(39, '2410138-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(40, '2410142-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(41, '2410145-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(42, '2410147-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(43, '2410165-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(44, '2410171-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(45, '2410172-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(46, '2410175-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(47, '2410176-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(48, '2410180-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(49, '2410184-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(50, '2410185-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(51, '2410186-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(52, '2410220-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(53, '2410230-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(54, '2410231-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(55, '2410232-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(56, '2410234-2', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(57, '2510060-1', 39, '2024-2025', '1st', '0', '2025-09-08 08:34:31', 'Active', 'admin'),
(58, '2010248-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(59, '2110147-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(60, '2210031-2', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(61, '2210060-2', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(62, '2210066-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(63, '2210073-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(64, '2210083-2', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(65, '2210089-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(66, '2210097-2', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(67, '2210103-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(68, '2210120-2', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(69, '2210175-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(70, '2210189-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(71, '2210194-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(72, '2210195-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin'),
(73, '2310154-1', 27, '2024-2025', '1st', '0', '2025-09-08 08:47:31', 'Active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `file_upload_devices`
--

CREATE TABLE `file_upload_devices` (
  `id` int NOT NULL,
  `file_id` int NOT NULL,
  `device_id` int NOT NULL,
  `upload_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `upload_method` enum('web','api','mobile_app') COLLATE utf8mb4_unicode_ci DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_upload_devices`
--

INSERT INTO `file_upload_devices` (`id`, `file_id`, `device_id`, `upload_timestamp`, `upload_method`) VALUES
(1, 121, 1, '2025-09-18 05:03:38', 'web'),
(2, 123, 1, '2025-09-18 05:04:13', 'web'),
(3, 124, 1, '2025-09-18 05:04:13', 'web'),
(4, 125, 1, '2025-09-18 05:04:13', 'web'),
(5, 126, 2, '2025-09-18 05:09:22', 'web'),
(6, 127, 2, '2025-09-18 05:09:22', 'web'),
(7, 128, 2, '2025-09-18 05:09:22', 'web'),
(8, 129, 2, '2025-09-18 05:09:22', 'web'),
(9, 130, 2, '2025-09-18 05:13:27', 'web'),
(10, 131, 2, '2025-09-18 05:13:27', 'web'),
(11, 132, 2, '2025-09-18 05:13:27', 'web'),
(12, 133, 2, '2025-09-18 05:13:27', 'web'),
(13, 134, 1, '2025-09-18 05:19:22', 'web'),
(14, 135, 1, '2025-09-18 05:19:22', 'web'),
(15, 136, 1, '2025-09-18 05:19:22', 'web'),
(16, 137, 1, '2025-09-18 05:21:43', 'web'),
(17, 138, 1, '2025-09-18 05:21:43', 'web'),
(18, 139, 1, '2025-09-18 05:21:43', 'web'),
(19, 140, 1, '2025-09-18 05:21:43', 'web'),
(20, 141, 1, '2025-09-18 05:21:43', 'web'),
(21, 142, 1, '2025-09-18 05:34:07', 'web'),
(22, 143, 1, '2025-09-18 05:34:07', 'web'),
(23, 144, 1, '2025-09-18 05:34:07', 'web'),
(24, 145, 2, '2025-09-18 05:34:40', 'web'),
(25, 146, 2, '2025-09-18 05:34:40', 'web'),
(26, 147, 2, '2025-09-18 05:34:40', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `student_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `quiz1` decimal(5,2) DEFAULT NULL,
  `quiz2` decimal(5,2) DEFAULT NULL,
  `assignment1` decimal(5,2) DEFAULT NULL,
  `assignment2` decimal(5,2) DEFAULT NULL,
  `project` decimal(5,2) DEFAULT NULL,
  `midterm_exam` decimal(5,2) DEFAULT NULL,
  `final_exam` decimal(5,2) DEFAULT NULL,
  `total_grade` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `section` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quiz_score` decimal(5,2) DEFAULT '0.00',
  `assignment_score` decimal(5,2) DEFAULT '0.00',
  `project_score` decimal(5,2) DEFAULT '0.00',
  `exam_score` decimal(5,2) DEFAULT '0.00',
  `participation_score` decimal(5,2) DEFAULT '0.00',
  `total_score` decimal(5,2) DEFAULT '0.00',
  `final_grade` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_no`, `subject_id`, `quiz1`, `quiz2`, `assignment1`, `assignment2`, `project`, `midterm_exam`, `final_exam`, `total_grade`, `remarks`, `created_at`, `updated_at`, `created_by`, `academic_year`, `semester`, `section`, `quiz_score`, `assignment_score`, `project_score`, `exam_score`, `participation_score`, `total_score`, `final_grade`) VALUES
(7, '2410001-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(8, '2410002-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(9, '2410006-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(10, '2410016-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(11, '2410018-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(12, '2410019-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(13, '2410022-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(14, '2410024-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(15, '2410025-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(16, '2410026-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(17, '2410030-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(18, '2410037-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(19, '2410040-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(20, '2410042-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(21, '2410043-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(22, '2410048-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(23, '2410061-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(24, '2410062-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(25, '2410067-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(26, '2410069-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(27, '2410071-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(28, '2410079-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(29, '2410086-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(30, '2410087-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(31, '2410088-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(32, '2410089-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(33, '2410099-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(34, '2410100-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 07:37:13', '2025-09-08 07:37:13', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(35, '2110313-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(36, '2210239-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(37, '2210388-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(38, '2410054-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(39, '2410111-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(40, '2410113-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(41, '2410114-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(42, '2410119-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(43, '2410123-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(44, '2410135-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(45, '2410138-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(46, '2410142-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(47, '2410145-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(48, '2410147-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(49, '2410165-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(50, '2410171-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(51, '2410172-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(52, '2410175-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(53, '2410176-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(54, '2410180-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(55, '2410184-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(56, '2410185-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(57, '2410186-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(58, '2410220-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(59, '2410230-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(60, '2410231-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(61, '2410232-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(62, '2410234-2', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(63, '2510060-1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:34:31', '2025-09-08 08:34:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(64, '2010248-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(65, '2110147-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(66, '2210031-2', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(67, '2210060-2', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(68, '2210066-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(69, '2210073-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(70, '2210083-2', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(71, '2210089-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(72, '2210097-2', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(73, '2210103-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(74, '2210120-2', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(75, '2210175-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(76, '2210189-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(77, '2210194-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(78, '2210195-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', ''),
(79, '2310154-1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 08:47:31', '2025-09-08 08:47:31', 'admin', '2024-2025', '1st', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `grading_categories`
--

CREATE TABLE `grading_categories` (
  `id` int NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject_id` int DEFAULT NULL,
  `default_weight` decimal(5,2) DEFAULT '20.00',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_categories`
--

INSERT INTO `grading_categories` (`id`, `category_name`, `description`, `subject_id`, `default_weight`, `is_active`, `created_at`, `created_by`) VALUES
(1, 'Quiz', 'Short assessments and quizzes', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(2, 'Assignment', 'Homework and assignments', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(3, 'Project', 'Projects and practical work', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(4, 'Exam', 'Examinations and tests', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(5, 'Participation', 'Class participation and attendance', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(6, 'Laboratory', 'Laboratory work and experiments', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(7, 'Presentation', 'Presentations and oral assessments', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(8, 'Other', 'Other assessment types', NULL, '20.00', 0, '2025-09-08 08:48:20', 'admin'),
(11, 'Writtern Works', '', NULL, '20.00', 0, '2025-09-10 08:32:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grading_components`
--

CREATE TABLE `grading_components` (
  `id` int NOT NULL,
  `subject_id` int NOT NULL,
  `section_config_id` int DEFAULT NULL,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `component_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_type` enum('quiz','assignment','project','exam','participation','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `display_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order_index` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `icon`, `parent_id`, `order_index`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'All Documents', 'documents', 'fas fa-file-alt', NULL, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(2, 'Upload Document', 'upload', 'fas fa-upload', NULL, 2, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(3, 'Categories', 'categories', 'fas fa-tags', NULL, 3, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(4, 'Templates', 'templates', 'fas fa-file-template', NULL, 4, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(5, 'Accomplishment Reports', 'accomplishment_reports', 'fas fa-chart-line', NULL, 5, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(6, 'Class Records', 'class_records', 'fas fa-book', NULL, 6, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(7, 'Report Templates', 'report_templates', 'fas fa-file-contract', NULL, 7, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(8, 'Archive', 'archive', 'fas fa-archive', NULL, 8, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(9, 'User Management', 'user_management', 'fas fa-users', NULL, 9, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(10, 'Subjects Management', 'subjects_management', 'fas fa-book', NULL, 10, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(11, 'Analytics Overview', 'analytics_overview', 'fas fa-chart-bar', NULL, 11, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(12, 'Usage Reports', 'usage_reports', 'fas fa-chart-pie', NULL, 12, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(13, 'Audit Logs', 'audit_logs', 'fas fa-list-alt', NULL, 13, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(14, 'Statistics', 'statistics', 'fas fa-chart-area', NULL, 14, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(15, 'System Settings', 'system_settings', 'fas fa-cog', NULL, 15, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(16, 'Backup & Restore', 'backup_restore', 'fas fa-database', NULL, 16, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(17, 'Maintenance', 'maintenance', 'fas fa-tools', NULL, 17, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(18, 'My Documents', 'my_documents', 'fas fa-folder-open', NULL, 18, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(19, 'My Reports', 'my_reports', 'fas fa-file-contract', NULL, 19, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(20, 'Help & Support', 'help_support', 'fas fa-question-circle', NULL, 20, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(21, 'About DOC-EASE', 'about', 'fas fa-info-circle', NULL, 21, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(22, 'Student Management', 'students', 'mdi mdi-account-group', NULL, 5, 1, '2025-09-06 15:18:37', '2025-09-06 15:18:37'),
(23, 'All Students', 'students-list', 'mdi mdi-account-multiple', 22, 1, 1, '2025-09-06 15:18:37', '2025-09-06 15:18:37'),
(24, 'Add Student', 'students-add', 'mdi mdi-account-plus', 22, 2, 1, '2025-09-06 15:18:37', '2025-09-06 15:18:37'),
(25, 'Upload Students', 'students-upload', 'mdi mdi-upload', 22, 3, 1, '2025-09-06 15:18:37', '2025-09-06 15:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_scores`
--

CREATE TABLE `quiz_scores` (
  `ScoreID` int NOT NULL,
  `StudentID` int NOT NULL,
  `Quiz1` decimal(5,2) DEFAULT NULL,
  `Quiz2` decimal(5,2) DEFAULT NULL,
  `Quiz3` decimal(5,2) DEFAULT NULL,
  `Quiz4` decimal(5,2) DEFAULT NULL,
  `Quiz5` decimal(5,2) DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_scores`
--

INSERT INTO `quiz_scores` (`ScoreID`, `StudentID`, `Quiz1`, `Quiz2`, `Quiz3`, `Quiz4`, `Quiz5`, `UpdatedAt`) VALUES
(1, 14, '10.00', NULL, NULL, NULL, NULL, '2025-09-08 01:33:57'),
(2, 15, '12.00', NULL, NULL, NULL, NULL, '2025-09-08 01:34:00'),
(3, 18, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(4, 19, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(5, 21, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(6, 22, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(7, 23, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(8, 24, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(9, 25, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(10, 26, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(11, 27, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(12, 28, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(13, 29, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(14, 30, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(15, 31, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(16, 32, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(17, 33, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(18, 34, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(19, 35, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(20, 36, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(21, 37, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(22, 38, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(23, 41, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(24, 42, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(25, 43, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(26, 45, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(27, 47, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(28, 49, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(29, 51, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(30, 53, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(31, 54, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(32, 55, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(33, 57, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(34, 58, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(35, 60, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(36, 61, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(37, 63, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(38, 65, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(39, 67, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(40, 69, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(41, 70, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(42, 71, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(43, 72, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(44, 75, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(45, 76, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(46, 77, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(47, 78, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(48, 79, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(49, 81, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(50, 83, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(51, 84, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(52, 85, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(53, 86, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(54, 88, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(55, 89, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(56, 90, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(57, 91, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(58, 92, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(59, 93, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(60, 94, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(61, 95, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(62, 96, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(63, 97, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(64, 98, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(65, 99, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(66, 100, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(67, 101, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(68, 102, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(69, 104, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(70, 105, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(71, 106, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(72, 107, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(73, 108, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(74, 110, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(75, 112, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(76, 113, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(77, 115, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(78, 116, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(79, 118, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(80, 119, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(81, 120, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(82, 121, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(83, 122, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(84, 124, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(85, 126, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(86, 127, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(87, 128, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(88, 129, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(89, 130, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(90, 131, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(91, 132, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(92, 133, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(93, 134, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(94, 136, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(95, 138, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(96, 139, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(97, 142, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(98, 143, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(99, 144, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(100, 145, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(101, 146, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(102, 147, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(103, 149, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(104, 150, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(105, 151, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(106, 152, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(107, 153, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(108, 154, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(109, 155, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(110, 156, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(111, 157, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(112, 158, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(113, 159, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(114, 160, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(115, 161, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(116, 162, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(117, 163, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(118, 164, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(119, 165, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(120, 166, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(121, 167, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(122, 168, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(123, 169, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(124, 170, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(125, 171, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(126, 173, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(127, 174, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(128, 176, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(129, 177, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(130, 178, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(131, 181, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(132, 183, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(133, 185, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(134, 186, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(135, 187, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(136, 188, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(137, 190, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(138, 191, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(139, 192, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(140, 193, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(141, 194, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(142, 195, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(143, 196, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(144, 197, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(145, 198, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(146, 199, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(147, 200, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(148, 202, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(149, 203, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(150, 204, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(151, 205, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(152, 206, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(153, 207, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(154, 208, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(155, 209, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(156, 210, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(157, 211, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(158, 213, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(159, 214, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(160, 215, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(161, 216, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(162, 217, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(163, 220, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(164, 221, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(165, 223, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(166, 225, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(167, 226, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(168, 227, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(169, 228, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(170, 230, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(171, 231, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(172, 232, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(173, 235, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(174, 236, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(175, 237, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(176, 238, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(177, 239, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(178, 240, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(179, 241, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(180, 242, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(181, 245, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(182, 246, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(183, 247, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(184, 248, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(185, 249, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(186, 253, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(187, 255, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(188, 256, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(189, 261, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(190, 262, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(191, 263, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(192, 264, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(193, 265, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(194, 266, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(195, 268, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(196, 269, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(197, 270, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(198, 272, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(199, 273, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(200, 274, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(201, 275, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(202, 276, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(203, 277, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(204, 278, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(205, 279, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(206, 280, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(207, 282, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(208, 283, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(209, 284, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(210, 286, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(211, 288, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(212, 290, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(213, 291, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(214, 294, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(215, 295, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(216, 296, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(217, 297, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(218, 299, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(219, 300, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(220, 301, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(221, 302, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(222, 303, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(223, 304, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(224, 306, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(225, 309, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(226, 310, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(227, 311, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(228, 314, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(229, 315, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(230, 316, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(231, 317, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(232, 318, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(233, 319, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(234, 320, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(235, 321, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(236, 322, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(237, 323, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(238, 324, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(239, 325, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(240, 326, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(241, 327, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(242, 328, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(243, 329, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(244, 330, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(245, 331, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(246, 335, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(247, 336, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(248, 337, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(249, 338, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(250, 339, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(251, 340, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(252, 341, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(253, 342, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(254, 343, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(255, 344, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(256, 346, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(257, 347, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(258, 348, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(259, 349, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(260, 350, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(261, 351, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(262, 352, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(263, 356, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(264, 357, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(265, 358, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(266, 359, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(267, 360, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(268, 361, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(269, 362, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(270, 363, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(271, 364, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(272, 365, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(273, 367, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(274, 368, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(275, 369, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(276, 370, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(277, 371, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(278, 372, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(279, 373, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(280, 374, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(281, 375, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(282, 376, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(283, 377, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(284, 378, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(285, 379, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(286, 380, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(287, 381, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(288, 382, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(289, 383, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(290, 384, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(291, 386, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(292, 387, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(293, 389, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(294, 390, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(295, 391, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(296, 392, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(297, 393, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(298, 395, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(299, 396, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(300, 397, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(301, 400, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(302, 401, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(303, 403, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(304, 404, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(305, 405, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(306, 406, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(307, 407, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(308, 408, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(309, 409, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(310, 411, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(311, 412, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(312, 416, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(313, 417, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(314, 418, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(315, 419, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(316, 421, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(317, 423, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(318, 424, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(319, 425, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(320, 426, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(321, 427, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(322, 429, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(323, 432, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(324, 434, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(325, 435, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(326, 436, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(327, 437, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(328, 438, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(329, 441, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(330, 442, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(331, 443, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(332, 444, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(333, 445, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(334, 446, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(335, 448, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(336, 449, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(337, 450, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(338, 451, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(339, 452, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(340, 453, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(341, 454, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(342, 455, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(343, 456, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(344, 458, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(345, 459, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(346, 460, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(347, 461, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(348, 463, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(349, 464, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(350, 465, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(351, 466, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(352, 467, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(353, 469, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(354, 470, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(355, 471, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(356, 472, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(357, 473, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(358, 474, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(359, 476, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(360, 479, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(361, 480, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(362, 484, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(363, 486, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(364, 487, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(365, 489, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(366, 490, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(367, 491, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(368, 492, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(369, 493, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(370, 494, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(371, 495, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(372, 497, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(373, 499, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(374, 500, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(375, 502, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(376, 504, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(377, 505, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(378, 506, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(379, 507, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(380, 508, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(381, 511, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(382, 513, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(383, 514, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(384, 515, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(385, 516, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(386, 518, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(387, 520, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(388, 524, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(389, 526, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(390, 527, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(391, 528, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(392, 529, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(393, 530, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(394, 531, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(395, 532, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(396, 533, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(397, 534, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(398, 535, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(399, 537, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(400, 538, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(401, 539, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(402, 541, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(403, 543, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(404, 544, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(405, 545, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(406, 546, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(407, 547, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(408, 548, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(409, 550, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(410, 551, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(411, 552, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(412, 553, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(413, 554, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(414, 555, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(415, 556, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(416, 558, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(417, 559, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(418, 560, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(419, 561, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(420, 564, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(421, 565, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(422, 566, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(423, 567, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(424, 568, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(425, 569, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(426, 570, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(427, 571, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(428, 573, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(429, 574, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(430, 575, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(431, 576, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(432, 577, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(433, 578, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(434, 579, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(435, 580, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(436, 582, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(437, 585, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(438, 587, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(439, 588, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(440, 589, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(441, 590, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(442, 591, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(443, 592, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(444, 593, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(445, 594, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(446, 595, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(447, 598, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(448, 599, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(449, 600, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(450, 602, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(451, 603, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(452, 605, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(453, 607, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(454, 608, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(455, 609, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(456, 610, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(457, 611, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(458, 612, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(459, 613, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(460, 614, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(461, 616, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(462, 618, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(463, 619, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(464, 620, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(465, 621, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(466, 622, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(467, 623, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(468, 624, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(469, 625, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(470, 626, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(471, 627, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(472, 628, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(473, 629, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(474, 630, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(475, 631, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(476, 632, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(477, 633, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(478, 634, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(479, 635, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(480, 636, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(481, 637, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(482, 639, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(483, 640, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(484, 641, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(485, 643, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(486, 644, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(487, 645, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(488, 646, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(489, 647, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(490, 648, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(491, 649, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(492, 650, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(493, 651, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(494, 652, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(495, 654, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(496, 655, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(497, 656, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(498, 658, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(499, 659, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(500, 660, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(501, 661, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(502, 662, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(503, 665, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(504, 666, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(505, 667, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(506, 670, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(507, 672, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(508, 674, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(509, 675, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(510, 676, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(511, 677, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(512, 679, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(513, 680, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(514, 681, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(515, 682, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(516, 683, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(517, 684, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(518, 686, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(519, 687, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(520, 688, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(521, 689, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(522, 16, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(523, 17, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(524, 20, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(525, 39, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(526, 40, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(527, 44, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(528, 46, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(529, 48, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(530, 52, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(531, 59, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(532, 62, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(533, 66, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(534, 73, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(535, 74, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(536, 80, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(537, 103, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(538, 109, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(539, 111, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(540, 114, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(541, 117, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(542, 123, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(543, 125, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(544, 135, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(545, 140, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(546, 141, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(547, 148, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(548, 172, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(549, 175, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(550, 179, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(551, 180, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(552, 182, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(553, 184, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(554, 189, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(555, 201, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(556, 212, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(557, 218, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(558, 222, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(559, 224, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(560, 233, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(561, 234, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(562, 244, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(563, 250, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(564, 251, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(565, 252, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(566, 257, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(567, 258, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(568, 259, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(569, 260, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(570, 267, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(571, 271, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(572, 281, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(573, 285, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(574, 287, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(575, 289, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(576, 292, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(577, 293, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(578, 298, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(579, 305, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(580, 307, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(581, 308, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(582, 312, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(583, 313, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(584, 333, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(585, 334, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(586, 345, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(587, 353, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(588, 355, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(589, 366, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(590, 385, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(591, 388, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(592, 394, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(593, 398, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(594, 402, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(595, 410, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(596, 413, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(597, 414, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(598, 415, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(599, 420, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(600, 422, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(601, 428, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(602, 430, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(603, 431, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(604, 433, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(605, 439, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(606, 447, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(607, 457, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(608, 462, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(609, 468, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(610, 477, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(611, 478, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(612, 482, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(613, 483, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(614, 485, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(615, 488, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(616, 496, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(617, 498, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(618, 501, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(619, 503, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(620, 509, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(621, 510, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(622, 512, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(623, 517, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(624, 519, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(625, 521, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(626, 523, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(627, 525, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(628, 536, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(629, 540, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(630, 542, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(631, 549, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(632, 557, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(633, 562, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(634, 563, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(635, 572, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(636, 581, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(637, 583, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(638, 584, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(639, 586, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(640, 596, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(641, 597, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(642, 601, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(643, 604, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(644, 606, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(645, 615, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(646, 642, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(647, 653, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(648, 657, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(649, 663, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(650, 664, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(651, 668, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(652, 669, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(653, 671, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(654, 673, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(655, 678, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(656, 685, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(657, 50, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(658, 56, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(659, 64, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(660, 68, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(661, 82, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(662, 87, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(663, 137, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(664, 219, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(665, 229, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(666, 243, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(667, 254, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(668, 332, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(669, 354, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(670, 399, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(671, 440, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(672, 475, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(673, 481, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(674, 522, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(675, 617, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02'),
(676, 638, NULL, NULL, NULL, NULL, NULL, '2025-09-08 01:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Full system access with all permissions', 1, '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(2, 'User', 'Standard user with limited permissions', 0, '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(3, 'Teacher', 'Teacher with class management permissions', 0, '2025-09-04 14:53:28', '2025-09-04 14:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_add` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `can_archive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `menu_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `can_archive`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(2, 1, 2, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(3, 1, 3, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(4, 1, 4, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(5, 1, 5, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(6, 1, 6, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(7, 1, 7, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(8, 1, 8, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(9, 1, 9, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(10, 1, 10, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(11, 1, 11, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(12, 1, 12, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(13, 1, 13, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(14, 1, 14, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(15, 1, 15, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(16, 1, 16, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(17, 1, 17, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(18, 1, 18, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(19, 1, 19, 1, 1, 1, 1, 1, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(20, 1, 20, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(21, 1, 21, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(22, 2, 1, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(23, 2, 2, 1, 1, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(24, 2, 3, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(25, 2, 4, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(26, 2, 5, 1, 1, 1, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(27, 2, 6, 1, 1, 1, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(28, 2, 7, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(29, 2, 8, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(30, 2, 9, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(31, 2, 10, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(32, 2, 11, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(33, 2, 12, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(34, 2, 13, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(35, 2, 14, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(36, 2, 15, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(37, 2, 16, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(38, 2, 17, 0, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(39, 2, 18, 1, 1, 1, 1, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(40, 2, 19, 1, 1, 1, 1, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(41, 2, 20, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33'),
(42, 2, 21, 1, 0, 0, 0, 0, '2025-09-04 12:58:33', '2025-09-04 12:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `section_grading_configs`
--

CREATE TABLE `section_grading_configs` (
  `id` int NOT NULL,
  `subject_id` int NOT NULL,
  `course` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_weight` decimal(5,2) DEFAULT '100.00',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `SettingKey` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `SettingValue` text COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `SettingKey`, `SettingValue`, `Description`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'max_files_per_upload', '7', 'Maximum number of files allowed per upload', '2025-09-07 13:13:01', '2025-09-07 14:02:43'),
(2, 'allowed_file_types', 'pdf,doc,docx,txt,rtf,jpg,jpeg,png,gif,bmp,tiff,svg,ppt,pptx,odp,xls,xlsx,csv,ods,zip,rar,7z,mp3', 'Comma-separated list of allowed file extensions', '2025-09-07 13:13:01', '2025-09-12 16:10:14'),
(3, 'max_file_size_mb', '20', 'Maximum file size per file in MB', '2025-09-07 13:13:01', '2025-09-07 14:02:43'),
(4, 'admin_usercode', 'Password123', 'Admin login usercode', '2025-09-07 13:13:01', '2025-09-07 13:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `StudentNo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MiddleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `Course` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Major` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` enum('Continuing','New','Transferee') COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `Year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Lec` int DEFAULT NULL,
  `Lab` int DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Barangay` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Municipality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `StudentNo`, `Surname`, `FirstName`, `MiddleName`, `Sex`, `Course`, `Major`, `Status`, `Year`, `Section`, `Lec`, `Lab`, `BirthDate`, `Barangay`, `Municipality`, `Province`, `email`, `phone`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(14, '2310112-2', 'Abadines', 'Bredilyn', 'Villanueva', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2004-09-18', 'Malbago', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(15, '2310106-2', 'Abande', 'Elisha Mae', 'Guzon', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 15, 3, '2005-03-09', 'Sampongon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(16, '2510109-1', 'Abejar', 'John Kyle', 'Bongcales', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-08-29', 'Bogo (pob.)', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(17, '2510044-1', 'Abello', 'Emmanuel Justine', '', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2006-12-19', 'Cabulihan', 'Limasawa', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(18, '2410018-2', 'Abengoza', 'Lian Yi Shin', 'Peligrino', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2003-11-24', 'San Roque', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(19, '2110119-2', 'Abines', 'Devena', 'Brigoli', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 5, 1, '2001-05-05', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(20, '2510067-2', 'Abonita', 'Hammiah Cane', 'Aguillon', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-09-30', 'San Miguel', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(21, '2210225-1', 'Abonita', 'Jhunry', 'Matondo', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2002-05-30', 'Kahupian', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(22, '2410212-1', 'Abrea', 'Jhersah', 'Resma', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 4, '2005-11-05', 'Guintoylan', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(23, '2220002-1', 'Abrea', 'Leonel', 'Hingpit', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2001-04-20', 'San Antonio', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(24, '2410065-1', 'Abuyabor', 'Mikke John', 'Banez', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-08-29', 'Tabok', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(25, '2410055-1', 'Acampado', 'Jodel', 'Pizon', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2003-04-26', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(26, '2210172-1', 'Adobas', 'Christian Dave', 'Ramos', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-03-05', 'Waterloo', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(27, '1510048-1', 'Agad', 'Giovannie', 'Plaza', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 16, 2, '1998-01-01', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(28, '2310154-1', 'Agot', 'Joren', 'Lawag', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 12, 3, '2000-02-06', 'Dagsa', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(29, '2210288-1', 'Agudera', 'Jan Glemar', '', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-01-24', 'San Isidro', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(30, '2410210-2', 'Aguylo', 'Angeline', 'Sumampong', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2006-06-27', 'Pangi', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(31, '2210311-2', 'Ajoc', 'Ivy', 'Morillo', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 15, 0, '2001-01-07', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(32, '2310081-2', 'Ajoc', 'Juliet', 'Ybanez', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-03-14', 'Baugo', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(33, '2210301-2', 'Alapag', 'Sionavic', 'Inso', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-04-12', 'Camang', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(34, '2210254-1', 'Albesa', 'Gerald', 'Elejorde', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '1997-04-03', 'Cawayan', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(35, '2410220-2', 'Albesa', 'Ma. Patricia', 'Fernandez', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-10-13', 'Zone I (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(36, '2110326-2', 'Alboleras', 'Conching', 'Albento', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 16, 2, '2003-10-25', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(37, '2210164-1', 'Alboleras', 'Joshua Luis', 'Tacle', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 12, 3, '2003-07-11', 'San Miguel', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(38, '2210064-1', 'Alfornon', 'Jan Kyle', 'Lambon', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-01-05', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(39, '2510002-2', 'Alila', 'Jesusa', 'Dumali', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2005-12-26', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(40, '2510017-1', 'Alonsagay', 'Alexander', 'Saldivar', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-07-31', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(41, '2410085-2', 'Alpas', 'Yra Grace', '', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-03-13', 'San Teodoro', 'Bunawan', 'Agusan Del Sur', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(42, '2310003-2', 'Alvarado', 'Stella Marie', 'Subrado', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-07-14', 'Malibago', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(43, '2410013-2', 'Amad', 'Daryl', 'Gonzales', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-07-28', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(44, '2510059-1', 'America', 'Nathaniel', 'Monderondo', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-03-05', 'Tabok', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(45, '2210140-1', 'Amogues', 'James Kenneth', 'Galvez', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '1999-03-21', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(46, '2510089-2', 'Amoguis', 'Sheila Mae', 'Lanticse', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-02-10', 'Plaridel', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(47, '2210161-1', 'Amolato', 'Jhon Christiane', 'Abella', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 20, 4, '2003-07-04', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(48, '2510038-2', 'Amolo', 'Rodjilyn', 'Gania', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-11-20', 'Hilaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(49, '2310069-1', 'Amora', 'Emil Jon', 'Timario', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-06-19', 'Santo Nino', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(50, '2510034-2', 'Amparo', 'Berna Zeeneth', '', 'F', 'BSA', 'General Science', 'Transferee', '1st Year', 'A', 11, 0, '2001-08-02', 'Santa Sofia', 'Padre Burgos', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(51, '2410222-2', 'Amparo', 'Charlene', 'Enriquez', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-09-18', 'San Miguel', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(52, '2510032-2', 'Amparo', 'Je Ann', 'Tutor', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2004-11-15', 'Suba', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(53, '2310029-2', 'Amparo', 'Maria Luz', 'Omipon', 'F', 'BSFi', 'NONE', 'Continuing', '3rd Year', 'A', 18, 5, '2004-12-13', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(54, '2210203-2', 'Amper', 'Glaizel', 'Licay', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 14, 4, '2002-11-09', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(55, '2210118-1', 'Amper', 'Melchor', 'Arnaiz', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2000-03-13', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(56, '2510156-1', 'Anadon', 'John Mark', 'Suson', 'M', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 4, 2, '2005-06-23', 'San Juan', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(57, '2410053-2', 'Anadon', 'Reyze Marie', '', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-11-29', 'Pontod', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(58, '2410025-2', 'Andam', 'Kristin', 'Agad', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-12-24', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(59, '2510100-1', 'Andrade', 'Peabo', 'Ramos', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-02-10', 'Esperanza', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(60, '2210304-2', 'Angcoy', 'Arabella', '', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2003-08-14', 'Ayahag', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(61, '2410027-2', 'Ani', 'Abegail', 'Dolorito', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-02-15', 'Hugpa', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(62, '2510114-2', 'Ani', 'Myrha Angela Yvon', 'Palco', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-05-21', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(63, '2210253-1', 'Aninipot', 'Jhon Manuel', 'Sumalpong', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-08-03', 'Sampongon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(64, '2510132-1', 'Aparejo', 'Stephen', 'Kasil', 'M', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 8, 0, '2006-10-18', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(65, '2310002-2', 'Apilan', 'Akissah Beth', 'Estopia', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-11-19', 'Cebuana', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(66, '2510071-1', 'Aplan', 'Den Ivor', 'Calo', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-08-07', 'San Miguel', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(67, '2410113-1', 'Araniel', 'Allen Justine', 'Kisteria', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-03-07', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(68, '2510090-2', 'Arbilon', 'Jamaica', 'Bael', 'F', 'BSMB', 'NONE', 'Transferee', '1st Year', 'A', 18, 2, '2006-02-27', 'Eastern (pob.)', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(69, '2210352-2', 'Arcena', 'Rhuszel', '', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 10, 2, '2002-03-11', 'Cambite', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(70, '2210147-2', 'Arco', 'Ana Mae', 'Sabino', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2003-05-25', 'Higosoan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(71, '2410231-1', 'Arco', 'Robert', 'Lastra', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2004-06-08', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(72, '2210191-2', 'Armogenia', 'Hanna Maerell', 'Amora', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-12-08', 'Carnaga', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(73, '2510068-2', 'Arnaiz', 'Colin', 'Mercado', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-11-09', 'Consolacion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(74, '2510151-1', 'Arong', 'Jake', '', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2001-05-10', 'Agay-ay', 'San Juan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(75, '2210079-1', 'Aroy', 'Kerby Klier', 'Ranes', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2003-03-27', 'Lib-og', 'Maasin', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(76, '2310067-2', 'Aton', 'April Grace', 'Batanas', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-04-26', 'Bogo (pob.)', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(77, '2310124-1', 'Auguis', 'Sherwin Jay', 'Lota', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-04-28', 'Garcia', 'Libjo (albor)', 'Dinagat Islands', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(78, '2410107-2', 'Ayop', 'Syra Eve', 'Cempron', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 3, '2006-02-27', 'Zone II (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(79, '2210095-2', 'Baco', 'Kirara', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 14, 4, '2003-07-04', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(80, '2510158-1', 'Bagasbas', 'Emmanuel', 'Delin', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2006-09-14', 'Poblacion Ubos', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(81, '2210119-1', 'Balaba', 'Alven', 'Rebato', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-07-23', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(82, '2510161-2', 'Balagon', 'Irene', 'Sumalinao', 'F', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 18, 2, '2006-02-18', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(83, '2310079-2', 'Balaguer', 'Miregen', 'Espiritu', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2003-11-03', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(84, '2410167-1', 'Balondro', 'Romer', 'Espinosa', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-03-26', 'Guadalupe', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(85, '2410198-1', 'Baloro', 'Jellan', 'Alvar', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-08-29', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(86, '2210295-1', 'Baloro', 'Mark Ian', 'Semblante', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-04-15', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(87, '2510105-2', 'Banaag', 'Jennella Grace', 'Pantoja', 'F', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 15, 2, '2004-10-12', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(88, '2410125-2', 'Banga', 'Deacy', 'Labata', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2004-12-04', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(89, '2110247-2', 'Bantaculo', 'Aerol Kate', 'Tortillas', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 8, 2, '2002-10-11', 'San Isidro', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(90, '2210023-2', 'Baral', 'Mica', 'Cuenco', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-09-28', 'Cabulihan', 'Limasawa', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(91, '2110292-1', 'Baslot', 'Ryan', 'Gemino', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2003-04-05', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(92, '2410054-1', 'Basuga', 'Gelbert', 'Gaviola', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2003-09-17', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(93, '2220005-2', 'Batalon', 'Elyn Joy', 'Vallinas', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2004-06-11', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(94, '2310107-1', 'Bautista', 'John Jacob', 'Kiliste', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-06-24', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(95, '2210166-1', 'Bayona', 'Romwel', '', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 14, 4, '2001-04-07', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(96, '2210259-1', 'Bayron', 'Ranel', 'Castro', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-01-20', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(97, '2210042-2', 'Bello', 'Judy Ann', 'Escoro', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-09-09', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(98, '2410133-2', 'Bello', 'Sarah Iris', 'Jandayan', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 16, 2, '2006-06-26', 'Pamahawan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(99, '2410033-1', 'Beloy', 'Alfredo, Jr.', 'Junio', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-08-01', 'San Vicente', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(100, '1710031-2', 'Beltran', 'Rose Mae', 'Orias', 'F', 'BSFi', 'NONE', 'Continuing', '3rd Year', 'A', 12, 5, '1997-05-19', 'Ponod', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(101, '2210121-2', 'Bermiso', 'Ashlie', 'Manatad', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-01-17', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(102, '2210107-2', 'Bermiso', 'Marievel', 'Timario', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 21, 3, '2003-12-21', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(103, '2510050-1', 'Bernales', 'John Ej', 'Dumajel', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-03-18', 'Cabascan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(104, '2410002-1', 'Bernales', 'Jomarie', 'Cupas', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-02-11', 'Santa Cruz', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(105, '2210197-1', 'Bernales', 'Nante', 'Hoybia', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-11-22', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(106, '2210289-1', 'Bernales', 'Reymark', '', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-03-16', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(107, '2110313-1', 'Beronilla', 'Dariel', 'Calderon', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2003-02-20', 'Mag-ata', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(108, '2410177-1', 'Beronio', 'Jayke', 'Baronda', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 16, 3, '2006-04-25', 'San Antonio', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(109, '2510130-2', 'Besas', 'Lucy Lowelyn', 'Gono', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-12-03', 'Templanza', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(110, '2210160-1', 'Betoa', 'Jundel', 'Hingpit', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2001-06-20', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(111, '2510123-1', 'Bihay', 'June Miles', 'Gerong', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-06-10', 'Mabicay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(112, '2310089-1', 'Bogate', 'John Pierre', 'Manasis', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 13, 4, '2005-07-10', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(113, '2310088-1', 'Bogate', 'Rohann John', 'Manasis', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-07-10', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(114, '2510084-2', 'Borlasa', 'Apple', 'Terante', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-09-30', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(115, '2110066-2', 'Borlasa', 'Kyla', 'Terante', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-04-18', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(116, '2210013-2', 'Bragas', 'Imee', 'Beringuel', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 10, 2, '2001-12-05', 'Santa Cruz', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(117, '2510005-2', 'Braquil', 'Jesyl', 'Esclamado', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-03-20', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(118, '2210028-2', 'Braquil', 'Sarah', 'Esclamado', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2002-08-02', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(119, '2310142-1', 'Bugnos', 'Cliff Jhone', 'Garcia', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2005-03-31', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(120, '2410011-2', 'Bulabos', 'Claire Angelie', 'Macalam', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-10-11', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(121, '2210314-1', 'Butad', 'Julius', 'Bisnar', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-07-17', 'Zone III', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(122, '2410058-2', 'Caadyang', 'April Rose', 'Bautista', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-04-26', 'Concepcion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(123, '2310066-2', 'Cabahug', 'Beverly', 'Gozon', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2004-08-24', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(124, '2310017-2', 'Cabahug', 'Danica Marie', 'Cabelin', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-06-06', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(125, '2510039-2', 'Cabahug', 'Jessa', '', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2005-11-05', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(126, '2210256-1', 'Cabaylo', 'Louie Jay', 'Gaviola', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-04-29', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(127, '2210012-2', 'Cabel', 'Aryl Rez', 'Manlimos', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 10, 2, '2001-09-22', 'Sangahon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(128, '2210178-1', 'Cabel', 'Nikki Ace', 'Tereso', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 13, 3, '2001-11-23', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(129, '2210175-1', 'Cabel', 'Trini', 'Balbon', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 17, 4, '2001-09-18', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(130, '2310050-2', 'Cabilic', 'Eva Mae', 'Consad', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-02-23', 'Bogo (pob.)', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(131, '2310027-1', 'Cabillada', 'James', 'Pingol', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2001-10-12', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(132, '2410135-2', 'Cabodbud', 'Cristina Jane', 'Dondriano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-08-06', 'Lamak', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(133, '2410102-2', 'Cabrera', 'Lyra Ann', 'Mancio', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 3, '2006-08-18', 'Banahao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(134, '2210009-2', 'Cadao', 'Maria Agnes', 'Gilo', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2000-12-03', 'Pasil', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(135, '2510097-1', 'Cadayona', 'Gerves Joy', 'Gerona', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-07-22', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(136, '1910005-1', 'Cag-ong', 'Fred', 'Casinao', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 14, 4, '2000-07-13', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(137, '2510083-1', 'Cagabhion', 'John Michael', 'Fonollera', 'M', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 13, 2, '2006-09-09', 'Zone III (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(138, '2410171-1', 'Cagadas', 'John', 'Rin', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-03-24', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(139, '2210080-2', 'Cagas', 'Shanealle', 'Galgo', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2001-07-05', 'Esperanza', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(140, '2510136-1', 'Calimas', 'Francis David', 'Gula', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2005-02-28', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(141, '2510170-1', 'Calinacion', 'John Ashley', 'Palaruan', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-07-28', 'Dakit (pob.)', 'San Francisco', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(142, '2210148-2', 'Calledo', 'Cristine', 'Cataros', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2002-12-24', 'Higosoan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(143, '2410213-2', 'Calubag', 'Glenys', 'Cabillo', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 13, 3, '2000-12-28', 'San Isidro', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(144, '2310034-1', 'Calubay', 'Mark Angel', 'Gumapac', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2000-10-25', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(145, '2310085-1', 'Calunsod', 'Gian Del', 'Sayson', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2005-05-22', 'Liberty', 'Loreto', 'Dinagat Islands', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(146, '2410022-1', 'Camarista', 'John Brunz', 'Gonzales', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-07-04', 'Mauylab', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(147, '2410131-1', 'Cambalon', 'Jerome', 'Odarbe', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-09-10', 'Olisihan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(148, '2510096-1', 'Canoy', 'Xymond Bean', '', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-12-26', 'Bulacan', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(149, '2210063-1', 'Capilitan', 'Ranniel', 'Jamero', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 14, 1, '2000-02-08', 'Anislagon', 'San Francisco', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(150, '2010105-2', 'Capistrano', 'Camille', 'Anguring', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2002-07-17', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(151, '2210279-2', 'Capistrano', 'Gerard', 'Flores', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-05-16', 'Zone III', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(152, '2410063-2', 'Capistrano', 'Shanice', 'Albasin', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-02-11', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(153, '2210127-2', 'Capon', 'Jevanie', 'Olasiman', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2004-02-20', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(154, '2010133-2', 'Capusoran', 'Catherine Kaye', 'Benero', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2001-12-16', 'Pangi', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(155, '2410009-2', 'Capusoran', 'Lorena', 'Capilitan', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-07-14', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(156, '2210007-2', 'Cardiño', 'Mary Ariadne', 'Cañon', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 10, 2, '2002-01-28', 'Santa Cruz', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(157, '2410111-2', 'Carungay', 'Ramila Jean', 'Miravite', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-08-04', 'Magatas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(158, '2410123-1', 'Casono', 'Kemuel', 'Rosal', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-09-05', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(159, '2210069-2', 'Castillon', 'Donessa Merced', 'Flores', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2001-03-10', 'Dagsa', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(160, '2210211-2', 'Castillon', 'Johnny', 'Ansojas', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-09-26', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(161, '2410136-1', 'Castolo', 'Alrich James', 'Iligan', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 19, 1, '2005-06-10', 'Mainit', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(162, '2410017-1', 'Castolome', 'Joseph', 'Angcoy', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-08-23', 'San Isidro', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(163, '2410250-2', 'Catambacan', 'Keanna Kate', 'Goltiano', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-05-28', 'Ponong', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(164, '2410143-1', 'Catambacan', 'Ruche', 'Abejero', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-04-27', 'Ponong', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(165, '2410163-2', 'Catarman', 'Rhea', 'Romera', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-05-07', 'La Purisima Concepcion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(166, '2310151-2', 'Cataylo', 'Rica', 'Vasquez', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2003-11-28', 'Cawayanan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(167, '2410001-1', 'Caube', 'Renz Arthur', 'Cupas', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-09-19', 'Maujo', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(168, '2410037-2', 'Cebuala', 'Emarie', 'Juban', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2003-09-28', 'Beniton', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(169, '2310130-1', 'Cempron', 'Abel John', 'Auguis', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-03-11', 'Garcia', 'Libjo (albor)', 'Dinagat Islands', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(170, '2310083-2', 'Cillo', 'Fellisarda', 'Corea', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-12-17', 'Kahupian', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(171, '2410215-2', 'Cillo', 'Ma. Christine', 'Supot', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-08-26', 'Kahupian', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(172, '2510102-2', 'Cillo', 'Sandra', 'Echevaria', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-06-03', 'Anahawan', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(173, '2410197-1', 'Claveria', 'Kenny Lee', 'Rusaban', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2005-05-09', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(174, '2410092-2', 'Cojano', 'Ailicka', 'Garlet', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2004-03-28', 'San Francisco Mabuhay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(175, '2510088-1', 'Colico', 'Andrew James', 'Ganda', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-07-20', 'Pangi', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(176, '2310123-2', 'Comilang', 'Reina', 'Gaviola', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2002-08-11', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(177, '2310091-2', 'Consuelo', 'Vhan Mariz', 'Sotel', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-01-22', 'San Roque', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(178, '2210005-1', 'Coquilla', 'Drexter', 'Mades', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2001-11-05', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(179, '2510055-1', 'Coquilla', 'James', 'Jamila', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2005-07-08', 'Punta', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(180, '2510107-2', 'Corativo', 'Junabhe', 'Gonzales', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-05-23', 'Hilaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(181, '2410080-2', 'Corcilles', 'Mikee Anne', 'Tagoctoc', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-09-21', 'Poblacion 1', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(182, '2510014-2', 'Corpus', 'Marjorie', 'Ocba', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-01-12', 'Magkasag', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(183, '2310093-2', 'Cortez', 'Honey Joy', 'Auditor', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-03-06', 'Combado', 'Maasin City', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(184, '2510099-2', 'Costorio', 'Chris-Ann', 'Baigan', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-09-01', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(185, '2220009-1', 'Cotanda', 'Vismark', 'Manding', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '1999-09-02', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(186, '1910190-1', 'Cotiamco', 'Jann Rensille', 'Inocente', 'M', 'BSMB', 'NON-STEM GRADUATE', 'Continuing', '4th Year', 'A', 3, 0, '1999-11-15', 'Eastern', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(187, '2210083-2', 'Cualteros', 'Irene Mae', 'Serrano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2004-04-05', 'Bitoon', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(188, '2210223-1', 'Culpa', 'John Mark', 'Bornostro', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-12-04', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(189, '2510037-1', 'Dabatos', 'Jhon Russel', 'Honrada', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-06-10', 'Pontod', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(190, '2410235-2', 'Dacera', 'Divine', 'Pedere', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-05-14', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(191, '2210090-1', 'Daga', 'Gerald', 'Bornostro', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 12, 3, '2001-04-01', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(192, '2410086-2', 'Daga', 'Samantha', 'Quileste', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-05-04', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(193, '2210363-2', 'Dagaas', 'Jessa Mae', 'Ramis', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2003-12-25', 'Javier', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(194, '2210341-2', 'Dagaas', 'Lea', 'Gumape', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-03-06', 'Sampongon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(195, '2210217-1', 'Dairo', 'Rain Alfonso', 'Serenio', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2004-03-19', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(196, '2210351-2', 'Dalida', 'Ivei', 'Rama', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2002-05-27', 'Pinamanagan', 'Abuyog', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(197, '2210219-2', 'Daniel', 'Rufa Mae', 'Paloma', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 21, 3, '2003-03-23', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(198, '2210044-2', 'Datig', 'Maria Kim', 'Carolino', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 13, 2, '2004-08-04', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(199, '2410071-1', 'Davis', 'Rodel', 'Telacas', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2002-12-06', 'Elevado', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(200, '2210029-1', 'Dayola', 'Kent', 'Cabal', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2003-12-06', 'Tagbibi', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(201, '2510167-2', 'Dayola', 'Maricar', 'Perez', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-03-12', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(202, '2210184-1', 'Dayrit', 'Rolydel', 'Solonia', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-06-10', 'Zone IV', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(203, '2410138-2', 'De Los Santos', 'Ashley Bernadette', 'Zafico', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-02-23', 'San Vicente', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(204, '2410170-2', 'De Paz', 'Sheva Marie', 'Guro', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-10-17', 'Upper Mahaplag', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(205, '2210257-1', 'De Veyra', 'Joseph', 'Alboleras', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2004-01-26', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(206, '2410118-2', 'Del Valle', 'Gea Ann', 'Cozo', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-03-27', 'Banahao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(207, '2310048-2', 'Delen', 'Liv Nathalie', 'Purca', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-05-23', 'Baculod', 'Hinundayan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(208, '2410057-2', 'Delute', 'Danica', 'Estrella', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-08-01', 'La Purisima Concepcion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(209, '2310133-1', 'Diabordo', 'Kierby', 'Paulin', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2004-07-05', 'Malbago', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(210, '2210145-1', 'Diapolet', 'Roshpet Jay', 'Bayhonan', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2004-02-16', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(211, '2410147-2', 'Dinolan', 'Lallyn', 'Malasaga', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-02-07', 'Pangi', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(212, '2510018-2', 'Diola', 'Katherine', 'Patria', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-05-17', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(213, '2210386-1', 'Dizon', 'Vincent', 'Valdez', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2001-09-11', 'Cabadiangan', 'Maasin', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(214, '2210015-2', 'Dolorito', 'Dovie', 'Siervo', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2002-02-02', 'Javier', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(215, '2210142-2', 'Doquila', 'Arah', 'Amongan', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2003-01-19', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(216, '2410139-1', 'Dotollo', 'Darwin', 'Arbilon', 'M', 'BSMB', 'NONE', 'Continuing', '1st Year', 'B', 20, 1, '1999-09-23', 'Maasin', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(217, '2310045-2', 'Dublois', 'Cristina Marie', 'Germano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-12-14', 'Guerrero District (pob.)', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(218, '2510148-2', 'Dugos', 'Honeylyn Joy', 'Costorio', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-03-18', 'Olisihan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(219, '2510146-2', 'Dulog', 'Shiela Mae', '', 'F', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 18, 2, '1998-11-17', 'Himakilo', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(220, '2310018-1', 'Dumagat', 'Danilo, Jr.', 'Megarbio', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-01-05', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(221, '2210354-2', 'Dumali', 'Jorina Mae', 'Tampos', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 12, 5, '2003-10-06', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(222, '2510010-2', 'Dumuluan', 'Jocarose', 'Labides', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-09-14', 'San Juan', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(223, '2410247-1', 'Eco', 'Kian', 'Macul', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-08-07', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(224, '2510015-1', 'Ello', 'Ejay', 'Tomaub', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-03-27', 'Mauylab', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(225, '2410024-1', 'Ello', 'Jake', 'Florida', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-05-06', 'Mauylab', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(226, '1810195-1', 'Elona', 'Gene Anrey', 'Monton', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 12, 3, '1970-01-01', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(227, '2310021-2', 'Embalsado', 'Kristine', 'Erica', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2004-12-17', 'Santo Niño', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42');
INSERT INTO `students` (`id`, `StudentNo`, `Surname`, `FirstName`, `MiddleName`, `Sex`, `Course`, `Major`, `Status`, `Year`, `Section`, `Lec`, `Lab`, `BirthDate`, `Barangay`, `Municipality`, `Province`, `email`, `phone`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(228, '2210004-2', 'Empon', 'Gebilyn', 'Albero', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-08-31', 'Pangi', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(229, '2510149-1', 'Encluna', 'Jude Ivan', 'Cordova', 'M', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 13, 2, '2004-10-29', 'Son-ok I', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(230, '2210290-1', 'Enide', 'Rojhun', 'Miole', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '1997-08-02', 'Anislagon', 'San Francisco', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(231, '2310063-1', 'Entino', 'John Paul', 'Dolosa', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2002-08-26', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(232, '2410100-1', 'Epis', 'Jerome', 'Pacate', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2004-11-16', 'Magatas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(233, '2510008-1', 'Equipilag', 'John Lee', 'Tolo', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2006-07-25', 'Cabascan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(234, '2510147-1', 'Erana', 'James Tons', 'Callora', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-10-27', 'Bogo (pob.)', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(235, '2410026-2', 'Esclamado', 'Glydel', 'Montederamos', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2004-11-26', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(236, '2410185-1', 'Escorpion', 'Johnathan', 'Santilliana', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-06-28', 'Garcia', 'Libjo (albor)', 'Dinagat Islands', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(237, '2410148-2', 'Espere', 'Irene', 'Palac', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-10-11', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(238, '2010122-2', 'Espinosa', 'Angelyn', 'Iyoy', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 16, 4, '2002-03-24', 'Lawgawan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(239, '2110013-1', 'Espinosa', 'Christian Bert', '', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 3, 1, '2003-04-18', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(240, '2410031-2', 'Espinosa', 'Rosemarie', 'Raper', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '1998-05-06', 'Hinagtikan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(241, '2210017-2', 'Estillore', 'Ana Marie', 'Satur', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-12-02', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(242, '2210224-1', 'Evale', 'Arnel', 'Antivo', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2002-11-10', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(243, '2510139-1', 'Famor', 'Melriel Joel', 'Ausa', 'M', 'BSA', 'General Science', 'Transferee', '1st Year', 'A', 16, 4, '2004-09-28', 'Gakat', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(244, '2510145-2', 'Fegi', 'Naizy Zairah', 'Patual', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-02-26', 'Hindag-an', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(245, '2310074-1', 'Felicilda', 'Sean David', 'Villa', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-11-22', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(246, '2210271-2', 'Flores', 'Jessica', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2002-03-09', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(247, '2410039-2', 'Flores', 'Kathlenne May', 'Jundis', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-05-15', 'Lunang', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(248, '2210349-2', 'Florida', 'Anna Rose', 'Labrador', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2004-04-13', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(249, '2210228-2', 'Formentera', 'Chelsea', 'Dagaang', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'C', 14, 4, '2004-09-01', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(250, '2510116-2', 'Fronteras', 'Lizza Mae', 'Corcilles', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2006-12-29', 'Bontoc', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(251, '2510046-1', 'Gabronino', 'Arhon', 'Antoy', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-09-18', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(252, '2510027-2', 'Gado', 'Jeryanel Alfeje', '', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-10-21', 'Caridad Norte', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(253, '2410091-2', 'Gagan', 'Jelly Beth', 'Sabutanan', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 17, 3, '2005-11-27', 'San Jose', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(254, '2510060-1', 'Galenzoga', 'Josh Martin', 'Fabicon', 'M', 'BSInfoTech', 'Programming', 'Transferee', '2nd Year', 'B', 16, 4, '2005-07-24', 'San Miguel', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(255, '2410240-1', 'Gales', 'John Rafael', 'Bernales', 'M', 'BSMB', 'NONE', 'Continuing', '1st Year', 'B', 15, 1, '2003-12-09', 'Hinagtikan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(256, '2210246-2', 'Galing', 'Ghila', 'Jorge', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-12-01', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(257, '2210388-1', 'Galing', 'Ivan Nathaniel', 'Sague', 'M', 'BSInfoTech', 'Programming', 'New', '2nd Year', 'B', 16, 4, '2003-04-23', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(258, '2510085-1', 'Galo', 'John Lloyd', 'Sulla', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-10-15', 'Zone II (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(259, '2510117-1', 'Galos', 'Shawn', 'Caindoy', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-02-17', 'Santa Cruz', 'Maasin City', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(260, '2510153-2', 'Galoy', 'Diana Jean', 'Salili', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-06-29', 'San Isidro', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(261, '2210277-1', 'Galudo', 'Oliver', 'Diola', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-03-31', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(262, '2410028-2', 'Gantala', 'Antonette', 'Lim', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-09-14', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(263, '2210244-1', 'Gantala', 'Maverick', 'Ventura', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2004-01-31', 'Canlupao', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(264, '2410227-2', 'Garcia', 'Avegel', 'Maturan', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2005-11-17', 'Santa Sofia', 'Padre Burgos', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(265, '2410232-2', 'Garcia', 'Erich Karyl', 'Dancil', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-10-10', 'Cabul-anonan (pob.)', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(266, '2410230-1', 'Garcia', 'Glen Mark', 'Tumon', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2003-10-11', 'Mabicay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(267, '2510019-2', 'Garcia', 'Jairen', 'Mercado', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-01-23', 'Calian', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(268, '2410089-1', 'Garcia', 'Lenard Kier', 'Dancil', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2004-03-01', 'Cabul-anonan (pob.)', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(269, '2410114-2', 'Gaspay', 'Kimberly Anne', 'Ticoy', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-01-10', 'Zone III (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(270, '2010223-1', 'Gatila', 'John Jasper', 'Pelias', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 10, 2, '2001-11-21', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(271, '2510157-2', 'Gay', 'Jovelyn', 'Pia', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-09-25', 'Alegria', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(272, '2410103-2', 'Gay', 'Nicole', 'Lindio', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-06-04', 'Consolacion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(273, '2410006-2', 'Gayo', 'Erica', 'Petere', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-12-16', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(274, '2410082-1', 'Gayo', 'French', 'Surigao', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-09-18', 'Marayag', 'San Francisco', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(275, '2410109-1', 'Geonzon', 'Ryan Kevin', 'Juaton', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2004-08-15', 'Catagbacan Handig', 'Loon', 'Bohol', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(276, '2410196-2', 'Gerona', 'Cris Angel', 'Brenzuela', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-07-27', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(277, '2410229-2', 'Gerona', 'Jesyl', 'Ruba', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 3, '2006-07-31', 'Magatas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(278, '2410142-1', 'Gerong', 'Jessie Boy', 'Escartin', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2003-12-11', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(279, '2310007-2', 'Gesto', 'Karyl', 'Gilo', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-01-25', 'Imelda', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(280, '2110296-1', 'Gesulga', 'Ahnjellou', 'Icot', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2001-12-28', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(281, '2510098-1', 'Gesulga', 'Chris Lawrence', 'Tabes', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-06-13', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(282, '2210365-1', 'Gesulga', 'Chris Vincent', 'Tabre', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 12, 3, '2000-04-04', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(283, '2220003-2', 'Gesulga', 'Jhoann Mae', 'Bongcales', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2003-10-02', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(284, '2210201-2', 'Gisulga', 'Jovelyn', 'Merino', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 20, 4, '2003-07-20', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(285, '2510075-1', 'Gitanes', 'Dan Rev', 'Gonzales', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-01-30', 'San Agustin (pob.)', 'Talacogon', 'Agusan Del Sur', '', '', NULL, 1, '2025-09-06 16:13:42', '2025-09-06 16:13:42'),
(286, '1910178-1', 'Goda', 'Jowie', 'Bongcales', 'M', 'BSFi', 'NONE', 'Continuing', '3rd Year', 'A', 18, 2, '2001-07-14', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(287, '2510087-2', 'Golo', 'Sharlyn Jane', 'Caballes', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-10-21', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(288, '2410116-2', 'Gomez', 'Katrina Mae', 'Caya', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-01-25', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(289, '2510131-1', 'Gomora', 'Kent', 'Misa', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-11-18', 'Caaga', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(290, '2210236-1', 'Gonato', 'Michael', 'Largo', 'M', 'BSMB', 'NONE', 'Continuing', '1st Year', 'B', 20, 0, '2003-06-30', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(291, '2410120-2', 'Gono', 'Ernelyn', 'Estrada', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 4, '2006-04-08', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(292, '2510135-2', 'Gonzales', 'Nicole Shane', 'Sansan', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-12-28', 'Buli', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(293, '2510042-1', 'Gonzales', 'Ryan James', '', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2005-03-04', 'San Roque', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(294, '2210192-2', 'Gorduiz', 'Allysa Shane', 'Suan', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-06-18', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(295, '2210226-1', 'Gorduiz', 'Sherwin Ace', 'Oppus', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-09-30', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(296, '2410211-2', 'Gotis', 'Reign Angelle', 'Escamis', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-11-29', 'Biasong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(297, '2310014-2', 'Goyo', 'Anna Reshelle', 'Dandan', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2004-07-18', 'Tigbao', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(298, '2510048-1', 'Gozon', 'Kiervy', 'Opina', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-05-15', 'Mabicay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(299, '2410087-2', 'Gula', 'Diana', 'Gumapac', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-11-24', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(300, '2310038-2', 'Gula', 'Grace', 'Bilag', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-05-13', 'Bagong Lipunan', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(301, '2310103-2', 'Gulo', 'Hyacinth', 'Fauste', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-11-20', 'San Jose', 'Dulag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(302, '2410176-1', 'Gultiano', 'Jiros', 'Claro', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-03-23', 'Tahud', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(303, '2310013-1', 'Guma', 'John Norbert', 'Cillo', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-06-22', 'Buli', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(304, '2410159-2', 'Gumapac', 'Jolanie', 'Lastima', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-03-28', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(305, '2510163-2', 'Gumapac', 'Rebie Joy', 'Radam', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2004-04-09', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(306, '2310005-2', 'Gumapi', 'Clarice', 'Ruiz', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-01-02', 'Eastern', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(307, '2510047-2', 'Gumela', 'Grace', 'Paguyo', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2004-03-22', 'San Jose', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(308, '2510011-1', 'Guzmana', 'Frank Leymar', 'Batucan', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2006-01-26', 'Camansi', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(309, '2210340-2', 'Guzmana', 'Romelyn', 'Macul', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 14, 4, '2004-02-17', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(310, '2310016-2', 'Guzon', 'Anna Mae', 'Antipas', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-11-22', 'Sampongon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(311, '2210103-1', 'Hagnaya', 'John Lloyd', 'Capecenio', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2003-11-01', 'Mapgap', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(312, '2510111-1', 'Hallera', 'Jessie Jones', 'Asumbrado', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-11-18', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(313, '2510124-2', 'Herbolingo', 'Karena', 'Abesia', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-04-12', 'San Francisco Mabuhay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(314, '2310072-1', 'Hermogino', 'Dexter', 'Telen', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2000-12-28', 'Talisay (pob.)', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(315, '2310051-2', 'Hermosilla', 'Marjorie', 'Alisan', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-04-02', 'Dagsa', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(316, '2310026-2', 'Hernandez', 'Carmela', 'Bihay', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-03-17', 'Casao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(317, '2210043-2', 'Hernandez', 'Janna Mae', 'Agudo', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 13, 2, '2004-01-09', 'Otikon', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(318, '2410088-2', 'Hilo', 'Jhastine', 'Siega', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-01-05', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(319, '2210338-2', 'Himarangan', 'Grace', 'Polinar', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2001-02-12', 'Dao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(320, '2310036-2', 'Himo', 'Cherry Ann', 'Respecia', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 15, 4, '2004-08-27', 'Waterloo', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(321, '2310061-1', 'Hindang', 'Rj Clint Rainiel', '', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-10-04', 'Bung-aw', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(322, '2410205-2', 'Huera', 'Ariana Mae', 'Zamora', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 4, '2006-09-25', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(323, '2210094-1', 'Ichon', 'Chalmer', 'Libres', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2002-09-05', 'Kahupian', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(324, '2410140-1', 'Ico', 'Ivan', 'Borras', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 19, 1, '2003-11-24', 'Matapay', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(325, '2310090-2', 'Iligan', 'Sophia Cyril', 'Flores', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-06-04', 'Pontod', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(326, '2410042-1', 'Ilogon', 'Jeriel Kish', 'Felicilda', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-12-11', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(327, '2210269-1', 'Ilogon', 'Jireh Faith', 'Felicilda', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2004-05-10', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(328, '2410094-2', 'Ingente', 'Kim Angela', 'Comighod', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-10-03', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(329, '2210299-2', 'Inso', 'Janesa', 'Jaranta', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-01-02', 'Camang', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(330, '2310108-1', 'Inso', 'Jhon Reven', 'Modeo', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-11-06', 'Himbangan', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(331, '2310110-2', 'Isaga', 'Jermalyn', 'Caday', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2001-04-21', 'Rizal', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(332, '2510118-2', 'Iway', 'Chris Merry Jhoy', 'Tomon', 'F', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 13, 2, '2006-12-25', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(333, '2510049-2', 'Jacobe', 'Lian Kate', 'PeÃ±aredondo', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-08-01', 'Gakat', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(334, '2510036-1', 'Jamora', 'John Ariel', 'Maloon', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2004-08-10', 'Pangi', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(335, '2410097-2', 'Jesto', 'Princes Grace', 'Lamoste', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-04-28', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(336, '2210287-2', 'Juban', 'Emely', 'Estrimos', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2001-12-02', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(337, '2310129-1', 'Julio', 'Hero', 'Sotto', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-09-12', 'Doña Helen', 'Libjo (albor)', 'Dinagat Islands', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(338, '2210024-2', 'Juranes', 'Milodie', 'Solana', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-10-14', 'Cabulihan', 'Limasawa', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(339, '2210089-1', 'Kaindoy', 'Jerry Leo', 'Makinano', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2003-11-14', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(340, '2210264-1', 'Kuizon', 'Gerald', 'Gono', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-08-30', 'Cabascan', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(341, '2410175-1', 'Kuizon', 'Jericho', 'Maulas', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-08-29', 'Tahud', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(342, '2210361-2', 'Kuizon', 'Mary Jorgina', 'Vallinas', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-03-23', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(343, '2210180-1', 'Labastida', 'Anthony R', 'Orillo', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-05-23', 'Taa', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(344, '2410195-2', 'Labastida', 'Justine Mae', 'Dela Cerna', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-09-18', 'Tahud', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(345, '2510094-2', 'Labata', 'Felyn', 'Jose', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2004-08-17', 'Lunas', 'Maasin City', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(346, '2310086-2', 'Lagbas', 'Mekylla Jed', 'Paulo', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-03-15', 'Bagong Lipunan', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(347, '2210194-1', 'Lagura', 'Jose Emmanuel', 'Dagami', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2003-03-14', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(348, '2310145-1', 'Lamoste', 'John Clifford', 'Orion', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2005-05-25', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(349, '2410151-1', 'Lamoste', 'Joshua', 'Villamor', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-12-26', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(350, '2210293-1', 'Lamoste', 'Mark Anthony', 'Punay', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 7, 6, '2001-04-16', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(351, '2310135-2', 'Lamoste', 'Mary Grace', 'Jamco', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2005-07-25', 'Carnaga', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(352, '2210331-1', 'Lansane', 'Meynard', 'Alag-igan', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-05-11', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(353, '2510126-2', 'Lansang', 'Zyra Claire', 'Cano', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-03-20', 'San Jose', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(354, '2510134-1', 'Lapasa', 'Rodel', 'Condina', 'M', 'BSInfoTech', 'Programming', 'Transferee', '1st Year', 'B', 15, 2, '2000-12-15', 'Magnangoy', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(355, '2510053-2', 'Lapasanda', 'Kristine', 'Jamero', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-04-27', 'Mauylab', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(356, '2210247-2', 'Las Marias', 'Angel Emmalou', 'Basitas', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-09-29', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(357, '2210092-1', 'Lasala', 'Aaron Angelo', 'Mahidlawon', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 13, 2, '2004-07-31', 'Pangi', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(358, '2210344-1', 'Lasala', 'Mark Angelo', 'Silong', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2002-08-27', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(359, '2310084-2', 'Laspiñas', 'Fe', 'Rosales', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2000-04-08', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(360, '2410015-2', 'Lastra', 'Krizia Marie', 'Miole', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-12-17', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(361, '2210251-2', 'Lawas', 'Christine Joy', 'Polo', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 10, 2, '2003-02-26', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(362, '2210240-2', 'Lawas', 'Danica', 'Polo', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2001-09-27', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(363, '2410180-1', 'Layo', 'Jonathan, Jr', 'Loyola', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2005-08-21', 'Cambite (pob.)', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(364, '2210031-2', 'Layo', 'Niñan', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 17, 4, '2002-01-15', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(365, '2210008-2', 'Layola', 'Carmelle', '', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 12, 3, '2001-07-15', 'Santa Cruz', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(366, '2510113-2', 'Lebato', 'Jelian Marice', 'Dagongdong', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-10-25', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(367, '2210294-2', 'Legaspi', 'Janene', 'Miro', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2003-08-11', 'Buac Gamay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(368, '2210324-2', 'Lelis', 'Charlene', 'Masaganda', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-08-18', 'Javier', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(369, '2010161-2', 'Letrero', 'Rheachell', '', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 11, 6, '1998-04-19', 'Maujo', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(370, '2210328-2', 'Letrero', 'Sharie', 'Muñez', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-07-11', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(371, '2410050-1', 'Leyes', 'Julieven', 'Baguio', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2004-03-28', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(372, '2410030-2', 'Liad', 'Angel Marie', 'Sarad', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-03-26', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(373, '2310042-2', 'Libodlibod', 'Jaylynne Gayle', 'Banatanto', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-05-21', 'Catandog 1', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(374, '2210335-2', 'Limen', 'Chryanne Mae', 'D.', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2001-12-04', 'Cogon', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(375, '1910058-1', 'Limen', 'Jerwen', 'Pipon', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 12, 4, '2000-10-11', 'Benit', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(376, '2210126-2', 'Lingatong', 'Mae', 'Mayao', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-03-17', 'Olisihan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(377, '2210356-2', 'Lingo', 'Shiela Mae', 'Vallente', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 11, 1, '2002-12-20', 'Guadalupe', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(378, '2410099-1', 'Lisbos', 'Ronel', 'Etac', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-07-14', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(379, '2210174-2', 'LLano', 'Lynette', 'Dadulo', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-02-08', 'Conalum', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(380, '2210057-1', 'LLanto', 'Renzo Marlou', '', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2004-01-03', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(381, '2110343-1', 'Lopez', 'Clark Eugene', 'Catigdig', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 18, 0, '2001-05-28', 'San Vicente', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(382, '2310094-1', 'Lopez', 'Miles Aidrian', 'Calapes', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-07-05', 'Dolho', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(383, '2210372-1', 'Lopez', 'Reyben', 'Dotarot', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2004-01-21', 'Balongbalong', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(384, '2410192-2', 'Loquias', 'Zoraiza', 'Macuto', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-01-30', 'Himakilo', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(385, '2510028-2', 'Lovete', 'Glazelle Jane', 'Polinar', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-08-09', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(386, '2410019-1', 'Lozada', 'Kevin', 'Turalba', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2002-12-18', 'Consolacion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(387, '2210368-1', 'Luengo', 'Mark Marie', 'Cuadra', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '1999-10-07', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(388, '2510043-1', 'Lumagod', 'Clark Ivan', '', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-11-04', 'Banahao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(389, '2210022-2', 'Lumata', 'Mekayla', 'Dela Cruz', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2004-10-04', 'Bitoon', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(390, '2410126-2', 'Lumayag', 'Joanna Amor', 'Dumalagan', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-07-03', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(391, '2010219-1', 'Macaldo', 'John Michael', 'Laming', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 20, 4, '2001-03-11', 'Mayuga', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(392, '2210326-1', 'Macasocol', 'Joed', '', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2000-11-16', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(393, '2410130-2', 'Macla', 'Jane', 'Mosca', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-02-09', 'Zone V (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(394, '2510062-2', 'Madura', 'Reizen', 'Jacobe', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-07-21', 'Dao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(395, '2410242-2', 'Magadan', 'Liza Mae', 'Tambis', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-12-20', 'Maslog', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(396, '2310146-1', 'Magadan', 'Sean Carlo', 'Gozon', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 3, '2004-12-27', 'Hilaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(397, '2010314-2', 'Magallanes', 'Eralyn', 'Ylade', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2001-10-27', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(398, '2510063-2', 'Maglasang', 'Princess Kim', 'Palmeras', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-09-26', 'Imelda', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(399, '2510164-2', 'Magpatoc', 'Erika Mae', 'Aroy', 'F', 'BSA', 'General Science', 'Transferee', '1st Year', 'A', 11, 4, '2005-05-09', 'Rizal', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(400, '2410184-2', 'Magsinolog', 'Rosevie', 'Galano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-02-08', 'San Isidro', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(401, '2410206-2', 'Magtahas', 'Jonalyn', 'Aguring', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2002-08-07', 'Pandan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(402, '2510138-2', 'Mahusay', 'Prickcy', 'Ocon', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-10-16', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(403, '2410098-1', 'Maimot', 'Domingo Jr.', 'Colis', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-06-12', 'Lamak', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(404, '2210302-2', 'Maique', 'Dianna Rose', 'Santillana', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-03-04', 'Camang', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(405, '2410225-2', 'Majestrado', 'Gemmalyn', 'Mondala', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-01-09', 'Rizal', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(406, '2310140-2', 'Makilang', 'Charlene', 'Aviso', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2004-04-17', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(407, '2410014-2', 'Makilang', 'Meah', 'Paulo', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-08-28', 'Sto. Nino Bontoc So. Leyte', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(408, '2110023-2', 'Malayo', 'Francis Nicolle', 'Tapalla', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-03-02', 'Esperanza', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(409, '2310139-2', 'Maldo', 'Shaira Lee', 'Ebio', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-03-10', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(410, '2510054-2', 'Mangubat', 'Rose Ann', 'Dupilas', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-09-22', 'San Roque', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(411, '2210189-1', 'Mangutara', 'Jamail', 'Castro', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2004-02-23', 'San Antonio', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(412, '2410207-2', 'Manlimos', 'Jell', 'Tadlas', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-02-16', 'San Roque', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(413, '2510007-2', 'Mantilla', 'Angelmie', 'Balones', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2005-11-01', 'Fatima', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(414, '2510133-1', 'Mantilla, Jr', 'Danilo', 'Cascayo', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-10-09', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(415, '2510103-1', 'Maraon', 'Earl Lorence', 'Sabacajan', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-05-26', 'Ichon', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(416, '2410012-2', 'Maraveles', 'Rhea', 'Empuesto', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-09-15', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(417, '2410051-2', 'Marte', 'Mary Lyn', 'Membrano', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-04-14', 'Tigbao', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(418, '2410156-1', 'Masbate', 'Loejie', 'Candom', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2006-03-13', 'Ponong', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(419, '2010020-1', 'Matulen', 'Jeofrey Nechole', 'Amogues', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2001-10-25', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(420, '2510024-1', 'Maulas', 'Billy Rey', 'Bacala', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '1999-09-30', 'Canlupao', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(421, '2210170-1', 'Maunes', 'Jay', 'Navarte', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 12, 3, '2002-11-19', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(422, '2510066-2', 'Maymay', 'Emma', 'Hamting', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-08-21', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(423, '2210120-2', 'Maymay', 'Myca', 'Felicilda', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2002-03-15', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(424, '2410040-1', 'Medina', 'Wyndel', 'Amparo', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-10-02', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(425, '2210036-1', 'Melicado', 'Jason', 'Relente', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 16, 2, '2000-02-21', 'Western', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(426, '2010248-1', 'Membrano', 'Mheljohn', 'Nuñez', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 2, 1, '2000-02-25', 'Buli', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(427, '2210345-1', 'Mendez', 'Celso, Jr.', 'Jugarap', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2002-06-13', 'Tugnao', 'Pres. Carlos P. Garcia (pitogo)', 'Bohol', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(428, '2510101-2', 'Mercado', 'Claire', 'Roque', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-11-22', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(429, '2210222-2', 'Mercado', 'Myca', 'Espere', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 12, 4, '2003-12-16', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(430, '2510072-2', 'Minor', 'Jay Ann', 'Abina', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-07-05', 'Zone V (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(431, '2510041-1', 'Mondal', 'Jhon Loy', 'Pogoy', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-06-27', 'Polahongon', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(432, '2410105-2', 'Monghit', 'Levy', 'Cortez', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2006-02-27', 'Punta', 'San Francisco', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(433, '2510003-2', 'Montajes', 'Hazel', 'Bermiso', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-01-22', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(434, '2310022-1', 'Montederamos', 'Josh', 'Near', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2004-09-18', 'Taliwa', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(435, '2210143-1', 'Montehermoso', 'Carlo', 'Sarita', 'M', 'BSFi', 'NONE', 'Continuing', '3rd Year', 'A', 18, 5, '2004-09-02', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(436, '2310111-2', 'Monter', 'Jella Marie', 'Misole', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-09-13', 'Asuncion', 'Maasin City', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(437, '2210163-1', 'Monteza', 'John Michael', 'Sumampong', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2003-12-31', 'Sampongon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(438, '2210032-1', 'Moralde', 'John Lloyd', 'Garvez', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2004-07-16', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(439, '2510140-1', 'Morales', 'James', 'Yucot', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-07-20', 'Mahayahay', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(440, '2510064-1', 'Morales, Jr.', 'Ireneo', 'Maitem', 'M', 'BSA', 'General Science', 'Transferee', '1st Year', 'A', 16, 4, '1996-01-04', 'Mabini', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(441, '2210200-2', 'Morgia', 'Analiza', 'Omandam', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-01-12', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43');
INSERT INTO `students` (`id`, `StudentNo`, `Surname`, `FirstName`, `MiddleName`, `Sex`, `Course`, `Major`, `Status`, `Year`, `Section`, `Lec`, `Lab`, `BirthDate`, `Barangay`, `Municipality`, `Province`, `email`, `phone`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(442, '2410048-2', 'Mori', 'Bryll Jane', 'Verano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-06-30', 'Bung-aw', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(443, '2310099-1', 'Morillo', 'Ronell', 'Encio', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-11-18', 'Hantag', 'Maasin', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(444, '2210268-2', 'Mosot', 'Arielle Kate', 'Cabahug', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 17, 4, '2003-04-09', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(445, '2210010-2', 'Munda', 'Rida', 'Radan', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-09-29', 'Taliwa', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(446, '2410223-2', 'Munez', 'Michelle', 'Ichon', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-08-02', 'Banahao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(447, '2510074-1', 'Murillon', 'Jonex', 'Agot', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-06-01', 'Pandan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(448, '2210205-1', 'Nable', 'Jandy', 'De Los Reyes', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-01-10', 'Tuburan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(449, '2210066-1', 'Nacano', 'Roland, Jr.', 'Pisao', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2004-03-10', 'Bogo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(450, '2410081-2', 'Nambatac', 'Roxan', 'Caingles', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-11-08', 'Bulacan', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(451, '2410052-2', 'Namoc', 'Anabel', 'Orais', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2004-06-17', 'San Vicente', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(452, '2210073-1', 'Napalan', 'Jayson', 'Signar', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2004-01-03', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(453, '2210199-1', 'Narollo', 'Xander', 'Betarmos', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-12-10', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(454, '2410061-2', 'Narte', 'Glenda', 'Morales', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-07-29', 'Mabicay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(455, '2310117-2', 'Natividad', 'Arianne', 'Salan', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 17, 1, '2004-01-08', 'San Isidro', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(456, '2410034-2', 'Navarrosa', 'Justine', 'Ayuban', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-05-09', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(457, '2510061-1', 'Navas', 'Travis', 'Evasitas', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-05-31', 'Himamaa', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(458, '2210278-1', 'Necosia', 'Jesmark', 'Daal', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2003-09-03', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(459, '2410108-2', 'Nelmida', 'Jesel', 'Geonzon', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-08-26', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(460, '2210038-2', 'Ningala', 'Ladylyn', 'Mosquito', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2003-04-05', 'Punta', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(461, '2310043-2', 'Nobile', 'Rica', 'Oppus', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '1997-06-13', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(462, '2510022-2', 'NuÃ±ez', 'Sheila Mae', 'Jamena', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-03-27', 'Zone Iii (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(463, '2210202-2', 'Nuñez', 'Melanie', 'Sajol', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2003-09-09', 'Camansi', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(464, '2210050-1', 'Nudalo', 'Christian Van', 'Mausisa', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 17, 5, '2002-12-17', 'San Jose', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(465, '2410190-1', 'Obado', 'Jenico', 'Garin', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2007-03-07', 'Magsuganao', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(466, '2110145-1', 'Obra', 'Roy', 'Gallardo', 'M', 'BAT', 'NONE', 'Continuing', '4th Year', 'A', 5, 0, '2000-05-11', 'San Salvador', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(467, '2310118-2', 'Oclarit', 'Annalou', 'Jumamil', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2004-09-02', 'Caaga', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(468, '2510093-2', 'Odoc', 'Nerissa Joy', 'Siona', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2007-03-09', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(469, '2410162-2', 'Odog', 'Joanah', 'Cabrera', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-06-10', 'Cagbungalon', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(470, '2410248-2', 'Oja', 'Cris Ann Gaye', 'Larona', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-11-18', 'Utanan', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(471, '2310044-2', 'Oja', 'Khirstine Mae', 'Galo', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-06-19', 'Zaragoza', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(472, '2210130-2', 'Olayvar', 'Erika', 'Lugares', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 13, 2, '2002-05-17', 'Zone I', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(473, '2210241-2', 'Olvina', 'Jayza', 'Dizon', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-11-14', 'Anahao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(474, '2210016-2', 'Omac', 'Flordeliza', 'Ganosa', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-06-16', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(475, '2510166-2', 'Ong', 'Ricamel', 'Pablo', 'F', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 18, 2, '2004-12-10', 'San Miguel', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(476, '2210255-1', 'Ongao', 'Ariel', 'Pitodo', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 18, 4, '2003-05-07', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(477, '2510009-1', 'Operiano', 'Kevin', 'Acero', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-06-19', 'Rizal', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(478, '2510112-2', 'Orias', 'Hannah Mae', 'Simudlan', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-12-09', 'Tautag', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(479, '2210051-2', 'Orit', 'Ella Mae', 'Amen', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2002-09-07', 'Gakat', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(480, '2310152-2', 'Orit', 'Mayrich', 'Balugo', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2003-05-10', 'Western', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(481, '2510127-2', 'Orit', 'Nicole', 'Silos', 'F', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 17, 0, '2004-12-04', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(482, '2510020-2', 'Orosia', 'Daisy', 'Aboyva', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-12-10', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(483, '2510125-2', 'Ortiz', 'Mary Jasmine', 'Torres', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-11-14', 'Mahayahay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(484, '2210208-1', 'Osa', 'Meg Ryan', 'Vertudazo', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2000-09-21', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(485, '2510152-2', 'Pacala', 'Janjie', 'Cawaling', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-01-07', 'Kauswagan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(486, '2210321-2', 'Pacaldo', 'Jennifer', '', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2004-08-24', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(487, '2210220-2', 'Padalapat', 'Jerrel Angel', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 4, '2003-12-01', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(488, '2510004-1', 'Paderes', 'Apollo', 'Balacuit', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-03-15', 'San Pedro (pob.)', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(489, '2210274-2', 'Padon', 'Sheilla Marie', 'Caban', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2001-01-11', 'Lawgawan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(490, '2410096-2', 'Pael', 'Rose Mylin', 'Dizon', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 22, 1, '2006-08-10', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(491, '2410078-1', 'Pagay', 'Jimuel', 'Rosales', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-06-27', 'Caridad Sur', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(492, '2210292-2', 'Pagola', 'Hannah', 'Lasala', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 8, 1, '2003-08-23', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(493, '2410021-1', 'Pagula', 'Aheizer', 'Encluna', 'M', 'BSMB', 'NONE', 'Continuing', '1st Year', 'A', 11, 1, '2006-02-10', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(494, '2210055-2', 'Palen', 'Judith', 'Batiao', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'B', 12, 6, '2003-10-21', 'Iba', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(495, '2210138-2', 'Palen', 'Kimberly', 'Gillio', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2003-10-31', 'Pangi', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(496, '2510076-2', 'Paler', 'Karylle Rome', 'Nilo', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-03-14', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(497, '1910027-1', 'Palero', 'Sherwin Brian', 'Dullano', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 12, 4, '2001-04-30', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(498, '2510070-2', 'Paloguer', 'Marielle', 'Culpa', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-01-11', 'La Purisima Concepcion', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(499, '2110147-1', 'Pamogas', 'John Kenneth', 'Anduyan', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 9, 3, '2003-07-27', 'Santo Niño', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(500, '2210061-2', 'Panal', 'Joan', 'Rodes', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2003-06-16', 'Esperanza', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(501, '2510142-2', 'Panugan', 'Mikylla', 'Ochia', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2004-11-20', 'Santo Rosario', 'Matag-ob', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(502, '2310023-2', 'Paras', 'Chariel Jetta', 'Fuego', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2002-04-25', 'San Roque', 'Pintuyan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(503, '2510092-2', 'Pasculado', 'Rucil', 'Gilo', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-09-11', 'Imelda', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(504, '2310155-1', 'Pattaguan', 'Niño Gian Elliakim', 'Monton', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-01-30', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(505, '2310033-2', 'Payao', 'Cres Angel', 'Valdez', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2003-12-03', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(506, '2210117-2', 'Peña', 'Lea', 'Quisado', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2003-11-24', 'Canlupao', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(507, '2410077-1', 'Pedaria', 'John Peter', 'Gozon', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-03-07', 'San Salvador', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(508, '2210169-1', 'Peligro', 'Mark Steven', 'Barriga', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2004-03-23', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(509, '2510040-2', 'Pelobueno', 'Elgie', 'Malasarte', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-08-02', 'Cawayanan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(510, '2510119-1', 'Pera', 'Lance', 'Ayoste', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-12-11', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(511, '2210183-2', 'Peras', 'Juvy', 'Degorio', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-12-20', 'Kahupian', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(512, '2510137-1', 'Perez', 'Mart Elloyd', 'Pelipog', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-08-06', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(513, '2410208-1', 'Permano', 'Humphrey Godwin', 'Alvero', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2005-02-27', 'Mahayahay', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(514, '2210081-1', 'Peteros', 'Lara Mae', 'Mosquito', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2000-12-06', 'Punta', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(515, '2110266-2', 'Pide', 'Cindy Ann', 'Gamayon', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2002-03-24', 'San Agustin', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(516, '2110309-1', 'Pilo', 'Benjie Mar', 'Bahalia', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2003-08-11', 'Mahayag', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(517, '2510029-2', 'Pintuyan', 'Maria Stella Rose', 'Quiban', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-06-11', 'Molopolo', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(518, '2210153-2', 'Piramede', 'Harold', 'Kilap-kilap', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 17, 4, '2004-02-17', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(519, '2510016-1', 'Pitong', 'Romel', 'Hermogino', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-12-04', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(520, '2210248-2', 'Platero', 'Jhadia', 'Diaz', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-05-10', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(521, '2510110-2', 'Pol', 'Marilyn', 'Buhi', 'F', 'BSFi', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-07-21', 'Bagong Bayan District (pob.)', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(522, '2510082-1', 'Porgarillas, Jr.', 'Eugene', 'Del Valle', 'M', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 13, 2, '2005-07-10', 'Zone Iii (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(523, '2510023-1', 'Portugaliza', 'Joel', 'Capote', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2005-05-23', 'Hilusig', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(524, '2410069-1', 'Queroben', 'Rodel', 'Capal', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2004-12-05', 'Kang-iras', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(525, '2310147-2', 'Quijano', 'Ma. Cristina', 'Looc', 'F', 'BSMB', 'NONE', 'New', '2nd Year', 'B', 18, 5, '2004-12-19', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(526, '2210242-2', 'Quijano', 'Rohan', 'Tidalgo', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-04-26', 'Sabang', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(527, '2410095-1', 'Quileste', 'Cordiro', 'Espinosa', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 3, '2000-10-06', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(528, '2310104-1', 'Quilos', 'Kenzies Dwight David', '', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2004-12-11', 'Poblacion', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(529, '2210114-2', 'Quimpan', 'Grecille', 'Gildo', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-03-11', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(530, '2210230-1', 'Quimson', 'Kenneth', 'Basada', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 14, 3, '2005-09-30', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(531, '2410005-2', 'Rafalle', 'Trixia Mae', 'Flores', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-09-25', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(532, '2210320-2', 'Ragas', 'Jean', 'Diaz', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '1992-10-17', 'Sabang', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(533, '2210027-1', 'Rago', 'Neil Matthew', 'Dumanhug', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-08-29', 'Taliwa', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(534, '2210131-2', 'Rana', 'Jelou', 'Ampong', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 13, 2, '2003-02-18', 'Zone I', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(535, '2310057-2', 'Ranes', 'Shayne', 'Mausisa', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-05-17', 'Dinahugan', 'Padre Burgos', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(536, '2510154-2', 'Raut-Raut', 'Jasmine', 'Reputana', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2004-01-21', 'Benit', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(537, '1910130-1', 'Rebayla', 'John Niño', 'Abanid', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'B', 10, 4, '1997-01-24', 'Zone III', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(538, '2410249-1', 'Rebecca', 'Joshua', '', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-11-18', 'Gakat', 'Baybay City', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(539, '2410007-1', 'Redondo', 'Julian', 'Peligro', 'M', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2006-07-27', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(540, '2510122-2', 'Reducto', 'Catherine', 'Pizon', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-01-07', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(541, '2310082-2', 'Refugio', 'Remafie', 'Mantiza', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '1999-05-10', 'Camang', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(542, '2510081-2', 'Regis', 'Lovely', '-', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-01-05', 'Talisay (pob.)', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(543, '2210086-2', 'Reloz', 'Jamaica', 'Lanutan', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2004-05-23', 'Kanangkaan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(544, '2210087-2', 'Reloz', 'Shiena', 'Buano', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 3, '2003-08-31', 'Kanangkaan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(545, '2410209-2', 'Repaja', 'Kim Erika', 'Villacote', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2006-03-17', 'Lamak', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(546, '2310015-1', 'Reputana', 'Christian Andrew', 'Traya', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-03-09', 'Timba', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(547, '2310046-1', 'Reputana', 'Clent John', 'Jaranta', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2005-08-22', 'Camang', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(548, '2210195-1', 'Requierme', 'Janssen', 'Ballos', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 13, 2, '2003-12-03', 'Libas', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(549, '2510073-1', 'Reyes', 'Novan Ken', 'Empuesto', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2005-11-21', 'San Jose', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(550, '2010297-2', 'Rin', 'Marvelita', 'Ortega', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 14, 1, '2001-04-09', 'Malangza', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(551, '2210313-1', 'Rivera', 'Ralph Emerson', 'Estacio', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-04-11', 'Zone III', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(552, '2410016-1', 'Robles', 'Dave', 'Beltran', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-10-02', 'Maanyag', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(553, '2210157-2', 'Robles', 'Decemae', 'Pulgo', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2002-12-15', 'San Vicente', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(554, '2210227-2', 'Rodes', 'Nikki', 'Hilo', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 12, 3, '2003-09-09', 'Hibagwan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(555, '2410029-2', 'Ronato', 'Kyrelle Jhane', 'Clave', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2004-11-10', 'Pres. Quezon (maugoc)', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(556, '2410124-2', 'Rosal', 'Myline', 'Egido', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-01-21', 'Cabadiangan', 'Maasin City', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(557, '2510108-1', 'Rosales', 'Jethro', 'Gomez', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-04-10', 'Sabang', 'Baybay City', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(558, '2310131-1', 'Ruales', 'Dean Dale', 'Araez', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2005-06-20', 'Tabunok', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(559, '2210305-1', 'Ruales', 'Kenth James', 'Luzon', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-10-20', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(560, '2310025-2', 'Ruales', 'Marrisa', 'Lapasanda', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '1992-10-02', 'Cawayanan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(561, '2210357-2', 'Rubio', 'Queeny Joy', 'Segales', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 18, 0, '2001-01-06', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(562, '2510012-2', 'Rusaban', 'Angiela', 'Salandro', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-09-02', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(563, '2510165-1', 'Rusaban', 'Anjelo', 'Pagola', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2006-12-29', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(564, '2210210-2', 'Saavedra', 'Reca', 'Betua', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2002-12-17', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(565, '2410036-2', 'Saavedra', 'Rouela', 'Bitua', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 14, 3, '2006-04-04', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(566, '2210002-2', 'Sabalo', 'Adela Joyce', '', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2000-06-30', 'Linao', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(567, '2410059-1', 'Sabalo', 'Reynaldo', 'Payac', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 11, 3, '2000-12-07', 'San Isidro', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(568, '2210358-2', 'Sabandal', 'Jenny', 'Binban', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 20, 1, '2004-03-28', 'Tinago', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(569, '2210282-1', 'Sabesaje', 'James', 'Franco', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'C', 10, 3, '2003-05-03', 'Kanangkaan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(570, '2210045-2', 'Sagaysay', 'Marianne Joyce', 'Bolotaulo', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 13, 2, '2004-02-15', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(571, '2110069-1', 'Saguisa', 'Anthony', 'Miano', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 5, 1, '2002-06-16', 'Alegria', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(572, '2510051-2', 'Sajol', 'Jeziel Ann', 'Necosia', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-08-04', 'Mahayahay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(573, '2210014-2', 'Salan', 'Persel Mae', 'Dagondon', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 13, 2, '1995-08-19', 'San Isidro', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(574, '2210026-1', 'Saldivar', 'Oliver', 'Alegre', 'M', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2004-05-09', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(575, '2210158-2', 'Salem', 'Ma. Christelle', 'Duan', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-01-20', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(576, '2210355-2', 'Salizon', 'Jasmine', 'Cabales', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2004-04-14', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(577, '2210218-1', 'Salizon', 'Jhon Reco', 'Maglasang', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2004-01-02', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(578, '2310115-1', 'Saludo', 'Henre Aidenry', 'Escaño', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-11-16', 'Laboon', 'Maasin', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(579, '2210339-2', 'Salva', 'Diana', 'Quarteron', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2004-03-03', 'Candatag', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(580, '2210112-2', 'Salvaleon', 'Jesiel Ann', 'Sacro', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 12, 3, '2002-09-11', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(581, '2510104-2', 'Samaco', 'Judeah Eve', 'Gozon', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2006-10-06', 'Elevado', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(582, '2210030-2', 'Sampinit', 'Gherelyn', 'Siega', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 14, 4, '2003-08-24', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(583, '2510150-2', 'Sampinit', 'Jesryl', 'Siega', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-02-02', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(584, '2510162-2', 'San Jose', 'Jera Mariz', 'Ardimer', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2007-01-24', 'Cagbungalon', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(585, '2210025-2', 'Sanchez', 'Shaira', 'Opelia', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'B', 16, 2, '2004-08-23', 'Kanangkaan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(586, '2510143-2', 'Sancho', 'Zyra', 'Quilla', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'B', 18, 2, '2006-12-12', 'Taa', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(587, '2410234-2', 'Sasing', 'Kyssiah', 'Biore', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-06-20', 'Paku', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(588, '2410158-2', 'Sebari', 'Realyn', 'Tagal', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-10-18', 'Guinsangaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(589, '2410110-1', 'Segovia', 'Robert', 'Vicera', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 2, '2005-03-06', 'Mapgap', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(590, '2410010-2', 'Semblante', 'Kristien', 'Avendula', 'F', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-02-13', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(591, '2310071-2', 'Senajonon', 'Mary Franly', 'Caadyang', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-01-18', 'Pandan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(592, '2210060-2', 'Seno', 'Jiah', 'Anadon', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2003-12-18', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(593, '2410101-2', 'Senoc', 'Arianne Mae', 'Tuyor', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-06-28', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(594, '2310132-2', 'Serdan', 'Angel Mae', 'Ramis', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2004-09-12', 'Mahayahay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(595, '2210375-2', 'Serdan', 'Dhyenna', 'Gozon', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 18, 0, '2004-07-03', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(596, '2510031-2', 'Serdan', 'Meca', 'Ramis', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-05-19', 'Mahayahay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(597, '2510121-2', 'Siaton', 'Zyra', 'Villamor', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-07-17', 'Looc', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(598, '2210239-2', 'Siega', 'Alyssa Blessie', 'Falle', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 13, 4, '2004-08-02', 'Ponong', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(599, '2410165-1', 'Siega', 'Reymart', 'Pitogo', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2003-10-18', 'Waterloo', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(600, '2210312-1', 'Siervo', 'Joseph', 'Deotoy', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-12-14', 'Zone III', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(601, '2510077-1', 'Silvio', 'Algie', 'Malbas', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-07-08', 'Cabulihan', 'Limasawa', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(602, '2410164-1', 'Simpao', 'James Uno', 'Albuen', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2005-04-21', 'Hindag-an', 'Saint Bernard', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(603, '2310137-2', 'Sinco', 'Stella Marie', 'Lilibios', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2005-07-10', 'Santo Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(604, '2510052-1', 'Singson', 'Gerald', 'Baquiran', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-07-05', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(605, '2410132-2', 'Singzon', 'Micaella', 'Gertos', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 16, 2, '2005-07-16', 'Zone III (pob.)', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(606, '2510056-2', 'Siyas', 'Kristine Angel', 'Villanueva', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-01-06', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(607, '1710025-2', 'Sotto', 'Jazer Mae', 'Timosa', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'B', 12, 6, '1998-03-18', 'Maac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(608, '2210275-2', 'Sotto', 'Jerick', 'Timosa', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2001-04-09', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(609, '2410079-2', 'Sueno', 'Chanill Lay', 'Luzon', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-09-27', 'Conalum', 'Inopacan', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(610, '2410193-1', 'Sulinay', 'Jhon Marven', 'Olayvar', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-03-21', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(611, '2410153-2', 'Sulla', 'Alexel', 'Delovio', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2006-02-22', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(612, '2410152-2', 'Sulla', 'Jinky', 'Makilang', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2006-03-30', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(613, '2310080-2', 'Sumaya', 'Anne Rica', 'Gisulga', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-11-14', 'Maujo', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(614, '2410035-1', 'Sumodlayon', 'Joseph', 'Robles', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2005-02-02', 'Talisay', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(615, '2510159-1', 'Supangan', 'Luigie', 'Romano', 'M', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2006-04-27', 'Nahulid', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(616, '2310113-2', 'Supangan', 'Zyra Je', 'Pontod', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2002-08-25', 'Zone V', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(617, '2510141-2', 'Suralta', 'Merry Ann', 'Gerongco', 'F', 'BSA', 'General Science', 'Transferee', '1st Year', 'A', 11, 4, '1991-02-25', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(618, '2210177-2', 'Tabada', 'Kimberly', 'Mangumalas', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 12, 4, '2001-05-26', 'Mac', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(619, '2410067-2', 'Tabada', 'Lotis', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2005-12-27', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(620, '2410202-1', 'Tabis', 'Robert', 'Gimoro', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'B', 18, 5, '2004-10-14', 'Buenavista', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(621, '2410186-2', 'Tablada', 'Marianne Rose', 'Rosil', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2004-10-28', 'Biasong', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(622, '2310144-2', 'Tablada', 'Wendy Ann', 'Basaysay', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 4, '2003-10-25', 'Union', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(623, '2310010-1', 'Tablo', 'Vincent', 'Maglasang', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2003-04-09', 'Imelda', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(624, '2210188-1', 'Tagalog', 'Alzelou', 'Bacolod', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 17, 4, '2003-09-10', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(625, '2010321-1', 'Tagalog', 'Jaylord', 'Bacolod', 'M', 'BAT', 'NONE', 'Continuing', '4th Year', 'A', 8, 0, '2001-02-12', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(626, '2310047-2', 'Tago-on', 'Cristina', 'Aban', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-03-02', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(627, '2410145-2', 'Talamo', 'Jean Ann', '', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2004-10-31', 'Buli', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(628, '2410119-1', 'Talisaysay', 'Berny', 'Salisid', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2004-06-23', 'Hilaan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(629, '2210006-2', 'Talisaysay', 'Christine', 'Bello', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-05-08', 'Candatag', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(630, '2410043-1', 'Tamarion', 'Mark Vincent', 'Madrea', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2004-10-07', 'Bago', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(631, '2210266-1', 'Tambis', 'Jake Laurence', 'Telen', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'C', 10, 2, '2002-08-20', 'Maslog', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(632, '2120002-2', 'Tambis', 'Mariecon', 'Calope', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-12-14', 'Maslog', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(633, '2210323-2', 'Tampus', 'Junna', 'Silot', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2004-10-23', 'Javier', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(634, '2210212-2', 'Tantoy', 'Hecille', 'Tibon', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-08-04', 'San Ramon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(635, '2210097-2', 'Tantoy', 'Rachel Mae', 'Abundo', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'A', 15, 3, '2004-06-05', 'San Pedro', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(636, '2210384-2', 'Taotao', 'Rachalle', 'Espedilla', 'F', 'BSFi', 'NONE', 'Continuing', '4th Year', 'A', 17, 1, '2004-05-14', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(637, '2210258-1', 'Tapasao', 'Nick Ryan', 'Palen', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-06-19', 'Casao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(638, '2510115-2', 'Tavera', 'Therese Marie', 'Guerra', 'F', 'BSMB', 'NONE', 'Transferee', '1st Year', 'B', 15, 2, '2005-10-09', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(639, '2310019-2', 'Telin', 'Ma. Gladys', '', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2001-11-09', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(640, '2210173-1', 'Tello', 'Johsua', 'Ayala', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2003-04-24', 'Taa', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(641, '2210196-2', 'Temario', 'Jessil', 'Tumbiga', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 5, '2000-09-08', 'Catoogan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(642, '2510021-2', 'Tenio', 'Jasmine Belle', 'Lagunay', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-09-25', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(643, '2410004-2', 'Terante', 'Jesel', 'Inso', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2000-06-17', 'Esperanza', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(644, '2310035-1', 'Tereso', 'Junrey', 'Balbon', 'M', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2000-04-14', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(645, '2310105-1', 'Tesado', 'Neil Jhon', 'Quiliste', 'M', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-04-22', 'Milagroso', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(646, '2210204-1', 'Tiempo', 'Alfredo', 'Sajolga', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '2003-08-18', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(647, '2310068-2', 'Timkang', 'Efmarjoy', 'Marte', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2004-03-31', 'Tigbao', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(648, '2210141-1', 'Timkang', 'Jericho', 'Codera', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2004-01-27', 'Tigbao', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(649, '2310011-2', 'Timkang', 'Rey Ann Mae', 'Marte', 'F', 'BSA', 'General Science', 'Continuing', '3rd Year', 'A', 17, 4, '2005-05-12', 'Tigbao', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(650, '2210058-1', 'Timkang', 'Righe', 'Gurra', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 17, 4, '2004-10-21', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(651, '2410093-2', 'Tindugan', 'Kris Angel', 'Libres', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 19, 3, '2006-04-29', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(652, '2210144-2', 'Tomaub', 'Allysa', 'Montogon', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-02-24', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(653, '2510079-2', 'Tomimbo', 'Shiela', 'Reyes', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2007-01-26', 'Concepcion', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(654, '2410062-2', 'Tomon', 'Danessa', 'Glario', 'F', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'A', 16, 4, '2006-08-05', 'Mabicay', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(655, '2210156-2', 'Tomon', 'Jessica', 'Carbonilla', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 15, 3, '1999-04-29', 'Union', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(656, '2210159-2', 'Tomon', 'Ruby', 'C.', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'B', 15, 3, '2001-03-22', 'Union', 'Mahaplag', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(657, '2510035-2', 'Tongcua', 'Ariane Mae', 'Lapay', 'F', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-10-10', 'Bontoc', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43');
INSERT INTO `students` (`id`, `StudentNo`, `Surname`, `FirstName`, `MiddleName`, `Sex`, `Course`, `Major`, `Status`, `Year`, `Section`, `Lec`, `Lab`, `BirthDate`, `Barangay`, `Municipality`, `Province`, `email`, `phone`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(658, '2210249-1', 'Torremonia', 'Erwin', 'Patayan', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 15, 4, '1998-04-01', 'Divisoria', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(659, '2410003-2', 'Traboc', 'Caren', 'Sabalbarino', 'F', 'BSA', 'General Science', 'Continuing', '2nd Year', 'A', 20, 3, '2005-02-15', 'Tuguipa', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(660, '2410049-1', 'Trajano', 'Jemar', 'Sala', 'M', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 17, 2, '2004-02-19', 'Taytagan', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(661, '2210262-1', 'Trimucha', 'Christian', 'Cortel', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 11, 4, '2001-09-20', 'Bogo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(662, '2010028-1', 'Trimucha', 'Ronel', 'Gohil', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2000-05-27', 'Sto. Niño', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(663, '2510030-1', 'Tulaytay', 'Brian', 'Pepe', 'M', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2003-02-07', 'Kauswagan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(664, '2510001-1', 'Tumadlas', 'Rashied', 'Jualo', 'M', 'BSA', 'General Science', 'New', '1st Year', 'A', 16, 4, '2007-06-04', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(665, '2310041-2', 'Tumanda', 'Jea Flor', '', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2000-11-01', 'Canlupao', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(666, '2310060-1', 'Tumanda', 'Jonh Rogiel', 'Mades', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2004-12-29', 'Pinut-an', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(667, '2210018-2', 'Tutor', 'Kayla Marie', 'Timblaco', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2003-10-01', 'Catmon', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(668, '2510013-2', 'Tutor', 'Rojela Mae', 'Reviso', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'A', 18, 2, '2006-12-01', 'Bunga', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(669, '2510033-2', 'Umapas', 'Daina', 'Ligaton', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-06-22', 'Malinao', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(670, '2210001-2', 'Vallente', 'Cristine Joy', 'Derecho', 'F', 'BSA', 'General Science', 'Continuing', '4th Year', 'A', 16, 2, '2004-05-29', 'Guadalupe', 'Macrohon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(671, '2510065-2', 'Vanzuela', 'Anjelica', 'Panisan', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2006-11-07', 'Cahagnaan', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(672, '2410172-1', 'Vanzuela', 'Klaire', 'De Jesus', 'M', 'BSInfoTech', 'Programming', 'Continuing', '2nd Year', 'B', 16, 4, '2006-06-06', 'Olisihan', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(673, '2510057-2', 'Varon', 'Mardie', 'Viros', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-06-26', 'Casao', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(674, '2210059-1', 'Vecina', 'John Mark', 'Nilo', 'M', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 15, 4, '2003-11-16', 'Hinapo', 'Tomas Oppus', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(675, '2210233-2', 'Verano', 'Marielle', 'Medalle', 'F', 'BSInfoTech', 'Programming', 'Continuing', '4th Year', 'C', 20, 4, '2003-08-07', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(676, '2110219-1', 'Vertudazo', 'Jimuel', 'Ortojan', 'M', 'BSMB', 'NONE', 'Continuing', '4th Year', 'B', 12, 3, '2002-08-17', 'Nahaong', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(677, '2210155-2', 'Vertudazo', 'Xcyl Rose', 'Soriben', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2004-06-01', 'Juangon', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(678, '2510155-2', 'Vibas', 'Joana', 'Cabal', 'F', 'BSInfoTech', 'Programming', 'New', '1st Year', 'B', 18, 2, '2005-06-24', 'Doos Del Norte', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(679, '2310053-2', 'Vienes', 'Joanne', 'Dugos', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'A', 12, 6, '2004-08-10', 'Poblacion', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(680, '2310008-2', 'Vilbar', 'Leanne Krista', 'Maglasang', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2005-07-11', 'Manaul', 'Hilongos', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(681, '2410075-2', 'Vilbar', 'Venice Maya', 'Siega', 'F', 'BSMB', 'NONE', 'Continuing', '2nd Year', 'A', 18, 5, '2006-05-04', 'San Isidro (pob.)', 'Matalom', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(682, '2210371-1', 'Villacin', 'Rafael Ted', 'Lupaz', 'M', 'BSFi', 'NONE', 'Continuing', '4th Year', 'B', 17, 1, '2002-07-10', 'Tabugon', 'Liloan', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(683, '2210303-2', 'Villamor', 'Alexa Maui', 'Capin', 'F', 'BSMB', 'NONE', 'Continuing', '3rd Year', 'B', 12, 4, '2003-09-05', 'Timba', 'San Ricardo', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(684, '2110230-2', 'Villarosa', 'Jastine', '', 'F', 'BSMB', 'NONE', 'Continuing', '4th Year', 'A', 15, 4, '2002-09-19', 'IBA', 'Malitbog', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(685, '2510128-2', 'Vinculado', 'Jelian', 'Datig', 'F', 'BSMB', 'NONE', 'New', '1st Year', 'A', 18, 2, '2007-05-14', 'Poblacion 2', 'Hindang', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(686, '2410251-1', 'Vinculado', 'Mark Joshua', 'Acdal', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'B', 25, 1, '2006-10-09', 'Osmeña', 'Bato', 'Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(687, '2310028-2', 'Viure', 'Karyl', 'Garvez', 'F', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'A', 17, 4, '2003-11-01', 'Gakat', 'Libagon', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(688, '2410141-1', 'Vocal', 'Jomar', 'Godez', 'M', 'BSFi', 'NONE', 'Continuing', '2nd Year', 'A', 25, 1, '2004-04-04', 'Tampoong', 'Sogod', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43'),
(689, '2310150-1', 'Yecyec', 'John Mark', 'Epis', 'M', 'BSInfoTech', 'Programming', 'Continuing', '3rd Year', 'B', 17, 4, '2005-07-10', 'Santa Cruz', 'Bontoc', 'Southern Leyte', '', '', NULL, 1, '2025-09-06 16:13:43', '2025-09-06 16:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `students_backup`
--

CREATE TABLE `students_backup` (
  `id` int NOT NULL DEFAULT '0',
  `student_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_backup`
--

INSERT INTO `students_backup` (`id`, `student_number`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `address`, `birth_date`, `gender`, `course`, `year_level`, `status`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'student001', 'John', NULL, 'Doe', 'john.doe@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(2, 'student002', 'Jane', NULL, 'Smith', 'jane.smith@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(3, 'student003', 'Mike', NULL, 'Johnson', 'mike.johnson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(4, 'student004', 'Sarah', NULL, 'Wilson', 'sarah.wilson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(5, 'student005', 'David', NULL, 'Brown', 'david.brown@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(6, 'student006', 'Lisa', NULL, 'Davis', 'lisa.davis@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(7, 'student007', 'Tom', NULL, 'Miller', 'tom.miller@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(8, 'student008', 'Amy', NULL, 'Garcia', 'amy.garcia@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(9, 'student009', 'Chris', NULL, 'Martinez', 'chris.martinez@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(10, 'student010', 'Emma', NULL, 'Anderson', 'emma.anderson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `students_backup_old`
--

CREATE TABLE `students_backup_old` (
  `id` int NOT NULL DEFAULT '0',
  `StudentNo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Middle Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `Birth Date` date DEFAULT NULL,
  `Barangay` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Municipality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Major` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` enum('Active','Inactive','Graduated','Dropped') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_backup_old`
--

INSERT INTO `students_backup_old` (`id`, `StudentNo`, `First Name`, `Middle Name`, `Surname`, `email`, `phone`, `address`, `Birth Date`, `Barangay`, `Municipality`, `Province`, `gender`, `course`, `Major`, `year_level`, `Status`, `profile_picture`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'student001', 'John', NULL, 'Doe', 'john.doe@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(2, 'student002', 'Jane', NULL, 'Smith', 'jane.smith@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(3, 'student003', 'Mike', NULL, 'Johnson', 'mike.johnson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(4, 'student004', 'Sarah', NULL, 'Wilson', 'sarah.wilson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(5, 'student005', 'David', NULL, 'Brown', 'david.brown@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(6, 'student006', 'Lisa', NULL, 'Davis', 'lisa.davis@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(7, 'student007', 'Tom', NULL, 'Miller', 'tom.miller@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(8, 'student008', 'Amy', NULL, 'Garcia', 'amy.garcia@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(9, 'student009', 'Chris', NULL, 'Martinez', 'chris.martinez@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22'),
(10, 'student010', 'Emma', NULL, 'Anderson', 'emma.anderson@student.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 1, '2025-09-06 07:03:59', '2025-09-06 15:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_devices`
--

CREATE TABLE `student_devices` (
  `id` int NOT NULL,
  `StudentNo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('laptop','desktop','mobile','tablet','other') COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `operating_system` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac_address` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `screen_resolution` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_latitude` decimal(10,8) DEFAULT NULL,
  `location_longitude` decimal(11,8) DEFAULT NULL,
  `location_address` text COLLATE utf8mb4_unicode_ci,
  `network_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection_speed` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_seen` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_seen` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `trust_level` enum('trusted','unknown','suspicious') COLLATE utf8mb4_unicode_ci DEFAULT 'unknown',
  `notes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_devices`
--

INSERT INTO `student_devices` (`id`, `StudentNo`, `device_id`, `device_name`, `device_type`, `operating_system`, `browser_name`, `browser_version`, `ip_address`, `mac_address`, `user_agent`, `screen_resolution`, `timezone`, `location_latitude`, `location_longitude`, `location_address`, `network_type`, `connection_speed`, `first_seen`, `last_seen`, `is_active`, `trust_level`, `notes`) VALUES
(1, '2410222-2', '4a239914a8b7190ae86ea28d212458f1', 'Windows Computer', 'desktop', 'Windows 10', 'Firefox', '143.0', '127.0.0.1', 'F8-54-F6-BB-95-3E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', NULL, 'UTC', '10.30990000', '123.89300000', NULL, NULL, NULL, '2025-09-18 05:03:08', '2025-09-18 05:34:07', 1, 'unknown', NULL),
(2, '2210222-2', '7c7932fb8ce7219f2378f343708f890f', 'Linux Computer', 'mobile', 'Linux', 'Chrome', '140.0.0.0', '192.168.127.31', '00:1B:44:A8:7F:1F', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', NULL, 'UTC', NULL, NULL, NULL, NULL, NULL, '2025-09-18 05:09:22', '2025-09-18 05:34:40', 1, 'unknown', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `id` int NOT NULL,
  `student_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `component_id` int NOT NULL,
  `score` decimal(5,2) DEFAULT '0.00',
  `max_score` decimal(5,2) DEFAULT '100.00',
  `percentage` decimal(5,2) DEFAULT '0.00',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `graded_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_import_logs`
--

CREATE TABLE `student_import_logs` (
  `id` int NOT NULL,
  `imported_by` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rows` int NOT NULL,
  `successful_imports` int NOT NULL DEFAULT '0',
  `failed_imports` int NOT NULL DEFAULT '0',
  `import_errors` text COLLATE utf8mb4_unicode_ci,
  `import_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_import_logs`
--

INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(1, 1, 'student_import_template.csv', 707, 0, 707, '[\"Row 1: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 2: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 3: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 4: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 5: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 6: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 7: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 8: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 9: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 10: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 11: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 12: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 13: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 14: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 15: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 16: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 17: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 18: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 19: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 20: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 21: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 22: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 23: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 24: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 25: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 26: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 27: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 28: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 29: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 30: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 31: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 32: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 33: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 34: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 35: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 36: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 37: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 38: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 39: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 40: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 41: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 42: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 43: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 44: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 45: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 46: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 47: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 48: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 49: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 50: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 51: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 52: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 53: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 54: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 55: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 56: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 57: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 58: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 59: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 60: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 61: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 62: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 63: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 64: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 65: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 66: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 67: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 68: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 69: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 70: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 71: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 72: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 73: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 74: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 75: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 76: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 77: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 78: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 79: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 80: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 81: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 82: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 83: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 84: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 85: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 86: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 87: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 88: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 89: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 90: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 91: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 92: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 93: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 94: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 95: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 96: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 97: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 98: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 99: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 100: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 101: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 102: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 103: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 104: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 105: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 106: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 107: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 108: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 109: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 110: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 111: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 112: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 113: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 114: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 115: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 116: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 117: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 118: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 119: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 120: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 121: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 122: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 123: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 124: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 125: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 126: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 127: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 128: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 129: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 130: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 131: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 132: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 133: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 134: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 135: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 136: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 137: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 138: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 139: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 140: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 141: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 142: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 143: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 144: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 145: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 146: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 147: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 148: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 149: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 150: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 151: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 152: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 153: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 154: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 155: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 156: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 157: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 158: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 159: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 160: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 161: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 162: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 163: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 164: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 165: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 166: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 167: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 168: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 169: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 170: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 171: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 172: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 173: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 174: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 175: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 176: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 177: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 178: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 179: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 180: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 181: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 182: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 183: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 184: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 185: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 186: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 187: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 188: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 189: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 190: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 191: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 192: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 193: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 194: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 195: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 196: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 197: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 198: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 199: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 200: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 201: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 202: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 203: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 204: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 205: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 206: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 207: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 208: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 209: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 210: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 211: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 212: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 213: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 214: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 215: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 216: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 217: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 218: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 219: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 220: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 221: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 222: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 223: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 224: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 225: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 226: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 227: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 228: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 229: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 230: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 231: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 232: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 233: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 234: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 235: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 236: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 237: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 238: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 239: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 240: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 241: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 242: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 243: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 244: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 245: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 246: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 247: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 248: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 249: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 250: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 251: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 252: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 253: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 254: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 255: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 256: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 257: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 258: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 259: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 260: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 261: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 262: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 263: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 264: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 265: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 266: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 267: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 268: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 269: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 270: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 271: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 272: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 273: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 274: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 275: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 276: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 277: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 278: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 279: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 280: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 281: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 282: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 283: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 284: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 285: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 286: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 287: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 288: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 289: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 290: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 291: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 292: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 293: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 294: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 295: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 296: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 297: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 298: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 299: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 300: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 301: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 302: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 303: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 304: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 305: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 306: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 307: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 308: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 309: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 310: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 311: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 312: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 313: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 314: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 315: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 316: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 317: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 318: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 319: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 320: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 321: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 322: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 323: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 324: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 325: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 326: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 327: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 328: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 329: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 330: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 331: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 332: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 333: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 334: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 335: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 336: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 337: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 338: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 339: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 340: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 341: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 342: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 343: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 344: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 345: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 346: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 347: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 348: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 349: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 350: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 351: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 352: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 353: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 354: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 355: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 356: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 357: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 358: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 359: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 360: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 361: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 362: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 363: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 364: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 365: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 366: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 367: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 368: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 369: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 370: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 371: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 372: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 373: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 374: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 375: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 376: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 377: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 378: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 379: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 380: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 381: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 382: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 383: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 384: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 385: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 386: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 387: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 388: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 389: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 390: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 391: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 392: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 393: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 394: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 395: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 396: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 397: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 398: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 399: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 400: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 401: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 402: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 403: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 404: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 405: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 406: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 407: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 408: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 409: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 410: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 411: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 412: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 413: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 414: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 415: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 416: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 417: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 418: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 419: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 420: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 421: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 422: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 423: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 424: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 425: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 426: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 427: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 428: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 429: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 430: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 431: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 432: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 433: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 434: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 435: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 436: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 437: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 438: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 439: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 440: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 441: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 442: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 443: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 444: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 445: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 446: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 447: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 448: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 449: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 450: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 451: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 452: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 453: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 454: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 455: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 456: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 457: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 458: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 459: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 460: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 461: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 462: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 463: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 464: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 465: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 466: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 467: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 468: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 469: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 470: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 471: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 472: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 473: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 474: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 475: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 476: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 477: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 478: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 479: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 480: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 481: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 482: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 483: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 484: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 485: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 486: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 487: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 488: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 489: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 490: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 491: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 492: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 493: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 494: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 495: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 496: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 497: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 498: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 499: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 500: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 501: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 502: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 503: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 504: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 505: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 506: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 507: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 508: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 509: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 510: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 511: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 512: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 513: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 514: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 515: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 516: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 517: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 518: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 519: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 520: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 521: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 522: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 523: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 524: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 525: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 526: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 527: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 528: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 529: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 530: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 531: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 532: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 533: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 534: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 535: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 536: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 537: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 538: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 539: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 540: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 541: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 542: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 543: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 544: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 545: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 546: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 547: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 548: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 549: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 550: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 551: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 552: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 553: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 554: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 555: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 556: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 557: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 558: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 559: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 560: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 561: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 562: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 563: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 564: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 565: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 566: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 567: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 568: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 569: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 570: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 571: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 572: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 573: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 574: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 575: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 576: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 577: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 578: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 579: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 580: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 581: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 582: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 583: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 584: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 585: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 586: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 587: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 588: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 589: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 590: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 591: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 592: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 593: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 594: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 595: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 596: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 597: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 598: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 599: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 600: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 601: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 602: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 603: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 604: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 605: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 606: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 607: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 608: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 609: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 610: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 611: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 612: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 613: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 614: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 615: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 616: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 617: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 618: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 619: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 620: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 621: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 622: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 623: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 624: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 625: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 626: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 627: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 628: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 629: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 630: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 631: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 632: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 633: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 634: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 635: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 636: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 637: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 638: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 639: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 640: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 641: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 642: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 643: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 644: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 645: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 646: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 647: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 648: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 649: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 650: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 651: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 652: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 653: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 654: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 655: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 656: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 657: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 658: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 659: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 660: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 661: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 662: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 663: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 664: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 665: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 666: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 667: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 668: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 669: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 670: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 671: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 672: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 673: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 674: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 675: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 676: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 677: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 678: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 679: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 680: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 681: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 682: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 683: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 684: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 685: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 686: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 687: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 688: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 689: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 690: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 691: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 692: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 693: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 694: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 695: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 696: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 697: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 698: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 699: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 700: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 701: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 702: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 703: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 704: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 705: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 706: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 707: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\"]', '2025-09-06 15:58:31');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(2, 1, 'student_import_template.csv', 707, 0, 707, '[\"Row 1: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 2: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 3: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 4: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 5: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 6: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 7: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 8: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 9: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 10: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 11: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 12: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 13: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 14: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 15: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 16: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 17: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 18: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 19: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 20: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 21: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 22: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 23: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 24: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 25: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 26: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 27: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 28: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 29: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 30: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 31: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 32: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 33: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 34: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 35: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 36: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 37: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 38: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 39: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 40: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 41: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 42: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 43: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 44: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 45: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 46: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 47: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 48: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 49: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 50: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 51: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 52: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 53: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 54: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 55: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 56: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 57: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 58: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 59: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 60: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 61: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 62: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 63: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 64: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 65: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 66: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 67: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 68: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 69: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 70: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 71: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 72: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 73: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 74: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 75: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 76: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 77: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 78: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 79: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 80: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 81: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 82: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 83: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 84: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 85: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 86: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 87: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 88: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 89: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 90: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 91: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 92: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 93: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 94: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 95: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 96: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 97: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 98: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 99: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 100: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 101: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 102: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 103: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 104: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 105: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 106: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 107: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 108: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 109: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 110: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 111: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 112: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 113: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 114: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 115: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 116: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 117: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 118: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 119: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 120: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 121: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 122: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 123: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 124: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 125: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 126: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 127: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 128: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 129: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 130: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 131: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 132: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 133: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 134: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 135: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 136: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 137: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 138: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 139: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 140: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 141: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 142: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 143: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 144: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 145: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 146: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 147: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 148: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 149: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 150: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 151: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 152: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 153: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 154: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 155: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 156: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 157: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 158: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 159: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 160: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 161: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 162: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 163: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 164: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 165: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 166: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 167: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 168: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 169: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 170: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 171: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 172: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 173: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 174: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 175: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 176: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 177: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 178: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 179: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 180: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 181: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 182: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 183: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 184: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 185: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 186: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 187: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 188: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 189: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 190: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 191: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 192: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 193: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 194: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 195: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 196: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 197: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 198: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 199: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 200: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 201: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 202: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 203: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 204: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 205: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 206: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 207: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 208: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 209: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 210: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 211: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 212: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 213: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 214: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 215: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 216: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 217: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 218: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 219: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 220: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 221: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 222: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 223: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 224: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 225: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 226: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 227: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 228: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 229: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 230: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 231: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 232: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 233: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 234: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 235: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 236: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 237: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 238: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 239: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 240: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 241: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 242: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 243: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 244: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 245: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 246: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 247: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 248: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 249: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 250: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 251: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 252: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 253: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 254: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 255: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 256: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 257: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 258: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 259: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 260: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 261: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 262: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 263: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 264: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 265: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 266: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 267: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 268: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 269: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 270: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 271: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 272: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 273: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 274: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 275: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 276: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 277: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 278: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 279: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 280: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 281: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 282: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 283: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 284: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 285: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 286: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 287: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 288: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 289: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 290: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 291: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 292: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 293: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 294: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 295: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 296: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 297: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 298: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 299: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 300: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 301: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 302: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 303: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 304: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 305: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 306: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 307: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 308: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 309: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 310: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 311: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 312: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 313: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 314: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 315: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 316: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 317: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 318: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 319: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 320: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 321: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 322: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 323: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 324: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 325: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 326: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 327: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 328: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 329: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 330: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 331: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 332: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 333: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 334: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 335: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 336: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 337: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 338: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 339: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 340: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 341: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 342: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 343: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 344: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 345: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 346: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 347: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 348: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 349: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 350: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 351: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 352: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 353: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 354: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 355: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 356: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 357: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 358: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 359: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 360: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 361: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 362: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 363: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 364: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 365: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 366: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 367: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 368: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 369: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 370: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 371: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 372: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 373: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 374: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 375: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 376: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 377: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 378: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 379: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 380: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 381: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 382: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 383: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 384: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 385: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 386: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 387: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 388: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 389: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 390: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 391: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 392: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 393: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 394: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 395: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 396: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 397: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 398: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 399: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 400: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 401: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 402: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 403: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 404: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 405: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 406: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 407: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 408: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 409: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 410: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 411: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 412: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 413: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 414: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 415: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 416: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 417: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 418: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 419: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 420: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 421: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 422: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 423: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 424: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 425: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 426: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 427: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 428: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 429: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 430: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 431: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 432: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 433: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 434: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 435: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 436: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 437: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 438: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 439: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 440: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 441: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 442: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 443: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 444: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 445: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 446: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 447: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 448: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 449: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 450: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 451: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 452: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 453: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 454: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 455: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 456: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 457: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 458: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 459: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 460: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 461: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 462: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 463: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 464: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 465: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 466: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 467: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 468: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 469: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 470: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 471: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 472: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 473: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 474: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 475: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 476: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 477: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 478: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 479: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 480: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 481: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 482: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 483: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 484: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 485: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 486: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 487: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 488: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 489: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 490: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 491: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 492: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 493: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 494: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 495: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 496: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 497: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 498: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 499: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 500: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 501: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 502: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 503: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 504: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 505: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 506: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 507: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 508: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 509: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 510: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 511: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 512: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 513: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 514: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 515: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 516: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 517: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 518: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 519: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 520: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 521: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 522: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 523: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 524: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 525: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 526: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 527: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 528: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 529: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 530: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 531: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 532: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 533: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 534: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 535: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 536: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 537: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 538: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 539: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 540: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 541: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 542: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 543: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 544: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 545: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 546: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 547: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 548: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 549: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 550: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 551: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 552: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 553: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 554: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 555: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 556: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 557: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 558: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 559: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 560: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 561: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 562: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 563: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 564: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 565: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 566: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 567: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 568: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 569: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 570: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 571: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 572: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 573: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 574: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 575: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 576: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 577: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 578: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 579: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 580: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 581: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 582: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 583: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 584: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 585: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 586: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 587: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 588: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 589: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 590: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 591: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 592: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 593: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 594: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 595: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 596: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 597: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 598: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 599: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 600: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 601: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 602: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 603: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 604: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 605: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 606: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 607: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 608: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 609: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 610: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 611: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 612: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 613: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 614: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 615: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 616: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 617: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 618: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 619: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 620: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 621: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 622: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 623: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 624: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 625: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 626: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 627: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 628: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 629: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 630: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 631: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 632: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 633: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 634: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 635: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 636: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 637: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 638: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 639: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 640: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 641: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 642: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 643: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 644: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 645: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 646: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 647: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 648: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 649: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 650: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 651: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 652: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 653: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 654: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 655: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 656: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 657: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 658: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 659: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 660: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 661: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 662: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 663: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 664: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 665: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 666: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 667: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 668: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 669: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 670: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 671: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 672: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 673: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 674: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 675: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 676: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 677: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 678: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 679: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 680: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 681: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 682: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 683: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 684: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 685: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 686: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 687: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 688: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 689: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 690: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 691: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 692: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 693: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 694: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 695: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 696: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 697: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 698: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 699: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 700: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 701: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 702: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 703: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 704: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 705: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 706: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\",\"Row 707: Missing required fields (StudentNo, Surname, FirstName, Sex, Course, Year)\"]', '2025-09-06 15:59:41');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(3, 1, 'student_import_template.csv', 707, 0, 707, '[\"Row 1: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 2: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 3: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 4: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 5: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 6: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 7: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 8: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 9: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 10: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 11: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 12: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 13: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 14: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 15: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 16: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 17: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 18: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 19: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 20: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 21: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 22: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 23: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 24: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 25: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 26: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 27: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 28: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 29: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 30: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 31: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 32: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 33: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 34: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 35: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 36: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 37: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 38: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 39: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 40: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 41: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 42: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 43: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 44: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 45: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 46: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 47: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 48: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 49: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 50: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 51: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 52: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 53: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 54: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 55: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 56: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 57: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 58: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 59: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 60: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 61: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 62: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 63: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 64: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 65: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 66: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 67: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 68: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 69: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 70: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 71: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 72: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 73: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 74: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 75: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 76: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 77: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 78: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 79: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 80: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 81: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 82: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 83: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 84: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 85: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 86: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 87: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 88: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 89: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 90: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 91: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 92: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 93: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 94: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 95: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 96: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 97: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 98: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 99: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 100: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 101: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 102: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 103: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 104: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 105: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 106: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 107: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 108: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 109: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 110: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 111: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 112: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 113: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 114: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 115: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 116: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 117: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 118: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 119: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 120: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 121: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 122: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 123: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 124: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 125: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 126: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 127: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 128: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 129: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 130: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 131: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 132: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 133: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 134: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 135: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 136: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 137: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 138: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 139: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 140: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 141: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 142: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 143: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 144: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 145: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 146: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 147: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 148: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 149: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 150: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 151: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 152: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 153: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 154: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 155: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 156: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 157: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 158: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 159: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 160: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 161: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 162: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 163: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 164: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 165: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 166: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 167: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 168: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 169: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 170: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 171: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 172: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 173: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 174: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 175: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 176: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 177: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 178: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 179: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 180: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 181: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 182: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 183: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 184: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 185: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 186: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 187: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 188: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 189: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 190: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 191: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 192: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 193: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 194: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 195: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 196: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 197: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 198: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 199: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 200: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 201: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 202: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 203: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 204: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 205: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 206: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 207: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 208: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 209: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 210: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 211: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 212: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 213: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 214: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 215: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 216: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 217: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 218: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 219: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 220: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 221: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 222: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 223: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 224: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 225: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 226: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 227: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 228: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 229: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 230: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 231: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 232: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 233: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 234: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 235: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 236: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 237: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 238: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 239: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 240: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 241: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 242: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 243: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 244: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 245: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 246: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 247: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 248: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 249: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 250: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 251: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 252: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 253: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 254: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 255: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 256: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 257: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 258: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 259: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 260: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 261: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 262: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 263: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 264: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 265: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 266: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 267: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 268: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 269: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 270: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 271: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 272: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 273: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 274: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 275: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 276: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 277: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 278: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 279: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 280: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 281: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 282: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 283: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 284: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 285: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 286: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 287: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 288: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 289: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 290: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 291: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 292: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 293: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 294: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 295: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 296: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 297: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 298: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 299: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 300: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 301: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 302: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 303: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 304: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 305: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 306: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 307: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 308: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 309: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 310: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 311: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 312: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 313: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 314: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 315: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 316: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 317: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 318: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 319: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 320: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 321: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 322: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 323: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 324: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 325: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 326: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 327: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 328: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 329: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 330: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 331: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 332: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 333: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 334: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 335: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 336: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 337: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 338: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 339: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 340: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 341: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 342: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 343: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 344: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 345: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 346: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 347: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 348: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 349: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 350: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 351: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 352: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 353: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 354: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 355: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 356: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 357: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 358: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 359: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 360: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 361: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 362: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 363: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 364: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 365: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 366: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 367: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 368: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 369: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 370: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 371: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 372: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 373: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 374: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 375: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 376: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 377: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 378: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 379: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 380: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 381: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 382: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 383: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 384: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 385: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 386: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 387: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 388: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 389: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 390: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 391: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 392: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 393: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 394: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 395: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 396: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 397: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 398: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 399: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 400: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 401: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 402: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 403: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 404: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 405: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 406: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 407: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 408: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 409: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 410: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 411: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 412: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 413: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 414: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 415: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 416: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 417: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 418: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 419: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 420: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 421: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 422: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 423: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 424: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 425: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 426: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 427: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 428: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 429: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 430: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 431: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 432: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 433: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 434: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 435: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 436: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 437: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 438: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 439: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 440: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 441: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 442: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 443: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 444: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 445: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 446: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 447: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 448: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 449: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 450: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 451: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 452: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 453: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 454: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 455: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 456: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 457: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 458: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 459: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 460: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 461: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 462: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 463: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 464: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 465: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 466: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 467: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 468: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 469: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 470: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 471: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 472: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 473: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 474: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 475: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 476: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 477: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 478: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 479: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 480: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 481: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 482: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 483: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 484: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 485: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 486: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 487: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 488: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 489: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 490: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 491: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 492: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 493: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 494: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 495: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 496: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 497: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 498: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 499: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 500: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 501: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 502: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 503: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 504: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 505: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 506: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 507: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 508: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 509: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 510: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 511: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 512: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 513: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 514: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 515: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 516: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 517: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 518: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 519: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 520: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 521: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 522: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 523: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 524: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 525: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 526: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 527: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 528: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 529: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 530: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 531: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 532: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 533: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 534: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 535: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 536: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 537: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 538: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 539: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 540: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 541: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 542: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 543: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 544: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 545: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 546: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 547: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 548: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 549: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 550: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 551: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 552: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 553: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 554: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 555: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 556: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 557: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 558: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 559: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 560: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 561: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 562: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 563: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 564: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 565: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 566: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 567: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 568: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 569: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 570: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 571: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 572: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 573: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 574: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 575: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 576: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 577: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 578: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 579: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 580: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 581: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 582: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 583: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 584: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 585: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 586: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 587: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 588: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 589: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 590: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 591: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 592: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 593: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 594: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 595: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 596: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 597: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 598: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 599: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 600: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 601: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 602: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 603: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 604: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 605: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 606: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 607: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 608: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 609: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 610: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 611: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 612: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 613: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 614: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 615: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 616: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 617: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 618: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 619: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 620: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 621: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 622: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 623: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 624: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 625: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 626: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 627: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 628: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 629: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 630: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 631: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 632: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 633: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 634: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 635: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 636: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 637: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 638: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 639: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 640: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 641: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 642: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 643: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 644: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 645: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 646: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 647: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 648: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 649: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 650: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 651: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 652: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 653: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 654: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 655: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 656: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 657: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 658: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 659: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 660: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 661: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 662: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 663: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 664: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 665: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 666: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 667: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 668: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 669: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 670: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 671: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 672: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 673: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 674: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 675: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 676: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 677: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 678: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 679: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 680: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 681: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 682: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 683: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 684: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 685: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 686: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 687: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 688: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 689: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 690: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 691: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 692: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 693: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 694: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 695: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 696: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 697: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 698: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 699: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 700: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 701: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 702: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 703: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 704: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 705: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 706: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 707: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\"]', '2025-09-06 16:02:55');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(4, 1, 'student_import_template(1).csv', 707, 0, 707, '[\"Row 1: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 2: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 3: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 4: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 5: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 6: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 7: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 8: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 9: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 10: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 11: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 12: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 13: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 14: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 15: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 16: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 17: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 18: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 19: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 20: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 21: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 22: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 23: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 24: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 25: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 26: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 27: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 28: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 29: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 30: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 31: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 32: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 33: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 34: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 35: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 36: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 37: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 38: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 39: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 40: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 41: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 42: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 43: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 44: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 45: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 46: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 47: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 48: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 49: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 50: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 51: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 52: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 53: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 54: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 55: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 56: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 57: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 58: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 59: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 60: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 61: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 62: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 63: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 64: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 65: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 66: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 67: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 68: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 69: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 70: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 71: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 72: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 73: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 74: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 75: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 76: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 77: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 78: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 79: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 80: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 81: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 82: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 83: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 84: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 85: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 86: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 87: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 88: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 89: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 90: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 91: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 92: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 93: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 94: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 95: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 96: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 97: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 98: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 99: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 100: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 101: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 102: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 103: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 104: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 105: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 106: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 107: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 108: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 109: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 110: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 111: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 112: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 113: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 114: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 115: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 116: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 117: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 118: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 119: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 120: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 121: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 122: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 123: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 124: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 125: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 126: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 127: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 128: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 129: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 130: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 131: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 132: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 133: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 134: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 135: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 136: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 137: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 138: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 139: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 140: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 141: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 142: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 143: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 144: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 145: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 146: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 147: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 148: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 149: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 150: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 151: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 152: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 153: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 154: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 155: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 156: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 157: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 158: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 159: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 160: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 161: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 162: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 163: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 164: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 165: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 166: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 167: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 168: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 169: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 170: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 171: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 172: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 173: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 174: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 175: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 176: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 177: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 178: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 179: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 180: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 181: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 182: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 183: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 184: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 185: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 186: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 187: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 188: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 189: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 190: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 191: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 192: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 193: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 194: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 195: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 196: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 197: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 198: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 199: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 200: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 201: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 202: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 203: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 204: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 205: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 206: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 207: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 208: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 209: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 210: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 211: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 212: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 213: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 214: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 215: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 216: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 217: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 218: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 219: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 220: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 221: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 222: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 223: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 224: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 225: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 226: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 227: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 228: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 229: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 230: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 231: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 232: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 233: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 234: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 235: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 236: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 237: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 238: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 239: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 240: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 241: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 242: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 243: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 244: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 245: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 246: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 247: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 248: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 249: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 250: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 251: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 252: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 253: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 254: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 255: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 256: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 257: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 258: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 259: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 260: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 261: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 262: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 263: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 264: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 265: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 266: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 267: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 268: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 269: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 270: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 271: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 272: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 273: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 274: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 275: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 276: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 277: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 278: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 279: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 280: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 281: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 282: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 283: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 284: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 285: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 286: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 287: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 288: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 289: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 290: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 291: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 292: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 293: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 294: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 295: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 296: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 297: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 298: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 299: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 300: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 301: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 302: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 303: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 304: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 305: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 306: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 307: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 308: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 309: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 310: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 311: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 312: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 313: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 314: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 315: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 316: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 317: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 318: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 319: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 320: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 321: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 322: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 323: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 324: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 325: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 326: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 327: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 328: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 329: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 330: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 331: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 332: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 333: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 334: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 335: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 336: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 337: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 338: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 339: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 340: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 341: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 342: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 343: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 344: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 345: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 346: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 347: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 348: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 349: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 350: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 351: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 352: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 353: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 354: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 355: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 356: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 357: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 358: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 359: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 360: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 361: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 362: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 363: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 364: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 365: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 366: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 367: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 368: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 369: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 370: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 371: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 372: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 373: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 374: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 375: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 376: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 377: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 378: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 379: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 380: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 381: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 382: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 383: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 384: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 385: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 386: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 387: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 388: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 389: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 390: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 391: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 392: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 393: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 394: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 395: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 396: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 397: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 398: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 399: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 400: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 401: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 402: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 403: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 404: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 405: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 406: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 407: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 408: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 409: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 410: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 411: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 412: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 413: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 414: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 415: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 416: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 417: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 418: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 419: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 420: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 421: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 422: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 423: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 424: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 425: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 426: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 427: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 428: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 429: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 430: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 431: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 432: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 433: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 434: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 435: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 436: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 437: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 438: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 439: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 440: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 441: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 442: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 443: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 444: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 445: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 446: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 447: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 448: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 449: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 450: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 451: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 452: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 453: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 454: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 455: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 456: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 457: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 458: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 459: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 460: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 461: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 462: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 463: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 464: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 465: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 466: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 467: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 468: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 469: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 470: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 471: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 472: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 473: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 474: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 475: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 476: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 477: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 478: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 479: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 480: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 481: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 482: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 483: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 484: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 485: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 486: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 487: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 488: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 489: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 490: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 491: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 492: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 493: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 494: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 495: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 496: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 497: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 498: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 499: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 500: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 501: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 502: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 503: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 504: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 505: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 506: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 507: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 508: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 509: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 510: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 511: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 512: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 513: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 514: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 515: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 516: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 517: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 518: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 519: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 520: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 521: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 522: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 523: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 524: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 525: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 526: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 527: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 528: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 529: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 530: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 531: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 532: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 533: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 534: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 535: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 536: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 537: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 538: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 539: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 540: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 541: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 542: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 543: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 544: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 545: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 546: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 547: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 548: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 549: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 550: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 551: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 552: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 553: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 554: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 555: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 556: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 557: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 558: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 559: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 560: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 561: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 562: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 563: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 564: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 565: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 566: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 567: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 568: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 569: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 570: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 571: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 572: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 573: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 574: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 575: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 576: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 577: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 578: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 579: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 580: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 581: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 582: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 583: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 584: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 585: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 586: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 587: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 588: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 589: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 590: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 591: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 592: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 593: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 594: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 595: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 596: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 597: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 598: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 599: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 600: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 601: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 602: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 603: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 604: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 605: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 606: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 607: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 608: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 609: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 610: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 611: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 612: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 613: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 614: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 615: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 616: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 617: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 618: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 619: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 620: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 621: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 622: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 623: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 624: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 625: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 626: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 627: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 628: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 629: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 630: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 631: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 632: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 633: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 634: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 635: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 636: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 637: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 638: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 639: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 640: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 641: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 642: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 643: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 644: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 645: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 646: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 647: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 648: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 649: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 650: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 651: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 652: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 653: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 654: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 655: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 656: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 657: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 658: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 659: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 660: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 661: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 662: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 663: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 664: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 665: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 666: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 667: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 668: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 669: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 670: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 671: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 672: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 673: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 674: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 675: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 676: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 677: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 678: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 679: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 680: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 681: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 682: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 683: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 684: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 685: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 686: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 687: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 688: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 689: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 690: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 691: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 692: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 693: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 694: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 695: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 696: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 697: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 698: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 699: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 700: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 701: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 702: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 703: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 704: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 705: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 706: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 707: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\"]', '2025-09-06 16:04:32');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(5, 1, 'student_import_template(1).csv', 707, 0, 707, '[\"Row 1: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 2: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 3: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 4: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 5: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 6: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 7: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 8: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 9: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 10: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 11: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 12: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 13: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 14: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 15: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 16: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 17: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 18: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 19: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 20: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 21: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 22: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 23: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 24: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 25: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 26: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 27: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 28: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 29: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 30: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 31: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 32: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 33: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 34: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 35: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 36: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 37: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 38: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 39: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 40: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 41: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 42: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 43: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 44: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 45: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 46: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 47: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 48: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 49: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 50: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 51: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 52: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 53: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 54: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 55: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 56: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 57: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 58: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 59: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 60: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 61: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 62: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 63: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 64: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 65: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 66: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 67: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 68: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 69: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 70: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 71: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 72: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 73: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 74: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 75: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 76: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 77: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 78: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 79: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 80: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 81: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 82: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 83: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 84: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 85: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 86: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 87: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 88: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 89: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 90: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 91: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 92: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 93: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 94: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 95: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 96: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 97: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 98: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 99: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 100: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 101: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 102: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 103: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 104: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 105: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 106: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 107: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 108: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 109: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 110: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 111: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 112: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 113: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 114: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 115: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 116: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 117: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 118: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 119: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 120: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 121: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 122: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 123: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 124: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 125: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 126: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 127: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 128: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 129: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 130: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 131: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 132: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 133: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 134: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 135: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 136: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 137: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 138: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 139: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 140: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 141: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 142: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 143: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 144: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 145: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 146: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 147: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 148: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 149: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 150: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 151: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 152: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 153: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 154: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 155: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 156: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 157: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 158: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 159: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 160: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 161: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 162: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 163: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 164: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 165: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 166: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 167: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 168: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 169: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 170: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 171: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 172: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 173: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 174: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 175: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 176: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 177: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 178: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 179: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 180: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 181: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 182: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 183: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 184: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 185: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 186: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 187: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 188: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 189: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 190: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 191: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 192: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 193: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 194: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 195: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 196: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 197: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 198: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 199: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 200: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 201: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 202: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 203: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 204: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 205: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 206: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 207: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 208: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 209: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 210: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 211: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 212: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 213: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 214: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 215: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 216: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 217: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 218: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 219: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 220: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 221: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 222: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 223: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 224: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 225: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 226: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 227: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 228: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 229: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 230: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 231: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 232: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 233: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 234: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 235: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 236: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 237: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 238: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 239: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 240: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 241: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 242: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 243: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 244: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 245: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 246: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 247: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 248: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 249: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 250: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 251: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 252: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 253: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 254: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 255: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 256: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 257: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 258: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 259: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 260: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 261: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 262: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 263: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 264: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 265: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 266: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 267: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 268: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 269: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 270: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 271: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 272: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 273: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 274: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 275: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 276: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 277: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 278: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 279: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 280: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 281: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 282: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 283: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 284: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 285: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 286: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 287: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 288: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 289: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 290: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 291: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 292: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 293: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 294: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 295: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 296: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 297: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 298: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 299: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 300: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 301: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 302: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 303: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 304: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 305: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 306: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 307: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 308: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 309: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 310: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 311: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 312: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 313: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 314: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 315: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 316: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 317: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 318: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 319: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 320: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 321: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 322: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 323: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 324: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 325: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 326: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 327: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 328: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 329: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 330: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 331: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 332: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 333: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 334: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 335: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 336: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 337: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 338: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 339: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 340: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 341: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 342: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 343: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 344: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 345: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 346: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 347: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 348: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 349: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 350: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 351: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 352: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 353: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 354: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 355: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 356: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 357: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 358: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 359: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 360: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 361: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 362: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 363: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 364: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 365: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 366: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 367: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 368: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 369: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 370: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 371: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 372: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 373: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 374: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 375: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 376: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 377: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 378: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 379: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 380: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 381: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 382: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 383: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 384: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 385: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 386: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 387: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 388: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 389: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 390: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 391: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 392: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 393: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 394: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 395: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 396: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 397: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 398: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 399: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 400: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 401: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 402: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 403: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 404: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 405: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 406: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 407: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 408: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 409: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 410: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 411: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 412: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 413: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 414: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 415: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 416: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 417: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 418: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 419: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 420: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 421: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 422: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 423: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 424: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 425: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 426: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 427: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 428: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 429: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 430: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 431: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 432: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 433: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 434: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 435: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 436: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 437: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 438: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 439: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 440: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 441: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 442: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 443: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 444: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 445: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 446: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 447: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 448: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 449: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 450: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 451: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 452: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 453: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 454: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 455: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 456: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 457: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 458: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 459: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 460: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 461: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 462: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 463: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 464: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 465: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 466: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 467: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 468: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 469: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 470: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 471: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 472: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 473: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 474: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 475: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 476: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 477: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 478: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 479: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 480: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 481: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 482: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 483: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 484: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 485: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 486: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 487: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 488: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 489: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 490: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 491: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 492: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 493: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 494: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 495: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 496: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 497: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 498: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 499: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 500: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 501: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 502: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 503: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 504: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 505: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 506: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 507: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 508: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 509: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 510: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 511: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 512: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 513: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 514: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 515: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 516: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 517: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 518: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 519: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 520: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 521: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 522: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 523: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 524: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 525: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 526: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 527: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 528: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 529: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 530: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 531: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 532: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 533: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 534: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 535: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 536: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 537: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 538: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 539: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 540: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 541: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 542: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 543: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 544: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 545: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 546: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 547: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 548: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 549: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 550: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 551: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 552: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 553: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 554: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 555: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 556: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 557: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 558: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 559: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 560: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 561: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 562: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 563: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 564: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 565: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 566: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 567: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 568: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 569: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 570: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 571: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 572: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 573: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 574: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 575: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 576: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 577: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 578: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 579: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 580: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 581: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 582: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 583: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 584: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 585: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 586: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 587: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 588: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 589: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 590: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 591: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 592: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 593: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 594: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 595: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 596: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 597: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 598: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 599: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 600: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 601: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 602: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 603: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 604: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 605: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 606: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 607: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 608: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 609: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 610: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 611: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 612: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 613: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 614: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 615: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 616: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 617: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 618: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 619: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 620: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 621: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 622: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 623: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 624: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 625: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 626: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 627: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 628: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 629: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 630: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 631: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 632: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 633: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 634: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 635: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 636: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 637: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 638: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 639: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 640: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 641: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 642: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 643: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 644: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 645: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 646: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 647: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 648: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 649: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 650: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 651: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 652: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 653: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 654: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 655: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 656: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 657: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 658: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 659: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 660: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 661: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 662: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 663: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 664: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 665: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 666: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 667: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 668: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 669: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 670: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 671: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 672: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 673: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 674: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 675: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 676: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 677: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 678: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 679: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 680: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 681: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 682: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 683: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 684: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 685: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 686: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 687: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 688: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 689: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 690: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 691: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 692: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 693: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 694: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 695: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 696: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 697: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 698: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 699: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 700: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 701: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 702: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 703: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 704: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 705: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 706: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 707: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\"]', '2025-09-06 16:09:10');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(6, 1, 'student_import_template(2).csv', 707, 0, 707, '[\"Row 1: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 2: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 3: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 4: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 5: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 6: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 7: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 8: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 9: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 10: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 11: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 12: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 13: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 14: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 15: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 16: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 17: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 18: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 19: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 20: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 21: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 22: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 23: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 24: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 25: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 26: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 27: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 28: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 29: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 30: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 31: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 32: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 33: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 34: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 35: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 36: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 37: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 38: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 39: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 40: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 41: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 42: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 43: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 44: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 45: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 46: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 47: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 48: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 49: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 50: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 51: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 52: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 53: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 54: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 55: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 56: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 57: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 58: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 59: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 60: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 61: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 62: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 63: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 64: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 65: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 66: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 67: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 68: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 69: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 70: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 71: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 72: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 73: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 74: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 75: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 76: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 77: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 78: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 79: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 80: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 81: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 82: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 83: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 84: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 85: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 86: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 87: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 88: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 89: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 90: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 91: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 92: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 93: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 94: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 95: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 96: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 97: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 98: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 99: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 100: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 101: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 102: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 103: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 104: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 105: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 106: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 107: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 108: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 109: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 110: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 111: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 112: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 113: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 114: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 115: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 116: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 117: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 118: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 119: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 120: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 121: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 122: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 123: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 124: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 125: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 126: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 127: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 128: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 129: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 130: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 131: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 132: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 133: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 134: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 135: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 136: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 137: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 138: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 139: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 140: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 141: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 142: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 143: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 144: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 145: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 146: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 147: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 148: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 149: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 150: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 151: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 152: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 153: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 154: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 155: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 156: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 157: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 158: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 159: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 160: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 161: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 162: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 163: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 164: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 165: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 166: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 167: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 168: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 169: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 170: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 171: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 172: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 173: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 174: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 175: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 176: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 177: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 178: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 179: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 180: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 181: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 182: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 183: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 184: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 185: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 186: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 187: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 188: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 189: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 190: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 191: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 192: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 193: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 194: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 195: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 196: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 197: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 198: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 199: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 200: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 201: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 202: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 203: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 204: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 205: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 206: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 207: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 208: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 209: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 210: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 211: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 212: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 213: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 214: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 215: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 216: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 217: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 218: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 219: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 220: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 221: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 222: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 223: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 224: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 225: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 226: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 227: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 228: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 229: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 230: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 231: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 232: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 233: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 234: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 235: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 236: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 237: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 238: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 239: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 240: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 241: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 242: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 243: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 244: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 245: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 246: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 247: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 248: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 249: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 250: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 251: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 252: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 253: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 254: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 255: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 256: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 257: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 258: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 259: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 260: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 261: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 262: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 263: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 264: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 265: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 266: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 267: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 268: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 269: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 270: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 271: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 272: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 273: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 274: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 275: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 276: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 277: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 278: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 279: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 280: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 281: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 282: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 283: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 284: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 285: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 286: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 287: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 288: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 289: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 290: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 291: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 292: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 293: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 294: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 295: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 296: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 297: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 298: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 299: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 300: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 301: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 302: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 303: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 304: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 305: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 306: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 307: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 308: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 309: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 310: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 311: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 312: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 313: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 314: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 315: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 316: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 317: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 318: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 319: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 320: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 321: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 322: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 323: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 324: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 325: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 326: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 327: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 328: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 329: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 330: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 331: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 332: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 333: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 334: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 335: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 336: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 337: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 338: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 339: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 340: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 341: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 342: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 343: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 344: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 345: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 346: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 347: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 348: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 349: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 350: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 351: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 352: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 353: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 354: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 355: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 356: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 357: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 358: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 359: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 360: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 361: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 362: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 363: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 364: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 365: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 366: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 367: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 368: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 369: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 370: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 371: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 372: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 373: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 374: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 375: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 376: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 377: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 378: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 379: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 380: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 381: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 382: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 383: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 384: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 385: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 386: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 387: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 388: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 389: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 390: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 391: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 392: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 393: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 394: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 395: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 396: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 397: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 398: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 399: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 400: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 401: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 402: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 403: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 404: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 405: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 406: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 407: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 408: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 409: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 410: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 411: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 412: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 413: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 414: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 415: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 416: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 417: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 418: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 419: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 420: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 421: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 422: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 423: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 424: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 425: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 426: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 427: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 428: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 429: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 430: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 431: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 432: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 433: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 434: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 435: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 436: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 437: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 438: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 439: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 440: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 441: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 442: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 443: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 444: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 445: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 446: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 447: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 448: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 449: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 450: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 451: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 452: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 453: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 454: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 455: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 456: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 457: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 458: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 459: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 460: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 461: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 462: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 463: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 464: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 465: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 466: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 467: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 468: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 469: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 470: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 471: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 472: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 473: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 474: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 475: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 476: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 477: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 478: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 479: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 480: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 481: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 482: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 483: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 484: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 485: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 486: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 487: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 488: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 489: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 490: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 491: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 492: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 493: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 494: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 495: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 496: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 497: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 498: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 499: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 500: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 501: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 502: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 503: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 504: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 505: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 506: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 507: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 508: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 509: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 510: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 511: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 512: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 513: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 514: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 515: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 516: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 517: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 518: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 519: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 520: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 521: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 522: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 523: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 524: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 525: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 526: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 527: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 528: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 529: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 530: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 531: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 532: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 533: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 534: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 535: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 536: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 537: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 538: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 539: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 540: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 541: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 542: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 543: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 544: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 545: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 546: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 547: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 548: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 549: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 550: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 551: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 552: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 553: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 554: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 555: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 556: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 557: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 558: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 559: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 560: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 561: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 562: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 563: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 564: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 565: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 566: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 567: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 568: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 569: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 570: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 571: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 572: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 573: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 574: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 575: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 576: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 577: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 578: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 579: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 580: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 581: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 582: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 583: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 584: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 585: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 586: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 587: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 588: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 589: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 590: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 591: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 592: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 593: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 594: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 595: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 596: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 597: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 598: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 599: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 600: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 601: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 602: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 603: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 604: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 605: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 606: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 607: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 608: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 609: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 610: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 611: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 612: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 613: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 614: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 615: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 616: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 617: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 618: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 619: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 620: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 621: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 622: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 623: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 624: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 625: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 626: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 627: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 628: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 629: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 630: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 631: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 632: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 633: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 634: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 635: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 636: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 637: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 638: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 639: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 640: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 641: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 642: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 643: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 644: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 645: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 646: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 647: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 648: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 649: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 650: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 651: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 652: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 653: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 654: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 655: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 656: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 657: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 658: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 659: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 660: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 661: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 662: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 663: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 664: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 665: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 666: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 667: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 668: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 669: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 670: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 671: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 672: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 673: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 674: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 675: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 676: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 677: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 678: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 679: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 680: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 681: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 682: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 683: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 684: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 685: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 686: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 687: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 688: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 689: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 690: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 691: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 692: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 693: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 694: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 695: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 696: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 697: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 698: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 699: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 700: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 701: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 702: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 703: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 704: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 705: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 706: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 707: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\"]', '2025-09-06 16:10:08');
INSERT INTO `student_import_logs` (`id`, `imported_by`, `file_name`, `total_rows`, `successful_imports`, `failed_imports`, `import_errors`, `import_date`) VALUES
(7, 1, 'student_import_template(2).csv', 707, 0, 707, '[\"Row 1: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 2: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 3: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 4: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 5: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 6: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 7: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 8: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 9: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 10: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 11: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 12: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 13: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 14: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 15: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 16: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 17: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 18: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 19: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 20: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 21: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 22: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 23: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 24: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 25: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 26: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 27: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 28: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 29: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 30: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 31: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 32: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 33: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 34: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 35: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 36: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 37: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 38: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 39: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 40: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 41: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 42: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 43: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 44: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 45: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 46: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 47: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 48: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 49: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 50: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 51: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 52: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 53: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 54: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 55: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 56: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 57: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 58: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 59: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 60: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 61: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 62: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 63: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 64: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 65: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 66: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 67: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 68: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 69: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 70: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 71: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 72: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 73: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 74: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 75: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 76: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 77: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 78: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 79: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 80: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 81: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 82: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 83: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 84: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 85: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 86: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 87: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 88: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 89: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 90: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 91: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 92: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 93: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 94: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 95: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 96: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 97: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 98: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 99: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 100: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 101: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 102: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 103: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 104: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 105: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 106: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 107: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 108: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 109: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 110: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 111: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 112: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 113: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 114: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 115: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 116: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 117: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 118: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 119: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 120: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 121: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 122: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 123: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 124: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 125: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 126: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 127: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 128: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 129: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 130: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 131: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 132: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 133: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 134: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 135: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 136: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 137: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 138: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 139: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 140: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 141: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 142: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 143: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 144: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 145: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 146: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 147: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 148: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 149: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 150: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 151: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 152: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 153: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 154: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 155: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 156: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 157: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 158: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 159: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 160: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 161: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 162: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 163: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 164: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 165: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 166: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 167: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 168: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 169: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 170: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 171: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 172: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 173: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 174: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 175: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 176: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 177: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 178: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 179: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 180: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 181: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 182: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 183: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 184: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 185: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 186: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 187: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 188: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 189: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 190: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 191: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 192: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 193: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 194: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 195: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 196: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 197: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 198: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 199: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 200: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 201: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 202: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 203: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 204: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 205: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 206: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 207: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 208: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 209: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 210: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 211: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 212: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 213: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 214: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 215: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 216: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 217: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 218: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 219: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 220: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 221: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 222: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 223: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 224: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 225: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 226: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 227: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 228: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 229: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 230: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 231: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 232: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 233: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 234: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 235: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 236: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 237: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 238: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 239: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 240: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 241: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 242: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 243: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 244: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 245: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 246: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 247: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 248: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 249: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 250: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 251: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 252: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 253: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 254: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 255: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 256: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 257: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 258: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 259: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 260: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 261: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 262: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 263: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 264: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 265: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 266: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 267: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 268: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 269: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 270: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 271: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 272: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 273: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 274: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 275: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 276: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 277: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 278: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 279: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 280: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 281: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 282: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 283: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 284: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 285: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 286: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 287: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 288: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 289: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 290: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 291: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 292: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 293: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 294: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 295: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 296: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 297: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 298: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 299: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 300: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 301: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 302: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 303: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 304: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 305: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 306: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 307: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 308: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 309: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 310: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 311: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 312: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 313: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 314: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 315: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 316: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 317: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 318: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 319: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 320: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 321: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 322: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 323: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 324: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 325: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 326: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 327: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 328: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 329: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 330: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 331: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 332: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 333: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 334: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 335: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 336: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 337: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 338: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 339: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 340: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 341: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 342: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 343: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 344: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 345: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 346: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 347: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 348: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 349: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 350: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 351: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 352: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 353: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 354: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 355: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 356: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 357: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 358: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 359: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 360: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 361: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 362: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 363: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 364: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 365: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 366: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 367: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 368: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 369: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 370: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 371: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 372: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 373: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 374: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 375: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 376: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 377: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 378: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 379: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 380: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 381: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 382: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 383: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 384: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 385: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 386: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 387: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 388: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 389: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 390: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 391: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 392: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 393: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 394: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 395: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 396: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 397: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 398: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 399: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 400: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 401: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 402: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 403: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 404: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 405: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 406: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 407: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 408: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 409: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 410: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 411: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 412: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 413: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 414: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 415: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 416: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 417: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 418: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 419: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 420: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 421: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 422: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 423: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 424: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 425: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 426: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 427: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 428: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 429: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 430: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 431: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 432: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 433: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 434: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 435: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 436: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 437: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 438: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 439: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 440: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 441: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 442: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 443: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 444: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 445: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 446: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 447: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 448: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 449: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 450: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 451: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 452: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 453: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 454: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 455: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 456: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 457: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 458: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 459: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 460: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 461: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 462: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 463: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 464: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 465: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 466: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 467: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 468: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 469: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 470: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 471: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 472: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 473: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 474: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 475: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 476: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 477: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 478: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 479: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 480: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 481: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 482: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 483: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 484: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 485: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 486: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 487: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 488: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 489: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 490: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 491: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 492: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 493: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 494: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 495: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 496: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 497: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 498: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 499: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 500: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 501: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 502: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 503: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 504: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 505: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 506: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 507: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 508: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 509: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 510: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 511: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 512: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 513: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 514: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 515: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 516: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 517: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 518: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 519: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 520: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 521: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 522: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 523: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 524: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 525: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 526: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 527: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 528: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 529: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 530: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 531: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 532: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 533: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 534: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 535: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 536: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 537: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 538: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 539: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 540: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 541: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 542: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 543: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 544: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 545: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 546: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 547: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 548: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 549: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 550: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 551: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 552: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 553: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 554: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 555: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 556: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 557: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 558: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 559: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 560: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 561: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 562: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 563: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 564: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 565: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 566: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 567: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 568: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 569: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 570: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 571: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 572: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 573: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 574: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 575: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 576: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 577: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 578: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 579: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 580: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 581: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 582: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 583: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 584: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 585: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 586: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 587: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 588: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 589: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 590: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 591: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 592: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 593: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 594: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 595: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 596: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 597: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 598: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 599: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 600: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 601: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 602: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 603: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 604: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 605: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 606: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 607: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 608: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 609: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 610: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 611: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 612: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 613: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 614: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 615: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 616: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 617: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 618: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 619: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 620: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 621: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 622: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 623: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 624: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 625: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 626: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 627: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 628: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 629: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 630: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 631: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 632: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 633: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 634: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 635: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 636: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 637: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 638: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 639: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 640: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 641: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 642: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 643: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 644: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 645: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 646: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 647: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 648: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 649: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 650: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 651: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 652: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 653: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 654: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 655: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 656: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 657: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 658: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 659: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 660: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 661: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 662: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 663: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 664: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 665: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 666: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 667: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 668: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 669: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 670: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 671: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 672: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 673: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 674: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 675: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 676: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 677: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 678: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 679: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 680: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 681: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 682: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 683: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 684: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 685: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 686: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 687: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 688: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 689: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 690: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 691: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 692: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 693: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 694: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 695: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 696: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 697: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 698: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 699: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 700: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 701: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 702: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 703: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 704: Invalid sex \'F\'. Must be \'Male\' or \'Female\'\",\"Row 705: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 706: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\",\"Row 707: Invalid sex \'M\'. Must be \'Male\' or \'Female\'\"]', '2025-09-06 16:10:40'),
(8, 1, 'student_import_template(2).csv', 707, 676, 31, '[\"Row 13: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1on\' for column \'MiddleName\' at row 1\",\"Row 46: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1avesa\' for column \'Surname\' at row 1\",\"Row 53: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1osa\' for column \'Surname\' at row 1\",\"Row 57: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ador\' for column \'Surname\' at row 1\",\"Row 58: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ez\' for column \'Surname\' at row 1\",\"Row 59: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ez\' for column \'Surname\' at row 1\",\"Row 77: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1on\' for column \'MiddleName\' at row 1\",\"Row 85: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'MiddleName\' at row 1\",\"Row 107: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'MiddleName\' at row 1\",\"Row 144: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1on\' for column \'Surname\' at row 1\",\"Row 145: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1on\' for column \'Surname\' at row 1\",\"Row 146: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1on\' for column \'Surname\' at row 1\",\"Row 158: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1os\' for column \'Surname\' at row 1\",\"Row 177: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ado\' for column \'Surname\' at row 1\",\"Row 198: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1as\' for column \'Surname\' at row 1\",\"Row 237: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ales\' for column \'MiddleName\' at row 1\",\"Row 248: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ez\' for column \'MiddleName\' at row 1\",\"Row 290: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1o\' for column \'Barangay\' at row 1\",\"Row 328: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ez\' for column \'Surname\' at row 1\",\"Row 334: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1o Mon...\' for column \'FirstName\' at row 1\",\"Row 422: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'Surname\' at row 1\",\"Row 425: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'MiddleName\' at row 1\",\"Row 426: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1o\' for column \'Surname\' at row 1\",\"Row 433: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xD1o\' for column \'FirstName\' at row 1\",\"Row 484: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'MiddleName\' at row 1\",\"Row 585: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1a\' for column \'Surname\' at row 1\",\"Row 600: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1o\' for column \'MiddleName\' at row 1\",\"Row 608: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ora\' for column \'Surname\' at row 1\",\"Row 672: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1as\' for column \'MiddleName\' at row 1\",\"Row 683: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1acao\' for column \'Surname\' at row 1\",\"Row 706: SQLSTATE[HY000]: General error: 1366 Incorrect string value: \'\\\\xF1ez\' for column \'Surname\' at row 1\"]', '2025-09-06 16:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `student_total_grades`
--

CREATE TABLE `student_total_grades` (
  `id` int NOT NULL,
  `student_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `total_score` decimal(8,2) DEFAULT NULL,
  `total_weighted_score` decimal(8,2) DEFAULT NULL,
  `final_percentage` decimal(5,2) DEFAULT NULL,
  `final_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `subject_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `course` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` decimal(3,1) NOT NULL DEFAULT '3.0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_code`, `subject_name`, `description`, `course`, `major`, `units`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(46, 'IT 205', 'Object-Oriented Programming', 'For OOP Lec', 'BSInfoTech', '', '3.0', 'active', 1, '2025-09-15 03:54:49', '2025-09-15 03:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int NOT NULL,
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'DOC-EASE', 'Website name', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(2, 'site_description', 'Document Management System', 'Website description', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(3, 'site_logo', 'includes/assets/images/mine/SLSU_Seal.png', 'Site logo path', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(4, 'max_file_size', '10485760', 'Maximum file upload size in bytes (10MB)', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(5, 'allowed_file_types', 'pdf,doc,docx,xls,xlsx,ppt,pptx,txt,jpg,jpeg,png', 'Allowed file extensions', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(6, 'session_timeout', '3600', 'Session timeout in seconds', '2025-09-04 05:15:03', '2025-09-04 05:15:03'),
(7, 'maintenance_mode', '0', 'Maintenance mode (0=off, 1=on)', '2025-09-04 05:15:03', '2025-09-04 05:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assignments`
--

CREATE TABLE `teacher_assignments` (
  `id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `teacher_role` enum('primary','co_teacher') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primary',
  `class_record_id` int NOT NULL,
  `assigned_by` int NOT NULL,
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `assignment_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `term_grades`
--

CREATE TABLE `term_grades` (
  `id` int NOT NULL,
  `class_id` int NOT NULL,
  `student_id` int NOT NULL,
  `term` enum('midterm','final') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_score` decimal(5,2) DEFAULT NULL,
  `total_max_score` decimal(5,2) NOT NULL DEFAULT '100.00',
  `percentage` decimal(5,2) DEFAULT NULL,
  `grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `calculated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_grading_categories`
--

CREATE TABLE `test_grading_categories` (
  `id` int NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject_id` int DEFAULT NULL,
  `default_weight` decimal(5,2) DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_grading_categories`
--

INSERT INTO `test_grading_categories` (`id`, `category_name`, `description`, `subject_id`, `default_weight`, `is_active`, `created_at`) VALUES
(1, 'Written Works', 'Quizzes, assignments, and written exercises', 1, '20.00', 1, '2025-09-12 02:09:26'),
(2, 'Performance Tasks', 'Practical activities and recitations', 1, '25.00', 1, '2025-09-12 02:09:26'),
(3, 'Project', 'Major project deliverables', 1, '30.00', 1, '2025-09-12 02:09:26'),
(4, 'Exam', 'Midterm and final examinations', 1, '25.00', 1, '2025-09-12 02:09:26'),
(5, 'Database Design', 'Database modeling and design projects', 2, '40.00', 1, '2025-09-12 02:09:26'),
(6, 'SQL Queries', 'Structured Query Language exercises', 2, '35.00', 1, '2025-09-12 02:09:26'),
(7, 'Database Administration', 'DBMS administration tasks', 2, '25.00', 1, '2025-09-12 02:09:26'),
(8, 'Frontend Development', 'HTML, CSS, JavaScript projects', 3, '50.00', 1, '2025-09-12 02:09:26'),
(9, 'Backend Development', 'Server-side programming', 3, '50.00', 1, '2025-09-12 02:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `test_grading_components`
--

CREATE TABLE `test_grading_components` (
  `id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `component_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `display_order` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_subjects`
--

CREATE TABLE `test_subjects` (
  `id` int NOT NULL,
  `subject_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_subjects`
--

INSERT INTO `test_subjects` (`id`, `subject_name`, `subject_code`, `description`, `is_active`, `created_at`) VALUES
(1, 'Object-Oriented Programming', 'IT 205', 'Programming concepts and object-oriented design', 1, '2025-09-12 02:09:26'),
(2, 'Database Management', 'IT 206', 'Database design and management systems', 1, '2025-09-12 02:09:26'),
(3, 'Web Development', 'IT 207', 'Frontend and backend web development', 1, '2025-09-12 02:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` int NOT NULL,
  `StudentNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `file_size` bigint NOT NULL,
  `file_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  `status` enum('pending','processing','completed','failed') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `download_count` int DEFAULT '0',
  `first_download_date` datetime DEFAULT NULL,
  `last_download_date` datetime DEFAULT NULL,
  `processed_date` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `StudentNo`, `original_name`, `file_name`, `file_path`, `file_size`, `file_type`, `upload_date`, `status`, `download_count`, `first_download_date`, `last_download_date`, `processed_date`, `notes`, `created_at`, `updated_at`, `page_count`) VALUES
(121, '2410222-2', '387.pdf', '68cb222a5d40d_1758143018_1.pdf', 'uploads/68cb222a5d40d_1758143018_1.pdf', 158950, 'application/pdf', '2025-09-18 05:03:38', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:03:38', '2025-09-18 05:03:38', NULL),
(123, '2410222-2', '(Bontoc Campus) - 2210014-2 (Salan, Persel Mae).xlsx', '68cb224d6cab0_1758143053_0.xlsx', 'uploads/68cb224d6cab0_1758143053_0.xlsx', 762003, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2025-09-18 05:04:13', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:04:13', '2025-09-18 05:04:13', NULL),
(124, '2410222-2', '387.pdf', '68cb224d6e7ce_1758143053_1.pdf', 'uploads/68cb224d6e7ce_1758143053_1.pdf', 158950, 'application/pdf', '2025-09-18 05:04:13', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:04:13', '2025-09-18 05:04:13', NULL),
(125, '2410222-2', 'Barcelona_Accidents(11-26,2024).cpg', '68cb224d70099_1758143053_2.cpg', 'uploads/68cb224d70099_1758143053_2.cpg', 5, 'application/octet-stream', '2025-09-18 05:04:13', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:04:13', '2025-09-18 05:04:13', NULL),
(126, '2210222-2', 'IMG20250917090530.jpg', '68cb2382a2cb5_1758143362_0.jpg', 'uploads/68cb2382a2cb5_1758143362_0.jpg', 1385804, 'image/jpeg', '2025-09-18 05:09:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:09:22', '2025-09-18 05:09:22', NULL),
(127, '2210222-2', 'IMG20250917090526.jpg', '68cb2382a478e_1758143362_1.jpg', 'uploads/68cb2382a478e_1758143362_1.jpg', 1344836, 'image/jpeg', '2025-09-18 05:09:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:09:22', '2025-09-18 05:09:22', NULL),
(128, '2210222-2', 'Screenshot_2025-09-17-06-36-33-16_a23b203fd3aafc6dcb84e438dda678b6.jpg', '68cb2382a61c8_1758143362_2.jpg', 'uploads/68cb2382a61c8_1758143362_2.jpg', 349971, 'image/jpeg', '2025-09-18 05:09:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:09:22', '2025-09-18 05:09:22', NULL),
(129, '2210222-2', 'Screenshot_2025-09-16-19-04-40-19_a23b203fd3aafc6dcb84e438dda678b6.jpg', '68cb2382a7adb_1758143362_3.jpg', 'uploads/68cb2382a7adb_1758143362_3.jpg', 415690, 'image/jpeg', '2025-09-18 05:09:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:09:22', '2025-09-18 05:09:22', NULL),
(130, '2210222-2', 'IMG20250915091556.jpg', '68cb2477badd3_1758143607_0.jpg', 'uploads/68cb2477badd3_1758143607_0.jpg', 1362372, 'image/jpeg', '2025-09-18 05:13:27', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:13:27', '2025-09-18 05:13:27', NULL),
(131, '2210222-2', 'IMG20250915091600.jpg', '68cb2477bcd82_1758143607_1.jpg', 'uploads/68cb2477bcd82_1758143607_1.jpg', 1517561, 'image/jpeg', '2025-09-18 05:13:27', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:13:27', '2025-09-18 05:13:27', NULL),
(132, '2210222-2', 'IMG20250915091553.jpg', '68cb2477bebea_1758143607_2.jpg', 'uploads/68cb2477bebea_1758143607_2.jpg', 1195715, 'image/jpeg', '2025-09-18 05:13:27', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:13:27', '2025-09-18 05:13:27', NULL),
(133, '2210222-2', 'IMG20250915091604.jpg', '68cb2477c0975_1758143607_3.jpg', 'uploads/68cb2477c0975_1758143607_3.jpg', 1438985, 'image/jpeg', '2025-09-18 05:13:27', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:13:27', '2025-09-18 05:13:27', NULL),
(134, '2410222-2', 'IAS 2 Clearance.xlsx', '68cb25da6d001_1758143962_0.xlsx', 'uploads/68cb25da6d001_1758143962_0.xlsx', 9725, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2025-09-18 05:19:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:19:22', '2025-09-18 05:19:22', NULL),
(135, '2410222-2', 'img20240730_11112976.pdf', '68cb25da7024c_1758143962_1.pdf', 'uploads/68cb25da7024c_1758143962_1.pdf', 149864, 'application/pdf', '2025-09-18 05:19:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:19:22', '2025-09-18 05:19:22', NULL),
(136, '2410222-2', 'Information, Education and Communication Material DevelopmentSeptember 7.docx', '68cb25da72136_1758143962_2.docx', 'uploads/68cb25da72136_1758143962_2.docx', 16525, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2025-09-18 05:19:22', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:19:22', '2025-09-18 05:19:22', NULL),
(137, '2410222-2', 'Business Card_Pascual, Gladys.pptx', '68cb26673ec0d_1758144103_0.pptx', 'uploads/68cb26673ec0d_1758144103_0.pptx', 3766869, 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2025-09-18 05:21:43', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:21:43', '2025-09-18 05:21:43', 1),
(138, '2410222-2', 'Certificate.docx', '68cb266742a55_1758144103_1.docx', 'uploads/68cb266742a55_1758144103_1.docx', 259615, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2025-09-18 05:21:43', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:21:43', '2025-09-18 05:21:43', 1),
(139, '2410222-2', 'Certificate.pdf', '68cb266765af6_1758144103_2.pdf', 'uploads/68cb266765af6_1758144103_2.pdf', 295550, 'application/pdf', '2025-09-18 05:21:43', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:21:43', '2025-09-18 05:21:43', 2),
(140, '2410222-2', 'CISA - Client Satisfaction Survey Result (AutoRecovered).docx', '68cb266789143_1758144103_3.docx', 'uploads/68cb266789143_1758144103_3.docx', 331177, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2025-09-18 05:21:43', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:21:43', '2025-09-18 05:21:43', 8),
(141, '2410222-2', 'CISA-P_Internet Subscription.xlsx', '68cb266795e79_1758144103_4.xlsx', 'uploads/68cb266795e79_1758144103_4.xlsx', 71761, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2025-09-18 05:21:43', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:21:43', '2025-09-18 05:21:43', 10),
(142, '2410222-2', 'Barcelona_Accidents(11-26,2024).prj', '68cb294f4a4b4_1758144847_0.prj', 'uploads/68cb294f4a4b4_1758144847_0.prj', 423, 'application/octet-stream', '2025-09-18 05:34:07', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:07', '2025-09-18 05:34:07', 1),
(143, '2410222-2', 'Barcelona_Accidents(11-26,2024).qmd', '68cb294f4c180_1758144847_1.qmd', 'uploads/68cb294f4c180_1758144847_1.qmd', 2296, 'application/octet-stream', '2025-09-18 05:34:07', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:07', '2025-09-18 05:34:07', 1),
(144, '2410222-2', 'Barcelona_Accidents(11-26,2024).shp', '68cb294f4df0c_1758144847_2.shp', 'uploads/68cb294f4df0c_1758144847_2.shp', 302640, 'application/octet-stream', '2025-09-18 05:34:07', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:07', '2025-09-18 05:34:07', 3),
(145, '2210222-2', 'IMG20250917090530.jpg', '68cb29702facf_1758144880_0.jpg', 'uploads/68cb29702facf_1758144880_0.jpg', 1385804, 'image/jpeg', '2025-09-18 05:34:40', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:40', '2025-09-18 05:34:40', 14),
(146, '2210222-2', 'IMG20250917090526.jpg', '68cb29703401f_1758144880_1.jpg', 'uploads/68cb29703401f_1758144880_1.jpg', 1344836, 'image/jpeg', '2025-09-18 05:34:40', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:40', '2025-09-18 05:34:40', 14),
(147, '2210222-2', 'Screenshot_2025-09-17-06-36-33-16_a23b203fd3aafc6dcb84e438dda678b6.jpg', '68cb29703595b_1758144880_2.jpg', 'uploads/68cb29703595b_1758144880_2.jpg', 349971, 'image/jpeg', '2025-09-18 05:34:40', 'completed', 0, NULL, NULL, NULL, NULL, '2025-09-18 05:34:40', '2025-09-18 05:34:40', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT '2',
  `department_id` int DEFAULT NULL,
  `status` enum('active','inactive','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `role_id`, `department_id`, `status`, `profile_picture`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@doc-ease.com', '$2y$10$z9ktpkYLcKfbX7oDBpQMSuZ0uV2XVfi8EzWkAmh0c2ruMck7H0Nye', 'Junnie Ryh', 'Sumacot', 1, 1, 'active', 'uploads/profile_pictures/1.jpg', '2025-09-07 21:26:28', '2025-09-04 05:15:03', '2025-09-07 13:26:28'),
(2, 'langga', 'jsumacot@southernleytestateu.edu.ph', '$2y$10$ZuRNI3sV8HCilZ5ZRN19XOeoLrxv4so9QEjPu5Anxcr1ErajTnPgW', 'Ellie Ryhn', 'Sumacot', 2, NULL, 'active', 'uploads/profile_pictures/2.png', '2025-09-06 21:53:12', '2025-09-04 12:43:43', '2025-09-06 13:53:12'),
(3, 'Mommy', 'fsumacot@southernleytestateu.edu.ph', '$2y$10$sjIc0L10Z.seJEaT4szmI.y7m.sHlOF5In9F9HWYFBCS8VaoyRVwa', 'FREDELYN (BBQ)', 'MENDAROS', 2, NULL, 'active', 'uploads/profile_pictures/3.png', '2025-09-07 20:53:45', '2025-09-04 12:51:28', '2025-09-07 12:53:45'),
(4, 'john.smith', 'john.smith@school.edu', '$2y$10$5xYkCVu3V70.mPVXfBMObenA1O3tEecTdPQRqRuWFgsS1kkqgtmiG', 'John', 'Smith', 2, NULL, 'active', NULL, NULL, '2025-09-04 15:02:35', '2025-09-05 08:25:50'),
(5, 'maria.garcia', 'maria.garcia@school.edu', '$2y$10$Fd3olpr018VBlQXbIPnk0.82Vwdy6OSkT3ttpNR1AaPlwEcz56H7u', 'Maria', 'Garcia', 2, NULL, 'active', NULL, NULL, '2025-09-04 15:02:35', '2025-09-05 08:25:50'),
(6, 'david.johnson', 'david.johnson@school.edu', '$2y$10$BUQa5Z0D9LPxGGjf9tCuMO2.aU8UqxHBR0B0cDVeWpNu4WAdBTPoK', 'David', 'Johnson', 2, NULL, 'active', NULL, NULL, '2025-09-04 15:02:35', '2025-09-05 08:25:50'),
(7, 'sarah.williams', 'sarah.williams@school.edu', '$2y$10$KaoO3ykxP3XjxN7MBRNwi.xHv.nIiBQjqcrogWYPefAvwZ9ADghiK', 'Sarah', 'Williams', 2, NULL, 'active', NULL, NULL, '2025-09-04 15:02:35', '2025-09-05 08:25:50'),
(8, 'michael.brown', 'michael.brown@school.edu', '$2y$10$t66BhaBI/00sei9fIVHCGeLLC/NkrsFg2nhqYL06QWrOHgvahGpEW', 'Michael', 'Brown', 2, NULL, 'active', NULL, NULL, '2025-09-04 15:02:35', '2025-09-05 08:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`id`, `name`, `email`) VALUES
(1, 'Junnie Ryh', 'jsumacot@southernleytestateu.edu.ph');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplishment_reports`
--
ALTER TABLE `accomplishment_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_date` (`date`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_submitted_by` (`submitted_by`),
  ADD KEY `idx_department` (`department_id`),
  ADD KEY `fk_accomplishment_approved_by` (`approved_by`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_table` (`table_name`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_component_assessment_code` (`component_id`,`assessment_code`),
  ADD KEY `idx_subject_id` (`subject_id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_component_id` (`component_id`),
  ADD KEY `idx_assessment_date` (`assessment_date`),
  ADD KEY `idx_display_order` (`display_order`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_attendance` (`class_record_id`,`student_id`,`date`),
  ADD KEY `idx_class_record` (`class_record_id`),
  ADD KEY `idx_student` (`student_id`),
  ADD KEY `idx_date` (`date`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_recorded_by` (`recorded_by`);

--
-- Indexes for table `class_enrollments`
--
ALTER TABLE `class_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_enrollment` (`class_record_id`,`student_id`),
  ADD KEY `idx_class_record` (`class_record_id`),
  ADD KEY `idx_student` (`student_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `class_grades`
--
ALTER TABLE `class_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_enrollment` (`enrollment_id`),
  ADD KEY `idx_assessment_type` (`assessment_type`),
  ADD KEY `idx_date_taken` (`date_taken`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `class_marks`
--
ALTER TABLE `class_marks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student_component_term` (`student_id`,`component_id`,`term`),
  ADD KEY `idx_class` (`class_id`),
  ADD KEY `idx_student` (`student_id`),
  ADD KEY `idx_term` (`term`),
  ADD KEY `idx_component` (`component_id`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `class_records`
--
ALTER TABLE `class_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_subject` (`subject_id`),
  ADD KEY `idx_teacher` (`teacher_id`),
  ADD KEY `idx_academic_year` (`academic_year`),
  ADD KEY `idx_semester` (`semester`),
  ADD KEY `idx_record_type` (`record_type`);

--
-- Indexes for table `class_record_assignments`
--
ALTER TABLE `class_record_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_class_assignment` (`assigned_class_id`),
  ADD KEY `idx_class_record` (`class_record_id`),
  ADD KEY `idx_assigned_class` (`assigned_class_id`),
  ADD KEY `idx_assigned_by` (`assigned_by`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `component_categories`
--
ALTER TABLE `component_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_class_record` (`class_record_id`),
  ADD KEY `fk_components_created_by` (`created_by`);

--
-- Indexes for table `co_teachers`
--
ALTER TABLE `co_teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_class_teacher` (`class_record_id`,`teacher_id`),
  ADD KEY `idx_class_record` (`class_record_id`),
  ADD KEY `idx_teacher` (`teacher_id`),
  ADD KEY `idx_assigned_by` (`assigned_by`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_enrollment` (`student_no`,`subject_id`,`academic_year`,`semester`),
  ADD KEY `idx_student_no` (`student_no`),
  ADD KEY `idx_subject_id` (`subject_id`),
  ADD KEY `idx_academic_year` (`academic_year`);

--
-- Indexes for table `file_upload_devices`
--
ALTER TABLE `file_upload_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `idx_file_device` (`file_id`,`device_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student_subject` (`student_no`,`subject_id`),
  ADD KEY `idx_student_no` (`student_no`),
  ADD KEY `idx_subject_id` (`subject_id`),
  ADD KEY `idx_total_grade` (`total_grade`);

--
-- Indexes for table `grading_categories`
--
ALTER TABLE `grading_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_subject_category_name` (`subject_id`,`category_name`),
  ADD KEY `idx_subject_id` (`subject_id`);

--
-- Indexes for table `grading_components`
--
ALTER TABLE `grading_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `fk_grading_components_section_config` (`section_config_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_parent` (`parent_id`),
  ADD KEY `idx_order` (`order_index`),
  ADD KEY `idx_active` (`is_active`);

--
-- Indexes for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  ADD PRIMARY KEY (`ScoreID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_role_menu` (`role_id`,`menu_id`),
  ADD KEY `idx_role` (`role_id`),
  ADD KEY `idx_menu` (`menu_id`);

--
-- Indexes for table `section_grading_configs`
--
ALTER TABLE `section_grading_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_section_config` (`subject_id`,`course`,`year`,`section`,`academic_year`,`semester`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SettingKey` (`SettingKey`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentNo` (`StudentNo`),
  ADD KEY `idx_student_no` (`StudentNo`),
  ADD KEY `idx_surname` (`Surname`),
  ADD KEY `idx_course` (`Course`),
  ADD KEY `idx_status` (`Status`),
  ADD KEY `idx_year` (`Year`),
  ADD KEY `idx_section` (`Section`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `student_devices`
--
ALTER TABLE `student_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_device` (`StudentNo`,`device_id`),
  ADD KEY `idx_student_device` (`StudentNo`),
  ADD KEY `idx_last_seen` (`last_seen`),
  ADD KEY `idx_trust_level` (`trust_level`);

--
-- Indexes for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student_component` (`student_no`,`component_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Indexes for table `student_import_logs`
--
ALTER TABLE `student_import_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_imported_by` (`imported_by`),
  ADD KEY `idx_import_date` (`import_date`);

--
-- Indexes for table `student_total_grades`
--
ALTER TABLE `student_total_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student_subject_total` (`student_no`,`subject_id`),
  ADD KEY `idx_student_no` (`student_no`),
  ADD KEY `idx_subject_id` (`subject_id`),
  ADD KEY `idx_final_percentage` (`final_percentage`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_code` (`subject_code`),
  ADD UNIQUE KEY `unique_subject_code` (`subject_code`),
  ADD KEY `idx_subject_code` (`subject_code`),
  ADD KEY `idx_subject_name` (`subject_name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_course` (`course`),
  ADD KEY `idx_major` (`major`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`),
  ADD KEY `idx_key` (`setting_key`);

--
-- Indexes for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_teacher_class` (`teacher_id`,`class_record_id`),
  ADD KEY `idx_teacher` (`teacher_id`),
  ADD KEY `idx_class` (`class_record_id`),
  ADD KEY `idx_assigned_by` (`assigned_by`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_teacher_role` (`teacher_role`);

--
-- Indexes for table `term_grades`
--
ALTER TABLE `term_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student_term` (`student_id`,`term`),
  ADD KEY `idx_class` (`class_id`),
  ADD KEY `idx_student` (`student_id`),
  ADD KEY `idx_term` (`term`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `test_grading_categories`
--
ALTER TABLE `test_grading_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `test_grading_components`
--
ALTER TABLE `test_grading_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `test_subjects`
--
ALTER TABLE `test_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`StudentNo`),
  ADD KEY `upload_date` (`upload_date`),
  ADD KEY `status` (`status`),
  ADD KEY `download_tracking` (`download_count`,`last_download_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_role` (`role_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `fk_users_department` (`department_id`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomplishment_reports`
--
ALTER TABLE `accomplishment_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_attendance`
--
ALTER TABLE `class_attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_enrollments`
--
ALTER TABLE `class_enrollments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class_grades`
--
ALTER TABLE `class_grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_marks`
--
ALTER TABLE `class_marks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_records`
--
ALTER TABLE `class_records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_record_assignments`
--
ALTER TABLE `class_record_assignments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `component_categories`
--
ALTER TABLE `component_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `co_teachers`
--
ALTER TABLE `co_teachers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `file_upload_devices`
--
ALTER TABLE `file_upload_devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `grading_categories`
--
ALTER TABLE `grading_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `grading_components`
--
ALTER TABLE `grading_components`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  MODIFY `ScoreID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `section_grading_configs`
--
ALTER TABLE `section_grading_configs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `student_devices`
--
ALTER TABLE `student_devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_import_logs`
--
ALTER TABLE `student_import_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_total_grades`
--
ALTER TABLE `student_total_grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `term_grades`
--
ALTER TABLE `term_grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_grading_categories`
--
ALTER TABLE `test_grading_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test_grading_components`
--
ALTER TABLE `test_grading_components`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_subjects`
--
ALTER TABLE `test_subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomplishment_reports`
--
ALTER TABLE `accomplishment_reports`
  ADD CONSTRAINT `fk_accomplishment_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_accomplishment_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_accomplishment_submitted_by` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `fk_activity_logs_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `fk_assessments_category` FOREIGN KEY (`category_id`) REFERENCES `grading_categories` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_assessments_component` FOREIGN KEY (`component_id`) REFERENCES `grading_components` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_assessments_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD CONSTRAINT `fk_attendance_class_record` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attendance_recorded_by` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_attendance_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_enrollments`
--
ALTER TABLE `class_enrollments`
  ADD CONSTRAINT `fk_enrollments_class_record` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_enrollments_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_enrollments_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_grades`
--
ALTER TABLE `class_grades`
  ADD CONSTRAINT `fk_grades_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_grades_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `class_enrollments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_marks`
--
ALTER TABLE `class_marks`
  ADD CONSTRAINT `fk_class_marks_class` FOREIGN KEY (`class_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_class_marks_component` FOREIGN KEY (`component_id`) REFERENCES `component_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_class_marks_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_class_marks_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_records`
--
ALTER TABLE `class_records`
  ADD CONSTRAINT `fk_class_records_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_class_records_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `class_record_assignments`
--
ALTER TABLE `class_record_assignments`
  ADD CONSTRAINT `class_record_assignments_ibfk_1` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_record_assignments_ibfk_2` FOREIGN KEY (`assigned_class_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_record_assignments_ibfk_3` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `component_categories`
--
ALTER TABLE `component_categories`
  ADD CONSTRAINT `component_categories_ibfk_1` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_components_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `co_teachers`
--
ALTER TABLE `co_teachers`
  ADD CONSTRAINT `fk_co_teachers_assigned_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_co_teachers_class` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_co_teachers_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_upload_devices`
--
ALTER TABLE `file_upload_devices`
  ADD CONSTRAINT `file_upload_devices_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `uploaded_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `file_upload_devices_ibfk_2` FOREIGN KEY (`device_id`) REFERENCES `student_devices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grading_categories`
--
ALTER TABLE `grading_categories`
  ADD CONSTRAINT `fk_grading_categories_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grading_components`
--
ALTER TABLE `grading_components`
  ADD CONSTRAINT `fk_grading_components_section_config` FOREIGN KEY (`section_config_id`) REFERENCES `section_grading_configs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grading_components_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  ADD CONSTRAINT `quiz_scores_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `section_grading_configs`
--
ALTER TABLE `section_grading_configs`
  ADD CONSTRAINT `section_grading_configs_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD CONSTRAINT `student_grades_ibfk_1` FOREIGN KEY (`student_no`) REFERENCES `students` (`StudentNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_grades_ibfk_3` FOREIGN KEY (`component_id`) REFERENCES `grading_components` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_import_logs`
--
ALTER TABLE `student_import_logs`
  ADD CONSTRAINT `fk_import_logs_imported_by` FOREIGN KEY (`imported_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `student_total_grades`
--
ALTER TABLE `student_total_grades`
  ADD CONSTRAINT `fk_student_total_grades_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  ADD CONSTRAINT `fk_teacher_assignments_assigned_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_teacher_assignments_class` FOREIGN KEY (`class_record_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_teacher_assignments_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `term_grades`
--
ALTER TABLE `term_grades`
  ADD CONSTRAINT `fk_term_grades_class` FOREIGN KEY (`class_id`) REFERENCES `class_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_term_grades_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_term_grades_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_grading_categories`
--
ALTER TABLE `test_grading_categories`
  ADD CONSTRAINT `test_grading_categories_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `test_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_grading_components`
--
ALTER TABLE `test_grading_components`
  ADD CONSTRAINT `test_grading_components_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `test_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_grading_components_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `test_grading_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
