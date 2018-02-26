-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 26, 2018 at 06:54 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzd`
--
CREATE DATABASE IF NOT EXISTS `uzd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `uzd`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text,
  `done` tinyint(4) DEFAULT NULL,
  `description` text,
  `user` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `done`, `description`, `user`) VALUES
(14, 'Uzduotis 1', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pellentesque laoreet mattis. Donec ultricies id nisl eu tempus. Mauris hendrerit nisi at neque tempus consectetur. Curabitur diam urna, pellentesque quis iaculis non, fringilla eget tortor. Donec eu feugiat nibh, porta malesuada tortor. Praesent quis eros nec enim gravida fringilla. Nunc ut elementum metus, interdum mollis lectus. Aenean eget tempus orci. Duis consequat nunc ligula, ut tempor purus tincidunt a. Nullam iaculis cursus dignissim. Sed quis augue tincidunt, cursus sem pharetra, condimentum sem. Quisque at suscipit ligula. Proin eget ipsum lacinia, varius neque id, pulvinar nisl. Sed posuere dignissim dolor quis facilisis. Vestibulum porta rhoncus lectus id accumsan.', 'user1'),
(15, 'Uzduotis 2', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pellentesque laoreet mattis. Donec ultricies id nisl eu tempus. Mauris hendrerit nisi at neque tempus consectetur. Curabitur diam urna, pellentesque quis iaculis non, fringilla eget tortor. Donec eu feugiat nibh, porta malesuada tortor. Praesent quis eros nec enim gravida fringilla. Nunc ut elementum metus, interdum mollis lectus. Aenean eget tempus orci. Duis consequat nunc ligula, ut tempor purus tincidunt a. Nullam iaculis cursus dignissim. Sed quis augue tincidunt, cursus sem pharetra, condimentum sem. Quisque at suscipit ligula. Proin eget ipsum lacinia, varius neque id, pulvinar nisl. Sed posuere dignissim dolor quis facilisis. Vestibulum porta rhoncus lectus id accumsan.', 'user2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'vitalijusdagelis@yahoo.com', '$2y$10$gOkNyEzbyqEAytDtsu/eMeVJxLeFB5ePEyLUdjVNC5Djvy5RCFQpy', 'M51B13cOl9ftjBrR9triIzpm2S6RaFxvLImWNho56ngCcEyPdr3XMnwtaW5D', '2018-02-22 16:09:12', '2018-02-22 16:09:12'),
(3, 'user1', 'user1@one.com', '$2y$10$Hl6o77fwcntMJXD/Zt1Ic.70A9nPnr3PKHeCbtLMhXqigUurpnNAO', '8oDtbZrOm06WJTRAoaHDblo3pRvVw5x35x7jUzXcckuJUUzW7A6x31kaBZ6B', '2018-02-23 03:13:29', '2018-02-23 03:13:29'),
(4, 'user2', 'user2@one.com', '$2y$10$0BhPsnSJcCC1KYkcqSGeuuWmCvHG6o.4THrBaWa1LzPcC1aA0DlNy', 'F0NaffZzoohbcbFWlyasLPoDBhIP6RrrcpCS2w2niFzEQ970afBzf0i2vXvP', '2018-02-23 03:13:56', '2018-02-23 03:13:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
