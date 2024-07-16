-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 21, 2024 lúc 08:56 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Áo Sơ Mi', 0, 'ao-so-mi', '2024-03-13 07:14:08', '2024-03-13 07:14:08', NULL),
(2, 'Áo Thun', 0, 'ao-thun', '2024-03-13 07:14:22', '2024-03-13 07:14:22', NULL),
(3, 'Quần jean', 0, 'quan-jean', '2024-03-13 07:14:40', '2024-06-19 03:06:31', '2024-06-19 03:06:31'),
(4, 'Đầm', 0, 'dam', '2024-03-13 07:14:52', '2024-06-19 03:50:11', NULL),
(5, 'Đồ ngủ', 0, 'do-ngu', '2024-03-13 07:15:04', '2024-06-18 00:14:10', '2024-06-18 00:14:10'),
(6, 'Phụ kiện', 0, 'phu-kien', '2024-03-13 07:15:13', '2024-03-13 07:15:13', NULL),
(7, 'Áo vest', 0, 'ao-vest', '2024-05-23 02:06:49', '2024-06-18 00:14:07', '2024-06-18 00:14:07'),
(8, 'Áo khoác', 0, 'ao-khoac', '2024-05-23 02:17:26', '2024-05-23 02:17:26', NULL),
(9, 'Áo sơ mi nữ', 1, 'ao-so-mi-nu', '2024-06-01 00:47:06', '2024-06-18 00:14:17', '2024-06-18 00:14:17'),
(10, 'Áo sơ mi nam', 1, 'ao-so-mi-nam', '2024-06-05 21:45:33', '2024-06-18 00:14:28', '2024-06-18 00:14:28'),
(11, 'Áo thun nữ', 2, 'ao-thun-nu', '2024-06-05 21:46:11', '2024-06-18 00:14:36', '2024-06-18 00:14:36'),
(12, 'Áo thun nam', 2, 'ao-thun-nam', '2024-06-05 21:46:31', '2024-06-18 00:14:32', '2024-06-18 00:14:32'),
(13, 'Quần tây', 0, 'quan-tay', '2024-06-05 21:50:36', '2024-06-19 03:06:28', '2024-06-19 03:06:28'),
(14, 'Quần jeans nữ', 3, 'quan-jeans-nu', '2024-06-05 21:51:22', '2024-06-18 00:14:41', '2024-06-18 00:14:41'),
(15, 'Quần jeans nam', 3, 'quan-jeans-nam', '2024-06-05 21:51:34', '2024-06-18 00:15:07', '2024-06-18 00:15:07'),
(16, 'Quần tây nữ', 13, 'quan-tay-nu', '2024-06-05 21:51:52', '2024-06-18 00:14:48', '2024-06-18 00:14:48'),
(17, 'Quần tây nam', 13, 'quan-tay-nam', '2024-06-05 21:52:06', '2024-06-18 00:14:45', '2024-06-18 00:14:45'),
(18, 'Quần short', 0, 'quan-short', '2024-06-05 21:52:20', '2024-06-18 00:14:52', '2024-06-18 00:14:52'),
(19, 'Áo khoác nữ', 8, 'ao-khoac-nu', '2024-06-05 21:52:42', '2024-06-18 00:14:59', '2024-06-18 00:14:59'),
(20, 'Áo khoác nam', 8, 'ao-khoac-nam', '2024-06-05 21:52:52', '2024-06-18 00:15:03', '2024-06-18 00:15:03'),
(21, 'Áo kiểu', 0, 'ao-kieu', '2024-06-18 00:15:28', '2024-06-18 00:15:28', NULL),
(22, 'Quần', 0, 'quan', '2024-06-19 03:06:48', '2024-06-19 03:06:48', NULL),
(23, 'Chân váy', 0, 'chan-vay', '2024-06-19 03:06:54', '2024-06-19 03:06:54', NULL),
(24, 'Set', 0, 'set', '2024-06-19 03:50:24', '2024-06-19 03:50:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `customer_email` varchar(191) NOT NULL,
  `customer_password` varchar(191) NOT NULL,
  `customer_phone` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Trọng Nghĩa', 'nghia@gmail.com', '$2y$10$zeibqLLO3xb5xZIWbAtusucHP4lvHybioaCQ5nnzWb3hSxzN63M96', '0123456789', NULL, NULL),
(2, 'PhiPhi', 'phiphi@gmail.com', '$2y$10$8KjvnV3hlpjA2U0Id4fxKOSDPazDfMpHjmky89BKKvN4h7Kq7GnKe', '0123456789', NULL, NULL),
(3, 'Hưng', 'hung@gmail.com', '$2y$10$DGhnyHqgmgP4yaaDq/JZ4OrfwW0EKu83z3zGelCRDyGNPcEiQQzJW', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_10_07_022447_create_categories_table', 1),
(5, '2023_10_08_050733_add_column_delete_at_table_categories', 1),
(6, '2023_10_08_131555_create_menus_table', 1),
(7, '2023_10_10_064034_add_column_slug_to_menus_table', 1),
(8, '2023_10_10_073419_add_column_soft_delete_to_menus_table', 1),
(9, '2023_10_14_141547_create_products_table', 1),
(10, '2023_10_14_142057_create_product_images_table', 1),
(11, '2023_10_14_142255_create_tags_table', 1),
(12, '2023_10_14_142503_create_product_tags_table', 1),
(13, '2023_10_17_122437_add_column_feature_image_name', 1),
(14, '2023_10_17_122821_add_column_role', 1),
(15, '2023_10_17_140520_add_column_image_name_to_table_product_image', 1),
(16, '2023_10_21_115818_add_column_delete_at_to_product_table', 1),
(17, '2023_10_22_032301_create_settings_table', 1),
(18, '2023_10_22_131859_create_sliders_table', 1),
(19, '2023_10_23_132817_add_column_delete_ad_to_sliders', 1),
(20, '2023_10_25_124242_add_column_type_settings_table', 1),
(21, '2023_10_28_123529_create_roles_table', 1),
(22, '2023_10_28_123556_create_permissions_table', 1),
(23, '2023_10_28_123746_create_table_user_role', 1),
(24, '2023_10_28_123851_create_table_permission_role', 1),
(25, '2023_11_05_050900_add_column_deleted_at_table_users', 1),
(26, '2023_11_08_072124_add_column_parent_id_permission', 1),
(27, '2023_11_08_145931_add_column_key_permission_table', 1),
(28, '2023_11_10_004326_add_column_deleted_at_table_permission', 1),
(29, '2023_11_10_004658_add_column_deleted_at_table_role', 1),
(30, '2023_11_21_092257_add_column_views_products', 1),
(31, '2023_11_23_123618_add_column_sale_price', 1),
(32, '2023_11_23_125714_add_column_warehouse', 1),
(33, '2023_11_29_120301_add_column_features_on_products', 1),
(34, '2023_11_29_140223_add_column_slug_on_products', 1),
(35, '2023_12_12_140546_customer', 1),
(36, '2023_12_12_152323_shipping', 1),
(37, '2023_12_13_073827_payment', 1),
(38, '2023_12_13_073911_order', 1),
(39, '2023_12_13_073938_order_details', 1),
(40, '2023_12_14_162428_add_tax_to_order_details_table', 1),
(41, '2024_06_13_074325_create_chatbotmess_table', 2),
(42, '2024_06_13_080429_drop_chatbotmess_table', 3),
(43, '2024_06_20_020532_add_product_link_to_products_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `delivery_status` varchar(50) DEFAULT '',
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) NOT NULL DEFAULT '0',
  `order_status` varchar(191) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `delivery_status`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chờ xác nhận', 1, 2, 4, '600000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:36', '2024-06-15 19:52:05', NULL),
(2, 'Chờ xác nhận', 1, 3, 7, '2200000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:36', '2024-06-15 19:52:03', NULL),
(3, 'Chờ xác nhận', 1, 4, 0, '1200000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:37', '2024-06-15 19:52:02', NULL),
(5, 'Chờ xác nhận', 2, 7, 9, '10080000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:37', '2024-06-15 19:51:46', NULL),
(7, 'Chờ xác nhận', 3, 9, 11, '500000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:38', '2024-06-15 13:31:42', NULL),
(8, 'Đã giao', 3, 10, 12, '500000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:38', '2024-06-15 19:47:59', NULL),
(9, 'Chờ xác nhận', 2, 11, 13, '500000', 'Thanh toán bằng tiền mặt', '2024-06-15 13:31:39', '2024-06-15 20:14:26', NULL),
(10, 'Đang giao', 2, 12, 14, '760000', 'Đơn hàng đã được thanh toán bằng VNPAY', '2024-06-15 19:59:23', NULL, NULL),
(11, 'Đang giao', 2, 13, 15, '1020000', 'Đơn hàng đã được thanh toán bằng VNPAY', '2024-06-15 20:06:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_price` varchar(50) NOT NULL DEFAULT '0',
  `product_sales_quantity` int(11) NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `tax`, `created_at`, `updated_at`, `size`, `color`) VALUES
(1, 0, 1, 'Váy đen nữ phiên bản hàn quốc retro Pháp', '300000', 2, 0.00, NULL, NULL, NULL, NULL),
(2, 2, 2, 'Áo Thun Nam Cổ Xẻ V Tay Ngắn - FAN013 - FANBOU', '2200000', 1, 0.00, NULL, NULL, NULL, NULL),
(3, 3, 1, 'Váy đen nữ phiên bản hàn quốc retro Pháp', '300000', 4, 0.00, NULL, NULL, NULL, NULL),
(4, 4, 3, 'Áo khoác cardigan INFLACHI dệt kim êm ái', '2600000', 2, 0.00, NULL, NULL, NULL, NULL),
(5, 4, 11, 'BỘ NGỦ TƠ THUN LẠNH THIẾT KẾ TRẺ TRUNG, QUYẾN RŨ', '1800000', 3, 0.00, NULL, NULL, NULL, NULL),
(6, 5, 10, 'Áo vest cổ hai ve cách điệu nam IVY moda MS 67E2771 2', '2190000', 2, 0.00, NULL, NULL, NULL, NULL),
(7, 5, 9, 'Áo sơ mi tay dài nam nữ dáng rộng cao cấp vải nhung tăm', '1900000', 3, 0.00, NULL, NULL, NULL, NULL),
(8, 6, 10, 'Áo vest cổ hai ve cách điệu nam IVY moda MS 67E2771 2', '2190000', 2, 0.00, NULL, NULL, NULL, NULL),
(9, 6, 8, 'ÁO SƠ MI NAM DÀI TAY SOÁI CA CAO CẤP', '1600000', 3, 0.00, NULL, NULL, NULL, NULL),
(10, 7, 10, 'Áo vest nam', '500000', 1, 0.00, NULL, NULL, 'S', 'Đen'),
(11, 8, 10, 'Áo vest nam', '500000', 1, 0.00, NULL, NULL, 'XXL', 'Xanh lá cây'),
(12, 9, 10, 'Áo vest nam', '500000', 1, 0.00, NULL, NULL, 'S', 'Đen'),
(13, 10, 10, 'Áo vest nam', '500000', 1, 0.00, NULL, NULL, NULL, NULL),
(14, 10, 18, 'Áo thun ba lỗ nữ', '130000', 2, 0.00, NULL, NULL, NULL, NULL),
(15, 11, 24, 'Đầm thiết kế ống cúp ngực', '340000', 1, 0.00, NULL, NULL, NULL, NULL),
(16, 11, 23, 'Đầm nữ cổ chữ V', '340000', 1, 0.00, NULL, NULL, NULL, NULL),
(17, 11, 22, 'Đầm trễ vai nữ', '340000', 1, 0.00, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `payment_status` varchar(191) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vnp_txn_ref` varchar(191) DEFAULT NULL,
  `vnp_response_code` varchar(191) DEFAULT NULL,
  `vnp_amount` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`, `vnp_txn_ref`, `vnp_response_code`, `vnp_amount`) VALUES
(1, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(2, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(3, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(4, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(7, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(8, 'billpayment', '', NULL, NULL, '1716039840_2062', '', '1060000000'),
(9, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(10, 'billpayment', '', NULL, NULL, '1716282702_7996', '', '918000000'),
(11, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(12, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL, NULL, NULL, NULL),
(14, 'billpayment', '', '2024-06-15 19:59:23', NULL, '1718506763_9812', '', '76000000'),
(15, 'billpayment', '', '2024-06-15 20:06:32', NULL, '1718507192_3818', '', '102000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `feature_image_path` varchar(191) DEFAULT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) NOT NULL DEFAULT 0,
  `sale_price` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_link` varchar(191) DEFAULT NULL,
  `features` tinyint(4) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `sizes` varchar(255) NOT NULL,
  `colors` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`, `sale_price`, `quantity`, `product_link`, `features`, `slug`, `sizes`, `colors`) VALUES
(3, 'Áo khoác len nữ', '290000', '/storage/product/1/zsN4EpwbIHsEYNplJ0Gh.jpg', 'Áo Khoác Len Nhẹ Cadigan Trơn Phối Gân Dọc Đơn Giản Phong Cách Hàn Quốc. Chất liệu: Len dệt.\r\nMàu sắc: Nâu, Xám\r\nSize: 65 kg trở xuống', 1, 8, '2024-05-17 20:56:38', '2024-06-19 20:47:57', 'Áo khoác len nữ.jpg', NULL, 15, '260000', 9, 'http://127.0.0.1:8000/detail/ao-khoac-len-nu', NULL, 'ao-khoac-len-nu', 'L', 'Trắng,Nâu'),
(6, 'Áo thun nữ from rộng JM Dress Design', '240000', '/storage/product/1/C5kGFiqtOJaOx318Kd1I.jpg', 'Áo thun nữ from rộng JM Dress Design\r\n\r\n- CHẤT LIỆU : SỢI COTTON là một loại sợi tổng hợp được tạo ra từ quá trình tổng hợp sợi bông cotton nguyên chất cùng các sợi tổng hợp khác.(cotton 65%và poly 35% )\r\n\r\n- TÍNH CHẤT : mang lại cảm giác thoáng mát, thoải mái cho người mặc bởi khả năng hút ẩm cao, thấm hút tốt. chất vải có độ bền khá cao, co dãn.\r\n\r\n- SIZE:\r\n\r\n  + S ( 35kg - 45kg)\r\n\r\n  + M (45kg - 55kg)\r\n\r\n  + L (55kg - 60kg)\r\n\r\n  + XL (60kg - 70kg)', 1, 2, '2024-05-18 06:04:26', '2024-06-19 20:46:16', 'Áo phông nữ from rộng JM Dress Design 1.jpg', NULL, 31, '180000', 5, 'http://127.0.0.1:8000/detail/ao-thun-nu-from-rong-jm-dress-design', NULL, 'ao-thun-nu-from-rong-jm-dress-design', 'S,M,L,XL', 'Trắng'),
(9, 'Áo sơ mi nữ tay dài', '200000', '/storage/product/1/kHrqSyhGedE2rrr4SooI.jpg', 'ÁO SƠ MI NỮ TRẮNG DÀI TAY PHỐI SỌC NGANG TRƯỚC NGỤC KIỂU HÀN TIỂU THƯ ĐẸP - ÁO SƠ MI TRẮNG ĐI HỌC MẶC ĐI LÀM CÔNG SỞ ĐI CHƠI SIÊU XINH\r\n\r\n-Áo sơ mi dài tay Hàn Quốc là sự kết nối giữa Hàn Quốc và sơ mi, người ta sẽ nghĩ ngay đến các kiểu áo sơ mi nữ dáng dài, áo sơ mi form rộng, mang đến sự thoải mái, trẻ trung như những cô nàng tuổi đôi mươi tươi tắn. Những kiểu dáng này có thể gọi chung là áo sơ mi unisex, vì form người nào mặc lên cũng có nét đẹp riêng, sự độc đáo và cá tính riêng.\r\n\r\n-Màu sắc: Trắng\r\n\r\n-Size: \r\n\r\n+ S ( 35kg - 45kg)\r\n\r\n  + M (45kg - 55kg)\r\n\r\n  + L (55kg - 60kg)', 1, 1, '2024-05-18 06:06:53', '2024-06-19 20:45:49', 'Sơ mi nữ tay dài_2.jpg', NULL, 22, '190000', 10, 'http://127.0.0.1:8000/detail/ao-so-mi-nu-tay-dai', NULL, 'ao-so-mi-nu-tay-dai', 'S,M,L', 'Trắng'),
(18, 'Áo thun ba lỗ nữ', '150000', '/storage/product/2024/06/Áo thun ba lỗ 1-20240606050110.jpg', 'Áo thun ba lỗ nữ, dáng áo ba lỗ. Được làm bằng chất liệu thun mát, co dãn 4 chiều. Thích hợp cho không khí màu hè nóng nực.\r\nSize:\r\nS: 40-50kg\r\nM: 50-60kg\r\nL: 60-70kg', 1, 2, '2024-06-05 22:01:10', '2024-06-19 20:45:18', 'Áo thun ba lỗ 1.jpg', NULL, 5, '130000', 8, 'http://127.0.0.1:8000/detail/ao-thun-ba-lo-nu', NULL, 'ao-thun-ba-lo-nu', 'S,M,L', 'Trắng'),
(19, 'Đầm cúp ngực', '300000', '/storage/product/2024/06/Đầm cúp ngực 3-20240606051358.jpg', 'Đầm cúp ngực được thiết kế với bèo nhúng dưới. Vải thun dày mịn. Thiết kế sang trọng. Phù hợp với đi tiệc\r\nSize\r\nS: 40-50kg\r\nM: 50-60kg\r\nL: 60kg-70kg', 1, 4, '2024-06-05 22:13:58', '2024-06-19 20:44:36', 'Đầm cúp ngực 3.jpg', NULL, 12, '250000', 10, 'http://127.0.0.1:8000/detail/dam-cup-nguc', NULL, 'dam-cup-nguc', 'S,M,L', 'Đen,Trắng'),
(20, 'Đầm ren nữ hai dây dài', '350000', '/storage/product/2024/06/Đầm hai dây 2-20240606051802.jpg', 'Đầm ren hai dây nữ hai dây. Váy ren nữ hai dây dài mang đến vẻ đẹp nữ tính, quyến rũ và thanh lịch cho người mặc. Với thiết kế hai dây thanh mảnh, sản phẩm giúp khoe khéo bờ vai thon gọn và đường cong gợi cảm. Chất liệu ren mềm mại, tinh tế tạo nên sự sang trọng và quý phái cho bộ trang phục.\r\nSize\r\nS: 40-50kg\r\nM: 50-60kg\r\nL: 60-65kg', 1, 4, '2024-06-05 22:18:02', '2024-06-19 20:40:28', 'Đầm hai dây 2.jpg', NULL, 7, '330000', 10, 'http://127.0.0.1:8000/detail/dam-ren-nu-hai-day-dai', NULL, 'dam-ren-nu-hai-day-dai', 'S,M,L', 'Trắng'),
(21, 'Đầm maxi cổ yếm', '350000', '/storage/product/2024/06/Đầm maxi cổ yếm 2-20240606052150.jpg', 'Đầm maxi cổ yếm lụa là một item thời trang được yêu thích bởi sự nữ tính, thướt tha và sang trọng.\r\n\r\nChất liệu:\r\nLụa: Mềm mại, mịn màng, tạo cảm giác thoải mái khi mặc.\r\nCó thể có nhiều loại lụa khác nhau như lụa tơ tằm, lụa satin, lụa chiffon,...\r\nKiểu dáng:\r\nCổ yếm: Thiết kế cổ yếm giúp khoe khéo bờ vai thon gọn và đường cong gợi cảm.\r\nDài maxi: Dáng dài thướt tha, bay bổng, tạo nên vẻ đẹp nữ tính và thanh lịch.\r\nSize:\r\n      S: 40-45kg\r\n\r\n      M: 45-50kg\r\n\r\n      L: 50-55kg', 1, 4, '2024-06-05 22:21:50', '2024-06-19 20:39:07', 'Đầm maxi cổ yếm 2.jpg', NULL, 7, '330000', 10, 'http://127.0.0.1:8000/detail/dam-maxi-co-yem', NULL, 'dam-maxi-co-yem', 'S,M,L', 'Nâu'),
(22, 'Đầm trễ vai nữ', '360000', '/storage/product/2024/06/Đầm trễ vai 1-20240606052523.jpg', 'Đầm trễ vai là một item thời trang được yêu thích bởi sự nữ tính, quyến rũ và thanh lịch.\r\nThiết kế trễ vai: Phần vai áo ngang giúp khoe khéo bờ vai thon gọn và xương quai xanh mảnh mai. Xòe tôn lên góc dáng thon gọn.\r\nSize\r\nL: 60kg trở xuống là vừa', 1, 4, '2024-06-05 22:25:23', '2024-06-19 20:38:46', 'Đầm trễ vai 1.jpg', NULL, 14, '340000', 4, 'http://127.0.0.1:8000/detail/dam-tre-vai-nu', NULL, 'dam-tre-vai-nu', 'L', 'Trắng'),
(23, 'Đầm nữ cổ chữ V', '350000', '/storage/product/2024/06/Đầm tuyết mưa 1-20240606052836.jpg', 'Đầm nữ cổ V được thiết kế cổ chữ V giúp tôn vòng 1. Chất liệu vải tuyết mưa tạo cảm giác thoải mái và mát\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-05 22:28:36', '2024-06-19 20:38:20', 'Đầm tuyết mưa 1.jpg', NULL, 9, '340000', 4, 'http://127.0.0.1:8000/detail/dam-nu-co-chu-v', NULL, 'dam-nu-co-chu-v', 'S,M,L', 'Đen'),
(24, 'Đầm thiết kế ống cúp ngực', '360000', '/storage/product/2024/06/Đầm thiết kế ống đỏ cúp ngực2-20240606053655.jpg', 'Đầm thiết kế ống cúp ngực. Được thiết kế sang chảng mang phong cách hiện đại, Thích hợp đi tiệc.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-05 22:36:55', '2024-06-19 20:37:53', 'Đầm thiết kế ống đỏ cúp ngực2.jpg', NULL, 12, '340000', 4, 'http://127.0.0.1:8000/detail/dam-thiet-ke-ong-cup-nguc', NULL, 'dam-thiet-ke-ong-cup-nguc', 'S,M,L', 'Đen'),
(29, 'Đầm nữ 𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬', '350000', '/storage/product/2024/06/𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬3-20240619084736.jpg', 'Chất liệu kate thêu mềm mại với thiết kế nữ tính và sang trọng. Điểm nhấn ngực tạo hình nơ tinh tế, khoét cổ sâu V táo bạo và đặc biệt chi tiết tay bồng xinh xắn nữ tính lắm ạ.\r\nCHẤT LIỆU: KATE THÊU\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 01:47:36', '2024-06-19 20:37:24', '𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬3.jpg', NULL, 4, '330000', 5, 'http://127.0.0.1:8000/detail/dam-nu', NULL, 'dam-nu', 'S,M,L', 'Đen,Trắng'),
(30, 'Đầm nữ Dannie Dress', '350000', '/storage/product/2024/06/Dannie Dress 3-20240619085244.jpg', 'Đầm nữ Dannie Dress được thiết kế theo phong cách trẻ trung quyến rủ. Phần eo làm chi tiết nhún để che V2 h. Tay áo  làm tay trễ vai gợi cảm, điểm nhấn đính thêm chiếc hoa.  Phù hợp tham gia các biển tiệc cưới.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 01:52:44', '2024-06-19 20:36:54', 'Dannie Dress 3.jpg', NULL, 8, '330000', 5, 'http://127.0.0.1:8000/detail/dam-nu-dannie-dress', NULL, 'dam-nu-dannie-dress', 'S,M,L', 'Đen,Trắng,Nâu'),
(39, 'Đầm nữ  𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬 ren dài', '350000', '/storage/product/2024/06/𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬1-20240619095219.png', 'Đầm nữ  𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬 ren dài. Chất liệu váy thun ren lạ mắt. Form đầm chú ý tạo đường cong eo và điểm khoét U tinh tế khoe V1 gợi cảm mà không phô trương. Tặng kèm choker hoa thủ công theo đầm. Phù hợp đi đám tiệc. Phong cách sang trọng.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 02:52:19', '2024-06-19 20:36:24', '𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬1.png', NULL, 4, '330000', 6, 'http://127.0.0.1:8000/detail/dam-nu-ren-dai', NULL, 'dam-nu-ren-dai', 'S,M,L', 'Đen,Trắng,Nâu'),
(40, 'Đầm maxi thun', '350000', '/storage/product/2024/06/Maxithun1-20240619100036.jpg', 'Đầm maxi thun.Dáng váy maxi với tùng hack dáng cùng cúp ngực xinh xắn. Chất liệu thun co giãn. Phù hợp cho mọi lựa chọn\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 03:00:36', '2024-06-19 20:35:51', 'Maxithun1.jpg', NULL, 5, '330000', 6, 'http://127.0.0.1:8000/detail/dam-maxi-thun', NULL, 'dam-maxi-thun', 'S,M,L', 'Đen,Đỏ,Hồng'),
(41, 'Đầm 2 Dây Hoạ Tiết Ngân Hà', '400000', '/storage/product/2024/06/Đầm 2 Dây Hoạ Tiết Ngân Hà1-20240619100432.jpg', 'Đầm 2 Dây Hoạ Tiết Ngân Hà. Được thiết kế dạng thun ôm. Áo hai dây tạo cảm giác thoải mái.\r\nSize \r\nS: 40-45kg \r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 03:04:32', '2024-06-19 20:35:05', 'Đầm 2 Dây Hoạ Tiết Ngân Hà1.jpg', NULL, 4, '360000', 4, 'http://127.0.0.1:8000/detail/dam-2-day-hoa-tiet-ngan-ha', NULL, 'dam-2-day-hoa-tiet-ngan-ha', 'S,M,L', 'Xanh dương,Hồng'),
(42, 'Áo kiểu gài nút', '150000', '/storage/product/2024/06/Áo gài nút 1-20240619101235.jpg', 'Áo thun gài nút nữ tay dài là loại áo thun có thiết kế cổ áo dạng cổ sơ mi với hàng nút dọc trước ngực áo. Chất liệu thun lạnh mềm mại, co giãn \r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 21, '2024-06-19 03:12:35', '2024-06-19 20:34:04', 'Áo gài nút 1.jpg', NULL, 5, '130000', 6, 'http://127.0.0.1:8000/detail/ao-kieu-gai-nut', NULL, 'ao-kieu-gai-nut', 'S,M,L', 'Hồng'),
(43, 'Áo Bra 2 dây', '150000', '/storage/product/2024/06/Áo Bra 2 dây-20240619101626.png', 'Áo Bra 2 dây. Áo bra 2 dây là loại áo lót nữ không có gọng, có hai dây mỏng vắt qua vai và ôm sát ngực. Kiểu dáng trẻ trung, năng động và phù hợp cho những hoạt động vui chơi, thể thao.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 21, '2024-06-19 03:16:26', '2024-06-19 20:33:36', 'Áo Bra 2 dây.png', NULL, 5, '130000', 6, 'http://127.0.0.1:8000/detail/ao-bra-2-day', NULL, 'ao-bra-2-day', 'S,M,L', 'Trắng'),
(44, 'Chân Váy Bút Chì Xẻ', '200000', '/storage/product/2024/06/Chân Váy Bút Chì Xẻ1-20240619102307.png', 'Chân Váy Bút Chì Xẻ. Chân váy bút chì xẻ là loại chân váy có thiết kế ôm sát cơ thể, dài đến đầu gối hoặc bắp chân, có đường xẻ tà ở một hoặc hai bên chân váy. Đường xẻ tà ngang gối. Đường xẻ bên hông tạo điểm nhấn độc đáo và tăng thêm sự quyến rũ cho người mặc. Chất liệu thun co dãn\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 23, '2024-06-19 03:23:07', '2024-06-19 20:33:03', 'Chân Váy Bút Chì Xẻ1.png', NULL, 2, '180000', 10, 'http://127.0.0.1:8000/detail/chan-vay-but-chi-xe', NULL, 'chan-vay-but-chi-xe', 'S,M,L', 'Trắng'),
(45, 'Chân váy da bóng', '150000', '/storage/product/2024/06/Chân váy da bóng2-20240619103420.png', 'Chân váy da bóng. Chân váy da bóng là loại chân váy được làm từ chất liệu da bóng, da tổng hợp. Dáng ôm sát cơ thể, dài đến đầu gối hoặc bắp chân, tạo sự thanh lịch và quyến rũ. Chân váy da bóng có thể phối đồ với nhiều loại trang phục khác nhau như áo thun, áo sơ mi, croptop,...\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 23, '2024-06-19 03:34:20', '2024-06-19 20:32:36', 'Chân váy da bóng2.png', NULL, 5, '130000', 10, 'http://127.0.0.1:8000/detail/chan-vay-da-bong', NULL, 'chan-vay-da-bong', 'S,M,L', 'Đen,Nâu'),
(46, 'Quần Jean Ống Loe 2 Túi Nổ', '250000', '/storage/product/2024/06/Quần Jean Ống Loe 2 Túi Nổ3-20240619103823.png', 'Quần jean ống loe 2 túi nổ là loại quần jean có ống loe rộng từ đầu gối trở xuống, tạo sự thoải mái và phong cách cho người mặc.\r\nQuần có 2 túi trước được thiết kế với kiểu dáng \"nổ\", tức là có phần miệng túi nhô ra ngoài, tạo điểm nhấn độc đáo cho chiếc quần. Quần jean ống loe 2 túi nổ được làm từ chất liệu denim co giãn, giúp người mặc cảm thấy thoải mái khi vận động. Chất liệu denim cũng có độ bền cao, có thể sử dụng trong thời gian dài.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 22, '2024-06-19 03:38:23', '2024-06-19 20:31:53', 'Quần Jean Ống Loe 2 Túi Nổ3.png', NULL, 2, '230000', 6, 'http://127.0.0.1:8000/detail/quan-jean-ong-loe-2-tui-no', NULL, 'quan-jean-ong-loe-2-tui-no', 'S,M,L', 'Xanh dương'),
(47, 'Quần jeans trơn lai gấp cá tính', '300000', '/storage/product/2024/06/Quần jeans trơn lai gấp cá tính-20240619104305.png', 'Quần jeans trơn lai gấp cá tính là loại quần jeans có thiết kế đơn giản, không có họa tiết hay rách gối, điểm nhấn nằm ở phần lai quần được gấp lên một hoặc nhiều lần, tạo sự cá tính và trẻ trung cho người mặc.\r\n Ống suông: Dáng quần rộng rãi, thoải mái, phù hợp với mọi vóc dáng. Quần jeans trơn lai gấp cá tính được làm từ chất liệu denim co giãn, giúp người mặc cảm thấy thoải mái khi vận động. Chất liệu denim cũng có độ bền cao, có thể sử dụng trong thời gian dài.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 22, '2024-06-19 03:43:05', '2024-06-19 20:31:28', 'Quần jeans trơn lai gấp cá tính.png', NULL, 2, '280000', 10, 'http://127.0.0.1:8000/detail/quan-jeans-tron-lai-gap-ca-tinh', NULL, 'quan-jeans-tron-lai-gap-ca-tinh', 'S,M,L', 'Xanh dương'),
(48, 'Quần jeans rách lai bụi bặm', '300000', '/storage/product/2024/06/Quần jeans rách lai bụi bặm3-20240619104526.png', 'Quần jeans rách lai bụi bặm là loại quần jeans có thiết kế đơn giản, nhưng điểm nhấn nằm ở phần lai quần được cắt xẻ hoặc rách gối, tạo sự cá tính, bụi bặm và phá cách cho người mặc. \r\nỐng suông: Dáng quần rộng rãi, thoải mái, phù hợp với mọi vóc dáng. Quần jeans rách lai bụi bặm thường được làm từ chất liệu denim co giãn, giúp người mặc cảm thấy thoải mái khi vận động. Chất liệu denim cũng có độ bền cao, có thể sử dụng trong thời gian dài.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 22, '2024-06-19 03:45:26', '2024-06-19 20:31:01', 'Quần jeans rách lai bụi bặm3.png', NULL, 4, '280000', 10, 'http://127.0.0.1:8000/detail/quan-jeans-rach-lai-bui-bam', NULL, 'quan-jeans-rach-lai-bui-bam', 'S,M,L', 'Xanh dương'),
(49, 'Chân váy dài caro', '300000', '/storage/product/2024/06/Chân váy dài trơn caro-20240619104942.png', 'Chân váy dài trơn caro là loại chân váy có thiết kế dài đến mắt cá chân hoặc gót chân, có họa tiết caro đơn giản nhưng tinh tế, tạo sự thanh lịch và nữ tính cho người mặc. Dáng Chữ A: Dáng xòe nhẹ từ eo xuống, giúp che đi khuyết điểm phần hông và tạo cảm giác thon gọn cho đôi chân.\r\nSize S: 40-45kg M: 45-50kg L: 50-55kg', 1, 23, '2024-06-19 03:49:42', '2024-06-19 20:30:25', 'Chân váy dài trơn caro.png', NULL, 2, '280000', 10, 'http://127.0.0.1:8000/detail/chan-vay-dai-caro', NULL, 'chan-vay-dai-caro', 'S,M,L', 'Hồng,Nâu'),
(50, 'Chân váy dạ ngắn dáng chữ A', '300000', '/storage/product/2024/06/Quần chân váy dạ ngắn dáng chữ A3-20240619105528.png', 'Chân váy dạ ngắn dáng chữ A là sự kết hợp độc đáo giữa quần short và chân váy, mang đến cho người mặc sự trẻ trung, năng động và thanh lịch. Quần có thiết kế chữ A, xòe nhẹ từ eo xuống, giúp che đi khuyết điểm phần hông và tạo cảm giác thon gọn cho đôi chân. Chiều dài quần ngắn trên gối, tạo sự năng động và trẻ trung. Quần chân váy dạ ngắn dáng chữ A có thể phối đồ với nhiều loại trang phục khác nhau như áo thun, áo sơ mi, croptop,... Phong cách năng động: Phối quần chân váy dạ ngắn dáng chữ A với áo thun phom rộng và sneaker.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 23, '2024-06-19 03:55:28', '2024-06-19 20:29:49', 'Quần chân váy dạ ngắn dáng chữ A3.png', NULL, 3, '280000', 10, 'http://127.0.0.1:8000/detail/chan-vay-da-ngan-dang-chu-a', NULL, 'chan-vay-da-ngan-dang-chu-a', 'S,M,L', 'Đen,Hồng'),
(51, 'Chân váy dài xanh trơn', '300000', '/storage/product/2024/06/Chân váy dài xanh trơn2-20240619105947.png', 'Chân váy dài xanh trơn. Được thiết kế kiểu dáng dài thanh lịch. Dáng xòe nhẹ từ eo xuống, giúp che đi khuyết điểm phần hông và tạo cảm giác thon gọn cho đôi chân. Chất lụa sang trọng, quý phái, tạo sự thướt tha và bay bổng.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 23, '2024-06-19 03:59:47', '2024-06-19 20:29:18', 'Chân váy dài xanh trơn2.png', NULL, 4, '280000', 10, 'http://127.0.0.1:8000/detail/chan-vay-dai-xanh-tron', NULL, 'chan-vay-dai-xanh-tron', 'S,M,L', 'Xanh dương'),
(52, 'Set ren đi biển', '300000', '/storage/product/2024/06/sét_đi_biển-20240619110442.jpg', 'Set ren đi biển thường bao gồm hai món: áo bra và chân váy. Áo bra: Có nhiều kiểu dáng khác nhau như áo yếm, áo croptop, áo quây,... với thiết kế ren tinh tế, gợi cảm. Chân váy: Có thể là chân váy chữ A, chân váy xòe hoặc chân váy bút chì, mang đến sự nữ tính và thanh lịch cho người mặc.  Chất liệu ren thêu. Bạn có thể phối set ren đi biển với nhiều phụ kiện khác nhau như mũ rộng vành, kính râm, sandal, túi xách,... để hoàn thiện phong cách của mình.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 24, '2024-06-19 04:04:42', '2024-06-19 20:28:47', 'sét_đi_biển.jpg', NULL, 8, '280000', 10, 'http://127.0.0.1:8000/detail/set-ren-di-bien', NULL, 'set-ren-di-bien', 'S,M,L', 'Cam'),
(53, 'Đầm ngủ lụa phi bóng', '30', '/storage/product/2024/06/Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B893-20240619110929.jpg', 'Đầm ngủ lụa phi bóng. Đầm hai dây kiểu dáng đơn giản nhưng quyến rũ, giúp tôn lên bờ vai thon thả của người phụ nữ. Lụa là chất liệu được sử dụng phổ biến nhất cho đầm ngủ phibongs. Mềm mại, mịn màng, tạo cảm giác thoải mái khi mặc.. Thoáng mát, thấm hút mồ hôi tốt.\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 04:09:29', '2024-06-19 20:28:12', 'Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B893.jpg', NULL, 2, '280000', 10, 'http://127.0.0.1:8000/detail/dam-ngu-lua-phi-bong', NULL, 'dam-ngu-lua-phi-bong', 'S,M,L', 'Trắng,Cam'),
(54, 'Váy ngủ Lastin 2 dây', '300000', '/storage/product/2024/06/Váy ngủ Lastin 2 dây ren ngực quyến rũ Bloom Dress VN52 Sexy M 3-20240619111222.jpg', 'Váy ngủ Lastin 2 dây. Váy ngủ 2 dây với thiết kế thanh mảnh, gợi cảm, khoe trọn bờ vai và xương quai xanh quyến rũ của người phụ nữ. Chất liệu Lastin nhũ độc đáo, cấu tạo chính từ poly và sợi Spandex, kết hợp với phương thức dệt đặc trưng tạo nên chất liệu mềm mại đặc biệt, độ dày vừa phải, co giãn 4 chiều, bề mặt bóng nhũ nhẹ mang đến cảm giác mềm mượt như tan ở trên da.\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 04:12:22', '2024-06-19 20:27:43', 'Váy ngủ Lastin 2 dây ren ngực quyến rũ Bloom Dress VN52 Sexy M 3.jpg', NULL, 2, '280000', 10, 'http://127.0.0.1:8000/detail/vay-ngu-lastin-2-day', NULL, 'vay-ngu-lastin-2-day', 'S,M,L', 'Cam'),
(55, 'Túi xách HM', '350000', '/storage/product/2024/06/tui HM-20240619111608.jpg', 'Túi xách HM. Túi HM nữ là một trong những phụ kiện thời trang được ưa chuộng bởi sự đa dạng về kiểu dáng, mẫu mã và giá cả hợp lý.  Túi đeo chéo: Kiểu dáng năng động, trẻ trung, thích hợp cho những hoạt động thường ngày như đi chơi, đi học, đi làm. Da tổng hợp: Chất liệu có độ bền cao, giá thành rẻ hơn da thật, nhưng không được sang trọng bằng.', 1, 6, '2024-06-19 04:16:08', '2024-06-19 20:27:16', 'tui HM.jpg', NULL, 2, '330000', 4, 'http://127.0.0.1:8000/detail/tui-xach-hm', NULL, 'tui-xach-hm', 'XL', 'Trắng,Nâu'),
(56, 'Túi xách Luis Vuiton', '450000', '/storage/product/2024/06/túi louis 3-20240619111851.jpg', 'Túi xách luis vuiton. Được thiết kế Pochette kiểu dáng nhỏ gọn, sang trọng, phù hợp cho những buổi tối đi chơi hoặc dự tiệc. Da canvas: Chất liệu nhẹ nhàng, thoáng mát, phù hợp cho những ngày hè nóng bức.', 1, 6, '2024-06-19 04:18:51', '2024-06-19 20:26:53', 'túi louis 3.jpg', NULL, 2, '430000', 4, 'http://127.0.0.1:8000/detail/tui-xach-luis-vuiton', NULL, 'tui-xach-luis-vuiton', 'XL', 'Đen,Trắng'),
(57, 'Đầm ren xuyên thấu', '450000', '/storage/product/2024/06/Đầm ren xuyên thấu 4-20240619112830.png', 'Đầm ren xuyên thấu dài. Kiểu dáng dài ren xuyên thấu dài thường có kiểu dáng thanh lịch, nữ tính và gợi cảm.  Tay áo dài. Phần thân váy t được may bằng chất liệu ren mềm mại, tạo sự bồng bềnh và quyến rũ.\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 04:28:09', '2024-06-19 20:26:24', 'Đầm ren xuyên thấu 4.png', NULL, 5, '430000', 4, 'http://127.0.0.1:8000/detail/dam-ren-xuyen-thau', NULL, 'dam-ren-xuyen-thau', 'S,M,L', 'Đen,Trắng'),
(58, 'Đầm dạ hội cổ yếm', '450000', '/storage/product/2024/06/đầm dạ hội 2 dây 2-20240619113206.jpg', 'Đầm dạ hội cổ yếm là một trong những kiểu dáng đầm được ưa chuộng nhất hiện nay bởi sự quyến rũ, gợi cảm và sang trọng mà nó mang lại.  ổ yếm: Đây là điểm nhấn chính của chiếc đầm, giúp khoe trọn bờ vai và xương quai xanh quyến rũ của người phụ nữ. Cổ yếm có thể được thiết kế theo nhiều kiểu dáng khác nhau như: cổ yếm bản to, cổ yếm buộc dây, cổ yếm lệch vai. Chất liệu lụa mát. \r\nThiết kế tách lẻ áo và váy để tôn lên vòng 2. Đính kèm nợ tạo điểm nhấn.\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 4, '2024-06-19 04:32:06', '2024-06-20 18:51:24', 'đầm dạ hội 2 dây 2.jpg', NULL, 4, '430000', 4, 'http://127.0.0.1:8000/detail/dam-da-hoi-co-yem', NULL, 'dam-da-hoi-co-yem', 'S,M,L', 'Trắng'),
(59, 'Set thun hai dây', '350000', '/storage/product/2024/06/set 2 dây4-20240619114310.png', 'Set thun  2 dây. Set thun 2 dây quần dài là một set đồ phổ biến với thiết kế đơn giản nhưng năng động, trẻ trung. Chất liệu thun mềm mại, co giãn tốt, tạo cảm giác thoải mái khi mặc. Áo có mút ngực. Quần dài ống leo\r\nSize\r\nS: 40-45kg\r\nM: 45-50kg\r\nL: 50-55kg', 1, 24, '2024-06-19 04:43:11', '2024-06-19 20:18:14', 'set 2 dây4.png', NULL, 7, '330000', 10, 'http://127.0.0.1:8000/detail/set-thun-hai-day', NULL, 'set-thun-hai-day', 'S,M,L', 'Đen,Nâu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/LvfsHiQfGeG0nuSlak8q.jpg', 1, '2024-03-13 07:16:55', '2024-03-13 07:16:55', 'Váy đen nữ phiên bản hàn quốc retro Pháp 3.jpg'),
(2, '/storage/product/1/BmXNgStve45Hmn3cADVH.jpg', 1, '2024-03-13 07:16:55', '2024-03-13 07:16:55', 'Váy đen nữ phiên bản hàn quốc retro Pháp 2.jpg'),
(3, '/storage/product/1/MKD9lLn04jAtAhoKsFwv.jpg', 1, '2024-03-13 07:16:55', '2024-03-13 07:16:55', 'Váy đen nữ phiên bản hàn quốc retro Pháp 1.jpg'),
(4, '/storage/product/1/vFfnpRtADevfTJm18Bbe.jpg', 2, '2024-03-13 07:46:18', '2024-03-13 07:46:18', 'Áo Thun Nam Cổ Xẻ V Tay Ngắn - FAN013 - FANBOU4.jpg'),
(5, '/storage/product/1/dDN8rc7uVE1711JvlBtQ.jpg', 2, '2024-03-13 07:46:19', '2024-03-13 07:46:19', 'Áo Thun Nam Cổ Xẻ V Tay Ngắn - FAN013 - FANBOU3.jpg'),
(6, '/storage/product/1/9s0NBhgqjzJRGbpaVMbr.jpg', 2, '2024-03-13 07:46:19', '2024-03-13 07:46:19', 'Áo Thun Nam Cổ Xẻ V Tay Ngắn - FAN013 - FANBOU2.jpg'),
(13, '/storage/product/1/8Y1J2vNj0zwH3n7esrHa.jpg', 5, '2024-05-18 06:03:52', '2024-05-18 06:03:52', 'Áo Phông Nam Hè BRO 2 Màu Phong Cách Unisex Cotton Mịn Thời Trang Thể Thao2.jpg'),
(14, '/storage/product/1/vyIiKCUNdu9okn6fWUzg.jpg', 5, '2024-05-18 06:03:52', '2024-05-18 06:03:52', 'Áo Phông Nam Hè BRO 2 Màu Phong Cách Unisex Cotton Mịn Thời Trang Thể Thao3.jpg'),
(15, '/storage/product/1/rm8GDZFrXVpiIWdIzIKc.jpg', 5, '2024-05-18 06:03:52', '2024-05-18 06:03:52', 'Áo Phông Nam Hè BRO 2 Màu Phong Cách Unisex Cotton Mịn Thời Trang Thể Thao4.jpg'),
(16, '/storage/product/1/TtIVfzoo64Zgx04WjJmT.jpg', 8, '2024-05-18 06:06:01', '2024-05-18 06:06:01', 'ÁO SƠ MI NAM DÀI TAY SOÁI CA CAO CẤP 2.jpg'),
(17, '/storage/product/1/TB3OzYYJkz32f3LhWiY7.jpg', 8, '2024-05-18 06:06:01', '2024-05-18 06:06:01', 'ÁO SƠ MI NAM DÀI TAY SOÁI CA CAO CẤP 3.jpg'),
(18, '/storage/product/1/LVBewpGyqWgJeZfADh3p.jpg', 8, '2024-05-18 06:06:01', '2024-05-18 06:06:01', 'ÁO SƠ MI NAM DÀI TAY SOÁI CA CAO CẤP 4.jpg'),
(22, '/storage/product/1/PWRmHMjJsfdUWfYc7lso.jpg', 10, '2024-05-18 06:08:30', '2024-05-18 06:08:30', 'Áo vest cổ hai ve cách điệu nam IVY moda MS 67E2771 2.jpg'),
(23, '/storage/product/1/P3bNb0UgjYU2nQv2WBJG.jpg', 10, '2024-05-18 06:08:30', '2024-05-18 06:08:30', 'Áo vest cổ hai ve cách điệu nam IVY moda MS 67E2771 3.jpg'),
(24, '/storage/product/1/whoaERmiDx6URKcp76Ge.jpg', 10, '2024-05-18 06:08:30', '2024-05-18 06:08:30', 'Áo vest cổ hai ve cách điệu nam IVY moda MS 67E2771 4.jpg'),
(25, '/storage/product/1/DtSIDXrzHCZZcfkAQiBm.jpg', 11, '2024-05-18 06:09:15', '2024-05-18 06:09:15', 'BỘ NGỦ TƠ THUN LẠNH THIẾT KẾ TRẺ TRUNG, QUYẾN RŨ 2.jpg'),
(26, '/storage/product/1/j017d9mbrWXgMFQb6Nvq.jpg', 11, '2024-05-18 06:09:15', '2024-05-18 06:09:15', 'BỘ NGỦ TƠ THUN LẠNH THIẾT KẾ TRẺ TRUNG, QUYẾN RŨ 3.jpg'),
(27, '/storage/product/1/MzxIwEr1stsAfd8ip7NS.jpg', 11, '2024-05-18 06:09:15', '2024-05-18 06:09:15', 'BỘ NGỦ TƠ THUN LẠNH THIẾT KẾ TRẺ TRUNG, QUYẾN RŨ 4.jpg'),
(28, '/storage/product/1/NXAaetDd6QDtGbhJAOY2.jpg', 12, '2024-05-22 00:16:26', '2024-05-22 00:16:26', 'Áo khoác cardigan INFLACHI dệt kim êm ái 2.jpg'),
(29, '/storage/product1/7qqN8mRhxzxXTSNAHbl2.jpg', 6, '2024-05-23 00:43:59', '2024-05-23 00:43:59', 'Áo phông nữ from rộng JM Dress Design 2.jpg'),
(30, '/storage/product1/TtAM7ghsp5G5yT8GBljW.jpg', 6, '2024-05-23 00:43:59', '2024-05-23 00:43:59', 'Áo phông nữ from rộng JM Dress Design 3.jpg'),
(31, '/storage/product1/iThdHeHt4eIuXwdnIVBA.jpg', 6, '2024-05-23 00:43:59', '2024-05-23 00:43:59', 'Áo phông nữ from rộng JM Dress Design 4.jpg'),
(32, '/storage/product1/DjzrlympBcuUJc09ZSAb.jpg', 9, '2024-05-23 02:13:57', '2024-05-23 02:13:57', 'Sơ mi nữ tay dài.jpg'),
(33, '/storage/product1/FODIsLeFGU3q9hQ6j1rJ.jpg', 9, '2024-05-23 02:13:57', '2024-05-23 02:13:57', 'Sơ mi nữ tay dài_1.jpg'),
(34, '/storage/product1/fLt7Iybx0txx8fDybmCx.jpg', 9, '2024-05-23 02:13:57', '2024-05-23 02:13:57', 'Sơ mi nữ tay dài_2.jpg'),
(35, '/storage/product1/5ba5YTYBO8zYNVK9M5Ts.jpg', 4, '2024-05-23 02:16:39', '2024-05-23 02:16:39', 'Áo khoác dạ oversize dáng rộng lót lông cừu 1.jpg'),
(36, '/storage/product1/DMvQoCD3vVsmIfaxU2nI.jpg', 4, '2024-05-23 02:16:39', '2024-05-23 02:16:39', 'Áo khoác dạ oversize dáng rộng lót lông cừu 2.jpg'),
(37, '/storage/product1/d4WsYNSsPbsLEN3PhzQI.jpg', 3, '2024-05-23 02:24:29', '2024-05-23 02:24:29', 'Áo khoác len nữ.jpg'),
(38, '/storage/product1/APNk9OUACH7EwyT6me5i.jpg', 3, '2024-05-23 02:24:29', '2024-05-23 02:24:29', 'Áo khoác len nữ_1.jpg'),
(39, '/storage/product1/oKwn69ULoKsm2XGXldXe.jpg', 3, '2024-05-23 02:24:29', '2024-05-23 02:24:29', 'Áo khoác len nữ_2.jpg'),
(47, '/storage/product/1/WEVHRGjvGiWQqvUzFvEs.png', 12, '2024-06-04 16:26:59', '2024-06-04 16:26:59', 'edogawa-conan.png'),
(48, '/storage/product/1/9RY0Fcr6PAkjlzSaPaqe.png', 13, '2024-06-04 16:34:09', '2024-06-04 16:34:09', 'edogawa-conan.png'),
(49, '/storage/product/1/WuI2pIxHOM5ctdOSPSDR.png', 14, '2024-06-04 16:35:37', '2024-06-04 16:35:37', 'edogawa-conan.png'),
(50, '/storage/product/1/UuTCTY1dpIZtp4BC1icr.png', 15, '2024-06-04 21:52:48', '2024-06-04 21:52:48', 'edogawa-conan.png'),
(51, '/storage/product1/S529lAfGtyeHoZW0TWlS.jpg', 25, '2024-06-07 00:22:44', '2024-06-07 00:22:44', 'Áo khoác cardigan INFLACHI dệt kim êm ái 1.jpg'),
(52, '/storage/product1/XEgUZ706G4UZYpi9c4ix.jpg', 25, '2024-06-07 00:22:44', '2024-06-07 00:22:44', 'Áo khoác cardigan INFLACHI dệt kim êm ái 2.jpg'),
(53, '/storage/product1/lNeYCTWJ1yPVNaktREpr.jpg', 25, '2024-06-07 00:22:44', '2024-06-07 00:22:44', 'Áo khoác cardigan INFLACHI dệt kim êm ái 3.jpg'),
(54, '/storage/product1/bE86OpuL8ssOTPRubPj8.jpg', 24, '2024-06-07 00:25:26', '2024-06-07 00:25:26', 'Đầm thiết kế ống đỏ cúp ngực2.jpg'),
(55, '/storage/product1/ogX8QWlgfcUW6U6RJ8WC.jpg', 24, '2024-06-07 00:25:26', '2024-06-07 00:25:26', 'Đầm thiết kế ống đỏ cúp ngực3.jpg'),
(56, '/storage/product1/SaoWFlV8kpKcRn9yRBdx.jpg', 23, '2024-06-07 00:25:56', '2024-06-07 00:25:56', 'Đầm tuyết mưa 1.jpg'),
(57, '/storage/product1/49TjDu9x0IFF3mcg50Md.jpg', 23, '2024-06-07 00:25:56', '2024-06-07 00:25:56', 'Đầm tuyết mưa 2.jpg'),
(58, '/storage/product1/DGmwuPmNP8Qu8jz6sI7b.jpg', 23, '2024-06-07 00:25:56', '2024-06-07 00:25:56', 'Đầm tuyết mưa.jpg'),
(59, '/storage/product1/4XIf330PCs9miLgUrReN.jpg', 22, '2024-06-07 00:26:20', '2024-06-07 00:26:20', 'Đầm trễ vai 1.jpg'),
(60, '/storage/product1/xybrmOrQ89LyOTUJsiRG.jpg', 22, '2024-06-07 00:26:20', '2024-06-07 00:26:20', 'Đầm trễ vai 2.jpg'),
(61, '/storage/product1/Ayaq2cQasArHryg9lth4.jpg', 22, '2024-06-07 00:26:20', '2024-06-07 00:26:20', 'Đầm trễ vai.jpg'),
(62, '/storage/product1/HF7P7iQqYBagvov6lyXh.jpg', 21, '2024-06-07 00:26:41', '2024-06-07 00:26:41', 'Đầm maxi cổ yếm 1.jpg'),
(63, '/storage/product1/rSvjF4ZbgCzS9pDnkOAE.jpg', 21, '2024-06-07 00:26:41', '2024-06-07 00:26:41', 'Đầm maxi cổ yếm 2.jpg'),
(64, '/storage/product1/O2JPt9Dc1d7uZIJFo9hp.jpg', 21, '2024-06-07 00:26:41', '2024-06-07 00:26:41', 'Đầm maxi cổ yếm.jpg'),
(65, '/storage/product1/0txk0usJ5wwTaBOZ5npS.jpg', 20, '2024-06-07 00:27:05', '2024-06-07 00:27:05', 'Đầm hai dây 1.jpg'),
(66, '/storage/product1/QIhkxrMn7YuoXLIA37JU.jpg', 20, '2024-06-07 00:27:05', '2024-06-07 00:27:05', 'Đầm hai dây 2.jpg'),
(67, '/storage/product1/YZE7jLZ84yb1gl3ezEM4.jpg', 20, '2024-06-07 00:27:05', '2024-06-07 00:27:05', 'Đầm hai dây.jpg'),
(68, '/storage/product1/IXO0AwQyEAXFvbeTOIpN.jpg', 19, '2024-06-07 00:27:35', '2024-06-07 00:27:35', 'Đầm cúp ngực 1.jpg'),
(69, '/storage/product1/7tHEPoBN8leOWzgtT2fV.jpg', 19, '2024-06-07 00:27:35', '2024-06-07 00:27:35', 'Đầm cúp ngực 2.jpg'),
(70, '/storage/product1/bqdwZafBj5UeL71XsiAh.jpg', 19, '2024-06-07 00:27:35', '2024-06-07 00:27:35', 'Đầm cúp ngực 3.jpg'),
(71, '/storage/product1/88I3OQr83jVIMtni4Qyw.jpg', 18, '2024-06-07 00:28:00', '2024-06-07 00:28:00', 'Áo thun ba lỗ 1.jpg'),
(72, '/storage/product1/0lEEU7nucPDwI8S2Rdhd.jpg', 18, '2024-06-07 00:28:00', '2024-06-07 00:28:00', 'Áo thun ba lỗ.jpg'),
(73, '/storage/product1/gm9JqVOm4XtQddvqq7rO.png', 28, '2024-06-18 20:18:18', '2024-06-18 20:18:18', 'Đầm cổ U ngực xếp ly tiểu thư xinh xắn VDU00463_1.png'),
(74, '/storage/product1/kwzaVlL8c6NHhNLA2JTr.png', 28, '2024-06-18 20:18:18', '2024-06-18 20:18:18', 'Đầm tay ngắn bèo viền ren VDU00520.png'),
(75, '/storage/product1/6ad9zUA2NDr3maKmrHi9.png', 28, '2024-06-18 20:18:18', '2024-06-18 20:18:18', 'Đầm tay ngắn bèo viền ren VDU00520_1.png'),
(76, '/storage/product1/pmNz7OUVvCPbHTdnNEXL.jpg', 29, '2024-06-19 01:48:11', '2024-06-19 01:48:11', '𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬.jpg'),
(77, '/storage/product1/VLeveuHxULYRj6YKXKPS.jpg', 29, '2024-06-19 01:48:11', '2024-06-19 01:48:11', '𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬1.jpg'),
(78, '/storage/product1/QMZszazXI6ngiAbwfrgJ.jpg', 29, '2024-06-19 01:48:11', '2024-06-19 01:48:11', '𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬3.jpg'),
(79, '/storage/product1/wsqDDIjftzCKyb2iqXFv.jpg', 29, '2024-06-19 01:48:11', '2024-06-19 01:48:11', '𝐋𝐞𝐨𝐧𝐲 𝐃𝐫𝐞𝐬𝐬4.jpg'),
(80, '/storage/product1/2CUYNIiEFeFFQmW75N5n.jpg', 30, '2024-06-19 01:53:19', '2024-06-19 01:53:19', 'Dannie Dress 1.jpg'),
(81, '/storage/product1/nVCv8Byk3ZdaHxkHcNpo.jpg', 30, '2024-06-19 01:53:19', '2024-06-19 01:53:19', 'Dannie Dress 2.jpg'),
(82, '/storage/product1/9TjTCstizrFSzRjhOzau.jpg', 30, '2024-06-19 01:53:19', '2024-06-19 01:53:19', 'Dannie Dress 3.jpg'),
(83, '/storage/product1/6Qbk3VHMNJq7sFcdoOrZ.jpg', 30, '2024-06-19 01:53:19', '2024-06-19 01:53:19', 'Dannie Dress 4.jpg'),
(84, '/storage/product1/NNqC1suYSPMoqzW3as1r.jpg', 30, '2024-06-19 01:53:19', '2024-06-19 01:53:19', 'Dannie Dress.jpg'),
(85, '/storage/product1/Fy1tk3AspCmcCppjOAPC.png', 39, '2024-06-19 02:54:19', '2024-06-19 02:54:19', '𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬.png'),
(86, '/storage/product1/RoGmLh6ZzaeFtT5yDQHK.png', 39, '2024-06-19 02:54:19', '2024-06-19 02:54:19', '𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬1.png'),
(87, '/storage/product1/O2NKSacmO7Fpl13Z9VfD.png', 39, '2024-06-19 02:54:19', '2024-06-19 02:54:19', '𝐂𝐚𝐥𝐥𝐲 𝐃𝐫𝐞𝐬𝐬2.png'),
(88, '/storage/product1/24G2ISRPKxTaNopN2DkH.jpg', 40, '2024-06-19 03:00:58', '2024-06-19 03:00:58', 'Maxithun.jpg'),
(89, '/storage/product1/sH7PVP06f8BoE9fHMTJr.jpg', 40, '2024-06-19 03:00:58', '2024-06-19 03:00:58', 'Maxithun1.jpg'),
(90, '/storage/product1/2qSh7gJ0PVcywsJdMR3W.jpg', 40, '2024-06-19 03:00:58', '2024-06-19 03:00:58', 'Maxithun2.jpg'),
(91, '/storage/product1/8aYMjWNp3eOIUOcfrZK2.jpg', 40, '2024-06-19 03:00:58', '2024-06-19 03:00:58', 'Maxithun4.jpg'),
(92, '/storage/product1/ieszIULD7RKOPSOPK3o3.jpg', 41, '2024-06-19 03:04:45', '2024-06-19 03:04:45', 'Đầm 2 Dây Hoạ Tiết Ngân Hà1.jpg'),
(93, '/storage/product1/AGHR83EFQ1GTHGiJQCnS.jpg', 41, '2024-06-19 03:04:45', '2024-06-19 03:04:45', 'Đầm 2 Dây Hoạ Tiết Ngân Hà2.jpg'),
(94, '/storage/product1/oON6zR72514ufMlzvgtC.webp', 41, '2024-06-19 03:04:45', '2024-06-19 03:04:45', 'Đầm 2 Dây Hoạ Tiết Ngân Hà3.webp'),
(95, '/storage/product1/ET0FmwGcfBR54Iv5UF4l.jpg', 42, '2024-06-19 03:12:45', '2024-06-19 03:12:45', 'Áo gài nút 1.jpg'),
(96, '/storage/product1/0K7dZpSIbr3jSMWz1OXA.jpg', 42, '2024-06-19 03:12:45', '2024-06-19 03:12:45', 'Áo gài nút.jpg'),
(97, '/storage/product1/oRk13CTHHYc8D8XPk1v4.png', 43, '2024-06-19 03:16:38', '2024-06-19 03:16:38', 'Áo Bra 2 dây.png'),
(98, '/storage/product1/iEFIqlvttXc5kJhuPByt.png', 43, '2024-06-19 03:16:38', '2024-06-19 03:16:38', 'Áo Bra 2 dây1.png'),
(99, '/storage/product1/ZK0vPrSTLze1c3r49AQc.png', 43, '2024-06-19 03:16:38', '2024-06-19 03:16:38', 'Áo Bra 2 dây2.png'),
(100, '/storage/product1/kswGTnAqFwZgrzwardvE.png', 44, '2024-06-19 03:23:42', '2024-06-19 03:23:42', 'Chân Váy Bút Chì Xẻ.png'),
(101, '/storage/product1/0K6KQqP5h0hegJx6WocG.png', 44, '2024-06-19 03:23:42', '2024-06-19 03:23:42', 'Chân Váy Bút Chì Xẻ1.png'),
(102, '/storage/product1/3Wxdr2S1CuWm5cAKLyiq.png', 44, '2024-06-19 03:23:42', '2024-06-19 03:23:42', 'Chân Váy Bút Chì Xẻ3.png'),
(103, '/storage/product1/SE925dhfdSIe1ghR0sv9.png', 45, '2024-06-19 03:34:38', '2024-06-19 03:34:38', 'Chân váy da bóng - Copy.png'),
(104, '/storage/product1/oYhJG1vliIQQowCi15Y2.png', 45, '2024-06-19 03:34:38', '2024-06-19 03:34:38', 'Chân váy da bóng1 - Copy.png'),
(105, '/storage/product1/F2lJ4TfQ3kDQOM0QJ9Ic.png', 45, '2024-06-19 03:34:38', '2024-06-19 03:34:38', 'Chân váy da bóng2 - Copy.png'),
(106, '/storage/product1/vnP3g7rQ2vKGiww0axZs.png', 46, '2024-06-19 03:38:36', '2024-06-19 03:38:36', 'Quần Jean Ống Loe 2 Túi Nổ.png'),
(107, '/storage/product1/aLznNSb0wUjWe1a00ilk.png', 46, '2024-06-19 03:38:36', '2024-06-19 03:38:36', 'Quần Jean Ống Loe 2 Túi Nổ2.png'),
(108, '/storage/product1/j7qnGWIu3VdRkoleXxeu.png', 46, '2024-06-19 03:38:36', '2024-06-19 03:38:36', 'Quần Jean Ống Loe 2 Túi Nổ3.png'),
(109, '/storage/product1/26sHTD45cKxx0ju0NGTt.png', 47, '2024-06-19 03:43:27', '2024-06-19 03:43:27', 'Quần jeans trơn lai gấp cá tính.png'),
(110, '/storage/product1/L2RXC1uEkqJpqX3VZp64.png', 47, '2024-06-19 03:43:27', '2024-06-19 03:43:27', 'Quần jeans trơn lai gấp cá tính1.png'),
(111, '/storage/product1/PaH9Ywtp2Flzl3Xmt78Q.png', 47, '2024-06-19 03:43:27', '2024-06-19 03:43:27', 'Quần jeans trơn lai gấp cá tính2.png'),
(112, '/storage/product1/LkHWB6bL5FoBgUwnBiBv.png', 47, '2024-06-19 03:43:27', '2024-06-19 03:43:27', 'Quần jeans trơn lai gấp cá tính4.png'),
(113, '/storage/product1/MxbiAMxSK81dZDdk8chh.png', 48, '2024-06-19 03:46:28', '2024-06-19 03:46:28', 'Quần jeans rách lai bụi bặm.png'),
(114, '/storage/product1/TXqcfWj8tAjTTg8Jif6X.png', 48, '2024-06-19 03:46:28', '2024-06-19 03:46:28', 'Quần jeans rách lai bụi bặm1.png'),
(115, '/storage/product1/rTkDcLYhP6qKhGxrZTKp.png', 48, '2024-06-19 03:46:28', '2024-06-19 03:46:28', 'Quần jeans rách lai bụi bặm2.png'),
(116, '/storage/product1/1VjXo0lVbWXWd9wQm3GU.png', 48, '2024-06-19 03:46:28', '2024-06-19 03:46:28', 'Quần jeans rách lai bụi bặm3.png'),
(117, '/storage/product1/eY74NUItxG4Qz1jpFF4y.png', 49, '2024-06-19 03:49:57', '2024-06-19 03:49:57', 'Chân váy dài trơn caro 1.png'),
(118, '/storage/product1/EeWL5n3jZcuu0UM3Plf6.png', 49, '2024-06-19 03:49:57', '2024-06-19 03:49:57', 'Chân váy dài trơn caro 2.png'),
(119, '/storage/product1/6GKkLRaPe0sOJVnwY8cq.png', 49, '2024-06-19 03:49:57', '2024-06-19 03:49:57', 'Chân váy dài trơn caro.png'),
(120, '/storage/product1/EDndHZWFTz2xrD3pyvSu.png', 50, '2024-06-19 03:55:40', '2024-06-19 03:55:40', 'Quần chân váy dạ ngắn dáng chữ A.png'),
(121, '/storage/product1/FzoqTbSsXSueJpEFkLhU.png', 50, '2024-06-19 03:55:40', '2024-06-19 03:55:40', 'Quần chân váy dạ ngắn dáng chữ A1.png'),
(122, '/storage/product1/Pq3iwfLDt0kwIgcvFYhy.png', 50, '2024-06-19 03:55:40', '2024-06-19 03:55:40', 'Quần chân váy dạ ngắn dáng chữ A2.png'),
(123, '/storage/product1/rX9VTdwK4KjyEymyOwDp.png', 50, '2024-06-19 03:55:40', '2024-06-19 03:55:40', 'Quần chân váy dạ ngắn dáng chữ A3.png'),
(124, '/storage/product1/cnlwrjF9XT0L38jTZk5u.png', 51, '2024-06-19 03:59:59', '2024-06-19 03:59:59', 'Chân váy dài xanh trơn.png'),
(125, '/storage/product1/37MWYuSOl35tG6sserv4.png', 51, '2024-06-19 03:59:59', '2024-06-19 03:59:59', 'Chân váy dài xanh trơn1.png'),
(126, '/storage/product1/Nh1N6Gb04cr8iVMtaeLn.png', 51, '2024-06-19 03:59:59', '2024-06-19 03:59:59', 'Chân váy dài xanh trơn2.png'),
(127, '/storage/product1/dD8X8d7HTmcmklJoOCSf.jpg', 52, '2024-06-19 04:05:09', '2024-06-19 04:05:09', 'sét_đi_biển 3 - Copy.jpg'),
(128, '/storage/product1/GQx74hnItEDl0G88pS37.jpg', 52, '2024-06-19 04:05:09', '2024-06-19 04:05:09', 'sét_đi_biển 3.jpg'),
(129, '/storage/product1/JkXzDIT0vKbf5MXSn5Oo.jpg', 52, '2024-06-19 04:05:09', '2024-06-19 04:05:09', 'sét_đi_biển.jpg'),
(130, '/storage/product1/QNzbkwxSa7WbQcrMIa30.jpg', 53, '2024-06-19 04:09:45', '2024-06-19 04:09:45', 'Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B891.jpg'),
(131, '/storage/product1/JkezojlAqZDAhBrKnMzM.jpg', 53, '2024-06-19 04:09:45', '2024-06-19 04:09:45', 'Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B892.jpg'),
(132, '/storage/product1/h4GoWxDZ3hdJ7ji3vpKI.jpg', 53, '2024-06-19 04:09:45', '2024-06-19 04:09:45', 'Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B893.jpg'),
(133, '/storage/product1/5M4wSNzRJPzizUOxVeZJ.jpg', 53, '2024-06-19 04:09:45', '2024-06-19 04:09:45', 'Đồ ngủ sexy gợi cảm - áo choàng kimono đầm ngủ gợi cảm B894.jpg'),
(134, '/storage/product1/pDRvvPXBAnuPb4dG077O.jpg', 54, '2024-06-19 04:12:34', '2024-06-19 04:12:34', 'Váy ngủ Lastin 2 dây ren ngực quyến rũ Bloom Dress VN52 Sexy M 1.jpg'),
(135, '/storage/product1/RskPkN5i7iiMbvvGgmka.jpg', 54, '2024-06-19 04:12:34', '2024-06-19 04:12:34', 'Váy ngủ Lastin 2 dây ren ngực quyến rũ Bloom Dress VN52 Sexy M 2.jpg'),
(136, '/storage/product1/T24Cf3j8agJ8atTXISmC.jpg', 54, '2024-06-19 04:12:34', '2024-06-19 04:12:34', 'Váy ngủ Lastin 2 dây ren ngực quyến rũ Bloom Dress VN52 Sexy M 3.jpg'),
(137, '/storage/product1/eESBjSztFKLI90tlQG51.jpg', 55, '2024-06-19 04:16:33', '2024-06-19 04:16:33', 'tui HM.jpg'),
(138, '/storage/product1/r2Bgpm91mGFq6M1UlFkY.jpg', 55, '2024-06-19 04:16:33', '2024-06-19 04:16:33', 'tui HM2.jpg'),
(139, '/storage/product1/eHYApUFynElKUFNeLdMl.jpg', 55, '2024-06-19 04:16:33', '2024-06-19 04:16:33', 'tui HM3.jpg'),
(140, '/storage/product1/Z8SZijTjJz8Gl0FJmdd9.jpg', 55, '2024-06-19 04:16:33', '2024-06-19 04:16:33', 'tui HM5.jpg'),
(141, '/storage/product1/TPJ7sMlHe6NoVcFXlnkr.jpg', 56, '2024-06-19 04:20:30', '2024-06-19 04:20:30', 'túi louis 2.jpg'),
(142, '/storage/product1/1HlwQdQ4kCesxWKP4J9r.jpg', 56, '2024-06-19 04:20:30', '2024-06-19 04:20:30', 'túi louis 3.jpg'),
(143, '/storage/product1/64QbGcyBPMu2YyUpwM0T.jpg', 56, '2024-06-19 04:20:30', '2024-06-19 04:20:30', 'túi louis 5.jpg'),
(144, '/storage/product1/BmN7vPrwJQ6muDM5I0q1.png', 57, '2024-06-19 04:28:30', '2024-06-19 04:28:30', 'Đầm ren xuyên thấu 2.png'),
(145, '/storage/product1/ibeGr3Q3CkjtEOfzWTUj.png', 57, '2024-06-19 04:28:30', '2024-06-19 04:28:30', 'Đầm ren xuyên thấu 3.png'),
(146, '/storage/product1/020eeMRm0YtC4oxqFPMG.png', 57, '2024-06-19 04:28:30', '2024-06-19 04:28:30', 'Đầm ren xuyên thấu 4.png'),
(147, '/storage/product1/ZO0D8p5ppz0Q7WVP4lGh.png', 57, '2024-06-19 04:28:30', '2024-06-19 04:28:30', 'Đầm ren xuyên thấu.png'),
(148, '/storage/product1/WCjdSjtHLPPzSDFc3OGc.jpg', 58, '2024-06-19 04:33:12', '2024-06-19 04:33:12', 'đầm dạ hội 2 dây 2.jpg'),
(149, '/storage/product1/o5nx5tsxNbd35psr6R1Y.jpg', 58, '2024-06-19 04:33:12', '2024-06-19 04:33:12', 'đầm dạ hội 2 dây.jpg'),
(150, '/storage/product1/gKgV7KHBB4ry9RwelKxI.jpg', 58, '2024-06-19 04:33:12', '2024-06-19 04:33:12', 'đầm dạ hội 2 dây3.jpg'),
(151, '/storage/product1/MbOxag9cuoHQmUO7rKIk.png', 59, '2024-06-19 04:43:26', '2024-06-19 04:43:26', 'set 2 dây 1.png'),
(152, '/storage/product1/XMlMZRpI9ZJ9hMHnEdm3.png', 59, '2024-06-19 04:43:26', '2024-06-19 04:43:26', 'set 2 dây.png'),
(153, '/storage/product1/gsQOXe9GnCMUodsyiBTd.png', 59, '2024-06-19 04:43:26', '2024-06-19 04:43:26', 'set 2 dây2.png'),
(154, '/storage/product1/w0jQJKmImMOwMJ3l6Rxs.png', 59, '2024-06-19 04:43:26', '2024-06-19 04:43:26', 'set 2 dây3.png'),
(155, '/storage/product1/j31VnXyAHdBMETAvYRWw.png', 59, '2024-06-19 04:43:26', '2024-06-19 04:43:26', 'set 2 dây4.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(9, 2, 5, '2024-03-14 05:37:34', '2024-03-14 05:37:34'),
(10, 1, 6, '2024-03-14 05:37:56', '2024-03-14 05:37:56'),
(11, 3, 7, '2024-05-17 20:56:38', '2024-05-17 20:56:38'),
(12, 4, 8, '2024-05-17 20:58:15', '2024-05-17 20:58:15'),
(13, 5, 9, '2024-05-18 06:03:52', '2024-05-18 06:03:52'),
(14, 6, 10, '2024-05-18 06:04:26', '2024-05-18 06:04:26'),
(15, 7, 11, '2024-05-18 06:05:14', '2024-05-18 06:05:14'),
(16, 8, 11, '2024-05-18 06:06:01', '2024-05-18 06:06:01'),
(20, 12, 12, '2024-05-22 00:16:26', '2024-05-22 00:16:26'),
(21, 11, 13, '2024-05-23 01:58:27', '2024-05-23 01:58:27'),
(22, 10, 13, '2024-05-23 02:06:25', '2024-05-23 02:06:25'),
(23, 9, 13, '2024-05-23 02:13:58', '2024-05-23 02:13:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) NOT NULL,
  `config_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(191) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_address` varchar(191) NOT NULL,
  `shipping_phone` varchar(191) NOT NULL,
  `shipping_email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_notes` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_name`, `customer_id`, `shipping_address`, `shipping_phone`, `shipping_email`, `created_at`, `updated_at`, `shipping_notes`) VALUES
(1, 'Phạm Trọng Nghĩa', 1, 'test nhận hàng', '0123456789', 'nghia@gmail.com', NULL, NULL, 'Giao trong giờ hành chính'),
(2, 'Phạm Trọng Nghĩa', 1, 'test xử lý đơn hàng', '0123456789', 'nghia@gmail.com', NULL, NULL, 'fsad'),
(3, 'Phạm Trọng Nghĩa', 1, 'test xử lý đơn hàng', '0123456789', 'nghia@gmail.com', NULL, NULL, 'fsdaf'),
(4, 'Phạm Trọng Nghĩa', 1, 'test xử lý đơn hàng', '0123456789', 'nghia@gmail.com', NULL, NULL, '1111'),
(5, 'Kim Thị Sô Phi', 2, 'Đường 30/4 phường 5 Thành phố Trà Vinh', '0786723822', 'phiphi@gmail.com', NULL, NULL, 'Gói hàng cẩn thận giúp mình'),
(6, 'Kim Thị Sô Phi', 2, 'Đường 30/4 phường 5 Thành phố Trà Vinh', '0786723822', 'phiphi@gmail.com', NULL, NULL, NULL),
(7, 'Kim Thị Sô Phi', 2, 'Đường 30/4 phường 5 Thành phố Trà Vinh', '0786723822', 'phiphi@gmail.com', NULL, NULL, 'Giao nhanh giúp mình'),
(8, 'PHi Phi', 2, 'Gò Vấp, TP Hồ Chí Minn', '0123456789', 'phiphi@gmail.com', NULL, NULL, 'Gói hàng cẩn thận giúp mình'),
(9, 'Hưng', 3, 'Địa chỉ', '0363432973', 'hung@gmail.com', NULL, NULL, 'aa'),
(10, 'Hưng', 3, 'Địa chỉ', '0363432973', 'hung@gmail.com', NULL, NULL, NULL),
(11, '2wq', 2, 'qưeq', 'qưeq', 'phiphi@gmail.com', NULL, NULL, 'qưq'),
(12, 'Kim Thị Sô Phi', 2, 'Quận Gò Vấp, Thành Phố HCM', '0786723822', 'phiphi@gmail.com', NULL, NULL, 'giao nhanh'),
(13, 'Kim Thị Sô Phi', 2, 'Quận Gò Vấp, Thành Phố HCM', '0786723822', 'phiphi@gmail.com', NULL, NULL, 'gói hàng cẩn thận giúp tôi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Quần áo thời trang', '<p>Mua ngay</p>', '/storage/slider1/y6aLH2JAt3AptG0uGiNJ.png', 'banner2.png', '2024-03-13 07:13:07', '2024-05-17 20:53:13', '2024-05-17 20:53:13'),
(3, 'Mua sắm không giới hạn', '<p>Mua ngay</p>', '/storage/slider1/tmwuUTFuJL6V6uW5SIRG.png', 'banner1.png', '2024-03-13 07:13:40', '2024-05-17 20:53:11', '2024-05-17 20:53:11'),
(4, 'Banner1', '<p>Banner1</p>', '/storage/slider1/52otRnlNy3NUkanL8uGG.jpg', 'Ed4ILR5UbpugZGlNQsf4.jpg', '2024-05-17 20:53:59', '2024-05-22 00:04:33', '2024-05-22 00:04:33'),
(5, 'Banner2', '<p>Banner2</p>', '/storage/slider1/Ts0cgtYc66Ijm5VOIkbe.jpg', 'ZYjjDxgXJ8wvLhxObUUi.jpg', '2024-05-17 20:54:24', '2024-05-22 00:04:30', '2024-05-22 00:04:30'),
(6, 'Mùa hè sale sập sàn', '<p>Mua sắm đ&oacute;n h&egrave;</p>', '/storage/slider1/gfidrXmshqU6HLF52SB5.jpeg', 'slider.jpeg', '2024-05-22 00:10:16', '2024-05-25 23:12:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Louis Vuitton', '2024-05-17 20:56:38', '2024-05-17 20:56:38'),
(8, 'Gucci', '2024-05-17 20:58:15', '2024-05-17 20:58:15'),
(9, 'Céline', '2024-05-18 06:03:52', '2024-05-18 06:03:52'),
(10, 'Loewe', '2024-05-18 06:04:26', '2024-05-18 06:04:26'),
(11, 'Chanel', '2024-05-18 06:05:14', '2024-05-18 06:05:14'),
(12, 's', '2024-05-22 00:16:26', '2024-05-22 00:16:26'),
(13, 'Mani\'s', '2024-05-23 01:58:27', '2024-05-23 01:58:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$wu9vdHzcNkTRvm9w1fl7Ze.zfPYgJLPPy70xOYBBVk6KKZ7RdeaqS', NULL, '2024-03-13 07:07:33', '2024-03-13 07:07:33', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
