-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 15, 2021 lúc 05:03 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `flower_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Rose', 'h1.jpg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'rose', 0, '2020-06-29 23:58:03', '2021-06-09 22:08:53'),
(2, 'ÁNH NGỌC', 'h2.jfif', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'anh-ngoc', 0, '2020-06-29 23:58:41', '2021-06-09 22:15:11'),
(3, 'THE BLUE SKY', 'h4.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'the-blue-sky', 0, '2020-06-29 23:59:24', '2021-06-09 22:15:25'),
(4, 'NẮNG CƯỜI', 'h5.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'nang-cuoi', 0, '2020-06-29 23:59:49', '2021-06-09 22:15:47'),
(5, 'DIOR', 'hoa3.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'dior', 0, '2020-06-30 00:00:15', '2021-06-09 22:12:18'),
(6, 'HOA TÚ CẦU TÍM', 'hoa6.jpg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'hoa-tu-cau-tim', 0, '2020-06-30 00:42:37', '2021-06-09 22:17:33'),
(7, 'BALENCIAGA', 'hoa7.jpg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'balenciaga', 0, '2020-06-30 00:58:23', '2021-06-09 22:12:36'),
(8, 'PERFECT', 'h1.jpg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'perfect', 0, '2020-06-30 00:59:23', '2021-06-09 22:16:08'),
(9, 'CHLOE', 'h4.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'chloe', 0, '2020-06-30 01:00:14', '2021-06-09 22:13:08'),
(10, 'BURBERRY', 'h2.jfif', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'burberry', 0, '2020-06-30 01:00:48', '2021-06-09 22:12:56'),
(11, 'Vascara', 'h5.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'vascara', 0, '2020-08-22 00:13:06', '2021-06-09 22:13:15'),
(12, 'Charles & Keith', 'hoa3.jpeg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'charles-keith', 0, '2020-08-22 00:19:05', '2021-06-09 22:13:27'),
(13, 'Chloé Faye', 'hoa6.jpg', '7 Đặng Văn Ngữ Hà Nội', '0855225895', 'chloe-faye', 0, '2020-08-22 00:20:46', '2021-06-09 22:13:35'),
(14, 'huowng nguyen', 'apple-logo.jpg', 'asdasd asdsad asd', '0384443449', 'huowng-nguyen', 1, '2021-06-09 03:13:29', '2021-06-09 03:14:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `address`, `phone_no`, `email`, `slug`, `is_deleted`, `created_at`, `updated_at`, `user_id`) VALUES
(22, 'nguyen van a', '123 huy can hoi noi', '0384443456', 'vannv@gmail.com', 'nguyen-van-a', 0, '2021-06-10 21:16:57', '2021-06-10 21:16:57', NULL),
(23, 'nguyen quoc viet', '123 huy cận hà nội', '0384443457', 'quocviet123@gmail.com', 'nguyen-quoc-viet', 0, '2021-06-10 21:18:43', '2021-06-10 21:18:43', 13),
(24, 'tra abc', '123 ho chi minh', '03844434559', 'tra@gmail.com', 'tra-abc', 0, '2021-06-10 23:45:40', '2021-06-10 23:45:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1),
(53, '2020_07_03_021215_add_user_id_to_customers_table', 2),
(54, '2020_07_03_025411_add_foreign_user_id_to_customers_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_status`, `payment_status`, `customer_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(57, 0, 1, 22, 0, '2021-06-10 21:16:57', '2021-06-10 21:19:52'),
(58, 0, 1, 23, 0, '2021-06-10 21:19:12', '2021-06-10 21:19:53'),
(59, 0, 1, 23, 0, '2021-06-10 21:25:06', '2021-06-10 21:25:37'),
(60, 1, 3, 23, 0, '2021-06-10 21:36:58', '2021-06-10 21:50:38'),
(61, 1, 3, 24, 0, '2021-06-10 23:45:40', '2021-06-10 23:45:40'),
(62, 0, 3, 23, 0, '2021-06-11 06:33:20', '2021-06-11 06:34:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `order_id`, `product_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(47, 1, 57, 1, 0, '2021-06-10 21:16:57', '2021-06-10 21:16:57'),
(48, 1, 58, 2, 0, '2021-06-10 21:19:12', '2021-06-10 21:19:12'),
(49, 2, 59, 1, 0, '2021-06-10 21:25:06', '2021-06-10 21:25:06'),
(50, 1, 60, 2, 0, '2021-06-10 21:36:58', '2021-06-10 21:36:58'),
(51, 5, 61, 1, 0, '2021-06-10 23:45:40', '2021-06-10 23:45:40'),
(52, 1, 61, 21, 0, '2021-06-10 23:45:40', '2021-06-10 23:45:40'),
(53, 1, 61, 2, 0, '2021-06-10 23:45:40', '2021-06-10 23:45:40'),
(54, 1, 62, 1, 0, '2021-06-11 06:33:20', '2021-06-11 06:33:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(29, 'delete_brand', 'Delete Brand', 0, NULL, NULL),
(30, 'delete_role', 'Delete Role', 0, NULL, NULL),
(31, 'delete_product', 'Delete Product', 0, NULL, NULL),
(32, 'delete_category', 'Delete Category', 0, NULL, NULL),
(33, 'delete_slide', 'Delete Slide', 0, NULL, NULL),
(34, 'delete_user', 'Delete User', 0, NULL, NULL),
(35, 'delete_order', 'Delete Order', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(112, 1, 1, NULL, NULL),
(113, 2, 1, NULL, NULL),
(114, 3, 1, NULL, NULL),
(115, 4, 1, NULL, NULL),
(116, 5, 1, NULL, NULL),
(117, 6, 1, NULL, NULL),
(118, 7, 1, NULL, NULL),
(119, 8, 1, NULL, NULL),
(120, 9, 1, NULL, NULL),
(121, 10, 1, NULL, NULL),
(122, 11, 1, NULL, NULL),
(123, 12, 1, NULL, NULL),
(124, 13, 1, NULL, NULL),
(125, 14, 1, NULL, NULL),
(126, 15, 1, NULL, NULL),
(127, 16, 1, NULL, NULL),
(128, 17, 1, NULL, NULL),
(129, 18, 1, NULL, NULL),
(130, 19, 1, NULL, NULL),
(131, 20, 1, NULL, NULL),
(132, 21, 1, NULL, NULL),
(133, 22, 1, NULL, NULL),
(134, 23, 1, NULL, NULL),
(135, 24, 1, NULL, NULL),
(136, 25, 1, NULL, NULL),
(137, 26, 1, NULL, NULL),
(138, 27, 1, NULL, NULL),
(139, 28, 1, NULL, NULL),
(140, 29, 1, NULL, NULL),
(141, 30, 1, NULL, NULL),
(142, 31, 1, NULL, NULL),
(143, 32, 1, NULL, NULL),
(144, 33, 1, NULL, NULL),
(145, 34, 1, NULL, NULL),
(146, 35, 1, NULL, NULL),
(166, 3, 2, NULL, NULL),
(167, 4, 2, NULL, NULL),
(168, 7, 2, NULL, NULL),
(169, 8, 2, NULL, NULL),
(170, 11, 2, NULL, NULL),
(171, 12, 2, NULL, NULL),
(172, 15, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 19, 2, NULL, NULL),
(175, 20, 2, NULL, NULL),
(176, 23, 2, NULL, NULL),
(177, 24, 2, NULL, NULL),
(178, 27, 2, NULL, NULL),
(179, 28, 2, NULL, NULL),
(180, 5, 3, NULL, NULL),
(181, 6, 3, NULL, NULL),
(182, 7, 3, NULL, NULL),
(183, 8, 3, NULL, NULL),
(184, 9, 3, NULL, NULL),
(185, 10, 3, NULL, NULL),
(186, 11, 3, NULL, NULL),
(187, 12, 3, NULL, NULL),
(188, 13, 3, NULL, NULL),
(189, 14, 3, NULL, NULL),
(190, 15, 3, NULL, NULL),
(191, 16, 3, NULL, NULL),
(192, 17, 3, NULL, NULL),
(193, 18, 3, NULL, NULL),
(194, 19, 3, NULL, NULL),
(195, 20, 3, NULL, NULL),
(196, 21, 3, NULL, NULL),
(197, 22, 3, NULL, NULL),
(198, 23, 3, NULL, NULL),
(199, 24, 3, NULL, NULL),
(200, 29, 3, NULL, NULL),
(201, 31, 3, NULL, NULL),
(202, 32, 3, NULL, NULL),
(203, 33, 3, NULL, NULL),
(204, 35, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'CHEERFUL SUCCESS', '5efae3fca71eb', '<ul>\r\n	<li>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140)&nbsp;</li>\r\n	<li>Tặng 12 Th&aacute;ng Bảo H&agrave;nh</li>\r\n	<li>Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</li>\r\n</ul>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b1.jpg', 190000, 165000, 47, 'cheerful-success', 0, 1, 6, 1, 0, '2020-06-30 00:09:58', '2021-06-11 06:33:20'),
(2, 'PERFECT', '5efae67bb4588', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b11.jpg', 480000, NULL, 87, 'mikala-bag-in-black', 0, 1, 8, 1, 0, '2020-06-30 00:16:54', '2021-06-10 23:45:40'),
(3, 'CHUNG ĐÔI', '5efae8d18651a', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b3.jpg', 480000, NULL, 40, 'may-giat-panasonic-115kg-na-fd11ar1bv-loai-o2b', 0, 1, 6, 1, 0, '2020-06-30 00:26:12', '2021-04-25 01:23:54'),
(4, 'THE BLUE SKY', '5efae917dcc4b', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b4.jpg', 380000, 280000, 100, 'may-giat-toshiba-10kg-aw-duh1100gv-ds-loai-o1a', 0, 0, 2, 1, 0, '2020-06-30 00:28:02', '2021-04-25 01:23:31'),
(5, 'ROSIE', '5efae98c30a87', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b11.jpg', 359000, 350000, 59, 'charlotte-bag-in-black', 0, 0, 5, 6, 0, '2020-06-30 00:29:40', '2021-06-09 22:24:55'),
(6, 'ÁNH NGỌC', '5efae9e8bbb75', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b6.jpg', 500000, 450000, 90, 'may-giat-panasonic-95-kg-na-fd95v1brv-loai-o1a', 1, 1, 12, 1, 0, '2020-06-30 00:32:39', '2021-06-08 21:27:36'),
(7, 'GIỎ HOA SẮC TÍM', '5efaeaab895d0', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b7.jpg', 320000, 245000, 40, 'may-giat-samsung-10kg-wa10t5260bysv-loai-o2b', 0, 0, 7, 2, 0, '2020-06-30 00:35:10', '2021-04-25 01:24:54'),
(8, 'RED O\'HARA', '5efaeb372f907', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b12.jpg', 550000, 450000, 20, 'quinn-bag', 0, 0, 11, 6, 0, '2020-06-30 00:37:09', '2021-06-09 22:25:04'),
(9, 'NHỊP ĐẬP CON TIM', '5efaebf71f7d1', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b9.jpg', 400000, 320000, 40, 'may-giat-lg-ai-dd-85kg-fv1408s4w-loai-o1a', 0, 0, 5, 7, 0, '2020-06-30 00:40:08', '2021-04-25 01:26:15'),
(11, 'Lucie bag', '5efaed6061f72', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b10.jpg', 280000, 260000, 20, 'may-giat-toshiba-7kg-aw-k800av-ww-loai-o2b', 0, 0, 6, 2, 0, '2020-06-30 00:46:00', '2021-04-25 01:26:42'),
(12, 'RED ROSIE', '5efaf1ef5dc78', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b1.jpg', 349000, NULL, 100, 'may-giat-aqua-85kg-aqw-s85ft-n-loai-o2b', 0, 0, 1, 1, 0, '2020-06-30 01:04:58', '2021-04-25 01:26:56'),
(13, 'HOA TÚ CẦU TÍM', '5efaf256cc072', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b13.jpg', 599000, 499000, 20, 'tui-xach-trung-toi-gian', 0, 0, 8, 2, 0, '2020-06-30 01:06:14', '2021-06-09 22:25:15'),
(14, 'BÓ HOA NẮNG MỚI', '5efaf2b835640', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Top 8Trả góp 0% - Trả trước 0Đ', 'b3.jpg', 379000, NULL, 9, 'noi-com-dien-panasonic-sr-mvn107hra-loai-o1b', 0, 0, 9, 2, 0, '2020-06-30 01:18:03', '2021-04-25 01:27:54'),
(15, 'BÓ HOA SẮC MÀU', '5efaf541a1f06', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b4.jpg', 79500, 690500, 50, 'noi-com-dien-sharp-ks-19tjv-bc-loai-o2b-1', 0, 0, 2, 1, 0, '2020-06-30 01:19:34', '2021-04-25 01:28:13'),
(16, 'BÓ HOA THANH XUÂN', '5efaf59f10609', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b5.jpg', 599800, NULL, 100, 'tu-lanh-sharp-inverter-165-lit-sj-x176e-dss-loai-o2b-1', 0, 0, 10, 1, 0, '2020-06-30 01:20:38', '2021-06-08 21:31:17'),
(21, 'HỒNG DỊU DÀNG', '5f40c76f89761', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b6.jpg', 450000, 390000, 48, 'tu-lanh-panasonic-inverter-170-lit-nr-ba190ppvn-loai-o2b', 1, 1, 11, 6, 0, '2020-08-22 00:23:34', '2021-06-10 23:45:40'),
(22, 'BÓ HOA BAN MAI', '5f40c7fb32a2c', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b7.jpg', 120900, NULL, 19, 'but-da-mini', 1, 1, 9, 1, 1, '2020-08-22 00:25:34', '2021-04-04 05:54:43'),
(23, 'ÁNH TRĂNG ĐÊM', '5f40c88606dcd', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b8.jpg', 210000, 200000, 80, 'tu-lanh-inverter-panasonic-234-lit-nr-bl26avpvn-loai-o1a', 1, 1, 11, 1, 0, '2020-08-22 00:27:09', '2021-06-08 21:32:22'),
(24, 'TIA NẮNG ẤM', '6068f2417b174', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Giao ngay từ cửa hàng gần bạn nhất Hướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b9.jpg', 540000, 350000, 20, 'tu-lanh-inverter-panasonic-234-lit-nr-bl263pavn-loai-o2b', 1, 0, 4, 2, 0, '2021-04-04 05:56:16', '2021-04-25 01:29:51'),
(25, 'huong nguyen', '60c094968a190', '<p>asdasd</p>', 'asdsad', 'b10.jpg', 199000, 189000, 20, 'huong-nguyen', 0, 1, 13, 14, 1, '2021-06-09 03:16:01', '2021-06-09 03:16:58'),
(26, 'ádasd asdasds asdas d', '60c2e4ce9bed4', '<p>&aacute;dasd</p>', 'ádsad', 'sunflower.png', 123000, 100000, 20, 'adasd-asdasds-asdas-d', 0, 1, 6, 15, 1, '2021-06-10 21:22:02', '2021-06-10 21:22:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Hoa Tươi', 'abc', 'hoa-tuoi', 0, '2020-06-30 00:00:28', '2021-06-09 21:48:37'),
(2, 'Hoa Hồng', 'abc', 'hoa-hong', 0, '2020-06-30 00:02:00', '2021-06-09 21:48:48'),
(3, 'Tai Nghe', 'abc', 'tai-nghe', 1, '2020-06-30 00:02:38', '2020-08-13 00:08:42'),
(4, 'Pin', 'abc', 'pin', 1, '2020-06-30 00:03:18', '2020-08-13 00:08:39'),
(5, 'Charger', 'abc', 'charger', 1, '2020-06-30 00:04:23', '2020-08-13 00:08:36'),
(6, 'Hoa cát tường', 'No', 'hoa-cat-tuong', 0, '2020-08-22 00:12:24', '2021-06-09 21:49:17'),
(7, 'Hoa Mai', 'no', 'hoa-mai', 0, '2021-04-04 04:26:51', '2021-06-09 21:49:25'),
(8, 'Hoa cúc', 'abc', 'hoa-cuc', 0, '2021-06-08 21:51:40', '2021-06-09 21:49:31'),
(9, 'Hoa lan 5 cánh', 'abc', 'hoa-lan-5-canh', 0, '2021-06-08 21:51:53', '2021-06-09 21:49:45'),
(10, 'Hoa dâm bụt', 'abc', 'hoa-dam-but', 0, '2021-06-08 21:52:27', '2021-06-09 21:49:54'),
(11, 'Hoa Giấy', 'abc', 'hoa-giay', 0, '2021-06-08 21:52:47', '2021-06-09 21:51:07'),
(12, 'Hoa ti gôn', 'abc', 'hoa-ti-gon', 0, '2021-06-08 21:53:10', '2021-06-09 21:51:18'),
(13, 'Hoa nhài', 'abc', 'hoa-nhai', 0, '2021-06-08 21:53:24', '2021-06-09 21:51:25'),
(14, 'asdasd', 'asdas', 'asdasd', 1, '2021-06-09 03:14:28', '2021-06-09 03:17:12'),
(15, 'ádasd', 'ádsad', 'adasd', 1, '2021-06-10 21:21:21', '2021-06-10 21:22:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, NULL, NULL),
(20, 4, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `content`, `description`, `image`, `url`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 5  - quà ngập nhà', 'Khuyến mãi đặc biết 30/04-01/05', 'ship.jpg', '#', 0, '2020-07-02 07:34:10', '2021-06-10 21:21:13'),
(2, 'Khuyến mãi đặc biết 30/04-01/05', 'Đổi 1 vs 1 - Hoàn trả cũ lấy mới thu hồi nếu lỗi trong vòng 1 tuần', 'hoa3.jpg', '#', 0, '2020-07-02 07:34:29', '2021-06-09 21:12:08'),
(3, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 6', 'Ưu đãi giảm giá siêu hot đối với tất cả các mặt hàng chào mừng chào 1/6', 'hoa2.jpg', '#', 0, '2020-07-02 07:34:40', '2021-06-09 21:11:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 0, NULL, '$2y$10$/R2hG9ld.VWodXp152nj6elEVmguqxg4YsakqBrjDwkDUB9PNjPyO', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(13, 'customer1', 'quocviet123@gmail.com', 1, NULL, '$2y$10$YFRg8IRIeHDQj3.GFW.5n.e.jX5FNmZBC4MiizPZCMCrX26JO1tEq', NULL, 'FHJUDtpBANBDA6pxOJTJ23ac6MdEEDpNMCetaxAB7CUTF7UrNQP5aBwjKnQE', 0, '2021-06-10 21:18:43', '2021-06-10 21:57:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
