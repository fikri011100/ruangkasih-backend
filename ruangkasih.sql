-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2019 at 03:08 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangkasih`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_category`, `image_category`, `created_at`, `updated_at`) VALUES
(1, 'Donasi', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', '2019-09-14 21:06:31', '2019-09-14 21:06:31'),
(3, 'zakat', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', '2019-09-14 21:06:31', '2019-09-14 21:06:31'),
(4, 'yatim piatu', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', '2019-09-15 01:38:08', '2019-09-15 01:38:08'),
(5, 'ngidol', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', '2019-09-27 21:37:50', '2019-09-27 21:37:50'),
(6, 'ngidol', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', '2019-09-27 21:38:16', '2019-09-27 21:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_received` int(11) NOT NULL,
  `donator_total` int(11) NOT NULL,
  `donation_user` int(11) NOT NULL,
  `donation_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_category` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donation_title`, `donation_image`, `donation_received`, `donator_total`, `donation_user`, `donation_end`, `donation_category`, `created_at`, `updated_at`) VALUES
(1, 'Bantu Faiz menemukan cinta sejatinya yang bernama ZAHRA', 'https://www.arrobitoh.or.id/uploads/page/donasi.png', 200000, 2, 1, '2019-09-15 04:06:31', 1, '2019-09-15 03:03:49', '2019-10-07 19:36:53'),
(2, 'Mendonasikan Hatiku kepadamu', 'http://localhost:8000/image/08-03_git.png', 0, 0, 2, '2019-09-30 04:06:31', 1, '2019-09-23 01:01:03', '2019-09-23 01:01:03'),
(3, 'donasi temen gk guna', 'http://localhost:8000/image/08-55_66134652_178425563181564_5927249367959604317_n.jpg', 0, 0, 1, '2019-09-30 04:06:31', 1, '2019-09-23 01:02:55', '2019-09-23 01:02:55'),
(4, 'Mendonasikan Hatimu', 'http://192.168.100.15:8000/image/04-42_WhatsApp Image 2019-09-26 at 11.17.52 AM.jpeg', 0, 0, 1, '2019-09-15 04:06:31', 1, '2019-09-27 21:51:42', '2019-09-27 21:51:42'),
(5, 'Mendonasikan Hatimu', 'http://192.168.100.15:8000/image/05-13_WhatsApp Image 2019-09-26 at 11.17.52 AM.jpeg', 0, 0, 2, '2019-09-15 04:06:31', 5, '2019-09-27 22:07:13', '2019-09-27 22:07:13'),
(6, 'Mendonasikan Hatimu di JKT48', 'http://192.168.100.15:8000/image/05-34_EFJ-wJFUcAAWA5a.jfif', 0, 0, 1, '2019-09-15 04:06:31', 5, '2019-09-27 22:09:34', '2019-09-27 22:09:34'),
(7, 'Mendonasikan fixie', 'http://192.168.100.15:8000/image/05-45_fixed-gear-original.jpg', 0, 0, 1, '2019-09-15 04:06:31', 5, '2019-09-27 22:12:45', '2019-09-27 22:12:45'),
(8, 'Mendonasikan Hatimu', 'http://192.168.100.15:8000/image/05-17_WhatsApp Image 2019-09-26 at 11.17.52 AM.jpeg', 0, 0, 1, '2019-09-15 04:06:31', 5, '2019-10-07 10:20:17', '2019-10-07 10:20:17'),
(9, 'Mendonasikan Hatimu', 'http://localhost:8000/image/02-47_WhatsApp Image 2019-09-26 at 11.17.52 AM.jpeg', 0, 0, 1, '2019-09-15 04:06:31', 5, '2019-10-07 19:31:47', '2019-10-07 19:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `donators`
--

CREATE TABLE `donators` (
  `id_donator` bigint(20) UNSIGNED NOT NULL,
  `donator_user_id` int(11) NOT NULL,
  `donation_id` int(11) NOT NULL,
  `donation_amount` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_validation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donators`
--

INSERT INTO `donators` (`id_donator`, `donator_user_id`, `donation_id`, `donation_amount`, `payment_method`, `payment_validation`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100000, 2, 0, '2019-10-07 19:35:49', '2019-10-07 19:35:49'),
(2, 1, 1, 100000, 2, 0, '2019-10-07 19:36:53', '2019-10-07 19:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_12_150148_add_api_token_on_users_table', 1),
(4, '2019_09_15_030519_create_categories_table', 2),
(5, '2019_09_15_084039_create_donations_table', 3),
(6, '2019_10_07_170703_create_donator_table', 4),
(7, '2019_10_07_171642_create_donator_table', 5),
(8, '2019_10_08_023934_create_payment_method_table', 6),
(9, '2019_10_08_031446_create_payment_method_table', 7);

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
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentmethod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentmethod_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentmethod_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`id`, `paymentmethod_name`, `paymentmethod_image`, `paymentmethod_desc`, `created_at`, `updated_at`) VALUES
(1, 'bca mobile', 'http://localhost:8000/image/03-47_logobca.png', 'Nomor Rekening : 123203123', '2019-10-07 20:15:47', '2019-10-07 20:15:47'),
(2, 'mandiri mobile', 'http://localhost:8000/image/03-35_logomandiri.jpeg', 'Nomor Rekening : 144029321', '2019-10-07 20:17:35', '2019-10-07 20:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bank` int(10) NOT NULL,
  `no_rekening` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `halfbody_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kk_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `api_token`, `phone`, `id_bank`, `no_rekening`, `profile_photo`, `ktp_photo`, `halfbody_photo`, `kk_photo`, `created_at`, `updated_at`) VALUES
(1, 'fikri imasduasdnasidn', 'fikri.im@gmail.com', NULL, '$2y$10$kJdcnDcLaQpZDcW8Oi2lxevjcYGeq5fJEFAGAmyJXZL4XYUzVxHs6', NULL, 'DfEEAwZEggDtHQ9xHcIRSMxubZst9EaSdAV8QOXYapDtvgnHpNmzmyqWZpvv', '081239232392', 1, '144821923', 'http://192.168.100.15:8000/image/06-30_itz.png', 'http://192.168.100.15:8000/image/06-33_jas.jpeg', 'http://192.168.100.15:8000/image/06-22_foto pas 4 x 6.jpg', 'http://192.168.100.15:8000/image/06-50_WhatsApp Image 2019-09-26 at 11.17.52 AM.jpeg', '2019-09-13 07:41:00', '2019-10-15 19:46:39'),
(2, 'fikri.im', 'muhammad.masyhuri@binus.ac.id', NULL, '$2y$10$GB3e/6rPKsD5AYa6K3x8z.t3idbXgY0me4qbEu9UMxAX98IuIlbO2', NULL, 'ntsgyGOs6lAVni2FXWNU9YlUNloKFSjF71IJ45gxFdDmjiy4kCr5j3W5HBMo', '081239232392', 2, '144821934', NULL, NULL, NULL, NULL, '2019-09-16 03:01:27', '2019-10-15 19:47:38'),
(3, 'fikri011100', 'fikri.xm@gmail.com', NULL, '$2y$10$K34DskrnDMl01cMgkeE/D.VIW9aiZZKbWQXte0.kzITF5Pemx7Y1S', NULL, 'JtcyPpIQXIjYELuhvxOEkXIsm7AwzCXBh9WVn1ZbbprKkjSdMg0HR0bp6UCl', '081239232392', 0, '', NULL, NULL, NULL, NULL, '2019-09-27 21:34:19', '2019-09-27 21:34:19'),
(4, 'fikri011101', 'fikri.ia@gmail.com', NULL, '$2y$10$0LNyhVcJP8obpXlEhlZSMurYdx9kN6IpOCh3FXxG8YrZ.qfao/ffq', NULL, 'qHERZDZH1mztogcoVhyQBmZUMwY5WyLts59n1KOD3BRnBC8QGi0qZjFX9anL', '081239232392', 0, '', NULL, NULL, NULL, NULL, '2019-09-27 21:48:26', '2019-09-27 21:48:26'),
(5, 'dhea angelia', 'jkt48dey@binus.ac.id', NULL, '$2y$10$mR7TQ/aalfnpCyszSLthdeYoUrRIsNh2Ac.3Y0nGTu8y6DToljBOG', NULL, 'izpfLVytkduxlQ0OHXockfkgey7Aktqv5kYh42nWvAZ5w47uWjNDURQOPCGv', '081239232392', 0, '', NULL, NULL, NULL, NULL, '2019-09-27 22:51:03', '2019-09-27 22:51:03'),
(6, 'Dhey Angelia Dey', 'dey@jkt48.com', NULL, '$2y$10$6l7Sb09nx6c40Mnrae4QOO1wf8Afzpt8T/.OVr8P8A8yyzm0lMDSm', NULL, 'Hs3lW3KHSgJlXFcUX3PZHU0UPylgLiMsSCu9SVou1rqsrrDNAdex1USE1lNr', '081239232392', 0, '', NULL, NULL, NULL, NULL, '2019-10-13 01:16:49', '2019-10-13 01:16:49'),
(7, 'shania gracia', 'gracia@jkt48.com', NULL, '$2y$10$3NPIonNXFhmlM4LCxK0SYOFt.KsVqW231D9fAjve5naQt/KUL/lx.', NULL, 'zksZblJdpqvow9O8xPzAGIg4bkJsHubdS3qvjMJNUn1lngFwUZyf22wjFV90', '081232939491', 0, '', NULL, NULL, NULL, NULL, '2019-10-15 06:19:15', '2019-10-15 06:19:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id_donator`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donators`
--
ALTER TABLE `donators`
  MODIFY `id_donator` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
