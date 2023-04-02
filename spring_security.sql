-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 02:25 PM
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
-- Table structure for table `bills_detail`
--

CREATE TABLE `bills_detail` (
  `id` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `totalQuanity` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_product` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills_detail`
--

INSERT INTO `bills_detail` (`id`, `totalPrice`, `totalQuanity`, `status`, `id_product`, `id_bill`, `created_at`, `updated_at`) VALUES
(1, 0, 1465000, NULL, 37, 9, NULL, NULL),
(2, 1465000, 1, NULL, 37, 10, NULL, NULL),
(3, 1806000, 1, NULL, 38, 10, NULL, NULL),
(4, 752000, 1, NULL, 39, 10, NULL, NULL),
(5, 1085000, 1, NULL, 40, 10, NULL, NULL),
(6, 3612000, 2, NULL, 38, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bills_order`
--

CREATE TABLE `bills_order` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `customer_Address` varchar(200) NOT NULL,
  `customer_Email` varchar(128) NOT NULL,
  `customer_Name` varchar(60) NOT NULL,
  `customer_Phone` varchar(128) NOT NULL,
  `customer_Note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills_order`
--

INSERT INTO `bills_order` (`id`, `amount`, `quantity`, `customer_Address`, `customer_Email`, `customer_Name`, `customer_Phone`, `customer_Note`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(2, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(3, 0, 0, '', 'hoang@gmail.com', 'hoang hac', '0161919184', '', NULL, NULL),
(4, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(5, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(6, 0, 0, 'TP HCM1', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(7, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(8, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(9, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(10, 0, 0, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL),
(11, 3612000, 2, 'TP HCM', 'hoang@gmail.com', 'hoang hac', '0161919184', 'khong co gi', NULL, NULL);

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
(42, 'Kem giúp giảm mụn Neostrata Spot Treatment', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.\"', 'cosmetic_6.jpg', '2023-03-31 06:15:58', '2023-04-01 14:03:26', 3, 698000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
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
(63, 'Mascara Trang Điểm Dưỡng Mi RevitaLash VOLUMIZING Mascara', '\'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'product-8.png', '2023-03-28 14:39:12', '2023-03-28 14:39:12', 1, 690000, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\webBH\\template\\img'),
(64, 'Serum Đặc giúp giảm Nám, Sạm, Thiếu Sức Sống Mesoestetic', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_10.jpg', '2023-04-01 07:16:49', '2023-04-01 07:16:49', 4, 2323600, 'D:\\Java spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\webBH\\template\\img'),
(65, 'Toner hồi sinh da Murad Hydrating Toner', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic.jpg', '2023-04-01 07:28:38', '2023-04-01 07:28:38', 4, 819000, 'D:/Java spring/webBH/src/main/webapp/template/img'),
(66, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching Essence Pro', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_10.jpg', '2023-04-01 08:34:01', '2023-04-01 08:34:01', 3, 6351000, 'D:/Java spring/webBH/src/main/webapp/template/img'),
(67, 'Gel tắm Dermalogica Conditioning Body Wash 500ml', 'Kem giúp giảm nám The Perfect Bleaching Cream - sản phẩm giúp giảm nám chuyên sâu giúp cải thiện da sạm nám, nhiều đốm nâu, gia tăng đàn hồi, làm mịn da hiệu quả.', 'cosmetic_5.jpg', '2023-04-01 09:10:13', '2023-04-01 09:10:13', 4, 1877000, 'D:/Java spring/webBH/src/main/webapp/template/img');

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
  `enabled` smallint(6) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_s`
--

INSERT INTO `user_s` (`id`, `username`, `password`, `user_role`, `enabled`, `email`, `phone`, `lastname`) VALUES
(1, 'dbadmin1', '12345', 'ADMIN', 1, 'hoang@gmail.com', '0161919184', 'hoang hac'),
(2, 'dbuser1', '123456', 'USER', 1, 'User2@gmail.com', '2828280828', 'xuan hien'),
(5, 'dbuser4', '12345', 'USER', 1, 'User3@gmail.com', '0342835846', 'xuan giang'),
(6, 'dbuser5', '12345', 'USER', 1, 'quocdung@gmail.com', '840988888888', 'quoc dung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_PRO_FK` (`id_product`),
  ADD KEY `bill_detail_BILL_FK` (`id_bill`);

--
-- Indexes for table `bills_order`
--
ALTER TABLE `bills_order`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bills_detail`
--
ALTER TABLE `bills_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bills_order`
--
ALTER TABLE `bills_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_s`
--
ALTER TABLE `user_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD CONSTRAINT `bill_detail_BILL_FK` FOREIGN KEY (`id_bill`) REFERENCES `bills_order` (`id`),
  ADD CONSTRAINT `bill_detail_PRO_FK` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `type_product` (`id_type`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
