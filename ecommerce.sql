-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2023 at 01:39 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_security`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `price_product` int(10) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `content`, `img_path`, `created_at`, `updated_at`, `category_id`, `price_product`, `path`) VALUES
(17, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(18, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(19, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(20, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(21, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(22, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(23, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(24, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(25, 'hello world', 'dawdwalidhwaoidhwaidhwaid\"\"\"\"\"\"\"\"\"\"\"', 'product1.jpg', NULL, NULL, 1, 110000, NULL),
(27, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(28, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(29, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product3.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(30, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(31, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(32, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product1.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(33, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product1.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int(50) NOT NULL,
  `name_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id_type`, `name_type`) VALUES
(1, 'chăm sóc da mặt'),
(2, 'chăm sóc body'),
(3, 'uống đẹp da'),
(4, 'mắtt'),
(5, 'mặt');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERNAME` varchar(36) NOT NULL,
  `PASSWORD` varchar(36) NOT NULL,
  `ENABLED` smallint(6) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ho_ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERNAME`, `PASSWORD`, `ENABLED`, `email`, `ho_ten`, `dien_thoai`, `dia_chi`) VALUES
('dbadmin1', '12345', 1, NULL, NULL, NULL, NULL),
('dbuser1', '12345', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `ROLE_ID` varchar(50) NOT NULL,
  `USERNAME` varchar(36) NOT NULL,
  `USER_ROLE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`ROLE_ID`, `USERNAME`, `USER_ROLE`) VALUES
('2', 'dbadmin1', 'ADMIN'),
('3', 'dbadmin1', 'USER'),
('1', 'dbuser1', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`category_id`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`ROLE_ID`),
  ADD UNIQUE KEY `USER_ROLE_UK` (`USERNAME`,`USER_ROLE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `type_product` (`id_type`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
