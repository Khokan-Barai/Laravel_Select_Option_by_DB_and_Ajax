-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_check`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `div_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `div_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Barisal', '2023-08-02 18:55:22', '2023-08-02 18:00:00'),
(2, 1, 'Barguna', '2023-08-02 18:55:22', '2023-08-02 18:00:00'),
(3, 1, 'Bhola', '2023-08-02 18:54:25', '2023-08-02 18:54:25'),
(4, 1, 'Jhalokati', '2023-08-02 18:54:25', '2023-08-02 18:54:25'),
(5, 1, 'Patuakhali', '2023-08-02 18:56:31', '2023-08-02 18:56:31'),
(6, 1, 'Pirojpur', '2023-08-02 18:56:31', '2023-08-02 18:56:31'),
(7, 2, 'Brahmanbaria', '2023-08-02 18:57:18', '2023-08-02 18:57:18'),
(8, 2, 'Comilla', '2023-08-02 18:57:18', '2023-08-02 18:57:18'),
(9, 2, 'Chandpur', '2023-08-02 18:57:56', '2023-08-02 18:57:56'),
(10, 2, 'Lakshmipur', '2023-08-02 18:57:56', '2023-08-02 18:57:56'),
(11, 2, 'Noakhali', '2023-08-02 18:58:38', '2023-08-02 18:58:38'),
(12, 2, 'Feni', '2023-08-02 18:58:38', '2023-08-02 18:58:38'),
(13, 2, 'Khagrachhari', '2023-08-02 19:00:22', '2023-08-02 19:00:22'),
(14, 2, 'Rangamati', '2023-08-02 19:00:22', '2023-08-02 19:00:22'),
(15, 2, 'Bandarban', '2023-08-02 19:00:51', '2023-08-02 19:00:51'),
(16, 2, 'Chittagong', '2023-08-02 19:00:51', '2023-08-02 19:00:51'),
(17, 2, 'Cox\'s Bazar', '2023-08-02 19:01:39', '2023-08-09 19:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Barisal', NULL, NULL),
(2, 'Chittagong', NULL, NULL),
(3, 'Dhaka', NULL, NULL),
(4, 'Khulna', NULL, NULL),
(5, 'Mymensingh', NULL, NULL),
(6, 'Rajshahi', NULL, NULL),
(7, 'Rangpur', NULL, NULL),
(8, 'Sylhet', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_div_id_foreign` (`div_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_div_id_foreign` FOREIGN KEY (`div_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
