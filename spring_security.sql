-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2023 at 03:29 PM
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
  `price_product` int(100) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `content`, `img_path`, `created_at`, `updated_at`, `category_id`, `price_product`, `path`) VALUES
(37, 'Bộ kit chống lão hóa Murad Age Reform Travel Set', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-4.png', '2023-03-28 10:45:13', '2023-03-28 10:45:13', 1, 1465000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(38, 'Bộ kit Murad Better Skin Bonus GWP', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-7.png', '2023-03-28 14:34:48', '2023-03-28 14:34:48', 3, 1806000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(39, 'Nước Hoa Hồng Cho Da Mụn Murad Clarifying Toner', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:36:17', '2023-03-28 14:36:17', 4, 752000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(40, 'Muối trị liệu toàn thân Hydro Active Mineral Salts Dermalogica', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-4.png', '2023-03-28 14:36:54', '2023-03-28 14:36:54', 5, 1085000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(41, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', '\'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:39:12', '2023-03-28 14:39:12', 1, 690000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(42, 'Kem giúp giảm mụn Neostrata Spot Treatment', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_6.jpg', '2023-03-31 06:15:58', '2023-03-31 06:15:58', 3, 698000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(43, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(44, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 2, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(45, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 2, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(46, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(47, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 1, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(48, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(49, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(50, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 2, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(51, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(52, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 1, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(53, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(54, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(55, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 2, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(56, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(57, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 1, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(58, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(59, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 1, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(60, 'Vitamin C điều giúp giảm nám đốm nâu Mesoestetic Ampoules of', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_9.jpg', '2023-03-31 07:46:36', '2023-03-31 07:46:36', 5, 2457400, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(61, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', '\'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:39:12', '2023-03-28 14:39:12', 1, 690000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(62, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', '\'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:39:12', '2023-03-28 14:39:12', 1, 690000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(63, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', '\'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:39:12', '2023-03-28 14:39:12', 1, 690000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img');

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
(4, 'mắt'),
(5, 'mặt');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
