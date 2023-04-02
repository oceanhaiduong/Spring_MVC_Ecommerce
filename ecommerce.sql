-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2023 at 01:03 PM
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
(19, 'Kem Chống Nắng Dạng Xịt Heliocare Spray SPF 50', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-1.png', NULL, NULL, 2, 91000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(20, 'Son dưỡng môi Collagen Murad Rapid Collagen Infusion for Lip', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-3.png', NULL, NULL, 2, 65000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(21, 'Son dưỡng môi Addict Lipstick Dior', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-5.png', NULL, NULL, 2, 29000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(22, 'Serum giúp giảm nám chống lão hóa da Rapid Age Spot and', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-6.png', NULL, NULL, 2, 11000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(23, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(24, 'hello world', 'dawdwalidhwaoidhwaidhwaid\"', 'small-Murad-Redness-Therapy-Travel-Set-a.png', NULL, NULL, 2, 9000, NULL),
(25, 'hello world', 'dawdwalidhwaoidhwaidhwaid\"\"\"\"\"\"\"\"\"\"\"', 'product1.jpg', NULL, NULL, 1, 110000, NULL),
(27, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(28, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(29, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product3.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(30, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(31, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product4.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(32, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product1.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(33, 'hello world', 'dawdwalidhwaoidhwaidhwaid', 'product1.jpg', NULL, NULL, 2, 9000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(34, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', NULL, NULL, 3, 6351000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(35, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-7.png', NULL, NULL, 1, 2691000, 'D:/Java spring/webBH/src/main/webapp/template/img/'),
(36, 'fsdf', 'sdfsdfsdfsd\"', 'product-4.png', '2023-03-26 10:50:11', '2023-03-26 10:54:35', 1, 20400, 'D:/Java spring/webBH/src/main/webapp/template/img/');

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
(5, 'mặt'),
(6, 'MÅ©i'),
(7, 'oole'),
(9, 'nếu nếu nếu');

-- --------------------------------------------------------

--
-- Table structure for table `user_s`
--

CREATE TABLE `user_s` (
  `id` int(11) NOT NULL,
  `username` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `user_role` varchar(100) DEFAULT NULL,
  `enabled` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_s`
--

INSERT INTO `user_s` (`id`, `username`, `password`, `user_role`, `enabled`) VALUES
(1, 'dbadmin1', '12345', 'ADMIN', 1),
(2, 'dbuser1', '123456', 'USER', 1),
(4, 'dbuser2', '12345', NULL, 0),
(3, 'dbuser3', '12345', NULL, 0),
(5, 'dbuser4', '12345', 'USER', 1);

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
-- Indexes for table `user_s`
--
ALTER TABLE `user_s`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_s`
--
ALTER TABLE `user_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
