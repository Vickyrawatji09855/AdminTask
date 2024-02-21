-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 05:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admintask`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_20_095002_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `images`, `created_at`, `updated_at`) VALUES
(1, 'some updated', '[\"Screenshot 2023-03-25 135348.png\"]', '2024-02-20 05:53:30', '2024-02-20 22:18:37'),
(5, 'some updated', '[\"Screenshot 2023-03-25 112411.png\"]', '2024-02-20 07:09:03', '2024-02-20 22:19:04'),
(6, 'some task', '[\"Screenshot 2023-03-25 112411.png\"]', '2024-02-20 07:11:00', '2024-02-20 07:11:00'),
(7, 'some task', '[\"Screenshot 2023-03-25 135455.png\",\"Screenshot 2023-03-25 110728.png\",\"Screenshot 2023-03-25 112411.png\"]', '2024-02-20 13:53:14', '2024-02-20 13:53:14'),
(8, 'some task', '[\"Screenshot 2023-03-25 135455.png\",\"Screenshot 2023-03-25 110728.png\",\"Screenshot 2023-03-25 112411.png\"]', '2024-02-01 13:54:49', '2024-02-20 13:54:49'),
(9, 'some task', '[\"Screenshot 2023-03-25 155527.png\",\"Screenshot 2023-03-25 135336.png\"]', '2024-02-20 15:09:29', '2024-02-20 15:09:29'),
(10, 'some task', '[\"Screenshot_20230322_145918.png\"]', '2024-02-20 15:11:12', '2024-02-20 15:11:12'),
(11, 'some task', '[\"Screenshot_20230302_125618.png\"]', '2024-02-20 15:12:17', '2024-02-20 15:12:17'),
(12, 'some task', '[\"Screenshot 2023-03-25 131756.png\"]', '2024-02-20 15:14:51', '2024-02-20 15:14:51'),
(13, 'some task', '[\"Screenshot 2023-03-25 131756.png\"]', '2024-02-20 15:18:25', '2024-02-20 15:18:25'),
(14, 'some task', '[\"Screenshot_20230315_092557.png\"]', '2024-02-20 22:06:30', '2024-02-20 22:06:30'),
(15, 'some task', '[\"Screenshot_20230228_111224.png\"]', '2024-02-20 22:09:30', '2024-02-20 22:09:30'),
(16, 'some task', '[\"Screenshot 2023-03-25 112032.png\"]', '2024-02-20 22:16:42', '2024-02-20 22:16:42'),
(17, 'some task', '[\"Screenshot 2023-03-25 135455.png\"]', '2024-02-20 22:17:13', '2024-02-20 22:17:13'),
(18, 'some task', '[\"Screenshot 2023-03-26 121947.png\"]', '2024-02-20 22:18:00', '2024-02-20 22:18:00'),
(19, 'some task', '[\"Screenshot 2023-03-25 135455.png\",\"Screenshot 2023-03-25 135336.png\"]', '2024-02-20 22:40:23', '2024-02-20 22:40:23'),
(20, 'some task', '[\"Screenshot 2023-03-25 135336.png\"]', '2024-02-20 22:46:49', '2024-02-20 22:46:49'),
(21, 'some task', '[\"Screenshot 2023-03-25 135455.png\"]', '2024-01-01 22:49:43', '2024-02-20 22:49:43'),
(22, 'some task', '[\"Screenshot_20230228_114906.png\"]', '2024-02-20 22:52:37', '2024-02-20 22:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vicky', 'rawatji@gmail', NULL, '$2y$12$1lzZ23O0Z6Up96kHx9c1w.nQwi3i88z6xotqJGYhv47pdkZAbv/bm', NULL, '2024-02-20 01:06:31', '2024-02-20 01:06:31');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
