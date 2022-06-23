-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2022 at 03:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qidzmango`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'River', 'This is demo', NULL, NULL),
(2, 'Dining', 'This is demo', '2022-06-22 09:43:36', '2022-06-28 09:43:36'),
(3, 'Entertainment', 'this is testing', '2022-06-22 08:13:57', '2022-06-15 08:13:57'),
(4, 'Education', 'this is testing', '2022-06-08 09:44:41', '2022-06-08 09:44:41'),
(5, 'Beauty & Style', 'this is demo', '2022-06-08 09:45:08', '2022-06-08 09:45:08'),
(6, 'Mo+6re', 'THIS IS DEMO', '2022-06-15 09:46:03', '2022-06-08 09:46:03'),
(9, 'testing', 'tihis is testing', '2022-06-08 23:16:09', NULL),
(10, 'test', 'test demo demo', '2022-06-14 02:22:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspirations`
--

CREATE TABLE `inspirations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inspirations`
--

INSERT INTO `inspirations` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(6, 'BEST DEALS IN TOWN', '1654673067.event_cat_01.jpg', '2022-06-08 01:54:27', NULL),
(7, 'EDITOR\'S PICKS', '1654673098.event_cat_02.png', '2022-06-08 01:54:58', NULL),
(20, 'ADITOR\'S', '1655961088.event_cat_03.png', '2022-06-22 23:41:28', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_06_071206_laratrust_setup_tables', 2),
(6, '2022_06_06_115226_create_categories_table', 3),
(8, '2022_06_07_101010_create_inspirations_table', 4),
(9, '2019_05_03_000001_create_customer_columns', 5),
(10, '2019_05_03_000002_create_subscriptions_table', 5),
(11, '2019_05_03_000003_create_subscription_items_table', 5),
(12, '2022_06_14_114855_create_plans_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CheckController@index', 'Index', 'Check', '2022-06-06 03:06:15', '2022-06-06 03:06:15'),
(2, 'CheckController@create', 'Create', 'Check', '2022-06-06 03:06:15', '2022-06-06 03:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 16, 'auth_token', '0b36ac3560bbfdef19c324b9cccec8d854d1315d161b6a98c0b4cfc00588282e', '[\"*\"]', NULL, '2022-06-13 04:57:41', '2022-06-13 04:57:41'),
(6, 'App\\Models\\User', 1, 'auth_token', '599f03ee23f23114b5381fbce89345e157218260967d7520fbf205833ffc8486', '[\"*\"]', NULL, '2022-06-13 04:58:18', '2022-06-13 04:58:18'),
(7, 'App\\Models\\User', 1, 'auth_token', '62895b625387fb356d2860ac1ca83f72506ec6949a1999c6e7a1cae18bd116e8', '[\"*\"]', NULL, '2022-06-13 04:59:32', '2022-06-13 04:59:32'),
(8, 'App\\Models\\User', 1, 'auth_token', 'c4a5744b2967c7d6ba50d47de4d97b6f200308a12338c0ca03cd12d54b911ba7', '[\"*\"]', NULL, '2022-06-13 05:00:10', '2022-06-13 05:00:10'),
(9, 'App\\Models\\User', 1, 'auth_token', '461f612646e1d59e65188d1b2f8ecb1a5d4b2a2035403ccc11a515053411da97', '[\"*\"]', NULL, '2022-06-13 05:04:55', '2022-06-13 05:04:55'),
(10, 'App\\Models\\User', 1, 'auth_token', 'c072657373b7c1b579c3e4cbb99be6cce03f23a1901296d3b812cb5a1d915df1', '[\"*\"]', NULL, '2022-06-13 05:05:15', '2022-06-13 05:05:15'),
(11, 'App\\Models\\User', 1, 'auth_token', 'c9dba5871ff14dc7ff6a9cfc98215c647d67178d7b6c4e680d0d316a76454301', '[\"*\"]', '2022-06-13 05:17:14', '2022-06-13 05:08:10', '2022-06-13 05:17:14'),
(12, 'App\\Models\\User', 1, 'auth_token', '4f9e00acad102e38aba1479e69e3eb0c81d24be5fb3ca75e678adf69836bc322', '[\"*\"]', '2022-06-13 06:20:10', '2022-06-13 05:16:40', '2022-06-13 06:20:10'),
(13, 'App\\Models\\User', 1, 'auth_token', '350e74c80b11ab7d4fca0724a51f9b3c4367202583548d706d2239641b94538a', '[\"*\"]', NULL, '2022-06-13 07:06:02', '2022-06-13 07:06:02'),
(14, 'App\\Models\\User', 1, 'auth_token', '15357ac69569d73c7e2435d59c8342578cf3ba0e457c0ce62ace382ea0b178cd', '[\"*\"]', '2022-06-13 23:50:35', '2022-06-13 07:06:52', '2022-06-13 23:50:35'),
(15, 'App\\Models\\User', 1, 'auth_token', '2e87403d63bb2bba10cacaf8a3843c3e3552bb2f594e9ff19ba26479a829eea4', '[\"*\"]', NULL, '2022-06-14 00:16:51', '2022-06-14 00:16:51'),
(16, 'App\\Models\\User', 1, 'auth_token', 'e7ad29b2d7295d6dd10fe758ea50afba8216353dca00e121e3ae540bd98cc5da', '[\"*\"]', NULL, '2022-06-14 00:18:44', '2022-06-14 00:18:44'),
(17, 'App\\Models\\User', 1, 'auth_token', '31f6ea686b8dcc57edeb1dda3a044efc4190b828c888b7dbff9298f7c9c86bbb', '[\"*\"]', NULL, '2022-06-14 00:19:27', '2022-06-14 00:19:27'),
(18, 'App\\Models\\User', 1, 'auth_token', '49802b558c14ae3b0f42dde3f7e96059e9739f236868acf69b6273f2a5896afa', '[\"*\"]', NULL, '2022-06-14 00:21:33', '2022-06-14 00:21:33'),
(19, 'App\\Models\\User', 1, 'auth_token', '736a91c52857c6da2e1213b44c4421e545fec203c70cabf8490d10ecdaa68268', '[\"*\"]', NULL, '2022-06-14 00:25:35', '2022-06-14 00:25:35'),
(20, 'App\\Models\\User', 1, 'auth_token', 'db4344df31e3fdb3ce0e3efb5d121c8ace4b3291eb4d7a2032a2b8efcde7a226', '[\"*\"]', NULL, '2022-06-14 00:38:58', '2022-06-14 00:38:58'),
(21, 'App\\Models\\User', 1, 'auth_token', '5fa67b359c3301d2c84d9ebfc9a74fc9fabb488ed6d13dfde27bbe408547b350', '[\"*\"]', NULL, '2022-06-14 01:00:32', '2022-06-14 01:00:32'),
(22, 'App\\Models\\User', 48, 'auth_token', '216e61abdb4ac4141d6668753ff693e47c3b99386f230acd946fa867ba149ab7', '[\"*\"]', NULL, '2022-06-14 01:17:34', '2022-06-14 01:17:34'),
(23, 'App\\Models\\User', 1, 'auth_token', '51d338541fef118309bc485869602a884e7f6649fb3c2c128c71fb4950f2af7f', '[\"*\"]', '2022-06-14 03:24:54', '2022-06-14 01:17:51', '2022-06-14 03:24:54'),
(24, 'App\\Models\\User', 1, 'auth_token', 'caf51983ab215189089460a72c85a52e386a79ad247f85bcc22fcc8e510e9d2b', '[\"*\"]', '2022-06-23 07:13:04', '2022-06-14 03:42:20', '2022-06-23 07:13:04'),
(25, 'App\\Models\\User', 1, 'auth_token', '28d17d67c7fe9d40e3cd02038bb2089f4debb24ccc9e55066c820b904e5cd572', '[\"*\"]', '2022-06-23 07:16:41', '2022-06-23 07:15:19', '2022-06-23 07:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `identifier`, `stripe_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Premium Plan', 'Premium', 'price_1LAW6tSBbKvqfMBZrVXm1FFn', '100', '2022-06-14 07:13:30', '2022-06-14 07:13:30'),
(2, 'Basic Plan', 'Basic', 'price_1LAW4DSBbKvqfMBZXRnyCQ1a', '10', '2022-06-14 07:13:30', '2022-06-14 07:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Can access all features!', '2022-06-06 03:06:16', '2022-06-06 03:06:16'),
(2, 'Buyer', 'Buyer', 'Can access limited features!', '2022-06-06 03:06:16', '2022-06-06 03:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(20, 2, 'Basic', 'sub_1LDhVnSBbKvqfMBZWa1BYoBw', 'canceled', 'price_1LAW4DSBbKvqfMBZXRnyCQ1a', 1, NULL, '2022-06-22 23:04:05', '2022-06-22 22:49:25', '2022-06-22 23:04:05'),
(21, 2, 'Premium', 'sub_1LDhlGSBbKvqfMBZGloww4GB', 'active', 'price_1LAW6tSBbKvqfMBZrVXm1FFn', 1, NULL, NULL, '2022-06-22 23:05:24', '2022-06-22 23:05:24'),
(22, 3, 'Basic', 'sub_1LDhvMSBbKvqfMBZ2uqMzBgk', 'canceled', 'price_1LAW4DSBbKvqfMBZXRnyCQ1a', 1, NULL, '2022-06-22 23:31:47', '2022-06-22 23:15:51', '2022-06-22 23:31:47'),
(23, 3, 'Premium', 'sub_1LDiBESBbKvqfMBZXpYBHH6Y', 'active', 'price_1LAW6tSBbKvqfMBZrVXm1FFn', 1, NULL, NULL, '2022-06-22 23:32:15', '2022-06-22 23:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_product`, `stripe_price`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 20, 'si_LvYdqLl8KKsEoq', 'prod_LsGbBe8gEW1Cft', 'price_1LAW4DSBbKvqfMBZXRnyCQ1a', 1, '2022-06-22 22:49:25', '2022-06-22 22:49:25'),
(3, 21, 'si_LvYt2741Vvo6Yq', 'prod_LsGeeORER7v009', 'price_1LAW6tSBbKvqfMBZrVXm1FFn', 1, '2022-06-22 23:05:24', '2022-06-22 23:05:24'),
(6, 22, 'si_LvZJH2XTYH7IRH', 'prod_LsGbBe8gEW1Cft', 'price_1LAW4DSBbKvqfMBZXRnyCQ1a', 1, '2022-06-22 23:31:24', '2022-06-22 23:31:24'),
(7, 23, 'si_LvZJqtsHwA0hpf', 'prod_LsGeeORER7v009', 'price_1LAW6tSBbKvqfMBZrVXm1FFn', 1, '2022-06-22 23:32:15', '2022-06-22 23:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `google_id`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Admin', 'dipesh', 'patidar', NULL, 'admin@gmail.com', NULL, 1, '$2y$10$9CWRF7aCtLBNe0fZ8.OhLewEAsVsM7IxZbjUmMezXArhibtP3VvY2', NULL, '2022-06-21 04:30:38', '2022-06-21 04:30:38', NULL, NULL, NULL, NULL),
(2, 'user', 'user', 'patel', NULL, 'user@gmail.com', NULL, 0, '$2y$10$kSa.WZuKO6td/zgRTDZPs.Bhd5./zQP8DEK51T8JLounadlsYwxBW', NULL, '2022-06-21 04:30:38', '2022-06-21 23:02:51', 'cus_LvBcTWGPJGfGHF', 'visa', '4242', NULL),
(3, 'deepak', 'deepak', 'jain', '', 'deepak@gmail.com', '2022-06-23 04:43:29', 0, '$2y$10$kSa.WZuKO6td/zgRTDZPs.Bhd5./zQP8DEK51T8JLounadlsYwxBW', NULL, '2022-06-23 04:43:29', '2022-06-22 23:15:48', 'cus_LvZ3wkN7nQp5aL', 'visa', '4242', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inspirations`
--
ALTER TABLE `inspirations`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspirations`
--
ALTER TABLE `inspirations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
