-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 02:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bunga`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 16),
(2, 13),
(2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(11, '::1', 'admin1', NULL, '2023-05-23 12:29:38', 0),
(12, '::1', 'admin1@gmail.com', 11, '2023-05-23 12:29:53', 1),
(13, '::1', 'admin1@gmail.com', 11, '2023-05-31 17:51:26', 1),
(14, '::1', 'user@gmail.com', 12, '2023-06-01 07:09:55', 1),
(15, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:15:16', 1),
(16, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:17:03', 1),
(17, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:22:06', 1),
(18, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:22:57', 1),
(19, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:26:27', 1),
(20, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:28:46', 1),
(21, '::1', 'user1@gmail.com', 13, '2023-06-01 07:32:33', 1),
(22, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:33:45', 1),
(23, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:35:29', 1),
(24, '::1', 'admin@gmail.com', 14, '2023-06-01 07:45:01', 1),
(25, '::1', 'admin@gmail.com', 14, '2023-06-01 07:45:53', 1),
(26, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:46:57', 1),
(27, '::1', 'admin1@gmail.com', 11, '2023-06-01 07:54:09', 1),
(28, '::1', 'admin1', NULL, '2023-06-01 08:10:03', 0),
(29, '::1', 'admin1@gmail.com', 11, '2023-06-01 08:10:16', 1),
(30, '::1', 'admin1', NULL, '2023-06-01 10:34:48', 0),
(31, '::1', 'admin1@gmail.com', 11, '2023-06-01 10:34:55', 1),
(32, '::1', 'admin1@gmail.com', 11, '2023-06-05 06:38:22', 1),
(33, '::1', 'admin1', NULL, '2023-06-05 06:53:51', 0),
(34, '::1', 'admin1', NULL, '2023-06-05 06:54:00', 0),
(35, '::1', 'admin1@gmail.com', 11, '2023-06-05 06:54:09', 1),
(36, '::1', 'user1@gmail.com', 13, '2023-06-05 06:54:26', 1),
(37, '::1', 'admin1@gmail.com', 11, '2023-06-05 07:05:37', 1),
(38, '::1', 'user1@gmail.com', 13, '2023-06-05 07:05:55', 1),
(39, '::1', 'admin1@gmail.com', 11, '2023-06-05 07:18:18', 1),
(40, '::1', 'admin1', NULL, '2023-06-05 10:28:49', 0),
(41, '::1', 'admin1', NULL, '2023-06-05 10:29:00', 0),
(42, '::1', 'admin1', NULL, '2023-06-05 10:29:10', 0),
(43, '::1', 'admin@gmail.com', 16, '2023-06-05 10:31:53', 1),
(44, '::1', 'admin1', NULL, '2023-06-05 12:51:28', 0),
(45, '::1', 'admin1', NULL, '2023-06-05 12:51:38', 0),
(46, '::1', 'admin@gmail.com', 16, '2023-06-05 12:51:47', 1),
(47, '::1', 'user1@gmail.com', 13, '2023-06-05 14:44:35', 1),
(48, '::1', 'user1@gmail.com', 13, '2023-06-05 22:54:59', 1),
(49, '::1', 'user1@gmail.com', 13, '2023-06-07 09:19:04', 1),
(50, '::1', 'admin1', NULL, '2023-06-07 11:25:19', 0),
(51, '::1', 'admin1', NULL, '2023-06-07 11:25:27', 0),
(52, '::1', 'admin1', NULL, '2023-06-07 11:25:35', 0),
(53, '::1', 'admin@gmail.com', 16, '2023-06-07 11:25:58', 1),
(54, '::1', 'user1@gmail.com', 13, '2023-06-07 12:48:52', 1),
(55, '::1', 'user1@gmail.com', 13, '2023-06-08 04:16:10', 1),
(56, '::1', 'admin@gmail.com', 16, '2023-06-08 05:02:10', 1),
(57, '::1', 'admin@gmail.com', 16, '2023-06-08 08:57:29', 1),
(58, '::1', 'admin@gmail.com', 16, '2023-06-08 15:46:45', 1),
(59, '::1', 'admin@gmail.com', 16, '2023-06-10 13:13:33', 1),
(60, '::1', 'admin@gmail.com', 16, '2023-06-10 13:34:28', 1),
(61, '::1', 'admin@gmail.com', 16, '2023-06-10 14:27:20', 1),
(62, '::1', 'admin@gmail.com', 16, '2023-06-11 03:19:46', 1),
(63, '::1', 'admin@gmail.com', 16, '2023-06-11 07:58:08', 1),
(64, '::1', 'admin@gmail.com', 16, '2023-06-11 08:00:21', 1),
(65, '::1', 'admin@gmail.com', 16, '2023-06-11 09:18:00', 1),
(66, '::1', 'admin@gmail.com', 16, '2023-06-11 23:18:56', 1),
(67, '::1', 'user1@gmail.com', 13, '2023-06-12 06:13:09', 1),
(68, '::1', 'admin', NULL, '2023-06-12 12:22:00', 0),
(69, '::1', 'admin@gmail.com', 16, '2023-06-12 12:22:12', 1),
(70, '::1', 'user', NULL, '2023-06-12 16:07:11', 0),
(71, '::1', 'user1@gmail.com', 13, '2023-06-12 16:07:23', 1),
(72, '::1', 'admin1', NULL, '2023-06-12 16:08:24', 0),
(73, '::1', 'user1@gmail.com', 13, '2023-06-12 16:08:35', 1),
(74, '::1', 'admin1', NULL, '2023-06-12 16:09:42', 0),
(75, '::1', 'admin1', NULL, '2023-06-12 16:09:52', 0),
(76, '::1', 'admin1', NULL, '2023-06-12 16:10:04', 0),
(77, '::1', 'admin1', NULL, '2023-06-12 16:10:13', 0),
(78, '::1', 'admin@gmail.com', 16, '2023-06-12 16:10:23', 1),
(79, '::1', 'user1@gmail.com', 13, '2023-06-13 11:17:02', 1),
(80, '::1', 'user1@gmail.com', 13, '2023-06-13 14:24:45', 1),
(81, '::1', 'user1', NULL, '2023-06-13 14:25:18', 0),
(82, '::1', 'user1', NULL, '2023-06-13 14:25:29', 0),
(83, '::1', 'user1', NULL, '2023-06-13 14:25:43', 0),
(84, '::1', 'user1@gmail.com', 13, '2023-06-13 14:25:54', 1),
(85, '::1', 'user1@gmail.com', 13, '2023-06-14 07:51:02', 1),
(86, '::1', 'admin1', NULL, '2023-06-14 08:11:03', 0),
(87, '::1', 'admin@gmail.com', 16, '2023-06-14 08:11:12', 1),
(88, '::1', 'user1@gmail.com', 13, '2023-06-14 12:26:32', 1),
(89, '::1', 'admin1', NULL, '2023-06-14 12:27:04', 0),
(90, '::1', 'admin@gmail.com', 16, '2023-06-14 12:27:13', 1),
(91, '::1', 'user1', NULL, '2023-06-14 12:34:56', 0),
(92, '::1', 'user1@gmail.com', 13, '2023-06-14 12:35:08', 1),
(93, '::1', 'admin1', NULL, '2023-06-14 13:14:05', 0),
(94, '::1', 'admin1', NULL, '2023-06-14 13:14:16', 0),
(95, '::1', 'admin@gmail.com', 16, '2023-06-14 13:14:26', 1),
(96, '::1', 'admin@gmail.com', 16, '2023-06-14 17:13:52', 1),
(97, '::1', 'admin@gmail.com', 16, '2023-06-15 01:16:05', 1),
(98, '::1', 'admin@gmail.com', 16, '2023-06-17 12:03:38', 1),
(99, '::1', 'user', NULL, '2023-06-17 13:01:36', 0),
(100, '::1', 'user1@gmail.com', 13, '2023-06-17 13:01:48', 1),
(101, '::1', 'admin@gmail.com', 16, '2023-06-17 13:24:24', 1),
(102, '::1', 'admin', NULL, '2023-06-18 04:25:12', 0),
(103, '::1', 'admin@gmail.com', 16, '2023-06-18 04:25:21', 1),
(104, '::1', 'admin', NULL, '2023-06-18 04:45:17', 0),
(105, '::1', 'admin', NULL, '2023-06-18 04:45:33', 0),
(106, '::1', 'admin', NULL, '2023-06-18 04:45:46', 0),
(107, '::1', 'user1', NULL, '2023-06-18 04:46:36', 0),
(108, '::1', 'admin', NULL, '2023-06-18 04:47:52', 0),
(109, '::1', 'admin', NULL, '2023-06-18 04:49:31', 0),
(110, '::1', 'admin@gmail.com', 16, '2023-06-18 11:57:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'manage all users'),
(2, 'manage-profile', 'manage user\'s profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1684387080, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `img_produk` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `stok` int(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `img_produk`, `harga`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(30, 'bungan bangke', 'raf.png', 400000, 1, 'sangat bau banu bangke', '2023-06-17 12:26:52', '2023-06-17 12:26:52'),
(31, 'asuuuuuu', 'buketbunga.jfif', 1000, 1, 'suuuu', '2023-06-17 12:57:59', '2023-06-17 12:57:59'),
(32, 'sasasasasasasas', 'karangan.jpg', 222, 33, 'wwww', '2023-06-17 13:25:40', '2023-06-17 13:25:40'),
(33, 'sasa', 'buketbunga_1.jfif', 2, 2, 'sas', '2023-06-17 13:29:34', '2023-06-17 13:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fulname` varchar(225) DEFAULT NULL,
  `user_image` varchar(225) NOT NULL DEFAULT 'default.svg',
  `alamat` varchar(255) NOT NULL,
  `nohp` int(14) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fulname`, `user_image`, `alamat`, `nohp`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'user1@gmail.com', 'user1', NULL, 'default.svg', '', 0, '$2y$10$SYVmrq3rlJ96LNsA6YjiWOZg9edvUJpoPNM9JQtbBfykkXDvL1WKW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-01 07:32:16', '2023-06-01 07:32:16', NULL),
(16, 'admin@gmail.com', 'admin', 'Sandi maulana', 'default.svg', '', 0, '$2y$10$Tx9KXUbPpA5T8.yAS3i4heOLtF9c25yOAbNKQGvaRsINRxrBq3JM2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-05 10:30:26', '2023-06-05 10:30:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
