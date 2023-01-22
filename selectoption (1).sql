-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2023 at 06:20 AM
-- Server version: 8.0.31-0ubuntu0.20.04.2
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selectoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `name`) VALUES
(1, 'Dhaka'),
(2, 'Faridpur'),
(3, 'Gazipur'),
(4, 'Gopalganj'),
(5, 'Jamalpur'),
(6, 'Kishoreganj'),
(7, 'Madaripur'),
(8, 'Manikganj'),
(9, 'Munshiganj'),
(10, 'Mymensingh'),
(11, 'Narayanganj'),
(12, 'Narsingdi'),
(13, 'Netrokona'),
(14, 'Rajbari'),
(15, 'Shariatpur'),
(16, 'Sherpur'),
(17, 'Tangail'),
(18, 'Bogura'),
(19, 'Joypurhat'),
(20, 'Naogaon'),
(21, 'Natore'),
(22, 'Pabna'),
(23, 'Rajshahi'),
(24, 'Sirajgonj'),
(25, 'Dinajpur'),
(26, 'Gaibandha'),
(27, 'Kurigram'),
(28, 'Chapainawabganj'),
(29, 'Lalmonirhat'),
(30, 'Nilphamari'),
(31, 'Panchagarh'),
(32, 'Rangpur'),
(33, 'Thakurgaon'),
(34, 'Barguna'),
(35, 'Barisal'),
(36, 'Bhola'),
(37, 'Jhalokati'),
(38, 'Patuakhali'),
(39, 'Pirojpur'),
(40, 'Bandarban'),
(41, 'Brahmanbaria'),
(42, 'Chandpur'),
(43, 'Chittagong'),
(44, 'Comilla'),
(45, 'Coxs Bazar'),
(46, 'Feni'),
(47, 'Khagrachari'),
(48, 'Lakshmipur'),
(49, 'Noakhali'),
(50, 'Rangamati'),
(51, 'Habiganj'),
(52, 'Maulvibazar'),
(53, 'Sunamganj'),
(54, 'Sylhet'),
(55, 'Bagerhat'),
(56, 'Chuadanga'),
(57, 'Jessore'),
(58, 'Jhenaidah'),
(59, 'Khulna'),
(60, 'Kushtia'),
(61, 'Magura'),
(62, 'Meherpur'),
(63, 'Narail'),
(64, 'Satkhira');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 'District Dhaka', NULL, NULL),
(2, 'Faridpur', NULL, NULL),
(3, 'Gazipur', NULL, NULL),
(4, 'Gopalganj', NULL, NULL),
(5, 'Jamalpur', NULL, NULL),
(6, 'Kishoreganj', NULL, NULL),
(7, 'Madaripur', NULL, NULL),
(8, 'Manikganj', NULL, NULL),
(9, 'Munshiganj', NULL, NULL),
(10, 'Mymensingh', NULL, NULL),
(11, 'Narayanganj', NULL, NULL),
(12, 'Narsingdi', NULL, NULL),
(13, 'Netrokona', NULL, NULL),
(14, 'Rajbari', NULL, NULL),
(15, 'Shariatpur', NULL, NULL),
(16, 'Sherpur', NULL, NULL),
(17, 'Tangail', NULL, NULL),
(18, 'Bogura', NULL, NULL),
(19, 'Joypurhat', NULL, NULL),
(20, 'Naogaon', NULL, NULL),
(21, 'Natore', NULL, NULL),
(22, 'Pabna', NULL, NULL),
(23, 'Rajshahi', NULL, NULL),
(24, 'Sirajgonj', NULL, NULL),
(25, 'Dinajpur', NULL, NULL),
(26, 'Gaibandha', NULL, NULL),
(27, 'Kurigram', NULL, NULL),
(28, 'Chapainawabganj', NULL, NULL),
(29, 'Lalmonirhat', NULL, NULL),
(30, 'Nilphamari', NULL, NULL),
(31, 'Panchagarh', NULL, NULL),
(32, 'Rangpur', NULL, NULL),
(33, 'Thakurgaon', NULL, NULL),
(34, 'Barguna', NULL, NULL),
(35, 'Barisal', NULL, NULL),
(36, 'Bhola', NULL, NULL),
(37, 'Jhalokati', NULL, NULL),
(38, 'Patuakhali', NULL, NULL),
(39, 'Pirojpur', NULL, NULL),
(40, 'Bandarban', NULL, NULL),
(41, 'Brahmanbaria', NULL, NULL),
(42, 'Chandpur', NULL, NULL),
(43, 'Chittagong', NULL, NULL),
(44, 'Comilla', NULL, NULL),
(45, 'Coxs Bazar', NULL, NULL),
(46, 'Feni', NULL, NULL),
(47, 'Khagrachari', NULL, NULL),
(48, 'Lakshmipur', NULL, NULL),
(49, 'Noakhali', NULL, NULL),
(50, 'Rangamati', NULL, NULL),
(51, 'Habiganj', NULL, NULL),
(52, 'Maulvibazar', NULL, NULL),
(53, 'Sunamganj', NULL, NULL),
(54, 'Sylhet', NULL, NULL),
(55, 'Bagerhat', NULL, NULL),
(56, 'Chuadanga', NULL, NULL),
(57, 'Jessore', NULL, NULL),
(58, 'Jhenaidah', NULL, NULL),
(59, 'Khulna', NULL, NULL),
(60, 'Kushtia', NULL, NULL),
(61, 'Magura', NULL, NULL),
(62, 'Meherpur', NULL, NULL),
(63, 'Narail', NULL, NULL),
(64, 'Satkhira', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_donor_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `first_name`, `last_name`, `blood_donor_location`, `created_at`, `updated_at`) VALUES
(3, 'Sadia', 'akter', '3', '2023-01-21 23:17:44', '2023-01-21 23:50:23'),
(4, 'Sadia', 'akter', '6', '2023-01-21 23:17:48', '2023-01-21 23:17:48'),
(5, 'Sadia', 'akter', '15', '2023-01-21 23:17:53', '2023-01-21 23:17:53'),
(6, 'jeba', 'rahman', '5', '2023-01-21 23:29:39', '2023-01-21 23:29:39'),
(7, 'sonia', 'afjal', '18', '2023-01-21 23:30:01', '2023-01-21 23:30:01'),
(8, 'asfee', 'rahman', '11', '2023-01-21 23:31:59', '2023-01-21 23:31:59'),
(9, 'Sadia', 'Chowdhury Luna', '3', '2023-01-21 23:37:45', '2023-01-21 23:37:45'),
(10, 'afja', 'Chowdhury', '10', '2023-01-21 23:52:23', '2023-01-21 23:52:23'),
(11, 'tia', 'khan', '2', '2023-01-21 23:53:07', '2023-01-21 23:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2023_01_21_162518_create_donors_table', 2),
(29, '2023_01_21_165501_create_districts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
